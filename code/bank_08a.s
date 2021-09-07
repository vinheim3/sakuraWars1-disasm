; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $08a", ROMX[$4000], BANK[$8a]

	or   c                                           ; $4000: $b1
	nop                                              ; $4001: $00
	and  h                                           ; $4002: $a4
	nop                                              ; $4003: $00
	add  b                                           ; $4004: $80
	ld   bc, $0308                                   ; $4005: $01 $08 $03
	ld   [bc], a                                     ; $4008: $02
	ld   a, $3c                                      ; $4009: $3e $3c
	ld   a, h                                        ; $400b: $7c
	ld   b, h                                        ; $400c: $44
	ld   b, l                                        ; $400d: $45
	ld   b, b                                        ; $400e: $40
	ld   a, $83                                      ; $400f: $3e $83
	nop                                              ; $4011: $00
	add  b                                           ; $4012: $80
	ret  nz                                          ; $4013: $c0

	ld   [$3efe], sp                                 ; $4014: $08 $fe $3e
	rst  $38                                         ; $4017: $ff
	add  hl, de                                      ; $4018: $19
	pop  bc                                          ; $4019: $c1
	nop                                              ; $401a: $00
	sbc  e                                           ; $401b: $9b
	nop                                              ; $401c: $00
	ld   a, h                                        ; $401d: $7c
	adc  c                                           ; $401e: $89
	nop                                              ; $401f: $00
	add  b                                           ; $4020: $80
	add  b                                           ; $4021: $80
	add  b                                           ; $4022: $80
	ldh  [$9a], a                                    ; $4023: $e0 $9a
	nop                                              ; $4025: $00
	add  d                                           ; $4026: $82
	ld   bc, $0082                                   ; $4027: $01 $82 $00
	add  b                                           ; $402a: $80
	ld   bc, $1f80                                   ; $402b: $01 $80 $1f
	dec  b                                           ; $402e: $05
	ld   h, a                                        ; $402f: $67
	ld   a, a                                        ; $4030: $7f
	sbc  c                                           ; $4031: $99
	rst  $38                                         ; $4032: $ff
	cp   $7f                                         ; $4033: $fe $7f
	add  b                                           ; $4035: $80
	ccf                                              ; $4036: $3f
	dec  c                                           ; $4037: $0d
	adc  h                                           ; $4038: $8c
	ld   h, b                                        ; $4039: $60
	db   $ec                                         ; $403a: $ec
	add  c                                           ; $403b: $81
	add  b                                           ; $403c: $80

jr_08a_403d:
	rlca                                             ; $403d: $07
	ld   h, c                                        ; $403e: $61
	ld   c, $6e                                      ; $403f: $0e $6e
	ld   hl, sp-$78                                  ; $4041: $f8 $88
	ld   a, b                                        ; $4043: $78
	inc  [hl]                                        ; $4044: $34
	cp   h                                           ; $4045: $bc
	add  b                                           ; $4046: $80
	cp   [hl]                                        ; $4047: $be
	ld   [$00b7], sp                                 ; $4048: $08 $b7 $00
	jr   nc, jr_08a_403d                             ; $404b: $30 $f0

	inc  bc                                          ; $404d: $03
	adc  h                                           ; $404e: $8c
	add  e                                           ; $404f: $83
	ld   [bc], a                                     ; $4050: $02
	nop                                              ; $4051: $00
	add  e                                           ; $4052: $83
	ld   bc, $0380                                   ; $4053: $01 $80 $03
	ld   [$90f0], sp                                 ; $4056: $08 $f0 $90
	or   b                                           ; $4059: $b0
	db   $10                                         ; $405a: $10
	ld   d, b                                        ; $405b: $50
	db   $10                                         ; $405c: $10
	ld   [hl], b                                     ; $405d: $70
	db   $10                                         ; $405e: $10
	db   $18, $80                                    ; $405f: $18 $80
	jr   c, jr_08a_4067                              ; $4061: $38 $04

	adc  b                                           ; $4063: $88
	cp   b                                           ; $4064: $b8
	adc  b                                           ; $4065: $88
	cp   h                                           ; $4066: $bc

jr_08a_4067:
	db   $fc                                         ; $4067: $fc
	adc  [hl]                                        ; $4068: $8e
	nop                                              ; $4069: $00
	add  c                                           ; $406a: $81
	inc  bc                                          ; $406b: $03
	inc  bc                                          ; $406c: $03
	ld   [bc], a                                     ; $406d: $02
	rlca                                             ; $406e: $07
	dec  b                                           ; $406f: $05
	dec  bc                                          ; $4070: $0b
	add  c                                           ; $4071: $81
	rrca                                             ; $4072: $0f
	add  b                                           ; $4073: $80
	dec  bc                                          ; $4074: $0b
	add  b                                           ; $4075: $80
	add  hl, bc                                      ; $4076: $09
	ld   [$0400], sp                                 ; $4077: $08 $00 $04
	db   $e3                                         ; $407a: $e3
	rst  JumpTable                                         ; $407b: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $407c: $cf
	rra                                              ; $407d: $1f
	ldh  a, [$e7]                                    ; $407e: $f0 $e7
	ldh  a, [$83]                                    ; $4080: $f0 $83
	ld   hl, sp+$05                                  ; $4082: $f8 $05
	adc  a                                           ; $4084: $8f
	rst  ToBoot                                         ; $4085: $c7
	ld   e, c                                        ; $4086: $59
	sbc  [hl]                                        ; $4087: $9e
	cp   b                                           ; $4088: $b8
	dec  a                                           ; $4089: $3d
	add  b                                           ; $408a: $80
	ld   a, l                                        ; $408b: $7d
	dec  b                                           ; $408c: $05
	db   $f4                                         ; $408d: $f4
	ld   sp, hl                                      ; $408e: $f9
	dec  bc                                          ; $408f: $0b
	or   e                                           ; $4090: $b3
	rst  $30                                         ; $4091: $f7
	rst  ToBoot                                         ; $4092: $c7
	add  b                                           ; $4093: $80
	rst  $38                                         ; $4094: $ff
	add  hl, bc                                      ; $4095: $09
	cp   a                                           ; $4096: $bf
	ccf                                              ; $4097: $3f
	ld   e, [hl]                                     ; $4098: $5e
	ld   a, a                                        ; $4099: $7f
	ret  c                                           ; $409a: $d8

	rlca                                             ; $409b: $07
	add  hl, bc                                      ; $409c: $09
	rrca                                             ; $409d: $0f
	sub  a                                           ; $409e: $97
	sbc  a                                           ; $409f: $9f
	add  b                                           ; $40a0: $80
	cp   a                                           ; $40a1: $bf
	nop                                              ; $40a2: $00
	rst  $28                                         ; $40a3: $ef
	add  b                                           ; $40a4: $80
	or   $80                                         ; $40a5: $f6 $80
	rst  $30                                         ; $40a7: $f7
	dec  b                                           ; $40a8: $05
	or   e                                           ; $40a9: $b3
	di                                               ; $40aa: $f3
	cp   b                                           ; $40ab: $b8
	dec  de                                          ; $40ac: $1b
	rst  $38                                         ; $40ad: $ff
	db   $fc                                         ; $40ae: $fc
	add  b                                           ; $40af: $80
	inc  bc                                          ; $40b0: $03
	add  b                                           ; $40b1: $80
	ldh  [$80], a                                    ; $40b2: $e0 $80
	ld   a, b                                        ; $40b4: $78
	add  b                                           ; $40b5: $80
	inc  a                                           ; $40b6: $3c
	add  b                                           ; $40b7: $80
	cp   $80                                         ; $40b8: $fe $80
	or   $80                                         ; $40ba: $f6 $80
	ld   b, $00                                      ; $40bc: $06 $00
	nop                                              ; $40be: $00
	add  b                                           ; $40bf: $80
	add  b                                           ; $40c0: $80
	ld   [bc], a                                     ; $40c1: $02
	ld   b, b                                        ; $40c2: $40
	ret  nz                                          ; $40c3: $c0

	and  b                                           ; $40c4: $a0
	add  c                                           ; $40c5: $81
	ld   h, b                                        ; $40c6: $60
	nop                                              ; $40c7: $00
	ld   d, b                                        ; $40c8: $50
	add  e                                           ; $40c9: $83
	jr   nc, jr_08a_40cd                             ; $40ca: $30 $01

	inc  h                                           ; $40cc: $24

jr_08a_40cd:
	inc  b                                           ; $40cd: $04
	add  b                                           ; $40ce: $80
	ld   [bc], a                                     ; $40cf: $02
	add  b                                           ; $40d0: $80
	ld   bc, $0088                                   ; $40d1: $01 $88 $00
	dec  bc                                          ; $40d4: $0b
	ret  nz                                          ; $40d5: $c0

	cp   a                                           ; $40d6: $bf
	cp   h                                           ; $40d7: $bc
	cp   a                                           ; $40d8: $bf
	cp   e                                           ; $40d9: $bb
	cp   [hl]                                        ; $40da: $be
	sbc  a                                           ; $40db: $9f
	sbc  l                                           ; $40dc: $9d
	add  a                                           ; $40dd: $87
	bit  7, e                                        ; $40de: $cb $7b
	ld   c, e                                        ; $40e0: $4b
	add  b                                           ; $40e1: $80
	dec  sp                                          ; $40e2: $3b
	add  b                                           ; $40e3: $80
	dec  bc                                          ; $40e4: $0b
	inc  e                                           ; $40e5: $1c
	ret  z                                           ; $40e6: $c8

	or   a                                           ; $40e7: $b7
	adc  b                                           ; $40e8: $88
	rst  $28                                         ; $40e9: $ef
	rst  $20                                         ; $40ea: $e7
	rla                                              ; $40eb: $17
	ret  nc                                          ; $40ec: $d0

	db   $d3                                         ; $40ed: $d3

jr_08a_40ee:
	di                                               ; $40ee: $f3
	xor  $ff                                         ; $40ef: $ee $ff
	db   $fd                                         ; $40f1: $fd
	rst  $38                                         ; $40f2: $ff
	ei                                               ; $40f3: $fb
	rst  $30                                         ; $40f4: $f7
	rst  $38                                         ; $40f5: $ff
	rrca                                             ; $40f6: $0f
	ld   e, [hl]                                     ; $40f7: $5e
	sbc  $ff                                         ; $40f8: $de $ff
	ld   [hl], a                                     ; $40fa: $77
	xor  a                                           ; $40fb: $af
	xor  e                                           ; $40fc: $ab
	rst  $20                                         ; $40fd: $e7
	db   $e4                                         ; $40fe: $e4
	inc  de                                          ; $40ff: $13

Call_08a_4100:
Jump_08a_4100:
	di                                               ; $4100: $f3
	add  sp, -$08                                    ; $4101: $e8 $f8
	add  b                                           ; $4103: $80

jr_08a_4104:
	db   $f4                                         ; $4104: $f4
	ld   bc, $f8f7                                   ; $4105: $01 $f7 $f8

jr_08a_4108:
	add  b                                           ; $4108: $80
	ld   e, $80                                      ; $4109: $1e $80
	ld   a, [$f580]                                  ; $410b: $fa $80 $f5
	inc  bc                                          ; $410e: $03
	adc  a                                           ; $410f: $8f
	adc  h                                           ; $4110: $8c
	rst  $38                                         ; $4111: $ff
	inc  bc                                          ; $4112: $03
	add  b                                           ; $4113: $80
	db   $fc                                         ; $4114: $fc
	add  b                                           ; $4115: $80

jr_08a_4116:
	nop                                              ; $4116: $00
	ld   bc, $ce01                                   ; $4117: $01 $01 $ce
	add  b                                           ; $411a: $80
	ld   [hl], b                                     ; $411b: $70
	dec  b                                           ; $411c: $05
	ldh  a, [$90]                                    ; $411d: $f0 $90

jr_08a_411f:
	ret  nc                                          ; $411f: $d0

	db   $10                                         ; $4120: $10
	sub  b                                           ; $4121: $90
	and  b                                           ; $4122: $a0
	add  c                                           ; $4123: $81
	jr   nz, @-$7e                                   ; $4124: $20 $80

	ld   b, b                                        ; $4126: $40
	ld   bc, $8000                                   ; $4127: $01 $00 $80
	adc  [hl]                                        ; $412a: $8e
	nop                                              ; $412b: $00
	nop                                              ; $412c: $00
	inc  c                                           ; $412d: $0c
	add  c                                           ; $412e: $81
	dec  bc                                          ; $412f: $0b
	nop                                              ; $4130: $00
	ld   bc, $0581                                   ; $4131: $01 $81 $05
	nop                                              ; $4134: $00
	nop                                              ; $4135: $00
	add  c                                           ; $4136: $81
	ld   [bc], a                                     ; $4137: $02
	nop                                              ; $4138: $00
	nop                                              ; $4139: $00
	add  c                                           ; $413a: $81
	ld   bc, $0000                                   ; $413b: $01 $00 $00
	add  a                                           ; $413e: $87
	rst  $38                                         ; $413f: $ff
	add  b                                           ; $4140: $80
	cp   $80                                         ; $4141: $fe $80

Jump_08a_4143:
	ld   a, b                                        ; $4143: $78
	inc  bc                                          ; $4144: $03
	ld   h, b                                        ; $4145: $60
	ld   h, e                                        ; $4146: $63
	ldh  a, [c]                                      ; $4147: $f2
	or   $80                                         ; $4148: $f6 $80
	and  $01                                         ; $414a: $e6 $01

jr_08a_414c:
	ldh  [c], a                                      ; $414c: $e2
	ld   [$ca80], a                                  ; $414d: $ea $80 $ca
	add  hl, bc                                      ; $4150: $09
	add  h                                           ; $4151: $84

jr_08a_4152:
	sub  h                                           ; $4152: $94
	inc  d                                           ; $4153: $14
	inc  h                                           ; $4154: $24
	jr   z, jr_08a_411f                              ; $4155: $28 $c8

	ret  nz                                          ; $4157: $c0

	jr   nc, jr_08a_4198                             ; $4158: $30 $3e

	cp   $bc                                         ; $415a: $fe $bc
	nop                                              ; $415c: $00
	nop                                              ; $415d: $00
	rst  $38                                         ; $415e: $ff
	add  b                                           ; $415f: $80
	adc  h                                           ; $4160: $8c
	inc  b                                           ; $4161: $04
	sub  e                                           ; $4162: $93
	adc  b                                           ; $4163: $88
	and  h                                           ; $4164: $a4
	ld   [$8048], sp                                 ; $4165: $08 $48 $80

jr_08a_4168:
	jr   nc, jr_08a_40ee                             ; $4168: $30 $84

	nop                                              ; $416a: $00
	add  b                                           ; $416b: $80
	ret  nz                                          ; $416c: $c0

	ld   a, [$8000]                                  ; $416d: $fa $00 $80

jr_08a_4170:
	ld   bc, $0c80                                   ; $4170: $01 $80 $0c
	add  d                                           ; $4173: $82
	nop                                              ; $4174: $00
	add  b                                           ; $4175: $80
	ld   h, c                                        ; $4176: $61
	add  d                                           ; $4177: $82
	rlca                                             ; $4178: $07
	add  b                                           ; $4179: $80
	inc  bc                                          ; $417a: $03
	add  b                                           ; $417b: $80

jr_08a_417c:
	ld   bc, $0088                                   ; $417c: $01 $88 $00
	add  b                                           ; $417f: $80
	ret  nz                                          ; $4180: $c0

	add  b                                           ; $4181: $80
	jr   jr_08a_4104                                 ; $4182: $18 $80

	add  e                                           ; $4184: $83
	add  b                                           ; $4185: $80
	jr   nc, jr_08a_4108                             ; $4186: $30 $80

	nop                                              ; $4188: $00
	add  b                                           ; $4189: $80
	ld   [hl], e                                     ; $418a: $73
	add  b                                           ; $418b: $80
	db   $fc                                         ; $418c: $fc
	add  h                                           ; $418d: $84
	cp   $80                                         ; $418e: $fe $80
	db   $fc                                         ; $4190: $fc
	sub  b                                           ; $4191: $90
	nop                                              ; $4192: $00
	add  b                                           ; $4193: $80
	jr   nz, jr_08a_4116                             ; $4194: $20 $80

	ld   h, b                                        ; $4196: $60
	add  h                                           ; $4197: $84

jr_08a_4198:
	nop                                              ; $4198: $00
	add  b                                           ; $4199: $80
	jr   nc, jr_08a_414c                             ; $419a: $30 $b0

jr_08a_419c:
	nop                                              ; $419c: $00
	add  b                                           ; $419d: $80
	inc  bc                                          ; $419e: $03
	add  b                                           ; $419f: $80
	ld   bc, $0090                                   ; $41a0: $01 $90 $00
	nop                                              ; $41a3: $00
	ld   bc, $0681                                   ; $41a4: $01 $81 $06
	add  b                                           ; $41a7: $80
	nop                                              ; $41a8: $00
	nop                                              ; $41a9: $00
	rlca                                             ; $41aa: $07
	adc  e                                           ; $41ab: $8b
	nop                                              ; $41ac: $00
	add  b                                           ; $41ad: $80
	jr   nc, jr_08a_4152                             ; $41ae: $30 $a2

	nop                                              ; $41b0: $00
	add  b                                           ; $41b1: $80
	ld   hl, sp-$80                                  ; $41b2: $f8 $80
	ldh  a, [$80]                                    ; $41b4: $f0 $80
	ld   h, b                                        ; $41b6: $60
	add  b                                           ; $41b7: $80
	ld   b, b                                        ; $41b8: $40
	add  b                                           ; $41b9: $80
	add  hl, bc                                      ; $41ba: $09
	add  b                                           ; $41bb: $80
	ld   [$0c80], sp                                 ; $41bc: $08 $80 $0c
	add  b                                           ; $41bf: $80
	ld   b, a                                        ; $41c0: $47
	add  b                                           ; $41c1: $80
	ld   bc, $008e                                   ; $41c2: $01 $8e $00
	add  b                                           ; $41c5: $80
	db   $fc                                         ; $41c6: $fc
	add  b                                           ; $41c7: $80
	rra                                              ; $41c8: $1f
	add  b                                           ; $41c9: $80

jr_08a_41ca:
	add  a                                           ; $41ca: $87
	add  b                                           ; $41cb: $80
	jp   $0180                                       ; $41cc: $c3 $80 $01


	add  b                                           ; $41cf: $80
	add  hl, bc                                      ; $41d0: $09
	add  b                                           ; $41d1: $80
	ld   sp, hl                                      ; $41d2: $f9
	add  b                                           ; $41d3: $80

jr_08a_41d4:
	pop  hl                                          ; $41d4: $e1
	add  b                                           ; $41d5: $80
	dec  b                                           ; $41d6: $05
	add  b                                           ; $41d7: $80
	ld   a, [bc]                                     ; $41d8: $0a
	add  b                                           ; $41d9: $80
	ld   [hl], b                                     ; $41da: $70
	adc  h                                           ; $41db: $8c
	nop                                              ; $41dc: $00
	add  d                                           ; $41dd: $82
	add  b                                           ; $41de: $80
	add  h                                           ; $41df: $84
	ret  nz                                          ; $41e0: $c0

	add  b                                           ; $41e1: $80
	add  b                                           ; $41e2: $80
	add  b                                           ; $41e3: $80
	nop                                              ; $41e4: $00
	add  b                                           ; $41e5: $80
	jr   nz, jr_08a_4168                             ; $41e6: $20 $80

	ld   h, b                                        ; $41e8: $60
	add  d                                           ; $41e9: $82
	ld   b, b                                        ; $41ea: $40
	sub  $00                                         ; $41eb: $d6 $00
	add  b                                           ; $41ed: $80
	jr   jr_08a_4170                                 ; $41ee: $18 $80

	jr   nc, jr_08a_417c                             ; $41f0: $30 $8a

	nop                                              ; $41f2: $00
	add  d                                           ; $41f3: $82
	inc  b                                           ; $41f4: $04
	add  d                                           ; $41f5: $82
	ld   [$00ff], sp                                 ; $41f6: $08 $ff $00
	rst  $38                                         ; $41f9: $ff
	nop                                              ; $41fa: $00
	rst  $38                                         ; $41fb: $ff
	nop                                              ; $41fc: $00
	rst  $38                                         ; $41fd: $ff
	nop                                              ; $41fe: $00
	rst  $38                                         ; $41ff: $ff
	nop                                              ; $4200: $00
	call $b200                                       ; $4201: $cd $00 $b2
	nop                                              ; $4204: $00
	adc  b                                           ; $4205: $88
	nop                                              ; $4206: $00
	add  h                                           ; $4207: $84
	ld   bc, $0084                                   ; $4208: $01 $84 $00
	add  b                                           ; $420b: $80
	rlca                                             ; $420c: $07
	add  b                                           ; $420d: $80
	inc  a                                           ; $420e: $3c
	add  b                                           ; $420f: $80
	jp   nz, $0f80                                   ; $4210: $c2 $80 $0f

	add  b                                           ; $4213: $80
	cp   c                                           ; $4214: $b9
	add  d                                           ; $4215: $82
	nop                                              ; $4216: $00
	add  b                                           ; $4217: $80
	ldh  [$80], a                                    ; $4218: $e0 $80
	jr   nz, jr_08a_419c                             ; $421a: $20 $80

	db   $10                                         ; $421c: $10
	add  b                                           ; $421d: $80
	ld   hl, sp-$80                                  ; $421e: $f8 $80
	add  h                                           ; $4220: $84
	add  b                                           ; $4221: $80
	inc  bc                                          ; $4222: $03
	add  h                                           ; $4223: $84
	nop                                              ; $4224: $00
	add  b                                           ; $4225: $80
	ld   bc, $0e80                                   ; $4226: $01 $80 $0e
	add  b                                           ; $4229: $80
	ldh  a, [$80]                                    ; $422a: $f0 $80
	ld   b, b                                        ; $422c: $40
	add  b                                           ; $422d: $80
	ret  nz                                          ; $422e: $c0

	add  d                                           ; $422f: $82
	nop                                              ; $4230: $00
	add  b                                           ; $4231: $80
	ld   h, b                                        ; $4232: $60
	add  b                                           ; $4233: $80
	sbc  h                                           ; $4234: $9c
	add  b                                           ; $4235: $80
	ld   a, [bc]                                     ; $4236: $0a
	add  b                                           ; $4237: $80
	rlca                                             ; $4238: $07
	add  b                                           ; $4239: $80
	inc  bc                                          ; $423a: $03
	ld   [bc], a                                     ; $423b: $02
	dec  e                                           ; $423c: $1d
	rra                                              ; $423d: $1f
	ld   [bc], a                                     ; $423e: $02
	adc  l                                           ; $423f: $8d
	nop                                              ; $4240: $00
	add  h                                           ; $4241: $84
	ld   bc, $0380                                   ; $4242: $01 $80 $03
	add  b                                           ; $4245: $80
	inc  e                                           ; $4246: $1c
	add  b                                           ; $4247: $80
	jr   jr_08a_41ca                                 ; $4248: $18 $80

	dec  d                                           ; $424a: $15
	add  b                                           ; $424b: $80
	inc  de                                          ; $424c: $13
	add  b                                           ; $424d: $80
	ld   h, e                                        ; $424e: $63
	add  b                                           ; $424f: $80
	inc  l                                           ; $4250: $2c
	add  b                                           ; $4251: $80
	jr   nc, jr_08a_41d4                             ; $4252: $30 $80

	pop  hl                                          ; $4254: $e1
	add  b                                           ; $4255: $80
	ld   e, $80                                      ; $4256: $1e $80
	ld   a, b                                        ; $4258: $78
	add  b                                           ; $4259: $80
	add  h                                           ; $425a: $84
	add  b                                           ; $425b: $80
	rlca                                             ; $425c: $07
	add  b                                           ; $425d: $80
	adc  [hl]                                        ; $425e: $8e
	add  b                                           ; $425f: $80
	ldh  a, [c]                                      ; $4260: $f2
	add  b                                           ; $4261: $80
	ld   b, c                                        ; $4262: $41
	add  b                                           ; $4263: $80
	pop  hl                                          ; $4264: $e1
	add  b                                           ; $4265: $80
	ld   de, $0f80                                   ; $4266: $11 $80 $0f
	add  b                                           ; $4269: $80
	inc  a                                           ; $426a: $3c
	rlca                                             ; $426b: $07
	adc  $fa                                         ; $426c: $ce $fa
	inc  b                                           ; $426e: $04
	jr   nc, jr_08a_428a                             ; $426f: $30 $19

	rra                                              ; $4271: $1f
	ld   c, c                                        ; $4272: $49
	ld   c, a                                        ; $4273: $4f
	add  b                                           ; $4274: $80
	db   $fd                                         ; $4275: $fd
	add  b                                           ; $4276: $80
	jp   $2180                                       ; $4277: $c3 $80 $21


	add  b                                           ; $427a: $80
	inc  de                                          ; $427b: $13
	add  b                                           ; $427c: $80
	inc  e                                           ; $427d: $1c
	ld   [bc], a                                     ; $427e: $02
	ld   [hl], c                                     ; $427f: $71
	ld   a, a                                        ; $4280: $7f
	sbc  a                                           ; $4281: $9f
	add  b                                           ; $4282: $80
	rst  $38                                         ; $4283: $ff
	add  c                                           ; $4284: $81
	ld   a, a                                        ; $4285: $7f
	inc  bc                                          ; $4286: $03
	ld   [hl], b                                     ; $4287: $70
	ld   a, [hl]                                     ; $4288: $7e
	db   $10                                         ; $4289: $10

jr_08a_428a:
	ldh  a, [$80]                                    ; $428a: $f0 $80
	sub  h                                           ; $428c: $94
	add  b                                           ; $428d: $80
	rrca                                             ; $428e: $0f
	add  h                                           ; $428f: $84
	nop                                              ; $4290: $00
	add  d                                           ; $4291: $82
	add  b                                           ; $4292: $80
	add  b                                           ; $4293: $80
	ld   b, b                                        ; $4294: $40
	add  b                                           ; $4295: $80
	ldh  [$80], a                                    ; $4296: $e0 $80
	db   $10                                         ; $4298: $10
	ld   [bc], a                                     ; $4299: $02
	inc  de                                          ; $429a: $13
	dec  de                                          ; $429b: $1b
	ld   a, [de]                                     ; $429c: $1a
	add  b                                           ; $429d: $80
	ld   d, $06                                      ; $429e: $16 $06
	dec  de                                          ; $42a0: $1b
	dec  sp                                          ; $42a1: $3b
	ld   [hl], $4e                                   ; $42a2: $36 $4e
	ld   c, e                                        ; $42a4: $4b

jr_08a_42a5:
	daa                                              ; $42a5: $27
	ld   h, $80                                      ; $42a6: $26 $80
	ld   a, [de]                                     ; $42a8: $1a
	add  b                                           ; $42a9: $80
	rla                                              ; $42aa: $17
	inc  de                                          ; $42ab: $13
	ld   c, $0f                                      ; $42ac: $0e $0f
	or   d                                           ; $42ae: $b2
	cp   [hl]                                        ; $42af: $be
	ld   b, e                                        ; $42b0: $43
	ld   [hl], e                                     ; $42b1: $73
	ld   c, [hl]                                     ; $42b2: $4e
	adc  $f3                                         ; $42b3: $ce $f3
	ld   [hl], e                                     ; $42b5: $73
	ld   c, a                                        ; $42b6: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42b7: $cf
	cp   $7f                                         ; $42b8: $fe $7f
	ld   [hl], d                                     ; $42ba: $72
	ld   a, a                                        ; $42bb: $7f
	inc  c                                           ; $42bc: $0c
	srl  d                                           ; $42bd: $cb $3a
	dec  sp                                          ; $42bf: $3b
	add  b                                           ; $42c0: $80
	rrc  a                                           ; $42c1: $cb $0f
	dec  sp                                          ; $42c3: $3b
	ccf                                              ; $42c4: $3f
	db   $fd                                         ; $42c5: $fd
	ei                                               ; $42c6: $fb
	ret  z                                           ; $42c7: $c8

	ei                                               ; $42c8: $fb
	ld   a, [bc]                                     ; $42c9: $0a
	ei                                               ; $42ca: $fb
	dec  bc                                          ; $42cb: $0b
	set  1, a                                        ; $42cc: $cb $cf
	jr   c, jr_08a_42a5                              ; $42ce: $38 $d5

	push af                                          ; $42d0: $f5
	or   [hl]                                        ; $42d1: $b6
	or   $80                                         ; $42d2: $f6 $80
	push af                                          ; $42d4: $f5
	add  hl, bc                                      ; $42d5: $09
	call nc, $9cfc                                   ; $42d6: $d4 $fc $9c
	or   $b6                                         ; $42d9: $f6 $b6
	push af                                          ; $42db: $f5
	db   $fd                                         ; $42dc: $fd
	db   $fc                                         ; $42dd: $fc
	ld   e, h                                        ; $42de: $5c

jr_08a_42df:
	inc  a                                           ; $42df: $3c
	add  b                                           ; $42e0: $80
	jp   z, $0380                                    ; $42e1: $ca $80 $03

	dec  bc                                          ; $42e4: $0b
	ld   e, $1f                                      ; $42e5: $1e $1f
	db   $e3                                         ; $42e7: $e3
	rst  $38                                         ; $42e8: $ff
	sbc  a                                           ; $42e9: $9f
	rst  $38                                         ; $42ea: $ff
	cp   $ff                                         ; $42eb: $fe $ff
	di                                               ; $42ed: $f3
	rst  $38                                         ; $42ee: $ff
	ld   a, b                                        ; $42ef: $78
	ld   [$7880], sp                                 ; $42f0: $08 $80 $78
	rlca                                             ; $42f3: $07
	adc  h                                           ; $42f4: $8c
	db   $fc                                         ; $42f5: $fc

jr_08a_42f6:
	ld   a, h                                        ; $42f6: $7c
	db   $fc                                         ; $42f7: $fc
	db   $e4                                         ; $42f8: $e4
	db   $f4                                         ; $42f9: $f4
	inc  b                                           ; $42fa: $04
	db   $e4                                         ; $42fb: $e4
	add  b                                           ; $42fc: $80
	inc  b                                           ; $42fd: $04
	add  b                                           ; $42fe: $80
	db   $fc                                         ; $42ff: $fc
	nop                                              ; $4300: $00
	ld   [de], a                                     ; $4301: $12
	add  b                                           ; $4302: $80
	ld   a, [de]                                     ; $4303: $1a
	add  b                                           ; $4304: $80
	ld   d, $06                                      ; $4305: $16 $06
	inc  de                                          ; $4307: $13
	dec  bc                                          ; $4308: $0b
	ld   a, [bc]                                     ; $4309: $0a
	ld   b, $07                                      ; $430a: $06 $07
	inc  bc                                          ; $430c: $03
	ld   [bc], a                                     ; $430d: $02
	add  b                                           ; $430e: $80
	ld   bc, $0080                                   ; $430f: $01 $80 $00
	inc  bc                                          ; $4312: $03
	di                                               ; $4313: $f3
	cp   $43                                         ; $4314: $fe $43
	ld   [hl], e                                     ; $4316: $73
	add  b                                           ; $4317: $80
	ld   c, [hl]                                     ; $4318: $4e
	dec  bc                                          ; $4319: $0b
	ld   [hl], e                                     ; $431a: $73
	di                                               ; $431b: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $431c: $cf
	ld   c, a                                        ; $431d: $4f
	ld   a, a                                        ; $431e: $7f
	rst  $38                                         ; $431f: $ff
	cp   $7f                                         ; $4320: $fe $7f
	ldh  [$fc], a                                    ; $4322: $e0 $fc
	db   $ec                                         ; $4324: $ec
	dec  sp                                          ; $4325: $3b
	add  b                                           ; $4326: $80
	res  0, b                                        ; $4327: $cb $80
	dec  sp                                          ; $4329: $3b
	dec  b                                           ; $432a: $05
	ld   sp, hl                                      ; $432b: $f9
	rst  $38                                         ; $432c: $ff
	ret  z                                           ; $432d: $c8

	ld   sp, hl                                      ; $432e: $f9
	nop                                              ; $432f: $00
	ret  nz                                          ; $4330: $c0

	add  b                                           ; $4331: $80
	inc  e                                           ; $4332: $1c
	add  b                                           ; $4333: $80
	inc  de                                          ; $4334: $13
	dec  c                                           ; $4335: $0d
	sub  [hl]                                        ; $4336: $96

jr_08a_4337:
	or   $f5                                         ; $4337: $f6 $f5
	db   $fd                                         ; $4339: $fd
	call c, $b6f6                                    ; $433a: $dc $f6 $b6

jr_08a_433d:
	db   $fd                                         ; $433d: $fd
	sbc  l                                           ; $433e: $9d
	sub  [hl]                                        ; $433f: $96
	ld   d, $15                                      ; $4340: $16 $15
	dec  c                                           ; $4342: $0d
	inc  c                                           ; $4343: $0c
	add  b                                           ; $4344: $80
	add  h                                           ; $4345: $84
	dec  b                                           ; $4346: $05
	ldh  a, [c]                                      ; $4347: $f2
	rst  $38                                         ; $4348: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4349: $cf
	rst  $38                                         ; $434a: $ff
	cp   [hl]                                        ; $434b: $be
	cp   $80                                         ; $434c: $fe $80
	di                                               ; $434e: $f3
	add  b                                           ; $434f: $80
	adc  [hl]                                        ; $4350: $8e
	add  b                                           ; $4351: $80
	di                                               ; $4352: $f3
	add  b                                           ; $4353: $80
	adc  a                                           ; $4354: $8f
	inc  bc                                          ; $4355: $03
	cp   $ff                                         ; $4356: $fe $ff
	ld   [hl], h                                     ; $4358: $74
	ld   hl, sp-$80                                  ; $4359: $f8 $80
	ret  z                                           ; $435b: $c8

	add  b                                           ; $435c: $80
	jr   c, jr_08a_42df                              ; $435d: $38 $80

	ret  z                                           ; $435f: $c8

	add  b                                           ; $4360: $80
	jr   c, jr_08a_4366                              ; $4361: $38 $03

	add  sp, -$08                                    ; $4363: $e8 $f8
	nop                                              ; $4365: $00

jr_08a_4366:
	ldh  [$90], a                                    ; $4366: $e0 $90
	nop                                              ; $4368: $00
	add  b                                           ; $4369: $80
	ld   h, b                                        ; $436a: $60
	adc  b                                           ; $436b: $88
	nop                                              ; $436c: $00
	add  b                                           ; $436d: $80
	rlca                                             ; $436e: $07
	add  b                                           ; $436f: $80
	ld   [bc], a                                     ; $4370: $02
	add  b                                           ; $4371: $80
	db   $10                                         ; $4372: $10
	add  d                                           ; $4373: $82
	jr   nz, jr_08a_42f6                             ; $4374: $20 $80

	ld   b, e                                        ; $4376: $43
	add  b                                           ; $4377: $80
	ld   e, h                                        ; $4378: $5c

jr_08a_4379:
	add  b                                           ; $4379: $80
	ldh  [$82], a                                    ; $437a: $e0 $82
	nop                                              ; $437c: $00
	add  b                                           ; $437d: $80
	ld   [hl], d                                     ; $437e: $72
	add  b                                           ; $437f: $80
	ld   de, $5080                                   ; $4380: $11 $80 $50
	add  b                                           ; $4383: $80
	and  b                                           ; $4384: $a0
	add  b                                           ; $4385: $80
	ld   d, $80                                      ; $4386: $16 $80
	add  hl, bc                                      ; $4388: $09
	add  b                                           ; $4389: $80
	inc  b                                           ; $438a: $04
	dec  b                                           ; $438b: $05
	ld   [bc], a                                     ; $438c: $02
	inc  bc                                          ; $438d: $03
	sbc  l                                           ; $438e: $9d
	db   $fc                                         ; $438f: $fc
	add  b                                           ; $4390: $80
	ldh  [$86], a                                    ; $4391: $e0 $86
	nop                                              ; $4393: $00
	add  b                                           ; $4394: $80
	add  b                                           ; $4395: $80
	add  b                                           ; $4396: $80
	ld   b, b                                        ; $4397: $40
	sbc  [hl]                                        ; $4398: $9e
	nop                                              ; $4399: $00
	add  b                                           ; $439a: $80
	ld   bc, $008e                                   ; $439b: $01 $8e $00
	add  b                                           ; $439e: $80
	add  b                                           ; $439f: $80
	add  b                                           ; $43a0: $80
	ld   b, e                                        ; $43a1: $43
	inc  bc                                          ; $43a2: $03
	inc  l                                           ; $43a3: $2c
	cpl                                              ; $43a4: $2f
	ld   de, $8012                                   ; $43a5: $11 $12 $80
	ld   bc, $0082                                   ; $43a8: $01 $82 $00
	add  hl, bc                                      ; $43ab: $09
	inc  c                                           ; $43ac: $0c
	rrca                                             ; $43ad: $0f
	ld   [hl], e                                     ; $43ae: $73
	ld   a, [hl]                                     ; $43af: $7e
	adc  [hl]                                        ; $43b0: $8e
	ldh  a, [rPCM34]                                 ; $43b1: $f0 $77
	add  a                                           ; $43b3: $87
	cp   b                                           ; $43b4: $b8
	jr   c, jr_08a_4337                              ; $43b5: $38 $80

	ret  nz                                          ; $43b7: $c0

	add  d                                           ; $43b8: $82
	nop                                              ; $43b9: $00
	add  b                                           ; $43ba: $80
	jr   nz, jr_08a_433d                             ; $43bb: $20 $80

	db   $10                                         ; $43bd: $10
	add  b                                           ; $43be: $80
	ldh  [rIE], a                                    ; $43bf: $e0 $ff
	nop                                              ; $43c1: $00
	add  e                                           ; $43c2: $83
	nop                                              ; $43c3: $00
	add  b                                           ; $43c4: $80

jr_08a_43c5:
	rlca                                             ; $43c5: $07
	add  b                                           ; $43c6: $80
	inc  b                                           ; $43c7: $04
	sub  a                                           ; $43c8: $97
	nop                                              ; $43c9: $00
	ld   [bc], a                                     ; $43ca: $02
	ret  nz                                          ; $43cb: $c0

	and  b                                           ; $43cc: $a0
	ld   h, b                                        ; $43cd: $60
	add  b                                           ; $43ce: $80
	add  b                                           ; $43cf: $80
	rst  $38                                         ; $43d0: $ff
	nop                                              ; $43d1: $00
	rst  $38                                         ; $43d2: $ff
	nop                                              ; $43d3: $00
	xor  a                                           ; $43d4: $af
	nop                                              ; $43d5: $00
	add  b                                           ; $43d6: $80
	inc  b                                           ; $43d7: $04
	add  b                                           ; $43d8: $80
	ld   c, $02                                      ; $43d9: $0e $02
	inc  b                                           ; $43db: $04
	inc  c                                           ; $43dc: $0c
	ld   [$0080], sp                                 ; $43dd: $08 $80 $00
	add  b                                           ; $43e0: $80
	ld   bc, $1e80                                   ; $43e1: $01 $80 $1e
	add  b                                           ; $43e4: $80
	ld   h, b                                        ; $43e5: $60
	add  b                                           ; $43e6: $80
	rrca                                             ; $43e7: $0f
	add  b                                           ; $43e8: $80
	jr   jr_08a_4379                                 ; $43e9: $18 $8e

	nop                                              ; $43eb: $00
	add  b                                           ; $43ec: $80
	add  b                                           ; $43ed: $80
	add  d                                           ; $43ee: $82
	nop                                              ; $43ef: $00
	add  b                                           ; $43f0: $80
	add  b                                           ; $43f1: $80
	add  b                                           ; $43f2: $80
	jr   nz, @-$7e                                   ; $43f3: $20 $80

	ldh  a, [rIE]                                    ; $43f5: $f0 $ff
	nop                                              ; $43f7: $00
	rst  $38                                         ; $43f8: $ff
	nop                                              ; $43f9: $00
	rst  $38                                         ; $43fa: $ff
	nop                                              ; $43fb: $00
	rst  $38                                         ; $43fc: $ff
	nop                                              ; $43fd: $00
	rst  $38                                         ; $43fe: $ff
	nop                                              ; $43ff: $00
	ret                                              ; $4400: $c9


	nop                                              ; $4401: $00
	xor  [hl]                                        ; $4402: $ae

Call_08a_4403:
	nop                                              ; $4403: $00
	xor  d                                           ; $4404: $aa
	nop                                              ; $4405: $00
	add  b                                           ; $4406: $80
	ld   bc, $0680                                   ; $4407: $01 $80 $06
	add  h                                           ; $440a: $84
	nop                                              ; $440b: $00
	add  b                                           ; $440c: $80
	inc  bc                                          ; $440d: $03
	add  b                                           ; $440e: $80
	inc  b                                           ; $440f: $04
	add  b                                           ; $4410: $80
	dec  sp                                          ; $4411: $3b
	add  b                                           ; $4412: $80
	adc  $80                                         ; $4413: $ce $80
	ld   e, e                                        ; $4415: $5b
	add  h                                           ; $4416: $84
	nop                                              ; $4417: $00
	add  b                                           ; $4418: $80
	ldh  [$80], a                                    ; $4419: $e0 $80
	jr   nz, @-$7e                                   ; $441b: $20 $80

	ldh  [$b2], a                                    ; $441d: $e0 $b2
	nop                                              ; $441f: $00
	add  b                                           ; $4420: $80
	add  hl, bc                                      ; $4421: $09
	add  b                                           ; $4422: $80
	ld   d, $80                                      ; $4423: $16 $80
	inc  d                                           ; $4425: $14
	add  d                                           ; $4426: $82
	jr   z, @-$7e                                    ; $4427: $28 $80

	add  hl, hl                                      ; $4429: $29
	dec  b                                           ; $442a: $05
	ld   l, $2f                                      ; $442b: $2e $2f
	add  hl, sp                                      ; $442d: $39
	ccf                                              ; $442e: $3f
	ei                                               ; $442f: $fb
	db   $fc                                         ; $4430: $fc
	add  b                                           ; $4431: $80
	dec  hl                                          ; $4432: $2b
	add  b                                           ; $4433: $80
	inc  d                                           ; $4434: $14
	add  b                                           ; $4435: $80
	ld   d, $80                                      ; $4436: $16 $80
	ld   a, [bc]                                     ; $4438: $0a
	add  b                                           ; $4439: $80
	adc  d                                           ; $443a: $8a
	dec  b                                           ; $443b: $05
	ld   l, d                                        ; $443c: $6a
	ld   [$fe9e], a                                  ; $443d: $ea $9e $fe
	nop                                              ; $4440: $00
	ldh  [$80], a                                    ; $4441: $e0 $80
	jr   nz, jr_08a_43c5                             ; $4443: $20 $80

	ldh  [hScriptOpcodeParams+2], a                                    ; $4445: $e0 $a2
	nop                                              ; $4447: $00
	add  b                                           ; $4448: $80
	ld   bc, $0605                                   ; $4449: $01 $05 $06
	rlca                                             ; $444c: $07
	dec  b                                           ; $444d: $05
	rlca                                             ; $444e: $07
	inc  bc                                          ; $444f: $03
	nop                                              ; $4450: $00
	add  b                                           ; $4451: $80
	ld   bc, $0611                                   ; $4452: $01 $11 $06
	rlca                                             ; $4455: $07
	add  hl, de                                      ; $4456: $19
	rra                                              ; $4457: $1f
	ld   l, b                                        ; $4458: $68
	ld   [hl], b                                     ; $4459: $70
	rst  $28                                         ; $445a: $ef
	add  e                                           ; $445b: $83
	ld   [hl], e                                     ; $445c: $73
	di                                               ; $445d: $f3
	ret  nc                                          ; $445e: $d0

	ldh  a, [$b3]                                    ; $445f: $f0 $b3
	ld   a, a                                        ; $4461: $7f
	and  h                                           ; $4462: $a4
	rst  $38                                         ; $4463: $ff
	ld   l, d                                        ; $4464: $6a
	xor  $80                                         ; $4465: $ee $80
	ldh  a, [c]                                      ; $4467: $f2
	ld   [bc], a                                     ; $4468: $02
	rrca                                             ; $4469: $0f
	ccf                                              ; $446a: $3f
	ldh  a, [$81]                                    ; $446b: $f0 $81
	rst  $38                                         ; $446d: $ff
	rlca                                             ; $446e: $07
	nop                                              ; $446f: $00

jr_08a_4470:
	ldh  [rAUD2HIGH], a                              ; $4470: $e0 $19
	cp   $61                                         ; $4472: $fe $61
	rst  $38                                         ; $4474: $ff
	adc  a                                           ; $4475: $8f
	xor  $80                                         ; $4476: $ee $80
	sbc  b                                           ; $4478: $98
	inc  bc                                          ; $4479: $03
	rst  $30                                         ; $447a: $f7
	rst  $38                                         ; $447b: $ff
	rrca                                             ; $447c: $0f
	rst  $38                                         ; $447d: $ff
	add  b                                           ; $447e: $80
	nop                                              ; $447f: $00

Call_08a_4480:
	add  b                                           ; $4480: $80
	ld   bc, $ff01                                   ; $4481: $01 $01 $ff
	nop                                              ; $4484: $00
	add  b                                           ; $4485: $80
	add  b                                           ; $4486: $80
	add  hl, bc                                      ; $4487: $09
	ldh  [$60], a                                    ; $4488: $e0 $60
	ld   a, b                                        ; $448a: $78
	jr   @-$18                                       ; $448b: $18 $e6

	cp   $87                                         ; $448d: $fe $87
	add  c                                           ; $448f: $81
	ld   hl, $8120                                   ; $4490: $21 $20 $81
	rst  $38                                         ; $4493: $ff
	add  a                                           ; $4494: $87
	nop                                              ; $4495: $00
	add  b                                           ; $4496: $80
	add  b                                           ; $4497: $80
	dec  b                                           ; $4498: $05
	ldh  [$60], a                                    ; $4499: $e0 $60
	or   b                                           ; $449b: $b0
	ldh  a, [$c4]                                    ; $449c: $f0 $c4
	rlca                                             ; $449e: $07
	add  b                                           ; $449f: $80
	inc  b                                           ; $44a0: $04
	add  d                                           ; $44a1: $82
	rlca                                             ; $44a2: $07
	add  d                                           ; $44a3: $82
	inc  b                                           ; $44a4: $04
	add  b                                           ; $44a5: $80
	rlca                                             ; $44a6: $07
	inc  de                                          ; $44a7: $13
	ld   b, $07                                      ; $44a8: $06 $07
	di                                               ; $44aa: $f3
	db   $e3                                         ; $44ab: $e3
	db   $d3                                         ; $44ac: $d3
	ld   a, a                                        ; $44ad: $7f
	inc  e                                           ; $44ae: $1c
	cp   $78                                         ; $44af: $fe $78
	db   $fc                                         ; $44b1: $fc
	cp   l                                           ; $44b2: $bd
	db   $dd                                         ; $44b3: $dd
	ld   b, [hl]                                     ; $44b4: $46
	ld   b, e                                        ; $44b5: $43
	ld   e, l                                        ; $44b6: $5d
	rst  $38                                         ; $44b7: $ff
	ld   a, $ff                                      ; $44b8: $3e $ff
	ld   h, [hl]                                     ; $44ba: $66
	cp   a                                           ; $44bb: $bf
	add  b                                           ; $44bc: $80
	rra                                              ; $44bd: $1f
	ld   b, $0b                                      ; $44be: $06 $0b
	rrca                                             ; $44c0: $0f
	inc  h                                           ; $44c1: $24
	ld   h, $c4                                      ; $44c2: $26 $c4
	push bc                                          ; $44c4: $c5
	ld   b, d                                        ; $44c5: $42
	add  c                                           ; $44c6: $81
	jp   nz, $0102                                   ; $44c7: $c2 $02 $01

	add  c                                           ; $44ca: $81
	nop                                              ; $44cb: $00
	add  c                                           ; $44cc: $81

jr_08a_44cd:
	rst  $38                                         ; $44cd: $ff
	dec  b                                           ; $44ce: $05
	inc  e                                           ; $44cf: $1c
	rra                                              ; $44d0: $1f
	inc  de                                          ; $44d1: $13
	ld   a, a                                        ; $44d2: $7f

jr_08a_44d3:
	ld   hl, $82b1                                   ; $44d3: $21 $b1 $82
	ld   h, b                                        ; $44d6: $60
	add  b                                           ; $44d7: $80
	ret  nc                                          ; $44d8: $d0

	ld   bc, $ff00                                   ; $44d9: $01 $00 $ff
	add  b                                           ; $44dc: $80
	db   $fc                                         ; $44dd: $fc
	ld   [$c303], sp                                 ; $44de: $08 $03 $c3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44e1: $cf
	rst  $38                                         ; $44e2: $ff
	jr   nc, @+$01                                   ; $44e3: $30 $ff

	ld   c, h                                        ; $44e5: $4c
	rst  $38                                         ; $44e6: $ff
	di                                               ; $44e7: $f3
	add  c                                           ; $44e8: $81
	rst  $38                                         ; $44e9: $ff
	ld   bc, $f04f                                   ; $44ea: $01 $4f $f0
	add  b                                           ; $44ed: $80
	jr   nc, jr_08a_4470                             ; $44ee: $30 $80

	ldh  a, [rSC]                                    ; $44f0: $f0 $02
	ld   [hl], b                                     ; $44f2: $70
	ldh  a, [rSVBK]                                  ; $44f3: $f0 $70
	add  l                                           ; $44f5: $85
	ldh  a, [rP1]                                    ; $44f6: $f0 $00
	call nz, $0781                                   ; $44f8: $c4 $81 $07
	add  b                                           ; $44fb: $80
	inc  b                                           ; $44fc: $04
	add  h                                           ; $44fd: $84
	rlca                                             ; $44fe: $07

jr_08a_44ff:
	add  b                                           ; $44ff: $80
	inc  b                                           ; $4500: $04
	add  b                                           ; $4501: $80
	rlca                                             ; $4502: $07
	dec  e                                           ; $4503: $1d
	ld   h, h                                        ; $4504: $64
	rst  $38                                         ; $4505: $ff
	ld   b, [hl]                                     ; $4506: $46
	rst  $20                                         ; $4507: $e7
	add  $64                                         ; $4508: $c6 $64
	inc  c                                           ; $450a: $0c
	rst  $38                                         ; $450b: $ff
	dec  hl                                          ; $450c: $2b
	rst  $38                                         ; $450d: $ff
	ret  nc                                          ; $450e: $d0

	di                                               ; $450f: $f3
	ld   h, b                                        ; $4510: $60
	ldh  [$6c], a                                    ; $4511: $e0 $6c
	db   $fc                                         ; $4513: $fc
	ccf                                              ; $4514: $3f
	or   b                                           ; $4515: $b0
	ld   a, b                                        ; $4516: $78
	ld   hl, sp+$67                                  ; $4517: $f8 $67
	ld   a, a                                        ; $4519: $7f
	ld   hl, sp-$21                                  ; $451a: $f8 $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $451c: $cf
	rst  $38                                         ; $451d: $ff
	cp   h                                           ; $451e: $bc
	db   $fc                                         ; $451f: $fc
	jr   nc, jr_08a_4522                             ; $4520: $30 $00

jr_08a_4522:
	add  b                                           ; $4522: $80
	rrca                                             ; $4523: $0f
	ld   bc, $10ef                                   ; $4524: $01 $ef $10
	add  b                                           ; $4527: $80
	jr   c, jr_08a_4531                              ; $4528: $38 $07

	adc  $fe                                         ; $452a: $ce $fe
	dec  a                                           ; $452c: $3d
	rst  $38                                         ; $452d: $ff
	rst  $30                                         ; $452e: $f7
	rst  $38                                         ; $452f: $ff
	ld   a, [hl-]                                    ; $4530: $3a

jr_08a_4531:
	ccf                                              ; $4531: $3f
	add  b                                           ; $4532: $80
	rlca                                             ; $4533: $07
	add  b                                           ; $4534: $80
	ldh  a, [rSB]                                    ; $4535: $f0 $01
	add  b                                           ; $4537: $80
	ld   b, b                                        ; $4538: $40
	add  b                                           ; $4539: $80
	ld   b, a                                        ; $453a: $47
	nop                                              ; $453b: $00
	cp   a                                           ; $453c: $bf
	add  b                                           ; $453d: $80
	ldh  a, [$80]                                    ; $453e: $f0 $80
	push af                                          ; $4540: $f5
	ld   [$91f1], sp                                 ; $4541: $08 $f1 $91

jr_08a_4544:
	or   $e6                                         ; $4544: $f6 $e6
	ld   h, b                                        ; $4546: $60
	db   $10                                         ; $4547: $10
	ld   a, a                                        ; $4548: $7f
	rrca                                             ; $4549: $0f
	jr   nc, jr_08a_44cd                             ; $454a: $30 $81

	ldh  a, [$83]                                    ; $454c: $f0 $83
	ld   [hl], b                                     ; $454e: $70
	add  b                                           ; $454f: $80
	jr   nc, jr_08a_44d3                             ; $4550: $30 $81

	ld   [hl], b                                     ; $4552: $70
	inc  b                                           ; $4553: $04
	ldh  a, [$c4]                                    ; $4554: $f0 $c4
	rlca                                             ; $4556: $07
	inc  b                                           ; $4557: $04
	rlca                                             ; $4558: $07
	add  b                                           ; $4559: $80
	inc  bc                                          ; $455a: $03
	adc  c                                           ; $455b: $89
	nop                                              ; $455c: $00
	ld   bc, $00ff                                   ; $455d: $01 $ff $00
	add  c                                           ; $4560: $81
	rst  $38                                         ; $4561: $ff
	adc  c                                           ; $4562: $89
	nop                                              ; $4563: $00
	ld   bc, $00ff                                   ; $4564: $01 $ff $00
	add  c                                           ; $4567: $81
	rst  $38                                         ; $4568: $ff
	adc  c                                           ; $4569: $89
	nop                                              ; $456a: $00
	ld   bc, $00ff                                   ; $456b: $01 $ff $00
	add  c                                           ; $456e: $81
	rst  $38                                         ; $456f: $ff
	adc  c                                           ; $4570: $89
	nop                                              ; $4571: $00
	ld   bc, $00ff                                   ; $4572: $01 $ff $00
	add  c                                           ; $4575: $81
	rst  $38                                         ; $4576: $ff
	adc  b                                           ; $4577: $88
	nop                                              ; $4578: $00
	ld   [bc], a                                     ; $4579: $02
	jr   nc, @-$0e                                   ; $457a: $30 $f0

	jr   nc, jr_08a_44ff                             ; $457c: $30 $81

	ldh  a, [$d6]                                    ; $457e: $f0 $d6
	nop                                              ; $4580: $00
	add  b                                           ; $4581: $80
	ld   bc, $0680                                   ; $4582: $01 $80 $06
	add  d                                           ; $4585: $82
	ld   [$1086], sp                                 ; $4586: $08 $86 $10
	adc  b                                           ; $4589: $88
	nop                                              ; $458a: $00
	add  b                                           ; $458b: $80
	inc  bc                                          ; $458c: $03
	add  b                                           ; $458d: $80
	inc  b                                           ; $458e: $04
	add  b                                           ; $458f: $80
	jr   nc, @-$7e                                   ; $4590: $30 $80

	and  h                                           ; $4592: $a4
	add  b                                           ; $4593: $80
	inc  bc                                          ; $4594: $03
	add  b                                           ; $4595: $80
	db   $10                                         ; $4596: $10
	add  d                                           ; $4597: $82
	ld   [$0484], sp                                 ; $4598: $08 $84 $04
	adc  b                                           ; $459b: $88
	nop                                              ; $459c: $00
	add  b                                           ; $459d: $80
	ret  nz                                          ; $459e: $c0

	add  [hl]                                        ; $459f: $86
	nop                                              ; $45a0: $00
	add  b                                           ; $45a1: $80
	ret  nz                                          ; $45a2: $c0

	call nc, $8600                                   ; $45a3: $d4 $00 $86
	inc  c                                           ; $45a6: $0c
	add  c                                           ; $45a7: $81
	nop                                              ; $45a8: $00
	add  b                                           ; $45a9: $80
	ld   bc, $0380                                   ; $45aa: $01 $80 $03
	add  b                                           ; $45ad: $80
	ld   [bc], a                                     ; $45ae: $02
	add  a                                           ; $45af: $87
	nop                                              ; $45b0: $00
	add  b                                           ; $45b1: $80
	ld   de, $0d80                                   ; $45b2: $11 $80 $0d
	add  a                                           ; $45b5: $87
	nop                                              ; $45b6: $00
	add  b                                           ; $45b7: $80
	ld   b, b                                        ; $45b8: $40
	add  b                                           ; $45b9: $80
	ldh  [$80], a                                    ; $45ba: $e0 $80
	ldh  a, [$80]                                    ; $45bc: $f0 $80
	ret  c                                           ; $45be: $d8

	add  b                                           ; $45bf: $80
	jr   c, jr_08a_4544                              ; $45c0: $38 $82

	inc  a                                           ; $45c2: $3c
	add  b                                           ; $45c3: $80
	ld   a, [hl]                                     ; $45c4: $7e
	add  c                                           ; $45c5: $81
	nop                                              ; $45c6: $00
	add  b                                           ; $45c7: $80
	db   $10                                         ; $45c8: $10
	add  b                                           ; $45c9: $80
	ld   h, b                                        ; $45ca: $60
	adc  a                                           ; $45cb: $8f
	nop                                              ; $45cc: $00
	add  b                                           ; $45cd: $80
	ld   c, $82                                      ; $45ce: $0e $82
	rra                                              ; $45d0: $1f
	add  b                                           ; $45d1: $80
	cpl                                              ; $45d2: $2f
	cp   $00                                         ; $45d3: $fe $00
	add  b                                           ; $45d5: $80
	ld   c, a                                        ; $45d6: $4f
	add  b                                           ; $45d7: $80
	rlca                                             ; $45d8: $07
	sbc  d                                           ; $45d9: $9a
	nop                                              ; $45da: $00
	add  b                                           ; $45db: $80
	rst  $28                                         ; $45dc: $ef
	add  b                                           ; $45dd: $80
	rst  ToBoot                                         ; $45de: $c7
	add  b                                           ; $45df: $80
	ld   bc, $0098                                   ; $45e0: $01 $98 $00
	add  c                                           ; $45e3: $81
	add  b                                           ; $45e4: $80
	ld   bc, $0f8f                                   ; $45e5: $01 $8f $0f
	add  b                                           ; $45e8: $80
	ld   a, [bc]                                     ; $45e9: $0a
	add  b                                           ; $45ea: $80
	ld   c, $80                                      ; $45eb: $0e $80
	add  hl, bc                                      ; $45ed: $09
	add  b                                           ; $45ee: $80
	rrca                                             ; $45ef: $0f
	sub  h                                           ; $45f0: $94
	nop                                              ; $45f1: $00
	adc  b                                           ; $45f2: $88
	add  b                                           ; $45f3: $80
	rst  $38                                         ; $45f4: $ff
	nop                                              ; $45f5: $00
	rst  $38                                         ; $45f6: $ff
	nop                                              ; $45f7: $00
	rst  $38                                         ; $45f8: $ff
	nop                                              ; $45f9: $00
	rst  $38                                         ; $45fa: $ff
	nop                                              ; $45fb: $00
	rst  $38                                         ; $45fc: $ff
	nop                                              ; $45fd: $00
	adc  e                                           ; $45fe: $8b
	nop                                              ; $45ff: $00
	and  a                                           ; $4600: $a7
	nop                                              ; $4601: $00
	sub  [hl]                                        ; $4602: $96
	nop                                              ; $4603: $00
	add  b                                           ; $4604: $80
	rra                                              ; $4605: $1f
	dec  b                                           ; $4606: $05
	inc  [hl]                                        ; $4607: $34
	dec  hl                                          ; $4608: $2b
	ld   l, e                                        ; $4609: $6b
	ld   c, e                                        ; $460a: $4b
	ret  nz                                          ; $460b: $c0

	rst  $38                                         ; $460c: $ff
	add  [hl]                                        ; $460d: $86
	nop                                              ; $460e: $00
	add  b                                           ; $460f: $80
	rst  $38                                         ; $4610: $ff
	ld   bc, $b946                                   ; $4611: $01 $46 $b9
	add  b                                           ; $4614: $80
	cp   l                                           ; $4615: $bd
	ld   bc, $ff00                                   ; $4616: $01 $00 $ff
	add  [hl]                                        ; $4619: $86
	nop                                              ; $461a: $00
	add  b                                           ; $461b: $80

jr_08a_461c:
	rst  $38                                         ; $461c: $ff
	ld   bc, $9966                                   ; $461d: $01 $66 $99
	add  b                                           ; $4620: $80
	db   $dd                                         ; $4621: $dd
	ld   bc, $ff00                                   ; $4622: $01 $00 $ff
	add  [hl]                                        ; $4625: $86
	nop                                              ; $4626: $00
	add  b                                           ; $4627: $80
	ldh  a, [rTMA]                                   ; $4628: $f0 $06
	jr   nc, jr_08a_461c                             ; $462a: $30 $f0

	or   b                                           ; $462c: $b0
	ret  nc                                          ; $462d: $d0

	ld   d, b                                        ; $462e: $50
	sub  b                                           ; $462f: $90
	ld   h, b                                        ; $4630: $60
	sbc  l                                           ; $4631: $9d
	nop                                              ; $4632: $00
	dec  c                                           ; $4633: $0d
	add  b                                           ; $4634: $80
	call nz, $abd0                                   ; $4635: $c4 $d0 $ab
	adc  e                                           ; $4638: $8b
	ret                                              ; $4639: $c9


	ld   sp, hl                                      ; $463a: $f9
	cp   d                                           ; $463b: $ba
	ld   [hl], d                                     ; $463c: $72
	ld   d, c                                        ; $463d: $51
	ld   c, h                                        ; $463e: $4c
	ld   l, [hl]                                     ; $463f: $6e
	ld   a, [hl]                                     ; $4640: $7e
	ld   e, [hl]                                     ; $4641: $5e
	add  b                                           ; $4642: $80
	ld   e, h                                        ; $4643: $5c
	dec  bc                                          ; $4644: $0b
	rra                                              ; $4645: $1f
	ld   b, d                                        ; $4646: $42
	nop                                              ; $4647: $00
	cp   l                                           ; $4648: $bd
	cp   c                                           ; $4649: $b9
	add  hl, sp                                      ; $464a: $39
	ei                                               ; $464b: $fb
	dec  sp                                          ; $464c: $3b
	cp   e                                           ; $464d: $bb
	ld   a, e                                        ; $464e: $7b
	ei                                               ; $464f: $fb
	ld   a, e                                        ; $4650: $7b
	add  b                                           ; $4651: $80
	di                                               ; $4652: $f3
	add  b                                           ; $4653: $80
	rst  $30                                         ; $4654: $f7
	ld   [bc], a                                     ; $4655: $02
	rst  $38                                         ; $4656: $ff
	ld   [hl+], a                                    ; $4657: $22
	nop                                              ; $4658: $00
	add  c                                           ; $4659: $81
	db   $dd                                         ; $465a: $dd
	add  b                                           ; $465b: $80
	reti                                             ; $465c: $d9


	add  b                                           ; $465d: $80
	sbc  e                                           ; $465e: $9b
	add  b                                           ; $465f: $80
	cp   e                                           ; $4660: $bb
	inc  b                                           ; $4661: $04
	ccf                                              ; $4662: $3f
	inc  [hl]                                        ; $4663: $34
	dec  a                                           ; $4664: $3d
	ld   [hl+], a                                    ; $4665: $22
	inc  de                                          ; $4666: $13
	add  c                                           ; $4667: $81
	adc  b                                           ; $4668: $88
	dec  b                                           ; $4669: $05
	sbc  b                                           ; $466a: $98
	adc  b                                           ; $466b: $88
	xor  b                                           ; $466c: $a8
	adc  b                                           ; $466d: $88
	inc  e                                           ; $466e: $1c
	call nz, Call_08a_4480                           ; $466f: $c4 $80 $44
	nop                                              ; $4672: $00
	ld   h, h                                        ; $4673: $64
	add  c                                           ; $4674: $81
	ld   b, h                                        ; $4675: $44
	nop                                              ; $4676: $00
	cp   b                                           ; $4677: $b8
	sbc  l                                           ; $4678: $9d
	nop                                              ; $4679: $00
	ld   bc, $332c                                   ; $467a: $01 $2c $33
	add  b                                           ; $467d: $80
	ccf                                              ; $467e: $3f
	ld   bc, $2e3e                                   ; $467f: $01 $3e $2e
	add  b                                           ; $4682: $80
	inc  l                                           ; $4683: $2c
	inc  bc                                          ; $4684: $03
	ld   de, $1e19                                   ; $4685: $11 $19 $1e
	rra                                              ; $4688: $1f
	add  b                                           ; $4689: $80
	rrca                                             ; $468a: $0f
	ld   b, $03                                      ; $468b: $06 $03
	rlca                                             ; $468d: $07
	inc  sp                                          ; $468e: $33
	adc  $b0                                         ; $468f: $ce $b0
	db   $fc                                         ; $4691: $fc
	ld   c, b                                        ; $4692: $48
	add  b                                           ; $4693: $80
	ld   a, [$fb00]                                  ; $4694: $fa $00 $fb
	add  b                                           ; $4697: $80
	jp   hl                                          ; $4698: $e9


	add  d                                           ; $4699: $82
	add  b                                           ; $469a: $80
	add  b                                           ; $469b: $80
	ld   bc, $8901                                   ; $469c: $01 $01 $89
	halt                                             ; $469f: $76
	add  b                                           ; $46a0: $80
	ld   [hl], l                                     ; $46a1: $75
	add  hl, bc                                      ; $46a2: $09
	push de                                          ; $46a3: $d5
	push af                                          ; $46a4: $f5
	and  h                                           ; $46a5: $a4
	push hl                                          ; $46a6: $e5
	ld   h, l                                        ; $46a7: $65
	push af                                          ; $46a8: $f5
	push bc                                          ; $46a9: $c5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46aa: $cf
	ld   [bc], a                                     ; $46ab: $02
	ld   b, $80                                      ; $46ac: $06 $80
	add  a                                           ; $46ae: $87
	inc  b                                           ; $46af: $04
	ld   [hl-], a                                    ; $46b0: $32
	ldh  [c], a                                      ; $46b1: $e2
	or   $e2                                         ; $46b2: $f6 $e2
	cp   d                                           ; $46b4: $ba
	add  b                                           ; $46b5: $80
	or   $02                                         ; $46b6: $f6 $02
	cp   $48                                         ; $46b8: $fe $48
	ret  z                                           ; $46ba: $c8

	add  d                                           ; $46bb: $82
	nop                                              ; $46bc: $00
	add  b                                           ; $46bd: $80
	ret  nz                                          ; $46be: $c0

jr_08a_46bf:
	sbc  [hl]                                        ; $46bf: $9e
	nop                                              ; $46c0: $00
	add  b                                           ; $46c1: $80
	inc  bc                                          ; $46c2: $03
	add  b                                           ; $46c3: $80
	nop                                              ; $46c4: $00
	add  b                                           ; $46c5: $80
	db   $10                                         ; $46c6: $10
	add  b                                           ; $46c7: $80
	add  hl, de                                      ; $46c8: $19
	add  b                                           ; $46c9: $80
	dec  d                                           ; $46ca: $15
	inc  bc                                          ; $46cb: $03
	ld   [de], a                                     ; $46cc: $12
	rla                                              ; $46cd: $17
	inc  h                                           ; $46ce: $24
	ld   l, $80                                      ; $46cf: $2e $80
	inc  l                                           ; $46d1: $2c
	add  hl, bc                                      ; $46d2: $09
	xor  $e1                                         ; $46d3: $ee $e1
	ldh  a, [c]                                      ; $46d5: $f2
	or   e                                           ; $46d6: $b3
	db   $fc                                         ; $46d7: $fc
	sbc  [hl]                                        ; $46d8: $9e
	ld   l, [hl]                                     ; $46d9: $6e
	sbc  [hl]                                        ; $46da: $9e
	rst  JumpTable                                         ; $46db: $df
	di                                               ; $46dc: $f3
	add  b                                           ; $46dd: $80
	add  a                                           ; $46de: $87
	add  b                                           ; $46df: $80
	ld   a, $04                                      ; $46e0: $3e $04
	db   $fc                                         ; $46e2: $fc
	xor  h                                           ; $46e3: $ac
	ld   l, l                                        ; $46e4: $6d
	ld   b, e                                        ; $46e5: $43
	ld   h, l                                        ; $46e6: $65
	add  c                                           ; $46e7: $81
	and  a                                           ; $46e8: $a7
	inc  bc                                          ; $46e9: $03
	dec  sp                                          ; $46ea: $3b
	rst  $38                                         ; $46eb: $ff
	sbc  [hl]                                        ; $46ec: $9e
	and  $80                                         ; $46ed: $e6 $80
	adc  [hl]                                        ; $46ef: $8e
	add  b                                           ; $46f0: $80
	dec  a                                           ; $46f1: $3d
	add  b                                           ; $46f2: $80

jr_08a_46f3:
	ld   a, c                                        ; $46f3: $79
	db   $10                                         ; $46f4: $10
	rla                                              ; $46f5: $17
	xor  b                                           ; $46f6: $a8
	cp   b                                           ; $46f7: $b8
	sbc  b                                           ; $46f8: $98
	jr   jr_08a_46f3                                 ; $46f9: $18 $f8

	ld   l, [hl]                                     ; $46fb: $6e
	ld   l, $3e                                      ; $46fc: $2e $3e
	ld   h, $fe                                      ; $46fe: $26 $fe
	ldh  [c], a                                      ; $4700: $e2
	and  $e2                                         ; $4701: $e6 $e2
	xor  d                                           ; $4703: $aa
	and  d                                           ; $4704: $a2
	ret  z                                           ; $4705: $c8

	sbc  l                                           ; $4706: $9d
	nop                                              ; $4707: $00
	dec  b                                           ; $4708: $05
	ld   [hl+], a                                    ; $4709: $22
	dec  l                                           ; $470a: $2d
	add  hl, hl                                      ; $470b: $29
	jr   z, jr_08a_4756                              ; $470c: $28 $48

	ld   e, c                                        ; $470e: $59
	add  d                                           ; $470f: $82
	ld   d, e                                        ; $4710: $53
	add  b                                           ; $4711: $80
	ld   d, a                                        ; $4712: $57
	ld   bc, $b797                                   ; $4713: $01 $97 $b7
	add  b                                           ; $4716: $80
	and  a                                           ; $4717: $a7
	rlca                                             ; $4718: $07
	ld   l, e                                        ; $4719: $6b
	ld   bc, $03fd                                   ; $471a: $01 $fd $03
	cp   e                                           ; $471d: $bb
	ld   b, a                                        ; $471e: $47
	ld   [hl], $9e                                   ; $471f: $36 $9e
	add  b                                           ; $4721: $80
	sbc  h                                           ; $4722: $9c
	add  b                                           ; $4723: $80
	dec  a                                           ; $4724: $3d
	add  b                                           ; $4725: $80
	dec  sp                                          ; $4726: $3b
	add  b                                           ; $4727: $80
	ld   a, e                                        ; $4728: $7b
	add  b                                           ; $4729: $80

jr_08a_472a:
	di                                               ; $472a: $f3
	add  b                                           ; $472b: $80
	rst  $20                                         ; $472c: $e7
	add  b                                           ; $472d: $80
	adc  [hl]                                        ; $472e: $8e
	add  b                                           ; $472f: $80
	inc  a                                           ; $4730: $3c
	add  b                                           ; $4731: $80
	pop  af                                          ; $4732: $f1
	ld   [$c3d7], sp                                 ; $4733: $08 $d7 $c3
	xor  e                                           ; $4736: $ab
	sub  h                                           ; $4737: $94

jr_08a_4738:
	ld   d, $20                                      ; $4738: $16 $20
	inc  e                                           ; $473a: $1c
	ld   [hl+], a                                    ; $473b: $22
	jr   nz, jr_08a_46bf                             ; $473c: $20 $81

	ld   b, h                                        ; $473e: $44
	inc  bc                                          ; $473f: $03

jr_08a_4740:
	call z, $f4c4                                    ; $4740: $cc $c4 $f4
	call nz, $4880                                   ; $4743: $c4 $80 $48
	inc  b                                           ; $4746: $04
	ld   a, b                                        ; $4747: $78
	adc  b                                           ; $4748: $88
	add  sp, -$78                                    ; $4749: $e8 $88
	db   $10                                         ; $474b: $10
	sbc  l                                           ; $474c: $9d
	nop                                              ; $474d: $00
	add  hl, bc                                      ; $474e: $09
	sbc  b                                           ; $474f: $98
	and  a                                           ; $4750: $a7
	ret  nz                                          ; $4751: $c0

	rst  $38                                         ; $4752: $ff
	ld   [hl], e                                     ; $4753: $73
	ld   b, b                                        ; $4754: $40
	ld   a, [bc]                                     ; $4755: $0a

jr_08a_4756:
	jr   nz, jr_08a_475e                             ; $4756: $20 $06

	rra                                              ; $4758: $1f
	add  h                                           ; $4759: $84
	nop                                              ; $475a: $00
	add  hl, bc                                      ; $475b: $09
	and  $19                                         ; $475c: $e6 $19

jr_08a_475e:
	nop                                              ; $475e: $00
	rst  $38                                         ; $475f: $ff
	inc  e                                           ; $4760: $1c
	nop                                              ; $4761: $00
	jp   c, $3900                                    ; $4762: $da $00 $39

	rst  $38                                         ; $4765: $ff
	add  h                                           ; $4766: $84
	nop                                              ; $4767: $00
	add  hl, bc                                      ; $4768: $09
	db   $ed                                         ; $4769: $ed

jr_08a_476a:
	ld   [de], a                                     ; $476a: $12
	nop                                              ; $476b: $00
	rst  $38                                         ; $476c: $ff
	ret  c                                           ; $476d: $d8

	nop                                              ; $476e: $00
	sbc  [hl]                                        ; $476f: $9e
	nop                                              ; $4770: $00
	cp   c                                           ; $4771: $b9
	rst  $38                                         ; $4772: $ff
	add  h                                           ; $4773: $84
	nop                                              ; $4774: $00
	ld   [bc], a                                     ; $4775: $02
	sbc  b                                           ; $4776: $98
	adc  b                                           ; $4777: $88
	ldh  [$80], a                                    ; $4778: $e0 $80
	sub  b                                           ; $477a: $90
	add  b                                           ; $477b: $80
	ld   d, b                                        ; $477c: $50
	add  b                                           ; $477d: $80
	jr   nc, jr_08a_4780                             ; $477e: $30 $00

jr_08a_4780:
	ldh  a, [$c8]                                    ; $4780: $f0 $c8
	nop                                              ; $4782: $00
	add  b                                           ; $4783: $80
	ld   [bc], a                                     ; $4784: $02
	add  b                                           ; $4785: $80
	ld   bc, $0280                                   ; $4786: $01 $80 $02
	sbc  b                                           ; $4789: $98
	nop                                              ; $478a: $00
	add  b                                           ; $478b: $80
	add  b                                           ; $478c: $80
	add  b                                           ; $478d: $80
	ld   b, b                                        ; $478e: $40
	add  b                                           ; $478f: $80
	add  b                                           ; $4790: $80
	and  b                                           ; $4791: $a0
	nop                                              ; $4792: $00
	add  b                                           ; $4793: $80
	dec  bc                                          ; $4794: $0b
	add  b                                           ; $4795: $80

jr_08a_4796:
	inc  d                                           ; $4796: $14
	sub  d                                           ; $4797: $92
	nop                                              ; $4798: $00
	add  b                                           ; $4799: $80
	db   $10                                         ; $479a: $10
	add  b                                           ; $479b: $80
	jr   nc, @-$7c                                   ; $479c: $30 $82

	jr   nz, jr_08a_4796                             ; $479e: $20 $f6

	nop                                              ; $47a0: $00
	add  b                                           ; $47a1: $80
	ld   b, b                                        ; $47a2: $40
	add  b                                           ; $47a3: $80
	jr   nz, jr_08a_472a                             ; $47a4: $20 $84

	nop                                              ; $47a6: $00
	add  b                                           ; $47a7: $80
	ld   d, b                                        ; $47a8: $50
	sbc  [hl]                                        ; $47a9: $9e
	nop                                              ; $47aa: $00
	add  b                                           ; $47ab: $80
	inc  c                                           ; $47ac: $0c
	add  b                                           ; $47ad: $80
	jr   jr_08a_4740                                 ; $47ae: $18 $90

	nop                                              ; $47b0: $00
	add  b                                           ; $47b1: $80
	db   $10                                         ; $47b2: $10
	add  b                                           ; $47b3: $80
	nop                                              ; $47b4: $00
	add  b                                           ; $47b5: $80
	jr   jr_08a_4738                                 ; $47b6: $18 $80

	inc  e                                           ; $47b8: $1c
	add  b                                           ; $47b9: $80
	inc  d                                           ; $47ba: $14
	ret  nz                                          ; $47bb: $c0

	nop                                              ; $47bc: $00
	add  b                                           ; $47bd: $80
	ld   bc, $008e                                   ; $47be: $01 $8e $00
	add  b                                           ; $47c1: $80
	inc  c                                           ; $47c2: $0c
	add  b                                           ; $47c3: $80
	ld   b, $86                                      ; $47c4: $06 $86
	nop                                              ; $47c6: $00
	add  b                                           ; $47c7: $80
	xor  d                                           ; $47c8: $aa
	add  b                                           ; $47c9: $80
	ld   d, h                                        ; $47ca: $54
	add  b                                           ; $47cb: $80
	xor  b                                           ; $47cc: $a8
	adc  h                                           ; $47cd: $8c
	nop                                              ; $47ce: $00
	add  b                                           ; $47cf: $80
	db   $e3                                         ; $47d0: $e3
	add  b                                           ; $47d1: $80
	add  hl, sp                                      ; $47d2: $39
	sub  b                                           ; $47d3: $90
	nop                                              ; $47d4: $00
	add  b                                           ; $47d5: $80
	inc  d                                           ; $47d6: $14
	add  b                                           ; $47d7: $80
	dec  hl                                          ; $47d8: $2b
	add  b                                           ; $47d9: $80
	dec  e                                           ; $47da: $1d
	add  d                                           ; $47db: $82
	nop                                              ; $47dc: $00
	add  b                                           ; $47dd: $80
	daa                                              ; $47de: $27
	add  b                                           ; $47df: $80
	cp   c                                           ; $47e0: $b9
	adc  h                                           ; $47e1: $8c
	nop                                              ; $47e2: $00
	add  b                                           ; $47e3: $80
	ld   [$3880], sp                                 ; $47e4: $08 $80 $38
	add  b                                           ; $47e7: $80
	jr   nc, jr_08a_476a                             ; $47e8: $30 $80

	nop                                              ; $47ea: $00
	add  d                                           ; $47eb: $82
	ld   h, b                                        ; $47ec: $60
	rst  $38                                         ; $47ed: $ff
	nop                                              ; $47ee: $00
	rst  $38                                         ; $47ef: $ff
	nop                                              ; $47f0: $00
	rst  $38                                         ; $47f1: $ff
	nop                                              ; $47f2: $00
	rst  $38                                         ; $47f3: $ff
	nop                                              ; $47f4: $00
	rst  $38                                         ; $47f5: $ff
	nop                                              ; $47f6: $00
	and  a                                           ; $47f7: $a7
	nop                                              ; $47f8: $00
	add  a                                           ; $47f9: $87
	nop                                              ; $47fa: $00
	db   $ec                                         ; $47fb: $ec
	nop                                              ; $47fc: $00
	add  b                                           ; $47fd: $80
	ld   bc, $0082                                   ; $47fe: $01 $82 $00
	add  b                                           ; $4801: $80
	ld   bc, $0780                                   ; $4802: $01 $80 $07
	add  hl, bc                                      ; $4805: $09
	ld   a, [de]                                     ; $4806: $1a
	ld   e, $60                                      ; $4807: $1e $60
	ld   a, h                                        ; $4809: $7c
	add  h                                           ; $480a: $84
	db   $ec                                         ; $480b: $ec
	ld   bc, $f180                                   ; $480c: $01 $80 $f1
	nop                                              ; $480f: $00
	add  b                                           ; $4810: $80
	rrca                                             ; $4811: $0f
	add  b                                           ; $4812: $80
	di                                               ; $4813: $f3
	dec  bc                                          ; $4814: $0b
	ret  nz                                          ; $4815: $c0

	jp   Jump_08a_4143                               ; $4816: $c3 $43 $41


	ld   [hl+], a                                    ; $4819: $22
	nop                                              ; $481a: $00
	inc  [hl]                                        ; $481b: $34
	nop                                              ; $481c: $00
	dec  e                                           ; $481d: $1d
	inc  b                                           ; $481e: $04
	ld   c, $00                                      ; $481f: $0e $00
	add  b                                           ; $4821: $80
	ldh  a, [$80]                                    ; $4822: $f0 $80
	rrca                                             ; $4824: $0f

jr_08a_4825:
	ld   a, [bc]                                     ; $4825: $0a
	add  e                                           ; $4826: $83
	jp   $404c                                       ; $4827: $c3 $4c $40


	ld   c, e                                        ; $482a: $4b
	nop                                              ; $482b: $00
	ld   b, l                                        ; $482c: $45
	ld   bc, $01e7                                   ; $482d: $01 $e7 $01
	and  l                                           ; $4830: $a5
	add  e                                           ; $4831: $83
	nop                                              ; $4832: $00
	add  b                                           ; $4833: $80
	ldh  [$08], a                                    ; $4834: $e0 $08
	ret  c                                           ; $4836: $d8

	cp   b                                           ; $4837: $b8
	add  [hl]                                        ; $4838: $86
	ld   e, [hl]                                     ; $4839: $5e
	pop  bc                                          ; $483a: $c1
	rst  $20                                         ; $483b: $e7
	jr   nz, @-$3d                                   ; $483c: $20 $c1

	ld   a, a                                        ; $483e: $7f
	adc  e                                           ; $483f: $8b
	nop                                              ; $4840: $00
	add  b                                           ; $4841: $80
	add  b                                           ; $4842: $80
	ld   [bc], a                                     ; $4843: $02
	ld   [bc], a                                     ; $4844: $02
	inc  bc                                          ; $4845: $03
	inc  b                                           ; $4846: $04
	add  c                                           ; $4847: $81
	ld   b, $00                                      ; $4848: $06 $00
	ld   [$0c81], sp                                 ; $484a: $08 $81 $0c
	nop                                              ; $484d: $00
	db   $10                                         ; $484e: $10
	add  e                                           ; $484f: $83
	jr   jr_08a_485e                                 ; $4850: $18 $0c

	db   $fc                                         ; $4852: $fc
	db   $10                                         ; $4853: $10
	dec  b                                           ; $4854: $05
	jr   nz, @+$28                                   ; $4855: $20 $26

	jr   nz, jr_08a_488a                             ; $4857: $20 $31

	ld   [hl], b                                     ; $4859: $70
	ld   h, b                                        ; $485a: $60
	ld   a, h                                        ; $485b: $7c
	ld   e, l                                        ; $485c: $5d
	ld   a, b                                        ; $485d: $78

jr_08a_485e:
	ld   hl, sp-$7f                                  ; $485e: $f8 $81
	ld   b, b                                        ; $4860: $40
	ld   [hl-], a                                    ; $4861: $32
	add  b                                           ; $4862: $80
	add  hl, bc                                      ; $4863: $09
	adc  e                                           ; $4864: $8b
	db   $10                                         ; $4865: $10
	ld   [bc], a                                     ; $4866: $02
	nop                                              ; $4867: $00
	xor  b                                           ; $4868: $a8
	ld   bc, $00ed                                   ; $4869: $01 $ed $00
	ld   [hl], h                                     ; $486c: $74
	nop                                              ; $486d: $00
	inc  hl                                          ; $486e: $23
	nop                                              ; $486f: $00
	ld   [bc], a                                     ; $4870: $02
	jr   c, jr_08a_48ac                              ; $4871: $38 $39

	nop                                              ; $4873: $00
	ld   [bc], a                                     ; $4874: $02
	nop                                              ; $4875: $00
	ld   [bc], a                                     ; $4876: $02
	ldh  [$73], a                                    ; $4877: $e0 $73
	ld   h, b                                        ; $4879: $60
	sbc  c                                           ; $487a: $99
	nop                                              ; $487b: $00

jr_08a_487c:
	or   $00                                         ; $487c: $f6 $00
	sbc  c                                           ; $487e: $99
	ldh  a, [rPCM34]                                 ; $487f: $f0 $77
	jr   nc, jr_08a_48cd                             ; $4881: $30 $4a

	rla                                              ; $4883: $17
	sub  a                                           ; $4884: $97
	rra                                              ; $4885: $1f
	sbc  e                                           ; $4886: $9b
	dec  hl                                          ; $4887: $2b
	jp   hl                                          ; $4888: $e9


	ret                                              ; $4889: $c9


jr_08a_488a:
	ld   [$84c4], a                                  ; $488a: $ea $c4 $84
	inc  b                                           ; $488d: $04
	inc  hl                                          ; $488e: $23
	nop                                              ; $488f: $00
	call nz, $fe00                                   ; $4890: $c4 $00 $fe
	ld   b, b                                        ; $4893: $40
	jr   nz, @-$7d                                   ; $4894: $20 $81

	and  b                                           ; $4896: $a0
	nop                                              ; $4897: $00
	sub  b                                           ; $4898: $90
	add  c                                           ; $4899: $81
	ret  nc                                          ; $489a: $d0

	ld   bc, $e8c8                                   ; $489b: $01 $c8 $e8
	add  d                                           ; $489e: $82
	ld   l, b                                        ; $489f: $68
	nop                                              ; $48a0: $00
	rst  $30                                         ; $48a1: $f7
	add  e                                           ; $48a2: $83
	jr   jr_08a_4825                                 ; $48a3: $18 $80

	ld   e, $00                                      ; $48a5: $1e $00
	rlca                                             ; $48a7: $07
	add  c                                           ; $48a8: $81
	dec  bc                                          ; $48a9: $0b
	nop                                              ; $48aa: $00
	rlca                                             ; $48ab: $07

jr_08a_48ac:
	add  c                                           ; $48ac: $81
	dec  b                                           ; $48ad: $05
	ld   bc, $4042                                   ; $48ae: $01 $42 $40
	add  b                                           ; $48b1: $80
	ld   bc, $210a                                   ; $48b2: $01 $0a $21
	inc  hl                                          ; $48b5: $23
	add  l                                           ; $48b6: $85
	ld   b, $1e                                      ; $48b7: $06 $1e
	inc  e                                           ; $48b9: $1c
	call $e28e                                       ; $48ba: $cd $8e $e2
	jp   $80e2                                       ; $48bd: $c3 $e2 $80


	ld   hl, sp+$03                                  ; $48c0: $f8 $03
	jr   c, jr_08a_487c                              ; $48c2: $38 $b8

	nop                                              ; $48c4: $00
	add  b                                           ; $48c5: $80
	add  b                                           ; $48c6: $80
	ld   bc, $f01d                                   ; $48c7: $01 $1d $f0
	ld   [hl], d                                     ; $48ca: $72
	ld   b, b                                        ; $48cb: $40
	inc  c                                           ; $48cc: $0c

jr_08a_48cd:
	nop                                              ; $48cd: $00
	dec  b                                           ; $48ce: $05
	jr   nc, jr_08a_48e5                             ; $48cf: $30 $14

	pop  af                                          ; $48d1: $f1
	ld   e, $03                                      ; $48d2: $1e $03
	adc  d                                           ; $48d4: $8a
	ld   b, $8a                                      ; $48d5: $06 $8a
	add  b                                           ; $48d7: $80
	cpl                                              ; $48d8: $2f
	nop                                              ; $48d9: $00
	db   $ed                                         ; $48da: $ed
	jr   nc, jr_08a_4935                             ; $48db: $30 $58

	db   $10                                         ; $48dd: $10
	ret  nc                                          ; $48de: $d0

	dec  d                                           ; $48df: $15
	dec  b                                           ; $48e0: $05
	cpl                                              ; $48e1: $2f
	xor  [hl]                                        ; $48e2: $ae
	sub  b                                           ; $48e3: $90
	ret  nc                                          ; $48e4: $d0

jr_08a_48e5:
	xor  h                                           ; $48e5: $ac
	ld   l, [hl]                                     ; $48e6: $6e

jr_08a_48e7:
	add  b                                           ; $48e7: $80
	inc  c                                           ; $48e8: $0c
	add  b                                           ; $48e9: $80
	add  hl, bc                                      ; $48ea: $09
	rlca                                             ; $48eb: $07
	sub  c                                           ; $48ec: $91
	sub  l                                           ; $48ed: $95
	jp   $c7db                                       ; $48ee: $c3 $db $c7


	and  a                                           ; $48f1: $a7
	rra                                              ; $48f2: $1f
	rla                                              ; $48f3: $17
	add  c                                           ; $48f4: $81
	ld   a, b                                        ; $48f5: $78
	add  d                                           ; $48f6: $82
	ld   hl, sp+$00                                  ; $48f7: $f8 $00
	ldh  [$81], a                                    ; $48f9: $e0 $81
	ldh  a, [rP1]                                    ; $48fb: $f0 $00
	ret  nz                                          ; $48fd: $c0

	add  c                                           ; $48fe: $81
	ldh  [rSB], a                                    ; $48ff: $e0 $01
	jp   nz, $8002                                   ; $4901: $c2 $02 $80

	ld   bc, $008b                                   ; $4904: $01 $8b $00
	add  b                                           ; $4907: $80
	cp   $06                                         ; $4908: $fe $06
	ccf                                              ; $490a: $3f
	rst  $38                                         ; $490b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $490c: $cf
	ld   a, a                                        ; $490d: $7f
	ld   [hl], e                                     ; $490e: $73
	dec  e                                           ; $490f: $1d
	ld   e, $80                                      ; $4910: $1e $80
	rlca                                             ; $4912: $07
	add  b                                           ; $4913: $80
	ld   bc, $0080                                   ; $4914: $01 $80 $00
	ld   [bc], a                                     ; $4917: $02
	rrca                                             ; $4918: $0f
	rra                                              ; $4919: $1f
	db   $10                                         ; $491a: $10
	add  b                                           ; $491b: $80
	ret  nz                                          ; $491c: $c0

	add  d                                           ; $491d: $82
	rst  $38                                         ; $491e: $ff
	inc  b                                           ; $491f: $04
	ld   a, a                                        ; $4920: $7f
	sbc  a                                           ; $4921: $9f
	pop  hl                                          ; $4922: $e1
	cp   $ff                                         ; $4923: $fe $ff
	add  b                                           ; $4925: $80
	rra                                              ; $4926: $1f
	ld   [bc], a                                     ; $4927: $02
	db   $fc                                         ; $4928: $fc
	ldh  [rAUD3LEVEL], a                             ; $4929: $e0 $1c
	add  b                                           ; $492b: $80
	inc  bc                                          ; $492c: $03
	add  e                                           ; $492d: $83
	rst  $38                                         ; $492e: $ff
	inc  bc                                          ; $492f: $03
	ld   hl, sp-$01                                  ; $4930: $f8 $ff
	rlca                                             ; $4932: $07
	rst  $38                                         ; $4933: $ff
	add  b                                           ; $4934: $80

jr_08a_4935:
	ld   hl, sp+$00                                  ; $4935: $f8 $00
	nop                                              ; $4937: $00
	add  b                                           ; $4938: $80
	ld   a, a                                        ; $4939: $7f
	ld   [$fcff], sp                                 ; $493a: $08 $ff $fc
	rst  $38                                         ; $493d: $ff
	ldh  a, [c]                                      ; $493e: $f2
	cp   $8c                                         ; $493f: $fe $8c
	db   $fc                                         ; $4941: $fc
	ld   [hl], b                                     ; $4942: $70
	ldh  a, [$80]                                    ; $4943: $f0 $80
	add  b                                           ; $4945: $80
	add  b                                           ; $4946: $80
	nop                                              ; $4947: $00
	inc  bc                                          ; $4948: $03
	ld   b, b                                        ; $4949: $40
	ret  nz                                          ; $494a: $c0

	nop                                              ; $494b: $00
	add  b                                           ; $494c: $80
	rst  $38                                         ; $494d: $ff
	nop                                              ; $494e: $00
	and  d                                           ; $494f: $a2
	nop                                              ; $4950: $00
	add  d                                           ; $4951: $82
	ld   bc, $0096                                   ; $4952: $01 $96 $00
	add  b                                           ; $4955: $80
	inc  c                                           ; $4956: $0c
	dec  b                                           ; $4957: $05
	jr   nc, @+$2a                                   ; $4958: $30 $28

jr_08a_495a:
	add  b                                           ; $495a: $80
	adc  b                                           ; $495b: $88
	ld   b, b                                        ; $495c: $40
	ld   d, b                                        ; $495d: $50
	add  b                                           ; $495e: $80
	ld   h, b                                        ; $495f: $60
	add  b                                           ; $4960: $80
	ldh  a, [$92]                                    ; $4961: $f0 $92
	nop                                              ; $4963: $00
	add  b                                           ; $4964: $80
	jr   nc, jr_08a_48e7                             ; $4965: $30 $80

	inc  a                                           ; $4967: $3c
	add  b                                           ; $4968: $80
	or   e                                           ; $4969: $b3
	dec  b                                           ; $496a: $05
	ld   a, b                                        ; $496b: $78
	ret  nz                                          ; $496c: $c0

	add  h                                           ; $496d: $84
	inc  h                                           ; $496e: $24
	ld   b, d                                        ; $496f: $42
	ld   e, d                                        ; $4970: $5a
	sbc  $00                                         ; $4971: $de $00
	add  b                                           ; $4973: $80
	inc  b                                           ; $4974: $04
	add  b                                           ; $4975: $80
	add  hl, de                                      ; $4976: $19
	add  b                                           ; $4977: $80
	ld   [de], a                                     ; $4978: $12
	add  d                                           ; $4979: $82
	nop                                              ; $497a: $00
	inc  bc                                          ; $497b: $03
	inc  bc                                          ; $497c: $03
	ld   [bc], a                                     ; $497d: $02
	inc  l                                           ; $497e: $2c
	dec  l                                           ; $497f: $2d
	add  b                                           ; $4980: $80
	ld   [$3001], sp                                 ; $4981: $08 $01 $30
	inc  [hl]                                        ; $4984: $34
	add  b                                           ; $4985: $80
	jr   nc, @+$03                                   ; $4986: $30 $01

	jr   jr_08a_49a6                                 ; $4988: $18 $1c

	add  b                                           ; $498a: $80
	add  hl, de                                      ; $498b: $19
	add  b                                           ; $498c: $80
	inc  bc                                          ; $498d: $03
	add  h                                           ; $498e: $84
	nop                                              ; $498f: $00
	dec  b                                           ; $4990: $05
	ld   d, $3a                                      ; $4991: $16 $3a
	dec  c                                           ; $4993: $0d
	ld   b, c                                        ; $4994: $41
	rrca                                             ; $4995: $0f
	ld   l, a                                        ; $4996: $6f
	add  b                                           ; $4997: $80
	ld   b, $09                                      ; $4998: $06 $09
	xor  e                                           ; $499a: $ab
	daa                                              ; $499b: $27
	ld   d, b                                        ; $499c: $50
	ld   e, h                                        ; $499d: $5c
	ld   d, b                                        ; $499e: $50
	sub  d                                           ; $499f: $92
	ld   b, d                                        ; $49a0: $42
	jp   $04c7                                       ; $49a1: $c3 $c7 $04


	add  b                                           ; $49a4: $80
	ld   b, a                                        ; $49a5: $47

jr_08a_49a6:
	add  b                                           ; $49a6: $80
	sbc  [hl]                                        ; $49a7: $9e
	dec  b                                           ; $49a8: $05
	rrca                                             ; $49a9: $0f
	inc  de                                          ; $49aa: $13
	ld   sp, $310d                                   ; $49ab: $31 $0d $31
	ld   de, $0480                                   ; $49ae: $11 $80 $04
	add  b                                           ; $49b1: $80
	nop                                              ; $49b2: $00
	inc  bc                                          ; $49b3: $03
	ccf                                              ; $49b4: $3f
	inc  sp                                          ; $49b5: $33
	dec  a                                           ; $49b6: $3d
	ld   sp, $1f80                                   ; $49b7: $31 $80 $1f
	add  b                                           ; $49ba: $80
	ld   [$950b], sp                                 ; $49bb: $08 $0b $95
	sub  [hl]                                        ; $49be: $96
	ld   h, b                                        ; $49bf: $60
	ld   h, c                                        ; $49c0: $61
	ld   [$4d0a], sp                                 ; $49c1: $08 $0a $4d
	adc  l                                           ; $49c4: $8d
	inc  a                                           ; $49c5: $3c
	cp   h                                           ; $49c6: $bc
	jr   nc, jr_08a_4a39                             ; $49c7: $30 $70

	add  b                                           ; $49c9: $80
	ld   a, d                                        ; $49ca: $7a
	add  b                                           ; $49cb: $80
	ld   d, l                                        ; $49cc: $55
	ld   [bc], a                                     ; $49cd: $02
	adc  b                                           ; $49ce: $88
	ld   c, b                                        ; $49cf: $48
	ret  nz                                          ; $49d0: $c0

	add  l                                           ; $49d1: $85
	nop                                              ; $49d2: $00
	add  b                                           ; $49d3: $80
	add  b                                           ; $49d4: $80
	add  d                                           ; $49d5: $82
	nop                                              ; $49d6: $00
	add  b                                           ; $49d7: $80
	jr   nz, jr_08a_495a                             ; $49d8: $20 $80

	and  b                                           ; $49da: $a0
	add  b                                           ; $49db: $80
	add  b                                           ; $49dc: $80
	add  b                                           ; $49dd: $80
	ld   b, b                                        ; $49de: $40
	add  b                                           ; $49df: $80
	nop                                              ; $49e0: $00
	add  b                                           ; $49e1: $80
	ld   b, b                                        ; $49e2: $40
	rst  $38                                         ; $49e3: $ff
	nop                                              ; $49e4: $00
	rst  $38                                         ; $49e5: $ff
	nop                                              ; $49e6: $00
	rst  $38                                         ; $49e7: $ff
	nop                                              ; $49e8: $00
	rst  $38                                         ; $49e9: $ff
	nop                                              ; $49ea: $00
	rst  $38                                         ; $49eb: $ff
	nop                                              ; $49ec: $00
	rst  $38                                         ; $49ed: $ff
	nop                                              ; $49ee: $00
	db   $e3                                         ; $49ef: $e3
	nop                                              ; $49f0: $00
	and  [hl]                                        ; $49f1: $a6
	nop                                              ; $49f2: $00
	sbc  d                                           ; $49f3: $9a
	nop                                              ; $49f4: $00
	add  b                                           ; $49f5: $80
	ld   a, a                                        ; $49f6: $7f
	ld   [bc], a                                     ; $49f7: $02
	ld   b, b                                        ; $49f8: $40
	ld   l, d                                        ; $49f9: $6a
	ld   a, [hl+]                                    ; $49fa: $2a
	adc  c                                           ; $49fb: $89
	nop                                              ; $49fc: $00
	add  b                                           ; $49fd: $80
	rst  $38                                         ; $49fe: $ff
	nop                                              ; $49ff: $00
	nop                                              ; $4a00: $00
	add  b                                           ; $4a01: $80
	ld   b, h                                        ; $4a02: $44
	adc  c                                           ; $4a03: $89
	nop                                              ; $4a04: $00
	add  b                                           ; $4a05: $80
	rst  $38                                         ; $4a06: $ff
	nop                                              ; $4a07: $00
	nop                                              ; $4a08: $00
	add  b                                           ; $4a09: $80
	ld   b, h                                        ; $4a0a: $44
	adc  c                                           ; $4a0b: $89
	nop                                              ; $4a0c: $00
	add  b                                           ; $4a0d: $80
	ldh  [$80], a                                    ; $4a0e: $e0 $80
	jr   nc, @-$60                                   ; $4a10: $30 $9e

	nop                                              ; $4a12: $00
	dec  c                                           ; $4a13: $0d
	ld   e, d                                        ; $4a14: $5a
	ld   b, l                                        ; $4a15: $45
	ld   c, l                                        ; $4a16: $4d
	ld   l, l                                        ; $4a17: $6d
	ld   a, c                                        ; $4a18: $79
	ld   e, c                                        ; $4a19: $59
	ld   b, e                                        ; $4a1a: $43
	ld   b, d                                        ; $4a1b: $42
	ld   c, a                                        ; $4a1c: $4f
	ld   l, h                                        ; $4a1d: $6c
	ld   a, a                                        ; $4a1e: $7f
	ld   e, h                                        ; $4a1f: $5c
	ld   d, b                                        ; $4a20: $50
	ld   d, c                                        ; $4a21: $51
	add  b                                           ; $4a22: $80
	ld   b, a                                        ; $4a23: $47
	ld   bc, $bb5b                                   ; $4a24: $01 $5b $bb
	add  b                                           ; $4a27: $80
	or   e                                           ; $4a28: $b3
	add  b                                           ; $4a29: $80
	inc  sp                                          ; $4a2a: $33
	rlca                                             ; $4a2b: $07
	ld   [hl], a                                     ; $4a2c: $77
	scf                                              ; $4a2d: $37
	or   a                                           ; $4a2e: $b7
	ld   d, a                                        ; $4a2f: $57
	ld   b, a                                        ; $4a30: $47
	and  a                                           ; $4a31: $a7
	xor  [hl]                                        ; $4a32: $ae
	xor  $80                                         ; $4a33: $ee $80
	adc  $86                                         ; $4a35: $ce $86
	cp   e                                           ; $4a37: $bb
	add  b                                           ; $4a38: $80

jr_08a_4a39:
	inc  sp                                          ; $4a39: $33
	add  b                                           ; $4a3a: $80
	ld   [hl], e                                     ; $4a3b: $73
	add  b                                           ; $4a3c: $80
	ld   [hl], a                                     ; $4a3d: $77
	inc  b                                           ; $4a3e: $04
	ld   a, a                                        ; $4a3f: $7f
	ld   [hl], h                                     ; $4a40: $74
	sbc  h                                           ; $4a41: $9c
	xor  b                                           ; $4a42: $a8
	xor  h                                           ; $4a43: $ac
	add  c                                           ; $4a44: $81
	and  h                                           ; $4a45: $a4
	ld   bc, $2434                                   ; $4a46: $01 $34 $24
	add  [hl]                                        ; $4a49: $86
	ld   h, h                                        ; $4a4a: $64
	nop                                              ; $4a4b: $00
	ret  c                                           ; $4a4c: $d8

	sbc  l                                           ; $4a4d: $9d
	nop                                              ; $4a4e: $00
	inc  bc                                          ; $4a4f: $03
	ld   d, b                                        ; $4a50: $50
	ld   c, a                                        ; $4a51: $4f
	ld   c, [hl]                                     ; $4a52: $4e
	ld   l, [hl]                                     ; $4a53: $6e
	add  b                                           ; $4a54: $80
	ld   a, b                                        ; $4a55: $78
	ld   bc, $5373                                   ; $4a56: $01 $73 $53
	add  d                                           ; $4a59: $82
	ld   d, a                                        ; $4a5a: $57
	add  b                                           ; $4a5b: $80
	ld   a, l                                        ; $4a5c: $7d
	inc  bc                                          ; $4a5d: $03
	ld   h, b                                        ; $4a5e: $60
	ld   a, b                                        ; $4a5f: $78
	ld   h, [hl]                                     ; $4a60: $66
	sbc  [hl]                                        ; $4a61: $9e
	add  b                                           ; $4a62: $80
	inc  a                                           ; $4a63: $3c
	add  b                                           ; $4a64: $80
	db   $fd                                         ; $4a65: $fd
	ld   a, [de]                                     ; $4a66: $1a
	ei                                               ; $4a67: $fb
	pop  af                                          ; $4a68: $f1
	db   $fd                                         ; $4a69: $fd
	and  d                                           ; $4a6a: $a2
	xor  d                                           ; $4a6b: $aa
	ld   d, l                                        ; $4a6c: $55
	rst  $38                                         ; $4a6d: $ff
	nop                                              ; $4a6e: $00
	ld   [$4800], a                                  ; $4a6f: $ea $00 $48
	ldh  [c], a                                      ; $4a72: $e2
	ei                                               ; $4a73: $fb
	and  $e7                                         ; $4a74: $e6 $e7
	xor  $ef                                         ; $4a76: $ee $ef
	xor  $cc                                         ; $4a78: $ee $cc
	adc  h                                           ; $4a7a: $8c
	xor  h                                           ; $4a7b: $ac
	ld   c, h                                        ; $4a7c: $4c
	rst  $38                                         ; $4a7d: $ff
	dec  bc                                          ; $4a7e: $0b
	ld   l, e                                        ; $4a7f: $6b
	dec  d                                           ; $4a80: $15
	ld   l, c                                        ; $4a81: $69
	add  e                                           ; $4a82: $83
	ld   h, h                                        ; $4a83: $64
	add  d                                           ; $4a84: $82
	db   $e4                                         ; $4a85: $e4
	ld   b, $ec                                      ; $4a86: $06 $ec
	db   $e4                                         ; $4a88: $e4
	db   $f4                                         ; $4a89: $f4
	db   $e4                                         ; $4a8a: $e4
	db   $ec                                         ; $4a8b: $ec
	db   $e4                                         ; $4a8c: $e4
	ret  z                                           ; $4a8d: $c8

	sbc  l                                           ; $4a8e: $9d
	nop                                              ; $4a8f: $00
	ld   [bc], a                                     ; $4a90: $02
	ld   e, d                                        ; $4a91: $5a
	ld   h, h                                        ; $4a92: $64
	ld   a, d                                        ; $4a93: $7a
	add  b                                           ; $4a94: $80
	ld   e, c                                        ; $4a95: $59
	ld   [bc], a                                     ; $4a96: $02
	ld   e, d                                        ; $4a97: $5a
	ld   d, d                                        ; $4a98: $52
	ld   d, e                                        ; $4a99: $53
	add  b                                           ; $4a9a: $80
	ld   b, a                                        ; $4a9b: $47
	ld   bc, $6646                                   ; $4a9c: $01 $46 $66
	add  b                                           ; $4a9f: $80
	ld   a, [hl]                                     ; $4aa0: $7e
	dec  de                                          ; $4aa1: $1b
	ld   a, h                                        ; $4aa2: $7c
	ld   e, h                                        ; $4aa3: $5c
	ccf                                              ; $4aa4: $3f
	add  b                                           ; $4aa5: $80
	and  b                                           ; $4aa6: $a0
	ld   b, b                                        ; $4aa7: $40
	ld   l, d                                        ; $4aa8: $6a
	add  b                                           ; $4aa9: $80
	ld   [$1595], a                                  ; $4aaa: $ea $95 $15
	dec  hl                                          ; $4aad: $2b
	ld   l, d                                        ; $4aae: $6a
	ld   a, [hl]                                     ; $4aaf: $7e
	db   $fc                                         ; $4ab0: $fc
	xor  b                                           ; $4ab1: $a8
	rst  $38                                         ; $4ab2: $ff
	inc  bc                                          ; $4ab3: $03
	ld   d, e                                        ; $4ab4: $53
	inc  hl                                          ; $4ab5: $23
	ld   l, e                                        ; $4ab6: $6b
	inc  de                                          ; $4ab7: $13
	ld   d, a                                        ; $4ab8: $57
	and  a                                           ; $4ab9: $a7
	xor  [hl]                                        ; $4aba: $ae
	ld   e, [hl]                                     ; $4abb: $5e
	cp   [hl]                                        ; $4abc: $be
	ld   e, $80                                      ; $4abd: $1e $80
	inc  a                                           ; $4abf: $3c

jr_08a_4ac0:
	add  b                                           ; $4ac0: $80
	ld   sp, hl                                      ; $4ac1: $f9
	add  b                                           ; $4ac2: $80
	di                                               ; $4ac3: $f3
	inc  bc                                          ; $4ac4: $03
	sub  e                                           ; $4ac5: $93
	and  h                                           ; $4ac6: $a4
	inc  [hl]                                        ; $4ac7: $34
	inc  h                                           ; $4ac8: $24
	add  d                                           ; $4ac9: $82
	ld   h, h                                        ; $4aca: $64
	inc  bc                                          ; $4acb: $03
	db   $ec                                         ; $4acc: $ec
	db   $e4                                         ; $4acd: $e4
	db   $f4                                         ; $4ace: $f4
	db   $e4                                         ; $4acf: $e4
	add  b                                           ; $4ad0: $80
	and  h                                           ; $4ad1: $a4
	ld   [bc], a                                     ; $4ad2: $02
	cp   h                                           ; $4ad3: $bc
	and  h                                           ; $4ad4: $a4
	ret  c                                           ; $4ad5: $d8

	sbc  l                                           ; $4ad6: $9d
	nop                                              ; $4ad7: $00
	ld   [bc], a                                     ; $4ad8: $02
	ld   b, d                                        ; $4ad9: $42
	ld   e, h                                        ; $4ada: $5c
	ld   e, b                                        ; $4adb: $58
	add  c                                           ; $4adc: $81
	ld   e, c                                        ; $4add: $59
	add  d                                           ; $4ade: $82
	ld   e, e                                        ; $4adf: $5b
	add  c                                           ; $4ae0: $81
	ld   d, e                                        ; $4ae1: $53
	ld   [$4073], sp                                 ; $4ae2: $08 $73 $40
	ld   a, a                                        ; $4ae5: $7f
	xor  b                                           ; $4ae6: $a8
	rlca                                             ; $4ae7: $07
	cp   a                                           ; $4ae8: $bf
	ld   b, a                                        ; $4ae9: $47
	ld   h, [hl]                                     ; $4aea: $66
	adc  $80                                         ; $4aeb: $ce $80
	sbc  [hl]                                        ; $4aed: $9e
	add  b                                           ; $4aee: $80
	sbc  l                                           ; $4aef: $9d
	add  b                                           ; $4af0: $80
	cp   l                                           ; $4af1: $bd
	add  b                                           ; $4af2: $80
	adc  h                                           ; $4af3: $8c
	inc  bc                                          ; $4af4: $03
	nop                                              ; $4af5: $00
	rst  $38                                         ; $4af6: $ff
	jr   c, jr_08a_4ac0                              ; $4af7: $38 $c7

	add  b                                           ; $4af9: $80
	ld   e, $80                                      ; $4afa: $1e $80
	ld   a, b                                        ; $4afc: $78
	dec  bc                                          ; $4afd: $0b
	db   $eb                                         ; $4afe: $eb
	pop  hl                                          ; $4aff: $e1
	push de                                          ; $4b00: $d5
	jp   z, $908b                                    ; $4b01: $ca $8b $90

	add  a                                           ; $4b04: $87
	adc  c                                           ; $4b05: $89
	nop                                              ; $4b06: $00
	rst  $38                                         ; $4b07: $ff
	db   $fc                                         ; $4b08: $fc
	inc  h                                           ; $4b09: $24
	add  b                                           ; $4b0a: $80
	ld   h, h                                        ; $4b0b: $64
	add  b                                           ; $4b0c: $80
	db   $e4                                         ; $4b0d: $e4
	ld   a, [bc]                                     ; $4b0e: $0a
	or   h                                           ; $4b0f: $b4
	and  h                                           ; $4b10: $a4
	db   $fc                                         ; $4b11: $fc
	ld   h, h                                        ; $4b12: $64
	inc  a                                           ; $4b13: $3c
	inc  h                                           ; $4b14: $24
	xor  h                                           ; $4b15: $ac
	inc  h                                           ; $4b16: $24
	inc  [hl]                                        ; $4b17: $34
	db   $e4                                         ; $4b18: $e4
	db   $10                                         ; $4b19: $10
	sbc  l                                           ; $4b1a: $9d
	nop                                              ; $4b1b: $00
	dec  b                                           ; $4b1c: $05
	add  hl, sp                                      ; $4b1d: $39
	jr   nz, jr_08a_4b25                             ; $4b1e: $20 $05

	db   $10                                         ; $4b20: $10
	inc  bc                                          ; $4b21: $03
	rrca                                             ; $4b22: $0f
	adc  b                                           ; $4b23: $88
	nop                                              ; $4b24: $00

jr_08a_4b25:
	dec  b                                           ; $4b25: $05
	adc  [hl]                                        ; $4b26: $8e
	nop                                              ; $4b27: $00
	ld   l, l                                        ; $4b28: $6d
	nop                                              ; $4b29: $00
	inc  e                                           ; $4b2a: $1c
	rst  $38                                         ; $4b2b: $ff
	adc  b                                           ; $4b2c: $88
	nop                                              ; $4b2d: $00
	dec  b                                           ; $4b2e: $05
	ld   l, h                                        ; $4b2f: $6c
	nop                                              ; $4b30: $00
	ld   c, a                                        ; $4b31: $4f
	nop                                              ; $4b32: $00
	call c, $88ff                                    ; $4b33: $dc $ff $88
	nop                                              ; $4b36: $00
	dec  b                                           ; $4b37: $05
	ld   e, h                                        ; $4b38: $5c
	inc  d                                           ; $4b39: $14
	inc  h                                           ; $4b3a: $24
	inc  c                                           ; $4b3b: $0c
	sbc  h                                           ; $4b3c: $9c
	db   $fc                                         ; $4b3d: $fc
	adc  $00                                         ; $4b3e: $ce $00
	add  b                                           ; $4b40: $80
	ld   bc, $0280                                   ; $4b41: $01 $80 $02
	add  b                                           ; $4b44: $80
	ld   bc, $0098                                   ; $4b45: $01 $98 $00
	add  b                                           ; $4b48: $80
	ld   b, b                                        ; $4b49: $40
	add  b                                           ; $4b4a: $80
	and  b                                           ; $4b4b: $a0
	add  b                                           ; $4b4c: $80
	ld   b, b                                        ; $4b4d: $40
	and  b                                           ; $4b4e: $a0

jr_08a_4b4f:
	nop                                              ; $4b4f: $00
	add  b                                           ; $4b50: $80
	dec  bc                                          ; $4b51: $0b
	adc  [hl]                                        ; $4b52: $8e
	nop                                              ; $4b53: $00
	add  h                                           ; $4b54: $84
	db   $10                                         ; $4b55: $10
	ret  c                                           ; $4b56: $d8

	nop                                              ; $4b57: $00
	add  b                                           ; $4b58: $80
	ld   bc, $0280                                   ; $4b59: $01 $80 $02
	add  b                                           ; $4b5c: $80
	ld   bc, $008e                                   ; $4b5d: $01 $8e $00
	add  b                                           ; $4b60: $80
	ld   a, [bc]                                     ; $4b61: $0a
	add  b                                           ; $4b62: $80
	ld   d, l                                        ; $4b63: $55
	add  b                                           ; $4b64: $80
	xor  d                                           ; $4b65: $aa
	add  b                                           ; $4b66: $80
	ld   d, l                                        ; $4b67: $55
	add  b                                           ; $4b68: $80
	cp   a                                           ; $4b69: $bf
	add  b                                           ; $4b6a: $80
	ld   e, a                                        ; $4b6b: $5f
	add  b                                           ; $4b6c: $80
	cp   a                                           ; $4b6d: $bf
	add  b                                           ; $4b6e: $80
	ld   d, l                                        ; $4b6f: $55
	add  b                                           ; $4b70: $80
	ld   a, [hl+]                                    ; $4b71: $2a
	add  b                                           ; $4b72: $80
	inc  d                                           ; $4b73: $14
	add  b                                           ; $4b74: $80
	nop                                              ; $4b75: $00
	add  b                                           ; $4b76: $80
	ld   d, h                                        ; $4b77: $54
	add  b                                           ; $4b78: $80
	xor  b                                           ; $4b79: $a8
	add  b                                           ; $4b7a: $80
	dec  d                                           ; $4b7b: $15
	add  b                                           ; $4b7c: $80
	ld   [$0180], sp                                 ; $4b7d: $08 $80 $01
	add  b                                           ; $4b80: $80
	nop                                              ; $4b81: $00
	add  b                                           ; $4b82: $80
	ld   b, b                                        ; $4b83: $40
	add  b                                           ; $4b84: $80
	and  b                                           ; $4b85: $a0
	add  b                                           ; $4b86: $80
	ld   d, h                                        ; $4b87: $54
	add  b                                           ; $4b88: $80
	ld   a, [hl+]                                    ; $4b89: $2a
	add  b                                           ; $4b8a: $80
	ret  c                                           ; $4b8b: $d8

	add  b                                           ; $4b8c: $80
	and  b                                           ; $4b8d: $a0
	add  b                                           ; $4b8e: $80
	ld   d, b                                        ; $4b8f: $50
	add  b                                           ; $4b90: $80
	and  b                                           ; $4b91: $a0
	sub  b                                           ; $4b92: $90
	nop                                              ; $4b93: $00
	add  b                                           ; $4b94: $80
	ld   [$1880], sp                                 ; $4b95: $08 $80 $18
	add  d                                           ; $4b98: $82
	db   $10                                         ; $4b99: $10
	add  h                                           ; $4b9a: $84
	nop                                              ; $4b9b: $00
	add  b                                           ; $4b9c: $80
	ld   [$1882], sp                                 ; $4b9d: $08 $82 $18
	ret  nz                                          ; $4ba0: $c0

	nop                                              ; $4ba1: $00
	add  b                                           ; $4ba2: $80
	ld   bc, $008c                                   ; $4ba3: $01 $8c $00
	add  b                                           ; $4ba6: $80
	ld   b, $80                                      ; $4ba7: $06 $80
	inc  bc                                          ; $4ba9: $03
	adc  d                                           ; $4baa: $8a
	nop                                              ; $4bab: $00
	add  b                                           ; $4bac: $80
	ld   d, b                                        ; $4bad: $50
	add  b                                           ; $4bae: $80
	xor  b                                           ; $4baf: $a8
	adc  d                                           ; $4bb0: $8a
	nop                                              ; $4bb1: $00
	add  b                                           ; $4bb2: $80
	ld   [hl], c                                     ; $4bb3: $71
	add  b                                           ; $4bb4: $80
	inc  e                                           ; $4bb5: $1c
	sub  b                                           ; $4bb6: $90
	nop                                              ; $4bb7: $00
	add  b                                           ; $4bb8: $80
	ld   a, [bc]                                     ; $4bb9: $0a
	add  b                                           ; $4bba: $80
	dec  d                                           ; $4bbb: $15
	add  b                                           ; $4bbc: $80
	ld   c, $82                                      ; $4bbd: $0e $82
	nop                                              ; $4bbf: $00
	add  b                                           ; $4bc0: $80
	sub  e                                           ; $4bc1: $93
	add  b                                           ; $4bc2: $80
	call c, $0090                                    ; $4bc3: $dc $90 $00
	add  b                                           ; $4bc6: $80
	db   $10                                         ; $4bc7: $10
	add  b                                           ; $4bc8: $80
	adc  b                                           ; $4bc9: $88
	add  b                                           ; $4bca: $80
	sub  b                                           ; $4bcb: $90
	add  b                                           ; $4bcc: $80
	jr   jr_08a_4b4f                                 ; $4bcd: $18 $80

	ld   [sGlobalFlags1], sp                                 ; $4bcf: $08 $80 $a0
	add  b                                           ; $4bd2: $80
	sub  b                                           ; $4bd3: $90
	rst  $38                                         ; $4bd4: $ff
	nop                                              ; $4bd5: $00
	rst  $38                                         ; $4bd6: $ff
	nop                                              ; $4bd7: $00
	rst  $38                                         ; $4bd8: $ff
	nop                                              ; $4bd9: $00
	rst  $38                                         ; $4bda: $ff
	nop                                              ; $4bdb: $00
	rst  $38                                         ; $4bdc: $ff
	nop                                              ; $4bdd: $00
	and  l                                           ; $4bde: $a5
	nop                                              ; $4bdf: $00
	sbc  l                                           ; $4be0: $9d
	nop                                              ; $4be1: $00
	sub  b                                           ; $4be2: $90
	nop                                              ; $4be3: $00
	add  b                                           ; $4be4: $80
	ld   bc, $0302                                   ; $4be5: $01 $02 $03
	ld   [bc], a                                     ; $4be8: $02

jr_08a_4be9:
	ld   b, $80                                      ; $4be9: $06 $80

jr_08a_4beb:
	inc  b                                           ; $4beb: $04
	add  e                                           ; $4bec: $83
	dec  b                                           ; $4bed: $05
	inc  bc                                          ; $4bee: $03
	ld   bc, $0102                                   ; $4bef: $01 $02 $01
	nop                                              ; $4bf2: $00
	add  b                                           ; $4bf3: $80
	ldh  [$0c], a                                    ; $4bf4: $e0 $0c
	pop  af                                          ; $4bf6: $f1
	ld   de, $ee1f                                   ; $4bf7: $11 $1f $ee
	adc  [hl]                                        ; $4bfa: $8e

jr_08a_4bfb:
	ldh  a, [$5c]                                    ; $4bfb: $f0 $5c
	db   $ec                                         ; $4bfd: $ec
	cp   h                                           ; $4bfe: $bc
	call c, $d858                                    ; $4bff: $dc $58 $d8
	ccf                                              ; $4c02: $3f
	add  c                                           ; $4c03: $81
	nop                                              ; $4c04: $00
	add  c                                           ; $4c05: $81
	rst  $38                                         ; $4c06: $ff
	add  b                                           ; $4c07: $80

jr_08a_4c08:
	ld   b, $80                                      ; $4c08: $06 $80
	inc  b                                           ; $4c0a: $04
	add  b                                           ; $4c0b: $80
	ld   bc, $0081                                   ; $4c0c: $01 $81 $00
	ld   bc, $00ff                                   ; $4c0f: $01 $ff $00
	add  b                                           ; $4c12: $80
	ldh  a, [rTMA]                                   ; $4c13: $f0 $06
	ld   hl, sp+$08                                  ; $4c15: $f8 $08
	inc  c                                           ; $4c17: $0c
	ld   h, h                                        ; $4c18: $64
	ld   b, $f2                                      ; $4c19: $06 $f2
	ld   h, d                                        ; $4c1b: $62
	add  c                                           ; $4c1c: $81
	ld   a, [$7a80]                                  ; $4c1d: $fa $80 $7a
	nop                                              ; $4c20: $00
	db   $f4                                         ; $4c21: $f4
	sbc  l                                           ; $4c22: $9d
	nop                                              ; $4c23: $00
	inc  bc                                          ; $4c24: $03
	inc  bc                                          ; $4c25: $03
	ld   [bc], a                                     ; $4c26: $02
	nop                                              ; $4c27: $00
	ld   bc, $008a                                   ; $4c28: $01 $8a $00
	nop                                              ; $4c2b: $00
	rst  $38                                         ; $4c2c: $ff
	add  e                                           ; $4c2d: $83
	add  b                                           ; $4c2e: $80
	ld   bc, $90a0                                   ; $4c2f: $01 $a0 $90
	add  c                                           ; $4c32: $81
	or   b                                           ; $4c33: $b0
	dec  b                                           ; $4c34: $05
	sbc  [hl]                                        ; $4c35: $9e
	nop                                              ; $4c36: $00
	ld   a, a                                        ; $4c37: $7f
	ld   b, d                                        ; $4c38: $42
	ld   a, a                                        ; $4c39: $7f
	call c, $0083                                    ; $4c3a: $dc $83 $00
	ld   bc, $4080                                   ; $4c3d: $01 $80 $40
	add  c                                           ; $4c40: $81
	ret  nz                                          ; $4c41: $c0

	add  b                                           ; $4c42: $80
	nop                                              ; $4c43: $00
	inc  c                                           ; $4c44: $0c
	add  b                                           ; $4c45: $80
	nop                                              ; $4c46: $00
	ldh  [rSTAT], a                                  ; $4c47: $e0 $41
	ld   a, [hl-]                                    ; $4c49: $3a
	ld   a, [de]                                     ; $4c4a: $1a
	ld   [hl-], a                                    ; $4c4b: $32
	jr   nc, jr_08a_4c52                             ; $4c4c: $30 $04

	jr   nz, jr_08a_4c58                             ; $4c4e: $20 $08

	nop                                              ; $4c50: $00

jr_08a_4c51:
	db   $10                                         ; $4c51: $10

jr_08a_4c52:
	add  b                                           ; $4c52: $80
	nop                                              ; $4c53: $00
	add  b                                           ; $4c54: $80
	db   $10                                         ; $4c55: $10
	ld   [bc], a                                     ; $4c56: $02
	ld   d, b                                        ; $4c57: $50

jr_08a_4c58:
	db   $10                                         ; $4c58: $10
	add  b                                           ; $4c59: $80
	xor  e                                           ; $4c5a: $ab
	nop                                              ; $4c5b: $00
	add  b                                           ; $4c5c: $80
	ld   bc, $5c04                                   ; $4c5d: $01 $04 $5c
	ld   a, a                                        ; $4c60: $7f
	ld   l, e                                        ; $4c61: $6b
	ld   a, a                                        ; $4c62: $7f
	rla                                              ; $4c63: $17
	add  b                                           ; $4c64: $80

jr_08a_4c65:
	ld   a, $00                                      ; $4c65: $3e $00
	jr   nz, jr_08a_4be9                             ; $4c67: $20 $80

	jr   jr_08a_4beb                                 ; $4c69: $18 $80

	rrca                                             ; $4c6b: $0f
	add  b                                           ; $4c6c: $80
	ld   a, d                                        ; $4c6d: $7a
	inc  b                                           ; $4c6e: $04
	ei                                               ; $4c6f: $fb
	adc  e                                           ; $4c70: $8b
	ld   l, a                                        ; $4c71: $6f
	ldh  a, [rIE]                                    ; $4c72: $f0 $ff
	add  b                                           ; $4c74: $80
	sub  b                                           ; $4c75: $90
	nop                                              ; $4c76: $00
	db   $10                                         ; $4c77: $10
	add  b                                           ; $4c78: $80
	jr   nz, jr_08a_4bfb                             ; $4c79: $20 $80

	pop  hl                                          ; $4c7b: $e1
	add  b                                           ; $4c7c: $80
	rst  $38                                         ; $4c7d: $ff
	dec  b                                           ; $4c7e: $05
	sbc  a                                           ; $4c7f: $9f
	sbc  h                                           ; $4c80: $9c
	cp   h                                           ; $4c81: $bc
	and  b                                           ; $4c82: $a0
	rrca                                             ; $4c83: $0f
	db   $10                                         ; $4c84: $10
	add  d                                           ; $4c85: $82
	jr   nz, jr_08a_4c08                             ; $4c86: $20 $80

	ld   b, b                                        ; $4c88: $40
	add  d                                           ; $4c89: $82
	add  b                                           ; $4c8a: $80
	inc  b                                           ; $4c8b: $04
	ret  nz                                          ; $4c8c: $c0

	ld   b, b                                        ; $4c8d: $40

jr_08a_4c8e:
	ld   h, b                                        ; $4c8e: $60
	jr   nz, jr_08a_4c51                             ; $4c8f: $20 $c0

	sbc  l                                           ; $4c91: $9d
	nop                                              ; $4c92: $00
	ld   a, [bc]                                     ; $4c93: $0a
	rlca                                             ; $4c94: $07
	ld   b, $0e                                      ; $4c95: $06 $0e
	ld   [$1018], sp                                 ; $4c97: $08 $18 $10
	jr   nz, jr_08a_4cd4                             ; $4c9a: $20 $38

	jr   nc, jr_08a_4cda                             ; $4c9c: $30 $3c

	ccf                                              ; $4c9e: $3f
	add  c                                           ; $4c9f: $81
	inc  a                                           ; $4ca0: $3c
	ld   [bc], a                                     ; $4ca1: $02
	add  hl, bc                                      ; $4ca2: $09
	dec  e                                           ; $4ca3: $1d
	di                                               ; $4ca4: $f3
	add  b                                           ; $4ca5: $80
	ld   e, $80                                      ; $4ca6: $1e $80
	db   $10                                         ; $4ca8: $10
	inc  bc                                          ; $4ca9: $03
	jr   nz, jr_08a_4d0c                             ; $4caa: $20 $60

	jr   nz, jr_08a_4c8e                             ; $4cac: $20 $e0

	add  c                                           ; $4cae: $81
	ld   b, b                                        ; $4caf: $40
	add  e                                           ; $4cb0: $83
	ret  nz                                          ; $4cb1: $c0

	add  b                                           ; $4cb2: $80
	ld   h, b                                        ; $4cb3: $60
	adc  d                                           ; $4cb4: $8a
	ld   bc, $0005                                   ; $4cb5: $01 $05 $00
	rrca                                             ; $4cb8: $0f
	sub  b                                           ; $4cb9: $90
	sbc  b                                           ; $4cba: $98
	ld   [$810c], sp                                 ; $4cbb: $08 $0c $81
	inc  b                                           ; $4cbe: $04
	nop                                              ; $4cbf: $00
	ld   b, $80                                      ; $4cc0: $06 $80
	ld   [bc], a                                     ; $4cc2: $02
	dec  b                                           ; $4cc3: $05
	ld   a, [de]                                     ; $4cc4: $1a
	inc  hl                                          ; $4cc5: $23
	ld   a, l                                        ; $4cc6: $7d
	add  hl, sp                                      ; $4cc7: $39
	db   $fd                                         ; $4cc8: $fd
	ld   a, [hl]                                     ; $4cc9: $7e
	sub  e                                           ; $4cca: $93
	nop                                              ; $4ccb: $00
	adc  b                                           ; $4ccc: $88
	ld   bc, $0e80                                   ; $4ccd: $01 $80 $0e
	add  b                                           ; $4cd0: $80

jr_08a_4cd1:
	nop                                              ; $4cd1: $00
	add  b                                           ; $4cd2: $80
	pop  hl                                          ; $4cd3: $e1

jr_08a_4cd4:
	nop                                              ; $4cd4: $00
	rst  $38                                         ; $4cd5: $ff
	add  b                                           ; $4cd6: $80
	ld   e, $01                                      ; $4cd7: $1e $01
	adc  b                                           ; $4cd9: $88

jr_08a_4cda:
	ld   [$c880], sp                                 ; $4cda: $08 $80 $c8
	inc  bc                                          ; $4cdd: $03
	call nz, $e084                                   ; $4cde: $c4 $84 $e0
	jr   nz, jr_08a_4c65                             ; $4ce1: $20 $82

	add  b                                           ; $4ce3: $80
	add  b                                           ; $4ce4: $80
	nop                                              ; $4ce5: $00
	add  h                                           ; $4ce6: $84
	ld   b, b                                        ; $4ce7: $40
	inc  bc                                          ; $4ce8: $03
	nop                                              ; $4ce9: $00
	ld   b, b                                        ; $4cea: $40
	nop                                              ; $4ceb: $00
	ld   b, b                                        ; $4cec: $40
	add  h                                           ; $4ced: $84
	nop                                              ; $4cee: $00
	add  b                                           ; $4cef: $80
	inc  bc                                          ; $4cf0: $03
	inc  bc                                          ; $4cf1: $03
	rrca                                             ; $4cf2: $0f
	ld   [$070f], sp                                 ; $4cf3: $08 $0f $07
	add  c                                           ; $4cf6: $81
	rra                                              ; $4cf7: $1f
	db   $10                                         ; $4cf8: $10
	ld   l, h                                        ; $4cf9: $6c
	db   $fd                                         ; $4cfa: $fd
	inc  a                                           ; $4cfb: $3c
	ld   a, [hl]                                     ; $4cfc: $7e
	ld   [bc], a                                     ; $4cfd: $02
	ld   a, $8f                                      ; $4cfe: $3e $8f
	dec  c                                           ; $4d00: $0d
	ld   b, l                                        ; $4d01: $45
	add  l                                           ; $4d02: $85
	and  l                                           ; $4d03: $a5
	push bc                                          ; $4d04: $c5
	ld   e, l                                        ; $4d05: $5d
	push bc                                          ; $4d06: $c5
	call nz, $b8c6                                   ; $4d07: $c4 $c6 $b8
	adc  l                                           ; $4d0a: $8d
	nop                                              ; $4d0b: $00

jr_08a_4d0c:
	add  d                                           ; $4d0c: $82
	ld   bc, $008a                                   ; $4d0d: $01 $8a $00
	nop                                              ; $4d10: $00
	dec  a                                           ; $4d11: $3d
	add  c                                           ; $4d12: $81
	ldh  [rP1], a                                    ; $4d13: $e0 $00

jr_08a_4d15:
	ld   b, e                                        ; $4d15: $43
	add  c                                           ; $4d16: $81
	ldh  a, [c]                                      ; $4d17: $f2
	inc  bc                                          ; $4d18: $03
	ld   [hl-], a                                    ; $4d19: $32
	ld   [hl], d                                     ; $4d1a: $72
	db   $10                                         ; $4d1b: $10
	inc  a                                           ; $4d1c: $3c
	add  d                                           ; $4d1d: $82
	nop                                              ; $4d1e: $00
	rlca                                             ; $4d1f: $07
	sbc  a                                           ; $4d20: $9f
	nop                                              ; $4d21: $00
	sub  b                                           ; $4d22: $90
	nop                                              ; $4d23: $00
	ld   [hl], h                                     ; $4d24: $74
	ld   a, b                                        ; $4d25: $78
	add  h                                           ; $4d26: $84
	add  a                                           ; $4d27: $87
	add  [hl]                                        ; $4d28: $86
	nop                                              ; $4d29: $00
	nop                                              ; $4d2a: $00
	ldh  a, [$81]                                    ; $4d2b: $f0 $81
	rra                                              ; $4d2d: $1f
	nop                                              ; $4d2e: $00
	rrca                                             ; $4d2f: $0f
	add  b                                           ; $4d30: $80
	ccf                                              ; $4d31: $3f
	ld   [bc], a                                     ; $4d32: $02
	cp   a                                           ; $4d33: $bf
	ccf                                              ; $4d34: $3f
	ld   a, a                                        ; $4d35: $7f
	add  b                                           ; $4d36: $80
	ccf                                              ; $4d37: $3f
	inc  b                                           ; $4d38: $04
	ld   c, $1f                                      ; $4d39: $0e $1f
	nop                                              ; $4d3b: $00
	ld   c, $7c                                      ; $4d3c: $0e $7c
	add  c                                           ; $4d3e: $81
	call nz, $c005                                   ; $4d3f: $c4 $05 $c0
	ret  z                                           ; $4d42: $c8

	ret  nz                                          ; $4d43: $c0

	ldh  a, [rLCDC]                                  ; $4d44: $f0 $40
	ret  nz                                          ; $4d46: $c0

	add  b                                           ; $4d47: $80
	add  b                                           ; $4d48: $80
	rst  $38                                         ; $4d49: $ff
	nop                                              ; $4d4a: $00
	and  a                                           ; $4d4b: $a7
	nop                                              ; $4d4c: $00
	nop                                              ; $4d4d: $00
	jr   nz, jr_08a_4cd1                             ; $4d4e: $20 $81

	nop                                              ; $4d50: $00
	ld   b, $10                                      ; $4d51: $06 $10
	nop                                              ; $4d53: $00
	stop                                             ; $4d54: $10 $00
	ld   b, b                                        ; $4d56: $40
	nop                                              ; $4d57: $00
	ld   h, b                                        ; $4d58: $60
	rst  $10                                         ; $4d59: $d7
	nop                                              ; $4d5a: $00
	nop                                              ; $4d5b: $00
	inc  bc                                          ; $4d5c: $03
	add  c                                           ; $4d5d: $81
	nop                                              ; $4d5e: $00
	ld   [bc], a                                     ; $4d5f: $02
	ld   bc, $0200                                   ; $4d60: $01 $00 $02
	add  d                                           ; $4d63: $82
	nop                                              ; $4d64: $00
	add  b                                           ; $4d65: $80
	ld   bc, $1f80                                   ; $4d66: $01 $80 $1f
	add  b                                           ; $4d69: $80
	rlca                                             ; $4d6a: $07
	nop                                              ; $4d6b: $00
	nop                                              ; $4d6c: $00
	add  b                                           ; $4d6d: $80
	dec  b                                           ; $4d6e: $05
	add  b                                           ; $4d6f: $80
	inc  b                                           ; $4d70: $04
	add  h                                           ; $4d71: $84
	nop                                              ; $4d72: $00
	ld   [bc], a                                     ; $4d73: $02
	ld   b, b                                        ; $4d74: $40
	nop                                              ; $4d75: $00
	ret  nz                                          ; $4d76: $c0

	add  c                                           ; $4d77: $81
	nop                                              ; $4d78: $00
	nop                                              ; $4d79: $00
	add  b                                           ; $4d7a: $80
	add  e                                           ; $4d7b: $83
	nop                                              ; $4d7c: $00
	nop                                              ; $4d7d: $00
	rrca                                             ; $4d7e: $0f
	add  b                                           ; $4d7f: $80
	ld   h, b                                        ; $4d80: $60
	ld   b, $e0                                      ; $4d81: $06 $e0
	ldh  a, [$c0]                                    ; $4d83: $f0 $c0
	pop  bc                                          ; $4d85: $c1
	nop                                              ; $4d86: $00
	ld   e, $00                                      ; $4d87: $1e $00
	add  b                                           ; $4d89: $80
	ld   h, b                                        ; $4d8a: $60
	add  b                                           ; $4d8b: $80
	ld   b, b                                        ; $4d8c: $40
	adc  [hl]                                        ; $4d8d: $8e
	nop                                              ; $4d8e: $00
	ld   [bc], a                                     ; $4d8f: $02
	ldh  [rP1], a                                    ; $4d90: $e0 $00
	jr   nz, jr_08a_4d15                             ; $4d92: $20 $81

	nop                                              ; $4d94: $00
	ld   [bc], a                                     ; $4d95: $02
	ld   b, b                                        ; $4d96: $40
	nop                                              ; $4d97: $00
	add  b                                           ; $4d98: $80
	push hl                                          ; $4d99: $e5
	nop                                              ; $4d9a: $00
	nop                                              ; $4d9b: $00
	ld   [bc], a                                     ; $4d9c: $02
	add  c                                           ; $4d9d: $81
	nop                                              ; $4d9e: $00
	nop                                              ; $4d9f: $00
	inc  bc                                          ; $4da0: $03
	add  c                                           ; $4da1: $81
	nop                                              ; $4da2: $00
	nop                                              ; $4da3: $00
	ld   bc, $0093                                   ; $4da4: $01 $93 $00
	ld   [$0040], sp                                 ; $4da7: $08 $40 $00
	jr   nz, jr_08a_4dac                             ; $4daa: $20 $00

jr_08a_4dac:
	sub  b                                           ; $4dac: $90
	nop                                              ; $4dad: $00
	ld   [hl], h                                     ; $4dae: $74
	nop                                              ; $4daf: $00
	add  h                                           ; $4db0: $84
	xor  c                                           ; $4db1: $a9
	nop                                              ; $4db2: $00
	ld   a, [bc]                                     ; $4db3: $0a
	add  b                                           ; $4db4: $80
	nop                                              ; $4db5: $00
	ld   b, b                                        ; $4db6: $40
	nop                                              ; $4db7: $00
	or   b                                           ; $4db8: $b0
	nop                                              ; $4db9: $00
	ld   c, b                                        ; $4dba: $48
	nop                                              ; $4dbb: $00
	jr   nz, jr_08a_4dbe                             ; $4dbc: $20 $00

jr_08a_4dbe:
	jr   @+$01                                       ; $4dbe: $18 $ff

	nop                                              ; $4dc0: $00
	rst  $38                                         ; $4dc1: $ff
	nop                                              ; $4dc2: $00
	rst  $38                                         ; $4dc3: $ff
	nop                                              ; $4dc4: $00
	rst  $38                                         ; $4dc5: $ff
	nop                                              ; $4dc6: $00
	rst  $38                                         ; $4dc7: $ff
	nop                                              ; $4dc8: $00
	xor  h                                           ; $4dc9: $ac
	nop                                              ; $4dca: $00
	sub  a                                           ; $4dcb: $97
	nop                                              ; $4dcc: $00
	xor  d                                           ; $4dcd: $aa
	nop                                              ; $4dce: $00
	add  b                                           ; $4dcf: $80
	ld   a, $02                                      ; $4dd0: $3e $02
	ld   b, c                                        ; $4dd2: $41
	ld   e, a                                        ; $4dd3: $5f
	ld   e, $8b                                      ; $4dd4: $1e $8b
	nop                                              ; $4dd6: $00
	add  b                                           ; $4dd7: $80
	ld   hl, sp-$5a                                  ; $4dd8: $f8 $a6
	nop                                              ; $4dda: $00
	add  b                                           ; $4ddb: $80
	inc  e                                           ; $4ddc: $1c
	add  b                                           ; $4ddd: $80
	ld   [hl+], a                                    ; $4dde: $22
	add  b                                           ; $4ddf: $80
	ld   hl, $2080                                   ; $4de0: $21 $80 $20
	add  b                                           ; $4de3: $80
	nop                                              ; $4de4: $00
	add  b                                           ; $4de5: $80
	ld   bc, $0280                                   ; $4de6: $01 $80 $02
	inc  bc                                          ; $4de9: $03
	inc  b                                           ; $4dea: $04
	dec  b                                           ; $4deb: $05
	add  hl, bc                                      ; $4dec: $09
	ld   [$1f80], sp                                 ; $4ded: $08 $80 $1f
	ld   b, $10                                      ; $4df0: $06 $10
	rla                                              ; $4df2: $17
	and  e                                           ; $4df3: $a3
	xor  a                                           ; $4df4: $af
	adc  e                                           ; $4df5: $8b
	cp   a                                           ; $4df6: $bf
	ccf                                              ; $4df7: $3f
	add  b                                           ; $4df8: $80
	ld   a, [hl]                                     ; $4df9: $7e
	add  b                                           ; $4dfa: $80
	db   $fc                                         ; $4dfb: $fc
	add  b                                           ; $4dfc: $80
	ld   hl, sp+$09                                  ; $4dfd: $f8 $09
	ldh  a, [rSVBK]                                  ; $4dff: $f0 $70
	add  b                                           ; $4e01: $80
	ld   a, [hl]                                     ; $4e02: $7e
	cp   $81                                         ; $4e03: $fe $81
	rst  $38                                         ; $4e05: $ff
	ld   sp, hl                                      ; $4e06: $f9
	rlca                                             ; $4e07: $07
	nop                                              ; $4e08: $00
	add  b                                           ; $4e09: $80
	inc  c                                           ; $4e0a: $0c
	add  b                                           ; $4e0b: $80
	add  hl, de                                      ; $4e0c: $19
	add  b                                           ; $4e0d: $80
	inc  sp                                          ; $4e0e: $33
	add  b                                           ; $4e0f: $80
	ld   h, a                                        ; $4e10: $67
	add  b                                           ; $4e11: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e12: $cf
	ld   [bc], a                                     ; $4e13: $02
	rra                                              ; $4e14: $1f
	rst  $20                                         ; $4e15: $e7
	ld   hl, sp-$80                                  ; $4e16: $f8 $80
	ldh  [rSC], a                                    ; $4e18: $e0 $02
	rra                                              ; $4e1a: $1f
	rst  $38                                         ; $4e1b: $ff
	ldh  [$80], a                                    ; $4e1c: $e0 $80
	pop  af                                          ; $4e1e: $f1
	add  b                                           ; $4e1f: $80
	db   $e3                                         ; $4e20: $e3
	add  b                                           ; $4e21: $80
	rst  ToBoot                                         ; $4e22: $c7
	add  b                                           ; $4e23: $80
	adc  a                                           ; $4e24: $8f
	add  b                                           ; $4e25: $80
	rra                                              ; $4e26: $1f
	add  b                                           ; $4e27: $80
	ccf                                              ; $4e28: $3f
	nop                                              ; $4e29: $00
	nop                                              ; $4e2a: $00
	add  b                                           ; $4e2b: $80
	add  b                                           ; $4e2c: $80
	dec  c                                           ; $4e2d: $0d
	ld   a, h                                        ; $4e2e: $7c
	db   $fc                                         ; $4e2f: $fc
	add  h                                           ; $4e30: $84
	db   $fc                                         ; $4e31: $fc
	db   $f4                                         ; $4e32: $f4
	db   $fc                                         ; $4e33: $fc
	db   $ec                                         ; $4e34: $ec
	db   $f4                                         ; $4e35: $f4
	call nc, $a4e4                                   ; $4e36: $d4 $e4 $a4
	call nz, $10a8                                   ; $4e39: $c4 $a8 $10
	add  b                                           ; $4e3c: $80
	ld   [$0480], sp                                 ; $4e3d: $08 $80 $04
	add  b                                           ; $4e40: $80
	ld   [bc], a                                     ; $4e41: $02
	add  h                                           ; $4e42: $84
	ld   bc, $0280                                   ; $4e43: $01 $80 $02
	ld   [bc], a                                     ; $4e46: $02
	ld   h, b                                        ; $4e47: $60
	ld   l, [hl]                                     ; $4e48: $6e
	cpl                                              ; $4e49: $2f
	add  c                                           ; $4e4a: $81
	dec  a                                           ; $4e4b: $3d
	inc  c                                           ; $4e4c: $0c
	ccf                                              ; $4e4d: $3f
	dec  sp                                          ; $4e4e: $3b
	set  7, d                                        ; $4e4f: $cb $fa
	rlca                                             ; $4e51: $07
	ld   a, a                                        ; $4e52: $7f
	ld   h, a                                        ; $4e53: $67
	ld   a, [hl]                                     ; $4e54: $7e
	ld   [hl], a                                     ; $4e55: $77
	rst  JumpTable                                         ; $4e56: $df
	ldh  [rIE], a                                    ; $4e57: $e0 $ff
	ld   a, a                                        ; $4e59: $7f
	add  b                                           ; $4e5a: $80
	cp   $00                                         ; $4e5b: $fe $00
	ld   a, h                                        ; $4e5d: $7c
	add  b                                           ; $4e5e: $80
	cp   $02                                         ; $4e5f: $fe $02
	rst  $38                                         ; $4e61: $ff
	db   $fd                                         ; $4e62: $fd
	cp   $80                                         ; $4e63: $fe $80
	rst  $38                                         ; $4e65: $ff
	ld   [$71f3], sp                                 ; $4e66: $08 $f3 $71
	db   $e3                                         ; $4e69: $e3
	ld   h, [hl]                                     ; $4e6a: $66
	rst  $38                                         ; $4e6b: $ff
	ld   hl, sp+$7f                                  ; $4e6c: $f8 $7f
	ccf                                              ; $4e6e: $3f
	ld   a, b                                        ; $4e6f: $78
	add  c                                           ; $4e70: $81
	ld   hl, sp+$17                                  ; $4e71: $f8 $17
	or   b                                           ; $4e73: $b0
	ld   a, a                                        ; $4e74: $7f
	rst  $38                                         ; $4e75: $ff
	rst  $30                                         ; $4e76: $f7
	ld   hl, sp-$02                                  ; $4e77: $f8 $fe
	pop  bc                                          ; $4e79: $c1

jr_08a_4e7a:
	jr   nz, @+$01                                   ; $4e7a: $20 $ff

	nop                                              ; $4e7c: $00
	rst  $38                                         ; $4e7d: $ff
	pop  bc                                          ; $4e7e: $c1
	ccf                                              ; $4e7f: $3f
	dec  [hl]                                        ; $4e80: $35
	ld   a, $76                                      ; $4e81: $3e $76
	ld   e, [hl]                                     ; $4e83: $5e
	jp   c, $fcdc                                    ; $4e84: $da $dc $fc

	inc  a                                           ; $4e87: $3c
	db   $f4                                         ; $4e88: $f4
	ld   sp, hl                                      ; $4e89: $f9
	ld   a, [bc]                                     ; $4e8a: $0a
	add  b                                           ; $4e8b: $80
	sub  h                                           ; $4e8c: $94
	add  b                                           ; $4e8d: $80
	inc  d                                           ; $4e8e: $14
	adc  c                                           ; $4e8f: $89
	ld   d, h                                        ; $4e90: $54
	ld   [bc], a                                     ; $4e91: $02
	xor  d                                           ; $4e92: $aa
	ld   [bc], a                                     ; $4e93: $02
	inc  b                                           ; $4e94: $04
	add  c                                           ; $4e95: $81
	dec  b                                           ; $4e96: $05
	inc  c                                           ; $4e97: $0c
	add  hl, bc                                      ; $4e98: $09
	dec  bc                                          ; $4e99: $0b
	add  hl, bc                                      ; $4e9a: $09
	dec  bc                                          ; $4e9b: $0b
	ld   de, $1817                                   ; $4e9c: $11 $17 $18
	rra                                              ; $4e9f: $1f
	rla                                              ; $4ea0: $17
	jr   jr_08a_4ea3                                 ; $4ea1: $18 $00

jr_08a_4ea3:
	add  sp, -$01                                    ; $4ea3: $e8 $ff
	add  b                                           ; $4ea5: $80
	rst  JumpTable                                         ; $4ea6: $df
	ld   bc, $ffd7                                   ; $4ea7: $01 $d7 $ff
	add  b                                           ; $4eaa: $80
	cp   a                                           ; $4eab: $bf
	dec  bc                                          ; $4eac: $0b
	xor  a                                           ; $4ead: $af
	sbc  a                                           ; $4eae: $9f
	rst  $38                                         ; $4eaf: $ff
	ld   a, a                                        ; $4eb0: $7f
	rst  $38                                         ; $4eb1: $ff
	add  e                                           ; $4eb2: $83
	ld   a, a                                        ; $4eb3: $7f
	dec  d                                           ; $4eb4: $15
	ld   [hl], a                                     ; $4eb5: $77
	rst  $38                                         ; $4eb6: $ff
	db   $ed                                         ; $4eb7: $ed
	di                                               ; $4eb8: $f3
	add  b                                           ; $4eb9: $80
	rst  $38                                         ; $4eba: $ff
	ld   [bc], a                                     ; $4ebb: $02
	sbc  a                                           ; $4ebc: $9f
	adc  a                                           ; $4ebd: $8f
	ld   e, $80                                      ; $4ebe: $1e $80
	cp   [hl]                                        ; $4ec0: $be
	rlca                                             ; $4ec1: $07
	cp   $6c                                         ; $4ec2: $fe $6c
	sbc  a                                           ; $4ec4: $9f
	rst  $38                                         ; $4ec5: $ff
	db   $fd                                         ; $4ec6: $fd
	pop  bc                                          ; $4ec7: $c1
	jp   $8082                                       ; $4ec8: $c3 $82 $80


	cp   $02                                         ; $4ecb: $fe $02
	cp   a                                           ; $4ecd: $bf
	pop  bc                                          ; $4ece: $c1
	rst  $30                                         ; $4ecf: $f7
	add  c                                           ; $4ed0: $81
	rrca                                             ; $4ed1: $0f
	ld   bc, $171f                                   ; $4ed2: $01 $1f $17
	add  b                                           ; $4ed5: $80
	rst  $30                                         ; $4ed6: $f7
	ld   [bc], a                                     ; $4ed7: $02
	nop                                              ; $4ed8: $00
	ld   sp, hl                                      ; $4ed9: $f9
	jp   hl                                          ; $4eda: $e9


	add  c                                           ; $4edb: $81
	pop  af                                          ; $4edc: $f1
	nop                                              ; $4edd: $00
	pop  de                                          ; $4ede: $d1
	add  c                                           ; $4edf: $81
	pop  hl                                          ; $4ee0: $e1
	nop                                              ; $4ee1: $00
	and  c                                           ; $4ee2: $a1
	add  c                                           ; $4ee3: $81
	pop  bc                                          ; $4ee4: $c1
	ld   [bc], a                                     ; $4ee5: $02
	ld   b, c                                        ; $4ee6: $41
	add  b                                           ; $4ee7: $80
	add  e                                           ; $4ee8: $83
	add  h                                           ; $4ee9: $84
	ld   d, h                                        ; $4eea: $54
	add  c                                           ; $4eeb: $81
	ld   b, h                                        ; $4eec: $44
	ld   b, $40                                      ; $4eed: $06 $40
	ld   [$1000], sp                                 ; $4eef: $08 $00 $10
	nop                                              ; $4ef2: $00
	jr   nz, @-$27                                   ; $4ef3: $20 $d7

	add  b                                           ; $4ef5: $80
	inc  e                                           ; $4ef6: $1c
	add  d                                           ; $4ef7: $82
	jr   jr_08a_4e7a                                 ; $4ef8: $18 $80

	inc  e                                           ; $4efa: $1c
	ld   [bc], a                                     ; $4efb: $02
	jr   jr_08a_4f0e                                 ; $4efc: $18 $10

	rra                                              ; $4efe: $1f
	add  d                                           ; $4eff: $82
	nop                                              ; $4f00: $00
	nop                                              ; $4f01: $00
	rst  $38                                         ; $4f02: $ff
	add  b                                           ; $4f03: $80
	inc  bc                                          ; $4f04: $03
	add  [hl]                                        ; $4f05: $86
	nop                                              ; $4f06: $00
	rlca                                             ; $4f07: $07
	add  b                                           ; $4f08: $80
	nop                                              ; $4f09: $00
	ld   a, h                                        ; $4f0a: $7c
	nop                                              ; $4f0b: $00
	inc  bc                                          ; $4f0c: $03
	pop  af                                          ; $4f0d: $f1

jr_08a_4f0e:
	cp   $f0                                         ; $4f0e: $fe $f0
	add  b                                           ; $4f10: $80
	rrca                                             ; $4f11: $0f
	adc  b                                           ; $4f12: $88
	nop                                              ; $4f13: $00
	dec  b                                           ; $4f14: $05
	ldh  a, [$fb]                                    ; $4f15: $f0 $fb
	rrca                                             ; $4f17: $0f
	ld   a, [hl-]                                    ; $4f18: $3a
	rst  $38                                         ; $4f19: $ff
	pop  bc                                          ; $4f1a: $c1
	add  b                                           ; $4f1b: $80
	ccf                                              ; $4f1c: $3f
	add  b                                           ; $4f1d: $80
	ld   bc, $0380                                   ; $4f1e: $01 $80 $03
	add  d                                           ; $4f21: $82
	ld   bc, $0380                                   ; $4f22: $01 $80 $03
	add  b                                           ; $4f25: $80
	add  b                                           ; $4f26: $80
	add  b                                           ; $4f27: $80
	nop                                              ; $4f28: $00
	ld   c, $01                                      ; $4f29: $0e $01
	nop                                              ; $4f2b: $00
	ld   [bc], a                                     ; $4f2c: $02
	nop                                              ; $4f2d: $00
	inc  b                                           ; $4f2e: $04
	nop                                              ; $4f2f: $00
	ld   [$1000], sp                                 ; $4f30: $08 $00 $10
	nop                                              ; $4f33: $00
	jr   nz, jr_08a_4f36                             ; $4f34: $20 $00

jr_08a_4f36:
	ld   b, b                                        ; $4f36: $40
	nop                                              ; $4f37: $00
	add  b                                           ; $4f38: $80
	xor  d                                           ; $4f39: $aa
	nop                                              ; $4f3a: $00
	add  b                                           ; $4f3b: $80
	rrca                                             ; $4f3c: $0f
	adc  h                                           ; $4f3d: $8c
	nop                                              ; $4f3e: $00
	inc  bc                                          ; $4f3f: $03
	rst  $38                                         ; $4f40: $ff
	pop  bc                                          ; $4f41: $c1
	ld   bc, $8a3f                                   ; $4f42: $01 $3f $8a
	nop                                              ; $4f45: $00
	inc  bc                                          ; $4f46: $03
	ret  nz                                          ; $4f47: $c0

	ld   b, b                                        ; $4f48: $40
	nop                                              ; $4f49: $00
	add  b                                           ; $4f4a: $80
	or   h                                           ; $4f4b: $b4
	nop                                              ; $4f4c: $00
	nop                                              ; $4f4d: $00
	db   $10                                         ; $4f4e: $10
	add  b                                           ; $4f4f: $80
	jr   @+$05                                       ; $4f50: $18 $03

	inc  e                                           ; $4f52: $1c
	inc  d                                           ; $4f53: $14
	ld   e, $06                                      ; $4f54: $1e $06
	rst  $38                                         ; $4f56: $ff
	nop                                              ; $4f57: $00
	sbc  h                                           ; $4f58: $9c
	nop                                              ; $4f59: $00
	dec  b                                           ; $4f5a: $05
	inc  c                                           ; $4f5b: $0c
	rrca                                             ; $4f5c: $0f
	dec  b                                           ; $4f5d: $05
	rlca                                             ; $4f5e: $07
	ld   [bc], a                                     ; $4f5f: $02
	inc  bc                                          ; $4f60: $03
	add  b                                           ; $4f61: $80
	ld   bc, $0097                                   ; $4f62: $01 $97 $00
	add  b                                           ; $4f65: $80
	add  b                                           ; $4f66: $80
	add  c                                           ; $4f67: $81
	ret  nz                                          ; $4f68: $c0

	ld   bc, $c000                                   ; $4f69: $01 $00 $c0
	sbc  e                                           ; $4f6c: $9b
	nop                                              ; $4f6d: $00
	add  b                                           ; $4f6e: $80
	inc  bc                                          ; $4f6f: $03
	add  b                                           ; $4f70: $80
	ld   bc, $0082                                   ; $4f71: $01 $82 $00
	add  b                                           ; $4f74: $80
	inc  b                                           ; $4f75: $04
	add  b                                           ; $4f76: $80
	inc  e                                           ; $4f77: $1c
	add  b                                           ; $4f78: $80
	ld   [$0082], sp                                 ; $4f79: $08 $82 $00
	add  b                                           ; $4f7c: $80
	jr   nz, jr_08a_4f84                             ; $4f7d: $20 $05

	ldh  [$e1], a                                    ; $4f7f: $e0 $e1
	ld   b, b                                        ; $4f81: $40
	ld   b, d                                        ; $4f82: $42
	nop                                              ; $4f83: $00

jr_08a_4f84:
	inc  bc                                          ; $4f84: $03
	add  d                                           ; $4f85: $82
	nop                                              ; $4f86: $00
	add  c                                           ; $4f87: $81
	add  b                                           ; $4f88: $80
	ld   bc, $0787                                   ; $4f89: $01 $87 $07
	add  b                                           ; $4f8c: $80
	rrca                                             ; $4f8d: $0f
	add  e                                           ; $4f8e: $83
	nop                                              ; $4f8f: $00
	add  b                                           ; $4f90: $80
	inc  b                                           ; $4f91: $04
	add  b                                           ; $4f92: $80
	ld   a, $80                                      ; $4f93: $3e $80
	ld   a, h                                        ; $4f95: $7c
	add  c                                           ; $4f96: $81
	nop                                              ; $4f97: $00
	ld   b, $20                                      ; $4f98: $06 $20
	nop                                              ; $4f9a: $00
	ret  nc                                          ; $4f9b: $d0

	nop                                              ; $4f9c: $00
	stop                                             ; $4f9d: $10 $00
	ldh  [$83], a                                    ; $4f9f: $e0 $83
	nop                                              ; $4fa1: $00
	add  b                                           ; $4fa2: $80
	add  b                                           ; $4fa3: $80
	add  b                                           ; $4fa4: $80
	ret  nz                                          ; $4fa5: $c0

	add  b                                           ; $4fa6: $80
	add  b                                           ; $4fa7: $80
	rst  $38                                         ; $4fa8: $ff
	nop                                              ; $4fa9: $00
	rst  $38                                         ; $4faa: $ff
	nop                                              ; $4fab: $00
	rst  $38                                         ; $4fac: $ff
	nop                                              ; $4fad: $00
	rst  $38                                         ; $4fae: $ff
	nop                                              ; $4faf: $00
	rst  $38                                         ; $4fb0: $ff
	nop                                              ; $4fb1: $00
	rst  $38                                         ; $4fb2: $ff
	nop                                              ; $4fb3: $00
	xor  $00                                         ; $4fb4: $ee $00
	xor  d                                           ; $4fb6: $aa
	nop                                              ; $4fb7: $00
	and  b                                           ; $4fb8: $a0
	nop                                              ; $4fb9: $00
	add  b                                           ; $4fba: $80
	inc  bc                                          ; $4fbb: $03
	add  b                                           ; $4fbc: $80
	rlca                                             ; $4fbd: $07
	add  b                                           ; $4fbe: $80
	rrca                                             ; $4fbf: $0f
	add  d                                           ; $4fc0: $82
	rra                                              ; $4fc1: $1f
	add  b                                           ; $4fc2: $80
	ld   a, [de]                                     ; $4fc3: $1a
	add  b                                           ; $4fc4: $80
	ld   [$0080], sp                                 ; $4fc5: $08 $80 $00
	add  b                                           ; $4fc8: $80
	sbc  h                                           ; $4fc9: $9c
	add  b                                           ; $4fca: $80
	db   $e4                                         ; $4fcb: $e4
	add  b                                           ; $4fcc: $80
	db   $f4                                         ; $4fcd: $f4
	add  b                                           ; $4fce: $80

jr_08a_4fcf:
	db   $fc                                         ; $4fcf: $fc
	add  b                                           ; $4fd0: $80
	ld   hl, sp-$7f                                  ; $4fd1: $f8 $81
	ld   a, b                                        ; $4fd3: $78
	ld   bc, $6018                                   ; $4fd4: $01 $18 $60
	cp   l                                           ; $4fd7: $bd
	nop                                              ; $4fd8: $00
	add  d                                           ; $4fd9: $82
	inc  b                                           ; $4fda: $04
	add  b                                           ; $4fdb: $80
	ld   [bc], a                                     ; $4fdc: $02
	add  b                                           ; $4fdd: $80
	ld   bc, $0380                                   ; $4fde: $01 $80 $03
	ld   b, $05                                      ; $4fe1: $06 $05
	rlca                                             ; $4fe3: $07
	ld   b, $07                                      ; $4fe4: $06 $07
	add  hl, bc                                      ; $4fe6: $09
	rrca                                             ; $4fe7: $0f
	dec  [hl]                                        ; $4fe8: $35
	add  c                                           ; $4fe9: $81
	ld   d, b                                        ; $4fea: $50
	ld   bc, $4818                                   ; $4feb: $01 $18 $48
	add  b                                           ; $4fee: $80
	xor  [hl]                                        ; $4fef: $ae
	ld   [$322e], sp                                 ; $4ff0: $08 $2e $32
	ld   a, [bc]                                     ; $4ff3: $0a
	ld   a, $d7                                      ; $4ff4: $3e $d7
	ld   sp, hl                                      ; $4ff6: $f9
	and  l                                           ; $4ff7: $a5
	rst  $38                                         ; $4ff8: $ff
	ld   l, h                                        ; $4ff9: $6c
	adc  e                                           ; $4ffa: $8b
	nop                                              ; $4ffb: $00
	add  b                                           ; $4ffc: $80
	add  b                                           ; $4ffd: $80
	xor  [hl]                                        ; $4ffe: $ae
	nop                                              ; $4fff: $00
	inc  bc                                          ; $5000: $03
	dec  e                                           ; $5001: $1d
	rra                                              ; $5002: $1f
	ld   de, $8013                                   ; $5003: $11 $13 $80
	rla                                              ; $5006: $17
	rla                                              ; $5007: $17
	ld   a, $3a                                      ; $5008: $3e $3a
	ld   a, [hl+]                                    ; $500a: $2a
	ld   [hl-], a                                    ; $500b: $32
	inc  sp                                          ; $500c: $33
	scf                                              ; $500d: $37
	ld   b, h                                        ; $500e: $44
	ld   a, a                                        ; $500f: $7f
	ld   [hl], l                                     ; $5010: $75
	ld   [hl], a                                     ; $5011: $77
	ld   b, $fc                                      ; $5012: $06 $fc
	ld   [$26ee], a                                  ; $5014: $ea $ee $26
	xor  $06                                         ; $5017: $ee $06
	ld   e, $36                                      ; $5019: $1e $36
	ld   a, $c4                                      ; $501b: $3e $c4
	db   $fd                                         ; $501d: $fd
	dec  a                                           ; $501e: $3d
	db   $fd                                         ; $501f: $fd
	add  b                                           ; $5020: $80
	ld   sp, hl                                      ; $5021: $f9
	ld   [bc], a                                     ; $5022: $02
	ld   a, [hl]                                     ; $5023: $7e
	add  b                                           ; $5024: $80
	ret  nz                                          ; $5025: $c0

	add  c                                           ; $5026: $81
	ld   b, b                                        ; $5027: $40
	add  b                                           ; $5028: $80
	ld   [hl], b                                     ; $5029: $70
	add  b                                           ; $502a: $80
	ld   c, b                                        ; $502b: $48
	add  c                                           ; $502c: $81
	ld   b, h                                        ; $502d: $44
	nop                                              ; $502e: $00
	call nz, $8c80                                   ; $502f: $c4 $80 $8c
	xor  b                                           ; $5032: $a8
	nop                                              ; $5033: $00
	add  b                                           ; $5034: $80
	ld   a, [hl]                                     ; $5035: $7e
	add  b                                           ; $5036: $80
	ld   b, d                                        ; $5037: $42
	add  b                                           ; $5038: $80
	ld   e, d                                        ; $5039: $5a
	dec  bc                                          ; $503a: $0b
	ld   d, d                                        ; $503b: $52
	ld   [hl], e                                     ; $503c: $73
	ld   a, [hl]                                     ; $503d: $7e
	ld   a, a                                        ; $503e: $7f
	ld   h, l                                        ; $503f: $65
	ld   a, a                                        ; $5040: $7f
	ld   [hl], e                                     ; $5041: $73
	ld   a, a                                        ; $5042: $7f
	ld   h, a                                        ; $5043: $67
	ld   a, a                                        ; $5044: $7f
	rrca                                             ; $5045: $0f
	ld   a, $80                                      ; $5046: $3e $80
	ld   a, [hl]                                     ; $5048: $7e
	ld   [bc], a                                     ; $5049: $02
	ld   e, h                                        ; $504a: $5c
	ld   a, h                                        ; $504b: $7c
	jr   nc, jr_08a_4fcf                             ; $504c: $30 $81

	ldh  a, [c]                                      ; $504e: $f2
	ld   bc, $c4c2                                   ; $504f: $01 $c2 $c4
	add  b                                           ; $5052: $80
	db   $e4                                         ; $5053: $e4
	ld   [$f0f4], sp                                 ; $5054: $08 $f4 $f0
	ld   [hl], b                                     ; $5057: $70
	rst  $38                                         ; $5058: $ff
	adc  $f2                                         ; $5059: $ce $f2
	or   b                                           ; $505b: $b0
	call nz, $81a8                                   ; $505c: $c4 $a8 $81
	sub  b                                           ; $505f: $90
	ld   bc, $60e0                                   ; $5060: $01 $e0 $60
	add  c                                           ; $5063: $81
	ld   b, b                                        ; $5064: $40
	nop                                              ; $5065: $00
	ret  nz                                          ; $5066: $c0

	sbc  b                                           ; $5067: $98
	nop                                              ; $5068: $00
	add  b                                           ; $5069: $80
	inc  bc                                          ; $506a: $03
	adc  b                                           ; $506b: $88
	ld   [bc], a                                     ; $506c: $02
	add  b                                           ; $506d: $80
	ld   d, d                                        ; $506e: $52
	add  b                                           ; $506f: $80
	ld   c, e                                        ; $5070: $4b
	add  b                                           ; $5071: $80
	res  0, b                                        ; $5072: $cb $80
	ld   c, d                                        ; $5074: $4a
	add  b                                           ; $5075: $80
	ld   e, d                                        ; $5076: $5a
	add  h                                           ; $5077: $84
	ld   c, d                                        ; $5078: $4a
	inc  bc                                          ; $5079: $03
	rst  ToBoot                                         ; $507a: $c7
	ld   hl, sp-$44                                  ; $507b: $f8 $bc
	db   $fc                                         ; $507d: $fc
	add  b                                           ; $507e: $80
	ld   hl, sp-$80                                  ; $507f: $f8 $80
	db   $fc                                         ; $5081: $fc
	add  d                                           ; $5082: $82
	rst  $38                                         ; $5083: $ff
	ld   [$7f3f], sp                                 ; $5084: $08 $3f $7f
	rrca                                             ; $5087: $0f
	ccf                                              ; $5088: $3f
	di                                               ; $5089: $f3
	inc  b                                           ; $508a: $04
	nop                                              ; $508b: $00
	ld   [$800f], sp                                 ; $508c: $08 $0f $80
	ccf                                              ; $508f: $3f
	add  b                                           ; $5090: $80
	rlca                                             ; $5091: $07
	ld   [bc], a                                     ; $5092: $02
	ld   bc, $c0c1                                   ; $5093: $01 $c1 $c0
	add  b                                           ; $5096: $80
	cp   $81                                         ; $5097: $fe $81
	rst  $38                                         ; $5099: $ff
	add  c                                           ; $509a: $81
	nop                                              ; $509b: $00
	add  b                                           ; $509c: $80
	rst  $38                                         ; $509d: $ff
	ld   [bc], a                                     ; $509e: $02
	ld   hl, sp+$18                                  ; $509f: $f8 $18
	inc  e                                           ; $50a1: $1c

jr_08a_50a2:
	add  b                                           ; $50a2: $80
	add  h                                           ; $50a3: $84
	add  b                                           ; $50a4: $80
	ld   h, h                                        ; $50a5: $64
	inc  bc                                          ; $50a6: $03
	inc  b                                           ; $50a7: $04
	nop                                              ; $50a8: $00
	adc  b                                           ; $50a9: $88
	ld   [hl], b                                     ; $50aa: $70
	add  c                                           ; $50ab: $81
	nop                                              ; $50ac: $00
	add  b                                           ; $50ad: $80
	ret  nz                                          ; $50ae: $c0

	add  b                                           ; $50af: $80
	ld   h, b                                        ; $50b0: $60
	add  [hl]                                        ; $50b1: $86
	ld   d, b                                        ; $50b2: $50
	add  [hl]                                        ; $50b3: $86
	inc  b                                           ; $50b4: $04
	add  b                                           ; $50b5: $80
	rlca                                             ; $50b6: $07
	add  b                                           ; $50b7: $80
	inc  b                                           ; $50b8: $04
	add  b                                           ; $50b9: $80
	rlca                                             ; $50ba: $07
	add  b                                           ; $50bb: $80
	nop                                              ; $50bc: $00

jr_08a_50bd:
	add  d                                           ; $50bd: $82
	ld   b, d                                        ; $50be: $42
	add  b                                           ; $50bf: $80
	ld   a, [hl]                                     ; $50c0: $7e
	add  b                                           ; $50c1: $80
	nop                                              ; $50c2: $00
	add  b                                           ; $50c3: $80
	rst  $38                                         ; $50c4: $ff
	add  b                                           ; $50c5: $80
	nop                                              ; $50c6: $00
	add  b                                           ; $50c7: $80
	rst  $38                                         ; $50c8: $ff
	add  b                                           ; $50c9: $80
	nop                                              ; $50ca: $00
	inc  bc                                          ; $50cb: $03
	inc  c                                           ; $50cc: $0c
	rrca                                             ; $50cd: $0f
	nop                                              ; $50ce: $00
	inc  bc                                          ; $50cf: $03
	add  d                                           ; $50d0: $82
	nop                                              ; $50d1: $00
	add  b                                           ; $50d2: $80
	rst  $38                                         ; $50d3: $ff
	add  b                                           ; $50d4: $80
	nop                                              ; $50d5: $00
	add  b                                           ; $50d6: $80
	rst  $38                                         ; $50d7: $ff
	add  b                                           ; $50d8: $80
	nop                                              ; $50d9: $00
	dec  b                                           ; $50da: $05
	rlca                                             ; $50db: $07
	rst  $38                                         ; $50dc: $ff
	ld   a, b                                        ; $50dd: $78
	ldh  a, [rIF]                                    ; $50de: $f0 $0f
	ld   a, a                                        ; $50e0: $7f
	add  b                                           ; $50e1: $80
	nop                                              ; $50e2: $00
	add  b                                           ; $50e3: $80
	rst  $38                                         ; $50e4: $ff
	add  b                                           ; $50e5: $80
	nop                                              ; $50e6: $00
	add  b                                           ; $50e7: $80
	rst  $38                                         ; $50e8: $ff
	add  b                                           ; $50e9: $80
	nop                                              ; $50ea: $00
	add  b                                           ; $50eb: $80
	ld   d, b                                        ; $50ec: $50
	add  b                                           ; $50ed: $80
	ld   h, b                                        ; $50ee: $60
	add  b                                           ; $50ef: $80
	ret  nz                                          ; $50f0: $c0

	add  b                                           ; $50f1: $80
	nop                                              ; $50f2: $00
	add  b                                           ; $50f3: $80
	rst  $38                                         ; $50f4: $ff
	add  b                                           ; $50f5: $80
	nop                                              ; $50f6: $00
	add  b                                           ; $50f7: $80
	rst  $38                                         ; $50f8: $ff
	add  b                                           ; $50f9: $80
	nop                                              ; $50fa: $00
	adc  b                                           ; $50fb: $88
	and  b                                           ; $50fc: $a0
	add  b                                           ; $50fd: $80
	ld   h, b                                        ; $50fe: $60
	add  b                                           ; $50ff: $80
	ldh  [$e4], a                                    ; $5100: $e0 $e4
	nop                                              ; $5102: $00
	add  b                                           ; $5103: $80
	jr   @-$7e                                       ; $5104: $18 $80

	ld   [$00ff], sp                                 ; $5106: $08 $ff $00
	sub  c                                           ; $5109: $91
	nop                                              ; $510a: $00
	inc  b                                           ; $510b: $04
	inc  a                                           ; $510c: $3c
	nop                                              ; $510d: $00
	jr   jr_08a_5110                                 ; $510e: $18 $00

jr_08a_5110:
	inc  h                                           ; $5110: $24
	add  e                                           ; $5111: $83
	nop                                              ; $5112: $00
	add  d                                           ; $5113: $82
	ld   bc, $009a                                   ; $5114: $01 $9a $00
	add  b                                           ; $5117: $80
	ldh  [$80], a                                    ; $5118: $e0 $80
	ret  nz                                          ; $511a: $c0

	sbc  h                                           ; $511b: $9c
	nop                                              ; $511c: $00
	add  b                                           ; $511d: $80
	jr   nc, jr_08a_50a2                             ; $511e: $30 $82

	jr   c, jr_08a_50a2                              ; $5120: $38 $80

	ld   [hl], b                                     ; $5122: $70
	add  d                                           ; $5123: $82
	ld   h, b                                        ; $5124: $60
	or   b                                           ; $5125: $b0
	nop                                              ; $5126: $00
	nop                                              ; $5127: $00
	ld   bc, $0087                                   ; $5128: $01 $87 $00
	nop                                              ; $512b: $00
	ld   [bc], a                                     ; $512c: $02
	add  l                                           ; $512d: $85
	nop                                              ; $512e: $00
	inc  b                                           ; $512f: $04
	inc  bc                                          ; $5130: $03
	nop                                              ; $5131: $00
	inc  bc                                          ; $5132: $03
	nop                                              ; $5133: $00
	inc  bc                                          ; $5134: $03
	add  c                                           ; $5135: $81
	nop                                              ; $5136: $00
	ld   [bc], a                                     ; $5137: $02
	inc  l                                           ; $5138: $2c
	nop                                              ; $5139: $00
	jr   jr_08a_50bd                                 ; $513a: $18 $81

	nop                                              ; $513c: $00
	inc  b                                           ; $513d: $04
	add  b                                           ; $513e: $80
	ld   bc, $0111                                   ; $513f: $01 $11 $01
	ld   de, $0182                                   ; $5142: $11 $82 $01
	ld   bc, $3931                                   ; $5145: $01 $31 $39
	add  b                                           ; $5148: $80
	add  hl, hl                                      ; $5149: $29
	add  hl, bc                                      ; $514a: $09
	add  hl, sp                                      ; $514b: $39
	dec  b                                           ; $514c: $05
	ld   bc, $007e                                   ; $514d: $01 $7e $00
	rst  $38                                         ; $5150: $ff
	nop                                              ; $5151: $00
	rst  $38                                         ; $5152: $ff
	nop                                              ; $5153: $00
	rst  $38                                         ; $5154: $ff
	adc  [hl]                                        ; $5155: $8e
	nop                                              ; $5156: $00
	add  b                                           ; $5157: $80
	add  b                                           ; $5158: $80
	dec  b                                           ; $5159: $05
	ret  nz                                          ; $515a: $c0

	or   b                                           ; $515b: $b0
	add  b                                           ; $515c: $80
	adc  h                                           ; $515d: $8c
	add  b                                           ; $515e: $80
	inc  bc                                          ; $515f: $03
	add  c                                           ; $5160: $81
	nop                                              ; $5161: $00
	inc  b                                           ; $5162: $04
	rst  $38                                         ; $5163: $ff
	nop                                              ; $5164: $00
	rst  $38                                         ; $5165: $ff
	nop                                              ; $5166: $00
	rst  $38                                         ; $5167: $ff
	sub  l                                           ; $5168: $95
	nop                                              ; $5169: $00
	ld   [$0080], sp                                 ; $516a: $08 $80 $00
	ld   a, a                                        ; $516d: $7f
	nop                                              ; $516e: $00
	rst  $38                                         ; $516f: $ff

jr_08a_5170:
	nop                                              ; $5170: $00
	rst  $38                                         ; $5171: $ff
	nop                                              ; $5172: $00
	rst  $38                                         ; $5173: $ff
	adc  b                                           ; $5174: $88
	nop                                              ; $5175: $00
	add  b                                           ; $5176: $80
	rlca                                             ; $5177: $07
	add  h                                           ; $5178: $84
	inc  bc                                          ; $5179: $03
	add  b                                           ; $517a: $80
	rlca                                             ; $517b: $07
	dec  bc                                          ; $517c: $0b
	rrca                                             ; $517d: $0f
	inc  c                                           ; $517e: $0c
	inc  e                                           ; $517f: $1c
	db   $10                                         ; $5180: $10
	jr   nc, @-$3e                                   ; $5181: $30 $c0

	nop                                              ; $5183: $00
	rst  $38                                         ; $5184: $ff
	nop                                              ; $5185: $00
	rst  $38                                         ; $5186: $ff
	nop                                              ; $5187: $00
	rst  $38                                         ; $5188: $ff
	adc  b                                           ; $5189: $88
	nop                                              ; $518a: $00
	add  b                                           ; $518b: $80
	add  b                                           ; $518c: $80
	add  [hl]                                        ; $518d: $86
	and  b                                           ; $518e: $a0
	add  a                                           ; $518f: $87
	ld   b, b                                        ; $5190: $40
	ld   [bc], a                                     ; $5191: $02
	ret  nz                                          ; $5192: $c0

	nop                                              ; $5193: $00
	add  b                                           ; $5194: $80
	rst  $38                                         ; $5195: $ff
	nop                                              ; $5196: $00
	rst  $38                                         ; $5197: $ff
	nop                                              ; $5198: $00
	rst  $38                                         ; $5199: $ff
	nop                                              ; $519a: $00
	rst  $38                                         ; $519b: $ff
	nop                                              ; $519c: $00
	db   $fd                                         ; $519d: $fd
	nop                                              ; $519e: $00
	ld   a, a                                        ; $519f: $7f
	nop                                              ; $51a0: $00
	cp   h                                           ; $51a1: $bc
	nop                                              ; $51a2: $00
	add  b                                           ; $51a3: $80
	ld   [hl], b                                     ; $51a4: $70
	cp   h                                           ; $51a5: $bc
	nop                                              ; $51a6: $00
	add  d                                           ; $51a7: $82
	inc  bc                                          ; $51a8: $03
	add  b                                           ; $51a9: $80
	inc  c                                           ; $51aa: $0c
	inc  bc                                          ; $51ab: $03
	ld   de, $1817                                   ; $51ac: $11 $17 $18
	ld   e, $80                                      ; $51af: $1e $80
	add  hl, de                                      ; $51b1: $19
	ld   [de], a                                     ; $51b2: $12
	ld   e, $1f                                      ; $51b3: $1e $1f
	ld   [hl], c                                     ; $51b5: $71
	ld   a, b                                        ; $51b6: $78
	adc  a                                           ; $51b7: $8f
	rst  $38                                         ; $51b8: $ff
	ldh  a, [$b8]                                    ; $51b9: $f0 $b8
	ld   [$1ff8], sp                                 ; $51bb: $08 $f8 $1f
	rst  JumpTable                                         ; $51be: $df
	jr   c, jr_08a_51fd                              ; $51bf: $38 $3c

	rst  ToBoot                                         ; $51c1: $c7
	db   $e3                                         ; $51c2: $e3
	ccf                                              ; $51c3: $3f
	rra                                              ; $51c4: $1f
	rst  $38                                         ; $51c5: $ff
	add  b                                           ; $51c6: $80
	db   $fc                                         ; $51c7: $fc
	ld   de, $03e0                                   ; $51c8: $11 $e0 $03
	inc  e                                           ; $51cb: $1c
	ldh  [c], a                                      ; $51cc: $e2
	or   $1d                                         ; $51cd: $f6 $1d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51cf: $cf
	ld   a, [$ddff]                                  ; $51d0: $fa $ff $dd
	ei                                               ; $51d3: $fb
	ld   h, d                                        ; $51d4: $62
	rst  $38                                         ; $51d5: $ff
	sbc  c                                           ; $51d6: $99
	ld   a, a                                        ; $51d7: $7f
	ld   h, [hl]                                     ; $51d8: $66
	rra                                              ; $51d9: $1f
	rst  $20                                         ; $51da: $e7
	add  e                                           ; $51db: $83
	nop                                              ; $51dc: $00
	add  b                                           ; $51dd: $80
	add  b                                           ; $51de: $80
	ld   [$c040], sp                                 ; $51df: $08 $40 $c0
	and  b                                           ; $51e2: $a0
	ldh  [$50], a                                    ; $51e3: $e0 $50
	ldh  a, [$28]                                    ; $51e5: $f0 $28
	ld   hl, sp-$50                                  ; $51e7: $f8 $b0
	add  c                                           ; $51e9: $81
	nop                                              ; $51ea: $00
	add  b                                           ; $51eb: $80
	rlca                                             ; $51ec: $07
	add  b                                           ; $51ed: $80
	jr   c, jr_08a_5170                              ; $51ee: $38 $80

	daa                                              ; $51f0: $27
	inc  bc                                          ; $51f1: $03
	jr   c, jr_08a_5233                              ; $51f2: $38 $3f

	cpl                                              ; $51f4: $2f
	dec  a                                           ; $51f5: $3d
	add  b                                           ; $51f6: $80
	ccf                                              ; $51f7: $3f
	ld   [de], a                                     ; $51f8: $12
	add  hl, bc                                      ; $51f9: $09
	rra                                              ; $51fa: $1f
	db   $e3                                         ; $51fb: $e3
	db   $fc                                         ; $51fc: $fc

jr_08a_51fd:
	cpl                                              ; $51fd: $2f
	ccf                                              ; $51fe: $3f
	push hl                                          ; $51ff: $e5
	rst  $28                                         ; $5200: $ef
	ld   [hl+], a                                    ; $5201: $22
	rst  $30                                         ; $5202: $f7
	pop  hl                                          ; $5203: $e1
	cp   e                                           ; $5204: $bb
	and  b                                           ; $5205: $a0
	cp   l                                           ; $5206: $bd
	or   b                                           ; $5207: $b0
	cp   [hl]                                        ; $5208: $be
	sbc  l                                           ; $5209: $9d
	rra                                              ; $520a: $1f
	rst  $38                                         ; $520b: $ff
	add  b                                           ; $520c: $80
	db   $fc                                         ; $520d: $fc
	add  b                                           ; $520e: $80
	cp   h                                           ; $520f: $bc
	add  b                                           ; $5210: $80
	inc  a                                           ; $5211: $3c
	rlca                                             ; $5212: $07
	cp   h                                           ; $5213: $bc
	ccf                                              ; $5214: $3f
	db   $fc                                         ; $5215: $fc
	cp   h                                           ; $5216: $bc
	rst  $38                                         ; $5217: $ff
	ld   e, e                                        ; $5218: $5b
	rst  $38                                         ; $5219: $ff
	add  b                                           ; $521a: $80
	add  c                                           ; $521b: $81
	nop                                              ; $521c: $00
	ld   l, $03                                      ; $521d: $2e $03
	nop                                              ; $521f: $00
	inc  e                                           ; $5220: $1c
	inc  bc                                          ; $5221: $03
	ld   h, e                                        ; $5222: $63
	rra                                              ; $5223: $1f
	sbc  a                                           ; $5224: $9f
	ld   a, b                                        ; $5225: $78
	ld   a, a                                        ; $5226: $7f
	rst  $20                                         ; $5227: $e7
	ld   hl, sp+$1f                                  ; $5228: $f8 $1f
	rst  $20                                         ; $522a: $e7
	rlca                                             ; $522b: $07
	ld   h, a                                        ; $522c: $67
	ld   e, $9f                                      ; $522d: $1e $9f
	ld   [hl], c                                     ; $522f: $71
	ld   a, [hl]                                     ; $5230: $7e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5231: $cf
	pop  af                                          ; $5232: $f1

jr_08a_5233:
	ccf                                              ; $5233: $3f
	ret  z                                           ; $5234: $c8

	rst  $38                                         ; $5235: $ff
	daa                                              ; $5236: $27
	ld   hl, sp-$68                                  ; $5237: $f8 $98
	ldh  [$9b], a                                    ; $5239: $e0 $9b
	db   $fc                                         ; $523b: $fc
	cp   d                                           ; $523c: $ba
	ld   a, [hl]                                     ; $523d: $7e
	or   d                                           ; $523e: $b2
	cp   $4c                                         ; $523f: $fe $4c
	db   $f4                                         ; $5241: $f4
	inc  [hl]                                        ; $5242: $34
	call nz, $34e4                                   ; $5243: $c4 $e4 $34
	ld   d, h                                        ; $5246: $54
	ld   h, h                                        ; $5247: $64
	and  h                                           ; $5248: $a4
	call nz, $3e92                                   ; $5249: $c4 $92 $3e
	dec  a                                           ; $524c: $3d
	add  c                                           ; $524d: $81
	ccf                                              ; $524e: $3f
	nop                                              ; $524f: $00
	ld   a, $84                                      ; $5250: $3e $84
	ccf                                              ; $5252: $3f
	ld   [$3b38], sp                                 ; $5253: $08 $38 $3b
	ccf                                              ; $5256: $3f
	ld   [hl], $bf                                   ; $5257: $36 $bf
	cp   h                                           ; $5259: $bc
	cp   a                                           ; $525a: $bf
	cp   [hl]                                        ; $525b: $be
	ccf                                              ; $525c: $3f
	add  b                                           ; $525d: $80
	cp   a                                           ; $525e: $bf
	inc  d                                           ; $525f: $14
	sbc  a                                           ; $5260: $9f
	cp   b                                           ; $5261: $b8
	ld   a, a                                        ; $5262: $7f
	ld   b, a                                        ; $5263: $47
	ld   hl, sp-$01                                  ; $5264: $f8 $ff
	rla                                              ; $5266: $17
	rst  $30                                         ; $5267: $f7
	and  a                                           ; $5268: $a7
	ld   a, h                                        ; $5269: $7c
	rra                                              ; $526a: $1f
	cp   a                                           ; $526b: $bf
	inc  c                                           ; $526c: $0c
	rst  JumpTable                                         ; $526d: $df
	ld   d, $ff                                      ; $526e: $16 $ff
	sub  c                                           ; $5270: $91
	ld   a, [hl]                                     ; $5271: $7e
	sbc  $fc                                         ; $5272: $de $fc
	ld   a, h                                        ; $5274: $7c
	add  c                                           ; $5275: $81
	db   $fc                                         ; $5276: $fc
	ld   a, [bc]                                     ; $5277: $0a
	ld   [$13ff], sp                                 ; $5278: $08 $ff $13
	db   $fc                                         ; $527b: $fc
	call z, $33f0                                    ; $527c: $cc $f0 $33
	jp   $bffc                                       ; $527f: $c3 $fc $bf


	add  e                                           ; $5282: $83
	add  b                                           ; $5283: $80
	cp   h                                           ; $5284: $bc
	inc  de                                          ; $5285: $13
	add  b                                           ; $5286: $80
	add  d                                           ; $5287: $82
	add  e                                           ; $5288: $83
	add  b                                           ; $5289: $80
	add  c                                           ; $528a: $81
	add  d                                           ; $528b: $82
	inc  bc                                          ; $528c: $03
	add  hl, bc                                      ; $528d: $09
	ld   c, $f1                                      ; $528e: $0e $f1

jr_08a_5290:
	rst  $38                                         ; $5290: $ff
	ld   [sRandomSeed], sp                                 ; $5291: $08 $ff $bf
	ld   h, b                                        ; $5294: $60
	and  b                                           ; $5295: $a0
	ret  nz                                          ; $5296: $c0

	ld   b, b                                        ; $5297: $40
	add  b                                           ; $5298: $80
	add  e                                           ; $5299: $83
	add  b                                           ; $529a: $80
	add  h                                           ; $529b: $84
	add  c                                           ; $529c: $81
	inc  b                                           ; $529d: $04
	add  b                                           ; $529e: $80
	db   $f4                                         ; $529f: $f4
	nop                                              ; $52a0: $00
	inc  b                                           ; $52a1: $04
	add  b                                           ; $52a2: $80
	db   $f4                                         ; $52a3: $f4
	ld   a, [bc]                                     ; $52a4: $0a
	inc  c                                           ; $52a5: $0c
	nop                                              ; $52a6: $00
	jr   nc, jr_08a_52a9                             ; $52a7: $30 $00

jr_08a_52a9:
	ret  nz                                          ; $52a9: $c0

	jr   jr_08a_52cb                                 ; $52aa: $18 $1f

	ld   bc, $0007                                   ; $52ac: $01 $07 $00
	ld   bc, $0088                                   ; $52af: $01 $88 $00
	dec  c                                           ; $52b2: $0d
	ld   [$f7fb], sp                                 ; $52b3: $08 $fb $f7
	rst  $38                                         ; $52b6: $ff
	ld   a, a                                        ; $52b7: $7f
	db   $fd                                         ; $52b8: $fd
	dec  de                                          ; $52b9: $1b
	ld   a, [hl]                                     ; $52ba: $7e
	dec  b                                           ; $52bb: $05
	rra                                              ; $52bc: $1f
	nop                                              ; $52bd: $00
	rlca                                             ; $52be: $07
	nop                                              ; $52bf: $00
	ld   bc, $0080                                   ; $52c0: $01 $80 $00
	nop                                              ; $52c3: $00
	rla                                              ; $52c4: $17
	add  [hl]                                        ; $52c5: $86
	db   $fc                                         ; $52c6: $fc
	add  b                                           ; $52c7: $80

jr_08a_52c8:
	ld   a, h                                        ; $52c8: $7c
	inc  e                                           ; $52c9: $1c
	db   $fc                                         ; $52ca: $fc

jr_08a_52cb:
	ld   a, h                                        ; $52cb: $7c
	db   $fc                                         ; $52cc: $fc
	inc  e                                           ; $52cd: $1c
	ld   a, h                                        ; $52ce: $7c
	ldh  a, [$86]                                    ; $52cf: $f0 $86
	adc  d                                           ; $52d1: $8a
	adc  h                                           ; $52d2: $8c
	sub  h                                           ; $52d3: $94
	sbc  b                                           ; $52d4: $98
	xor  b                                           ; $52d5: $a8
	or   b                                           ; $52d6: $b0
	sub  b                                           ; $52d7: $90

jr_08a_52d8:
	and  e                                           ; $52d8: $a3
	and  b                                           ; $52d9: $a0
	adc  h                                           ; $52da: $8c
	add  b                                           ; $52db: $80
	or   b                                           ; $52dc: $b0
	add  b                                           ; $52dd: $80

jr_08a_52de:
	ret  nz                                          ; $52de: $c0

	rst  $38                                         ; $52df: $ff
	inc  bc                                          ; $52e0: $03
	nop                                              ; $52e1: $00
	inc  c                                           ; $52e2: $0c
	nop                                              ; $52e3: $00

jr_08a_52e4:
	jr   nc, jr_08a_52e6                             ; $52e4: $30 $00

jr_08a_52e6:
	ret  nz                                          ; $52e6: $c0

	or   [hl]                                        ; $52e7: $b6
	nop                                              ; $52e8: $00
	add  b                                           ; $52e9: $80
	rra                                              ; $52ea: $1f
	rst  $38                                         ; $52eb: $ff
	nop                                              ; $52ec: $00
	adc  l                                           ; $52ed: $8d
	nop                                              ; $52ee: $00
	add  b                                           ; $52ef: $80
	inc  bc                                          ; $52f0: $03
	add  b                                           ; $52f1: $80
	ld   [$0084], sp                                 ; $52f2: $08 $84 $00
	add  b                                           ; $52f5: $80
	rlca                                             ; $52f6: $07
	sub  b                                           ; $52f7: $90
	nop                                              ; $52f8: $00
	add  b                                           ; $52f9: $80
	ld   b, b                                        ; $52fa: $40
	add  d                                           ; $52fb: $82
	nop                                              ; $52fc: $00
	add  b                                           ; $52fd: $80
	inc  bc                                          ; $52fe: $03
	add  b                                           ; $52ff: $80
	inc  e                                           ; $5300: $1c
	add  b                                           ; $5301: $80
	ldh  [$94], a                                    ; $5302: $e0 $94
	nop                                              ; $5304: $00
	add  b                                           ; $5305: $80
	ld   [$3080], sp                                 ; $5306: $08 $80 $30
	xor  [hl]                                        ; $5309: $ae
	nop                                              ; $530a: $00
	add  b                                           ; $530b: $80
	rlca                                             ; $530c: $07
	add  b                                           ; $530d: $80
	jr   jr_08a_5290                                 ; $530e: $18 $80

	nop                                              ; $5310: $00
	add  b                                           ; $5311: $80
	ld   [bc], a                                     ; $5312: $02
	add  b                                           ; $5313: $80
	nop                                              ; $5314: $00
	add  b                                           ; $5315: $80
	ld   bc, $0088                                   ; $5316: $01 $88 $00
	add  b                                           ; $5319: $80
	rlca                                             ; $531a: $07
	add  d                                           ; $531b: $82
	nop                                              ; $531c: $00
	add  b                                           ; $531d: $80
	inc  bc                                          ; $531e: $03
	add  b                                           ; $531f: $80
	ret  nz                                          ; $5320: $c0

	add  b                                           ; $5321: $80
	db   $10                                         ; $5322: $10
	add  b                                           ; $5323: $80
	ld   [$4480], sp                                 ; $5324: $08 $80 $44
	add  b                                           ; $5327: $80
	ld   b, d                                        ; $5328: $42
	add  b                                           ; $5329: $80
	ld   b, c                                        ; $532a: $41
	add  d                                           ; $532b: $82
	ld   b, b                                        ; $532c: $40
	add  b                                           ; $532d: $80
	ret  nz                                          ; $532e: $c0

	add  b                                           ; $532f: $80
	ld   b, b                                        ; $5330: $40
	add  b                                           ; $5331: $80
	ld   b, a                                        ; $5332: $47
	add  b                                           ; $5333: $80
	cp   b                                           ; $5334: $b8
	add  b                                           ; $5335: $80
	nop                                              ; $5336: $00
	add  b                                           ; $5337: $80
	ld   [$e080], sp                                 ; $5338: $08 $80 $e0
	add  [hl]                                        ; $533b: $86
	nop                                              ; $533c: $00
	add  b                                           ; $533d: $80
	inc  bc                                          ; $533e: $03
	add  d                                           ; $533f: $82
	nop                                              ; $5340: $00
	add  b                                           ; $5341: $80
	add  e                                           ; $5342: $83
	add  b                                           ; $5343: $80
	ld   b, b                                        ; $5344: $40
	add  b                                           ; $5345: $80
	jr   nz, jr_08a_52c8                             ; $5346: $20 $80

	nop                                              ; $5348: $00
	add  b                                           ; $5349: $80
	add  b                                           ; $534a: $80
	adc  b                                           ; $534b: $88
	nop                                              ; $534c: $00
	add  b                                           ; $534d: $80
	inc  bc                                          ; $534e: $03
	add  b                                           ; $534f: $80
	inc  e                                           ; $5350: $1c
	add  b                                           ; $5351: $80
	ld   h, b                                        ; $5352: $60
	add  b                                           ; $5353: $80
	add  a                                           ; $5354: $87
	add  b                                           ; $5355: $80
	jr   jr_08a_52d8                                 ; $5356: $18 $80

	ldh  [$8e], a                                    ; $5358: $e0 $8e
	nop                                              ; $535a: $00
	add  b                                           ; $535b: $80
	jr   jr_08a_52de                                 ; $535c: $18 $80

	ld   h, c                                        ; $535e: $61
	add  b                                           ; $535f: $80
	adc  [hl]                                        ; $5360: $8e
	add  b                                           ; $5361: $80
	jr   nc, jr_08a_52e4                             ; $5362: $30 $80

	ret  nz                                          ; $5364: $c0

jr_08a_5365:
	sub  [hl]                                        ; $5365: $96
	nop                                              ; $5366: $00
	add  b                                           ; $5367: $80
	add  b                                           ; $5368: $80
	cp   d                                           ; $5369: $ba
	nop                                              ; $536a: $00
	add  b                                           ; $536b: $80
	inc  b                                           ; $536c: $04
	add  b                                           ; $536d: $80
	nop                                              ; $536e: $00
	add  b                                           ; $536f: $80
	ld   [bc], a                                     ; $5370: $02
	add  b                                           ; $5371: $80
	ld   bc, $009e                                   ; $5372: $01 $9e $00
	add  b                                           ; $5375: $80
	add  b                                           ; $5376: $80
	rst  $38                                         ; $5377: $ff
	nop                                              ; $5378: $00
	rst  $38                                         ; $5379: $ff
	nop                                              ; $537a: $00
	rst  $38                                         ; $537b: $ff
	nop                                              ; $537c: $00
	rst  $38                                         ; $537d: $ff
	nop                                              ; $537e: $00
	rst  $38                                         ; $537f: $ff
	nop                                              ; $5380: $00
	rst  $28                                         ; $5381: $ef
	nop                                              ; $5382: $00
	and  c                                           ; $5383: $a1
	nop                                              ; $5384: $00
	sbc  d                                           ; $5385: $9a
	nop                                              ; $5386: $00
	add  b                                           ; $5387: $80
	ld   bc, $0702                                   ; $5388: $01 $02 $07
	ld   b, $01                                      ; $538b: $06 $01
	add  a                                           ; $538d: $87
	nop                                              ; $538e: $00
	add  b                                           ; $538f: $80
	rrca                                             ; $5390: $0f
	nop                                              ; $5391: $00
	rst  $38                                         ; $5392: $ff
	add  b                                           ; $5393: $80
	ldh  a, [rSB]                                    ; $5394: $f0 $01
	ld   b, b                                        ; $5396: $40
	cp   a                                           ; $5397: $bf
	add  a                                           ; $5398: $87
	nop                                              ; $5399: $00
	add  b                                           ; $539a: $80
	ldh  [rP1], a                                    ; $539b: $e0 $00
	rst  $38                                         ; $539d: $ff
	add  b                                           ; $539e: $80
	rra                                              ; $539f: $1f
	ld   bc, $fb04                                   ; $53a0: $01 $04 $fb
	adc  e                                           ; $53a3: $8b
	nop                                              ; $53a4: $00
	add  b                                           ; $53a5: $80
	ret  nz                                          ; $53a6: $c0

	sbc  [hl]                                        ; $53a7: $9e
	nop                                              ; $53a8: $00
	ld   [bc], a                                     ; $53a9: $02
	rrca                                             ; $53aa: $0f
	ld   [$8018], sp                                 ; $53ab: $08 $18 $80
	db   $10                                         ; $53ae: $10
	ld   bc, $3111                                   ; $53af: $01 $11 $31

jr_08a_53b2:
	add  c                                           ; $53b2: $81
	ld   [hl+], a                                    ; $53b3: $22
	nop                                              ; $53b4: $00
	ld   h, d                                        ; $53b5: $62
	add  b                                           ; $53b6: $80
	ld   b, [hl]                                     ; $53b7: $46
	inc  bc                                          ; $53b8: $03
	ld   b, h                                        ; $53b9: $44
	ld   c, h                                        ; $53ba: $4c
	ld   b, h                                        ; $53bb: $44
	ret  nc                                          ; $53bc: $d0

	add  b                                           ; $53bd: $80

jr_08a_53be:
	add  h                                           ; $53be: $84
	add  b                                           ; $53bf: $80
	inc  b                                           ; $53c0: $04
	nop                                              ; $53c1: $00
	inc  e                                           ; $53c2: $1c
	add  d                                           ; $53c3: $82
	nop                                              ; $53c4: $00
	ld   b, $20                                      ; $53c5: $06 $20
	db   $10                                         ; $53c7: $10
	jr   nc, jr_08a_5401                             ; $53c8: $30 $37

	jr   nc, jr_08a_53e4                             ; $53ca: $30 $18

	rra                                              ; $53cc: $1f
	add  b                                           ; $53cd: $80
	ld   [bc], a                                     ; $53ce: $02
	add  b                                           ; $53cf: $80
	nop                                              ; $53d0: $00
	add  b                                           ; $53d1: $80
	ld   bc, $0081                                   ; $53d2: $01 $81 $00
	ld   [$0810], sp                                 ; $53d5: $08 $10 $08
	jr   jr_08a_53b2                                 ; $53d8: $18 $d8

	jr   jr_08a_540c                                 ; $53da: $18 $30

	rst  $28                                         ; $53dc: $ef
	jr   nz, @+$32                                   ; $53dd: $20 $30

	add  c                                           ; $53df: $81
	stop                                             ; $53e0: $10 $00
	jr   jr_08a_5365                                 ; $53e2: $18 $81

jr_08a_53e4:
	adc  b                                           ; $53e4: $88
	nop                                              ; $53e5: $00
	adc  h                                           ; $53e6: $8c
	add  b                                           ; $53e7: $80
	call nz, Call_08a_4403                           ; $53e8: $c4 $03 $44
	ld   h, h                                        ; $53eb: $64
	ld   b, h                                        ; $53ec: $44
	sbc  b                                           ; $53ed: $98
	sbc  l                                           ; $53ee: $9d
	nop                                              ; $53ef: $00
	nop                                              ; $53f0: $00
	ld   b, a                                        ; $53f1: $47
	add  c                                           ; $53f2: $81
	ld   b, h                                        ; $53f3: $44
	inc  bc                                          ; $53f4: $03
	ld   h, [hl]                                     ; $53f5: $66
	ld   h, h                                        ; $53f6: $64
	dec  a                                           ; $53f7: $3d
	inc  a                                           ; $53f8: $3c
	add  b                                           ; $53f9: $80
	ld   [bc], a                                     ; $53fa: $02
	add  b                                           ; $53fb: $80
	ld   bc, $0380                                   ; $53fc: $01 $80 $03
	ld   [bc], a                                     ; $53ff: $02
	rlca                                             ; $5400: $07

jr_08a_5401:
	inc  b                                           ; $5401: $04
	ldh  [$81], a                                    ; $5402: $e0 $81
	inc  hl                                          ; $5404: $23
	ld   [bc], a                                     ; $5405: $02
	ld   bc, $c141                                   ; $5406: $01 $41 $c1
	add  b                                           ; $5409: $80
	ld   b, c                                        ; $540a: $41
	rlca                                             ; $540b: $07

jr_08a_540c:
	ld   h, a                                        ; $540c: $67
	call nz, $a2bf                                   ; $540d: $c4 $bf $a2
	ld   a, a                                        ; $5410: $7f
	ld   b, d                                        ; $5411: $42
	jp   nz, $818f                                   ; $5412: $c2 $8f $81

	adc  b                                           ; $5415: $88
	ld   [bc], a                                     ; $5416: $02
	nop                                              ; $5417: $00
	inc  b                                           ; $5418: $04
	rlca                                             ; $5419: $07
	add  b                                           ; $541a: $80
	inc  b                                           ; $541b: $04
	rlca                                             ; $541c: $07
	call z, $fb43                                    ; $541d: $cc $43 $fb
	add  a                                           ; $5420: $87
	db   $f4                                         ; $5421: $f4
	add  h                                           ; $5422: $84
	add  [hl]                                        ; $5423: $86
	push bc                                          ; $5424: $c5
	add  c                                           ; $5425: $81
	ld   b, h                                        ; $5426: $44
	ld   bc, $4ccc                                   ; $5427: $01 $cc $4c
	add  b                                           ; $542a: $80
	ld   a, b                                        ; $542b: $78
	add  d                                           ; $542c: $82
	add  b                                           ; $542d: $80
	add  b                                           ; $542e: $80
	ret  nz                                          ; $542f: $c0

	ld   [bc], a                                     ; $5430: $02
	ldh  [$60], a                                    ; $5431: $e0 $60
	add  b                                           ; $5433: $80
	sbc  l                                           ; $5434: $9d
	nop                                              ; $5435: $00
	inc  b                                           ; $5436: $04
	rrca                                             ; $5437: $0f
	ld   [$1018], sp                                 ; $5438: $08 $18 $10
	jr   nc, jr_08a_53be                             ; $543b: $30 $81

	jr   nz, jr_08a_543f                             ; $543d: $20 $00

jr_08a_543f:
	ld   h, b                                        ; $543f: $60
	add  c                                           ; $5440: $81
	ld   b, d                                        ; $5441: $42
	nop                                              ; $5442: $00
	jp   nz, $8480                                   ; $5443: $c2 $80 $84

	ld   [bc], a                                     ; $5446: $02
	db   $e4                                         ; $5447: $e4
	sub  l                                           ; $5448: $95
	adc  [hl]                                        ; $5449: $8e
	add  b                                           ; $544a: $80
	jp   $c504                                       ; $544b: $c3 $04 $c5


	ld   b, l                                        ; $544e: $45
	ld   a, e                                        ; $544f: $7b
	dec  sp                                          ; $5450: $3b
	ld   [bc], a                                     ; $5451: $02
	add  e                                           ; $5452: $83
	ld   b, d                                        ; $5453: $42
	add  b                                           ; $5454: $80
	ld   [hl], d                                     ; $5455: $72
	ld   bc, $e263                                   ; $5456: $01 $63 $e2
	add  b                                           ; $5459: $80
	add  [hl]                                        ; $545a: $86
	add  b                                           ; $545b: $80
	call z, $b601                                    ; $545c: $cc $01 $b6
	or   h                                           ; $545f: $b4
	add  b                                           ; $5460: $80
	add  h                                           ; $5461: $84
	add  b                                           ; $5462: $80
	adc  h                                           ; $5463: $8c
	add  b                                           ; $5464: $80
	or   b                                           ; $5465: $b0
	ld   b, $e4                                      ; $5466: $06 $e4
	ldh  [$f7], a                                    ; $5468: $e0 $f7
	db   $10                                         ; $546a: $10
	jr   jr_08a_5475                                 ; $546b: $18 $08

	inc  c                                           ; $546d: $0c
	add  c                                           ; $546e: $81
	inc  b                                           ; $546f: $04
	nop                                              ; $5470: $00
	ld   b, $81                                      ; $5471: $06 $81
	ld   b, d                                        ; $5473: $42
	nop                                              ; $5474: $00

jr_08a_5475:
	ld   b, e                                        ; $5475: $43
	add  b                                           ; $5476: $80
	ld   hl, $2701                                   ; $5477: $21 $01 $27
	ret  c                                           ; $547a: $d8

	sub  l                                           ; $547b: $95
	nop                                              ; $547c: $00
	add  h                                           ; $547d: $84
	ld   bc, $0080                                   ; $547e: $01 $80 $00
	ld   b, $9f                                      ; $5481: $06 $9f
	db   $f4                                         ; $5483: $f4
	inc  h                                           ; $5484: $24
	ld   a, h                                        ; $5485: $7c
	ld   c, h                                        ; $5486: $4c
	ld   a, h                                        ; $5487: $7c
	db   $fc                                         ; $5488: $fc
	add  b                                           ; $5489: $80
	adc  h                                           ; $548a: $8c
	dec  bc                                          ; $548b: $0b
	ld   [hl], d                                     ; $548c: $72
	ld   [bc], a                                     ; $548d: $02
	ld   sp, hl                                      ; $548e: $f9
	ld   [hl], c                                     ; $548f: $71
	db   $fc                                         ; $5490: $fc
	ld   a, b                                        ; $5491: $78
	cp   $b3                                         ; $5492: $fe $b3
	ld   c, $30                                      ; $5494: $0e $30
	nop                                              ; $5496: $00
	rrca                                             ; $5497: $0f
	add  [hl]                                        ; $5498: $86
	nop                                              ; $5499: $00
	ld   bc, $e080                                   ; $549a: $01 $80 $e0
	add  b                                           ; $549d: $80
	add  b                                           ; $549e: $80
	ld   bc, $6000                                   ; $549f: $01 $00 $60
	adc  b                                           ; $54a2: $88
	nop                                              ; $54a3: $00
	ld   bc, $0701                                   ; $54a4: $01 $01 $07
	add  b                                           ; $54a7: $80
	ld   bc, $2f05                                   ; $54a8: $01 $05 $2f
	inc  h                                           ; $54ab: $24
	ld   a, $32                                      ; $54ac: $3e $32
	ld   a, $3f                                      ; $54ae: $3e $3f
	add  b                                           ; $54b0: $80
	ld   sp, $4e07                                   ; $54b1: $31 $07 $4e
	ld   b, b                                        ; $54b4: $40
	sbc  a                                           ; $54b5: $9f
	adc  [hl]                                        ; $54b6: $8e
	ccf                                              ; $54b7: $3f
	ld   e, $7f                                      ; $54b8: $1e $7f
	cp   [hl]                                        ; $54ba: $be
	add  l                                           ; $54bb: $85
	nop                                              ; $54bc: $00
	add  h                                           ; $54bd: $84
	add  b                                           ; $54be: $80
	sub  b                                           ; $54bf: $90
	nop                                              ; $54c0: $00
	rlca                                             ; $54c1: $07
	add  e                                           ; $54c2: $83

jr_08a_54c3:
	cp   $3e                                         ; $54c3: $fe $3e
	ld   a, [hl]                                     ; $54c5: $7e
	ld   a, [bc]                                     ; $54c6: $0a
	inc  a                                           ; $54c7: $3c
	inc  b                                           ; $54c8: $04
	rrca                                             ; $54c9: $0f
	add  [hl]                                        ; $54ca: $86
	nop                                              ; $54cb: $00
	dec  b                                           ; $54cc: $05
	rst  ToBoot                                         ; $54cd: $c7
	ld   b, b                                        ; $54ce: $40
	ld   b, a                                        ; $54cf: $47
	ld   b, b                                        ; $54d0: $40
	ld   [hl], b                                     ; $54d1: $70
	ldh  a, [$80]                                    ; $54d2: $f0 $80
	rrca                                             ; $54d4: $0f
	add  [hl]                                        ; $54d5: $86
	nop                                              ; $54d6: $00
	dec  b                                           ; $54d7: $05
	db   $e3                                         ; $54d8: $e3
	ld   [bc], a                                     ; $54d9: $02
	ldh  [c], a                                      ; $54da: $e2

jr_08a_54db:
	ld   [bc], a                                     ; $54db: $02
	ld   c, $0f                                      ; $54dc: $0e $0f
	add  b                                           ; $54de: $80
	ldh  a, [$86]                                    ; $54df: $f0 $86
	nop                                              ; $54e1: $00
	rlca                                             ; $54e2: $07
	pop  bc                                          ; $54e3: $c1
	ld   a, a                                        ; $54e4: $7f
	ld   a, h                                        ; $54e5: $7c
	ld   a, [hl]                                     ; $54e6: $7e
	ld   d, b                                        ; $54e7: $50
	inc  a                                           ; $54e8: $3c
	jr   nz, jr_08a_54db                             ; $54e9: $20 $f0

	call nc, $8000                                   ; $54eb: $d4 $00 $80
	ld   [$00dc], sp                                 ; $54ee: $08 $dc $00
	add  b                                           ; $54f1: $80
	jr   nz, @-$40                                   ; $54f2: $20 $be

	nop                                              ; $54f4: $00
	add  d                                           ; $54f5: $82
	jr   c, @-$7e                                    ; $54f6: $38 $80

	ld   a, [de]                                     ; $54f8: $1a
	add  b                                           ; $54f9: $80
	inc  bc                                          ; $54fa: $03
	add  b                                           ; $54fb: $80
	ld   bc, $009a                                   ; $54fc: $01 $9a $00
	add  d                                           ; $54ff: $82
	add  b                                           ; $5500: $80
	add  e                                           ; $5501: $83
	nop                                              ; $5502: $00
	add  b                                           ; $5503: $80
	dec  a                                           ; $5504: $3d
	ld   [$7d71], sp                                 ; $5505: $08 $71 $7d
	jr   nc, jr_08a_5548                             ; $5508: $30 $3e

	jr   c, jr_08a_554a                              ; $550a: $38 $3e

	nop                                              ; $550c: $00
	add  hl, de                                      ; $550d: $19
	ld   hl, $3d83                                   ; $550e: $21 $83 $3d
	ld   bc, $0c0d                                   ; $5511: $01 $0d $0c
	add  e                                           ; $5514: $83
	nop                                              ; $5515: $00
	add  d                                           ; $5516: $82
	inc  bc                                          ; $5517: $03
	add  b                                           ; $5518: $80
	inc  b                                           ; $5519: $04
	ld   [bc], a                                     ; $551a: $02
	ld   [$0800], sp                                 ; $551b: $08 $00 $08
	add  b                                           ; $551e: $80
	ld   a, b                                        ; $551f: $78
	ld   c, $1c                                      ; $5520: $0e $1c
	ld   a, h                                        ; $5522: $7c
	jr   jr_08a_559f                                 ; $5523: $18 $7a

	ld   [hl-], a                                    ; $5525: $32
	ld   [hl], b                                     ; $5526: $70
	ld   [$1828], sp                                 ; $5527: $08 $28 $18
	ld   a, b                                        ; $552a: $78
	ld   [hl], b                                     ; $552b: $70
	ld   a, h                                        ; $552c: $7c
	ld   c, h                                        ; $552d: $4c
	ld   e, b                                        ; $552e: $58
	jr   @-$7c                                       ; $552f: $18 $82

	jr   c, @-$7e                                    ; $5531: $38 $80

	or   b                                           ; $5533: $b0
	add  b                                           ; $5534: $80
	add  b                                           ; $5535: $80
	or   $00                                         ; $5536: $f6 $00
	add  b                                           ; $5538: $80
	ld   sp, $0f80                                   ; $5539: $31 $80 $0f
	adc  b                                           ; $553c: $88
	nop                                              ; $553d: $00
	add  b                                           ; $553e: $80
	ld   h, b                                        ; $553f: $60
	add  b                                           ; $5540: $80
	jr   c, jr_08a_54c3                              ; $5541: $38 $80

	ccf                                              ; $5543: $3f
	add  b                                           ; $5544: $80
	rrca                                             ; $5545: $0f
	adc  b                                           ; $5546: $88
	nop                                              ; $5547: $00

jr_08a_5548:
	add  b                                           ; $5548: $80
	ld   h, b                                        ; $5549: $60

jr_08a_554a:
	adc  d                                           ; $554a: $8a
	nop                                              ; $554b: $00
	add  b                                           ; $554c: $80
	ld   b, $80                                      ; $554d: $06 $80
	inc  e                                           ; $554f: $1c
	add  b                                           ; $5550: $80
	db   $fc                                         ; $5551: $fc
	add  b                                           ; $5552: $80
	ldh  a, [rIE]                                    ; $5553: $f0 $ff
	nop                                              ; $5555: $00
	rst  $38                                         ; $5556: $ff
	nop                                              ; $5557: $00
	rst  $38                                         ; $5558: $ff
	nop                                              ; $5559: $00
	rst  $38                                         ; $555a: $ff
	nop                                              ; $555b: $00
	rst  $38                                         ; $555c: $ff
	nop                                              ; $555d: $00
	jp   Jump_08a_6d00                               ; $555e: $c3 $00 $6d


	nop                                              ; $5561: $00
	adc  b                                           ; $5562: $88
	nop                                              ; $5563: $00
	nop                                              ; $5564: $00
	rrca                                             ; $5565: $0f
	add  e                                           ; $5566: $83
	nop                                              ; $5567: $00
	nop                                              ; $5568: $00
	rrca                                             ; $5569: $0f
	add  a                                           ; $556a: $87
	nop                                              ; $556b: $00
	nop                                              ; $556c: $00
	rst  $38                                         ; $556d: $ff
	add  e                                           ; $556e: $83
	nop                                              ; $556f: $00
	nop                                              ; $5570: $00
	rst  $38                                         ; $5571: $ff
	add  a                                           ; $5572: $87
	nop                                              ; $5573: $00
	nop                                              ; $5574: $00
	rst  $38                                         ; $5575: $ff
	add  c                                           ; $5576: $81
	nop                                              ; $5577: $00
	ld   [bc], a                                     ; $5578: $02
	rlca                                             ; $5579: $07
	nop                                              ; $557a: $00
	ld   hl, sp-$79                                  ; $557b: $f8 $87
	nop                                              ; $557d: $00
	nop                                              ; $557e: $00

jr_08a_557f:
	rst  $38                                         ; $557f: $ff
	add  c                                           ; $5580: $81
	nop                                              ; $5581: $00
	ld   [bc], a                                     ; $5582: $02
	ret  nz                                          ; $5583: $c0

	nop                                              ; $5584: $00
	ccf                                              ; $5585: $3f
	add  a                                           ; $5586: $87
	nop                                              ; $5587: $00
	nop                                              ; $5588: $00
	rst  $38                                         ; $5589: $ff
	add  e                                           ; $558a: $83
	nop                                              ; $558b: $00
	nop                                              ; $558c: $00
	rst  $38                                         ; $558d: $ff
	add  a                                           ; $558e: $87
	nop                                              ; $558f: $00
	nop                                              ; $5590: $00
	ldh  a, [$83]                                    ; $5591: $f0 $83
	nop                                              ; $5593: $00
	nop                                              ; $5594: $00

jr_08a_5595:
	rst  $38                                         ; $5595: $ff
	add  a                                           ; $5596: $87
	nop                                              ; $5597: $00
	ld   [bc], a                                     ; $5598: $02
	rlca                                             ; $5599: $07
	nop                                              ; $559a: $00
	ld   [$0081], sp                                 ; $559b: $08 $81 $00
	nop                                              ; $559e: $00

jr_08a_559f:
	rst  $38                                         ; $559f: $ff
	add  l                                           ; $55a0: $85
	nop                                              ; $55a1: $00

jr_08a_55a2:
	dec  bc                                          ; $55a2: $0b
	ld   hl, sp+$00                                  ; $55a3: $f8 $00
	ld   b, $00                                      ; $55a5: $06 $00
	rrca                                             ; $55a7: $0f
	nop                                              ; $55a8: $00
	ld   a, [bc]                                     ; $55a9: $0a
	nop                                              ; $55aa: $00
	ei                                               ; $55ab: $fb
	rra                                              ; $55ac: $1f
	ld   l, $0e                                      ; $55ad: $2e $0e
	add  b                                           ; $55af: $80
	ld   l, $02                                      ; $55b0: $2e $02
	ld   [hl-], a                                    ; $55b2: $32
	inc  [hl]                                        ; $55b3: $34
	ld   sp, $6080                                   ; $55b4: $31 $80 $60
	ld   a, [bc]                                     ; $55b7: $0a
	ld   a, b                                        ; $55b8: $78
	ld   e, h                                        ; $55b9: $5c
	ld   e, b                                        ; $55ba: $58
	jp   c, $de50                                    ; $55bb: $da $50 $de

	ret  nc                                          ; $55be: $d0

	ld   a, b                                        ; $55bf: $78
	ld   [hl], b                                     ; $55c0: $70
	jr   c, jr_08a_557f                              ; $55c1: $38 $bc

	add  b                                           ; $55c3: $80
	inc  a                                           ; $55c4: $3c
	ld   [$5436], sp                                 ; $55c5: $08 $36 $54
	ld   [hl], c                                     ; $55c8: $71
	ld   b, b                                        ; $55c9: $40
	ld   c, b                                        ; $55ca: $48
	jr   z, jr_08a_5609                              ; $55cb: $28 $3c

	inc  b                                           ; $55cd: $04
	ld   [hl], a                                     ; $55ce: $77
	add  c                                           ; $55cf: $81
	nop                                              ; $55d0: $00
	inc  c                                           ; $55d1: $0c
	ccf                                              ; $55d2: $3f
	ld   e, $5e                                      ; $55d3: $1e $5e
	ccf                                              ; $55d5: $3f
	cp   a                                           ; $55d6: $bf
	rst  $38                                         ; $55d7: $ff
	ld   sp, hl                                      ; $55d8: $f9
	ld   l, b                                        ; $55d9: $68
	ld   d, b                                        ; $55da: $50
	nop                                              ; $55db: $00
	inc  d                                           ; $55dc: $14
	nop                                              ; $55dd: $00
	jp   c, $0083                                    ; $55de: $da $83 $00

	add  b                                           ; $55e1: $80
	add  b                                           ; $55e2: $80
	inc  c                                           ; $55e3: $0c
	ldh  [$c0], a                                    ; $55e4: $e0 $c0
	jr   nz, jr_08a_55e8                             ; $55e6: $20 $00

jr_08a_55e8:
	jr   nz, jr_08a_55ea                             ; $55e8: $20 $00

jr_08a_55ea:
	ldh  [rP1], a                                    ; $55ea: $e0 $00
	jr   nc, jr_08a_55ee                             ; $55ec: $30 $00

jr_08a_55ee:
	inc  c                                           ; $55ee: $0c
	ld   bc, $800d                                   ; $55ef: $01 $0d $80
	ld   bc, $0380                                   ; $55f2: $01 $80 $03
	add  b                                           ; $55f5: $80
	nop                                              ; $55f6: $00
	dec  b                                           ; $55f7: $05
	ld   [bc], a                                     ; $55f8: $02
	ld   a, [bc]                                     ; $55f9: $0a
	inc  b                                           ; $55fa: $04
	dec  c                                           ; $55fb: $0d
	inc  c                                           ; $55fc: $0c
	dec  c                                           ; $55fd: $0d
	add  d                                           ; $55fe: $82
	nop                                              ; $55ff: $00
	db   $10                                         ; $5600: $10
	ret  nz                                          ; $5601: $c0

	nop                                              ; $5602: $00
	inc  e                                           ; $5603: $1c
	dec  a                                           ; $5604: $3d
	ld   [de], a                                     ; $5605: $12
	dec  d                                           ; $5606: $15
	db   $10                                         ; $5607: $10
	adc  e                                           ; $5608: $8b

jr_08a_5609:
	ld   [bc], a                                     ; $5609: $02
	ld   bc, $0b00                                   ; $560a: $01 $00 $0b
	ld   [hl], d                                     ; $560d: $72
	inc  h                                           ; $560e: $24
	jr   nz, jr_08a_5635                             ; $560f: $20 $24

	jr   z, jr_08a_5595                              ; $5611: $28 $82

	add  hl, hl                                      ; $5613: $29
	ld   a, [bc]                                     ; $5614: $0a
	inc  l                                           ; $5615: $2c
	inc  h                                           ; $5616: $24
	ld   b, [hl]                                     ; $5617: $46
	nop                                              ; $5618: $00
	ld   hl, $c622                                   ; $5619: $21 $22 $c6
	ld   h, h                                        ; $561c: $64
	inc  l                                           ; $561d: $2c
	inc  e                                           ; $561e: $1c
	jr   c, jr_08a_55a2                              ; $561f: $38 $81

	jr   jr_08a_563b                                 ; $5621: $18 $18

	sub  d                                           ; $5623: $92
	ld   [bc], a                                     ; $5624: $02
	or   d                                           ; $5625: $b2
	ld   [hl-], a                                    ; $5626: $32
	ld   [hl], e                                     ; $5627: $73
	ld   [de], a                                     ; $5628: $12
	adc  c                                           ; $5629: $89
	ret  z                                           ; $562a: $c8

	sbc  e                                           ; $562b: $9b
	nop                                              ; $562c: $00
	and  b                                           ; $562d: $a0
	nop                                              ; $562e: $00
	add  b                                           ; $562f: $80
	inc  b                                           ; $5630: $04
	inc  d                                           ; $5631: $14
	inc  b                                           ; $5632: $04
	ld   l, $2a                                      ; $5633: $2e $2a

jr_08a_5635:
	xor  b                                           ; $5635: $a8
	inc  d                                           ; $5636: $14
	ret  c                                           ; $5637: $d8

	db   $10                                         ; $5638: $10
	ret  nz                                          ; $5639: $c0

	nop                                              ; $563a: $00

jr_08a_563b:
	cp   a                                           ; $563b: $bf
	add  e                                           ; $563c: $83
	nop                                              ; $563d: $00
	dec  b                                           ; $563e: $05
	ldh  [rP1], a                                    ; $563f: $e0 $00
	jr   nz, jr_08a_5643                             ; $5641: $20 $00

jr_08a_5643:
	ld   b, b                                        ; $5643: $40
	nop                                              ; $5644: $00
	add  b                                           ; $5645: $80
	ld   b, b                                        ; $5646: $40
	inc  b                                           ; $5647: $04
	ld   h, b                                        ; $5648: $60
	ld   b, b                                        ; $5649: $40
	call nz, $0d09                                   ; $564a: $c4 $09 $0d
	add  h                                           ; $564d: $84
	ld   [$0c80], sp                                 ; $564e: $08 $80 $0c
	add  b                                           ; $5651: $80
	dec  c                                           ; $5652: $0d
	inc  e                                           ; $5653: $1c
	inc  c                                           ; $5654: $0c
	dec  c                                           ; $5655: $0d
	ld   [$02fd], sp                                 ; $5656: $08 $fd $02
	ld   e, b                                        ; $5659: $58
	ld   b, c                                        ; $565a: $41
	call nc, $3b04                                   ; $565b: $d4 $04 $3b
	add  hl, bc                                      ; $565e: $09
	ld   b, $00                                      ; $565f: $06 $00
	ld   c, l                                        ; $5661: $4d
	ld   bc, $0367                                   ; $5662: $01 $67 $03
	dec  bc                                          ; $5665: $0b
	add  a                                           ; $5666: $87
	or   [hl]                                        ; $5667: $b6
	ld   [de], a                                     ; $5668: $12
	inc  c                                           ; $5669: $0c
	inc  b                                           ; $566a: $04
	ld   a, l                                        ; $566b: $7d
	ld   a, $46                                      ; $566c: $3e $46
	ld   a, $3b                                      ; $566e: $3e $3b
	rst  $38                                         ; $5670: $ff
	add  b                                           ; $5671: $80
	db   $fd                                         ; $5672: $fd
	dec  c                                           ; $5673: $0d
	db   $dd                                         ; $5674: $dd
	ld   a, a                                        ; $5675: $7f
	ld   e, $6e                                      ; $5676: $1e $6e
	ld   a, [$4404]                                  ; $5678: $fa $04 $44
	ld   b, c                                        ; $567b: $41
	ld   [hl], h                                     ; $567c: $74
	ld   b, b                                        ; $567d: $40
	jp   hl                                          ; $567e: $e9


	ld   bc, $3a72                                   ; $567f: $01 $72 $3a
	add  b                                           ; $5682: $80
	dec  hl                                          ; $5683: $2b
	ld   a, [de]                                     ; $5684: $1a
	db   $e3                                         ; $5685: $e3
	and  c                                           ; $5686: $a1
	ld   h, c                                        ; $5687: $61
	ld   h, d                                        ; $5688: $62
	ld   d, a                                        ; $5689: $57
	nop                                              ; $568a: $00
	adc  h                                           ; $568b: $8c
	jr   nz, jr_08a_56b3                             ; $568c: $20 $25

jr_08a_568e:
	jr   nz, jr_08a_568e                             ; $568e: $20 $fe

	sbc  h                                           ; $5690: $9c
	call $fb2a                                       ; $5691: $cd $2a $fb
	ld   l, c                                        ; $5694: $69
	pop  af                                          ; $5695: $f1
	add  [hl]                                        ; $5696: $86
	sub  $b3                                         ; $5697: $d6 $b3
	dec  hl                                          ; $5699: $2b
	nop                                              ; $569a: $00
	ld   h, b                                        ; $569b: $60
	ld   b, b                                        ; $569c: $40
	ret  nz                                          ; $569d: $c0

	ld   b, b                                        ; $569e: $40
	ld   [hl], b                                     ; $569f: $70
	add  b                                           ; $56a0: $80
	sub  b                                           ; $56a1: $90
	add  b                                           ; $56a2: $80
	db   $10                                         ; $56a3: $10
	add  b                                           ; $56a4: $80
	ld   d, b                                        ; $56a5: $50
	inc  bc                                          ; $56a6: $03
	ld   h, b                                        ; $56a7: $60
	ldh  [rSVBK], a                                  ; $56a8: $e0 $70
	ldh  a, [$80]                                    ; $56aa: $f0 $80
	ld   c, $80                                      ; $56ac: $0e $80
	rrca                                             ; $56ae: $0f
	add  h                                           ; $56af: $84
	ld   c, $83                                      ; $56b0: $0e $83
	rrca                                             ; $56b2: $0f

jr_08a_56b3:
	add  hl, bc                                      ; $56b3: $09
	ld   [hl], a                                     ; $56b4: $77
	rlca                                             ; $56b5: $07
	ld   bc, $4607                                   ; $56b6: $01 $07 $46
	rlca                                             ; $56b9: $07
	ld   c, a                                        ; $56ba: $4f
	inc  bc                                          ; $56bb: $03
	ccf                                              ; $56bc: $3f
	or   e                                           ; $56bd: $b3
	add  b                                           ; $56be: $80
	res  0, b                                        ; $56bf: $cb $80
	pop  af                                          ; $56c1: $f1
	ld   a, [bc]                                     ; $56c2: $0a
	ld   hl, sp-$10                                  ; $56c3: $f8 $f0
	ret  nz                                          ; $56c5: $c0

	cp   a                                           ; $56c6: $bf
	rst  JumpTable                                         ; $56c7: $df
	rst  $10                                         ; $56c8: $d7
	rla                                              ; $56c9: $17
	rst  $38                                         ; $56ca: $ff
	ld   c, h                                        ; $56cb: $4c
	db   $eb                                         ; $56cc: $eb
	ret  z                                           ; $56cd: $c8

	add  l                                           ; $56ce: $85
	ld   h, a                                        ; $56cf: $67
	ld   bc, $f582                                   ; $56d0: $01 $82 $f5
	add  b                                           ; $56d3: $80
	ld   e, l                                        ; $56d4: $5d
	inc  b                                           ; $56d5: $04
	ld   d, d                                        ; $56d6: $52
	ld   e, e                                        ; $56d7: $5b
	db   $10                                         ; $56d8: $10
	rrca                                             ; $56d9: $0f
	ld   b, $82                                      ; $56da: $06 $82
	ld   c, $81                                      ; $56dc: $0e $81
	inc  c                                           ; $56de: $0c
	ld   [$b188], sp                                 ; $56df: $08 $88 $b1
	dec  [hl]                                        ; $56e2: $35
	or   a                                           ; $56e3: $b7
	inc  [hl]                                        ; $56e4: $34
	cp   b                                           ; $56e5: $b8
	cp   l                                           ; $56e6: $bd
	sbc  b                                           ; $56e7: $98
	inc  e                                           ; $56e8: $1c
	add  c                                           ; $56e9: $81
	ld   [bc], a                                     ; $56ea: $02
	add  b                                           ; $56eb: $80
	inc  b                                           ; $56ec: $04
	add  b                                           ; $56ed: $80
	inc  bc                                          ; $56ee: $03
	ld   [$1020], sp                                 ; $56ef: $08 $20 $10
	ld   h, b                                        ; $56f2: $60
	jr   nz, jr_08a_5725                             ; $56f3: $20 $30

	db   $10                                         ; $56f5: $10
	and  b                                           ; $56f6: $a0
	nop                                              ; $56f7: $00
	ld   [hl], b                                     ; $56f8: $70
	add  c                                           ; $56f9: $81
	add  b                                           ; $56fa: $80
	add  e                                           ; $56fb: $83
	nop                                              ; $56fc: $00
	add  [hl]                                        ; $56fd: $86
	rrca                                             ; $56fe: $0f
	add  [hl]                                        ; $56ff: $86
	nop                                              ; $5700: $00
	add  h                                           ; $5701: $84
	ld   hl, sp-$80                                  ; $5702: $f8 $80
	cp   $86                                         ; $5704: $fe $86
	nop                                              ; $5706: $00
	add  b                                           ; $5707: $80
	ld   [hl], a                                     ; $5708: $77
	add  h                                           ; $5709: $84
	ld   [hl], e                                     ; $570a: $73
	add  [hl]                                        ; $570b: $86
	nop                                              ; $570c: $00
	add  [hl]                                        ; $570d: $86
	sbc  a                                           ; $570e: $9f
	add  [hl]                                        ; $570f: $86
	nop                                              ; $5710: $00
	add  h                                           ; $5711: $84
	add  b                                           ; $5712: $80
	rst  $38                                         ; $5713: $ff
	nop                                              ; $5714: $00
	rst  $38                                         ; $5715: $ff
	nop                                              ; $5716: $00
	rst  $38                                         ; $5717: $ff
	nop                                              ; $5718: $00
	rst  $38                                         ; $5719: $ff
	nop                                              ; $571a: $00
	rst  $38                                         ; $571b: $ff
	nop                                              ; $571c: $00
	rst  $38                                         ; $571d: $ff
	nop                                              ; $571e: $00
	rst  $38                                         ; $571f: $ff
	nop                                              ; $5720: $00

jr_08a_5721:
	rst  $38                                         ; $5721: $ff
	nop                                              ; $5722: $00

jr_08a_5723:
	rst  $38                                         ; $5723: $ff

jr_08a_5724:
	nop                                              ; $5724: $00

jr_08a_5725:
	adc  $00                                         ; $5725: $ce $00
	sbc  c                                           ; $5727: $99
	nop                                              ; $5728: $00
	sbc  d                                           ; $5729: $9a
	nop                                              ; $572a: $00
	add  b                                           ; $572b: $80
	inc  bc                                          ; $572c: $03
	ld   [bc], a                                     ; $572d: $02
	inc  c                                           ; $572e: $0c
	rrca                                             ; $572f: $0f
	inc  bc                                          ; $5730: $03
	add  a                                           ; $5731: $87
	nop                                              ; $5732: $00
	add  b                                           ; $5733: $80
	ccf                                              ; $5734: $3f
	inc  b                                           ; $5735: $04
	rst  $20                                         ; $5736: $e7
	ld   hl, sp+$60                                  ; $5737: $f8 $60
	sbc  a                                           ; $5739: $9f
	ldh  [$87], a                                    ; $573a: $e0 $87
	nop                                              ; $573c: $00
	add  b                                           ; $573d: $80
	ld   hl, sp+$04                                  ; $573e: $f8 $04
	rst  $20                                         ; $5740: $e7
	rra                                              ; $5741: $1f
	nop                                              ; $5742: $00
	db   $fd                                         ; $5743: $fd
	dec  b                                           ; $5744: $05
	adc  c                                           ; $5745: $89
	nop                                              ; $5746: $00
	add  b                                           ; $5747: $80
	add  b                                           ; $5748: $80
	ld   [bc], a                                     ; $5749: $02
	ld   h, b                                        ; $574a: $60
	ldh  [$80], a                                    ; $574b: $e0 $80
	sub  e                                           ; $574d: $93
	nop                                              ; $574e: $00
	add  b                                           ; $574f: $80
	ld   bc, $0201                                   ; $5750: $01 $01 $02
	inc  bc                                          ; $5753: $03
	add  b                                           ; $5754: $80
	ld   [bc], a                                     ; $5755: $02
	rrca                                             ; $5756: $0f
	inc  b                                           ; $5757: $04
	ld   b, $04                                      ; $5758: $06 $04
	dec  b                                           ; $575a: $05
	ld   sp, $503c                                   ; $575b: $31 $3c $50
	ld   h, a                                        ; $575e: $67
	add  b                                           ; $575f: $80
	ret  c                                           ; $5760: $d8

	rlca                                             ; $5761: $07
	and  a                                           ; $5762: $a7
	jr   jr_08a_57bd                                 ; $5763: $18 $58

	inc  hl                                          ; $5765: $23
	and  e                                           ; $5766: $a3
	add  b                                           ; $5767: $80
	call z, $b180                                    ; $5768: $cc $80 $b1
	rlca                                             ; $576b: $07
	rst  $20                                         ; $576c: $e7
	ldh  [rAUD2LOW], a                               ; $576d: $e0 $18
	rra                                              ; $576f: $1f
	rst  $38                                         ; $5770: $ff
	ldh  [rP1], a                                    ; $5771: $e0 $00
	rra                                              ; $5773: $1f
	add  c                                           ; $5774: $81
	ld   a, a                                        ; $5775: $7f
	add  b                                           ; $5776: $80
	nop                                              ; $5777: $00
	dec  e                                           ; $5778: $1d
	ccf                                              ; $5779: $3f
	add  b                                           ; $577a: $80
	ret  nz                                          ; $577b: $c0

	rst  $20                                         ; $577c: $e7
	rra                                              ; $577d: $1f
	nop                                              ; $577e: $00
	db   $fd                                         ; $577f: $fd
	ldh  [c], a                                      ; $5780: $e2
	rra                                              ; $5781: $1f
	nop                                              ; $5782: $00
	push hl                                          ; $5783: $e5
	ldh  [c], a                                      ; $5784: $e2
	db   $fc                                         ; $5785: $fc
	db   $e4                                         ; $5786: $e4
	rra                                              ; $5787: $1f
	nop                                              ; $5788: $00
	push af                                          ; $5789: $f5
	ld   [bc], a                                     ; $578a: $02
	ld   c, $99                                      ; $578b: $0e $99
	ld   hl, sp+$1c                                  ; $578d: $f8 $1c
	db   $e4                                         ; $578f: $e4
	ld   b, $7a                                      ; $5790: $06 $7a
	dec  de                                          ; $5792: $1b
	push bc                                          ; $5793: $c5
	dec  b                                           ; $5794: $05
	ldh  a, [c]                                      ; $5795: $f2
	ld   [hl-], a                                    ; $5796: $32
	add  b                                           ; $5797: $80
	adc  c                                           ; $5798: $89
	inc  b                                           ; $5799: $04
	db   $e4                                         ; $579a: $e4
	inc  h                                           ; $579b: $24
	ldh  a, [c]                                      ; $579c: $f2
	db   $fd                                         ; $579d: $fd
	jr   nc, jr_08a_5721                             ; $579e: $30 $81

	jr   c, jr_08a_5723                              ; $57a0: $38 $81

	jr   z, jr_08a_5724                              ; $57a2: $28 $80

	xor  b                                           ; $57a4: $a8
	add  c                                           ; $57a5: $81
	ld   hl, sp-$80                                  ; $57a6: $f8 $80
	add  sp, $04                                     ; $57a8: $e8 $04
	ld   hl, sp+$17                                  ; $57aa: $f8 $17
	dec  b                                           ; $57ac: $05
	dec  c                                           ; $57ad: $0d
	dec  bc                                          ; $57ae: $0b
	add  [hl]                                        ; $57af: $86
	rrca                                             ; $57b0: $0f
	nop                                              ; $57b1: $00
	add  hl, bc                                      ; $57b2: $09
	add  c                                           ; $57b3: $81
	rrca                                             ; $57b4: $0f
	ld   bc, $c6c4                                   ; $57b5: $01 $c4 $c6
	add  b                                           ; $57b8: $80
	sbc  b                                           ; $57b9: $98
	add  b                                           ; $57ba: $80
	ld   h, b                                        ; $57bb: $60
	add  b                                           ; $57bc: $80

jr_08a_57bd:
	ret  nz                                          ; $57bd: $c0

	add  d                                           ; $57be: $82
	add  b                                           ; $57bf: $80
	sub  d                                           ; $57c0: $92
	nop                                              ; $57c1: $00
	add  b                                           ; $57c2: $80
	ld   bc, $008c                                   ; $57c3: $01 $8c $00
	ld   [$8dff], sp                                 ; $57c6: $08 $ff $8d
	dec  c                                           ; $57c9: $0d
	ld   h, [hl]                                     ; $57ca: $66
	ld   b, $1b                                      ; $57cb: $06 $1b
	inc  bc                                          ; $57cd: $03
	dec  b                                           ; $57ce: $05
	ld   bc, $0281                                   ; $57cf: $01 $81 $02
	nop                                              ; $57d2: $00
	nop                                              ; $57d3: $00
	add  c                                           ; $57d4: $81
	ld   bc, $f800                                   ; $57d5: $01 $00 $f8
	add  b                                           ; $57d8: $80
	ld   l, b                                        ; $57d9: $68
	ld   bc, $c0c8                                   ; $57da: $01 $c8 $c0
	add  b                                           ; $57dd: $80
	ld   d, b                                        ; $57de: $50
	add  d                                           ; $57df: $82
	ret  nc                                          ; $57e0: $d0

	ld   bc, $8090                                   ; $57e1: $01 $90 $80
	add  b                                           ; $57e4: $80
	and  b                                           ; $57e5: $a0
	inc  b                                           ; $57e6: $04
	jr   nz, @-$31                                   ; $57e7: $20 $cd

	rrca                                             ; $57e9: $0f
	dec  c                                           ; $57ea: $0d
	ld   a, [bc]                                     ; $57eb: $0a
	add  b                                           ; $57ec: $80
	dec  bc                                          ; $57ed: $0b
	nop                                              ; $57ee: $00
	ld   a, [bc]                                     ; $57ef: $0a
	add  b                                           ; $57f0: $80
	dec  bc                                          ; $57f1: $0b
	add  d                                           ; $57f2: $82
	dec  c                                           ; $57f3: $0d
	add  c                                           ; $57f4: $81
	ld   a, [bc]                                     ; $57f5: $0a
	ld   bc, $0005                                   ; $57f6: $01 $05 $00
	add  d                                           ; $57f9: $82
	add  b                                           ; $57fa: $80
	ld   bc, $40c0                                   ; $57fb: $01 $c0 $40
	add  b                                           ; $57fe: $80
	ret  nz                                          ; $57ff: $c0

	ld   b, $20                                      ; $5800: $06 $20
	ldh  [$90], a                                    ; $5802: $e0 $90
	or   b                                           ; $5804: $b0
	adc  h                                           ; $5805: $8c
	ld   e, h                                        ; $5806: $5c
	or   b                                           ; $5807: $b0
	sbc  e                                           ; $5808: $9b
	nop                                              ; $5809: $00
	add  b                                           ; $580a: $80
	inc  bc                                          ; $580b: $03
	add  b                                           ; $580c: $80
	ld   bc, $0300                                   ; $580d: $01 $00 $03
	add  c                                           ; $5810: $81
	ld   [bc], a                                     ; $5811: $02
	ld   a, [bc]                                     ; $5812: $0a
	ld   b, $04                                      ; $5813: $06 $04
	inc  c                                           ; $5815: $0c
	add  hl, bc                                      ; $5816: $09
	add  hl, de                                      ; $5817: $19
	ld   [de], a                                     ; $5818: $12
	ld   [hl], d                                     ; $5819: $72
	ld   h, l                                        ; $581a: $65
	push hl                                          ; $581b: $e5
	sbc  d                                           ; $581c: $9a
	add  l                                           ; $581d: $85
	add  d                                           ; $581e: $82
	ld   h, b                                        ; $581f: $60
	add  b                                           ; $5820: $80
	and  b                                           ; $5821: $a0
	add  b                                           ; $5822: $80
	ldh  [$80], a                                    ; $5823: $e0 $80
	ld   h, b                                        ; $5825: $60
	add  b                                           ; $5826: $80
	and  b                                           ; $5827: $a0
	add  b                                           ; $5828: $80
	ld   h, b                                        ; $5829: $60
	ld   bc, $47a0                                   ; $582a: $01 $a0 $47
	add  b                                           ; $582d: $80
	dec  b                                           ; $582e: $05
	add  b                                           ; $582f: $80
	ld   b, $01                                      ; $5830: $06 $01
	dec  b                                           ; $5832: $05
	ld   bc, $0280                                   ; $5833: $01 $80 $02
	nop                                              ; $5836: $00
	inc  bc                                          ; $5837: $03
	add  b                                           ; $5838: $80
	ld   bc, $0082                                   ; $5839: $01 $82 $00

jr_08a_583c:
	ld   [de], a                                     ; $583c: $12
	di                                               ; $583d: $f3
	or   a                                           ; $583e: $b7
	xor  c                                           ; $583f: $a9
	sbc  $c0                                         ; $5840: $de $c0
	scf                                              ; $5842: $37
	add  hl, hl                                      ; $5843: $29
	sbc  $c0                                         ; $5844: $de $c0
	scf                                              ; $5846: $37
	add  hl, sp                                      ; $5847: $39

jr_08a_5848:
	adc  [hl]                                        ; $5848: $8e
	sub  b                                           ; $5849: $90
	rst  $30                                         ; $584a: $f7
	ld   l, l                                        ; $584b: $6d
	ld   a, [hl]                                     ; $584c: $7e
	add  a                                           ; $584d: $87
	add  b                                           ; $584e: $80
	rst  $38                                         ; $584f: $ff
	add  b                                           ; $5850: $80
	ld   a, a                                        ; $5851: $7f
	add  b                                           ; $5852: $80
	add  b                                           ; $5853: $80
	add  b                                           ; $5854: $80
	ld   a, a                                        ; $5855: $7f

jr_08a_5856:
	add  b                                           ; $5856: $80
	add  b                                           ; $5857: $80
	add  b                                           ; $5858: $80
	ld   a, a                                        ; $5859: $7f
	add  b                                           ; $585a: $80
	add  b                                           ; $585b: $80
	inc  bc                                          ; $585c: $03
	ld   a, a                                        ; $585d: $7f
	cp   a                                           ; $585e: $bf
	inc  a                                           ; $585f: $3c
	db   $fc                                         ; $5860: $fc
	add  b                                           ; $5861: $80
	jp   $3c80                                       ; $5862: $c3 $80 $3c


	add  b                                           ; $5865: $80
	jp   $3c80                                       ; $5866: $c3 $80 $3c


	add  b                                           ; $5869: $80
	jp   $3c80                                       ; $586a: $c3 $80 $3c


	add  b                                           ; $586d: $80
	jp   Jump_08a_6d80                               ; $586e: $c3 $80 $6d


	add  b                                           ; $5871: $80
	or   d                                           ; $5872: $b2
	add  b                                           ; $5873: $80
	call $3380                                       ; $5874: $cd $80 $33
	add  b                                           ; $5877: $80
	add  $80                                         ; $5878: $c6 $80

jr_08a_587a:
	add  hl, de                                      ; $587a: $19
	inc  bc                                          ; $587b: $03
	ld   h, a                                        ; $587c: $67
	ld   h, [hl]                                     ; $587d: $66
	sbc  [hl]                                        ; $587e: $9e
	add  b                                           ; $587f: $80
	add  b                                           ; $5880: $80
	ld   h, b                                        ; $5881: $60
	ld   bc, $c0e0                                   ; $5882: $01 $e0 $c0
	add  b                                           ; $5885: $80
	ld   b, b                                        ; $5886: $40
	nop                                              ; $5887: $00
	ret  nz                                          ; $5888: $c0

	add  d                                           ; $5889: $82

jr_08a_588a:
	add  b                                           ; $588a: $80
	sub  d                                           ; $588b: $92
	nop                                              ; $588c: $00
	add  b                                           ; $588d: $80
	scf                                              ; $588e: $37
	inc  bc                                          ; $588f: $03
	dec  c                                           ; $5890: $0d
	ld   c, $00                                      ; $5891: $0e $00
	inc  bc                                          ; $5893: $03

jr_08a_5894:
	adc  b                                           ; $5894: $88
	nop                                              ; $5895: $00
	nop                                              ; $5896: $00
	rst  $38                                         ; $5897: $ff
	add  b                                           ; $5898: $80
	nop                                              ; $5899: $00
	add  b                                           ; $589a: $80
	rst  $38                                         ; $589b: $ff
	ld   [bc], a                                     ; $589c: $02
	add  b                                           ; $589d: $80
	nop                                              ; $589e: $00
	ld   a, a                                        ; $589f: $7f
	add  [hl]                                        ; $58a0: $86
	nop                                              ; $58a1: $00
	nop                                              ; $58a2: $00
	rst  $38                                         ; $58a3: $ff
	add  b                                           ; $58a4: $80
	inc  a                                           ; $58a5: $3c

jr_08a_58a6:
	add  b                                           ; $58a6: $80
	jp   $3f02                                       ; $58a7: $c3 $02 $3f


	inc  a                                           ; $58aa: $3c
	db   $fc                                         ; $58ab: $fc
	add  [hl]                                        ; $58ac: $86
	nop                                              ; $58ad: $00
	inc  bc                                          ; $58ae: $03
	ld   hl, sp+$78                                  ; $58af: $f8 $78
	ld   h, b                                        ; $58b1: $60
	ldh  [$80], a                                    ; $58b2: $e0 $80
	add  b                                           ; $58b4: $80
	call z, $8000                                    ; $58b5: $cc $00 $80
	rlca                                             ; $58b8: $07
	add  b                                           ; $58b9: $80
	jr   jr_08a_583c                                 ; $58ba: $18 $80

	daa                                              ; $58bc: $27

jr_08a_58bd:
	add  b                                           ; $58bd: $80
	ld   e, h                                        ; $58be: $5c
	add  b                                           ; $58bf: $80
	inc  sp                                          ; $58c0: $33
	add  b                                           ; $58c1: $80
	ld   c, [hl]                                     ; $58c2: $4e
	adc  [hl]                                        ; $58c3: $8e
	nop                                              ; $58c4: $00
	add  b                                           ; $58c5: $80
	jr   jr_08a_5848                                 ; $58c6: $18 $80

	ldh  [$80], a                                    ; $58c8: $e0 $80
	nop                                              ; $58ca: $00
	add  b                                           ; $58cb: $80
	ldh  [$84], a                                    ; $58cc: $e0 $84
	add  b                                           ; $58ce: $80
	rst  $38                                         ; $58cf: $ff
	nop                                              ; $58d0: $00
	nop                                              ; $58d1: $00

jr_08a_58d2:
	nop                                              ; $58d2: $00
	add  b                                           ; $58d3: $80
	jr   c, jr_08a_5856                              ; $58d4: $38 $80

	ld   h, b                                        ; $58d6: $60
	add  b                                           ; $58d7: $80
	add  b                                           ; $58d8: $80
	rst  $38                                         ; $58d9: $ff
	nop                                              ; $58da: $00
	rst  $38                                         ; $58db: $ff
	nop                                              ; $58dc: $00
	rst  $38                                         ; $58dd: $ff
	nop                                              ; $58de: $00
	rst  $38                                         ; $58df: $ff
	nop                                              ; $58e0: $00
	rst  $38                                         ; $58e1: $ff
	nop                                              ; $58e2: $00
	rst  $38                                         ; $58e3: $ff
	nop                                              ; $58e4: $00
	rst  $38                                         ; $58e5: $ff
	nop                                              ; $58e6: $00
	pop  de                                          ; $58e7: $d1
	nop                                              ; $58e8: $00
	sub  h                                           ; $58e9: $94
	nop                                              ; $58ea: $00
	or   $00                                         ; $58eb: $f6 $00
	add  b                                           ; $58ed: $80
	ld   bc, $0680                                   ; $58ee: $01 $80 $06
	add  b                                           ; $58f1: $80
	inc  c                                           ; $58f2: $0c
	add  b                                           ; $58f3: $80
	jr   jr_08a_587a                                 ; $58f4: $18 $84

	nop                                              ; $58f6: $00
	add  b                                           ; $58f7: $80
	ccf                                              ; $58f8: $3f
	add  b                                           ; $58f9: $80
	ret  nz                                          ; $58fa: $c0

	adc  d                                           ; $58fb: $8a
	nop                                              ; $58fc: $00
	add  b                                           ; $58fd: $80
	db   $fc                                         ; $58fe: $fc
	add  b                                           ; $58ff: $80
	inc  bc                                          ; $5900: $03
	adc  h                                           ; $5901: $8c
	nop                                              ; $5902: $00
	add  b                                           ; $5903: $80
	add  b                                           ; $5904: $80
	add  b                                           ; $5905: $80
	ld   h, b                                        ; $5906: $60
	add  b                                           ; $5907: $80
	jr   nc, jr_08a_588a                             ; $5908: $30 $80

	jr   jr_08a_58a6                                 ; $590a: $18 $9a

	nop                                              ; $590c: $00
	add  b                                           ; $590d: $80
	ld   bc, $0280                                   ; $590e: $01 $80 $02
	add  d                                           ; $5911: $82
	jr   jr_08a_5894                                 ; $5912: $18 $80

	inc  d                                           ; $5914: $14
	ld   b, $13                                      ; $5915: $06 $13
	dec  de                                          ; $5917: $1b
	jr   c, jr_08a_5956                              ; $5918: $38 $3c

	call nz, $0fcf                                   ; $591a: $c4 $cf $0f
	add  b                                           ; $591d: $80
	ccf                                              ; $591e: $3f

jr_08a_591f:
	ld   bc, $f3fb                                   ; $591f: $01 $fb $f3
	add  l                                           ; $5922: $85
	nop                                              ; $5923: $00
	add  b                                           ; $5924: $80
	ldh  a, [$80]                                    ; $5925: $f0 $80
	rrca                                             ; $5927: $0f
	inc  b                                           ; $5928: $04
	nop                                              ; $5929: $00
	ldh  a, [$f1]                                    ; $592a: $f0 $f1
	cp   $ff                                         ; $592c: $fe $ff
	add  l                                           ; $592e: $85
	nop                                              ; $592f: $00
	add  b                                           ; $5930: $80
	rrca                                             ; $5931: $0f
	add  b                                           ; $5932: $80
	ldh  a, [rDIV]                                   ; $5933: $f0 $04
	rrca                                             ; $5935: $0f
	nop                                              ; $5936: $00
	ldh  a, [rP1]                                    ; $5937: $f0 $00
	rst  $20                                         ; $5939: $e7
	add  c                                           ; $593a: $81
	jr   jr_08a_58bd                                 ; $593b: $18 $80

	dec  hl                                          ; $593d: $2b
	dec  b                                           ; $593e: $05
	call c, $2bcc                                    ; $593f: $dc $cc $2b

jr_08a_5942:
	dec  bc                                          ; $5942: $0b
	jp   nz, $8012                                   ; $5943: $c2 $12 $80

	rla                                              ; $5946: $17
	ld   [bc], a                                     ; $5947: $02
	jr   c, @+$20                                    ; $5948: $38 $1e

	add  $81                                         ; $594a: $c6 $81
	nop                                              ; $594c: $00
	add  b                                           ; $594d: $80
	ret  nz                                          ; $594e: $c0

	add  b                                           ; $594f: $80
	jr   nz, jr_08a_58d2                             ; $5950: $20 $80

	sub  b                                           ; $5952: $90
	add  d                                           ; $5953: $82
	ld   d, b                                        ; $5954: $50
	add  b                                           ; $5955: $80

jr_08a_5956:
	sub  b                                           ; $5956: $90
	nop                                              ; $5957: $00
	inc  b                                           ; $5958: $04
	add  c                                           ; $5959: $81
	dec  b                                           ; $595a: $05
	nop                                              ; $595b: $00
	add  hl, bc                                      ; $595c: $09
	add  l                                           ; $595d: $85
	dec  bc                                          ; $595e: $0b
	nop                                              ; $595f: $00
	rlca                                             ; $5960: $07
	add  d                                           ; $5961: $82
	dec  b                                           ; $5962: $05
	add  b                                           ; $5963: $80
	db   $f4                                         ; $5964: $f4
	nop                                              ; $5965: $00
	call nz, $c281                                   ; $5966: $c4 $81 $c2
	nop                                              ; $5969: $00
	add  d                                           ; $596a: $82
	add  d                                           ; $596b: $82
	add  c                                           ; $596c: $81
	nop                                              ; $596d: $00
	add  b                                           ; $596e: $80
	add  d                                           ; $596f: $82
	ret  nz                                          ; $5970: $c0

	add  b                                           ; $5971: $80
	rst  $38                                         ; $5972: $ff
	add  b                                           ; $5973: $80
	rra                                              ; $5974: $1f
	add  l                                           ; $5975: $85
	nop                                              ; $5976: $00
	add  b                                           ; $5977: $80
	add  b                                           ; $5978: $80
	add  b                                           ; $5979: $80
	ld   h, b                                        ; $597a: $60
	inc  b                                           ; $597b: $04
	rra                                              ; $597c: $1f
	ldh  [$f7], a                                    ; $597d: $e0 $f7
	ldh  a, [$f8]                                    ; $597f: $f0 $f8
	add  l                                           ; $5981: $85
	nop                                              ; $5982: $00
	add  b                                           ; $5983: $80
	ld   bc, $0680                                   ; $5984: $01 $80 $06
	dec  b                                           ; $5987: $05
	daa                                              ; $5988: $27
	jr   nz, @+$26                                   ; $5989: $20 $24

	ld   hl, $4644                                   ; $598b: $21 $44 $46
	add  b                                           ; $598e: $80
	ld   sp, hl                                      ; $598f: $f9
	add  b                                           ; $5990: $80
	add  [hl]                                        ; $5991: $86
	ld   bc, $f8f9                                   ; $5992: $01 $f9 $f8
	add  b                                           ; $5995: $80
	nop                                              ; $5996: $00
	inc  bc                                          ; $5997: $03
	ld   [bc], a                                     ; $5998: $02
	nop                                              ; $5999: $00
	and  e                                           ; $599a: $a3
	and  b                                           ; $599b: $a0
	add  b                                           ; $599c: $80
	jr   nz, jr_08a_591f                             ; $599d: $20 $80

	ld   d, b                                        ; $599f: $50
	nop                                              ; $59a0: $00
	ret  nc                                          ; $59a1: $d0

	add  b                                           ; $59a2: $80
	sub  b                                           ; $59a3: $90
	add  c                                           ; $59a4: $81
	stop                                             ; $59a5: $10 $00
	ld   h, b                                        ; $59a7: $60
	add  c                                           ; $59a8: $81
	jr   nz, jr_08a_59ac                             ; $59a9: $20 $01

	add  d                                           ; $59ab: $82

jr_08a_59ac:
	ld   [bc], a                                     ; $59ac: $02
	add  b                                           ; $59ad: $80
	ld   bc, $008b                                   ; $59ae: $01 $8b $00
	add  b                                           ; $59b1: $80
	ldh  [rTMA], a                                   ; $59b2: $e0 $06
	ld   [hl], b                                     ; $59b4: $70
	or   b                                           ; $59b5: $b0
	call c, $3f24                                    ; $59b6: $dc $24 $3f
	jr   jr_08a_59da                                 ; $59b9: $18 $1f

	add  b                                           ; $59bb: $80
	rlca                                             ; $59bc: $07
	add  d                                           ; $59bd: $82
	nop                                              ; $59be: $00
	add  b                                           ; $59bf: $80
	jr   jr_08a_5942                                 ; $59c0: $18 $80

	rlca                                             ; $59c2: $07
	add  d                                           ; $59c3: $82
	nop                                              ; $59c4: $00
	inc  bc                                          ; $59c5: $03
	add  b                                           ; $59c6: $80
	ldh  [$9f], a                                    ; $59c7: $e0 $9f
	rst  $38                                         ; $59c9: $ff
	add  b                                           ; $59ca: $80
	ld   a, a                                        ; $59cb: $7f
	add  b                                           ; $59cc: $80
	nop                                              ; $59cd: $00
	add  b                                           ; $59ce: $80
	jr   @-$7e                                       ; $59cf: $18 $80

	ldh  [$82], a                                    ; $59d1: $e0 $82
	nop                                              ; $59d3: $00
	inc  bc                                          ; $59d4: $03
	ld   bc, $f907                                   ; $59d5: $01 $07 $f9
	rst  $38                                         ; $59d8: $ff
	add  b                                           ; $59d9: $80

jr_08a_59da:
	cp   $80                                         ; $59da: $fe $80
	nop                                              ; $59dc: $00
	add  hl, bc                                      ; $59dd: $09
	ld   b, $01                                      ; $59de: $06 $01

jr_08a_59e0:
	rrca                                             ; $59e0: $0f
	ld   b, $0d                                      ; $59e1: $06 $0d
	dec  sp                                          ; $59e3: $3b
	inc  h                                           ; $59e4: $24
	db   $fc                                         ; $59e5: $fc
	jr   jr_08a_59e0                                 ; $59e6: $18 $f8

	add  b                                           ; $59e8: $80
	ldh  [$82], a                                    ; $59e9: $e0 $82
	nop                                              ; $59eb: $00
	add  b                                           ; $59ec: $80
	ld   b, b                                        ; $59ed: $40
	add  b                                           ; $59ee: $80
	add  b                                           ; $59ef: $80
	rst  $38                                         ; $59f0: $ff
	nop                                              ; $59f1: $00

jr_08a_59f2:
	and  e                                           ; $59f2: $a3
	nop                                              ; $59f3: $00
	ld   b, $01                                      ; $59f4: $06 $01
	nop                                              ; $59f6: $00
	ld   [bc], a                                     ; $59f7: $02
	nop                                              ; $59f8: $00
	inc  b                                           ; $59f9: $04
	nop                                              ; $59fa: $00
	rlca                                             ; $59fb: $07
	sub  l                                           ; $59fc: $95
	nop                                              ; $59fd: $00
	ld   [$003f], sp                                 ; $59fe: $08 $3f $00
	jp   $0c00                                       ; $5a01: $c3 $00 $0c


	nop                                              ; $5a04: $00
	rrca                                             ; $5a05: $0f
	rlca                                             ; $5a06: $07
	ld   hl, sp-$6b                                  ; $5a07: $f8 $95
	nop                                              ; $5a09: $00
	ld   [bc], a                                     ; $5a0a: $02
	add  b                                           ; $5a0b: $80
	nop                                              ; $5a0c: $00
	add  b                                           ; $5a0d: $80
	add  c                                           ; $5a0e: $81
	nop                                              ; $5a0f: $00
	add  b                                           ; $5a10: $80
	ldh  [$de], a                                    ; $5a11: $e0 $de
	nop                                              ; $5a13: $00
	nop                                              ; $5a14: $00
	rlca                                             ; $5a15: $07
	add  c                                           ; $5a16: $81
	nop                                              ; $5a17: $00
	ld   [bc], a                                     ; $5a18: $02
	inc  b                                           ; $5a19: $04
	ld   bc, $9702                                   ; $5a1a: $01 $02 $97
	nop                                              ; $5a1d: $00
	inc  b                                           ; $5a1e: $04
	ld   hl, sp+$3e                                  ; $5a1f: $f8 $3e
	ld   b, $ff                                      ; $5a21: $06 $ff
	ccf                                              ; $5a23: $3f
	add  d                                           ; $5a24: $82
	rst  $38                                         ; $5a25: $ff
	dec  b                                           ; $5a26: $05
	rrca                                             ; $5a27: $0f
	ld   a, a                                        ; $5a28: $7f
	nop                                              ; $5a29: $00
	ld   a, a                                        ; $5a2a: $7f
	nop                                              ; $5a2b: $00
	rrca                                             ; $5a2c: $0f
	adc  a                                           ; $5a2d: $8f
	nop                                              ; $5a2e: $00
	add  b                                           ; $5a2f: $80
	inc  e                                           ; $5a30: $1c
	ld   [bc], a                                     ; $5a31: $02
	inc  bc                                          ; $5a32: $03
	db   $e3                                         ; $5a33: $e3
	ldh  [$82], a                                    ; $5a34: $e0 $82
	rst  $38                                         ; $5a36: $ff
	dec  b                                           ; $5a37: $05
	ldh  a, [rIE]                                    ; $5a38: $f0 $ff
	nop                                              ; $5a3a: $00
	rst  $38                                         ; $5a3b: $ff
	nop                                              ; $5a3c: $00
	ldh  a, [$81]                                    ; $5a3d: $f0 $81
	nop                                              ; $5a3f: $00
	ld   [bc], a                                     ; $5a40: $02
	rlca                                             ; $5a41: $07
	nop                                              ; $5a42: $00
	ld   [$0085], sp                                 ; $5a43: $08 $85 $00
	inc  b                                           ; $5a46: $04
	ld   de, $2700                                   ; $5a47: $11 $00 $27
	nop                                              ; $5a4a: $00
	add  hl, sp                                      ; $5a4b: $39
	add  c                                           ; $5a4c: $81
	nop                                              ; $5a4d: $00
	inc  e                                           ; $5a4e: $1c
	sub  b                                           ; $5a4f: $90
	add  b                                           ; $5a50: $80
	jr   nc, jr_08a_5a53                             ; $5a51: $30 $00

jr_08a_5a53:
	ldh  [rP1], a                                    ; $5a53: $e0 $00
	call z, $0400                                    ; $5a55: $cc $00 $04
	nop                                              ; $5a58: $00
	jr   z, jr_08a_5a5b                              ; $5a59: $28 $00

jr_08a_5a5b:
	ld   hl, sp+$00                                  ; $5a5b: $f8 $00
	inc  b                                           ; $5a5d: $04
	nop                                              ; $5a5e: $00
	ld   h, l                                        ; $5a5f: $65
	nop                                              ; $5a60: $00
	cp   a                                           ; $5a61: $bf
	nop                                              ; $5a62: $00
	ld   a, a                                        ; $5a63: $7f
	nop                                              ; $5a64: $00
	ld   a, a                                        ; $5a65: $7f
	nop                                              ; $5a66: $00
	ld   hl, sp+$00                                  ; $5a67: $f8 $00
	ld   [bc], a                                     ; $5a69: $02
	nop                                              ; $5a6a: $00
	db   $fc                                         ; $5a6b: $fc
	add  a                                           ; $5a6c: $87
	nop                                              ; $5a6d: $00
	nop                                              ; $5a6e: $00
	jr   nz, jr_08a_59f2                             ; $5a6f: $20 $81

	nop                                              ; $5a71: $00
	ld   [$0040], sp                                 ; $5a72: $08 $40 $00
	jr   nz, jr_08a_5a77                             ; $5a75: $20 $00

jr_08a_5a77:
	add  b                                           ; $5a77: $80
	nop                                              ; $5a78: $00
	ld   h, b                                        ; $5a79: $60
	nop                                              ; $5a7a: $00
	add  b                                           ; $5a7b: $80
	add  e                                           ; $5a7c: $83
	nop                                              ; $5a7d: $00
	ld   [bc], a                                     ; $5a7e: $02
	ld   h, b                                        ; $5a7f: $60
	nop                                              ; $5a80: $00
	ld   b, b                                        ; $5a81: $40
	pop  bc                                          ; $5a82: $c1
	nop                                              ; $5a83: $00
	inc  b                                           ; $5a84: $04
	jr   jr_08a_5a87                                 ; $5a85: $18 $00

jr_08a_5a87:
	rra                                              ; $5a87: $1f
	nop                                              ; $5a88: $00
	rlca                                             ; $5a89: $07
	sub  a                                           ; $5a8a: $97
	nop                                              ; $5a8b: $00
	ld   b, $e7                                      ; $5a8c: $06 $e7
	nop                                              ; $5a8e: $00
	ld   hl, sp+$00                                  ; $5a8f: $f8 $00
	ldh  [rP1], a                                    ; $5a91: $e0 $00
	rst  $38                                         ; $5a93: $ff
	sub  a                                           ; $5a94: $97
	nop                                              ; $5a95: $00
	ld   b, $f8                                      ; $5a96: $06 $f8
	nop                                              ; $5a98: $00
	ld   [rROMB1], sp                                 ; $5a99: $08 $00 $30
	nop                                              ; $5a9c: $00
	ret  nz                                          ; $5a9d: $c0

	rst  $38                                         ; $5a9e: $ff
	nop                                              ; $5a9f: $00
	rst  $38                                         ; $5aa0: $ff
	nop                                              ; $5aa1: $00
	rst  $38                                         ; $5aa2: $ff
	nop                                              ; $5aa3: $00
	rst  $38                                         ; $5aa4: $ff
	nop                                              ; $5aa5: $00
	rst  $38                                         ; $5aa6: $ff
	nop                                              ; $5aa7: $00
	or   d                                           ; $5aa8: $b2
	nop                                              ; $5aa9: $00
	ld   a, d                                        ; $5aaa: $7a
	nop                                              ; $5aab: $00
	xor  h                                           ; $5aac: $ac
	nop                                              ; $5aad: $00
	add  b                                           ; $5aae: $80
	rra                                              ; $5aaf: $1f
	adc  b                                           ; $5ab0: $88
	nop                                              ; $5ab1: $00
	add  b                                           ; $5ab2: $80
	rrca                                             ; $5ab3: $0f
	nop                                              ; $5ab4: $00
	rst  $38                                         ; $5ab5: $ff
	add  b                                           ; $5ab6: $80
	ldh  a, [rSB]                                    ; $5ab7: $f0 $01

jr_08a_5ab9:
	nop                                              ; $5ab9: $00
	rst  $38                                         ; $5aba: $ff
	adc  c                                           ; $5abb: $89
	nop                                              ; $5abc: $00
	add  b                                           ; $5abd: $80
	ldh  [rSC], a                                    ; $5abe: $e0 $02
	ld   hl, sp+$78                                  ; $5ac0: $f8 $78
	add  b                                           ; $5ac2: $80
	sbc  l                                           ; $5ac3: $9d
	nop                                              ; $5ac4: $00
	add  b                                           ; $5ac5: $80
	ld   bc, $0f00                                   ; $5ac6: $01 $00 $0f
	add  b                                           ; $5ac9: $80
	ld   c, $80                                      ; $5aca: $0e $80
	inc  c                                           ; $5acc: $0c
	add  b                                           ; $5acd: $80
	dec  bc                                          ; $5ace: $0b
	rlca                                             ; $5acf: $07
	ld   c, $0a                                      ; $5ad0: $0e $0a
	ld   [$080a], sp                                 ; $5ad2: $08 $0a $08
	add  hl, bc                                      ; $5ad5: $09
	ld   [$80ff], sp                                 ; $5ad6: $08 $ff $80
	ldh  [$80], a                                    ; $5ad9: $e0 $80
	nop                                              ; $5adb: $00
	add  b                                           ; $5adc: $80
	rlca                                             ; $5add: $07
	add  b                                           ; $5ade: $80
	ld   a, b                                        ; $5adf: $78
	add  c                                           ; $5ae0: $81
	add  b                                           ; $5ae1: $80
	inc  b                                           ; $5ae2: $04
	add  a                                           ; $5ae3: $87
	add  b                                           ; $5ae4: $80
	ld   hl, sp-$80                                  ; $5ae5: $f8 $80
	rst  $38                                         ; $5ae7: $ff
	add  b                                           ; $5ae8: $80
	rlca                                             ; $5ae9: $07
	add  b                                           ; $5aea: $80
	ld   a, b                                        ; $5aeb: $78
	add  b                                           ; $5aec: $80
	add  b                                           ; $5aed: $80
	dec  b                                           ; $5aee: $05
	nop                                              ; $5aef: $00
	rlca                                             ; $5af0: $07
	nop                                              ; $5af1: $00
	ld   a, b                                        ; $5af2: $78
	nop                                              ; $5af3: $00
	add  b                                           ; $5af4: $80
	add  c                                           ; $5af5: $81
	nop                                              ; $5af6: $00
	nop                                              ; $5af7: $00
	ld   hl, sp-$80                                  ; $5af8: $f8 $80
	adc  b                                           ; $5afa: $88
	add  c                                           ; $5afb: $81
	ld   [$7802], sp                                 ; $5afc: $08 $02 $78
	ld   [$8588], sp                                 ; $5aff: $08 $88 $85
	ld   [$009e], sp                                 ; $5b02: $08 $9e $00
	add  h                                           ; $5b05: $84
	ld   [$0c06], sp                                 ; $5b06: $08 $06 $0c
	ld   [$080a], sp                                 ; $5b09: $08 $0a $08
	dec  c                                           ; $5b0c: $0d
	ld   [$810b], sp                                 ; $5b0d: $08 $0b $81
	ld   [$8086], sp                                 ; $5b10: $08 $86 $80
	rlca                                             ; $5b13: $07
	add  a                                           ; $5b14: $87
	add  b                                           ; $5b15: $80
	ld   hl, sp-$80                                  ; $5b16: $f8 $80
	add  a                                           ; $5b18: $87
	add  b                                           ; $5b19: $80
	ld   hl, sp-$80                                  ; $5b1a: $f8 $80
	add  d                                           ; $5b1c: $82
	nop                                              ; $5b1d: $00
	ld   [$0007], sp                                 ; $5b1e: $08 $07 $00
	ld   a, b                                        ; $5b21: $78
	nop                                              ; $5b22: $00
	add  a                                           ; $5b23: $87
	nop                                              ; $5b24: $00
	ld   a, b                                        ; $5b25: $78
	nop                                              ; $5b26: $00
	add  b                                           ; $5b27: $80
	add  c                                           ; $5b28: $81
	nop                                              ; $5b29: $00
	add  b                                           ; $5b2a: $80
	ld   [$7806], sp                                 ; $5b2b: $08 $06 $78
	ld   [$0888], sp                                 ; $5b2e: $08 $88 $08
	ld   a, b                                        ; $5b31: $78
	ld   [$8088], sp                                 ; $5b32: $08 $88 $80
	jr   c, jr_08a_5ab9                              ; $5b35: $38 $82

	ld   a, b                                        ; $5b37: $78
	ld   bc, $3038                                   ; $5b38: $01 $38 $30
	sbc  l                                           ; $5b3b: $9d
	nop                                              ; $5b3c: $00
	inc  b                                           ; $5b3d: $04
	ld   a, [bc]                                     ; $5b3e: $0a
	ld   [$080a], sp                                 ; $5b3f: $08 $0a $08
	inc  c                                           ; $5b42: $0c
	add  c                                           ; $5b43: $81
	ld   [$0c00], sp                                 ; $5b44: $08 $00 $0c
	add  e                                           ; $5b47: $83
	ld   [$0c02], sp                                 ; $5b48: $08 $02 $0c
	ld   [$8d84], sp                                 ; $5b4b: $08 $84 $8d
	add  b                                           ; $5b4e: $80
	adc  [hl]                                        ; $5b4f: $8e
	nop                                              ; $5b50: $00
	add  e                                           ; $5b51: $83
	ld   [$6882], sp                                 ; $5b52: $08 $82 $68
	add  b                                           ; $5b55: $80
	ld   [$1880], sp                                 ; $5b56: $08 $80 $18
	add  c                                           ; $5b59: $81
	ld   [$009e], sp                                 ; $5b5a: $08 $9e $00
	ld   [$080c], sp                                 ; $5b5d: $08 $0c $08
	dec  c                                           ; $5b60: $0d
	ld   [$0809], sp                                 ; $5b61: $08 $09 $08
	ld   a, [bc]                                     ; $5b64: $0a
	ld   [$820a], sp                                 ; $5b65: $08 $0a $82
	ld   [$0c80], sp                                 ; $5b68: $08 $80 $0c
	ld   bc, $860e                                   ; $5b6b: $01 $0e $86
	adc  h                                           ; $5b6e: $8c
	add  b                                           ; $5b6f: $80
	ld   bc, $0383                                   ; $5b70: $01 $83 $03
	add  [hl]                                        ; $5b73: $86
	nop                                              ; $5b74: $00
	add  b                                           ; $5b75: $80
	inc  bc                                          ; $5b76: $03
	add  b                                           ; $5b77: $80

jr_08a_5b78:
	rrca                                             ; $5b78: $0f
	inc  bc                                          ; $5b79: $03
	ld   a, a                                        ; $5b7a: $7f
	ld   a, h                                        ; $5b7b: $7c
	rst  $38                                         ; $5b7c: $ff
	db   $f4                                         ; $5b7d: $f4
	add  b                                           ; $5b7e: $80
	jr   z, @-$7e                                    ; $5b7f: $28 $80

	ld   [$1880], sp                                 ; $5b81: $08 $80 $18
	add  b                                           ; $5b84: $80
	ld   a, b                                        ; $5b85: $78
	ld   b, $f8                                      ; $5b86: $06 $f8
	add  sp, -$08                                    ; $5b88: $e8 $f8
	add  b                                           ; $5b8a: $80
	ldh  [rP1], a                                    ; $5b8b: $e0 $00
	add  b                                           ; $5b8d: $80
	sbc  [hl]                                        ; $5b8e: $9e
	nop                                              ; $5b8f: $00
	rlca                                             ; $5b90: $07
	ld   [$030f], sp                                 ; $5b91: $08 $0f $03
	rlca                                             ; $5b94: $07
	ld   bc, $0003                                   ; $5b95: $01 $03 $00
	ld   bc, $0086                                   ; $5b98: $01 $86 $00
	nop                                              ; $5b9b: $00
	add  b                                           ; $5b9c: $80
	add  b                                           ; $5b9d: $80
	sbc  a                                           ; $5b9e: $9f
	ld   b, $ff                                      ; $5b9f: $06 $ff
	db   $fc                                         ; $5ba1: $fc
	rst  $38                                         ; $5ba2: $ff
	ldh  [$fc], a                                    ; $5ba3: $e0 $fc
	add  b                                           ; $5ba5: $80
	ldh  [$84], a                                    ; $5ba6: $e0 $84
	nop                                              ; $5ba8: $00
	dec  b                                           ; $5ba9: $05
	inc  e                                           ; $5baa: $1c
	db   $fc                                         ; $5bab: $fc
	add  b                                           ; $5bac: $80
	ldh  [rP1], a                                    ; $5bad: $e0 $00
	add  b                                           ; $5baf: $80
	db   $e4                                         ; $5bb0: $e4
	nop                                              ; $5bb1: $00
	inc  b                                           ; $5bb2: $04
	inc  b                                           ; $5bb3: $04
	nop                                              ; $5bb4: $00
	ld   [bc], a                                     ; $5bb5: $02
	nop                                              ; $5bb6: $00
	ld   b, $9b                                      ; $5bb7: $06 $9b
	nop                                              ; $5bb9: $00
	ld   [bc], a                                     ; $5bba: $02
	rlca                                             ; $5bbb: $07
	nop                                              ; $5bbc: $00
	rlca                                             ; $5bbd: $07
	sub  a                                           ; $5bbe: $97
	nop                                              ; $5bbf: $00
	ld   b, $07                                      ; $5bc0: $06 $07
	nop                                              ; $5bc2: $00
	ld   a, b                                        ; $5bc3: $78
	nop                                              ; $5bc4: $00
	add  b                                           ; $5bc5: $80
	nop                                              ; $5bc6: $00
	rst  $38                                         ; $5bc7: $ff
	sub  l                                           ; $5bc8: $95
	nop                                              ; $5bc9: $00
	ld   [bc], a                                     ; $5bca: $02
	ld   [hl], b                                     ; $5bcb: $70
	nop                                              ; $5bcc: $00
	add  b                                           ; $5bcd: $80
	add  e                                           ; $5bce: $83
	nop                                              ; $5bcf: $00
	nop                                              ; $5bd0: $00
	ldh  a, [$bd]                                    ; $5bd1: $f0 $bd
	nop                                              ; $5bd3: $00
	nop                                              ; $5bd4: $00
	rlca                                             ; $5bd5: $07
	add  c                                           ; $5bd6: $81
	nop                                              ; $5bd7: $00
	inc  b                                           ; $5bd8: $04
	inc  b                                           ; $5bd9: $04
	nop                                              ; $5bda: $00
	ld   [bc], a                                     ; $5bdb: $02
	nop                                              ; $5bdc: $00
	ld   bc, $0095                                   ; $5bdd: $01 $95 $00
	nop                                              ; $5be0: $00
	ld   a, a                                        ; $5be1: $7f
	add  e                                           ; $5be2: $83
	nop                                              ; $5be3: $00
	ld   [bc], a                                     ; $5be4: $02
	rlca                                             ; $5be5: $07
	nop                                              ; $5be6: $00
	ld   a, b                                        ; $5be7: $78
	add  l                                           ; $5be8: $85
	nop                                              ; $5be9: $00
	ld   [bc], a                                     ; $5bea: $02
	ld   [$0800], sp                                 ; $5beb: $08 $00 $08
	add  c                                           ; $5bee: $81
	nop                                              ; $5bef: $00
	inc  b                                           ; $5bf0: $04
	ld   [$0800], sp                                 ; $5bf1: $08 $00 $08
	nop                                              ; $5bf4: $00
	jr   nc, jr_08a_5b78                             ; $5bf5: $30 $81

	nop                                              ; $5bf7: $00
	inc  h                                           ; $5bf8: $24
	jr   nc, jr_08a_5bfb                             ; $5bf9: $30 $00

jr_08a_5bfb:
	rst  $38                                         ; $5bfb: $ff
	nop                                              ; $5bfc: $00
	rlca                                             ; $5bfd: $07
	nop                                              ; $5bfe: $00
	ld   a, b                                        ; $5bff: $78
	nop                                              ; $5c00: $00
	add  b                                           ; $5c01: $80
	nop                                              ; $5c02: $00
	inc  b                                           ; $5c03: $04
	nop                                              ; $5c04: $00
	inc  de                                          ; $5c05: $13
	nop                                              ; $5c06: $00
	rlc  b                                           ; $5c07: $cb $00
	db   $db                                         ; $5c09: $db
	nop                                              ; $5c0a: $00
	reti                                             ; $5c0b: $d9


	nop                                              ; $5c0c: $00
	call nc, Call_08a_4100                           ; $5c0d: $d4 $00 $41
	nop                                              ; $5c10: $00
	inc  de                                          ; $5c11: $13
	nop                                              ; $5c12: $00
	sbc  c                                           ; $5c13: $99
	nop                                              ; $5c14: $00
	db   $e4                                         ; $5c15: $e4
	nop                                              ; $5c16: $00
	jr   jr_08a_5c19                                 ; $5c17: $18 $00

jr_08a_5c19:
	ret  z                                           ; $5c19: $c8

	nop                                              ; $5c1a: $00
	ld   [hl], l                                     ; $5c1b: $75
	nop                                              ; $5c1c: $00
	add  b                                           ; $5c1d: $80
	ei                                               ; $5c1e: $fb

jr_08a_5c1f:
	nop                                              ; $5c1f: $00
	ld   [bc], a                                     ; $5c20: $02
	inc  c                                           ; $5c21: $0c
	nop                                              ; $5c22: $00
	ld   [de], a                                     ; $5c23: $12
	add  c                                           ; $5c24: $81
	nop                                              ; $5c25: $00
	ld   [bc], a                                     ; $5c26: $02
	ld   [de], a                                     ; $5c27: $12
	nop                                              ; $5c28: $00
	inc  c                                           ; $5c29: $0c
	add  c                                           ; $5c2a: $81
	nop                                              ; $5c2b: $00
	ld   b, $60                                      ; $5c2c: $06 $60
	nop                                              ; $5c2e: $00
	stop                                             ; $5c2f: $10 $00
	stop                                             ; $5c31: $10 $00
	ld   h, b                                        ; $5c33: $60
	adc  e                                           ; $5c34: $8b
	nop                                              ; $5c35: $00
	inc  c                                           ; $5c36: $0c
	ld   d, l                                        ; $5c37: $55
	nop                                              ; $5c38: $00
	jr   z, jr_08a_5c3b                              ; $5c39: $28 $00

jr_08a_5c3b:
	xor  h                                           ; $5c3b: $ac
	nop                                              ; $5c3c: $00
	and  d                                           ; $5c3d: $a2
	nop                                              ; $5c3e: $00
	inc  hl                                          ; $5c3f: $23
	nop                                              ; $5c40: $00
	stop                                             ; $5c41: $10 $00
	ld   b, b                                        ; $5c43: $40
	rst  $38                                         ; $5c44: $ff
	nop                                              ; $5c45: $00
	rst  $38                                         ; $5c46: $ff
	nop                                              ; $5c47: $00
	rst  $38                                         ; $5c48: $ff
	nop                                              ; $5c49: $00
	rst  $38                                         ; $5c4a: $ff
	nop                                              ; $5c4b: $00
	rst  $38                                         ; $5c4c: $ff
	nop                                              ; $5c4d: $00
	call z, Call_08a_6400                            ; $5c4e: $cc $00 $64
	nop                                              ; $5c51: $00
	sub  [hl]                                        ; $5c52: $96
	nop                                              ; $5c53: $00
	add  b                                           ; $5c54: $80
	ld   bc, $0300                                   ; $5c55: $01 $00 $03
	add  e                                           ; $5c58: $83
	ld   [bc], a                                     ; $5c59: $02
	nop                                              ; $5c5a: $00
	ld   bc, $0083                                   ; $5c5b: $01 $83 $00
	add  b                                           ; $5c5e: $80
	ldh  a, [$08]                                    ; $5c5f: $f0 $08
	adc  h                                           ; $5c61: $8c
	db   $fc                                         ; $5c62: $fc
	ldh  a, [c]                                      ; $5c63: $f2
	add  d                                           ; $5c64: $82
	pop  bc                                          ; $5c65: $c1
	ld   a, a                                        ; $5c66: $7f
	ld   c, a                                        ; $5c67: $4f
	ccf                                              ; $5c68: $3f
	adc  $bd                                         ; $5c69: $ce $bd
	nop                                              ; $5c6b: $00
	add  d                                           ; $5c6c: $82
	ld   bc, $021b                                   ; $5c6d: $01 $1b $02
	inc  bc                                          ; $5c70: $03
	ld   b, $05                                      ; $5c71: $06 $05
	rrca                                             ; $5c73: $0f
	ld   c, $0c                                      ; $5c74: $0e $0c
	dec  bc                                          ; $5c76: $0b
	rrca                                             ; $5c77: $0f
	dec  c                                           ; $5c78: $0d
	nop                                              ; $5c79: $00
	ld   b, $fd                                      ; $5c7a: $06 $fd
	rrca                                             ; $5c7c: $0f
	dec  c                                           ; $5c7d: $0d
	add  e                                           ; $5c7e: $83
	add  d                                           ; $5c7f: $82
	ld   h, d                                        ; $5c80: $62
	ld   h, b                                        ; $5c81: $60
	db   $fc                                         ; $5c82: $fc
	ret  nz                                          ; $5c83: $c0

	ld   b, b                                        ; $5c84: $40
	inc  bc                                          ; $5c85: $03
	add  e                                           ; $5c86: $83
	inc  c                                           ; $5c87: $0c
	rrca                                             ; $5c88: $0f
	inc  de                                          ; $5c89: $13
	db   $10                                         ; $5c8a: $10
	adc  b                                           ; $5c8b: $88
	nop                                              ; $5c8c: $00
	add  b                                           ; $5c8d: $80
	ldh  [rDIV], a                                   ; $5c8e: $e0 $04
	jr   nz, @-$1e                                   ; $5c90: $20 $e0

	or   c                                           ; $5c92: $b1
	ld   d, c                                        ; $5c93: $51
	jr   nz, jr_08a_5c1f                             ; $5c94: $20 $89

	nop                                              ; $5c96: $00
	add  b                                           ; $5c97: $80
	ldh  a, [rSC]                                    ; $5c98: $f0 $02
	inc  c                                           ; $5c9a: $0c
	db   $fc                                         ; $5c9b: $fc
	ldh  a, [$91]                                    ; $5c9c: $f0 $91
	nop                                              ; $5c9e: $00
	add  b                                           ; $5c9f: $80
	ld   bc, $0282                                   ; $5ca0: $01 $82 $02
	nop                                              ; $5ca3: $00
	inc  b                                           ; $5ca4: $04
	add  e                                           ; $5ca5: $83
	ld   b, $01                                      ; $5ca6: $06 $01
	ld   [bc], a                                     ; $5ca8: $02
	nop                                              ; $5ca9: $00
	add  b                                           ; $5caa: $80
	ldh  [rSC], a                                    ; $5cab: $e0 $02
	jr   @-$06                                       ; $5cad: $18 $f8

	db   $fc                                         ; $5caf: $fc
	add  e                                           ; $5cb0: $83
	db   $f4                                         ; $5cb1: $f4
	ld   b, $d6                                      ; $5cb2: $06 $d6
	and  $e5                                         ; $5cb4: $e6 $e5
	rst  $20                                         ; $5cb6: $e7
	ld   sp, hl                                      ; $5cb7: $f9
	ccf                                              ; $5cb8: $3f
	inc  hl                                          ; $5cb9: $23
	add  b                                           ; $5cba: $80
	inc  a                                           ; $5cbb: $3c
	ld   [$0020], sp                                 ; $5cbc: $08 $20 $00
	ld   de, $0f01                                   ; $5cbf: $11 $01 $0f
	inc  c                                           ; $5cc2: $0c
	rrca                                             ; $5cc3: $0f
	dec  bc                                          ; $5cc4: $0b
	rrca                                             ; $5cc5: $0f
	add  b                                           ; $5cc6: $80
	adc  a                                           ; $5cc7: $8f

jr_08a_5cc8:
	ld   [$91f6], sp                                 ; $5cc8: $08 $f6 $91
	sub  e                                           ; $5ccb: $93
	ld   [de], a                                     ; $5ccc: $12
	ld   [bc], a                                     ; $5ccd: $02
	ld   [hl+], a                                    ; $5cce: $22
	ld   b, $c7                                      ; $5ccf: $06 $c7
	rst  $38                                         ; $5cd1: $ff
	add  b                                           ; $5cd2: $80
	add  hl, sp                                      ; $5cd3: $39
	dec  d                                           ; $5cd4: $15
	sub  l                                           ; $5cd5: $95
	dec  d                                           ; $5cd6: $15
	ld   d, [hl]                                     ; $5cd7: $56
	ld   d, a                                        ; $5cd8: $57
	ld   c, a                                        ; $5cd9: $4f
	inc  sp                                          ; $5cda: $33
	cp   $3d                                         ; $5cdb: $fe $3d
	pop  bc                                          ; $5cdd: $c1
	pop  af                                          ; $5cde: $f1
	ccf                                              ; $5cdf: $3f
	ld   sp, $0e0f                                   ; $5ce0: $31 $0f $0e
	jp   nz, $bc40                                   ; $5ce3: $c2 $40 $bc

	jr   nz, jr_08a_5cc8                             ; $5ce6: $20 $e0

	ret  nz                                          ; $5ce8: $c0

	ld   b, b                                        ; $5ce9: $40
	add  b                                           ; $5cea: $80
	adc  l                                           ; $5ceb: $8d
	nop                                              ; $5cec: $00
	inc  bc                                          ; $5ced: $03
	inc  b                                           ; $5cee: $04
	ld   b, $01                                      ; $5cef: $06 $01
	inc  bc                                          ; $5cf1: $03
	add  b                                           ; $5cf2: $80
	ld   bc, $0088                                   ; $5cf3: $01 $88 $00
	ld   b, $7f                                      ; $5cf6: $06 $7f
	call $8f4d                                       ; $5cf8: $cd $4d $8f
	adc  c                                           ; $5cfb: $89
	rst  $38                                         ; $5cfc: $ff
	ld   h, $81                                      ; $5cfd: $26 $81
	scf                                              ; $5cff: $37
	ld   [bc], a                                     ; $5d00: $02
	ld   d, a                                        ; $5d01: $57
	ld   [hl], a                                     ; $5d02: $77
	halt                                             ; $5d03: $76
	add  c                                           ; $5d04: $81
	ld   [hl], a                                     ; $5d05: $77
	ld   [bc], a                                     ; $5d06: $02
	ld   a, [hl]                                     ; $5d07: $7e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d08: $cf
	ld   b, e                                        ; $5d09: $43
	add  b                                           ; $5d0a: $80
	rst  ToBoot                                         ; $5d0b: $c7
	rlca                                             ; $5d0c: $07
	ld   b, a                                        ; $5d0d: $47
	ld   h, c                                        ; $5d0e: $61
	and  e                                           ; $5d0f: $a3
	and  d                                           ; $5d10: $a2
	and  e                                           ; $5d11: $a3
	and  d                                           ; $5d12: $a2
	and  e                                           ; $5d13: $a3
	xor  l                                           ; $5d14: $ad
	add  c                                           ; $5d15: $81
	cpl                                              ; $5d16: $2f
	nop                                              ; $5d17: $00
	ld   hl, sp-$80                                  ; $5d18: $f8 $80
	ld   l, e                                        ; $5d1a: $6b
	add  b                                           ; $5d1b: $80
	ld   l, d                                        ; $5d1c: $6a
	inc  c                                           ; $5d1d: $0c
	ld   l, e                                        ; $5d1e: $6b

jr_08a_5d1f:
	xor  b                                           ; $5d1f: $a8
	ld   hl, sp+$1c                                  ; $5d20: $f8 $1c
	db   $f4                                         ; $5d22: $f4
	and  $da                                         ; $5d23: $e6 $da
	db   $db                                         ; $5d25: $db
	reti                                             ; $5d26: $d9


	pop  de                                          ; $5d27: $d1
	cp   l                                           ; $5d28: $bd
	ld   a, c                                        ; $5d29: $79
	jp   $8780                                       ; $5d2a: $c3 $80 $87


	ld   bc, $0f09                                   ; $5d2d: $01 $09 $0f
	add  b                                           ; $5d30: $80
	dec  c                                           ; $5d31: $0d
	add  b                                           ; $5d32: $80
	add  hl, de                                      ; $5d33: $19
	add  hl, bc                                      ; $5d34: $09
	ld   l, c                                        ; $5d35: $69
	ld   a, b                                        ; $5d36: $78
	xor  b                                           ; $5d37: $a8
	db   $e4                                         ; $5d38: $e4
	and  h                                           ; $5d39: $a4
	sub  h                                           ; $5d3a: $94
	xor  e                                           ; $5d3b: $ab
	ret  nz                                          ; $5d3c: $c0

	jr   nz, jr_08a_5d1f                             ; $5d3d: $20 $e0

	add  d                                           ; $5d3f: $82
	ret  nc                                          ; $5d40: $d0

	ld   [bc], a                                     ; $5d41: $02
	ret  z                                           ; $5d42: $c8

	ret  c                                           ; $5d43: $d8

	ld   e, b                                        ; $5d44: $58
	add  c                                           ; $5d45: $81
	ret  c                                           ; $5d46: $d8

	inc  bc                                          ; $5d47: $03
	cp   b                                           ; $5d48: $b8
	ld   a, b                                        ; $5d49: $78
	sub  b                                           ; $5d4a: $90
	nop                                              ; $5d4b: $00
	add  b                                           ; $5d4c: $80
	inc  bc                                          ; $5d4d: $03
	ld   b, $0c                                      ; $5d4e: $06 $0c
	rrca                                             ; $5d50: $0f
	dec  bc                                          ; $5d51: $0b
	ld   [$1f11], sp                                 ; $5d52: $08 $11 $1f
	ld   de, $1e80                                   ; $5d55: $11 $80 $1e
	dec  b                                           ; $5d58: $05
	stop                                             ; $5d59: $10 $00
	ld   [$f6e0], sp                                 ; $5d5b: $08 $e0 $f6
	ld   l, $80                                      ; $5d5e: $2e $80
	ld   hl, sp+$07                                  ; $5d60: $f8 $07
	rst  $28                                         ; $5d62: $ef
	xor  l                                           ; $5d63: $ad
	ld   b, l                                        ; $5d64: $45
	push bc                                          ; $5d65: $c5
	add  l                                           ; $5d66: $85

jr_08a_5d67:
	add  c                                           ; $5d67: $81
	add  hl, bc                                      ; $5d68: $09
	ld   bc, $3180                                   ; $5d69: $01 $80 $31
	add  hl, bc                                      ; $5d6c: $09
	pop  de                                          ; $5d6d: $d1
	call nc, Call_08a_7f77                           ; $5d6e: $d4 $77 $7f
	rst  $38                                         ; $5d71: $ff
	sbc  l                                           ; $5d72: $9d
	di                                               ; $5d73: $f3
	ldh  [c], a                                      ; $5d74: $e2
	jp   hl                                          ; $5d75: $e9


	ld   l, c                                        ; $5d76: $69
	add  b                                           ; $5d77: $80
	reti                                             ; $5d78: $d9


	add  b                                           ; $5d79: $80
	cp   c                                           ; $5d7a: $b9
	add  b                                           ; $5d7b: $80
	ld   a, c                                        ; $5d7c: $79
	inc  bc                                          ; $5d7d: $03
	ld   sp, hl                                      ; $5d7e: $f9
	pop  af                                          ; $5d7f: $f1
	cp   l                                           ; $5d80: $bd
	or   l                                           ; $5d81: $b5
	add  b                                           ; $5d82: $80
	ld   a, c                                        ; $5d83: $79
	inc  bc                                          ; $5d84: $03
	ld   a, e                                        ; $5d85: $7b
	ld   l, e                                        ; $5d86: $6b
	di                                               ; $5d87: $f3
	inc  de                                          ; $5d88: $13
	add  b                                           ; $5d89: $80
	rst  $38                                         ; $5d8a: $ff
	add  b                                           ; $5d8b: $80
	ld   d, h                                        ; $5d8c: $54
	ld   d, $57                                      ; $5d8d: $16 $57
	db   $10                                         ; $5d8f: $10
	cp   a                                           ; $5d90: $bf
	ld   hl, sp+$6e                                  ; $5d91: $f8 $6e
	ld   b, b                                        ; $5d93: $40
	or   c                                           ; $5d94: $b1
	sub  b                                           ; $5d95: $90
	ldh  a, [$b0]                                    ; $5d96: $f0 $b0
	ld   [hl], b                                     ; $5d98: $70
	jr   nc, @-$2e                                   ; $5d99: $30 $d0

	ld   d, b                                        ; $5d9b: $50
	or   b                                           ; $5d9c: $b0
	jr   c, jr_08a_5d67                              ; $5d9d: $38 $c8

	ld   [$20e8], sp                                 ; $5d9f: $08 $e8 $20
	jr   nc, jr_08a_5dc4                             ; $5da2: $30 $20

	ldh  [$8a], a                                    ; $5da4: $e0 $8a
	nop                                              ; $5da6: $00
	add  b                                           ; $5da7: $80
	rlca                                             ; $5da8: $07
	adc  h                                           ; $5da9: $8c
	nop                                              ; $5daa: $00
	dec  bc                                          ; $5dab: $0b
	ret  c                                           ; $5dac: $d8

	cp   b                                           ; $5dad: $b8
	sbc  b                                           ; $5dae: $98
	add  sp, $7c                                     ; $5daf: $e8 $7c
	ld   e, h                                        ; $5db1: $5c
	ld   c, h                                        ; $5db2: $4c
	ld   [hl], h                                     ; $5db3: $74
	inc  a                                           ; $5db4: $3c
	inc  l                                           ; $5db5: $2c
	inc  h                                           ; $5db6: $24
	inc  a                                           ; $5db7: $3c
	add  d                                           ; $5db8: $82
	nop                                              ; $5db9: $00
	dec  b                                           ; $5dba: $05
	sbc  a                                           ; $5dbb: $9f
	pop  af                                          ; $5dbc: $f1
	ret  nc                                          ; $5dbd: $d0

	ldh  [c], a                                      ; $5dbe: $e2
	jr   nz, jr_08a_5e3d                             ; $5dbf: $20 $7c

	adc  b                                           ; $5dc1: $88
	nop                                              ; $5dc2: $00
	nop                                              ; $5dc3: $00

jr_08a_5dc4:
	db   $10                                         ; $5dc4: $10
	add  b                                           ; $5dc5: $80
	rra                                              ; $5dc6: $1f
	add  b                                           ; $5dc7: $80
	db   $10                                         ; $5dc8: $10
	inc  b                                           ; $5dc9: $04
	rra                                              ; $5dca: $1f
	inc  bc                                          ; $5dcb: $03

jr_08a_5dcc:
	rrca                                             ; $5dcc: $0f
	inc  b                                           ; $5dcd: $04
	rlca                                             ; $5dce: $07
	add  h                                           ; $5dcf: $84
	nop                                              ; $5dd0: $00
	ld   [bc], a                                     ; $5dd1: $02
	jr   jr_08a_5dcc                                 ; $5dd2: $18 $f8

	ldh  a, [$80]                                    ; $5dd4: $f0 $80
	db   $10                                         ; $5dd6: $10
	inc  b                                           ; $5dd7: $04
	ldh  a, [$c0]                                    ; $5dd8: $f0 $c0
	ldh  [rP1], a                                    ; $5dda: $e0 $00
	ret  nz                                          ; $5ddc: $c0

	rst  $38                                         ; $5ddd: $ff
	nop                                              ; $5dde: $00
	rst  $38                                         ; $5ddf: $ff
	nop                                              ; $5de0: $00
	rst  $38                                         ; $5de1: $ff
	nop                                              ; $5de2: $00
	rst  $38                                         ; $5de3: $ff
	nop                                              ; $5de4: $00
	rst  $38                                         ; $5de5: $ff
	nop                                              ; $5de6: $00
	rst  $38                                         ; $5de7: $ff
	nop                                              ; $5de8: $00
	rst  $38                                         ; $5de9: $ff
	nop                                              ; $5dea: $00
	rst  $38                                         ; $5deb: $ff
	nop                                              ; $5dec: $00
	rst  $38                                         ; $5ded: $ff
	nop                                              ; $5dee: $00
	rlc  b                                           ; $5def: $cb $00
	ld   l, e                                        ; $5df1: $6b
	nop                                              ; $5df2: $00
	sub  [hl]                                        ; $5df3: $96
	nop                                              ; $5df4: $00
	add  b                                           ; $5df5: $80
	ld   bc, $0282                                   ; $5df6: $01 $82 $02
	add  b                                           ; $5df9: $80
	inc  bc                                          ; $5dfa: $03
	add  h                                           ; $5dfb: $84
	nop                                              ; $5dfc: $00
	add  b                                           ; $5dfd: $80
	db   $fc                                         ; $5dfe: $fc
	ld   [bc], a                                     ; $5dff: $02
	ld   [bc], a                                     ; $5e00: $02
	ld   a, [hl]                                     ; $5e01: $7e
	dec  b                                           ; $5e02: $05
	add  c                                           ; $5e03: $81
	rst  $38                                         ; $5e04: $ff
	ld   [bc], a                                     ; $5e05: $02
	add  l                                           ; $5e06: $85
	ld   a, a                                        ; $5e07: $7f
	ld   a, h                                        ; $5e08: $7c
	cp   l                                           ; $5e09: $bd
	nop                                              ; $5e0a: $00
	nop                                              ; $5e0b: $00
	inc  bc                                          ; $5e0c: $03
	add  e                                           ; $5e0d: $83
	ld   [bc], a                                     ; $5e0e: $02
	ld   bc, $0100                                   ; $5e0f: $01 $00 $01
	add  [hl]                                        ; $5e12: $86
	nop                                              ; $5e13: $00
	nop                                              ; $5e14: $00
	rst  $38                                         ; $5e15: $ff
	add  b                                           ; $5e16: $80
	db   $fd                                         ; $5e17: $fd
	add  c                                           ; $5e18: $81
	add  l                                           ; $5e19: $85
	inc  bc                                          ; $5e1a: $03
	add  h                                           ; $5e1b: $84
	add  [hl]                                        ; $5e1c: $86
	add  h                                           ; $5e1d: $84
	db   $fc                                         ; $5e1e: $fc
	add  d                                           ; $5e1f: $82
	nop                                              ; $5e20: $00
	add  b                                           ; $5e21: $80
	rrca                                             ; $5e22: $0f
	adc  h                                           ; $5e23: $8c
	nop                                              ; $5e24: $00
	add  b                                           ; $5e25: $80
	add  b                                           ; $5e26: $80

jr_08a_5e27:
	adc  h                                           ; $5e27: $8c
	nop                                              ; $5e28: $00
	add  b                                           ; $5e29: $80
	ldh  a, [$94]                                    ; $5e2a: $f0 $94
	nop                                              ; $5e2c: $00
	add  b                                           ; $5e2d: $80
	ld   bc, $0280                                   ; $5e2e: $01 $80 $02
	dec  b                                           ; $5e31: $05
	inc  b                                           ; $5e32: $04
	dec  b                                           ; $5e33: $05
	ld   [$090b], sp                                 ; $5e34: $08 $0b $09
	dec  bc                                          ; $5e37: $0b
	add  h                                           ; $5e38: $84
	nop                                              ; $5e39: $00
	add  b                                           ; $5e3a: $80
	ldh  a, [rAUD1SWEEP]                             ; $5e3b: $f0 $10

jr_08a_5e3d:
	jr   c, jr_08a_5e27                              ; $5e3d: $38 $e8

	ld   l, h                                        ; $5e3f: $6c
	db   $e4                                         ; $5e40: $e4
	and  $f2                                         ; $5e41: $e6 $f2
	ld   [hl], d                                     ; $5e43: $72
	ld   [$1bcc], a                                  ; $5e44: $ea $cc $1b
	daa                                              ; $5e47: $27

jr_08a_5e48:
	dec  a                                           ; $5e48: $3d
	ld   a, [hl-]                                    ; $5e49: $3a
	ccf                                              ; $5e4a: $3f
	dec  hl                                          ; $5e4b: $2b
	inc  a                                           ; $5e4c: $3c
	inc  [hl]                                        ; $5e4d: $34
	add  c                                           ; $5e4e: $81
	add  hl, sp                                      ; $5e4f: $39
	ld   a, [bc]                                     ; $5e50: $0a
	add  hl, de                                      ; $5e51: $19
	rra                                              ; $5e52: $1f
	ld   de, $4717                                   ; $5e53: $11 $17 $47
	pop  bc                                          ; $5e56: $c1
	and  d                                           ; $5e57: $a2

jr_08a_5e58:
	ldh  [c], a                                      ; $5e58: $e2
	scf                                              ; $5e59: $37
	rst  $30                                         ; $5e5a: $f7
	rst  $38                                         ; $5e5b: $ff
	add  b                                           ; $5e5c: $80
	dec  e                                           ; $5e5d: $1d
	add  b                                           ; $5e5e: $80
	reti                                             ; $5e5f: $d9


	add  b                                           ; $5e60: $80
	jp   c, $fc0d                                    ; $5e61: $da $0d $fc

	db   $e4                                         ; $5e64: $e4
	inc  h                                           ; $5e65: $24
	rrc  b                                           ; $5e66: $cb $08
	ld   h, h                                        ; $5e68: $64
	db   $fc                                         ; $5e69: $fc
	ld   [$befe], a                                  ; $5e6a: $ea $fe $be
	cp   $4a                                         ; $5e6d: $fe $4a
	cp   $84                                         ; $5e6f: $fe $84
	add  b                                           ; $5e71: $80
	ld   a, h                                        ; $5e72: $7c
	inc  bc                                          ; $5e73: $03
	inc  d                                           ; $5e74: $14
	db   $10                                         ; $5e75: $10
	jr   z, jr_08a_5e48                              ; $5e76: $28 $d0

	adc  l                                           ; $5e78: $8d
	nop                                              ; $5e79: $00
	dec  b                                           ; $5e7a: $05
	ld   a, [bc]                                     ; $5e7b: $0a
	dec  bc                                          ; $5e7c: $0b
	add  hl, bc                                      ; $5e7d: $09
	rrca                                             ; $5e7e: $0f
	nop                                              ; $5e7f: $00
	rlca                                             ; $5e80: $07
	add  b                                           ; $5e81: $80
	inc  bc                                          ; $5e82: $03
	add  [hl]                                        ; $5e83: $86
	nop                                              ; $5e84: $00
	ld   a, [bc]                                     ; $5e85: $0a
	ld   a, [hl]                                     ; $5e86: $7e
	add  $46                                         ; $5e87: $c6 $46
	add  d                                           ; $5e89: $82
	add  b                                           ; $5e8a: $80
	inc  b                                           ; $5e8b: $04
	rlca                                             ; $5e8c: $07
	cp   a                                           ; $5e8d: $bf
	and  b                                           ; $5e8e: $a0
	rst  $28                                         ; $5e8f: $ef
	ld   b, b                                        ; $5e90: $40
	add  c                                           ; $5e91: $81
	ld   e, a                                        ; $5e92: $5f
	inc  b                                           ; $5e93: $04
	ld   [hl], b                                     ; $5e94: $70
	ld   l, a                                        ; $5e95: $6f
	dec  hl                                          ; $5e96: $2b
	cpl                                              ; $5e97: $2f
	dec  h                                           ; $5e98: $25
	add  b                                           ; $5e99: $80
	cpl                                              ; $5e9a: $2f
	ld   b, $3f                                      ; $5e9b: $06 $3f
	or   l                                           ; $5e9d: $b5
	cp   a                                           ; $5e9e: $bf
	ld   c, d                                        ; $5e9f: $4a
	rst  JumpTable                                         ; $5ea0: $df
	and  b                                           ; $5ea1: $a0
	rst  $28                                         ; $5ea2: $ef
	add  b                                           ; $5ea3: $80
	push hl                                          ; $5ea4: $e5
	inc  b                                           ; $5ea5: $04
	xor  b                                           ; $5ea6: $a8
	db   $eb                                         ; $5ea7: $eb
	ld   [hl], c                                     ; $5ea8: $71
	sub  e                                           ; $5ea9: $93
	sbc  b                                           ; $5eaa: $98
	add  b                                           ; $5eab: $80

jr_08a_5eac:
	ld   hl, sp-$7e                                  ; $5eac: $f8 $82
	adc  b                                           ; $5eae: $88
	ld   [$10f8], sp                                 ; $5eaf: $08 $f8 $10
	ldh  a, [$78]                                    ; $5eb2: $f0 $78
	ld   hl, sp-$44                                  ; $5eb4: $f8 $bc
	db   $f4                                         ; $5eb6: $f4
	ret  c                                           ; $5eb7: $d8

	ldh  a, [$80]                                    ; $5eb8: $f0 $80
	rlca                                             ; $5eba: $07
	ld   [bc], a                                     ; $5ebb: $02
	ld   [$100b], sp                                 ; $5ebc: $08 $0b $10
	add  c                                           ; $5ebf: $81
	rla                                              ; $5ec0: $17
	ld   [bc], a                                     ; $5ec1: $02
	inc  e                                           ; $5ec2: $1c
	dec  de                                          ; $5ec3: $1b
	inc  e                                           ; $5ec4: $1c
	add  b                                           ; $5ec5: $80
	rla                                              ; $5ec6: $17
	ld   [bc], a                                     ; $5ec7: $02
	inc  d                                           ; $5ec8: $14
	dec  bc                                          ; $5ec9: $0b
	nop                                              ; $5eca: $00
	add  b                                           ; $5ecb: $80
	ldh  [rSC], a                                    ; $5ecc: $e0 $02

jr_08a_5ece:
	db   $10                                         ; $5ece: $10
	ldh  a, [$28]                                    ; $5ecf: $f0 $28
	add  c                                           ; $5ed1: $81
	ld   hl, sp+$02                                  ; $5ed2: $f8 $02
	jr   z, jr_08a_5ece                              ; $5ed4: $28 $f8

	jr   jr_08a_5e58                                 ; $5ed6: $18 $80

	add  sp, $02                                     ; $5ed8: $e8 $02
	jr   z, jr_08a_5eac                              ; $5eda: $28 $d0

	nop                                              ; $5edc: $00
	add  b                                           ; $5edd: $80
	rlca                                             ; $5ede: $07
	ld   [de], a                                     ; $5edf: $12
	jr   jr_08a_5f01                                 ; $5ee0: $18 $1f

	ld   de, $2c17                                   ; $5ee2: $11 $17 $2c
	cpl                                              ; $5ee5: $2f
	ld   hl, $322e                                   ; $5ee6: $21 $2e $32

jr_08a_5ee9:
	inc  a                                           ; $5ee9: $3c
	inc  e                                           ; $5eea: $1c
	ld   [de], a                                     ; $5eeb: $12
	ld   [hl], d                                     ; $5eec: $72
	ld   e, a                                        ; $5eed: $5f
	rst  JumpTable                                         ; $5eee: $df
	ret  nc                                          ; $5eef: $d0

	ld   d, b                                        ; $5ef0: $50
	ret  nc                                          ; $5ef1: $d0

	ld   d, b                                        ; $5ef2: $50
	add  b                                           ; $5ef3: $80
	pop  af                                          ; $5ef4: $f1
	ld   bc, $9a9f                                   ; $5ef5: $01 $9f $9a
	add  b                                           ; $5ef8: $80
	ld   c, d                                        ; $5ef9: $4a
	rrca                                             ; $5efa: $0f
	ld   a, [hl+]                                    ; $5efb: $2a
	ld   [hl+], a                                    ; $5efc: $22
	inc  de                                          ; $5efd: $13
	ld   c, d                                        ; $5efe: $4a
	db   $eb                                         ; $5eff: $eb
	jp   hl                                          ; $5f00: $e9


jr_08a_5f01:
	rst  $28                                         ; $5f01: $ef
	xor  $ef                                         ; $5f02: $ee $ef
	cp   b                                           ; $5f04: $b8
	rst  $38                                         ; $5f05: $ff
	ccf                                              ; $5f06: $3f
	ld   h, d                                        ; $5f07: $62
	ld   b, d                                        ; $5f08: $42
	rst  $38                                         ; $5f09: $ff
	ccf                                              ; $5f0a: $3f
	add  c                                           ; $5f0b: $81
	pop  af                                          ; $5f0c: $f1
	dec  d                                           ; $5f0d: $15
	or   b                                           ; $5f0e: $b0
	ldh  a, [c]                                      ; $5f0f: $f2
	ld   d, d                                        ; $5f10: $52
	ld   [$c6aa], a                                  ; $5f11: $ea $aa $c6
	ld   b, [hl]                                     ; $5f14: $46
	add  d                                           ; $5f15: $82
	add  e                                           ; $5f16: $83
	ld   c, a                                        ; $5f17: $4f
	ld   c, b                                        ; $5f18: $48
	dec  sp                                          ; $5f19: $3b
	dec  hl                                          ; $5f1a: $2b
	db   $eb                                         ; $5f1b: $eb
	inc  l                                           ; $5f1c: $2c
	cpl                                              ; $5f1d: $2f
	rra                                              ; $5f1e: $1f
	inc  d                                           ; $5f1f: $14
	inc  b                                           ; $5f20: $04
	inc  c                                           ; $5f21: $0c
	inc  b                                           ; $5f22: $04
	rlca                                             ; $5f23: $07
	add  b                                           ; $5f24: $80
	nop                                              ; $5f25: $00
	add  b                                           ; $5f26: $80
	add  b                                           ; $5f27: $80
	add  b                                           ; $5f28: $80
	ret  nz                                          ; $5f29: $c0

	nop                                              ; $5f2a: $00
	and  b                                           ; $5f2b: $a0
	add  c                                           ; $5f2c: $81
	ldh  [rTIMA], a                                  ; $5f2d: $e0 $05
	cp   b                                           ; $5f2f: $b8
	jr   z, jr_08a_5f52                              ; $5f30: $28 $20

	jr   nc, jr_08a_5f54                             ; $5f32: $30 $20

	ldh  [$88], a                                    ; $5f34: $e0 $88
	nop                                              ; $5f36: $00
	inc  bc                                          ; $5f37: $03
	rrca                                             ; $5f38: $0f
	add  hl, bc                                      ; $5f39: $09
	ld   bc, $8a07                                   ; $5f3a: $01 $07 $8a
	nop                                              ; $5f3d: $00
	dec  b                                           ; $5f3e: $05
	ldh  [c], a                                      ; $5f3f: $e2
	inc  hl                                          ; $5f40: $23
	inc  bc                                          ; $5f41: $03
	jp   Boot                                        ; $5f42: $c3 $00 $01


	adc  b                                           ; $5f45: $88
	nop                                              ; $5f46: $00
	rlca                                             ; $5f47: $07
	rst  JumpTable                                         ; $5f48: $df
	pop  af                                          ; $5f49: $f1
	ld   sp, $deff                                   ; $5f4a: $31 $ff $de
	ldh  [c], a                                      ; $5f4d: $e2
	jr   nz, @-$02                                   ; $5f4e: $20 $fc

	add  [hl]                                        ; $5f50: $86
	nop                                              ; $5f51: $00

jr_08a_5f52:
	nop                                              ; $5f52: $00
	ccf                                              ; $5f53: $3f

jr_08a_5f54:
	add  b                                           ; $5f54: $80
	jr   nc, @-$7e                                   ; $5f55: $30 $80

	daa                                              ; $5f57: $27
	add  b                                           ; $5f58: $80
	cpl                                              ; $5f59: $2f
	inc  b                                           ; $5f5a: $04
	daa                                              ; $5f5b: $27
	rlca                                             ; $5f5c: $07
	stop                                             ; $5f5d: $10 $00
	rrca                                             ; $5f5f: $0f
	add  d                                           ; $5f60: $82
	nop                                              ; $5f61: $00
	nop                                              ; $5f62: $00
	ldh  [$80], a                                    ; $5f63: $e0 $80
	ld   h, b                                        ; $5f65: $60
	add  b                                           ; $5f66: $80
	jr   nz, jr_08a_5ee9                             ; $5f67: $20 $80

	and  b                                           ; $5f69: $a0
	inc  b                                           ; $5f6a: $04
	jr   nz, jr_08a_5f6d                             ; $5f6b: $20 $00

jr_08a_5f6d:
	ld   b, b                                        ; $5f6d: $40
	nop                                              ; $5f6e: $00
	add  b                                           ; $5f6f: $80
	rst  $38                                         ; $5f70: $ff
	nop                                              ; $5f71: $00
	rst  $38                                         ; $5f72: $ff
	nop                                              ; $5f73: $00
	rst  $38                                         ; $5f74: $ff
	nop                                              ; $5f75: $00
	rst  $38                                         ; $5f76: $ff
	nop                                              ; $5f77: $00
	rst  $38                                         ; $5f78: $ff
	nop                                              ; $5f79: $00
	rst  $38                                         ; $5f7a: $ff
	nop                                              ; $5f7b: $00
	rst  $38                                         ; $5f7c: $ff
	nop                                              ; $5f7d: $00
	rst  $38                                         ; $5f7e: $ff
	nop                                              ; $5f7f: $00
	rst  $38                                         ; $5f80: $ff
	nop                                              ; $5f81: $00
	ret                                              ; $5f82: $c9


	nop                                              ; $5f83: $00
	sbc  [hl]                                        ; $5f84: $9e
	nop                                              ; $5f85: $00
	sbc  d                                           ; $5f86: $9a
	nop                                              ; $5f87: $00
	add  b                                           ; $5f88: $80
	ld   a, a                                        ; $5f89: $7f
	ld   [bc], a                                     ; $5f8a: $02
	ld   b, b                                        ; $5f8b: $40
	ld   l, d                                        ; $5f8c: $6a
	ld   a, [hl+]                                    ; $5f8d: $2a
	adc  c                                           ; $5f8e: $89
	nop                                              ; $5f8f: $00
	add  b                                           ; $5f90: $80
	rst  $38                                         ; $5f91: $ff
	nop                                              ; $5f92: $00
	nop                                              ; $5f93: $00
	add  b                                           ; $5f94: $80
	ld   b, h                                        ; $5f95: $44
	adc  c                                           ; $5f96: $89
	nop                                              ; $5f97: $00
	add  b                                           ; $5f98: $80
	rst  $38                                         ; $5f99: $ff
	nop                                              ; $5f9a: $00
	nop                                              ; $5f9b: $00
	add  b                                           ; $5f9c: $80
	ld   b, h                                        ; $5f9d: $44
	adc  c                                           ; $5f9e: $89
	nop                                              ; $5f9f: $00
	add  b                                           ; $5fa0: $80
	ldh  [$80], a                                    ; $5fa1: $e0 $80
	jr   nc, @-$60                                   ; $5fa3: $30 $9e

	nop                                              ; $5fa5: $00
	dec  b                                           ; $5fa6: $05
	ld   e, d                                        ; $5fa7: $5a
	ld   b, l                                        ; $5fa8: $45
	ld   c, l                                        ; $5fa9: $4d
	ld   l, l                                        ; $5faa: $6d
	ld   a, c                                        ; $5fab: $79
	ld   e, c                                        ; $5fac: $59
	add  b                                           ; $5fad: $80
	ld   b, e                                        ; $5fae: $43
	inc  bc                                          ; $5faf: $03
	ld   c, [hl]                                     ; $5fb0: $4e
	ld   l, [hl]                                     ; $5fb1: $6e
	ld   a, h                                        ; $5fb2: $7c
	ld   e, h                                        ; $5fb3: $5c
	add  b                                           ; $5fb4: $80
	ld   d, c                                        ; $5fb5: $51
	add  b                                           ; $5fb6: $80
	ld   b, a                                        ; $5fb7: $47
	ld   bc, $bb5b                                   ; $5fb8: $01 $5b $bb
	add  b                                           ; $5fbb: $80
	or   e                                           ; $5fbc: $b3
	add  b                                           ; $5fbd: $80
	inc  sp                                          ; $5fbe: $33
	add  d                                           ; $5fbf: $82
	ld   [hl], a                                     ; $5fc0: $77
	add  b                                           ; $5fc1: $80
	rst  $20                                         ; $5fc2: $e7
	add  b                                           ; $5fc3: $80
	xor  $80                                         ; $5fc4: $ee $80
	adc  $86                                         ; $5fc6: $ce $86
	cp   e                                           ; $5fc8: $bb
	add  b                                           ; $5fc9: $80
	inc  sp                                          ; $5fca: $33
	add  b                                           ; $5fcb: $80
	ld   [hl], e                                     ; $5fcc: $73
	add  d                                           ; $5fcd: $82
	ld   [hl], a                                     ; $5fce: $77
	ld   [bc], a                                     ; $5fcf: $02
	sub  a                                           ; $5fd0: $97
	xor  b                                           ; $5fd1: $a8
	xor  h                                           ; $5fd2: $ac
	add  c                                           ; $5fd3: $81
	and  h                                           ; $5fd4: $a4
	ld   bc, $2434                                   ; $5fd5: $01 $34 $24
	add  [hl]                                        ; $5fd8: $86
	ld   h, h                                        ; $5fd9: $64
	nop                                              ; $5fda: $00
	ret  c                                           ; $5fdb: $d8

	sbc  l                                           ; $5fdc: $9d
	nop                                              ; $5fdd: $00
	inc  bc                                          ; $5fde: $03
	ld   d, b                                        ; $5fdf: $50
	ld   c, a                                        ; $5fe0: $4f
	ld   c, [hl]                                     ; $5fe1: $4e
	ld   l, [hl]                                     ; $5fe2: $6e
	add  b                                           ; $5fe3: $80
	ld   a, b                                        ; $5fe4: $78
	ld   bc, $5373                                   ; $5fe5: $01 $73 $53
	add  b                                           ; $5fe8: $80
	ld   d, a                                        ; $5fe9: $57
	add  b                                           ; $5fea: $80
	ld   b, a                                        ; $5feb: $47
	ld   bc, $6f4f                                   ; $5fec: $01 $4f $6f
	add  b                                           ; $5fef: $80
	ld   a, [hl]                                     ; $5ff0: $7e
	ld   bc, $9e5e                                   ; $5ff1: $01 $5e $9e
	add  b                                           ; $5ff4: $80
	inc  a                                           ; $5ff5: $3c
	add  b                                           ; $5ff6: $80
	db   $fd                                         ; $5ff7: $fd
	add  b                                           ; $5ff8: $80
	ld   sp, hl                                      ; $5ff9: $f9
	add  b                                           ; $5ffa: $80
	di                                               ; $5ffb: $f3
	add  b                                           ; $5ffc: $80
	rst  ToBoot                                         ; $5ffd: $c7
	add  b                                           ; $5ffe: $80
	rra                                              ; $5fff: $1f
	add  b                                           ; $6000: $80
	ld   a, a                                        ; $6001: $7f
	add  b                                           ; $6002: $80
	rst  $20                                         ; $6003: $e7
	add  b                                           ; $6004: $80
	and  $80                                         ; $6005: $e6 $80
	xor  $80                                         ; $6007: $ee $80
	adc  $80                                         ; $6009: $ce $80
	call z, $9c80                                    ; $600b: $cc $80 $9c
	add  b                                           ; $600e: $80
	sbc  l                                           ; $600f: $9d
	add  b                                           ; $6010: $80
	add  hl, sp                                      ; $6011: $39
	nop                                              ; $6012: $00
	ld   b, e                                        ; $6013: $43
	add  e                                           ; $6014: $83
	ld   h, h                                        ; $6015: $64
	add  d                                           ; $6016: $82
	db   $e4                                         ; $6017: $e4
	ld   b, $ec                                      ; $6018: $06 $ec
	db   $e4                                         ; $601a: $e4
	db   $f4                                         ; $601b: $f4
	db   $e4                                         ; $601c: $e4
	db   $ec                                         ; $601d: $ec
	db   $e4                                         ; $601e: $e4
	ret  z                                           ; $601f: $c8

	sbc  l                                           ; $6020: $9d
	nop                                              ; $6021: $00
	ld   bc, $5c43                                   ; $6022: $01 $43 $5c
	add  b                                           ; $6025: $80
	ld   e, c                                        ; $6026: $59
	add  b                                           ; $6027: $80
	ld   e, e                                        ; $6028: $5b
	add  b                                           ; $6029: $80
	ld   d, e                                        ; $602a: $53
	add  b                                           ; $602b: $80
	ld   b, a                                        ; $602c: $47
	ld   bc, $6646                                   ; $602d: $01 $46 $66
	add  b                                           ; $6030: $80
	ld   a, [hl]                                     ; $6031: $7e
	inc  bc                                          ; $6032: $03
	ld   a, h                                        ; $6033: $7c
	ld   e, h                                        ; $6034: $5c
	ld   e, $fe                                      ; $6035: $1e $fe
	add  b                                           ; $6037: $80
	ld   hl, sp-$80                                  ; $6038: $f8 $80
	db   $e3                                         ; $603a: $e3
	add  b                                           ; $603b: $80
	adc  a                                           ; $603c: $8f
	add  b                                           ; $603d: $80
	ccf                                              ; $603e: $3f
	add  b                                           ; $603f: $80
	ld   a, [hl]                                     ; $6040: $7e
	add  b                                           ; $6041: $80
	ld   hl, sp-$80                                  ; $6042: $f8 $80
	di                                               ; $6044: $f3
	add  b                                           ; $6045: $80
	ld   a, e                                        ; $6046: $7b
	add  b                                           ; $6047: $80
	di                                               ; $6048: $f3
	add  b                                           ; $6049: $80
	rst  $30                                         ; $604a: $f7
	add  b                                           ; $604b: $80
	adc  $80                                         ; $604c: $ce $80
	ld   e, $80                                      ; $604e: $1e $80

jr_08a_6050:
	inc  a                                           ; $6050: $3c
	add  b                                           ; $6051: $80
	ld   sp, hl                                      ; $6052: $f9
	add  b                                           ; $6053: $80
	di                                               ; $6054: $f3
	inc  bc                                          ; $6055: $03
	sub  e                                           ; $6056: $93
	and  h                                           ; $6057: $a4
	inc  [hl]                                        ; $6058: $34
	inc  h                                           ; $6059: $24
	add  d                                           ; $605a: $82
	ld   h, h                                        ; $605b: $64
	inc  bc                                          ; $605c: $03
	db   $ec                                         ; $605d: $ec
	db   $e4                                         ; $605e: $e4

jr_08a_605f:
	db   $f4                                         ; $605f: $f4
	db   $e4                                         ; $6060: $e4
	add  b                                           ; $6061: $80
	and  h                                           ; $6062: $a4
	ld   [bc], a                                     ; $6063: $02
	cp   h                                           ; $6064: $bc
	and  h                                           ; $6065: $a4
	ret  c                                           ; $6066: $d8

	sbc  l                                           ; $6067: $9d
	nop                                              ; $6068: $00
	ld   bc, $5c43                                   ; $6069: $01 $43 $5c
	add  d                                           ; $606c: $82
	ld   e, c                                        ; $606d: $59
	add  d                                           ; $606e: $82
	ld   e, e                                        ; $606f: $5b
	add  c                                           ; $6070: $81
	ld   d, e                                        ; $6071: $53
	inc  b                                           ; $6072: $04
	ld   [hl], e                                     ; $6073: $73
	ld   b, b                                        ; $6074: $40
	ld   a, a                                        ; $6075: $7f
	jr   jr_08a_605f                                 ; $6076: $18 $e7

	add  b                                           ; $6078: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6079: $cf
	add  b                                           ; $607a: $80
	adc  $80                                         ; $607b: $ce $80
	sbc  [hl]                                        ; $607d: $9e
	add  b                                           ; $607e: $80
	sbc  l                                           ; $607f: $9d
	add  b                                           ; $6080: $80

jr_08a_6081:
	cp   l                                           ; $6081: $bd
	add  b                                           ; $6082: $80
	adc  h                                           ; $6083: $8c
	inc  bc                                          ; $6084: $03
	nop                                              ; $6085: $00
	rst  $38                                         ; $6086: $ff
	jr   c, jr_08a_6050                              ; $6087: $38 $c7

	add  b                                           ; $6089: $80
	ld   e, $80                                      ; $608a: $1e $80
	ld   a, b                                        ; $608c: $78
	add  b                                           ; $608d: $80
	db   $e3                                         ; $608e: $e3
	add  b                                           ; $608f: $80
	adc  $80                                         ; $6090: $ce $80
	sbc  b                                           ; $6092: $98
	add  b                                           ; $6093: $80
	adc  c                                           ; $6094: $89
	inc  bc                                          ; $6095: $03
	nop                                              ; $6096: $00
	rst  $38                                         ; $6097: $ff
	db   $fc                                         ; $6098: $fc
	inc  h                                           ; $6099: $24
	add  b                                           ; $609a: $80
	ld   h, h                                        ; $609b: $64
	add  b                                           ; $609c: $80
	db   $e4                                         ; $609d: $e4
	ld   a, [bc]                                     ; $609e: $0a
	or   h                                           ; $609f: $b4
	and  h                                           ; $60a0: $a4
	ld   a, h                                        ; $60a1: $7c
	ld   h, h                                        ; $60a2: $64
	cp   h                                           ; $60a3: $bc
	and  h                                           ; $60a4: $a4
	inc  l                                           ; $60a5: $2c
	inc  h                                           ; $60a6: $24
	inc  [hl]                                        ; $60a7: $34
	db   $e4                                         ; $60a8: $e4
	db   $10                                         ; $60a9: $10
	sbc  l                                           ; $60aa: $9d
	nop                                              ; $60ab: $00
	dec  b                                           ; $60ac: $05
	add  hl, sp                                      ; $60ad: $39
	jr   nz, jr_08a_60b5                             ; $60ae: $20 $05

	db   $10                                         ; $60b0: $10
	inc  bc                                          ; $60b1: $03
	rrca                                             ; $60b2: $0f
	adc  b                                           ; $60b3: $88
	nop                                              ; $60b4: $00

jr_08a_60b5:
	dec  b                                           ; $60b5: $05
	adc  [hl]                                        ; $60b6: $8e
	nop                                              ; $60b7: $00
	ld   l, l                                        ; $60b8: $6d
	nop                                              ; $60b9: $00
	inc  e                                           ; $60ba: $1c
	rst  $38                                         ; $60bb: $ff
	adc  b                                           ; $60bc: $88
	nop                                              ; $60bd: $00
	dec  b                                           ; $60be: $05
	ld   l, h                                        ; $60bf: $6c
	nop                                              ; $60c0: $00
	ld   c, a                                        ; $60c1: $4f
	nop                                              ; $60c2: $00
	call c, $88ff                                    ; $60c3: $dc $ff $88
	nop                                              ; $60c6: $00
	dec  b                                           ; $60c7: $05
	ld   e, h                                        ; $60c8: $5c
	inc  d                                           ; $60c9: $14
	inc  h                                           ; $60ca: $24
	inc  c                                           ; $60cb: $0c
	sbc  h                                           ; $60cc: $9c
	db   $fc                                         ; $60cd: $fc
	rst  $38                                         ; $60ce: $ff
	nop                                              ; $60cf: $00
	and  a                                           ; $60d0: $a7
	nop                                              ; $60d1: $00
	add  h                                           ; $60d2: $84
	db   $10                                         ; $60d3: $10
	rst  $38                                         ; $60d4: $ff
	nop                                              ; $60d5: $00
	or   c                                           ; $60d6: $b1
	nop                                              ; $60d7: $00
	add  b                                           ; $60d8: $80
	ld   [$1880], sp                                 ; $60d9: $08 $80 $18
	add  d                                           ; $60dc: $82
	db   $10                                         ; $60dd: $10
	add  h                                           ; $60de: $84
	nop                                              ; $60df: $00
	add  b                                           ; $60e0: $80
	ld   [$1882], sp                                 ; $60e1: $08 $82 $18
	ret  nc                                          ; $60e4: $d0

	nop                                              ; $60e5: $00
	add  b                                           ; $60e6: $80
	ld   b, $80                                      ; $60e7: $06 $80
	inc  bc                                          ; $60e9: $03
	sbc  d                                           ; $60ea: $9a
	nop                                              ; $60eb: $00
	add  b                                           ; $60ec: $80
	ld   [hl], c                                     ; $60ed: $71
	add  b                                           ; $60ee: $80
	inc  e                                           ; $60ef: $1c
	sbc  d                                           ; $60f0: $9a
	nop                                              ; $60f1: $00
	add  b                                           ; $60f2: $80
	sub  e                                           ; $60f3: $93
	add  b                                           ; $60f4: $80
	call c, $0090                                    ; $60f5: $dc $90 $00
	add  b                                           ; $60f8: $80
	db   $10                                         ; $60f9: $10
	add  b                                           ; $60fa: $80
	ld   [$1080], sp                                 ; $60fb: $08 $80 $10
	add  b                                           ; $60fe: $80
	jr   jr_08a_6081                                 ; $60ff: $18 $80

	ld   [sGlobalFlags1], sp                                 ; $6101: $08 $80 $a0
	add  b                                           ; $6104: $80
	sub  b                                           ; $6105: $90
	rst  $38                                         ; $6106: $ff
	nop                                              ; $6107: $00
	rst  $38                                         ; $6108: $ff
	nop                                              ; $6109: $00
	rst  $38                                         ; $610a: $ff
	nop                                              ; $610b: $00
	rst  $38                                         ; $610c: $ff
	nop                                              ; $610d: $00
	rst  $38                                         ; $610e: $ff
	nop                                              ; $610f: $00
	and  l                                           ; $6110: $a5
	nop                                              ; $6111: $00
	sbc  l                                           ; $6112: $9d
	nop                                              ; $6113: $00
	sbc  b                                           ; $6114: $98
	nop                                              ; $6115: $00
	add  b                                           ; $6116: $80
	ld   bc, $0680                                   ; $6117: $01 $80 $06
	add  b                                           ; $611a: $80
	inc  e                                           ; $611b: $1c
	add  h                                           ; $611c: $84
	nop                                              ; $611d: $00
	add  b                                           ; $611e: $80
	db   $10                                         ; $611f: $10
	dec  b                                           ; $6120: $05
	ld   l, h                                        ; $6121: $6c
	ld   a, h                                        ; $6122: $7c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6123: $cf
	rst  $38                                         ; $6124: $ff
	ld   bc, $8021                                   ; $6125: $01 $21 $80
	xor  c                                           ; $6128: $a9
	adc  d                                           ; $6129: $8a
	nop                                              ; $612a: $00
	add  b                                           ; $612b: $80
	ret  nz                                          ; $612c: $c0

	add  b                                           ; $612d: $80
	ldh  a, [hScriptOpcodeParams]                                    ; $612e: $f0 $a0
	nop                                              ; $6130: $00
	add  b                                           ; $6131: $80
	ld   bc, $0608                                   ; $6132: $01 $08 $06
	rlca                                             ; $6135: $07
	add  hl, de                                      ; $6136: $19
	rra                                              ; $6137: $1f
	rla                                              ; $6138: $17
	rra                                              ; $6139: $1f
	inc  de                                          ; $613a: $13
	rra                                              ; $613b: $1f
	inc  e                                           ; $613c: $1c
	add  b                                           ; $613d: $80
	inc  de                                          ; $613e: $13
	ld   [bc], a                                     ; $613f: $02
	db   $10                                         ; $6140: $10
	ld   h, b                                        ; $6141: $60
	ld   l, a                                        ; $6142: $6f
	add  b                                           ; $6143: $80
	ret  z                                           ; $6144: $c8

	add  hl, bc                                      ; $6145: $09
	add  hl, sp                                      ; $6146: $39
	ld   sp, hl                                      ; $6147: $f9
	ret  z                                           ; $6148: $c8

	ld   hl, sp-$18                                  ; $6149: $f8 $e8
	ld   hl, sp-$71                                  ; $614b: $f8 $8f
	rst  $28                                         ; $614d: $ef
	dec  b                                           ; $614e: $05
	add  l                                           ; $614f: $85
	add  b                                           ; $6150: $80
	rst  ToBoot                                         ; $6151: $c7
	add  b                                           ; $6152: $80
	ld   a, d                                        ; $6153: $7a
	add  b                                           ; $6154: $80
	call z, $cf80                                    ; $6155: $cc $80 $cf
	add  b                                           ; $6158: $80
	ld   a, b                                        ; $6159: $78
	add  b                                           ; $615a: $80
	xor  b                                           ; $615b: $a8

jr_08a_615c:
	add  b                                           ; $615c: $80
	inc  h                                           ; $615d: $24
	add  b                                           ; $615e: $80
	dec  b                                           ; $615f: $05
	add  b                                           ; $6160: $80
	rlca                                             ; $6161: $07
	add  b                                           ; $6162: $80
	inc  l                                           ; $6163: $2c
	add  b                                           ; $6164: $80
	ccf                                              ; $6165: $3f
	ld   bc, $3f20                                   ; $6166: $01 $20 $3f
	add  b                                           ; $6169: $80
	rst  $38                                         ; $616a: $ff
	ld   [$7f5f], sp                                 ; $616b: $08 $5f $7f
	ld   e, [hl]                                     ; $616e: $5e
	ld   a, a                                        ; $616f: $7f
	adc  c                                           ; $6170: $89

jr_08a_6171:
	sbc  [hl]                                        ; $6171: $9e
	ld   d, $18                                      ; $6172: $16 $18
	rlca                                             ; $6174: $07
	add  c                                           ; $6175: $81
	nop                                              ; $6176: $00
	add  b                                           ; $6177: $80
	ret  nz                                          ; $6178: $c0

	inc  b                                           ; $6179: $04
	jr   nz, jr_08a_615c                             ; $617a: $20 $e0

	and  b                                           ; $617c: $a0
	ldh  [$60], a                                    ; $617d: $e0 $60
	add  b                                           ; $617f: $80
	and  b                                           ; $6180: $a0
	add  c                                           ; $6181: $81
	jr   nz, jr_08a_6184                             ; $6182: $20 $00

jr_08a_6184:
	ret  nz                                          ; $6184: $c0

	adc  l                                           ; $6185: $8d
	nop                                              ; $6186: $00
	nop                                              ; $6187: $00
	rra                                              ; $6188: $1f
	adc  l                                           ; $6189: $8d
	db   $10                                         ; $618a: $10
	inc  b                                           ; $618b: $04
	add  [hl]                                        ; $618c: $86
	adc  a                                           ; $618d: $8f
	adc  d                                           ; $618e: $8a
	adc  a                                           ; $618f: $8f
	adc  h                                           ; $6190: $8c
	add  b                                           ; $6191: $80
	adc  e                                           ; $6192: $8b
	add  a                                           ; $6193: $87
	adc  b                                           ; $6194: $88
	ld   [$fffe], sp                                 ; $6195: $08 $fe $ff
	rlca                                             ; $6198: $07
	rst  $38                                         ; $6199: $ff
	ld   sp, hl                                      ; $619a: $f9
	cp   $26                                         ; $619b: $fe $26
	ld   hl, sp-$28                                  ; $619d: $f8 $d8
	add  l                                           ; $619f: $85
	jr   nz, @+$03                                   ; $61a0: $20 $01

	ldh  a, [$28]                                    ; $61a2: $f0 $28
	adc  h                                           ; $61a4: $8c
	adc  b                                           ; $61a5: $88
	nop                                              ; $61a6: $00
	rst  $20                                         ; $61a7: $e7
	adc  l                                           ; $61a8: $8d
	jr   nz, jr_08a_61ab                             ; $61a9: $20 $00

jr_08a_61ab:
	ret  nz                                          ; $61ab: $c0

	adc  l                                           ; $61ac: $8d
	nop                                              ; $61ad: $00
	nop                                              ; $61ae: $00
	rra                                              ; $61af: $1f
	adc  c                                           ; $61b0: $89
	db   $10                                         ; $61b1: $10
	inc  b                                           ; $61b2: $04
	nop                                              ; $61b3: $00
	inc  c                                           ; $61b4: $0c
	nop                                              ; $61b5: $00
	inc  bc                                          ; $61b6: $03
	adc  a                                           ; $61b7: $8f
	adc  l                                           ; $61b8: $8d
	adc  b                                           ; $61b9: $88
	nop                                              ; $61ba: $00
	ld   hl, sp-$73                                  ; $61bb: $f8 $8d
	jr   nz, jr_08a_61bf                             ; $61bd: $20 $00

jr_08a_61bf:
	ld   d, b                                        ; $61bf: $50
	adc  d                                           ; $61c0: $8a
	adc  b                                           ; $61c1: $88
	inc  bc                                          ; $61c2: $03
	adc  e                                           ; $61c3: $8b
	ei                                               ; $61c4: $fb
	rst  $38                                         ; $61c5: $ff
	ldh  [$87], a                                    ; $61c6: $e0 $87
	jr   nz, jr_08a_61cb                             ; $61c8: $20 $01

	nop                                              ; $61ca: $00

jr_08a_61cb:
	ret  nz                                          ; $61cb: $c0

jr_08a_61cc:
	add  b                                           ; $61cc: $80
	nop                                              ; $61cd: $00
	add  b                                           ; $61ce: $80
	rst  $38                                         ; $61cf: $ff
	adc  h                                           ; $61d0: $8c
	nop                                              ; $61d1: $00
	add  b                                           ; $61d2: $80
	db   $fc                                         ; $61d3: $fc
	adc  [hl]                                        ; $61d4: $8e
	nop                                              ; $61d5: $00
	ld   bc, $c8cf                                   ; $61d6: $01 $cf $c8
	add  b                                           ; $61d9: $80
	jr   c, jr_08a_61df                              ; $61da: $38 $03

jr_08a_61dc:
	ld   [$000c], sp                                 ; $61dc: $08 $0c $00

jr_08a_61df:
	inc  bc                                          ; $61df: $03
	add  [hl]                                        ; $61e0: $86
	nop                                              ; $61e1: $00
	nop                                              ; $61e2: $00
	rst  $38                                         ; $61e3: $ff
	add  d                                           ; $61e4: $82
	jr   nz, @+$06                                   ; $61e5: $20 $04

	inc  hl                                          ; $61e7: $23
	jr   nz, jr_08a_6216                             ; $61e8: $20 $2c

	jr   nz, jr_08a_61dc                             ; $61ea: $20 $f0

	add  b                                           ; $61ec: $80
	jr   nz, jr_08a_6171                             ; $61ed: $20 $82

	nop                                              ; $61ef: $00
	add  d                                           ; $61f0: $82
	ret  nz                                          ; $61f1: $c0

	add  b                                           ; $61f2: $80
	ld   h, b                                        ; $61f3: $60
	add  b                                           ; $61f4: $80
	ld   e, b                                        ; $61f5: $58
	add  b                                           ; $61f6: $80
	ld   b, h                                        ; $61f7: $44
	add  b                                           ; $61f8: $80
	ld   b, e                                        ; $61f9: $43
	add  b                                           ; $61fa: $80
	ld   b, c                                        ; $61fb: $41
	add  b                                           ; $61fc: $80
	ld   b, [hl]                                     ; $61fd: $46
	adc  b                                           ; $61fe: $88
	nop                                              ; $61ff: $00
	add  b                                           ; $6200: $80
	ld   bc, $c380                                   ; $6201: $01 $80 $c3
	add  b                                           ; $6204: $80
	inc  h                                           ; $6205: $24
	add  d                                           ; $6206: $82
	inc  b                                           ; $6207: $04
	add  b                                           ; $6208: $80
	inc  c                                           ; $6209: $0c
	add  b                                           ; $620a: $80
	inc  [hl]                                        ; $620b: $34
	add  b                                           ; $620c: $80
	ld   b, h                                        ; $620d: $44
	add  b                                           ; $620e: $80
	add  h                                           ; $620f: $84
	add  b                                           ; $6210: $80
	inc  b                                           ; $6211: $04
	add  b                                           ; $6212: $80
	call nz, $00ae                                   ; $6213: $c4 $ae $00

jr_08a_6216:
	add  b                                           ; $6216: $80
	ld   e, b                                        ; $6217: $58
	add  b                                           ; $6218: $80
	ld   h, b                                        ; $6219: $60
	add  d                                           ; $621a: $82
	ld   b, b                                        ; $621b: $40
	add  b                                           ; $621c: $80
	ld   a, a                                        ; $621d: $7f
	adc  h                                           ; $621e: $8c
	nop                                              ; $621f: $00
	add  b                                           ; $6220: $80
	rst  $38                                         ; $6221: $ff
	add  h                                           ; $6222: $84
	nop                                              ; $6223: $00
	add  b                                           ; $6224: $80
	inc  [hl]                                        ; $6225: $34
	add  b                                           ; $6226: $80
	inc  c                                           ; $6227: $0c
	add  d                                           ; $6228: $82
	inc  b                                           ; $6229: $04
	add  b                                           ; $622a: $80
	db   $fc                                         ; $622b: $fc
	or   b                                           ; $622c: $b0
	nop                                              ; $622d: $00
	add  b                                           ; $622e: $80
	ld   bc, $0380                                   ; $622f: $01 $80 $03
	add  b                                           ; $6232: $80
	db   $10                                         ; $6233: $10
	add  b                                           ; $6234: $80
	scf                                              ; $6235: $37
	add  b                                           ; $6236: $80
	ld   b, $82                                      ; $6237: $06 $82
	rlca                                             ; $6239: $07
	add  b                                           ; $623a: $80
	db   $10                                         ; $623b: $10
	inc  bc                                          ; $623c: $03
	ld   a, b                                        ; $623d: $78
	ld   a, d                                        ; $623e: $7a
	ld   a, [hl-]                                    ; $623f: $3a
	jr   c, jr_08a_61cc                              ; $6240: $38 $8a

	nop                                              ; $6242: $00
	add  b                                           ; $6243: $80
	sbc  $80                                         ; $6244: $de $80
	ld   d, [hl]                                     ; $6246: $56
	add  b                                           ; $6247: $80
	add  l                                           ; $6248: $85
	add  b                                           ; $6249: $80
	inc  de                                          ; $624a: $13
	inc  bc                                          ; $624b: $03
	jr   nz, jr_08a_627e                             ; $624c: $20 $30

	sub  a                                           ; $624e: $97
	add  a                                           ; $624f: $87
	add  b                                           ; $6250: $80
	ld   d, a                                        ; $6251: $57
	add  b                                           ; $6252: $80
	db   $db                                         ; $6253: $db
	add  b                                           ; $6254: $80
	ld   a, [rRAMG]                                  ; $6255: $fa $00 $00
	add  b                                           ; $6258: $80
	ld   hl, sp-$73                                  ; $6259: $f8 $8d
	nop                                              ; $625b: $00
	add  b                                           ; $625c: $80
	ret  nc                                          ; $625d: $d0

	add  b                                           ; $625e: $80
	ret  nz                                          ; $625f: $c0

	nop                                              ; $6260: $00
	nop                                              ; $6261: $00
	add  b                                           ; $6262: $80
	ret  nz                                          ; $6263: $c0

	nop                                              ; $6264: $00

jr_08a_6265:
	nop                                              ; $6265: $00
	add  d                                           ; $6266: $82
	add  b                                           ; $6267: $80
	add  b                                           ; $6268: $80
	ld   h, b                                        ; $6269: $60
	add  b                                           ; $626a: $80
	ldh  [$df], a                                    ; $626b: $e0 $df
	nop                                              ; $626d: $00
	sbc  [hl]                                        ; $626e: $9e
	ld   [hl], b                                     ; $626f: $70

jr_08a_6270:
	sbc  l                                           ; $6270: $9d
	nop                                              ; $6271: $00
	ld   [bc], a                                     ; $6272: $02
	ret  nz                                          ; $6273: $c0

	ret  nc                                          ; $6274: $d0

	db   $10                                         ; $6275: $10
	sbc  d                                           ; $6276: $9a
	ld   [hl], b                                     ; $6277: $70
	ldh  [rP1], a                                    ; $6278: $e0 $00
	add  b                                           ; $627a: $80
	jr   nc, jr_08a_6265                             ; $627b: $30 $e8

	nop                                              ; $627d: $00

jr_08a_627e:
	add  h                                           ; $627e: $84
	jr   @-$7d                                       ; $627f: $18 $81

	nop                                              ; $6281: $00
	add  b                                           ; $6282: $80
	rst  $38                                         ; $6283: $ff

jr_08a_6284:
	sub  h                                           ; $6284: $94
	nop                                              ; $6285: $00
	add  d                                           ; $6286: $82
	ld   [$1080], sp                                 ; $6287: $08 $80 $10
	add  d                                           ; $628a: $82
	ld   hl, sp-$01                                  ; $628b: $f8 $ff
	nop                                              ; $628d: $00
	rst  $38                                         ; $628e: $ff
	nop                                              ; $628f: $00
	rst  $38                                         ; $6290: $ff
	nop                                              ; $6291: $00
	rst  $38                                         ; $6292: $ff
	nop                                              ; $6293: $00
	rst  $38                                         ; $6294: $ff
	nop                                              ; $6295: $00
	add  c                                           ; $6296: $81
	nop                                              ; $6297: $00
	xor  a                                           ; $6298: $af
	nop                                              ; $6299: $00
	jp   z, $8000                                    ; $629a: $ca $00 $80

	ld   bc, $0202                                   ; $629d: $01 $02 $02
	inc  bc                                          ; $62a0: $03
	ld   bc, $0083                                   ; $62a1: $01 $83 $00
	add  b                                           ; $62a4: $80
	jr   nc, @+$0a                                   ; $62a5: $30 $08

	ld   e, h                                        ; $62a7: $5c
	ld   a, h                                        ; $62a8: $7c
	adc  h                                           ; $62a9: $8c
	db   $f4                                         ; $62aa: $f4
	inc  b                                           ; $62ab: $04
	db   $ec                                         ; $62ac: $ec
	ld   [$60d8], sp                                 ; $62ad: $08 $d8 $60
	xor  a                                           ; $62b0: $af
	nop                                              ; $62b1: $00
	add  b                                           ; $62b2: $80
	ld   bc, $0280                                   ; $62b3: $01 $80 $02
	add  b                                           ; $62b6: $80
	inc  b                                           ; $62b7: $04
	add  b                                           ; $62b8: $80
	ld   [$1980], sp                                 ; $62b9: $08 $80 $19
	add  hl, de                                      ; $62bc: $19
	ld   h, $27                                      ; $62bd: $26 $27
	ld   b, d                                        ; $62bf: $42
	ld   b, e                                        ; $62c0: $43
	dec  b                                           ; $62c1: $05
	rlca                                             ; $62c2: $07
	sbc  b                                           ; $62c3: $98
	sbc  a                                           ; $62c4: $9f
	ld   h, b                                        ; $62c5: $60

jr_08a_62c6:
	ld   a, [hl]                                     ; $62c6: $7e
	ld   d, b                                        ; $62c7: $50
	ld   a, l                                        ; $62c8: $7d
	and  c                                           ; $62c9: $a1
	ei                                               ; $62ca: $fb
	ld   b, d                                        ; $62cb: $42
	or   $86                                         ; $62cc: $f6 $86
	xor  $4f                                         ; $62ce: $ee $4f
	rst  $38                                         ; $62d0: $ff
	ld   [hl], b                                     ; $62d1: $70
	or   b                                           ; $62d2: $b0
	jr   nz, jr_08a_6335                             ; $62d3: $20 $60

	ld   b, b                                        ; $62d5: $40
	ret  nz                                          ; $62d6: $c0

	add  b                                           ; $62d7: $80
	add  b                                           ; $62d8: $80
	xor  b                                           ; $62d9: $a8
	nop                                              ; $62da: $00
	add  b                                           ; $62db: $80

jr_08a_62dc:
	ld   bc, $0280                                   ; $62dc: $01 $80 $02
	add  b                                           ; $62df: $80
	inc  b                                           ; $62e0: $04
	add  b                                           ; $62e1: $80
	add  hl, bc                                      ; $62e2: $09
	add  b                                           ; $62e3: $80
	ld   de, $2080                                   ; $62e4: $11 $80 $20
	add  b                                           ; $62e7: $80
	ld   b, a                                        ; $62e8: $47
	add  b                                           ; $62e9: $80
	add  b                                           ; $62ea: $80
	add  b                                           ; $62eb: $80
	nop                                              ; $62ec: $00
	add  b                                           ; $62ed: $80
	jr   z, jr_08a_6270                              ; $62ee: $28 $80

	ld   a, b                                        ; $62f0: $78
	add  b                                           ; $62f1: $80
	ret  nz                                          ; $62f2: $c0

	add  d                                           ; $62f3: $82
	and  b                                           ; $62f4: $a0
	add  b                                           ; $62f5: $80
	add  b                                           ; $62f6: $80
	add  b                                           ; $62f7: $80
	ld   bc, $0280                                   ; $62f8: $01 $80 $02
	add  b                                           ; $62fb: $80
	inc  b                                           ; $62fc: $04
	add  b                                           ; $62fd: $80
	ld   [$1080], sp                                 ; $62fe: $08 $80 $10
	add  b                                           ; $6301: $80
	jr   nz, jr_08a_6284                             ; $6302: $20 $80

	ld   b, b                                        ; $6304: $40
	add  b                                           ; $6305: $80
	add  b                                           ; $6306: $80
	and  b                                           ; $6307: $a0
	nop                                              ; $6308: $00
	add  b                                           ; $6309: $80
	ld   bc, $0280                                   ; $630a: $01 $80 $02
	add  b                                           ; $630d: $80
	inc  b                                           ; $630e: $04
	add  b                                           ; $630f: $80
	ld   [$1380], sp                                 ; $6310: $08 $80 $13
	add  b                                           ; $6313: $80
	inc  hl                                          ; $6314: $23
	add  b                                           ; $6315: $80
	ld   b, d                                        ; $6316: $42
	add  b                                           ; $6317: $80

jr_08a_6318:
	add  h                                           ; $6318: $84
	add  b                                           ; $6319: $80

jr_08a_631a:
	inc  b                                           ; $631a: $04
	add  b                                           ; $631b: $80
	jr   @-$7e                                       ; $631c: $18 $80

	ld   [hl], b                                     ; $631e: $70
	add  b                                           ; $631f: $80
	ld   b, b                                        ; $6320: $40
	add  b                                           ; $6321: $80
	ret  nz                                          ; $6322: $c0

	add  b                                           ; $6323: $80
	add  b                                           ; $6324: $80
	add  b                                           ; $6325: $80

jr_08a_6326:
	nop                                              ; $6326: $00
	add  b                                           ; $6327: $80
	ld   bc, $0280                                   ; $6328: $01 $80 $02
	add  b                                           ; $632b: $80
	inc  b                                           ; $632c: $04
	add  b                                           ; $632d: $80
	ld   [$1080], sp                                 ; $632e: $08 $80 $10
	add  b                                           ; $6331: $80
	jr   nz, @-$7e                                   ; $6332: $20 $80

	ld   b, b                                        ; $6334: $40

jr_08a_6335:
	add  b                                           ; $6335: $80
	add  b                                           ; $6336: $80
	and  b                                           ; $6337: $a0
	nop                                              ; $6338: $00
	add  b                                           ; $6339: $80
	ld   bc, $0280                                   ; $633a: $01 $80 $02
	add  b                                           ; $633d: $80
	inc  b                                           ; $633e: $04
	add  b                                           ; $633f: $80
	ld   [$1080], sp                                 ; $6340: $08 $80 $10
	add  b                                           ; $6343: $80
	jr   nc, jr_08a_62c6                             ; $6344: $30 $80

	rrca                                             ; $6346: $0f
	add  b                                           ; $6347: $80

jr_08a_6348:
	sbc  [hl]                                        ; $6348: $9e
	add  b                                           ; $6349: $80
	db   $10                                         ; $634a: $10
	add  b                                           ; $634b: $80
	inc  c                                           ; $634c: $0c
	adc  b                                           ; $634d: $88
	nop                                              ; $634e: $00
	add  b                                           ; $634f: $80
	ld   bc, $0280                                   ; $6350: $01 $80 $02
	add  b                                           ; $6353: $80

jr_08a_6354:
	inc  b                                           ; $6354: $04
	add  b                                           ; $6355: $80
	ld   [$1080], sp                                 ; $6356: $08 $80 $10
	add  b                                           ; $6359: $80
	jr   nz, jr_08a_62dc                             ; $635a: $20 $80

	ld   b, b                                        ; $635c: $40
	add  b                                           ; $635d: $80
	add  b                                           ; $635e: $80
	xor  [hl]                                        ; $635f: $ae
	nop                                              ; $6360: $00
	add  b                                           ; $6361: $80
	dec  b                                           ; $6362: $05
	add  b                                           ; $6363: $80
	ld   [bc], a                                     ; $6364: $02
	add  b                                           ; $6365: $80
	ld   bc, $0088                                   ; $6366: $01 $88 $00
	add  b                                           ; $6369: $80
	ld   bc, $0280                                   ; $636a: $01 $80 $02
	add  b                                           ; $636d: $80
	add  h                                           ; $636e: $84
	add  b                                           ; $636f: $80
	ret  z                                           ; $6370: $c8

	add  b                                           ; $6371: $80
	ld   d, b                                        ; $6372: $50
	add  b                                           ; $6373: $80
	jr   nz, @+$01                                   ; $6374: $20 $ff

	nop                                              ; $6376: $00
	or   l                                           ; $6377: $b5
	nop                                              ; $6378: $00
	add  b                                           ; $6379: $80
	ld   bc, $0380                                   ; $637a: $01 $80 $03
	add  b                                           ; $637d: $80
	rlca                                             ; $637e: $07
	add  b                                           ; $637f: $80

jr_08a_6380:
	ld   b, $80                                      ; $6380: $06 $80
	db   $10                                         ; $6382: $10
	add  b                                           ; $6383: $80
	jr   nz, jr_08a_6318                             ; $6384: $20 $92

	nop                                              ; $6386: $00
	add  d                                           ; $6387: $82

jr_08a_6388:
	add  b                                           ; $6388: $80
	jp   c, $8000                                    ; $6389: $da $00 $80

	ld   bc, $0280                                   ; $638c: $01 $80 $02
	add  b                                           ; $638f: $80
	inc  b                                           ; $6390: $04
	add  b                                           ; $6391: $80
	ld   [$1080], sp                                 ; $6392: $08 $80 $10
	add  b                                           ; $6395: $80
	jr   nz, jr_08a_631a                             ; $6396: $20 $82

	nop                                              ; $6398: $00
	add  b                                           ; $6399: $80
	ld   bc, $0280                                   ; $639a: $01 $80 $02
	add  b                                           ; $639d: $80
	inc  b                                           ; $639e: $04
	add  b                                           ; $639f: $80
	ld   [$1080], sp                                 ; $63a0: $08 $80 $10
	add  b                                           ; $63a3: $80
	jr   nz, jr_08a_6326                             ; $63a4: $20 $80

	ld   b, b                                        ; $63a6: $40
	add  b                                           ; $63a7: $80
	add  b                                           ; $63a8: $80
	add  b                                           ; $63a9: $80
	nop                                              ; $63aa: $00
	add  b                                           ; $63ab: $80
	ld   bc, $0380                                   ; $63ac: $01 $80 $03
	add  b                                           ; $63af: $80
	rlca                                             ; $63b0: $07
	add  b                                           ; $63b1: $80
	ld   c, $80                                      ; $63b2: $0e $80
	inc  e                                           ; $63b4: $1c
	add  b                                           ; $63b5: $80
	ld   b, b                                        ; $63b6: $40
	add  b                                           ; $63b7: $80
	add  b                                           ; $63b8: $80
	add  b                                           ; $63b9: $80
	nop                                              ; $63ba: $00
	add  b                                           ; $63bb: $80
	ld   bc, $0380                                   ; $63bc: $01 $80 $03
	add  b                                           ; $63bf: $80
	rlca                                             ; $63c0: $07
	add  b                                           ; $63c1: $80
	ld   c, $80                                      ; $63c2: $0e $80
	inc  e                                           ; $63c4: $1c
	add  b                                           ; $63c5: $80
	jr   c, jr_08a_6348                              ; $63c6: $38 $80

	ld   [hl], b                                     ; $63c8: $70
	add  b                                           ; $63c9: $80
	ldh  [$80], a                                    ; $63ca: $e0 $80
	ret  nz                                          ; $63cc: $c0

	add  b                                           ; $63cd: $80
	add  b                                           ; $63ce: $80
	add  h                                           ; $63cf: $84
	nop                                              ; $63d0: $00
	add  b                                           ; $63d1: $80
	jr   c, jr_08a_6354                              ; $63d2: $38 $80

	ld   [hl], b                                     ; $63d4: $70
	add  b                                           ; $63d5: $80
	ldh  [$80], a                                    ; $63d6: $e0 $80
	ret  nz                                          ; $63d8: $c0

	add  b                                           ; $63d9: $80
	add  b                                           ; $63da: $80
	cp   b                                           ; $63db: $b8
	nop                                              ; $63dc: $00
	add  b                                           ; $63dd: $80
	ld   bc, $0280                                   ; $63de: $01 $80 $02
	add  b                                           ; $63e1: $80
	inc  b                                           ; $63e2: $04
	add  b                                           ; $63e3: $80
	ld   [$0082], sp                                 ; $63e4: $08 $82 $00
	add  b                                           ; $63e7: $80
	ld   [bc], a                                     ; $63e8: $02
	add  b                                           ; $63e9: $80
	ld   bc, $008a                                   ; $63ea: $01 $8a $00
	add  b                                           ; $63ed: $80
	ld   b, b                                        ; $63ee: $40
	add  b                                           ; $63ef: $80
	add  b                                           ; $63f0: $80
	add  b                                           ; $63f1: $80
	nop                                              ; $63f2: $00
	add  b                                           ; $63f3: $80
	ld   bc, $0380                                   ; $63f4: $01 $80 $03
	add  b                                           ; $63f7: $80
	rlca                                             ; $63f8: $07
	add  b                                           ; $63f9: $80
	ld   c, $80                                      ; $63fa: $0e $80
	inc  e                                           ; $63fc: $1c
	add  b                                           ; $63fd: $80
	jr   c, jr_08a_6380                              ; $63fe: $38 $80

Call_08a_6400:
	ldh  a, [$80]                                    ; $6400: $f0 $80
	ld   h, b                                        ; $6402: $60
	adc  b                                           ; $6403: $88
	nop                                              ; $6404: $00
	add  b                                           ; $6405: $80
	jr   c, jr_08a_6388                              ; $6406: $38 $80

	ld   [hl], b                                     ; $6408: $70
	add  b                                           ; $6409: $80
	ldh  [$80], a                                    ; $640a: $e0 $80
	ret  nz                                          ; $640c: $c0

	add  b                                           ; $640d: $80
	add  b                                           ; $640e: $80
	rst  $38                                         ; $640f: $ff
	nop                                              ; $6410: $00
	rst  $38                                         ; $6411: $ff
	nop                                              ; $6412: $00
	rst  $38                                         ; $6413: $ff
	nop                                              ; $6414: $00
	rst  $38                                         ; $6415: $ff
	nop                                              ; $6416: $00
	rst  $38                                         ; $6417: $ff
	nop                                              ; $6418: $00
	rst  $28                                         ; $6419: $ef
	nop                                              ; $641a: $00
	ld   h, d                                        ; $641b: $62
	nop                                              ; $641c: $00
	ld   hl, sp+$00                                  ; $641d: $f8 $00
	add  b                                           ; $641f: $80
	inc  bc                                          ; $6420: $03
	inc  b                                           ; $6421: $04
	inc  c                                           ; $6422: $0c
	rrca                                             ; $6423: $0f
	inc  sp                                          ; $6424: $33
	ccf                                              ; $6425: $3f
	rrca                                             ; $6426: $0f
	add  l                                           ; $6427: $85
	nop                                              ; $6428: $00
	add  b                                           ; $6429: $80
	ccf                                              ; $642a: $3f
	ld   b, $c0                                      ; $642b: $06 $c0
	rst  $38                                         ; $642d: $ff
	ccf                                              ; $642e: $3f
	rst  $38                                         ; $642f: $ff
	db   $fc                                         ; $6430: $fc
	rst  $38                                         ; $6431: $ff
	db   $fc                                         ; $6432: $fc
	add  l                                           ; $6433: $85
	nop                                              ; $6434: $00
	add  b                                           ; $6435: $80
	db   $fc                                         ; $6436: $fc
	ld   b, $03                                      ; $6437: $06 $03
	rst  $38                                         ; $6439: $ff
	db   $fc                                         ; $643a: $fc
	rst  $38                                         ; $643b: $ff
	ld   a, a                                        ; $643c: $7f
	rst  $38                                         ; $643d: $ff

jr_08a_643e:
	ld   a, a                                        ; $643e: $7f
	add  a                                           ; $643f: $87
	nop                                              ; $6440: $00
	add  b                                           ; $6441: $80
	ldh  [rDIV], a                                   ; $6442: $e0 $04
	jr   jr_08a_643e                                 ; $6444: $18 $f8

	and  $fe                                         ; $6446: $e6 $fe
	ld   hl, sp-$71                                  ; $6448: $f8 $8f
	nop                                              ; $644a: $00
	add  b                                           ; $644b: $80
	ld   bc, $0301                                   ; $644c: $01 $01 $03
	ld   [bc], a                                     ; $644f: $02
	add  b                                           ; $6450: $80
	ld   b, $0a                                      ; $6451: $06 $0a
	inc  c                                           ; $6453: $0c
	rrca                                             ; $6454: $0f
	ld   e, $1f                                      ; $6455: $1e $1f
	dec  sp                                          ; $6457: $3b
	ccf                                              ; $6458: $3f
	cpl                                              ; $6459: $2f
	ccf                                              ; $645a: $3f
	rst  $10                                         ; $645b: $d7
	rst  $38                                         ; $645c: $ff
	rst  JumpTable                                         ; $645d: $df
	add  c                                           ; $645e: $81
	ccf                                              ; $645f: $3f
	ld   de, $7f1f                                   ; $6460: $11 $1f $7f
	inc  a                                           ; $6463: $3c
	rst  $38                                         ; $6464: $ff
	ld   a, b                                        ; $6465: $78
	db   $fc                                         ; $6466: $fc
	db   $e4                                         ; $6467: $e4
	db   $fc                                         ; $6468: $fc
	db   $ec                                         ; $6469: $ec
	db   $fc                                         ; $646a: $fc
	rst  $30                                         ; $646b: $f7
	db   $fc                                         ; $646c: $fc
	db   $f4                                         ; $646d: $f4
	ld   hl, sp-$38                                  ; $646e: $f8 $c8
	rst  $38                                         ; $6470: $ff
	nop                                              ; $6471: $00
	ret  nz                                          ; $6472: $c0

	add  [hl]                                        ; $6473: $86
	nop                                              ; $6474: $00
	rlca                                             ; $6475: $07
	ret  nz                                          ; $6476: $c0

	ld   a, a                                        ; $6477: $7f
	ld   e, a                                        ; $6478: $5f
	ccf                                              ; $6479: $3f
	inc  hl                                          ; $647a: $23
	rst  $38                                         ; $647b: $ff
	nop                                              ; $647c: $00
	inc  bc                                          ; $647d: $03
	add  [hl]                                        ; $647e: $86
	nop                                              ; $647f: $00
	ld   [bc], a                                     ; $6480: $02
	ld   bc, $feff                                   ; $6481: $01 $ff $fe
	add  c                                           ; $6484: $81
	rst  $38                                         ; $6485: $ff
	ld   b, $e3                                      ; $6486: $06 $e3
	rst  $38                                         ; $6488: $ff
	dec  e                                           ; $6489: $1d
	db   $e3                                         ; $648a: $e3
	ld   h, d                                        ; $648b: $62
	ld   h, c                                        ; $648c: $61
	ld   hl, $3980                                   ; $648d: $21 $80 $39
	ld   [bc], a                                     ; $6490: $02
	ld   sp, $000e                                   ; $6491: $31 $0e $00
	add  b                                           ; $6494: $80
	add  b                                           ; $6495: $80
	ld   bc, $c040                                   ; $6496: $01 $40 $c0
	add  b                                           ; $6499: $80
	ldh  a, [rDIV]                                   ; $649a: $f0 $04
	cp   b                                           ; $649c: $b8
	ld   hl, sp-$18                                  ; $649d: $f8 $e8
	ld   hl, sp-$3c                                  ; $649f: $f8 $c4
	add  c                                           ; $64a1: $81
	call c, $e021                                    ; $64a2: $dc $21 $e0
	ccf                                              ; $64a5: $3f
	cpl                                              ; $64a6: $2f
	ccf                                              ; $64a7: $3f
	inc  de                                          ; $64a8: $13
	rra                                              ; $64a9: $1f
	ld   e, $1f                                      ; $64aa: $1e $1f
	ld   de, $001e                                   ; $64ac: $11 $1e $00
	rlca                                             ; $64af: $07
	inc  b                                           ; $64b0: $04
	rlca                                             ; $64b1: $07
	dec  b                                           ; $64b2: $05
	rlca                                             ; $64b3: $07
	nop                                              ; $64b4: $00
	rst  $38                                         ; $64b5: $ff
	db   $fc                                         ; $64b6: $fc
	rst  $38                                         ; $64b7: $ff
	rra                                              ; $64b8: $1f
	rst  $38                                         ; $64b9: $ff
	rst  $28                                         ; $64ba: $ef
	rra                                              ; $64bb: $1f
	rla                                              ; $64bc: $17
	rrca                                             ; $64bd: $0f
	adc  a                                           ; $64be: $8f
	rrca                                             ; $64bf: $0f
	rst  $38                                         ; $64c0: $ff
	adc  c                                           ; $64c1: $89
	ld   [hl], c                                     ; $64c2: $71
	ldh  a, [$80]                                    ; $64c3: $f0 $80
	nop                                              ; $64c5: $00
	add  b                                           ; $64c6: $80
	ldh  [rSC], a                                    ; $64c7: $e0 $02
	rra                                              ; $64c9: $1f
	rst  $38                                         ; $64ca: $ff
	ldh  [$83], a                                    ; $64cb: $e0 $83
	rst  $38                                         ; $64cd: $ff
	nop                                              ; $64ce: $00
	cp   $80                                         ; $64cf: $fe $80
	rst  $38                                         ; $64d1: $ff
	nop                                              ; $64d2: $00
	ld   bc, $0080                                   ; $64d3: $01 $80 $00
	add  b                                           ; $64d6: $80
	rlca                                             ; $64d7: $07
	db   $10                                         ; $64d8: $10
	ld   hl, sp-$01                                  ; $64d9: $f8 $ff
	rlca                                             ; $64db: $07
	rst  $38                                         ; $64dc: $ff
	adc  a                                           ; $64dd: $8f
	rst  $38                                         ; $64de: $ff
	ld   [hl], a                                     ; $64df: $77
	adc  a                                           ; $64e0: $8f
	adc  e                                           ; $64e1: $8b
	inc  b                                           ; $64e2: $04
	db   $fc                                         ; $64e3: $fc

jr_08a_64e4:
	inc  b                                           ; $64e4: $04
	cp   $e3                                         ; $64e5: $fe $e3
	ld   bc, $e3ff                                   ; $64e7: $01 $ff $e3
	add  b                                           ; $64ea: $80
	rst  $38                                         ; $64eb: $ff
	add  b                                           ; $64ec: $80
	db   $fc                                         ; $64ed: $fc
	add  hl, bc                                      ; $64ee: $09
	ldh  a, [$f1]                                    ; $64ef: $f0 $f1
	add  c                                           ; $64f1: $81
	add  d                                           ; $64f2: $82
	inc  bc                                          ; $64f3: $03
	inc  c                                           ; $64f4: $0c
	rrca                                             ; $64f5: $0f
	ld   a, [de]                                     ; $64f6: $1a
	sbc  b                                           ; $64f7: $98
	and  h                                           ; $64f8: $a4
	add  b                                           ; $64f9: $80
	cp   h                                           ; $64fa: $bc
	ld   b, $3c                                      ; $64fb: $06 $3c
	ld   b, b                                        ; $64fd: $40
	ld   a, b                                        ; $64fe: $78
	or   b                                           ; $64ff: $b0
	ldh  a, [$80]                                    ; $6500: $f0 $80
	ldh  [$82], a                                    ; $6502: $e0 $82
	add  b                                           ; $6504: $80
	add  b                                           ; $6505: $80
	inc  bc                                          ; $6506: $03
	adc  h                                           ; $6507: $8c
	nop                                              ; $6508: $00
	rlca                                             ; $6509: $07
	sbc  h                                           ; $650a: $9c
	db   $fc                                         ; $650b: $fc
	dec  hl                                          ; $650c: $2b
	ld   a, a                                        ; $650d: $7f
	dec  c                                           ; $650e: $0d
	ccf                                              ; $650f: $3f
	nop                                              ; $6510: $00
	ld   b, $86                                      ; $6511: $06 $86
	nop                                              ; $6513: $00
	add  b                                           ; $6514: $80
	ld   bc, $c080                                   ; $6515: $01 $80 $c0
	rlca                                             ; $6518: $07
	ccf                                              ; $6519: $3f
	rst  $38                                         ; $651a: $ff
	ld   c, b                                        ; $651b: $48
	rst  $38                                         ; $651c: $ff
	inc  bc                                          ; $651d: $03
	ld   [hl], a                                     ; $651e: $77
	nop                                              ; $651f: $00
	inc  bc                                          ; $6520: $03
	add  d                                           ; $6521: $82
	nop                                              ; $6522: $00
	add  b                                           ; $6523: $80
	inc  b                                           ; $6524: $04
	add  b                                           ; $6525: $80
	adc  e                                           ; $6526: $8b
	dec  b                                           ; $6527: $05
	db   $fc                                         ; $6528: $fc
	rst  $38                                         ; $6529: $ff
	ldh  [rIE], a                                    ; $652a: $e0 $ff
	and  b                                           ; $652c: $a0
	cp   h                                           ; $652d: $bc
	add  b                                           ; $652e: $80
	add  b                                           ; $652f: $80
	add  d                                           ; $6530: $82
	nop                                              ; $6531: $00
	rlca                                             ; $6532: $07
	ld   [hl], c                                     ; $6533: $71
	ld   a, a                                        ; $6534: $7f
	add  b                                           ; $6535: $80
	cp   $a8                                         ; $6536: $fe $a8
	ld   hl, sp+$10                                  ; $6538: $f8 $10
	jr   nc, @+$01                                   ; $653a: $30 $ff

	nop                                              ; $653c: $00
	rst  $38                                         ; $653d: $ff
	nop                                              ; $653e: $00
	xor  $00                                         ; $653f: $ee $00
	dec  b                                           ; $6541: $05
	add  b                                           ; $6542: $80
	nop                                              ; $6543: $00

jr_08a_6544:
	add  [hl]                                        ; $6544: $86
	halt                                             ; $6545: $76
	ld   a, a                                        ; $6546: $7f
	rrca                                             ; $6547: $0f
	sbc  h                                           ; $6548: $9c
	nop                                              ; $6549: $00
	add  b                                           ; $654a: $80
	cp   $9a                                         ; $654b: $fe $9a
	nop                                              ; $654d: $00
	add  c                                           ; $654e: $81
	inc  bc                                          ; $654f: $03
	ld   bc, $f8fb                                   ; $6550: $01 $fb $f8
	sub  e                                           ; $6553: $93
	nop                                              ; $6554: $00
	add  b                                           ; $6555: $80
	inc  bc                                          ; $6556: $03
	add  b                                           ; $6557: $80
	rrca                                             ; $6558: $0f
	add  b                                           ; $6559: $80
	ld   a, [hl]                                     ; $655a: $7e
	add  b                                           ; $655b: $80
	db   $fc                                         ; $655c: $fc
	add  b                                           ; $655d: $80
	ldh  a, [$8a]                                    ; $655e: $f0 $8a
	nop                                              ; $6560: $00
	add  d                                           ; $6561: $82
	jr   nz, jr_08a_64e4                             ; $6562: $20 $80

	ld   h, b                                        ; $6564: $60
	add  b                                           ; $6565: $80
	ld   b, b                                        ; $6566: $40
	add  b                                           ; $6567: $80
	ret  nz                                          ; $6568: $c0

	add  b                                           ; $6569: $80
	add  b                                           ; $656a: $80
	and  [hl]                                        ; $656b: $a6
	nop                                              ; $656c: $00
	add  b                                           ; $656d: $80
	inc  bc                                          ; $656e: $03
	sbc  h                                           ; $656f: $9c
	nop                                              ; $6570: $00
	add  b                                           ; $6571: $80
	cp   $80                                         ; $6572: $fe $80
	ccf                                              ; $6574: $3f
	sbc  d                                           ; $6575: $9a
	nop                                              ; $6576: $00
	inc  b                                           ; $6577: $04
	inc  bc                                          ; $6578: $03
	ei                                               ; $6579: $fb
	db   $fc                                         ; $657a: $fc
	ld   [hl], h                                     ; $657b: $74
	ld   [hl], b                                     ; $657c: $70
	sbc  c                                           ; $657d: $99
	nop                                              ; $657e: $00
	add  b                                           ; $657f: $80
	add  b                                           ; $6580: $80
	rst  $38                                         ; $6581: $ff
	nop                                              ; $6582: $00
	rst  $38                                         ; $6583: $ff
	nop                                              ; $6584: $00
	rst  $38                                         ; $6585: $ff
	nop                                              ; $6586: $00
	rst  $38                                         ; $6587: $ff
	nop                                              ; $6588: $00
	rst  $38                                         ; $6589: $ff
	nop                                              ; $658a: $00
	or   a                                           ; $658b: $b7
	nop                                              ; $658c: $00
	ld   c, e                                        ; $658d: $4b
	nop                                              ; $658e: $00
	xor  d                                           ; $658f: $aa
	nop                                              ; $6590: $00
	add  b                                           ; $6591: $80
	ld   [bc], a                                     ; $6592: $02
	ld   [bc], a                                     ; $6593: $02
	dec  b                                           ; $6594: $05
	rlca                                             ; $6595: $07
	ld   [bc], a                                     ; $6596: $02
	adc  e                                           ; $6597: $8b
	nop                                              ; $6598: $00
	add  b                                           ; $6599: $80
	add  b                                           ; $659a: $80
	cp   b                                           ; $659b: $b8
	nop                                              ; $659c: $00
	add  b                                           ; $659d: $80
	ld   bc, $0222                                   ; $659e: $01 $22 $02
	inc  bc                                          ; $65a1: $03
	dec  b                                           ; $65a2: $05
	rlca                                             ; $65a3: $07
	dec  bc                                          ; $65a4: $0b
	rrca                                             ; $65a5: $0f
	rla                                              ; $65a6: $17
	rra                                              ; $65a7: $1f
	inc  l                                           ; $65a8: $2c
	ccf                                              ; $65a9: $3f
	ld   e, b                                        ; $65aa: $58
	ld   a, h                                        ; $65ab: $7c
	or   b                                           ; $65ac: $b0
	ld   a, [$f562]                                  ; $65ad: $fa $62 $f5
	push bc                                          ; $65b0: $c5
	db   $e3                                         ; $65b1: $e3
	db   $db                                         ; $65b2: $db
	ld   hl, sp-$80                                  ; $65b3: $f8 $80
	ldh  [$98], a                                    ; $65b5: $e0 $98
	ld   hl, sp-$1a                                  ; $65b7: $f8 $e6
	cp   $39                                         ; $65b9: $fe $39
	rst  $38                                         ; $65bb: $ff
	ld   c, $3f                                      ; $65bc: $0e $3f
	inc  bc                                          ; $65be: $03
	adc  a                                           ; $65bf: $8f
	add  b                                           ; $65c0: $80
	inc  hl                                          ; $65c1: $23
	jr   nz, jr_08a_6544                             ; $65c2: $20 $80

	ld   a, b                                        ; $65c4: $78
	add  e                                           ; $65c5: $83
	nop                                              ; $65c6: $00
	add  b                                           ; $65c7: $80
	add  b                                           ; $65c8: $80
	ld   [$e060], sp                                 ; $65c9: $08 $60 $e0
	sbc  b                                           ; $65cc: $98
	ld   hl, sp-$1a                                  ; $65cd: $f8 $e6
	cp   $39                                         ; $65cf: $fe $39
	rst  $38                                         ; $65d1: $ff
	ld   a, $8b                                      ; $65d2: $3e $8b
	nop                                              ; $65d4: $00
	add  b                                           ; $65d5: $80
	add  b                                           ; $65d6: $80
	adc  b                                           ; $65d7: $88
	nop                                              ; $65d8: $00
	add  b                                           ; $65d9: $80
	ld   bc, $020e                                   ; $65da: $01 $0e $02
	inc  bc                                          ; $65dd: $03
	dec  b                                           ; $65de: $05
	rlca                                             ; $65df: $07
	dec  bc                                          ; $65e0: $0b
	rrca                                             ; $65e1: $0f
	rla                                              ; $65e2: $17
	rra                                              ; $65e3: $1f
	cpl                                              ; $65e4: $2f
	ccf                                              ; $65e5: $3f
	ld   e, a                                        ; $65e6: $5f
	ld   a, a                                        ; $65e7: $7f
	cp   a                                           ; $65e8: $bf
	rst  $38                                         ; $65e9: $ff
	ld   a, a                                        ; $65ea: $7f
	add  e                                           ; $65eb: $83
	rst  $38                                         ; $65ec: $ff
	inc  b                                           ; $65ed: $04
	ld   sp, hl                                      ; $65ee: $f9
	cp   $f9                                         ; $65ef: $fe $f9
	rst  $38                                         ; $65f1: $ff
	cp   $8a                                         ; $65f2: $fe $8a
	rst  $38                                         ; $65f4: $ff
	dec  bc                                          ; $65f5: $0b
	ld   c, c                                        ; $65f6: $49
	ret                                              ; $65f7: $c9


	sub  e                                           ; $65f8: $93
	ld   [hl], e                                     ; $65f9: $73
	ldh  [c], a                                      ; $65fa: $e2
	sbc  d                                           ; $65fb: $9a
	ld   sp, hl                                      ; $65fc: $f9
	rst  $20                                         ; $65fd: $e7
	cp   $f9                                         ; $65fe: $fe $f9
	rst  $38                                         ; $6600: $ff
	cp   $81                                         ; $6601: $fe $81
	rst  $38                                         ; $6603: $ff
	ld   a, [hl+]                                    ; $6604: $2a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6605: $cf
	ccf                                              ; $6606: $3f
	inc  bc                                          ; $6607: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6608: $cf
	pop  bc                                          ; $6609: $c1
	and  e                                           ; $660a: $a3
	and  l                                           ; $660b: $a5
	ld   h, a                                        ; $660c: $67
	ld   l, e                                        ; $660d: $6b
	rrca                                             ; $660e: $0f
	sub  a                                           ; $660f: $97
	sbc  a                                           ; $6610: $9f
	ld   l, h                                        ; $6611: $6c
	rst  $38                                         ; $6612: $ff
	sbc  e                                           ; $6613: $9b
	rst  $38                                         ; $6614: $ff
	sbc  b                                           ; $6615: $98
	ldh  [$98], a                                    ; $6616: $e0 $98
	ld   hl, sp-$18                                  ; $6618: $f8 $e8
	ld   hl, sp-$78                                  ; $661a: $f8 $88
	ld   hl, sp+$7c                                  ; $661c: $f8 $7c
	db   $fc                                         ; $661e: $fc
	ld   a, h                                        ; $661f: $7c
	call c, $b454                                    ; $6620: $dc $54 $b4
	xor  h                                           ; $6623: $ac
	db   $ec                                         ; $6624: $ec
	ld   [$170f], sp                                 ; $6625: $08 $0f $17
	rra                                              ; $6628: $1f
	cpl                                              ; $6629: $2f
	ccf                                              ; $662a: $3f
	cpl                                              ; $662b: $2f
	ccf                                              ; $662c: $3f
	inc  de                                          ; $662d: $13
	rra                                              ; $662e: $1f
	inc  a                                           ; $662f: $3c
	add  b                                           ; $6630: $80
	inc  sp                                          ; $6631: $33
	inc  bc                                          ; $6632: $03
	jr   c, jr_08a_664d                              ; $6633: $38 $18

	ld   e, $01                                      ; $6635: $1e $01
	adc  c                                           ; $6637: $89
	rst  $38                                         ; $6638: $ff
	inc  b                                           ; $6639: $04
	ccf                                              ; $663a: $3f
	rst  $38                                         ; $663b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $663c: $cf
	ccf                                              ; $663d: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $663e: $cf
	sub  a                                           ; $663f: $97
	rst  $38                                         ; $6640: $ff
	rla                                              ; $6641: $17
	cp   $ff                                         ; $6642: $fe $ff
	cp   $ff                                         ; $6644: $fe $ff
	ld   hl, sp-$01                                  ; $6646: $f8 $ff
	ei                                               ; $6648: $fb
	cp   $e2                                         ; $6649: $fe $e2
	db   $fd                                         ; $664b: $fd
	db   $dd                                         ; $664c: $dd

jr_08a_664d:
	rst  $38                                         ; $664d: $ff
	rst  JumpTable                                         ; $664e: $df
	rst  $30                                         ; $664f: $f7
	dec  d                                           ; $6650: $15
	db   $ed                                         ; $6651: $ed
	db   $eb                                         ; $6652: $eb
	ei                                               ; $6653: $fb
	cp   $be                                         ; $6654: $fe $be
	xor  b                                           ; $6656: $a8
	ld   l, b                                        ; $6657: $68
	ld   a, b                                        ; $6658: $78
	ld   hl, sp-$80                                  ; $6659: $f8 $80
	and  b                                           ; $665b: $a0
	add  b                                           ; $665c: $80
	ld   h, b                                        ; $665d: $60
	add  b                                           ; $665e: $80
	ret  nz                                          ; $665f: $c0

	add  [hl]                                        ; $6660: $86
	nop                                              ; $6661: $00
	add  b                                           ; $6662: $80
	rlca                                             ; $6663: $07
	add  b                                           ; $6664: $80
	ld   bc, $008a                                   ; $6665: $01 $8a $00
	add  hl, bc                                      ; $6668: $09
	db   $fc                                         ; $6669: $fc
	adc  a                                           ; $666a: $8f
	adc  h                                           ; $666b: $8c
	db   $e3                                         ; $666c: $e3
	ld   h, e                                        ; $666d: $63
	ld   a, b                                        ; $666e: $78
	jr   jr_08a_668f                                 ; $666f: $18 $1e

	ld   b, $07                                      ; $6671: $06 $07
	add  b                                           ; $6673: $80
	ld   bc, $0083                                   ; $6674: $01 $83 $00
	add  c                                           ; $6677: $81
	rst  $38                                         ; $6678: $ff
	dec  e                                           ; $6679: $1d
	ccf                                              ; $667a: $3f
	rst  $38                                         ; $667b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $667c: $cf
	ccf                                              ; $667d: $3f
	inc  sp                                          ; $667e: $33
	adc  a                                           ; $667f: $8f
	adc  h                                           ; $6680: $8c
	db   $e3                                         ; $6681: $e3
	ld   h, e                                        ; $6682: $63
	ld   a, c                                        ; $6683: $79
	add  hl, de                                      ; $6684: $19
	rra                                              ; $6685: $1f
	rrca                                             ; $6686: $0f
	rst  $38                                         ; $6687: $ff
	rst  $30                                         ; $6688: $f7
	db   $fd                                         ; $6689: $fd
	push bc                                          ; $668a: $c5
	ei                                               ; $668b: $fb
	cp   d                                           ; $668c: $ba
	cp   $bf                                         ; $668d: $fe $bf

jr_08a_668f:
	rst  $28                                         ; $668f: $ef
	xor  d                                           ; $6690: $aa
	jp   c, $b656                                    ; $6691: $da $56 $b6

	cp   h                                           ; $6694: $bc
	ld   a, h                                        ; $6695: $7c
	ld   e, b                                        ; $6696: $58
	ret  c                                           ; $6697: $d8

	add  b                                           ; $6698: $80
	ldh  a, [$80]                                    ; $6699: $f0 $80
	ld   b, b                                        ; $669b: $40
	add  b                                           ; $669c: $80
	ret  nz                                          ; $669d: $c0

	add  b                                           ; $669e: $80
	add  b                                           ; $669f: $80
	or   h                                           ; $66a0: $b4
	nop                                              ; $66a1: $00
	add  b                                           ; $66a2: $80
	rlca                                             ; $66a3: $07
	add  b                                           ; $66a4: $80
	ld   bc, $008a                                   ; $66a5: $01 $8a $00
	add  b                                           ; $66a8: $80
	ret  nz                                          ; $66a9: $c0

	add  b                                           ; $66aa: $80
	add  b                                           ; $66ab: $80
	rst  $38                                         ; $66ac: $ff
	nop                                              ; $66ad: $00
	add  c                                           ; $66ae: $81
	nop                                              ; $66af: $00
	add  b                                           ; $66b0: $80
	ld   bc, $0280                                   ; $66b1: $01 $80 $02
	add  b                                           ; $66b4: $80
	inc  b                                           ; $66b5: $04
	add  b                                           ; $66b6: $80
	ld   bc, $009a                                   ; $66b7: $01 $9a $00
	add  b                                           ; $66ba: $80
	sub  b                                           ; $66bb: $90
	add  b                                           ; $66bc: $80
	inc  b                                           ; $66bd: $04
	rst  $38                                         ; $66be: $ff
	nop                                              ; $66bf: $00
	sbc  l                                           ; $66c0: $9d
	nop                                              ; $66c1: $00
	add  b                                           ; $66c2: $80
	inc  [hl]                                        ; $66c3: $34
	add  b                                           ; $66c4: $80
	ld   [$0580], sp                                 ; $66c5: $08 $80 $05
	add  b                                           ; $66c8: $80
	ld   [bc], a                                     ; $66c9: $02
	sbc  [hl]                                        ; $66ca: $9e
	nop                                              ; $66cb: $00
	add  b                                           ; $66cc: $80
	ret  nz                                          ; $66cd: $c0

	rst  $38                                         ; $66ce: $ff
	nop                                              ; $66cf: $00
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
	xor  $00                                         ; $66da: $ee $00
	ld   [hl], d                                     ; $66dc: $72
	nop                                              ; $66dd: $00
	sbc  h                                           ; $66de: $9c
	nop                                              ; $66df: $00
	add  b                                           ; $66e0: $80
	ld   bc, $0082                                   ; $66e1: $01 $82 $00
	add  b                                           ; $66e4: $80
	ld   bc, $0e80                                   ; $66e5: $01 $80 $0e
	ld   bc, $3e31                                   ; $66e8: $01 $31 $3e
	add  b                                           ; $66eb: $80
	ld   [hl], b                                     ; $66ec: $70
	ld   bc, $bfb0                                   ; $66ed: $01 $b0 $bf
	add  b                                           ; $66f0: $80
	ld   a, a                                        ; $66f1: $7f
	add  d                                           ; $66f2: $82
	nop                                              ; $66f3: $00
	add  b                                           ; $66f4: $80
	cp   $04                                         ; $66f5: $fe $04
	ld   bc, $e01f                                   ; $66f7: $01 $1f $e0
	ld   bc, $8100                                   ; $66fa: $01 $00 $81
	rst  $38                                         ; $66fd: $ff
	add  b                                           ; $66fe: $80
	ld   hl, sp-$7c                                  ; $66ff: $f8 $84
	nop                                              ; $6701: $00
	add  b                                           ; $6702: $80
	ret  nz                                          ; $6703: $c0

	rlca                                             ; $6704: $07
	inc  a                                           ; $6705: $3c
	db   $fc                                         ; $6706: $fc
	ccf                                              ; $6707: $3f
	add  a                                           ; $6708: $87
	add  h                                           ; $6709: $84
	rst  $38                                         ; $670a: $ff
	nop                                              ; $670b: $00
	inc  bc                                          ; $670c: $03
	adc  d                                           ; $670d: $8a
	nop                                              ; $670e: $00
	add  d                                           ; $670f: $82
	add  b                                           ; $6710: $80
	adc  [hl]                                        ; $6711: $8e
	nop                                              ; $6712: $00
	add  b                                           ; $6713: $80
	ld   bc, $0200                                   ; $6714: $01 $00 $02
	adc  e                                           ; $6717: $8b
	inc  bc                                          ; $6718: $03
	ld   bc, $8f8e                                   ; $6719: $01 $8e $8f
	adc  d                                           ; $671c: $8a
	add  b                                           ; $671d: $80
	add  b                                           ; $671e: $80
	add  c                                           ; $671f: $81
	add  [hl]                                        ; $6720: $86
	nop                                              ; $6721: $00
	add  b                                           ; $6722: $80
	inc  a                                           ; $6723: $3c
	dec  b                                           ; $6724: $05
	ld   c, [hl]                                     ; $6725: $4e
	ld   d, d                                        ; $6726: $52
	ld   h, d                                        ; $6727: $62
	ld   e, [hl]                                     ; $6728: $5e
	rst  JumpTable                                         ; $6729: $df
	rst  $38                                         ; $672a: $ff
	adc  h                                           ; $672b: $8c
	ld   bc, $c180                                   ; $672c: $01 $80 $c1
	ld   bc, $c040                                   ; $672f: $01 $40 $c0
	adc  h                                           ; $6732: $8c
	ld   b, b                                        ; $6733: $40
	nop                                              ; $6734: $00
	add  b                                           ; $6735: $80
	adc  l                                           ; $6736: $8d
	nop                                              ; $6737: $00
	nop                                              ; $6738: $00
	ld   [bc], a                                     ; $6739: $02
	adc  c                                           ; $673a: $89
	inc  bc                                          ; $673b: $03
	ld   bc, $0302                                   ; $673c: $01 $02 $03
	add  b                                           ; $673f: $80
	ld   bc, $8e06                                   ; $6740: $01 $06 $8e
	adc  a                                           ; $6743: $8f
	or   c                                           ; $6744: $b1
	cp   a                                           ; $6745: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6746: $cf
	cp   $be                                         ; $6747: $fe $be
	add  b                                           ; $6749: $80
	ld   hl, sp-$80                                  ; $674a: $f8 $80
	db   $e3                                         ; $674c: $e3
	add  b                                           ; $674d: $80
	jp   $c709                                       ; $674e: $c3 $09 $c7


	add  a                                           ; $6751: $87
	rst  $20                                         ; $6752: $e7
	dec  de                                          ; $6753: $1b
	rst  $28                                         ; $6754: $ef
	xor  l                                           ; $6755: $ad
	rst  JumpTable                                         ; $6756: $df
	sbc  l                                           ; $6757: $9d
	ccf                                              ; $6758: $3f
	inc  bc                                          ; $6759: $03
	add  a                                           ; $675a: $87
	rst  $38                                         ; $675b: $ff
	ld   b, $86                                      ; $675c: $06 $86
	cp   c                                           ; $675e: $b9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $675f: $cf
	rst  $30                                         ; $6760: $f7
	ei                                               ; $6761: $fb
	db   $fd                                         ; $6762: $fd
	rst  $38                                         ; $6763: $ff
	add  c                                           ; $6764: $81
	cp   $82                                         ; $6765: $fe $82
	db   $fc                                         ; $6767: $fc
	ld   [bc], a                                     ; $6768: $02
	ldh  [$e1], a                                    ; $6769: $e0 $e1
	ld   a, $84                                      ; $676b: $3e $84
	ld   b, b                                        ; $676d: $40
	add  e                                           ; $676e: $83
	ret  nz                                          ; $676f: $c0

	add  d                                           ; $6770: $82
	add  b                                           ; $6771: $80
	add  b                                           ; $6772: $80
	nop                                              ; $6773: $00
	add  b                                           ; $6774: $80
	ld   c, $80                                      ; $6775: $0e $80
	rra                                              ; $6777: $1f
	rlca                                             ; $6778: $07
	ld   [$020c], sp                                 ; $6779: $08 $0c $02
	dec  b                                           ; $677c: $05
	nop                                              ; $677d: $00
	ld   [bc], a                                     ; $677e: $02
	nop                                              ; $677f: $00
	ld   bc, $0080                                   ; $6780: $01 $80 $00
	add  h                                           ; $6783: $84
	ld   bc, $c180                                   ; $6784: $01 $80 $c1
	ld   c, $31                                      ; $6787: $0e $31
	ld   [hl], c                                     ; $6789: $71
	ld   c, a                                        ; $678a: $4f
	sbc  a                                           ; $678b: $9f
	inc  de                                          ; $678c: $13
	ld   b, a                                        ; $678d: $47
	inc  b                                           ; $678e: $04
	or   e                                           ; $678f: $b3
	add  e                                           ; $6790: $83
	rst  $38                                         ; $6791: $ff
	or   c                                           ; $6792: $b1
	rst  JumpTable                                         ; $6793: $df
	and  $5b                                         ; $6794: $e6 $5b
	call c, $c180                                    ; $6796: $dc $80 $c1
	add  l                                           ; $6799: $85
	rst  ToBoot                                         ; $679a: $c7
	ld   bc, $fec6                                   ; $679b: $01 $c6 $fe
	add  b                                           ; $679e: $80
	rst  $38                                         ; $679f: $ff
	inc  bc                                          ; $67a0: $03
	nop                                              ; $67a1: $00
	rst  $38                                         ; $67a2: $ff
	rrca                                             ; $67a3: $0f
	ldh  a, [$86]                                    ; $67a4: $f0 $86
	rst  $38                                         ; $67a6: $ff
	nop                                              ; $67a7: $00
	nop                                              ; $67a8: $00
	add  b                                           ; $67a9: $80
	rlca                                             ; $67aa: $07
	add  b                                           ; $67ab: $80
	dec  a                                           ; $67ac: $3d
	add  b                                           ; $67ad: $80
	pop  hl                                          ; $67ae: $e1
	nop                                              ; $67af: $00
	ld   bc, $8180                                   ; $67b0: $01 $80 $81
	add  h                                           ; $67b3: $84
	pop  bc                                          ; $67b4: $c1
	nop                                              ; $67b5: $00
	ld   a, [hl]                                     ; $67b6: $7e
	add  a                                           ; $67b7: $87
	add  b                                           ; $67b8: $80
	add  h                                           ; $67b9: $84
	ret  nz                                          ; $67ba: $c0

jr_08a_67bb:
	adc  [hl]                                        ; $67bb: $8e
	nop                                              ; $67bc: $00
	ld   a, [bc]                                     ; $67bd: $0a
	ld   h, b                                        ; $67be: $60
	ld   e, a                                        ; $67bf: $5f
	rrca                                             ; $67c0: $0f
	cpl                                              ; $67c1: $2f
	inc  bc                                          ; $67c2: $03
	inc  de                                          ; $67c3: $13
	nop                                              ; $67c4: $00
	ld   [$0400], sp                                 ; $67c5: $08 $00 $04
	nop                                              ; $67c8: $00
	add  b                                           ; $67c9: $80
	inc  bc                                          ; $67ca: $03
	add  c                                           ; $67cb: $81
	ld   [bc], a                                     ; $67cc: $02
	nop                                              ; $67cd: $00
	ld   bc, $8781                                   ; $67ce: $01 $81 $87
	add  d                                           ; $67d1: $82
	rlca                                             ; $67d2: $07
	add  a                                           ; $67d3: $87
	add  a                                           ; $67d4: $87
	adc  l                                           ; $67d5: $8d
	rst  $38                                         ; $67d6: $ff
	nop                                              ; $67d7: $00
	ret  nz                                          ; $67d8: $c0

	adc  l                                           ; $67d9: $8d
	pop  bc                                          ; $67da: $c1
	nop                                              ; $67db: $00
	ld   a, $8d                                      ; $67dc: $3e $8d
	ret  nz                                          ; $67de: $c0

	adc  [hl]                                        ; $67df: $8e
	nop                                              ; $67e0: $00
	add  d                                           ; $67e1: $82
	ld   bc, $008b                                   ; $67e2: $01 $8b $00
	add  b                                           ; $67e5: $80
	add  a                                           ; $67e6: $87
	ld   [$07c7], sp                                 ; $67e7: $08 $c7 $07
	or   e                                           ; $67ea: $b3
	inc  bc                                          ; $67eb: $03
	ld   l, a                                        ; $67ec: $6f
	ld   bc, $001d                                   ; $67ed: $01 $1d $00
	inc  bc                                          ; $67f0: $03
	add  e                                           ; $67f1: $83
	nop                                              ; $67f2: $00
	add  l                                           ; $67f3: $85
	rst  $38                                         ; $67f4: $ff
	add  b                                           ; $67f5: $80
	cp   $01                                         ; $67f6: $fe $01
	nop                                              ; $67f8: $00
	rst  $38                                         ; $67f9: $ff
	add  d                                           ; $67fa: $82
	nop                                              ; $67fb: $00
	ld   bc, $c33f                                   ; $67fc: $01 $3f $c3
	add  c                                           ; $67ff: $81
	add  e                                           ; $6800: $83
	ld   b, $87                                      ; $6801: $06 $87
	ld   b, $0e                                      ; $6803: $06 $0e
	ld   [$0038], sp                                 ; $6805: $08 $38 $00
	ret  nz                                          ; $6808: $c0

	add  d                                           ; $6809: $82
	nop                                              ; $680a: $00
	add  d                                           ; $680b: $82
	add  b                                           ; $680c: $80
	rst  $38                                         ; $680d: $ff
	nop                                              ; $680e: $00
	rst  $38                                         ; $680f: $ff
	nop                                              ; $6810: $00
	rst  $38                                         ; $6811: $ff
	nop                                              ; $6812: $00
	rst  $38                                         ; $6813: $ff
	nop                                              ; $6814: $00
	rst  $38                                         ; $6815: $ff
	nop                                              ; $6816: $00
	rst  $38                                         ; $6817: $ff
	nop                                              ; $6818: $00
	rst  $38                                         ; $6819: $ff
	nop                                              ; $681a: $00
	rst  $38                                         ; $681b: $ff
	nop                                              ; $681c: $00
	rst  $38                                         ; $681d: $ff
	nop                                              ; $681e: $00
	pop  bc                                          ; $681f: $c1
	nop                                              ; $6820: $00
	ld   [hl], c                                     ; $6821: $71
	nop                                              ; $6822: $00
	db   $ec                                         ; $6823: $ec
	nop                                              ; $6824: $00
	add  b                                           ; $6825: $80
	ld   bc, $0082                                   ; $6826: $01 $82 $00
	add  b                                           ; $6829: $80
	inc  bc                                          ; $682a: $03
	add  b                                           ; $682b: $80
	rlca                                             ; $682c: $07
	add  hl, bc                                      ; $682d: $09
	inc  c                                           ; $682e: $0c
	rrca                                             ; $682f: $0f
	ld   [hl], e                                     ; $6830: $73
	ld   a, [hl]                                     ; $6831: $7e
	adc  $c0                                         ; $6832: $ce $c0
	nop                                              ; $6834: $00
	inc  bc                                          ; $6835: $03
	inc  b                                           ; $6836: $04
	rlca                                             ; $6837: $07
	add  b                                           ; $6838: $80
	jr   c, jr_08a_67bb                              ; $6839: $38 $80

	ret  nz                                          ; $683b: $c0

	db   $10                                         ; $683c: $10
	add  b                                           ; $683d: $80
	ldh  [$63], a                                    ; $683e: $e0 $63
	rlca                                             ; $6840: $07
	dec  sp                                          ; $6841: $3b
	ld   c, $2e                                      ; $6842: $0e $2e
	nop                                              ; $6844: $00
	ld   e, $82                                      ; $6845: $1e $82
	ld   a, a                                        ; $6847: $7f

jr_08a_6848:
	db   $fc                                         ; $6848: $fc
	rlca                                             ; $6849: $07
	ld   a, a                                        ; $684a: $7f
	ld   a, b                                        ; $684b: $78
	rlca                                             ; $684c: $07
	ld   hl, sp-$80                                  ; $684d: $f8 $80
	ldh  [$80], a                                    ; $684f: $e0 $80
	add  b                                           ; $6851: $80
	dec  b                                           ; $6852: $05
	rrca                                             ; $6853: $0f
	db   $10                                         ; $6854: $10
	add  hl, de                                      ; $6855: $19
	add  hl, sp                                      ; $6856: $39
	ccf                                              ; $6857: $3f
	rst  $38                                         ; $6858: $ff
	add  c                                           ; $6859: $81
	nop                                              ; $685a: $00
	add  b                                           ; $685b: $80
	add  b                                           ; $685c: $80
	ld   a, [bc]                                     ; $685d: $0a
	ld   h, b                                        ; $685e: $60
	ldh  [$78], a                                    ; $685f: $e0 $78
	ld   hl, sp-$62                                  ; $6861: $f8 $9e
	adc  [hl]                                        ; $6863: $8e
	rra                                              ; $6864: $1f
	scf                                              ; $6865: $37
	inc  sp                                          ; $6866: $33
	push de                                          ; $6867: $d5
	sbc  $8b                                         ; $6868: $de $8b

jr_08a_686a:
	nop                                              ; $686a: $00
	add  b                                           ; $686b: $80
	add  b                                           ; $686c: $80
	nop                                              ; $686d: $00
	ld   [bc], a                                     ; $686e: $02
	add  b                                           ; $686f: $80
	inc  bc                                          ; $6870: $03
	nop                                              ; $6871: $00
	ld   [bc], a                                     ; $6872: $02
	add  c                                           ; $6873: $81

jr_08a_6874:
	inc  b                                           ; $6874: $04
	inc  b                                           ; $6875: $04
	ld   b, $0e                                      ; $6876: $06 $0e
	rrca                                             ; $6878: $0f
	dec  bc                                          ; $6879: $0b
	rrca                                             ; $687a: $0f
	add  b                                           ; $687b: $80
	dec  c                                           ; $687c: $0d
	add  b                                           ; $687d: $80
	dec  bc                                          ; $687e: $0b
	rlca                                             ; $687f: $07
	ld   [$2e1e], sp                                 ; $6880: $08 $1e $2e
	ld   a, h                                        ; $6883: $7c
	jr   c, jr_08a_686a                              ; $6884: $38 $e4

	ccf                                              ; $6886: $3f
	ld   e, a                                        ; $6887: $5f
	add  h                                           ; $6888: $84
	rst  $38                                         ; $6889: $ff
	add  b                                           ; $688a: $80
	xor  a                                           ; $688b: $af
	dec  b                                           ; $688c: $05
	inc  de                                          ; $688d: $13
	nop                                              ; $688e: $00
	ld   [de], a                                     ; $688f: $12
	dec  b                                           ; $6890: $05
	call nz, $86c0                                   ; $6891: $c4 $c0 $86
	rst  $38                                         ; $6894: $ff
	inc  bc                                          ; $6895: $03
	db   $f4                                         ; $6896: $f4
	rst  $30                                         ; $6897: $f7
	call c, $82df                                    ; $6898: $dc $df $82
	rst  $38                                         ; $689b: $ff
	add  b                                           ; $689c: $80
	ld   [$f680], a                                  ; $689d: $ea $80 $f6
	add  b                                           ; $68a0: $80
	add  sp, $07                                     ; $68a1: $e8 $07
	ldh  [$fd], a                                    ; $68a3: $e0 $fd
	ld   e, l                                        ; $68a5: $5d
	ldh  a, [rAUD1SWEEP]                             ; $68a6: $f0 $10
	and  e                                           ; $68a8: $a3
	set  1, a                                        ; $68a9: $cb $cf
	add  c                                           ; $68ab: $81
	add  a                                           ; $68ac: $87
	ld   bc, $1c9c                                   ; $68ad: $01 $9c $1c
	add  b                                           ; $68b0: $80
	db   $10                                         ; $68b1: $10
	add  e                                           ; $68b2: $83
	nop                                              ; $68b3: $00
	nop                                              ; $68b4: $00
	ccf                                              ; $68b5: $3f
	add  c                                           ; $68b6: $81
	ret  nz                                          ; $68b7: $c0

	add  c                                           ; $68b8: $81
	ldh  [$81], a                                    ; $68b9: $e0 $81
	ld   h, b                                        ; $68bb: $60
	nop                                              ; $68bc: $00
	ld   [hl], b                                     ; $68bd: $70
	add  d                                           ; $68be: $82
	jr   nc, jr_08a_68c4                             ; $68bf: $30 $03

	ld   [hl], b                                     ; $68c1: $70
	sbc  h                                           ; $68c2: $9c
	dec  de                                          ; $68c3: $1b

jr_08a_68c4:
	jr   jr_08a_6848                                 ; $68c4: $18 $82

	ld   de, $1380                                   ; $68c6: $11 $80 $13
	add  e                                           ; $68c9: $83
	db   $10                                         ; $68ca: $10
	inc  bc                                          ; $68cb: $03
	nop                                              ; $68cc: $00
	ld   [$5fa7], sp                                 ; $68cd: $08 $a7 $5f
	add  b                                           ; $68d0: $80
	xor  e                                           ; $68d1: $ab
	ld   [bc], a                                     ; $68d2: $02
	inc  d                                           ; $68d3: $14
	db   $f4                                         ; $68d4: $f4
	ldh  [$80], a                                    ; $68d5: $e0 $80
	cp   $80                                         ; $68d7: $fe $80
	rrca                                             ; $68d9: $0f
	add  b                                           ; $68da: $80
	inc  bc                                          ; $68db: $03
	add  b                                           ; $68dc: $80
	ld   b, $05                                      ; $68dd: $06 $05
	add  b                                           ; $68df: $80
	ld   l, b                                        ; $68e0: $68
	xor  $46                                         ; $68e1: $ee $46
	ld   c, h                                        ; $68e3: $4c
	inc  c                                           ; $68e4: $0c
	add  b                                           ; $68e5: $80
	nop                                              ; $68e6: $00
	add  b                                           ; $68e7: $80
	jr   nz, jr_08a_686a                             ; $68e8: $20 $80

	ret  nz                                          ; $68ea: $c0

	add  h                                           ; $68eb: $84
	nop                                              ; $68ec: $00
	add  b                                           ; $68ed: $80
	ld   [hl-], a                                    ; $68ee: $32
	adc  b                                           ; $68ef: $88
	nop                                              ; $68f0: $00
	add  b                                           ; $68f1: $80
	jr   jr_08a_6874                                 ; $68f2: $18 $80

	rst  $38                                         ; $68f4: $ff
	add  b                                           ; $68f5: $80
	nop                                              ; $68f6: $00
	add  b                                           ; $68f7: $80
	dec  b                                           ; $68f8: $05
	add  b                                           ; $68f9: $80
	ld   a, [bc]                                     ; $68fa: $0a
	add  b                                           ; $68fb: $80
	dec  h                                           ; $68fc: $25
	add  h                                           ; $68fd: $84
	ccf                                              ; $68fe: $3f
	ld   bc, $707f                                   ; $68ff: $01 $7f $70
	add  b                                           ; $6902: $80
	or   b                                           ; $6903: $b0
	add  b                                           ; $6904: $80
	ld   [hl], b                                     ; $6905: $70
	add  l                                           ; $6906: $85
	ldh  a, [$80]                                    ; $6907: $f0 $80
	ldh  [$80], a                                    ; $6909: $e0 $80
	ret  nz                                          ; $690b: $c0

	inc  bc                                          ; $690c: $03
	rrca                                             ; $690d: $0f
	dec  c                                           ; $690e: $0d
	dec  b                                           ; $690f: $05
	rlca                                             ; $6910: $07
	add  b                                           ; $6911: $80
	ld   bc, $0088                                   ; $6912: $01 $88 $00
	nop                                              ; $6915: $00
	rst  $38                                         ; $6916: $ff
	add  b                                           ; $6917: $80
	ld   d, b                                        ; $6918: $50
	add  b                                           ; $6919: $80
	xor  d                                           ; $691a: $aa
	ld   [bc], a                                     ; $691b: $02
	push de                                          ; $691c: $d5
	ld   d, l                                        ; $691d: $55
	ld   a, a                                        ; $691e: $7f
	add  b                                           ; $691f: $80
	rra                                              ; $6920: $1f
	add  b                                           ; $6921: $80
	rrca                                             ; $6922: $0f
	add  b                                           ; $6923: $80
	inc  bc                                          ; $6924: $03
	add  b                                           ; $6925: $80
	nop                                              ; $6926: $00
	nop                                              ; $6927: $00
	rst  $38                                         ; $6928: $ff
	add  b                                           ; $6929: $80
	ld   b, e                                        ; $692a: $43
	add  b                                           ; $692b: $80
	xor  a                                           ; $692c: $af
	add  b                                           ; $692d: $80
	ld   a, a                                        ; $692e: $7f
	add  l                                           ; $692f: $85
	rst  $38                                         ; $6930: $ff
	add  b                                           ; $6931: $80
	rra                                              ; $6932: $1f
	adc  h                                           ; $6933: $8c
	rst  $38                                         ; $6934: $ff
	add  b                                           ; $6935: $80
	db   $fc                                         ; $6936: $fc
	add  h                                           ; $6937: $84
	rst  $38                                         ; $6938: $ff
	add  b                                           ; $6939: $80
	cp   $80                                         ; $693a: $fe $80
	ldh  a, [$80]                                    ; $693c: $f0 $80
	ret  nz                                          ; $693e: $c0

	add  d                                           ; $693f: $82
	nop                                              ; $6940: $00
	add  b                                           ; $6941: $80
	ret  nz                                          ; $6942: $c0

	add  b                                           ; $6943: $80
	add  b                                           ; $6944: $80
	rst  $38                                         ; $6945: $ff
	nop                                              ; $6946: $00
	rst  $38                                         ; $6947: $ff
	nop                                              ; $6948: $00
	rst  $38                                         ; $6949: $ff
	nop                                              ; $694a: $00
	rst  $38                                         ; $694b: $ff
	nop                                              ; $694c: $00
	rst  $38                                         ; $694d: $ff
	nop                                              ; $694e: $00
	rst  $38                                         ; $694f: $ff
	nop                                              ; $6950: $00
	rst  $38                                         ; $6951: $ff
	nop                                              ; $6952: $00
	rst  $38                                         ; $6953: $ff
	nop                                              ; $6954: $00
	rst  $38                                         ; $6955: $ff
	nop                                              ; $6956: $00
	rst  $38                                         ; $6957: $ff
	nop                                              ; $6958: $00
	and  b                                           ; $6959: $a0
	nop                                              ; $695a: $00
	ld   a, c                                        ; $695b: $79
	nop                                              ; $695c: $00
	sub  [hl]                                        ; $695d: $96
	nop                                              ; $695e: $00
	add  b                                           ; $695f: $80
	inc  bc                                          ; $6960: $03
	add  d                                           ; $6961: $82
	inc  b                                           ; $6962: $04
	ld   [bc], a                                     ; $6963: $02
	inc  c                                           ; $6964: $0c
	dec  bc                                          ; $6965: $0b
	rlca                                             ; $6966: $07
	add  e                                           ; $6967: $83
	nop                                              ; $6968: $00
	add  b                                           ; $6969: $80
	ld   hl, sp+$02                                  ; $696a: $f8 $02
	ld   a, $c6                                      ; $696c: $3e $c6
	rst  $20                                         ; $696e: $e7
	add  d                                           ; $696f: $82
	pop  hl                                          ; $6970: $e1
	ld   bc, $ffe0                                   ; $6971: $01 $e0 $ff
	adc  e                                           ; $6974: $8b
	nop                                              ; $6975: $00
	add  b                                           ; $6976: $80
	add  b                                           ; $6977: $80
	xor  [hl]                                        ; $6978: $ae
	nop                                              ; $6979: $00
	ld   bc, $090e                                   ; $697a: $01 $0e $09
	add  c                                           ; $697d: $81
	ld   [$0c80], sp                                 ; $697e: $08 $80 $0c
	nop                                              ; $6981: $00
	rrca                                             ; $6982: $0f
	add  d                                           ; $6983: $82
	rlca                                             ; $6984: $07
	add  b                                           ; $6985: $80
	inc  bc                                          ; $6986: $03
	add  b                                           ; $6987: $80
	nop                                              ; $6988: $00
	ld   [bc], a                                     ; $6989: $02
	ccf                                              ; $698a: $3f
	ret  nz                                          ; $698b: $c0

jr_08a_698c:
	nop                                              ; $698c: $00
	add  b                                           ; $698d: $80
	ld   bc, $0303                                   ; $698e: $01 $03 $03
	nop                                              ; $6991: $00
	rlca                                             ; $6992: $07
	inc  b                                           ; $6993: $04
	add  b                                           ; $6994: $80
	db   $fc                                         ; $6995: $fc
	add  b                                           ; $6996: $80
	cp   $00                                         ; $6997: $fe $00
	rst  $38                                         ; $6999: $ff
	add  b                                           ; $699a: $80
	ei                                               ; $699b: $fb
	add  h                                           ; $699c: $84
	add  b                                           ; $699d: $80
	add  b                                           ; $699e: $80
	ret  nz                                          ; $699f: $c0

	ld   [$f030], sp                                 ; $69a0: $08 $30 $f0
	inc  c                                           ; $69a3: $0c
	inc  a                                           ; $69a4: $3c
	inc  bc                                          ; $69a5: $03
	adc  a                                           ; $69a6: $8f
	add  c                                           ; $69a7: $81
	db   $e3                                         ; $69a8: $e3
	ld   e, $85                                      ; $69a9: $1e $85
	nop                                              ; $69ab: $00
	add  b                                           ; $69ac: $80
	ld   e, $02                                      ; $69ad: $1e $02
	ld   h, e                                        ; $69af: $63
	ld   a, l                                        ; $69b0: $7d
	sbc  a                                           ; $69b1: $9f
	add  c                                           ; $69b2: $81
	adc  $00                                         ; $69b3: $ce $00
	ld   c, a                                        ; $69b5: $4f
	add  a                                           ; $69b6: $87
	nop                                              ; $69b7: $00
	add  b                                           ; $69b8: $80
	add  b                                           ; $69b9: $80
	inc  b                                           ; $69ba: $04
	ret  nz                                          ; $69bb: $c0

	ld   b, b                                        ; $69bc: $40
	ld   h, b                                        ; $69bd: $60
	jr   nz, @-$3e                                   ; $69be: $20 $c0

	and  l                                           ; $69c0: $a5
	nop                                              ; $69c1: $00
	add  b                                           ; $69c2: $80
	rrca                                             ; $69c3: $0f
	ld   [bc], a                                     ; $69c4: $02
	ld   sp, $6332                                   ; $69c5: $31 $32 $63
	add  b                                           ; $69c8: $80
	ld   d, e                                        ; $69c9: $53
	inc  b                                           ; $69ca: $04
	ld   e, a                                        ; $69cb: $5f
	ret  nz                                          ; $69cc: $c0

	ld   sp, hl                                      ; $69cd: $f9
	add  hl, sp                                      ; $69ce: $39
	ccf                                              ; $69cf: $3f
	add  b                                           ; $69d0: $80
	rrca                                             ; $69d1: $0f
	add  b                                           ; $69d2: $80
	inc  bc                                          ; $69d3: $03
	add  b                                           ; $69d4: $80
	add  e                                           ; $69d5: $83
	inc  bc                                          ; $69d6: $03
	pop  hl                                          ; $69d7: $e1
	ld   h, c                                        ; $69d8: $61
	ld   [hl], c                                     ; $69d9: $71
	ld   de, $1080                                   ; $69da: $11 $80 $10
	ld   bc, $fce3                                   ; $69dd: $01 $e3 $fc
	add  b                                           ; $69e0: $80
	ld   a, b                                        ; $69e1: $78
	add  e                                           ; $69e2: $83
	nop                                              ; $69e3: $00
	add  b                                           ; $69e4: $80
	add  b                                           ; $69e5: $80
	add  b                                           ; $69e6: $80
	ldh  [$81], a                                    ; $69e7: $e0 $81
	rst  $38                                         ; $69e9: $ff
	ld   [bc], a                                     ; $69ea: $02
	ldh  [rAUD4LEN], a                               ; $69eb: $e0 $20
	jr   nc, @-$7a                                   ; $69ed: $30 $84

	db   $10                                         ; $69ef: $10
	ld   bc, $2030                                   ; $69f0: $01 $30 $20
	add  c                                           ; $69f3: $81
	ldh  [$80], a                                    ; $69f4: $e0 $80
	ret  nz                                          ; $69f6: $c0

	sbc  h                                           ; $69f7: $9c
	nop                                              ; $69f8: $00
	add  b                                           ; $69f9: $80
	ld   bc, $f101                                   ; $69fa: $01 $01 $f1
	adc  [hl]                                        ; $69fd: $8e
	add  e                                           ; $69fe: $83
	add  b                                           ; $69ff: $80
	add  hl, bc                                      ; $6a00: $09
	sbc  b                                           ; $6a01: $98
	nop                                              ; $6a02: $00
	ld   a, h                                        ; $6a03: $7c
	ld   b, h                                        ; $6a04: $44
	ld   h, a                                        ; $6a05: $67
	add  a                                           ; $6a06: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a07: $cf
	rrca                                             ; $6a08: $0f
	sbc  a                                           ; $6a09: $9f
	jr   jr_08a_698c                                 ; $6a0a: $18 $80

	ld   [$1882], sp                                 ; $6a0c: $08 $82 $18
	add  b                                           ; $6a0f: $80
	jr   c, jr_08a_6a12                              ; $6a10: $38 $00

jr_08a_6a12:
	ld   hl, sp-$7e                                  ; $6a12: $f8 $82
	ldh  a, [$80]                                    ; $6a14: $f0 $80
	ldh  [$80], a                                    ; $6a16: $e0 $80
	ld   a, a                                        ; $6a18: $7f
	add  b                                           ; $6a19: $80
	ld   e, $8a                                      ; $6a1a: $1e $8a
	nop                                              ; $6a1c: $00
	add  b                                           ; $6a1d: $80
	add  b                                           ; $6a1e: $80
	adc  [hl]                                        ; $6a1f: $8e
	nop                                              ; $6a20: $00
	add  b                                           ; $6a21: $80
	ld   bc, $0601                                   ; $6a22: $01 $01 $06
	rlca                                             ; $6a25: $07
	add  b                                           ; $6a26: $80
	add  hl, bc                                      ; $6a27: $09
	nop                                              ; $6a28: $00
	ld   de, $1980                                   ; $6a29: $11 $80 $19
	ld   [bc], a                                     ; $6a2c: $02
	rra                                              ; $6a2d: $1f
	scf                                              ; $6a2e: $37
	daa                                              ; $6a2f: $27
	add  b                                           ; $6a30: $80
	jr   nz, jr_08a_6a39                             ; $6a31: $20 $06

	dec  e                                           ; $6a33: $1d
	inc  bc                                          ; $6a34: $03
	db   $e4                                         ; $6a35: $e4
	and  $78                                         ; $6a36: $e6 $78
	sbc  h                                           ; $6a38: $9c

jr_08a_6a39:
	ret  c                                           ; $6a39: $d8

	add  b                                           ; $6a3a: $80
	push bc                                          ; $6a3b: $c5
	add  b                                           ; $6a3c: $80
	jp   $c100                                       ; $6a3d: $c3 $00 $c1


	add  b                                           ; $6a40: $80
	add  c                                           ; $6a41: $81
	nop                                              ; $6a42: $00
	ld   bc, $0380                                   ; $6a43: $01 $80 $03
	inc  b                                           ; $6a46: $04
	ccf                                              ; $6a47: $3f
	jr   nc, jr_08a_6aba                             ; $6a48: $30 $70

	ld   h, b                                        ; $6a4a: $60
	ldh  [$80], a                                    ; $6a4b: $e0 $80
	ret  nz                                          ; $6a4d: $c0

	add  b                                           ; $6a4e: $80
	add  b                                           ; $6a4f: $80
	add  h                                           ; $6a50: $84
	nop                                              ; $6a51: $00
	add  b                                           ; $6a52: $80
	add  b                                           ; $6a53: $80
	xor  h                                           ; $6a54: $ac
	nop                                              ; $6a55: $00
	nop                                              ; $6a56: $00
	ccf                                              ; $6a57: $3f

jr_08a_6a58:
	add  c                                           ; $6a58: $81
	jr   nz, jr_08a_6a5b                             ; $6a59: $20 $00

jr_08a_6a5b:
	nop                                              ; $6a5b: $00
	add  b                                           ; $6a5c: $80
	jr   jr_08a_6a5f                                 ; $6a5d: $18 $00

jr_08a_6a5f:
	rra                                              ; $6a5f: $1f
	add  b                                           ; $6a60: $80
	rrca                                             ; $6a61: $0f
	add  b                                           ; $6a62: $80
	rlca                                             ; $6a63: $07
	add  b                                           ; $6a64: $80
	ld   bc, $0080                                   ; $6a65: $01 $80 $00
	nop                                              ; $6a68: $00
	rst  $38                                         ; $6a69: $ff
	add  b                                           ; $6a6a: $80
	inc  bc                                          ; $6a6b: $03
	ld   bc, $0607                                   ; $6a6c: $01 $07 $06
	add  b                                           ; $6a6f: $80
	ld   e, $00                                      ; $6a70: $1e $00
	cp   $80                                         ; $6a72: $fe $80
	db   $fc                                         ; $6a74: $fc
	add  b                                           ; $6a75: $80
	ld   hl, sp-$80                                  ; $6a76: $f8 $80
	ldh  [rIE], a                                    ; $6a78: $e0 $ff
	nop                                              ; $6a7a: $00
	rst  $38                                         ; $6a7b: $ff
	nop                                              ; $6a7c: $00
	rst  $38                                         ; $6a7d: $ff
	nop                                              ; $6a7e: $00
	rst  $38                                         ; $6a7f: $ff

jr_08a_6a80:
	nop                                              ; $6a80: $00
	rst  $38                                         ; $6a81: $ff
	nop                                              ; $6a82: $00
	rst  $38                                         ; $6a83: $ff
	nop                                              ; $6a84: $00
	rst  $38                                         ; $6a85: $ff
	nop                                              ; $6a86: $00
	rst  $38                                         ; $6a87: $ff
	nop                                              ; $6a88: $00
	rst  $38                                         ; $6a89: $ff
	nop                                              ; $6a8a: $00
	rst  $30                                         ; $6a8b: $f7
	nop                                              ; $6a8c: $00
	ld   l, b                                        ; $6a8d: $68
	nop                                              ; $6a8e: $00
	ldh  a, [rP1]                                    ; $6a8f: $f0 $00
	add  b                                           ; $6a91: $80
	ld   bc, $0601                                   ; $6a92: $01 $01 $06
	rlca                                             ; $6a95: $07
	add  b                                           ; $6a96: $80
	add  hl, bc                                      ; $6a97: $09
	ld   bc, $1011                                   ; $6a98: $01 $11 $10
	add  b                                           ; $6a9b: $80
	jr   nz, jr_08a_6a9f                             ; $6a9c: $20 $01

	ld   b, b                                        ; $6a9e: $40

jr_08a_6a9f:
	ld   b, c                                        ; $6a9f: $41
	add  b                                           ; $6aa0: $80
	add  c                                           ; $6aa1: $81
	ld   bc, $0001                                   ; $6aa2: $01 $01 $00
	add  b                                           ; $6aa5: $80
	ldh  a, [rTAC]                                   ; $6aa6: $f0 $07
	inc  a                                           ; $6aa8: $3c
	call z, $c2ce                                    ; $6aa9: $cc $ce $c2
	db   $e3                                         ; $6aac: $e3
	pop  hl                                          ; $6aad: $e1
	add  c                                           ; $6aae: $81
	add  b                                           ; $6aaf: $80
	add  b                                           ; $6ab0: $80
	ldh  [$80], a                                    ; $6ab1: $e0 $80
	ld   hl, sp+$00                                  ; $6ab3: $f8 $00
	rst  $38                                         ; $6ab5: $ff
	add  a                                           ; $6ab6: $87
	nop                                              ; $6ab7: $00
	add  b                                           ; $6ab8: $80
	add  b                                           ; $6ab9: $80

jr_08a_6aba:
	inc  b                                           ; $6aba: $04
	ret  nz                                          ; $6abb: $c0

	ld   b, b                                        ; $6abc: $40
	ld   h, b                                        ; $6abd: $60
	jr   nz, jr_08a_6a80                             ; $6abe: $20 $c0

	sbc  a                                           ; $6ac0: $9f
	nop                                              ; $6ac1: $00
	add  d                                           ; $6ac2: $82
	ld   bc, $0282                                   ; $6ac3: $01 $82 $02
	add  h                                           ; $6ac6: $84
	inc  b                                           ; $6ac7: $04
	ld   [bc], a                                     ; $6ac8: $02
	add  b                                           ; $6ac9: $80
	add  d                                           ; $6aca: $82
	ld   [bc], a                                     ; $6acb: $02
	add  b                                           ; $6acc: $80
	nop                                              ; $6acd: $00
	add  b                                           ; $6ace: $80
	rla                                              ; $6acf: $17
	add  b                                           ; $6ad0: $80
	dec  c                                           ; $6ad1: $0d
	add  b                                           ; $6ad2: $80
	ld   d, $01                                      ; $6ad3: $16 $01
	ccf                                              ; $6ad5: $3f
	jr   nc, jr_08a_6a58                             ; $6ad6: $30 $80

	rra                                              ; $6ad8: $1f
	inc  bc                                          ; $6ad9: $03
	ccf                                              ; $6ada: $3f
	inc  sp                                          ; $6adb: $33
	ld   e, h                                        ; $6adc: $5c
	ld   e, [hl]                                     ; $6add: $5e
	add  b                                           ; $6ade: $80
	sbc  [hl]                                        ; $6adf: $9e
	ld   [$5f5e], sp                                 ; $6ae0: $08 $5e $5f
	xor  a                                           ; $6ae3: $af
	xor  [hl]                                        ; $6ae4: $ae
	ld   e, a                                        ; $6ae5: $5f
	ld   e, h                                        ; $6ae6: $5c
	ld   a, [hl]                                     ; $6ae7: $7e
	add  b                                           ; $6ae8: $80
	db   $fc                                         ; $6ae9: $fc
	add  b                                           ; $6aea: $80
	ld   hl, sp+$07                                  ; $6aeb: $f8 $07
	ldh  a, [$30]                                    ; $6aed: $f0 $30
	ccf                                              ; $6aef: $3f
	rra                                              ; $6af0: $1f
	inc  bc                                          ; $6af1: $03
	ld   l, h                                        ; $6af2: $6c
	ld   c, $86                                      ; $6af3: $0e $86
	add  b                                           ; $6af5: $80
	inc  b                                           ; $6af6: $04
	inc  b                                           ; $6af7: $04
	ld   b, $0e                                      ; $6af8: $06 $0e
	inc  c                                           ; $6afa: $0c
	nop                                              ; $6afb: $00

jr_08a_6afc:
	inc  bc                                          ; $6afc: $03
	add  b                                           ; $6afd: $80
	rra                                              ; $6afe: $1f
	add  c                                           ; $6aff: $81
	nop                                              ; $6b00: $00
	add  b                                           ; $6b01: $80
	ret  nz                                          ; $6b02: $c0

	ld   a, [bc]                                     ; $6b03: $0a
	ldh  [rAUD4LEN], a                               ; $6b04: $e0 $20
	jr   nc, @+$12                                   ; $6b06: $30 $10

	jr   jr_08a_6b12                                 ; $6b08: $18 $08

	inc  c                                           ; $6b0a: $0c
	inc  b                                           ; $6b0b: $04
	ld   b, $02                                      ; $6b0c: $06 $02
	db   $fc                                         ; $6b0e: $fc
	adc  l                                           ; $6b0f: $8d
	nop                                              ; $6b10: $00
	adc  b                                           ; $6b11: $88

jr_08a_6b12:
	inc  b                                           ; $6b12: $04
	add  b                                           ; $6b13: $80
	ld   [bc], a                                     ; $6b14: $02
	add  b                                           ; $6b15: $80
	ld   bc, $0080                                   ; $6b16: $01 $80 $00
	nop                                              ; $6b19: $00
	rrca                                             ; $6b1a: $0f
	add  b                                           ; $6b1b: $80
	ld   a, a                                        ; $6b1c: $7f
	add  b                                           ; $6b1d: $80
	ccf                                              ; $6b1e: $3f
	add  b                                           ; $6b1f: $80
	ld   a, a                                        ; $6b20: $7f
	add  b                                           ; $6b21: $80
	ccf                                              ; $6b22: $3f
	add  c                                           ; $6b23: $81
	ld   a, a                                        ; $6b24: $7f
	inc  bc                                          ; $6b25: $03
	rst  $38                                         ; $6b26: $ff
	cp   a                                           ; $6b27: $bf
	ld   c, a                                        ; $6b28: $4f
	ld   a, a                                        ; $6b29: $7f
	add  b                                           ; $6b2a: $80
	ld   hl, sp+$00                                  ; $6b2b: $f8 $00
	ldh  a, [$81]                                    ; $6b2d: $f0 $81
	pop  af                                          ; $6b2f: $f1
	nop                                              ; $6b30: $00
	pop  hl                                          ; $6b31: $e1
	add  b                                           ; $6b32: $80
	db   $e3                                         ; $6b33: $e3
	ld   bc, $c1e1                                   ; $6b34: $01 $e1 $c1
	add  d                                           ; $6b37: $82
	jp   nz, $c401                                   ; $6b38: $c2 $01 $c4

	inc  b                                           ; $6b3b: $04
	add  b                                           ; $6b3c: $80
	ld   a, [hl-]                                    ; $6b3d: $3a
	add  b                                           ; $6b3e: $80
	ld   b, e                                        ; $6b3f: $43
	add  b                                           ; $6b40: $80
	rra                                              ; $6b41: $1f
	add  b                                           ; $6b42: $80
	sub  d                                           ; $6b43: $92
	add  b                                           ; $6b44: $80
	ld   a, a                                        ; $6b45: $7f
	ld   bc, $847b                                   ; $6b46: $01 $7b $84
	add  c                                           ; $6b49: $81
	rst  $38                                         ; $6b4a: $ff
	inc  bc                                          ; $6b4b: $03
	ld   a, $c2                                      ; $6b4c: $3e $c2
	db   $e3                                         ; $6b4e: $e3
	pop  hl                                          ; $6b4f: $e1
	add  b                                           ; $6b50: $80
	pop  af                                          ; $6b51: $f1
	nop                                              ; $6b52: $00
	ld   sp, hl                                      ; $6b53: $f9
	add  c                                           ; $6b54: $81
	ld   hl, sp+$03                                  ; $6b55: $f8 $03
	db   $fc                                         ; $6b57: $fc
	db   $ec                                         ; $6b58: $ec
	inc  e                                           ; $6b59: $1c
	db   $fc                                         ; $6b5a: $fc
	add  b                                           ; $6b5b: $80
	cp   $00                                         ; $6b5c: $fe $00
	rrca                                             ; $6b5e: $0f
	add  e                                           ; $6b5f: $83
	nop                                              ; $6b60: $00
	add  d                                           ; $6b61: $82
	add  b                                           ; $6b62: $80
	nop                                              ; $6b63: $00
	ret  nz                                          ; $6b64: $c0

	add  e                                           ; $6b65: $83
	ld   b, b                                        ; $6b66: $40
	nop                                              ; $6b67: $00
	add  b                                           ; $6b68: $80
	sbc  l                                           ; $6b69: $9d
	nop                                              ; $6b6a: $00
	nop                                              ; $6b6b: $00
	ld   b, b                                        ; $6b6c: $40

jr_08a_6b6d:
	add  b                                           ; $6b6d: $80
	ld   b, a                                        ; $6b6e: $47
	add  b                                           ; $6b6f: $80
	ld   c, e                                        ; $6b70: $4b
	add  b                                           ; $6b71: $80
	ld   b, e                                        ; $6b72: $43
	add  b                                           ; $6b73: $80
	ld   b, a                                        ; $6b74: $47
	inc  b                                           ; $6b75: $04
	ld   b, c                                        ; $6b76: $41
	ld   hl, $1f27                                   ; $6b77: $21 $27 $1f
	jr   jr_08a_6afc                                 ; $6b7a: $18 $80

	rlca                                             ; $6b7c: $07

jr_08a_6b7d:
	adc  [hl]                                        ; $6b7d: $8e
	rst  $38                                         ; $6b7e: $ff
	nop                                              ; $6b7f: $00
	pop  af                                          ; $6b80: $f1
	add  c                                           ; $6b81: $81
	cp   $86                                         ; $6b82: $fe $86
	rst  $38                                         ; $6b84: $ff
	inc  b                                           ; $6b85: $04
	db   $fc                                         ; $6b86: $fc
	rst  $38                                         ; $6b87: $ff
	ldh  a, [$fc]                                    ; $6b88: $f0 $fc
	ldh  [$85], a                                    ; $6b8a: $e0 $85
	jr   nz, jr_08a_6b91                             ; $6b8c: $20 $03

	nop                                              ; $6b8e: $00
	ld   b, b                                        ; $6b8f: $40
	nop                                              ; $6b90: $00

jr_08a_6b91:
	add  b                                           ; $6b91: $80
	rst  $38                                         ; $6b92: $ff
	nop                                              ; $6b93: $00
	rst  $38                                         ; $6b94: $ff
	nop                                              ; $6b95: $00
	rst  $38                                         ; $6b96: $ff
	nop                                              ; $6b97: $00
	rst  $38                                         ; $6b98: $ff
	nop                                              ; $6b99: $00
	rst  $38                                         ; $6b9a: $ff
	nop                                              ; $6b9b: $00
	rst  $38                                         ; $6b9c: $ff
	nop                                              ; $6b9d: $00
	rst  $38                                         ; $6b9e: $ff
	nop                                              ; $6b9f: $00
	rst  $38                                         ; $6ba0: $ff
	nop                                              ; $6ba1: $00
	rst  $38                                         ; $6ba2: $ff
	nop                                              ; $6ba3: $00
	rst  $38                                         ; $6ba4: $ff
	nop                                              ; $6ba5: $00
	sbc  b                                           ; $6ba6: $98
	nop                                              ; $6ba7: $00
	ld   e, [hl]                                     ; $6ba8: $5e
	nop                                              ; $6ba9: $00
	ld   a, [$8000]                                  ; $6baa: $fa $00 $80
	inc  bc                                          ; $6bad: $03
	add  b                                           ; $6bae: $80
	inc  c                                           ; $6baf: $0c
	add  [hl]                                        ; $6bb0: $86
	nop                                              ; $6bb1: $00
	add  b                                           ; $6bb2: $80
	rra                                              ; $6bb3: $1f
	add  b                                           ; $6bb4: $80
	ldh  [rDIV], a                                   ; $6bb5: $e0 $04
	rra                                              ; $6bb7: $1f
	nop                                              ; $6bb8: $00
	rst  $28                                         ; $6bb9: $ef
	rrca                                             ; $6bba: $0f
	rst  $38                                         ; $6bbb: $ff
	add  l                                           ; $6bbc: $85
	nop                                              ; $6bbd: $00
	add  b                                           ; $6bbe: $80
	ld   hl, sp-$80                                  ; $6bbf: $f8 $80
	rlca                                             ; $6bc1: $07
	ld   [bc], a                                     ; $6bc2: $02
	ldh  [rAUD2LOW], a                               ; $6bc3: $e0 $18
	ld   hl, sp-$80                                  ; $6bc5: $f8 $80
	rst  ToBoot                                         ; $6bc7: $c7
	adc  c                                           ; $6bc8: $89
	nop                                              ; $6bc9: $00
	add  b                                           ; $6bca: $80
	ret  nz                                          ; $6bcb: $c0

	add  b                                           ; $6bcc: $80
	jr   nc, jr_08a_6b6d                             ; $6bcd: $30 $9e

	nop                                              ; $6bcf: $00
	inc  bc                                          ; $6bd0: $03
	inc  de                                          ; $6bd1: $13
	db   $10                                         ; $6bd2: $10
	dec  l                                           ; $6bd3: $2d
	ld   hl, $2380                                   ; $6bd4: $21 $80 $23
	ld   bc, $4757                                   ; $6bd7: $01 $57 $47
	add  b                                           ; $6bda: $80
	ld   c, a                                        ; $6bdb: $4f
	nop                                              ; $6bdc: $00
	xor  [hl]                                        ; $6bdd: $ae
	add  c                                           ; $6bde: $81
	adc  a                                           ; $6bdf: $8f
	add  hl, bc                                      ; $6be0: $09
	sbc  a                                           ; $6be1: $9f
	rst  JumpTable                                         ; $6be2: $df
	pop  af                                          ; $6be3: $f1
	ld   a, a                                        ; $6be4: $7f
	ret  nz                                          ; $6be5: $c0

	ldh  a, [$81]                                    ; $6be6: $f0 $81
	pop  bc                                          ; $6be8: $c1
	ld   b, $86                                      ; $6be9: $06 $86
	add  b                                           ; $6beb: $80
	adc  b                                           ; $6bec: $88
	add  b                                           ; $6bed: $80
	db   $10                                         ; $6bee: $10
	add  b                                           ; $6bef: $80
	ld   de, $2280                                   ; $6bf0: $11 $80 $22
	inc  bc                                          ; $6bf3: $03
	nop                                              ; $6bf4: $00
	add  c                                           ; $6bf5: $81
	ld   b, c                                        ; $6bf6: $41
	ret  nz                                          ; $6bf7: $c0

	add  b                                           ; $6bf8: $80
	ldh  [$80], a                                    ; $6bf9: $e0 $80
	jr   jr_08a_6b7d                                 ; $6bfb: $18 $80

	inc  b                                           ; $6bfd: $04
	add  b                                           ; $6bfe: $80
	ld   a, d                                        ; $6bff: $7a
	add  b                                           ; $6c00: $80
	add  [hl]                                        ; $6c01: $86
	add  b                                           ; $6c02: $80
	ld   bc, $0802                                   ; $6c03: $01 $02 $08
	ret  z                                           ; $6c06: $c8

	call nz, Call_08a_7480                           ; $6c07: $c4 $80 $74
	ld   bc, $3234                                   ; $6c0a: $01 $34 $32
	add  b                                           ; $6c0d: $80
	ld   a, [de]                                     ; $6c0e: $1a
	ld   bc, $090a                                   ; $6c0f: $01 $0a $09
	add  b                                           ; $6c12: $80
	dec  c                                           ; $6c13: $0d
	add  b                                           ; $6c14: $80
	dec  b                                           ; $6c15: $05
	ld   bc, $0607                                   ; $6c16: $01 $07 $06
	sbc  l                                           ; $6c19: $9d
	nop                                              ; $6c1a: $00
	inc  b                                           ; $6c1b: $04
	and  c                                           ; $6c1c: $a1
	rst  JumpTable                                         ; $6c1d: $df

jr_08a_6c1e:
	sbc  a                                           ; $6c1e: $9f
	rst  JumpTable                                         ; $6c1f: $df
	ld   c, [hl]                                     ; $6c20: $4e
	add  b                                           ; $6c21: $80
	ld   c, a                                        ; $6c22: $4f
	ld   a, [bc]                                     ; $6c23: $0a
	ld   l, a                                        ; $6c24: $6f
	daa                                              ; $6c25: $27
	scf                                              ; $6c26: $37
	inc  sp                                          ; $6c27: $33
	ccf                                              ; $6c28: $3f
	jr   jr_08a_6c4a                                 ; $6c29: $18 $1f

	ld   [$270f], sp                                 ; $6c2b: $08 $0f $27
	inc  h                                           ; $6c2e: $24
	add  b                                           ; $6c2f: $80
	db   $e4                                         ; $6c30: $e4
	ld   bc, $28e8                                   ; $6c31: $01 $e8 $28
	add  b                                           ; $6c34: $80
	cp   b                                           ; $6c35: $b8
	ld   bc, $e8d8                                   ; $6c36: $01 $d8 $e8
	add  b                                           ; $6c39: $80
	ld   hl, sp-$80                                  ; $6c3a: $f8 $80
	rst  $38                                         ; $6c3c: $ff
	ld   [bc], a                                     ; $6c3d: $02
	rla                                              ; $6c3e: $17
	ld   hl, sp+$1f                                  ; $6c3f: $f8 $1f
	add  l                                           ; $6c41: $85
	nop                                              ; $6c42: $00
	add  b                                           ; $6c43: $80
	rlca                                             ; $6c44: $07
	add  hl, bc                                      ; $6c45: $09
	ld   a, a                                        ; $6c46: $7f
	ld   a, b                                        ; $6c47: $78
	rst  $38                                         ; $6c48: $ff
	add  a                                           ; $6c49: $87

jr_08a_6c4a:
	ld   hl, sp+$7f                                  ; $6c4a: $f8 $7f
	ld   a, c                                        ; $6c4c: $79
	add  a                                           ; $6c4d: $87
	add  l                                           ; $6c4e: $85
	add  a                                           ; $6c4f: $87
	add  b                                           ; $6c50: $80
	add  [hl]                                        ; $6c51: $86
	ld   a, [bc]                                     ; $6c52: $0a
	add  d                                           ; $6c53: $82
	adc  [hl]                                        ; $6c54: $8e
	add  h                                           ; $6c55: $84
	db   $fc                                         ; $6c56: $fc
	call z, $387c                                    ; $6c57: $cc $7c $38
	ret  c                                           ; $6c5a: $d8

	ret  nc                                          ; $6c5b: $d0

	jr   nc, jr_08a_6c1e                             ; $6c5c: $30 $c0

	sbc  l                                           ; $6c5e: $9d
	nop                                              ; $6c5f: $00
	add  b                                           ; $6c60: $80
	inc  bc                                          ; $6c61: $03
	adc  h                                           ; $6c62: $8c
	nop                                              ; $6c63: $00
	nop                                              ; $6c64: $00
	rst  $38                                         ; $6c65: $ff
	add  b                                           ; $6c66: $80
	rra                                              ; $6c67: $1f
	ld   [bc], a                                     ; $6c68: $02
	ldh  [rP1], a                                    ; $6c69: $e0 $00
	rra                                              ; $6c6b: $1f
	adc  b                                           ; $6c6c: $88
	nop                                              ; $6c6d: $00
	nop                                              ; $6c6e: $00
	rst  $38                                         ; $6c6f: $ff
	add  b                                           ; $6c70: $80
	ld   hl, sp+$02                                  ; $6c71: $f8 $02
	rlca                                             ; $6c73: $07
	nop                                              ; $6c74: $00
	ld   hl, sp-$78                                  ; $6c75: $f8 $88
	nop                                              ; $6c77: $00
	add  b                                           ; $6c78: $80
	ret  nz                                          ; $6c79: $c0

	rst  $38                                         ; $6c7a: $ff
	nop                                              ; $6c7b: $00
	rst  $38                                         ; $6c7c: $ff
	nop                                              ; $6c7d: $00
	db   $fc                                         ; $6c7e: $fc
	nop                                              ; $6c7f: $00

jr_08a_6c80:
	add  b                                           ; $6c80: $80
	rlca                                             ; $6c81: $07
	add  b                                           ; $6c82: $80
	ld   c, $0b                                      ; $6c83: $0e $0b
	jr   nc, jr_08a_6cbf                             ; $6c85: $30 $38

	ld   l, c                                        ; $6c87: $69
	ld   [hl], c                                     ; $6c88: $71
	sub  $e7                                         ; $6c89: $d6 $e7
	db   $ed                                         ; $6c8b: $ed
	xor  $fa                                         ; $6c8c: $ee $fa
	call c, $d9dd                                    ; $6c8e: $dc $dd $d9
	add  b                                           ; $6c91: $80
	dec  de                                          ; $6c92: $1b
	ld   bc, $1716                                   ; $6c93: $01 $16 $17
	add  h                                           ; $6c96: $84
	rlca                                             ; $6c97: $07
	nop                                              ; $6c98: $00
	ld   bc, $0087                                   ; $6c99: $01 $87 $00
	add  b                                           ; $6c9c: $80
	ldh  [$80], a                                    ; $6c9d: $e0 $80
	ld   hl, sp+$08                                  ; $6c9f: $f8 $08
	inc  b                                           ; $6ca1: $04
	add  h                                           ; $6ca2: $84
	cp   b                                           ; $6ca3: $b8
	jr   c, @+$7a                                    ; $6ca4: $38 $78

	ld   a, [hl]                                     ; $6ca6: $7e
	add  [hl]                                        ; $6ca7: $86
	rst  $38                                         ; $6ca8: $ff
	ld   a, a                                        ; $6ca9: $7f
	add  h                                           ; $6caa: $84
	rst  $38                                         ; $6cab: $ff
	add  b                                           ; $6cac: $80
	ld   hl, sp-$80                                  ; $6cad: $f8 $80
	add  b                                           ; $6caf: $80
	rst  $38                                         ; $6cb0: $ff
	nop                                              ; $6cb1: $00
	rst  $38                                         ; $6cb2: $ff
	nop                                              ; $6cb3: $00
	rst  $38                                         ; $6cb4: $ff
	nop                                              ; $6cb5: $00
	rst  $38                                         ; $6cb6: $ff
	nop                                              ; $6cb7: $00
	rst  $38                                         ; $6cb8: $ff
	nop                                              ; $6cb9: $00
	rst  $38                                         ; $6cba: $ff
	nop                                              ; $6cbb: $00
	ei                                               ; $6cbc: $fb
	nop                                              ; $6cbd: $00
	ld   l, a                                        ; $6cbe: $6f

jr_08a_6cbf:
	nop                                              ; $6cbf: $00
	add  sp, $00                                     ; $6cc0: $e8 $00
	add  b                                           ; $6cc2: $80
	ld   bc, $0282                                   ; $6cc3: $01 $82 $02
	add  b                                           ; $6cc6: $80
	nop                                              ; $6cc7: $00
	add  b                                           ; $6cc8: $80
	rlca                                             ; $6cc9: $07
	add  b                                           ; $6cca: $80
	jr   jr_08a_6cd1                                 ; $6ccb: $18 $04

	ld   h, b                                        ; $6ccd: $60
	ld   h, a                                        ; $6cce: $67
	add  a                                           ; $6ccf: $87
	sbc  a                                           ; $6cd0: $9f

jr_08a_6cd1:
	rra                                              ; $6cd1: $1f
	add  b                                           ; $6cd2: $80
	ld   a, a                                        ; $6cd3: $7f
	add  c                                           ; $6cd4: $81
	rst  $38                                         ; $6cd5: $ff
	ld   bc, $7f80                                   ; $6cd6: $01 $80 $7f
	add  b                                           ; $6cd9: $80
	add  b                                           ; $6cda: $80
	nop                                              ; $6cdb: $00
	nop                                              ; $6cdc: $00
	add  b                                           ; $6cdd: $80
	ld   a, a                                        ; $6cde: $7f
	add  h                                           ; $6cdf: $84
	rst  $38                                         ; $6ce0: $ff
	add  b                                           ; $6ce1: $80
	cp   $02                                         ; $6ce2: $fe $02
	ld   hl, sp+$06                                  ; $6ce4: $f8 $06
	cp   $80                                         ; $6ce6: $fe $80
	ld   bc, $0000                                   ; $6ce8: $01 $00 $00
	add  b                                           ; $6ceb: $80
	cp   $80                                         ; $6cec: $fe $80
	rst  $38                                         ; $6cee: $ff
	add  b                                           ; $6cef: $80
	ld   hl, sp-$80                                  ; $6cf0: $f8 $80
	add  b                                           ; $6cf2: $80
	add  e                                           ; $6cf3: $83
	nop                                              ; $6cf4: $00
	add  b                                           ; $6cf5: $80
	ret  nz                                          ; $6cf6: $c0

	add  b                                           ; $6cf7: $80
	jr   c, jr_08a_6cfe                              ; $6cf8: $38 $04

	ld   b, $c6                                      ; $6cfa: $06 $c6
	pop  bc                                          ; $6cfc: $c1
	add  hl, sp                                      ; $6cfd: $39

jr_08a_6cfe:
	jr   c, jr_08a_6c80                              ; $6cfe: $38 $80

Jump_08a_6d00:
	ld   b, $80                                      ; $6d00: $06 $80
	ld   bc, $0089                                   ; $6d02: $01 $89 $00
	add  b                                           ; $6d05: $80
	add  b                                           ; $6d06: $80
	add  d                                           ; $6d07: $82
	ld   b, b                                        ; $6d08: $40
	inc  bc                                          ; $6d09: $03
	inc  b                                           ; $6d0a: $04
	dec  b                                           ; $6d0b: $05
	inc  b                                           ; $6d0c: $04
	dec  b                                           ; $6d0d: $05
	add  b                                           ; $6d0e: $80
	inc  b                                           ; $6d0f: $04
	nop                                              ; $6d10: $00
	ld   [bc], a                                     ; $6d11: $02
	add  b                                           ; $6d12: $80
	inc  bc                                          ; $6d13: $03
	nop                                              ; $6d14: $00
	ld   [bc], a                                     ; $6d15: $02
	add  h                                           ; $6d16: $84
	ld   bc, $0000                                   ; $6d17: $01 $00 $00
	add  c                                           ; $6d1a: $81
	rst  $38                                         ; $6d1b: $ff
	ld   [$ff7f], sp                                 ; $6d1c: $08 $7f $ff
	rra                                              ; $6d1f: $1f
	ld   a, a                                        ; $6d20: $7f

jr_08a_6d21:
	inc  bc                                          ; $6d21: $03
	sbc  a                                           ; $6d22: $9f
	add  b                                           ; $6d23: $80
	ld   h, e                                        ; $6d24: $63
	ld   h, b                                        ; $6d25: $60
	add  b                                           ; $6d26: $80
	inc  c                                           ; $6d27: $0c
	add  b                                           ; $6d28: $80
	inc  bc                                          ; $6d29: $03
	add  b                                           ; $6d2a: $80
	ldh  [$80], a                                    ; $6d2b: $e0 $80
	ret  nz                                          ; $6d2d: $c0

	add  b                                           ; $6d2e: $80
	add  b                                           ; $6d2f: $80
	add  c                                           ; $6d30: $81
	nop                                              ; $6d31: $00
	add  b                                           ; $6d32: $80
	ret  nz                                          ; $6d33: $c0

	add  b                                           ; $6d34: $80
	ccf                                              ; $6d35: $3f
	nop                                              ; $6d36: $00
	nop                                              ; $6d37: $00
	add  b                                           ; $6d38: $80
	ret  nz                                          ; $6d39: $c0

	add  a                                           ; $6d3a: $87
	nop                                              ; $6d3b: $00
	add  b                                           ; $6d3c: $80
	inc  bc                                          ; $6d3d: $03
	add  b                                           ; $6d3e: $80
	db   $fc                                         ; $6d3f: $fc
	nop                                              ; $6d40: $00
	nop                                              ; $6d41: $00
	add  b                                           ; $6d42: $80
	inc  bc                                          ; $6d43: $03
	add  c                                           ; $6d44: $81
	nop                                              ; $6d45: $00
	add  b                                           ; $6d46: $80
	ld   bc, $0680                                   ; $6d47: $01 $80 $06
	inc  b                                           ; $6d4a: $04
	jr   c, jr_08a_6d86                              ; $6d4b: $38 $39

	pop  bc                                          ; $6d4d: $c1
	rst  ToBoot                                         ; $6d4e: $c7
	rlca                                             ; $6d4f: $07
	add  b                                           ; $6d50: $80
	ccf                                              ; $6d51: $3f
	ld   [bc], a                                     ; $6d52: $02
	rst  $38                                         ; $6d53: $ff
	rst  JumpTable                                         ; $6d54: $df
	jr   nz, @-$7e                                   ; $6d55: $20 $80

	and  b                                           ; $6d57: $a0
	add  b                                           ; $6d58: $80
	jr   nz, jr_08a_6d5b                             ; $6d59: $20 $00

jr_08a_6d5b:
	ld   b, b                                        ; $6d5b: $40
	add  c                                           ; $6d5c: $81
	ret  nz                                          ; $6d5d: $c0

	nop                                              ; $6d5e: $00
	nop                                              ; $6d5f: $00
	add  e                                           ; $6d60: $83
	add  b                                           ; $6d61: $80
	add  b                                           ; $6d62: $80
	ld   bc, $008e                                   ; $6d63: $01 $8e $00
	add  h                                           ; $6d66: $84
	add  b                                           ; $6d67: $80
	add  d                                           ; $6d68: $82
	ld   b, b                                        ; $6d69: $40
	add  d                                           ; $6d6a: $82
	jr   nz, jr_08a_6d6d                             ; $6d6b: $20 $00

jr_08a_6d6d:
	nop                                              ; $6d6d: $00
	add  b                                           ; $6d6e: $80
	ccf                                              ; $6d6f: $3f
	adc  h                                           ; $6d70: $8c
	nop                                              ; $6d71: $00
	add  b                                           ; $6d72: $80
	rst  $38                                         ; $6d73: $ff
	add  b                                           ; $6d74: $80
	rra                                              ; $6d75: $1f
	add  b                                           ; $6d76: $80
	rrca                                             ; $6d77: $0f
	adc  b                                           ; $6d78: $88
	rlca                                             ; $6d79: $07
	ld   bc, $feff                                   ; $6d7a: $01 $ff $fe
	add  e                                           ; $6d7d: $83
	rst  $38                                         ; $6d7e: $ff
	nop                                              ; $6d7f: $00

Jump_08a_6d80:
	db   $fc                                         ; $6d80: $fc
	add  c                                           ; $6d81: $81
	cp   $00                                         ; $6d82: $fe $00
	ld   hl, sp-$7f                                  ; $6d84: $f8 $81

jr_08a_6d86:
	db   $fc                                         ; $6d86: $fc
	ld   bc, $8078                                   ; $6d87: $01 $78 $80
	sbc  h                                           ; $6d8a: $9c
	nop                                              ; $6d8b: $00
	add  b                                           ; $6d8c: $80
	db   $10                                         ; $6d8d: $10
	add  b                                           ; $6d8e: $80
	ld   [$0480], sp                                 ; $6d8f: $08 $80 $04
	add  b                                           ; $6d92: $80
	inc  bc                                          ; $6d93: $03
	adc  [hl]                                        ; $6d94: $8e
	nop                                              ; $6d95: $00
	add  b                                           ; $6d96: $80
	ret  nz                                          ; $6d97: $c0

	dec  b                                           ; $6d98: $05
	ld   a, b                                        ; $6d99: $78
	ld   a, c                                        ; $6d9a: $79
	ld   a, [hl]                                     ; $6d9b: $7e
	ld   h, a                                        ; $6d9c: $67
	daa                                              ; $6d9d: $27
	jr   c, jr_08a_6d21                              ; $6d9e: $38 $81

	rlca                                             ; $6da0: $07
	add  d                                           ; $6da1: $82

jr_08a_6da2:
	rrca                                             ; $6da2: $0f
	db   $10                                         ; $6da3: $10
	rra                                              ; $6da4: $1f

jr_08a_6da5:
	inc  e                                           ; $6da5: $1c
	ccf                                              ; $6da6: $3f
	ld   [hl+], a                                    ; $6da7: $22
	cp   $1e                                         ; $6da8: $fe $1e
	and  $e4                                         ; $6daa: $e6 $e4
	inc  e                                           ; $6dac: $1c
	add  sp, -$08                                    ; $6dad: $e8 $f8
	ldh  [$f0], a                                    ; $6daf: $e0 $f0
	ret  nz                                          ; $6db1: $c0

	ldh  [rP1], a                                    ; $6db2: $e0 $00
	ret  nz                                          ; $6db4: $c0

	or   [hl]                                        ; $6db5: $b6
	nop                                              ; $6db6: $00
	add  b                                           ; $6db7: $80
	rrca                                             ; $6db8: $0f
	adc  h                                           ; $6db9: $8c
	nop                                              ; $6dba: $00
	add  b                                           ; $6dbb: $80
	ldh  a, [rIE]                                    ; $6dbc: $f0 $ff
	nop                                              ; $6dbe: $00
	rst  $38                                         ; $6dbf: $ff
	nop                                              ; $6dc0: $00
	rst  $38                                         ; $6dc1: $ff
	nop                                              ; $6dc2: $00
	rst  $38                                         ; $6dc3: $ff
	nop                                              ; $6dc4: $00
	rst  $38                                         ; $6dc5: $ff
	nop                                              ; $6dc6: $00
	rst  $38                                         ; $6dc7: $ff
	nop                                              ; $6dc8: $00
	rst  $38                                         ; $6dc9: $ff
	nop                                              ; $6dca: $00
	rst  $38                                         ; $6dcb: $ff
	nop                                              ; $6dcc: $00
	rst  $38                                         ; $6dcd: $ff
	nop                                              ; $6dce: $00
	db   $e3                                         ; $6dcf: $e3
	nop                                              ; $6dd0: $00
	ld   h, c                                        ; $6dd1: $61
	nop                                              ; $6dd2: $00
	xor  d                                           ; $6dd3: $aa
	nop                                              ; $6dd4: $00
	add  b                                           ; $6dd5: $80
	inc  bc                                          ; $6dd6: $03
	add  b                                           ; $6dd7: $80
	inc  c                                           ; $6dd8: $0c
	adc  b                                           ; $6dd9: $88
	nop                                              ; $6dda: $00
	add  b                                           ; $6ddb: $80
	ld   a, b                                        ; $6ddc: $78
	add  b                                           ; $6ddd: $80
	add  $80                                         ; $6dde: $c6 $80
	ld   hl, sp-$46                                  ; $6de0: $f8 $ba
	nop                                              ; $6de2: $00
	add  b                                           ; $6de3: $80
	ld   bc, $0280                                   ; $6de4: $01 $80 $02
	add  b                                           ; $6de7: $80
	add  hl, bc                                      ; $6de8: $09
	add  [hl]                                        ; $6de9: $86
	db   $10                                         ; $6dea: $10
	add  b                                           ; $6deb: $80
	ld   a, b                                        ; $6dec: $78
	dec  b                                           ; $6ded: $05
	add  a                                           ; $6dee: $87
	adc  a                                           ; $6def: $8f
	add  hl, bc                                      ; $6df0: $09
	ld   [bc], a                                     ; $6df1: $02
	inc  de                                          ; $6df2: $13
	db   $10                                         ; $6df3: $10
	add  h                                           ; $6df4: $84
	ld   [$1880], sp                                 ; $6df5: $08 $80 $18
	add  b                                           ; $6df8: $80
	ld   a, $04                                      ; $6df9: $3e $04
	pop  af                                          ; $6dfb: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dfc: $cf
	cp   $38                                         ; $6dfd: $fe $38
	ld   hl, sp-$77                                  ; $6dff: $f8 $89
	nop                                              ; $6e01: $00
	add  b                                           ; $6e02: $80
	add  b                                           ; $6e03: $80
	add  b                                           ; $6e04: $80
	ld   b, b                                        ; $6e05: $40
	sbc  [hl]                                        ; $6e06: $9e
	nop                                              ; $6e07: $00
	add  b                                           ; $6e08: $80
	inc  b                                           ; $6e09: $04
	add  d                                           ; $6e0a: $82
	ld   [$1083], sp                                 ; $6e0b: $08 $83 $10
	ld   bc, $1018                                   ; $6e0e: $01 $18 $10
	add  b                                           ; $6e11: $80
	inc  e                                           ; $6e12: $1c
	ld   bc, $071f                                   ; $6e13: $01 $1f $07
	sbc  h                                           ; $6e16: $9c
	nop                                              ; $6e17: $00
	inc  bc                                          ; $6e18: $03
	inc  bc                                          ; $6e19: $03
	inc  hl                                          ; $6e1a: $23
	jr   nz, jr_08a_6e2d                             ; $6e1b: $20 $10

	add  c                                           ; $6e1d: $81
	jr   nc, jr_08a_6e20                             ; $6e1e: $30 $00

jr_08a_6e20:
	jr   z, jr_08a_6da2                              ; $6e20: $28 $80

	jr   c, jr_08a_6da5                              ; $6e22: $38 $81

	ld   a, b                                        ; $6e24: $78
	nop                                              ; $6e25: $00
	ld   l, b                                        ; $6e26: $68
	add  c                                           ; $6e27: $81
	ld   hl, sp+$00                                  ; $6e28: $f8 $00
	ldh  [$9d], a                                    ; $6e2a: $e0 $9d
	nop                                              ; $6e2c: $00

jr_08a_6e2d:
	dec  b                                           ; $6e2d: $05
	inc  l                                           ; $6e2e: $2c
	cpl                                              ; $6e2f: $2f
	ld   b, b                                        ; $6e30: $40
	ld   b, a                                        ; $6e31: $47
	ld   b, h                                        ; $6e32: $44
	ld   b, b                                        ; $6e33: $40
	adc  b                                           ; $6e34: $88
	add  b                                           ; $6e35: $80
	ld   [$e000], sp                                 ; $6e36: $08 $00 $e0
	jr   nz, @+$01                                   ; $6e39: $20 $ff

	ld   b, b                                        ; $6e3b: $40
	cp   a                                           ; $6e3c: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e3d: $cf
	db   $10                                         ; $6e3e: $10
	rra                                              ; $6e3f: $1f
	add  b                                           ; $6e40: $80
	ld   bc, $0084                                   ; $6e41: $01 $84 $00
	rlca                                             ; $6e44: $07
	rra                                              ; $6e45: $1f
	ld   e, $ff                                      ; $6e46: $1e $ff
	ld   bc, $fdfe                                   ; $6e48: $01 $fe $fd
	inc  bc                                          ; $6e4b: $03
	rst  $38                                         ; $6e4c: $ff
	add  b                                           ; $6e4d: $80
	cp   $83                                         ; $6e4e: $fe $83
	nop                                              ; $6e50: $00
	ld   b, $34                                      ; $6e51: $06 $34
	db   $fc                                         ; $6e53: $fc
	ld   a, [hl+]                                    ; $6e54: $2a
	sbc  $be                                         ; $6e55: $de $be
	ld   [hl], d                                     ; $6e57: $72
	pop  af                                          ; $6e58: $f1
	add  b                                           ; $6e59: $80
	jp   $0382                                       ; $6e5a: $c3 $82 $03


	add  c                                           ; $6e5d: $81
	rlca                                             ; $6e5e: $07
	nop                                              ; $6e5f: $00
	ld   b, $9d                                      ; $6e60: $06 $9d
	nop                                              ; $6e62: $00

jr_08a_6e63:
	nop                                              ; $6e63: $00
	add  b                                           ; $6e64: $80
	add  b                                           ; $6e65: $80
	ret  nz                                          ; $6e66: $c0

	ld   bc, $20e0                                   ; $6e67: $01 $e0 $20
	add  b                                           ; $6e6a: $80
	ld   [hl], b                                     ; $6e6b: $70
	ld   [$1c7c], sp                                 ; $6e6c: $08 $7c $1c
	ccf                                              ; $6e6f: $3f
	rlca                                             ; $6e70: $07
	rra                                              ; $6e71: $1f
	ld   bc, $0007                                   ; $6e72: $01 $07 $00
	ld   bc, $0087                                   ; $6e75: $01 $87 $00
	add  b                                           ; $6e78: $80
	add  b                                           ; $6e79: $80
	add  c                                           ; $6e7a: $81
	rst  $38                                         ; $6e7b: $ff
	ld   [bc], a                                     ; $6e7c: $02
	ccf                                              ; $6e7d: $3f
	rst  $38                                         ; $6e7e: $ff
	ccf                                              ; $6e7f: $3f
	add  [hl]                                        ; $6e80: $86
	nop                                              ; $6e81: $00
	add  b                                           ; $6e82: $80

jr_08a_6e83:
	rrca                                             ; $6e83: $0f
	add  c                                           ; $6e84: $81
	rst  $38                                         ; $6e85: $ff
	ld   [bc], a                                     ; $6e86: $02
	db   $fc                                         ; $6e87: $fc
	rst  $38                                         ; $6e88: $ff
	db   $fd                                         ; $6e89: $fd
	add  b                                           ; $6e8a: $80
	rrca                                             ; $6e8b: $0f
	ld   bc, $1c1f                                   ; $6e8c: $01 $1f $1c
	add  b                                           ; $6e8f: $80
	ld   a, $08                                      ; $6e90: $3e $08
	cp   $f8                                         ; $6e92: $fe $f8
	db   $fc                                         ; $6e94: $fc
	ldh  [$f8], a                                    ; $6e95: $e0 $f8
	add  b                                           ; $6e97: $80
	ldh  [rP1], a                                    ; $6e98: $e0 $00
	add  b                                           ; $6e9a: $80
	xor  [hl]                                        ; $6e9b: $ae
	nop                                              ; $6e9c: $00
	add  b                                           ; $6e9d: $80
	ccf                                              ; $6e9e: $3f
	adc  h                                           ; $6e9f: $8c
	nop                                              ; $6ea0: $00
	add  b                                           ; $6ea1: $80
	db   $fc                                         ; $6ea2: $fc
	ld   a, [$8000]                                  ; $6ea3: $fa $00 $80
	inc  bc                                          ; $6ea6: $03
	add  b                                           ; $6ea7: $80
	nop                                              ; $6ea8: $00
	add  b                                           ; $6ea9: $80
	add  hl, bc                                      ; $6eaa: $09
	add  d                                           ; $6eab: $82
	rrca                                             ; $6eac: $0f
	ld   [bc], a                                     ; $6ead: $02
	rlca                                             ; $6eae: $07
	rrca                                             ; $6eaf: $0f
	ld   [$0780], sp                                 ; $6eb0: $08 $80 $07
	adc  l                                           ; $6eb3: $8d
	nop                                              ; $6eb4: $00
	ld   [bc], a                                     ; $6eb5: $02
	jr   c, jr_08a_6eb8                              ; $6eb6: $38 $00

jr_08a_6eb8:
	jr   c, @-$7e                                    ; $6eb8: $38 $80

	nop                                              ; $6eba: $00
	ld   bc, $00e0                                   ; $6ebb: $01 $e0 $00
	add  c                                           ; $6ebe: $81
	ldh  a, [rSC]                                    ; $6ebf: $f0 $02
	ret  nc                                          ; $6ec1: $d0

	ldh  a, [$30]                                    ; $6ec2: $f0 $30
	add  b                                           ; $6ec4: $80
	ldh  [$80], a                                    ; $6ec5: $e0 $80
	ret  nz                                          ; $6ec7: $c0

	rst  $38                                         ; $6ec8: $ff
	nop                                              ; $6ec9: $00
	rst  $38                                         ; $6eca: $ff
	nop                                              ; $6ecb: $00
	rst  $38                                         ; $6ecc: $ff
	nop                                              ; $6ecd: $00
	rst  $38                                         ; $6ece: $ff
	nop                                              ; $6ecf: $00
	rst  $38                                         ; $6ed0: $ff
	nop                                              ; $6ed1: $00
	rst  $38                                         ; $6ed2: $ff
	nop                                              ; $6ed3: $00
	rst  $38                                         ; $6ed4: $ff
	nop                                              ; $6ed5: $00
	rst  $38                                         ; $6ed6: $ff
	nop                                              ; $6ed7: $00
	cp   c                                           ; $6ed8: $b9
	nop                                              ; $6ed9: $00
	ld   l, l                                        ; $6eda: $6d
	nop                                              ; $6edb: $00
	xor  b                                           ; $6edc: $a8
	nop                                              ; $6edd: $00
	add  b                                           ; $6ede: $80
	rlca                                             ; $6edf: $07
	add  b                                           ; $6ee0: $80
	jr   jr_08a_6e63                                 ; $6ee1: $18 $80

	ld   h, b                                        ; $6ee3: $60
	adc  b                                           ; $6ee4: $88
	nop                                              ; $6ee5: $00
	add  b                                           ; $6ee6: $80
	rst  $38                                         ; $6ee7: $ff
	adc  h                                           ; $6ee8: $8c
	nop                                              ; $6ee9: $00
	add  b                                           ; $6eea: $80

jr_08a_6eeb:
	add  b                                           ; $6eeb: $80
	add  b                                           ; $6eec: $80
	ld   h, b                                        ; $6eed: $60
	add  b                                           ; $6eee: $80
	jr   @-$56                                       ; $6eef: $18 $a8

	nop                                              ; $6ef1: $00
	add  d                                           ; $6ef2: $82
	ld   bc, $0280                                   ; $6ef3: $01 $80 $02
	add  b                                           ; $6ef6: $80
	ld   b, b                                        ; $6ef7: $40
	add  b                                           ; $6ef8: $80
	ret  nz                                          ; $6ef9: $c0

	add  b                                           ; $6efa: $80
	or   b                                           ; $6efb: $b0
	add  b                                           ; $6efc: $80
	adc  a                                           ; $6efd: $8f
	add  b                                           ; $6efe: $80
	ret  nz                                          ; $6eff: $c0

	add  b                                           ; $6f00: $80
	jr   c, jr_08a_6e83                              ; $6f01: $38 $80

	rlca                                             ; $6f03: $07
	nop                                              ; $6f04: $00
	nop                                              ; $6f05: $00
	add  b                                           ; $6f06: $80
	ld   bc, $0083                                   ; $6f07: $01 $83 $00
	add  b                                           ; $6f0a: $80
	rst  $38                                         ; $6f0b: $ff
	nop                                              ; $6f0c: $00
	nop                                              ; $6f0d: $00
	add  b                                           ; $6f0e: $80
	rlca                                             ; $6f0f: $07
	ld   b, $01                                      ; $6f10: $06 $01
	cp   $ff                                         ; $6f12: $fe $ff
	nop                                              ; $6f14: $00
	rst  $38                                         ; $6f15: $ff
	rst  $30                                         ; $6f16: $f7
	ld   [$0c80], sp                                 ; $6f17: $08 $80 $0c
	inc  c                                           ; $6f1a: $0c
	inc  [hl]                                        ; $6f1b: $34
	inc  a                                           ; $6f1c: $3c
	call z, $34fc                                    ; $6f1d: $cc $fc $34
	db   $fc                                         ; $6f20: $fc
	add  d                                           ; $6f21: $82
	cp   $0e                                         ; $6f22: $fe $0e
	cp   $7d                                         ; $6f24: $fe $7d
	rst  $38                                         ; $6f26: $ff

jr_08a_6f27:
	cp   $95                                         ; $6f27: $fe $95
	nop                                              ; $6f29: $00
	add  b                                           ; $6f2a: $80
	inc  bc                                          ; $6f2b: $03
	add  b                                           ; $6f2c: $80
	rlca                                             ; $6f2d: $07
	add  b                                           ; $6f2e: $80
	ld   b, $80                                      ; $6f2f: $06 $80
	ld   bc, $0282                                   ; $6f31: $01 $82 $02
	add  d                                           ; $6f34: $82
	inc  b                                           ; $6f35: $04
	add  b                                           ; $6f36: $80
	db   $f4                                         ; $6f37: $f4
	add  b                                           ; $6f38: $80
	adc  h                                           ; $6f39: $8c
	add  b                                           ; $6f3a: $80
	inc  bc                                          ; $6f3b: $03

jr_08a_6f3c:
	ld   [bc], a                                     ; $6f3c: $02
	pop  bc                                          ; $6f3d: $c1
	add  c                                           ; $6f3e: $81
	ld   b, b                                        ; $6f3f: $40
	adc  e                                           ; $6f40: $8b
	nop                                              ; $6f41: $00
	add  b                                           ; $6f42: $80
	add  b                                           ; $6f43: $80
	nop                                              ; $6f44: $00
	nop                                              ; $6f45: $00
	add  b                                           ; $6f46: $80
	inc  bc                                          ; $6f47: $03
	adc  e                                           ; $6f48: $8b
	nop                                              ; $6f49: $00
	nop                                              ; $6f4a: $00
	ld   bc, $ff81                                   ; $6f4b: $01 $81 $ff
	nop                                              ; $6f4e: $00
	cp   $80                                         ; $6f4f: $fe $80
	rst  $38                                         ; $6f51: $ff
	add  [hl]                                        ; $6f52: $86
	ld   a, a                                        ; $6f53: $7f
	add  b                                           ; $6f54: $80
	ccf                                              ; $6f55: $3f
	add  c                                           ; $6f56: $81
	nop                                              ; $6f57: $00
	add  h                                           ; $6f58: $84
	add  b                                           ; $6f59: $80
	nop                                              ; $6f5a: $00
	ld   b, b                                        ; $6f5b: $40
	add  e                                           ; $6f5c: $83
	ret  nz                                          ; $6f5d: $c0

	nop                                              ; $6f5e: $00
	add  b                                           ; $6f5f: $80
	adc  l                                           ; $6f60: $8d
	nop                                              ; $6f61: $00
	ld   [bc], a                                     ; $6f62: $02
	ld   h, b                                        ; $6f63: $60
	ld   b, b                                        ; $6f64: $40
	nop                                              ; $6f65: $00
	add  d                                           ; $6f66: $82
	jr   nc, jr_08a_6eeb                             ; $6f67: $30 $82

	jr   c, jr_08a_6f6c                              ; $6f69: $38 $01

	inc  a                                           ; $6f6b: $3c

jr_08a_6f6c:
	inc  c                                           ; $6f6c: $0c
	add  c                                           ; $6f6d: $81
	rra                                              ; $6f6e: $1f
	nop                                              ; $6f6f: $00
	rrca                                             ; $6f70: $0f
	adc  d                                           ; $6f71: $8a
	nop                                              ; $6f72: $00
	add  d                                           ; $6f73: $82
	add  b                                           ; $6f74: $80
	adc  [hl]                                        ; $6f75: $8e
	nop                                              ; $6f76: $00
	adc  l                                           ; $6f77: $8d
	ccf                                              ; $6f78: $3f
	nop                                              ; $6f79: $00
	ld   a, a                                        ; $6f7a: $7f
	adc  e                                           ; $6f7b: $8b
	ret  nz                                          ; $6f7c: $c0

	ld   bc, $8000                                   ; $6f7d: $01 $00 $80
	adc  [hl]                                        ; $6f80: $8e
	nop                                              ; $6f81: $00
	inc  b                                           ; $6f82: $04
	ld   [$000f], sp                                 ; $6f83: $08 $0f $00
	rlca                                             ; $6f86: $07
	ld   [bc], a                                     ; $6f87: $02
	add  c                                           ; $6f88: $81
	inc  bc                                          ; $6f89: $03
	nop                                              ; $6f8a: $00
	nop                                              ; $6f8b: $00
	add  c                                           ; $6f8c: $81
	ld   bc, $0082                                   ; $6f8d: $01 $82 $00
	add  b                                           ; $6f90: $80
	add  b                                           ; $6f91: $80
	nop                                              ; $6f92: $00
	nop                                              ; $6f93: $00
	add  h                                           ; $6f94: $84
	add  b                                           ; $6f95: $80
	add  c                                           ; $6f96: $81
	ret  nz                                          ; $6f97: $c0

	inc  b                                           ; $6f98: $04
	ld   b, b                                        ; $6f99: $40

jr_08a_6f9a:
	ldh  [rAUD4LEN], a                               ; $6f9a: $e0 $20

jr_08a_6f9c:
	ld   h, b                                        ; $6f9c: $60
	jr   nz, jr_08a_6f27                             ; $6f9d: $20 $88

	nop                                              ; $6f9f: $00
	add  d                                           ; $6fa0: $82
	ld   bc, $0380                                   ; $6fa1: $01 $80 $03
	add  c                                           ; $6fa4: $81
	ld   a, a                                        ; $6fa5: $7f
	nop                                              ; $6fa6: $00
	ld   a, [hl]                                     ; $6fa7: $7e
	add  b                                           ; $6fa8: $80
	ld   a, a                                        ; $6fa9: $7f
	ld   bc, $fcff                                   ; $6faa: $01 $ff $fc
	add  c                                           ; $6fad: $81
	cp   $04                                         ; $6fae: $fe $04
	ld   hl, sp-$04                                  ; $6fb0: $f8 $fc
	ldh  a, [$f8]                                    ; $6fb2: $f0 $f8
	ld   [hl], b                                     ; $6fb4: $70
	add  c                                           ; $6fb5: $81
	add  b                                           ; $6fb6: $80
	xor  d                                           ; $6fb7: $aa
	nop                                              ; $6fb8: $00
	add  b                                           ; $6fb9: $80
	jr   nc, jr_08a_6f3c                             ; $6fba: $30 $80

jr_08a_6fbc:
	ld   c, $80                                      ; $6fbc: $0e $80
	ld   bc, $0089                                   ; $6fbe: $01 $89 $00
	inc  b                                           ; $6fc1: $04
	rlca                                             ; $6fc2: $07
	ld   b, $3f                                      ; $6fc3: $06 $3f
	ret  nz                                          ; $6fc5: $c0

	cp   $88                                         ; $6fc6: $fe $88
	nop                                              ; $6fc8: $00
	inc  bc                                          ; $6fc9: $03
	jr   nc, jr_08a_6fbc                             ; $6fca: $30 $f0

	nop                                              ; $6fcc: $00
	ret  nz                                          ; $6fcd: $c0

	rst  $38                                         ; $6fce: $ff
	nop                                              ; $6fcf: $00
	rst  $38                                         ; $6fd0: $ff
	nop                                              ; $6fd1: $00
	rst  $38                                         ; $6fd2: $ff
	nop                                              ; $6fd3: $00
	rst  $38                                         ; $6fd4: $ff
	nop                                              ; $6fd5: $00
	rst  $38                                         ; $6fd6: $ff
	nop                                              ; $6fd7: $00
	rst  $38                                         ; $6fd8: $ff
	nop                                              ; $6fd9: $00
	rst  $38                                         ; $6fda: $ff
	nop                                              ; $6fdb: $00
	rst  $38                                         ; $6fdc: $ff
	nop                                              ; $6fdd: $00
	rst  $38                                         ; $6fde: $ff
	nop                                              ; $6fdf: $00
	pop  de                                          ; $6fe0: $d1
	nop                                              ; $6fe1: $00
	ld   l, d                                        ; $6fe2: $6a
	nop                                              ; $6fe3: $00
	call z, $8000                                    ; $6fe4: $cc $00 $80
	ld   b, $9c                                      ; $6fe7: $06 $9c
	nop                                              ; $6fe9: $00
	add  b                                           ; $6fea: $80
	rlca                                             ; $6feb: $07
	adc  b                                           ; $6fec: $88
	nop                                              ; $6fed: $00
	add  b                                           ; $6fee: $80
	rlca                                             ; $6fef: $07
	add  b                                           ; $6ff0: $80
	ld   a, b                                        ; $6ff1: $78
	add  b                                           ; $6ff2: $80
	add  b                                           ; $6ff3: $80
	add  h                                           ; $6ff4: $84
	nop                                              ; $6ff5: $00
	add  b                                           ; $6ff6: $80
	rlca                                             ; $6ff7: $07
	add  b                                           ; $6ff8: $80
	ld   a, b                                        ; $6ff9: $78
	add  b                                           ; $6ffa: $80
	add  b                                           ; $6ffb: $80
	add  h                                           ; $6ffc: $84
	nop                                              ; $6ffd: $00
	add  b                                           ; $6ffe: $80
	rlca                                             ; $6fff: $07
	add  b                                           ; $7000: $80
	ld   a, b                                        ; $7001: $78
	add  b                                           ; $7002: $80
	add  b                                           ; $7003: $80
	add  [hl]                                        ; $7004: $86
	nop                                              ; $7005: $00
	add  b                                           ; $7006: $80
	ld   a, d                                        ; $7007: $7a
	add  b                                           ; $7008: $80
	add  e                                           ; $7009: $83
	add  d                                           ; $700a: $82
	dec  b                                           ; $700b: $05
	add  d                                           ; $700c: $82
	ld   [$1082], sp                                 ; $700d: $08 $82 $10
	add  [hl]                                        ; $7010: $86
	nop                                              ; $7011: $00
	add  h                                           ; $7012: $84
	add  b                                           ; $7013: $80
	inc  bc                                          ; $7014: $03
	ld   b, b                                        ; $7015: $40
	ret  nz                                          ; $7016: $c0

	cp   b                                           ; $7017: $b8
	jr   c, jr_08a_6f9a                              ; $7018: $38 $80

	jr   nz, jr_08a_6f9c                             ; $701a: $20 $80

	jr   @-$7e                                       ; $701c: $18 $80

	ld   d, $80                                      ; $701e: $16 $80
	ld   de, $0884                                   ; $7020: $11 $84 $08
	add  [hl]                                        ; $7023: $86
	nop                                              ; $7024: $00
	add  b                                           ; $7025: $80
	add  b                                           ; $7026: $80
	add  b                                           ; $7027: $80
	ld   h, b                                        ; $7028: $60
	add  b                                           ; $7029: $80
	jr   @-$7e                                       ; $702a: $18 $80

	ld   b, $9a                                      ; $702c: $06 $9a
	nop                                              ; $702e: $00
	add  d                                           ; $702f: $82
	ld   bc, $2082                                   ; $7030: $01 $82 $20
	add  d                                           ; $7033: $82
	ld   b, b                                        ; $7034: $40
	nop                                              ; $7035: $00
	add  b                                           ; $7036: $80
	add  c                                           ; $7037: $81
	add  c                                           ; $7038: $81
	add  b                                           ; $7039: $80
	pop  bc                                          ; $703a: $c1
	ld   [bc], a                                     ; $703b: $02
	ld   sp, $4333                                   ; $703c: $31 $33 $43
	add  c                                           ; $703f: $81
	ret  nz                                          ; $7040: $c0

	nop                                              ; $7041: $00
	and  b                                           ; $7042: $a0
	add  e                                           ; $7043: $83
	ldh  [rP1], a                                    ; $7044: $e0 $00
	ret  nc                                          ; $7046: $d0

	add  e                                           ; $7047: $83
	ldh  a, [rP1]                                    ; $7048: $f0 $00
	db   $e4                                         ; $704a: $e4
	add  e                                           ; $704b: $83
	inc  b                                           ; $704c: $04
	add  h                                           ; $704d: $84
	ld   [bc], a                                     ; $704e: $02
	add  h                                           ; $704f: $84
	ld   bc, $0086                                   ; $7050: $01 $86 $00
	add  d                                           ; $7053: $82
	ld   bc, $0280                                   ; $7054: $01 $80 $02
	add  b                                           ; $7057: $80
	add  b                                           ; $7058: $80
	ld   bc, $6061                                   ; $7059: $01 $61 $60
	add  b                                           ; $705c: $80
	ld   e, b                                        ; $705d: $58
	add  b                                           ; $705e: $80
	add  [hl]                                        ; $705f: $86
	ld   bc, $8081                                   ; $7060: $01 $81 $80
	add  h                                           ; $7063: $84
	nop                                              ; $7064: $00
	inc  bc                                          ; $7065: $03
	ldh  [c], a                                      ; $7066: $e2
	ld   [bc], a                                     ; $7067: $02
	inc  e                                           ; $7068: $1c
	inc  c                                           ; $7069: $0c
	add  d                                           ; $706a: $82
	nop                                              ; $706b: $00
	ld   [bc], a                                     ; $706c: $02
	stop                                             ; $706d: $10 $00
	ldh  [$83], a                                    ; $706f: $e0 $83
	nop                                              ; $7071: $00
	ld   b, $08                                      ; $7072: $06 $08
	dec  bc                                          ; $7074: $0b
	dec  b                                           ; $7075: $05
	rlca                                             ; $7076: $07
	nop                                              ; $7077: $00
	rlca                                             ; $7078: $07
	ld   b, $80                                      ; $7079: $06 $80
	rrca                                             ; $707b: $0f
	add  b                                           ; $707c: $80
	rra                                              ; $707d: $1f
	add  b                                           ; $707e: $80
	ccf                                              ; $707f: $3f
	add  b                                           ; $7080: $80
	ld   a, a                                        ; $7081: $7f
	ld   bc, $f7ff                                   ; $7082: $01 $ff $f7
	add  e                                           ; $7085: $83
	ld   hl, sp+$0b                                  ; $7086: $f8 $0b
	inc  [hl]                                        ; $7088: $34
	db   $fc                                         ; $7089: $fc
	inc  c                                           ; $708a: $0c
	db   $fc                                         ; $708b: $fc
	call nz, $f2fc                                   ; $708c: $c4 $fc $f2
	cp   $fa                                         ; $708f: $fe $fa
	cp   $f9                                         ; $7091: $fe $f9
	ld   bc, $008c                                   ; $7093: $01 $8c $00
	add  b                                           ; $7096: $80
	ld   [bc], a                                     ; $7097: $02
	add  d                                           ; $7098: $82
	add  h                                           ; $7099: $84
	add  b                                           ; $709a: $80
	adc  b                                           ; $709b: $88
	add  b                                           ; $709c: $80
	ld   c, b                                        ; $709d: $48
	add  b                                           ; $709e: $80
	ld   d, b                                        ; $709f: $50
	add  b                                           ; $70a0: $80
	ld   [hl], b                                     ; $70a1: $70
	add  b                                           ; $70a2: $80
	daa                                              ; $70a3: $27
	add  a                                           ; $70a4: $87
	nop                                              ; $70a5: $00
	ld   [bc], a                                     ; $70a6: $02
	rlca                                             ; $70a7: $07
	nop                                              ; $70a8: $00

jr_08a_70a9:
	rlca                                             ; $70a9: $07
	add  b                                           ; $70aa: $80
	ld   a, b                                        ; $70ab: $78
	add  b                                           ; $70ac: $80
	add  b                                           ; $70ad: $80
	nop                                              ; $70ae: $00
	nop                                              ; $70af: $00
	add  b                                           ; $70b0: $80
	inc  bc                                          ; $70b1: $03
	add  b                                           ; $70b2: $80
	rrca                                             ; $70b3: $0f
	ld   b, $3f                                      ; $70b4: $06 $3f
	jr   c, @+$01                                    ; $70b6: $38 $ff

	add  b                                           ; $70b8: $80
	ld   hl, sp+$00                                  ; $70b9: $f8 $00
	add  b                                           ; $70bb: $80
	add  e                                           ; $70bc: $83
	nop                                              ; $70bd: $00
	ld   b, $ff                                      ; $70be: $06 $ff
	ld   hl, sp-$01                                  ; $70c0: $f8 $ff
	add  b                                           ; $70c2: $80
	ld   hl, sp+$00                                  ; $70c3: $f8 $00
	add  b                                           ; $70c5: $80
	add  [hl]                                        ; $70c6: $86
	nop                                              ; $70c7: $00
	inc  bc                                          ; $70c8: $03
	ld   a, b                                        ; $70c9: $78
	ld   hl, sp+$00                                  ; $70ca: $f8 $00
	add  b                                           ; $70cc: $80
	sbc  d                                           ; $70cd: $9a
	nop                                              ; $70ce: $00
	add  b                                           ; $70cf: $80
	jr   c, @+$01                                    ; $70d0: $38 $ff

	nop                                              ; $70d2: $00
	rst  $38                                         ; $70d3: $ff
	nop                                              ; $70d4: $00
	rst  $38                                         ; $70d5: $ff
	nop                                              ; $70d6: $00
	rst  $38                                         ; $70d7: $ff
	nop                                              ; $70d8: $00
	rst  $38                                         ; $70d9: $ff
	nop                                              ; $70da: $00
	rst  $38                                         ; $70db: $ff
	nop                                              ; $70dc: $00
	rst  $38                                         ; $70dd: $ff
	nop                                              ; $70de: $00
	rst  $38                                         ; $70df: $ff
	nop                                              ; $70e0: $00
	rst  $38                                         ; $70e1: $ff
	nop                                              ; $70e2: $00
	rst  $38                                         ; $70e3: $ff
	nop                                              ; $70e4: $00
	add  d                                           ; $70e5: $82
	nop                                              ; $70e6: $00
	ld   d, b                                        ; $70e7: $50
	nop                                              ; $70e8: $00
	cp   h                                           ; $70e9: $bc
	nop                                              ; $70ea: $00
	ld   [bc], a                                     ; $70eb: $02
	ld   bc, $0100                                   ; $70ec: $01 $00 $01
	adc  c                                           ; $70ef: $89
	nop                                              ; $70f0: $00
	inc  bc                                          ; $70f1: $03
	ld   a, a                                        ; $70f2: $7f
	dec  h                                           ; $70f3: $25
	and  l                                           ; $70f4: $a5
	rst  $38                                         ; $70f5: $ff
	adc  h                                           ; $70f6: $8c
	nop                                              ; $70f7: $00
	ld   [bc], a                                     ; $70f8: $02

jr_08a_70f9:
	ret  nz                                          ; $70f9: $c0

	ld   b, b                                        ; $70fa: $40
	add  b                                           ; $70fb: $80
	sub  c                                           ; $70fc: $91
	nop                                              ; $70fd: $00
	nop                                              ; $70fe: $00
	rlca                                             ; $70ff: $07
	add  b                                           ; $7100: $80
	ld   bc, $0708                                   ; $7101: $01 $08 $07
	inc  a                                           ; $7104: $3c
	inc  d                                           ; $7105: $14
	ld   d, b                                        ; $7106: $50
	jr   c, jr_08a_70a9                              ; $7107: $38 $a0

	ld   h, b                                        ; $7109: $60
	ld   b, b                                        ; $710a: $40
	ret  nz                                          ; $710b: $c0

	add  d                                           ; $710c: $82
	nop                                              ; $710d: $00
	rlca                                             ; $710e: $07
	ld   hl, sp+$50                                  ; $710f: $f8 $50
	ld   d, h                                        ; $7111: $54
	ld   hl, sp+$0b                                  ; $7112: $f8 $0b
	dec  c                                           ; $7114: $0d
	ld   bc, $8203                                   ; $7115: $01 $03 $82
	nop                                              ; $7118: $00
	add  b                                           ; $7119: $80
	inc  bc                                          ; $711a: $03
	add  hl, bc                                      ; $711b: $09
	ld   c, $0a                                      ; $711c: $0e $0a
	jr   c, jr_08a_714c                              ; $711e: $38 $2c

	jr   nz, jr_08a_7152                             ; $7120: $20 $30

	ldh  [rAUD4LEN], a                               ; $7122: $e0 $20
	nop                                              ; $7124: $00
	ret  nz                                          ; $7125: $c0

	add  d                                           ; $7126: $82
	nop                                              ; $7127: $00
	add  b                                           ; $7128: $80
	add  b                                           ; $7129: $80
	adc  h                                           ; $712a: $8c
	nop                                              ; $712b: $00
	dec  b                                           ; $712c: $05
	ldh  [$c0], a                                    ; $712d: $e0 $c0
	db   $10                                         ; $712f: $10
	jr   nz, jr_08a_7132                             ; $7130: $20 $00

jr_08a_7132:
	db   $10                                         ; $7132: $10
	add  c                                           ; $7133: $81
	jr   @+$05                                       ; $7134: $18 $03

	stop                                             ; $7136: $10 $00
	ld   [$8018], sp                                 ; $7138: $08 $18 $80
	ld   [$1800], sp                                 ; $713b: $08 $00 $18
	adc  [hl]                                        ; $713e: $8e
	nop                                              ; $713f: $00
	inc  b                                           ; $7140: $04
	ret  nz                                          ; $7141: $c0

	ld   b, b                                        ; $7142: $40
	nop                                              ; $7143: $00
	add  b                                           ; $7144: $80
	ret  nz                                          ; $7145: $c0

	add  b                                           ; $7146: $80
	add  b                                           ; $7147: $80
	nop                                              ; $7148: $00
	ret  nz                                          ; $7149: $c0

	add  c                                           ; $714a: $81
	ld   h, b                                        ; $714b: $60

jr_08a_714c:
	dec  b                                           ; $714c: $05
	ld   b, b                                        ; $714d: $40
	db   $10                                         ; $714e: $10
	jr   nz, jr_08a_7159                             ; $714f: $20 $08

	db   $10                                         ; $7151: $10

jr_08a_7152:
	ld   [$0089], sp                                 ; $7152: $08 $89 $00
	inc  b                                           ; $7155: $04
	ld   bc, $0e00                                   ; $7156: $01 $00 $0e

jr_08a_7159:
	dec  b                                           ; $7159: $05
	ld   a, [bc]                                     ; $715a: $0a
	add  a                                           ; $715b: $87
	nop                                              ; $715c: $00
	inc  bc                                          ; $715d: $03
	ld   a, a                                        ; $715e: $7f
	ld   a, [hl+]                                    ; $715f: $2a
	xor  d                                           ; $7160: $aa
	rst  $38                                         ; $7161: $ff
	add  b                                           ; $7162: $80
	add  b                                           ; $7163: $80
	add  [hl]                                        ; $7164: $86
	nop                                              ; $7165: $00
	add  b                                           ; $7166: $80
	ld   bc, $ff03                                   ; $7167: $01 $03 $ff
	and  l                                           ; $716a: $a5
	and  h                                           ; $716b: $a4
	cp   $80                                         ; $716c: $fe $80

jr_08a_716e:
	nop                                              ; $716e: $00
	dec  bc                                          ; $716f: $0b
	jr   jr_08a_717a                                 ; $7170: $18 $08

	nop                                              ; $7172: $00
	db   $10                                         ; $7173: $10
	jr   nc, jr_08a_7186                             ; $7174: $30 $10

	ld   b, b                                        ; $7176: $40
	jr   nz, jr_08a_70f9                             ; $7177: $20 $80

	ld   b, b                                        ; $7179: $40

jr_08a_717a:
	nop                                              ; $717a: $00
	add  b                                           ; $717b: $80
	sub  b                                           ; $717c: $90
	nop                                              ; $717d: $00
	add  b                                           ; $717e: $80
	ld   bc, $0c03                                   ; $717f: $01 $03 $0c
	ld   c, $01                                      ; $7182: $0e $01
	inc  bc                                          ; $7184: $03
	add  b                                           ; $7185: $80

jr_08a_7186:
	rrca                                             ; $7186: $0f
	inc  b                                           ; $7187: $04
	ld   sp, $4637                                   ; $7188: $31 $37 $46
	ld   c, a                                        ; $718b: $4f
	adc  a                                           ; $718c: $8f
	add  c                                           ; $718d: $81
	sbc  a                                           ; $718e: $9f
	add  b                                           ; $718f: $80
	rra                                              ; $7190: $1f
	dec  b                                           ; $7191: $05
	ld   hl, $501e                                   ; $7192: $21 $1e $50
	jr   nc, @-$7e                                   ; $7195: $30 $80

	ret  nz                                          ; $7197: $c0

	add  b                                           ; $7198: $80
	add  b                                           ; $7199: $80
	add  d                                           ; $719a: $82
	ret  nz                                          ; $719b: $c0

	nop                                              ; $719c: $00
	ldh  [$81], a                                    ; $719d: $e0 $81
	and  b                                           ; $719f: $a0
	nop                                              ; $71a0: $00
	ld   b, b                                        ; $71a1: $40
	xor  l                                           ; $71a2: $ad
	nop                                              ; $71a3: $00
	add  b                                           ; $71a4: $80
	ld   bc, $0288                                   ; $71a5: $01 $88 $02
	add  d                                           ; $71a8: $82
	ld   bc, $0002                                   ; $71a9: $01 $02 $00
	ccf                                              ; $71ac: $3f
	ld   a, $83                                      ; $71ad: $3e $83
	cp   a                                           ; $71af: $bf
	nop                                              ; $71b0: $00
	cp   c                                           ; $71b1: $b9
	add  c                                           ; $71b2: $81
	cp   $04                                         ; $71b3: $fe $04
	or   $f8                                         ; $71b5: $f6 $f8
	ret  z                                           ; $71b7: $c8

	ldh  a, [$2f]                                    ; $71b8: $f0 $2f
	add  b                                           ; $71ba: $80
	and  b                                           ; $71bb: $a0
	add  l                                           ; $71bc: $85
	jr   nz, jr_08a_71bf                             ; $71bd: $20 $00

jr_08a_71bf:
	nop                                              ; $71bf: $00
	add  b                                           ; $71c0: $80
	ld   b, b                                        ; $71c1: $40
	nop                                              ; $71c2: $00
	ret  nz                                          ; $71c3: $c0

	add  b                                           ; $71c4: $80
	add  b                                           ; $71c5: $80
	cp   [hl]                                        ; $71c6: $be
	nop                                              ; $71c7: $00
	inc  bc                                          ; $71c8: $03
	rst  $38                                         ; $71c9: $ff
	rst  ToBoot                                         ; $71ca: $c7
	ld   b, b                                        ; $71cb: $40
	ld   a, b                                        ; $71cc: $78
	rst  $38                                         ; $71cd: $ff
	nop                                              ; $71ce: $00
	rst  $38                                         ; $71cf: $ff
	nop                                              ; $71d0: $00
	rst  $38                                         ; $71d1: $ff
	nop                                              ; $71d2: $00
	rst  $38                                         ; $71d3: $ff
	nop                                              ; $71d4: $00
	rst  $38                                         ; $71d5: $ff
	nop                                              ; $71d6: $00
	rst  $38                                         ; $71d7: $ff
	nop                                              ; $71d8: $00
	rst  $38                                         ; $71d9: $ff
	nop                                              ; $71da: $00
	rst  $38                                         ; $71db: $ff
	nop                                              ; $71dc: $00
	rst  $38                                         ; $71dd: $ff
	nop                                              ; $71de: $00
	rst  $38                                         ; $71df: $ff
	nop                                              ; $71e0: $00
	add  b                                           ; $71e1: $80
	nop                                              ; $71e2: $00
	ld   h, e                                        ; $71e3: $63
	nop                                              ; $71e4: $00
	and  h                                           ; $71e5: $a4
	nop                                              ; $71e6: $00
	add  b                                           ; $71e7: $80
	rrca                                             ; $71e8: $0f
	ld   [bc], a                                     ; $71e9: $02
	rra                                              ; $71ea: $1f
	db   $10                                         ; $71eb: $10
	jr   nz, jr_08a_716e                             ; $71ec: $20 $80

	inc  a                                           ; $71ee: $3c
	inc  bc                                          ; $71ef: $03
	ccf                                              ; $71f0: $3f
	inc  sp                                          ; $71f1: $33
	inc  a                                           ; $71f2: $3c

jr_08a_71f3:
	rra                                              ; $71f3: $1f
	add  e                                           ; $71f4: $83
	nop                                              ; $71f5: $00
	add  b                                           ; $71f6: $80
	ldh  [$08], a                                    ; $71f7: $e0 $08
	jr   jr_08a_71f3                                 ; $71f9: $18 $f8

	inc  [hl]                                        ; $71fb: $34
	inc  a                                           ; $71fc: $3c
	inc  c                                           ; $71fd: $0c
	db   $fc                                         ; $71fe: $fc
	sub  h                                           ; $71ff: $94
	ld   [hl], h                                     ; $7200: $74
	ld   hl, sp-$43                                  ; $7201: $f8 $bd
	nop                                              ; $7203: $00
	nop                                              ; $7204: $00
	db   $10                                         ; $7205: $10
	add  c                                           ; $7206: $81
	rra                                              ; $7207: $1f
	nop                                              ; $7208: $00
	rlca                                             ; $7209: $07
	add  e                                           ; $720a: $83
	rrca                                             ; $720b: $0f
	nop                                              ; $720c: $00
	rla                                              ; $720d: $17
	add  c                                           ; $720e: $81
	rra                                              ; $720f: $1f
	ld   [bc], a                                     ; $7210: $02
	cpl                                              ; $7211: $2f
	ccf                                              ; $7212: $3f
	ld   h, a                                        ; $7213: $67
	add  c                                           ; $7214: $81
	adc  b                                           ; $7215: $88
	nop                                              ; $7216: $00
	nop                                              ; $7217: $00
	add  e                                           ; $7218: $83
	stop                                             ; $7219: $10 $00
	jr   @-$7d                                       ; $721b: $18 $81

	ld   [$0c02], sp                                 ; $721d: $08 $02 $0c
	inc  b                                           ; $7220: $04
	ld   hl, sp-$4f                                  ; $7221: $f8 $b1
	nop                                              ; $7223: $00
	add  d                                           ; $7224: $82
	ld   bc, $0200                                   ; $7225: $01 $00 $02
	add  c                                           ; $7228: $81
	inc  bc                                          ; $7229: $03
	nop                                              ; $722a: $00
	dec  b                                           ; $722b: $05
	add  c                                           ; $722c: $81
	rlca                                             ; $722d: $07
	inc  b                                           ; $722e: $04
	ld   b, e                                        ; $722f: $43
	ld   l, a                                        ; $7230: $6f
	xor  a                                           ; $7231: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7232: $cf
	ld   c, a                                        ; $7233: $4f
	add  b                                           ; $7234: $80
	adc  a                                           ; $7235: $8f
	add  b                                           ; $7236: $80
	sbc  a                                           ; $7237: $9f
	add  d                                           ; $7238: $82
	rra                                              ; $7239: $1f
	add  b                                           ; $723a: $80
	ccf                                              ; $723b: $3f
	ld   b, $ff                                      ; $723c: $06 $ff
	add  c                                           ; $723e: $81
	add  d                                           ; $723f: $82
	add  e                                           ; $7240: $83
	add  c                                           ; $7241: $81
	pop  bc                                          ; $7242: $c1
	ret  nz                                          ; $7243: $c0

	add  b                                           ; $7244: $80
	ldh  [$82], a                                    ; $7245: $e0 $82
	ldh  a, [$82]                                    ; $7247: $f0 $82
	ld   hl, sp+$00                                  ; $7249: $f8 $00
	rst  $38                                         ; $724b: $ff
	add  c                                           ; $724c: $81
	nop                                              ; $724d: $00
	add  d                                           ; $724e: $82
	add  b                                           ; $724f: $80
	nop                                              ; $7250: $00
	ret  nz                                          ; $7251: $c0

	add  c                                           ; $7252: $81
	ld   b, b                                        ; $7253: $40
	nop                                              ; $7254: $00
	ld   h, b                                        ; $7255: $60
	add  c                                           ; $7256: $81
	jr   nz, jr_08a_7259                             ; $7257: $20 $00

jr_08a_7259:
	ret  nz                                          ; $7259: $c0

	sbc  l                                           ; $725a: $9d
	nop                                              ; $725b: $00
	nop                                              ; $725c: $00
	ld   [$0f83], sp                                 ; $725d: $08 $83 $0f
	nop                                              ; $7260: $00
	rla                                              ; $7261: $17
	add  a                                           ; $7262: $87
	rra                                              ; $7263: $1f
	nop                                              ; $7264: $00
	rrca                                             ; $7265: $0f
	adc  l                                           ; $7266: $8d
	rst  $38                                         ; $7267: $ff
	add  h                                           ; $7268: $84
	db   $fc                                         ; $7269: $fc
	adc  b                                           ; $726a: $88
	cp   $00                                         ; $726b: $fe $00
	rrca                                             ; $726d: $0f
	add  e                                           ; $726e: $83
	stop                                             ; $726f: $10 $00
	jr   @-$77                                       ; $7271: $18 $87

	ld   [$f000], sp                                 ; $7273: $08 $00 $f0
	sbc  l                                           ; $7276: $9d
	nop                                              ; $7277: $00
	nop                                              ; $7278: $00
	db   $10                                         ; $7279: $10
	add  l                                           ; $727a: $85
	rra                                              ; $727b: $1f
	nop                                              ; $727c: $00
	rlca                                             ; $727d: $07
	add  c                                           ; $727e: $81
	rrca                                             ; $727f: $0f
	nop                                              ; $7280: $00
	inc  bc                                          ; $7281: $03
	add  c                                           ; $7282: $81
	rlca                                             ; $7283: $07
	nop                                              ; $7284: $00

jr_08a_7285:
	inc  bc                                          ; $7285: $03
	adc  l                                           ; $7286: $8d
	rst  $38                                         ; $7287: $ff
	add  d                                           ; $7288: $82
	cp   $84                                         ; $7289: $fe $84
	db   $fc                                         ; $728b: $fc
	add  h                                           ; $728c: $84
	ld   hl, sp+$00                                  ; $728d: $f8 $00
	rlca                                             ; $728f: $07
	add  l                                           ; $7290: $85
	ld   [rRAMG], sp                                 ; $7291: $08 $00 $00
	add  c                                           ; $7294: $81
	stop                                             ; $7295: $10 $00
	nop                                              ; $7297: $00
	add  c                                           ; $7298: $81
	jr   nz, jr_08a_729b                             ; $7299: $20 $00

jr_08a_729b:
	ret  nz                                          ; $729b: $c0

	sbc  l                                           ; $729c: $9d
	nop                                              ; $729d: $00
	inc  bc                                          ; $729e: $03
	ld   [bc], a                                     ; $729f: $02
	inc  bc                                          ; $72a0: $03
	nop                                              ; $72a1: $00
	ld   bc, $008b                                   ; $72a2: $01 $8b $00
	add  c                                           ; $72a5: $81
	rst  $38                                         ; $72a6: $ff
	dec  b                                           ; $72a7: $05
	ccf                                              ; $72a8: $3f
	rst  $38                                         ; $72a9: $ff
	ld   b, $3e                                      ; $72aa: $06 $3e
	ld   [$840f], sp                                 ; $72ac: $08 $0f $84
	nop                                              ; $72af: $00
	ld   bc, $f00f                                   ; $72b0: $01 $0f $f0
	add  b                                           ; $72b3: $80
	ldh  [rTIMA], a                                  ; $72b4: $e0 $05
	ret  nz                                          ; $72b6: $c0

	jp   $1c00                                       ; $72b7: $c3 $00 $1c


	db   $10                                         ; $72ba: $10
	ldh  a, [$84]                                    ; $72bb: $f0 $84
	nop                                              ; $72bd: $00
	inc  bc                                          ; $72be: $03
	ret  nz                                          ; $72bf: $c0

	ld   b, b                                        ; $72c0: $40
	nop                                              ; $72c1: $00
	add  b                                           ; $72c2: $80
	rst  $38                                         ; $72c3: $ff
	nop                                              ; $72c4: $00
	rst  $38                                         ; $72c5: $ff
	nop                                              ; $72c6: $00
	rst  $38                                         ; $72c7: $ff
	nop                                              ; $72c8: $00
	rst  $38                                         ; $72c9: $ff
	nop                                              ; $72ca: $00
	rst  $38                                         ; $72cb: $ff
	nop                                              ; $72cc: $00
	rst  $38                                         ; $72cd: $ff
	nop                                              ; $72ce: $00
	rst  $38                                         ; $72cf: $ff
	nop                                              ; $72d0: $00
	rst  $38                                         ; $72d1: $ff
	nop                                              ; $72d2: $00
	rst  $38                                         ; $72d3: $ff
	nop                                              ; $72d4: $00
	pop  de                                          ; $72d5: $d1
	nop                                              ; $72d6: $00
	ld   c, h                                        ; $72d7: $4c
	nop                                              ; $72d8: $00
	rst  $38                                         ; $72d9: $ff
	nop                                              ; $72da: $00

jr_08a_72db:
	xor  e                                           ; $72db: $ab
	nop                                              ; $72dc: $00
	add  b                                           ; $72dd: $80
	ld   bc, $0088                                   ; $72de: $01 $88 $00
	ld   b, $38                                      ; $72e1: $06 $38
	jr   nc, jr_08a_7325                             ; $72e3: $30 $40

	ld   e, b                                        ; $72e5: $58
	xor  b                                           ; $72e6: $a8
	adc  b                                           ; $72e7: $88
	jr   nc, jr_08a_7285                             ; $72e8: $30 $9b

	nop                                              ; $72ea: $00
	add  b                                           ; $72eb: $80
	inc  bc                                          ; $72ec: $03
	adc  b                                           ; $72ed: $88
	nop                                              ; $72ee: $00
	add  b                                           ; $72ef: $80
	ld   bc, $1e80                                   ; $72f0: $01 $80 $1e
	ld   [bc], a                                     ; $72f3: $02
	ldh  [$e1], a                                    ; $72f4: $e0 $e1
	ld   bc, $0083                                   ; $72f6: $01 $83 $00
	add  b                                           ; $72f9: $80
	rlca                                             ; $72fa: $07
	add  b                                           ; $72fb: $80
	jr   jr_08a_7307                                 ; $72fc: $18 $09

	pop  hl                                          ; $72fe: $e1
	and  $00                                         ; $72ff: $e6 $00
	jr   @+$25                                       ; $7301: $18 $23

	ret  nz                                          ; $7303: $c0

	ld   a, [$1906]                                  ; $7304: $fa $06 $19

jr_08a_7307:
	ld   a, [de]                                     ; $7307: $1a
	add  b                                           ; $7308: $80
	db   $e4                                         ; $7309: $e4
	rlca                                             ; $730a: $07
	ld   c, $15                                      ; $730b: $0e $15
	ld   l, $c6                                      ; $730d: $2e $c6
	inc  a                                           ; $730f: $3c
	inc  c                                           ; $7310: $0c
	ldh  a, [$30]                                    ; $7311: $f0 $30
	add  b                                           ; $7313: $80
	ld   b, b                                        ; $7314: $40
	dec  b                                           ; $7315: $05
	ld   h, b                                        ; $7316: $60
	add  b                                           ; $7317: $80
	ld   b, b                                        ; $7318: $40
	jr   nz, jr_08a_72db                             ; $7319: $20 $c0

	ld   b, b                                        ; $731b: $40
	add  b                                           ; $731c: $80
	add  b                                           ; $731d: $80
	add  [hl]                                        ; $731e: $86
	nop                                              ; $731f: $00
	dec  b                                           ; $7320: $05
	rra                                              ; $7321: $1f
	rrca                                             ; $7322: $0f
	nop                                              ; $7323: $00
	db   $10                                         ; $7324: $10

jr_08a_7325:
	jr   jr_08a_733e                                 ; $7325: $18 $17

	add  b                                           ; $7327: $80
	inc  de                                          ; $7328: $13
	dec  b                                           ; $7329: $05
	ld   bc, $0c09                                   ; $732a: $01 $09 $0c
	ld   [$0407], sp                                 ; $732d: $08 $07 $04
	add  b                                           ; $7330: $80
	inc  bc                                          ; $7331: $03
	add  b                                           ; $7332: $80
	db   $fc                                         ; $7333: $fc
	rla                                              ; $7334: $17
	ret  nz                                          ; $7335: $c0

	jp   $fe22                                       ; $7336: $c3 $22 $fe


	ret  nz                                          ; $7339: $c0

	ldh  a, [$c0]                                    ; $733a: $f0 $c0
	ret  z                                           ; $733c: $c8

	rrca                                             ; $733d: $0f

jr_08a_733e:
	ld   [$0888], sp                                 ; $733e: $08 $88 $08
	ld   l, a                                        ; $7341: $6f
	rrca                                             ; $7342: $0f
	ld   bc, $001e                                   ; $7343: $01 $1e $00
	ldh  [$03], a                                    ; $7346: $e0 $03
	nop                                              ; $7348: $00
	inc  e                                           ; $7349: $1c
	nop                                              ; $734a: $00
	db   $e3                                         ; $734b: $e3
	inc  bc                                          ; $734c: $03
	add  b                                           ; $734d: $80
	inc  e                                           ; $734e: $1c
	add  b                                           ; $734f: $80
	ldh  [$80], a                                    ; $7350: $e0 $80
	nop                                              ; $7352: $00
	dec  b                                           ; $7353: $05
	pop  af                                          ; $7354: $f1
	ld   bc, $0676                                   ; $7355: $01 $76 $06
	sbc  b                                           ; $7358: $98
	jr   jr_08a_72db                                 ; $7359: $18 $80

	ld   h, b                                        ; $735b: $60
	add  b                                           ; $735c: $80
	add  b                                           ; $735d: $80
	add  h                                           ; $735e: $84
	nop                                              ; $735f: $00
	add  b                                           ; $7360: $80
	add  b                                           ; $7361: $80
	xor  h                                           ; $7362: $ac
	nop                                              ; $7363: $00
	add  b                                           ; $7364: $80
	ld   hl, sp-$01                                  ; $7365: $f8 $ff
	nop                                              ; $7367: $00
	rst  $38                                         ; $7368: $ff
	nop                                              ; $7369: $00
	rst  $38                                         ; $736a: $ff
	nop                                              ; $736b: $00
	add  e                                           ; $736c: $83
	nop                                              ; $736d: $00
	add  b                                           ; $736e: $80
	inc  b                                           ; $736f: $04
	add  b                                           ; $7370: $80
	inc  bc                                          ; $7371: $03
	sbc  b                                           ; $7372: $98
	nop                                              ; $7373: $00
	add  b                                           ; $7374: $80
	db   $10                                         ; $7375: $10
	add  b                                           ; $7376: $80
	rla                                              ; $7377: $17
	add  b                                           ; $7378: $80
	sub  a                                           ; $7379: $97
	add  b                                           ; $737a: $80
	ldh  a, [$92]                                    ; $737b: $f0 $92
	nop                                              ; $737d: $00
	add  b                                           ; $737e: $80
	inc  bc                                          ; $737f: $03
	add  b                                           ; $7380: $80
	rra                                              ; $7381: $1f
	add  b                                           ; $7382: $80
	db   $fc                                         ; $7383: $fc
	add  b                                           ; $7384: $80
	ldh  [$90], a                                    ; $7385: $e0 $90
	nop                                              ; $7387: $00
	add  b                                           ; $7388: $80
	inc  bc                                          ; $7389: $03
	add  b                                           ; $738a: $80
	ld   c, $80                                      ; $738b: $0e $80
	ld   a, b                                        ; $738d: $78
	add  b                                           ; $738e: $80
	ldh  [$80], a                                    ; $738f: $e0 $80
	add  b                                           ; $7391: $80
	adc  h                                           ; $7392: $8c
	nop                                              ; $7393: $00
	add  b                                           ; $7394: $80
	ld   [bc], a                                     ; $7395: $02
	add  b                                           ; $7396: $80
	ld   [$3080], sp                                 ; $7397: $08 $80 $30
	add  b                                           ; $739a: $80
	ret  nz                                          ; $739b: $c0

	add  b                                           ; $739c: $80
	add  b                                           ; $739d: $80
	adc  [hl]                                        ; $739e: $8e
	nop                                              ; $739f: $00
	add  b                                           ; $73a0: $80
	db   $10                                         ; $73a1: $10
	add  b                                           ; $73a2: $80
	ld   b, b                                        ; $73a3: $40
	add  b                                           ; $73a4: $80
	add  b                                           ; $73a5: $80
	rst  $38                                         ; $73a6: $ff
	nop                                              ; $73a7: $00
	rst  $38                                         ; $73a8: $ff
	nop                                              ; $73a9: $00
	rst  $38                                         ; $73aa: $ff
	nop                                              ; $73ab: $00
	rst  $38                                         ; $73ac: $ff
	nop                                              ; $73ad: $00
	rst  $38                                         ; $73ae: $ff
	nop                                              ; $73af: $00
	rst  $38                                         ; $73b0: $ff
	nop                                              ; $73b1: $00
	jp   nc, Jump_08a_4100                           ; $73b2: $d2 $00 $41

	nop                                              ; $73b5: $00
	or   b                                           ; $73b6: $b0
	nop                                              ; $73b7: $00
	add  d                                           ; $73b8: $82
	ld   bc, $0201                                   ; $73b9: $01 $01 $02
	inc  bc                                          ; $73bc: $03
	add  b                                           ; $73bd: $80
	ld   [bc], a                                     ; $73be: $02
	rlca                                             ; $73bf: $07
	inc  b                                           ; $73c0: $04
	ld   b, $04                                      ; $73c1: $06 $04
	dec  b                                           ; $73c3: $05
	add  hl, bc                                      ; $73c4: $09
	dec  c                                           ; $73c5: $0d
	ld   b, $00                                      ; $73c6: $06 $00
	add  c                                           ; $73c8: $81
	ret  nz                                          ; $73c9: $c0

	add  c                                           ; $73ca: $81

jr_08a_73cb:
	ld   b, b                                        ; $73cb: $40
	nop                                              ; $73cc: $00
	nop                                              ; $73cd: $00
	add  c                                           ; $73ce: $81
	add  b                                           ; $73cf: $80
	jp   nz, $1000                                   ; $73d0: $c2 $00 $10

	ld   c, $0a                                      ; $73d3: $0e $0a
	ld   [de], a                                     ; $73d5: $12
	ld   a, [de]                                     ; $73d6: $1a
	db   $10                                         ; $73d7: $10
	inc  d                                           ; $73d8: $14
	inc  h                                           ; $73d9: $24
	inc  [hl]                                        ; $73da: $34
	jr   nz, jr_08a_7405                             ; $73db: $20 $28

	ld   c, b                                        ; $73dd: $48
	ld   l, b                                        ; $73de: $68
	ld   b, b                                        ; $73df: $40
	ld   d, b                                        ; $73e0: $50
	sub  b                                           ; $73e1: $90
	ret  nc                                          ; $73e2: $d0

	ld   h, b                                        ; $73e3: $60
	cp   a                                           ; $73e4: $bf
	nop                                              ; $73e5: $00
	add  d                                           ; $73e6: $82
	ld   bc, $0201                                   ; $73e7: $01 $01 $02
	inc  bc                                          ; $73ea: $03
	add  b                                           ; $73eb: $80
	ld   [bc], a                                     ; $73ec: $02
	ld   a, [bc]                                     ; $73ed: $0a
	inc  b                                           ; $73ee: $04
	ld   b, $04                                      ; $73ef: $06 $04
	dec  b                                           ; $73f1: $05
	add  hl, bc                                      ; $73f2: $09
	dec  c                                           ; $73f3: $0d
	and  $a0                                         ; $73f4: $e6 $a0
	jr   nz, @-$5e                                   ; $73f6: $20 $a0

	nop                                              ; $73f8: $00
	add  c                                           ; $73f9: $81
	ld   b, b                                        ; $73fa: $40
	nop                                              ; $73fb: $00
	nop                                              ; $73fc: $00
	add  c                                           ; $73fd: $81
	add  b                                           ; $73fe: $80
	jp   nz, $1000                                   ; $73ff: $c2 $00 $10

	ld   c, $0a                                      ; $7402: $0e $0a
	ld   [de], a                                     ; $7404: $12

jr_08a_7405:
	ld   a, [de]                                     ; $7405: $1a
	db   $10                                         ; $7406: $10
	inc  d                                           ; $7407: $14
	inc  h                                           ; $7408: $24
	inc  [hl]                                        ; $7409: $34
	jr   nz, @+$2a                                   ; $740a: $20 $28

	ld   c, b                                        ; $740c: $48
	ld   l, b                                        ; $740d: $68
	ld   b, b                                        ; $740e: $40
	ld   d, b                                        ; $740f: $50
	sub  b                                           ; $7410: $90
	ret  nc                                          ; $7411: $d0

	ld   h, b                                        ; $7412: $60
	cp   c                                           ; $7413: $b9
	nop                                              ; $7414: $00
	add  d                                           ; $7415: $82
	ld   bc, $0080                                   ; $7416: $01 $80 $00
	add  d                                           ; $7419: $82
	ld   bc, $0207                                   ; $741a: $01 $07 $02
	inc  bc                                          ; $741d: $03
	cp   $ff                                         ; $741e: $fe $ff
	add  a                                           ; $7420: $87
	cp   b                                           ; $7421: $b8
	ret  nz                                          ; $7422: $c0

	rst  $38                                         ; $7423: $ff
	add  b                                           ; $7424: $80
	ld   e, e                                        ; $7425: $5b
	inc  b                                           ; $7426: $04
	ldh  [hScriptOpcodeParams], a                                    ; $7427: $e0 $a0
	jr   nz, jr_08a_73cb                             ; $7429: $20 $a0

	nop                                              ; $742b: $00
	add  d                                           ; $742c: $82
	ld   b, b                                        ; $742d: $40
	nop                                              ; $742e: $00
	ret  nz                                          ; $742f: $c0

	add  c                                           ; $7430: $81
	rst  $38                                         ; $7431: $ff
	add  b                                           ; $7432: $80
	ld   bc, $ff00                                   ; $7433: $01 $00 $ff
	adc  h                                           ; $7436: $8c
	nop                                              ; $7437: $00
	add  b                                           ; $7438: $80
	add  b                                           ; $7439: $80
	sbc  [hl]                                        ; $743a: $9e
	nop                                              ; $743b: $00
	add  b                                           ; $743c: $80
	ld   bc, $0282                                   ; $743d: $01 $82 $02
	add  d                                           ; $7440: $82
	ld   bc, $0084                                   ; $7441: $01 $84 $00
	add  b                                           ; $7444: $80
	ld   a, [hl+]                                    ; $7445: $2a
	add  b                                           ; $7446: $80
	ld   l, d                                        ; $7447: $6a
	add  d                                           ; $7448: $82
	ld   e, d                                        ; $7449: $5a
	add  b                                           ; $744a: $80
	ld   d, l                                        ; $744b: $55
	add  b                                           ; $744c: $80
	db   $fc                                         ; $744d: $fc
	add  b                                           ; $744e: $80
	rlca                                             ; $744f: $07
	add  b                                           ; $7450: $80
	nop                                              ; $7451: $00
	inc  b                                           ; $7452: $04
	ld   d, l                                        ; $7453: $55
	ld   a, a                                        ; $7454: $7f
	rst  $38                                         ; $7455: $ff
	rst  JumpTable                                         ; $7456: $df

jr_08a_7457:
	and  b                                           ; $7457: $a0
	add  c                                           ; $7458: $81
	xor  a                                           ; $7459: $af
	inc  bc                                          ; $745a: $03
	ret  c                                           ; $745b: $d8

	rst  JumpTable                                         ; $745c: $df
	ld   d, l                                        ; $745d: $55
	ld   d, a                                        ; $745e: $57
	add  b                                           ; $745f: $80
	db   $fd                                         ; $7460: $fd
	add  b                                           ; $7461: $80
	nop                                              ; $7462: $00
	nop                                              ; $7463: $00
	ld   b, b                                        ; $7464: $40
	add  c                                           ; $7465: $81
	ret  nz                                          ; $7466: $c0

	add  hl, bc                                      ; $7467: $09
	ld   b, b                                        ; $7468: $40
	ret  nz                                          ; $7469: $c0

jr_08a_746a:
	and  b                                           ; $746a: $a0
	ldh  [$9c], a                                    ; $746b: $e0 $9c
	db   $fc                                         ; $746d: $fc
	inc  b                                           ; $746e: $04
	db   $fc                                         ; $746f: $fc
	jr   nz, jr_08a_746a                             ; $7470: $20 $f8

	rst  $38                                         ; $7472: $ff
	nop                                              ; $7473: $00
	rst  $38                                         ; $7474: $ff
	nop                                              ; $7475: $00
	rst  $38                                         ; $7476: $ff
	nop                                              ; $7477: $00
	rst  $38                                         ; $7478: $ff
	nop                                              ; $7479: $00
	rst  $38                                         ; $747a: $ff
	nop                                              ; $747b: $00
	rst  $38                                         ; $747c: $ff
	nop                                              ; $747d: $00
	rst  $38                                         ; $747e: $ff
	nop                                              ; $747f: $00

Call_08a_7480:
	rst  $38                                         ; $7480: $ff
	nop                                              ; $7481: $00
	rst  $38                                         ; $7482: $ff
	nop                                              ; $7483: $00
	rst  $10                                         ; $7484: $d7
	nop                                              ; $7485: $00
	inc  h                                           ; $7486: $24
	nop                                              ; $7487: $00
	jp   z, $8000                                    ; $7488: $ca $00 $80

	ld   bc, $0202                                   ; $748b: $01 $02 $02
	inc  bc                                          ; $748e: $03
	ld   bc, $0081                                   ; $748f: $01 $81 $00
	add  b                                           ; $7492: $80
	inc  e                                           ; $7493: $1c
	ld   a, [bc]                                     ; $7494: $0a
	ld   h, $3a                                      ; $7495: $26 $3a
	ld   d, d                                        ; $7497: $52
	ld   [hl], d                                     ; $7498: $72
	and  b                                           ; $7499: $a0
	db   $e4                                         ; $749a: $e4
	ld   b, b                                        ; $749b: $40
	ret  z                                           ; $749c: $c8

	add  b                                           ; $749d: $80
	sub  b                                           ; $749e: $90
	ldh  [$b9], a                                    ; $749f: $e0 $b9
	nop                                              ; $74a1: $00
	add  b                                           ; $74a2: $80
	ld   bc, $0217                                   ; $74a3: $01 $17 $02
	inc  bc                                          ; $74a6: $03
	dec  b                                           ; $74a7: $05
	rlca                                             ; $74a8: $07
	ld   a, [bc]                                     ; $74a9: $0a
	ld   [$131f], sp                                 ; $74aa: $08 $1f $13
	ld   a, [hl+]                                    ; $74ad: $2a
	add  hl, sp                                      ; $74ae: $39
	ld   d, b                                        ; $74af: $50
	ld   [hl], d                                     ; $74b0: $72
	and  b                                           ; $74b1: $a0
	db   $e4                                         ; $74b2: $e4
	ld   b, b                                        ; $74b3: $40
	ret  z                                           ; $74b4: $c8

	add  b                                           ; $74b5: $80
	sub  b                                           ; $74b6: $90
	nop                                              ; $74b7: $00
	jr   nz, jr_08a_74ba                             ; $74b8: $20 $00

jr_08a_74ba:
	ld   b, b                                        ; $74ba: $40
	nop                                              ; $74bb: $00
	add  b                                           ; $74bc: $80
	or   h                                           ; $74bd: $b4
	nop                                              ; $74be: $00
	add  b                                           ; $74bf: $80
	ld   bc, $0280                                   ; $74c0: $01 $80 $02
	add  b                                           ; $74c3: $80
	inc  b                                           ; $74c4: $04
	inc  de                                          ; $74c5: $13
	rrca                                             ; $74c6: $0f
	add  hl, bc                                      ; $74c7: $09
	dec  d                                           ; $74c8: $15
	inc  e                                           ; $74c9: $1c
	jr   z, @+$3b                                    ; $74ca: $28 $39

	ld   d, b                                        ; $74cc: $50
	ld   [hl], d                                     ; $74cd: $72
	and  b                                           ; $74ce: $a0
	db   $e4                                         ; $74cf: $e4
	ld   b, b                                        ; $74d0: $40
	ret  z                                           ; $74d1: $c8

	add  b                                           ; $74d2: $80
	db   $10                                         ; $74d3: $10
	add  b                                           ; $74d4: $80
	jr   nz, jr_08a_7457                             ; $74d5: $20 $80

	ret  nz                                          ; $74d7: $c0

	nop                                              ; $74d8: $00
	add  b                                           ; $74d9: $80
	or   h                                           ; $74da: $b4
	nop                                              ; $74db: $00
	add  b                                           ; $74dc: $80
	ld   bc, $0317                                   ; $74dd: $01 $17 $03
	ld   [bc], a                                     ; $74e0: $02
	ld   b, $04                                      ; $74e1: $06 $04
	ld   a, [bc]                                     ; $74e3: $0a
	ld   c, $14                                      ; $74e4: $0e $14
	inc  e                                           ; $74e6: $1c
	jr   z, jr_08a_7522                              ; $74e7: $28 $39

	ld   d, b                                        ; $74e9: $50
	ld   [hl], d                                     ; $74ea: $72
	and  b                                           ; $74eb: $a0
	db   $e4                                         ; $74ec: $e4
	ld   b, b                                        ; $74ed: $40
	ld   [$70e0], sp                                 ; $74ee: $08 $e0 $70
	nop                                              ; $74f1: $00
	ldh  [$80], a                                    ; $74f2: $e0 $80
	ld   b, b                                        ; $74f4: $40
	nop                                              ; $74f5: $00
	add  b                                           ; $74f6: $80
	or   h                                           ; $74f7: $b4
	nop                                              ; $74f8: $00
	add  b                                           ; $74f9: $80
	ld   bc, $0213                                   ; $74fa: $01 $13 $02
	inc  bc                                          ; $74fd: $03
	dec  b                                           ; $74fe: $05
	rlca                                             ; $74ff: $07
	ld   a, [bc]                                     ; $7500: $0a
	ld   c, $14                                      ; $7501: $0e $14
	inc  e                                           ; $7503: $1c
	jr   z, jr_08a_753f                              ; $7504: $28 $39

	ld   d, b                                        ; $7506: $50
	ld   [hl], d                                     ; $7507: $72
	and  b                                           ; $7508: $a0
	add  h                                           ; $7509: $84
	ldh  a, [$38]                                    ; $750a: $f0 $38
	and  b                                           ; $750c: $a0
	sub  b                                           ; $750d: $90
	nop                                              ; $750e: $00
	ld   h, b                                        ; $750f: $60
	add  b                                           ; $7510: $80
	ld   b, b                                        ; $7511: $40
	ld   bc, $8000                                   ; $7512: $01 $00 $80
	cp   b                                           ; $7515: $b8
	nop                                              ; $7516: $00
	dec  c                                           ; $7517: $0d
	inc  b                                           ; $7518: $04
	rlca                                             ; $7519: $07
	ld   a, [bc]                                     ; $751a: $0a
	ld   c, $14                                      ; $751b: $0e $14
	inc  e                                           ; $751d: $1c
	jr   c, jr_08a_7559                              ; $751e: $38 $39

	ld   [hl], b                                     ; $7520: $70
	ld   c, d                                        ; $7521: $4a

jr_08a_7522:
	ld   c, b                                        ; $7522: $48
	ld   c, h                                        ; $7523: $4c
	ld   [$8038], sp                                 ; $7524: $08 $38 $80
	nop                                              ; $7527: $00
	dec  b                                           ; $7528: $05
	ldh  [rAUD4LEN], a                               ; $7529: $e0 $20
	nop                                              ; $752b: $00
	ld   b, b                                        ; $752c: $40
	nop                                              ; $752d: $00
	add  b                                           ; $752e: $80
	rst  $38                                         ; $752f: $ff
	nop                                              ; $7530: $00
	rst  $38                                         ; $7531: $ff
	nop                                              ; $7532: $00
	rst  $38                                         ; $7533: $ff

jr_08a_7534:
	nop                                              ; $7534: $00
	rst  $38                                         ; $7535: $ff
	nop                                              ; $7536: $00
	rst  $38                                         ; $7537: $ff
	nop                                              ; $7538: $00
	rst  $38                                         ; $7539: $ff
	nop                                              ; $753a: $00
	rst  $38                                         ; $753b: $ff
	nop                                              ; $753c: $00
	rst  $38                                         ; $753d: $ff
	nop                                              ; $753e: $00

jr_08a_753f:
	rst  $38                                         ; $753f: $ff
	nop                                              ; $7540: $00
	rst  $38                                         ; $7541: $ff
	nop                                              ; $7542: $00
	rlca                                             ; $7543: $07
	rlca                                             ; $7544: $07
	rlca                                             ; $7545: $07
	rlca                                             ; $7546: $07
	rlca                                             ; $7547: $07
	rlca                                             ; $7548: $07
	rlca                                             ; $7549: $07
	rlca                                             ; $754a: $07
	rlca                                             ; $754b: $07
	rlca                                             ; $754c: $07
	rlca                                             ; $754d: $07
	rlca                                             ; $754e: $07
	rlca                                             ; $754f: $07
	rlca                                             ; $7550: $07
	rlca                                             ; $7551: $07
	rlca                                             ; $7552: $07
	rlca                                             ; $7553: $07
	rlca                                             ; $7554: $07
	rlca                                             ; $7555: $07
	rlca                                             ; $7556: $07
	rlca                                             ; $7557: $07
	rlca                                             ; $7558: $07

jr_08a_7559:
	rlca                                             ; $7559: $07
	rlca                                             ; $755a: $07
	rlca                                             ; $755b: $07
	rlca                                             ; $755c: $07
	rlca                                             ; $755d: $07
	rlca                                             ; $755e: $07
	rlca                                             ; $755f: $07
	rlca                                             ; $7560: $07
	rlca                                             ; $7561: $07
	rlca                                             ; $7562: $07
	rlca                                             ; $7563: $07
	rlca                                             ; $7564: $07
	rlca                                             ; $7565: $07
	rlca                                             ; $7566: $07
	sub  b                                           ; $7567: $90
	sub  c                                           ; $7568: $91
	sub  d                                           ; $7569: $92
	sub  e                                           ; $756a: $93
	sub  h                                           ; $756b: $94
	sub  l                                           ; $756c: $95
	sub  [hl]                                        ; $756d: $96
	sub  a                                           ; $756e: $97
	sbc  b                                           ; $756f: $98
	sbc  c                                           ; $7570: $99
	sbc  d                                           ; $7571: $9a
	sbc  e                                           ; $7572: $9b
	sbc  h                                           ; $7573: $9c
	sbc  l                                           ; $7574: $9d
	sbc  [hl]                                        ; $7575: $9e
	sbc  a                                           ; $7576: $9f
	and  b                                           ; $7577: $a0
	and  c                                           ; $7578: $a1
	and  d                                           ; $7579: $a2
	and  e                                           ; $757a: $a3
	and  h                                           ; $757b: $a4
	and  l                                           ; $757c: $a5
	and  [hl]                                        ; $757d: $a6
	and  a                                           ; $757e: $a7
	xor  b                                           ; $757f: $a8
	xor  c                                           ; $7580: $a9
	xor  d                                           ; $7581: $aa
	xor  e                                           ; $7582: $ab
	xor  h                                           ; $7583: $ac
	xor  l                                           ; $7584: $ad
	xor  [hl]                                        ; $7585: $ae
	xor  a                                           ; $7586: $af
	or   b                                           ; $7587: $b0
	or   c                                           ; $7588: $b1
	or   d                                           ; $7589: $b2
	or   e                                           ; $758a: $b3
	nop                                              ; $758b: $00
	nop                                              ; $758c: $00
	nop                                              ; $758d: $00
	nop                                              ; $758e: $00
	nop                                              ; $758f: $00
	nop                                              ; $7590: $00
	nop                                              ; $7591: $00
	nop                                              ; $7592: $00
	rst  $38                                         ; $7593: $ff
	ld   a, a                                        ; $7594: $7f
	nop                                              ; $7595: $00
	nop                                              ; $7596: $00
	xor  d                                           ; $7597: $aa
	ld   [hl+], a                                    ; $7598: $22
	ld   [bc], a                                     ; $7599: $02
	ld   [bc], a                                     ; $759a: $02
	nop                                              ; $759b: $00
	nop                                              ; $759c: $00
	db   $d3                                         ; $759d: $d3
	dec  e                                           ; $759e: $1d
	dec  c                                           ; $759f: $0d
	dec  b                                           ; $75a0: $05
	adc  c                                           ; $75a1: $89
	nop                                              ; $75a2: $00
	nop                                              ; $75a3: $00
	nop                                              ; $75a4: $00
	add  d                                           ; $75a5: $82
	ld   bc, $050d                                   ; $75a6: $01 $0d $05
	adc  c                                           ; $75a9: $89
	nop                                              ; $75aa: $00
	nop                                              ; $75ab: $00
	nop                                              ; $75ac: $00
	cp   a                                           ; $75ad: $bf
	ld   d, l                                        ; $75ae: $55
	scf                                              ; $75af: $37
	jr   jr_08a_7534                                 ; $75b0: $18 $82

	ld   bc, $0000                                   ; $75b2: $01 $00 $00
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
	rst  $38                                         ; $75cb: $ff
	ld   a, a                                        ; $75cc: $7f
	nop                                              ; $75cd: $00
	nop                                              ; $75ce: $00
	scf                                              ; $75cf: $37
	ld   a, [hl+]                                    ; $75d0: $2a
	ld   l, h                                        ; $75d1: $6c
	add  hl, de                                      ; $75d2: $19
	nop                                              ; $75d3: $00
	nop                                              ; $75d4: $00
	db   $d3                                         ; $75d5: $d3
	dec  e                                           ; $75d6: $1d
	dec  c                                           ; $75d7: $0d
	dec  b                                           ; $75d8: $05
	adc  c                                           ; $75d9: $89
	nop                                              ; $75da: $00
	nop                                              ; $75db: $00
	nop                                              ; $75dc: $00
	sub  h                                           ; $75dd: $94
	dec  e                                           ; $75de: $1d
	dec  l                                           ; $75df: $2d
	nop                                              ; $75e0: $00
	adc  c                                           ; $75e1: $89
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
	rst  $38                                         ; $7603: $ff
	ld   a, a                                        ; $7604: $7f
	nop                                              ; $7605: $00
	nop                                              ; $7606: $00
	sub  d                                           ; $7607: $92
	ld   bc, $0278                                   ; $7608: $01 $78 $02
	nop                                              ; $760b: $00
	nop                                              ; $760c: $00
	jp   z, $1900                                    ; $760d: $ca $00 $19

	nop                                              ; $7610: $00
	db   $10                                         ; $7611: $10
	ld   l, h                                        ; $7612: $6c
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
	rst  $38                                         ; $763b: $ff
	ld   a, a                                        ; $763c: $7f
	nop                                              ; $763d: $00
	nop                                              ; $763e: $00
	rst  $10                                         ; $763f: $d7
	ld   [hl+], a                                    ; $7640: $22
	adc  a                                           ; $7641: $8f
	ld   bc, $0000                                   ; $7642: $01 $00 $00
	jp   hl                                          ; $7645: $e9


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
	rst  $38                                         ; $7673: $ff
	ld   a, a                                        ; $7674: $7f
	nop                                              ; $7675: $00
	nop                                              ; $7676: $00
	cp   c                                           ; $7677: $b9
	ld   c, $8f                                      ; $7678: $0e $8f
	ld   bc, $0000                                   ; $767a: $01 $00 $00
	rst  JumpTable                                         ; $767d: $df
	ld   b, e                                        ; $767e: $43
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
	rst  $38                                         ; $76ab: $ff
	ld   a, a                                        ; $76ac: $7f
	nop                                              ; $76ad: $00
	nop                                              ; $76ae: $00
	ld   a, a                                        ; $76af: $7f
	ld   c, a                                        ; $76b0: $4f
	db   $fd                                         ; $76b1: $fd
	ld   a, $00                                      ; $76b2: $3e $00
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

jr_08a_76c9:
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
	rst  $38                                         ; $76e3: $ff
	ld   a, a                                        ; $76e4: $7f
	nop                                              ; $76e5: $00
	nop                                              ; $76e6: $00
	ld   b, b                                        ; $76e7: $40
	ld   [bc], a                                     ; $76e8: $02
	inc  [hl]                                        ; $76e9: $34
	nop                                              ; $76ea: $00
	nop                                              ; $76eb: $00
	nop                                              ; $76ec: $00
	ld   a, a                                        ; $76ed: $7f
	ld   sp, $000a                                   ; $76ee: $31 $0a $00
	nop                                              ; $76f1: $00
	ld   d, b                                        ; $76f2: $50
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
	rst  $38                                         ; $771b: $ff
	ld   a, a                                        ; $771c: $7f
	nop                                              ; $771d: $00
	nop                                              ; $771e: $00
	ld   l, e                                        ; $771f: $6b
	ld   [bc], a                                     ; $7720: $02
	nop                                              ; $7721: $00
	ld   d, b                                        ; $7722: $50
	nop                                              ; $7723: $00
	nop                                              ; $7724: $00
	inc  d                                           ; $7725: $14
	jr   jr_08a_7728                                 ; $7726: $18 $00

jr_08a_7728:
	inc  l                                           ; $7728: $2c
	ld   l, $19                                      ; $7729: $2e $19
	nop                                              ; $772b: $00
	nop                                              ; $772c: $00
	nop                                              ; $772d: $00
	inc  l                                           ; $772e: $2c
	ld   a, a                                        ; $772f: $7f
	rrca                                             ; $7730: $0f
	ld   l, $19                                      ; $7731: $2e $19
	nop                                              ; $7733: $00
	nop                                              ; $7734: $00
	inc  d                                           ; $7735: $14
	jr   jr_08a_76c9                                 ; $7736: $18 $91

	ld   h, [hl]                                     ; $7738: $66
	nop                                              ; $7739: $00
	inc  l                                           ; $773a: $2c
	nop                                              ; $773b: $00
	nop                                              ; $773c: $00
	inc  d                                           ; $773d: $14
	jr   jr_08a_77bf                                 ; $773e: $18 $7f

	rrca                                             ; $7740: $0f
	nop                                              ; $7741: $00
	inc  l                                           ; $7742: $2c
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
	rst  $38                                         ; $7753: $ff
	ld   a, a                                        ; $7754: $7f
	nop                                              ; $7755: $00
	nop                                              ; $7756: $00
	ld   hl, sp+$2a                                  ; $7757: $f8 $2a
	ld   b, b                                        ; $7759: $40
	ld   bc, $0000                                   ; $775a: $01 $00 $00
	add  b                                           ; $775d: $80
	ld   [bc], a                                     ; $775e: $02
	db   $dd                                         ; $775f: $dd
	ld   bc, $400e                                   ; $7760: $01 $0e $40
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
	rst  $38                                         ; $778b: $ff
	ld   a, a                                        ; $778c: $7f
	nop                                              ; $778d: $00
	nop                                              ; $778e: $00
	cpl                                              ; $778f: $2f
	ld   bc, $00a8                                   ; $7790: $01 $a8 $00
	nop                                              ; $7793: $00
	nop                                              ; $7794: $00
	ldh  [rP1], a                                    ; $7795: $e0 $00
	ld   l, c                                        ; $7797: $69
	nop                                              ; $7798: $00
	add  b                                           ; $7799: $80
	rla                                              ; $779a: $17
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

jr_08a_77bf:
	nop                                              ; $77bf: $00
	nop                                              ; $77c0: $00
	nop                                              ; $77c1: $00
	nop                                              ; $77c2: $00
	rst  $38                                         ; $77c3: $ff
	ld   a, a                                        ; $77c4: $7f
	nop                                              ; $77c5: $00
	nop                                              ; $77c6: $00
	ld   a, a                                        ; $77c7: $7f
	ld   [bc], a                                     ; $77c8: $02
	db   $10                                         ; $77c9: $10
	ld   c, c                                        ; $77ca: $49
	nop                                              ; $77cb: $00
	nop                                              ; $77cc: $00
	ld   c, h                                        ; $77cd: $4c
	ld   bc, $001a                                   ; $77ce: $01 $1a $00
	ld   [$0028], sp                                 ; $77d1: $08 $28 $00
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
	rst  $38                                         ; $77fb: $ff
	ld   a, a                                        ; $77fc: $7f
	nop                                              ; $77fd: $00
	nop                                              ; $77fe: $00
	ld   e, h                                        ; $77ff: $5c
	ld   b, c                                        ; $7800: $41
	ccf                                              ; $7801: $3f
	inc  bc                                          ; $7802: $03
	nop                                              ; $7803: $00
	nop                                              ; $7804: $00
	or   [hl]                                        ; $7805: $b6
	jr   z, @+$36                                    ; $7806: $28 $34

	ld   [bc], a                                     ; $7808: $02
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
	rst  $38                                         ; $7833: $ff
	ld   a, a                                        ; $7834: $7f
	nop                                              ; $7835: $00
	nop                                              ; $7836: $00
	sub  h                                           ; $7837: $94
	ld   d, d                                        ; $7838: $52
	adc  h                                           ; $7839: $8c
	ld   sp, $0000                                   ; $783a: $31 $00 $00
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
	rst  $38                                         ; $786b: $ff
	ld   a, a                                        ; $786c: $7f
	nop                                              ; $786d: $00
	nop                                              ; $786e: $00
	ld   d, h                                        ; $786f: $54
	ld   [hl-], a                                    ; $7870: $32
	ld   c, l                                        ; $7871: $4d
	dec  c                                           ; $7872: $0d
	nop                                              ; $7873: $00
	nop                                              ; $7874: $00
	ld   c, d                                        ; $7875: $4a
	add  hl, hl                                      ; $7876: $29
	jr   jr_08a_7879                                 ; $7877: $18 $00

jr_08a_7879:
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
	rst  $38                                         ; $78a3: $ff
	ld   a, a                                        ; $78a4: $7f
	nop                                              ; $78a5: $00
	nop                                              ; $78a6: $00
	ld   de, $064c                                   ; $78a7: $11 $4c $06
	inc  e                                           ; $78aa: $1c
	nop                                              ; $78ab: $00
	nop                                              ; $78ac: $00
	inc  [hl]                                        ; $78ad: $34
	nop                                              ; $78ae: $00
	dec  c                                           ; $78af: $0d
	nop                                              ; $78b0: $00
	rst  $28                                         ; $78b1: $ef
	ld   d, c                                        ; $78b2: $51
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
	rst  $38                                         ; $78db: $ff
	ld   a, a                                        ; $78dc: $7f
	nop                                              ; $78dd: $00
	nop                                              ; $78de: $00
	ld   a, [bc]                                     ; $78df: $0a
	add  hl, de                                      ; $78e0: $19
	ld   l, b                                        ; $78e1: $68
	ld   [rRAMG], sp                                 ; $78e2: $08 $00 $00
	or   $21                                         ; $78e5: $f6 $21
	ld   [de], a                                     ; $78e7: $12
	ld   a, [hl-]                                    ; $78e8: $3a
	cpl                                              ; $78e9: $2f
	ld   de, $0000                                   ; $78ea: $11 $00 $00
	nop                                              ; $78ed: $00
	jr   c, jr_08a_7902                              ; $78ee: $38 $12

	ld   a, [hl-]                                    ; $78f0: $3a
	ldh  [rSB], a                                    ; $78f1: $e0 $01
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

jr_08a_7902:
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
	rst  $38                                         ; $7913: $ff
	ld   a, a                                        ; $7914: $7f
	nop                                              ; $7915: $00
	nop                                              ; $7916: $00
	halt                                             ; $7917: $76
	inc  b                                           ; $7918: $04
	db   $fc                                         ; $7919: $fc
	ld   b, d                                        ; $791a: $42
	nop                                              ; $791b: $00
	nop                                              ; $791c: $00
	ld   a, a                                        ; $791d: $7f
	ld   bc, $000c                                   ; $791e: $01 $0c $00
	or   l                                           ; $7921: $b5
	ld   d, [hl]                                     ; $7922: $56
	nop                                              ; $7923: $00
	nop                                              ; $7924: $00
	ld   a, a                                        ; $7925: $7f
	ld   bc, $000c                                   ; $7926: $01 $0c $00
	nop                                              ; $7929: $00
	inc  bc                                          ; $792a: $03
	nop                                              ; $792b: $00
	nop                                              ; $792c: $00
	or   l                                           ; $792d: $b5
	ld   d, [hl]                                     ; $792e: $56
	inc  c                                           ; $792f: $0c
	nop                                              ; $7930: $00
	nop                                              ; $7931: $00
	inc  bc                                          ; $7932: $03
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
	rst  $38                                         ; $794b: $ff
	ld   a, a                                        ; $794c: $7f
	nop                                              ; $794d: $00
	nop                                              ; $794e: $00
	ld   c, d                                        ; $794f: $4a
	nop                                              ; $7950: $00
	ld   d, l                                        ; $7951: $55
	ld   bc, $0000                                   ; $7952: $01 $00 $00
	inc  [hl]                                        ; $7955: $34
	nop                                              ; $7956: $00
	ret  nz                                          ; $7957: $c0

	ld   bc, $02a7                                   ; $7958: $01 $a7 $02
	nop                                              ; $795b: $00
	nop                                              ; $795c: $00
	inc  [hl]                                        ; $795d: $34
	nop                                              ; $795e: $00
	ret  nz                                          ; $795f: $c0

	ld   bc, $2279                                   ; $7960: $01 $79 $22
	nop                                              ; $7963: $00
	nop                                              ; $7964: $00
	ccf                                              ; $7965: $3f
	inc  bc                                          ; $7966: $03
	ret  nz                                          ; $7967: $c0

	ld   bc, $2279                                   ; $7968: $01 $79 $22
	nop                                              ; $796b: $00
	nop                                              ; $796c: $00
	ld   a, c                                        ; $796d: $79
	ld   [hl+], a                                    ; $796e: $22
	ret  nz                                          ; $796f: $c0

	ld   bc, $02a7                                   ; $7970: $01 $a7 $02
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
	rst  $38                                         ; $7983: $ff
	ld   a, a                                        ; $7984: $7f
	nop                                              ; $7985: $00
	nop                                              ; $7986: $00
	ld   d, d                                        ; $7987: $52
	ld   h, d                                        ; $7988: $62
	add  hl, de                                      ; $7989: $19
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
	rst  $38                                         ; $79bb: $ff
	ld   a, a                                        ; $79bc: $7f
	nop                                              ; $79bd: $00
	nop                                              ; $79be: $00
	rst  JumpTable                                         ; $79bf: $df
	ld   e, a                                        ; $79c0: $5f
	jr   jr_08a_79c3                                 ; $79c1: $18 $00

jr_08a_79c3:
	nop                                              ; $79c3: $00
	nop                                              ; $79c4: $00
	ld   a, a                                        ; $79c5: $7f
	rrca                                             ; $79c6: $0f
	add  hl, sp                                      ; $79c7: $39
	ld   [bc], a                                     ; $79c8: $02
	ld   [hl-], a                                    ; $79c9: $32
	inc  d                                           ; $79ca: $14
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
	rst  $38                                         ; $79f3: $ff
	ld   a, a                                        ; $79f4: $7f
	nop                                              ; $79f5: $00
	nop                                              ; $79f6: $00
	rst  JumpTable                                         ; $79f7: $df
	ld   e, a                                        ; $79f8: $5f
	jr   jr_08a_79fb                                 ; $79f9: $18 $00

jr_08a_79fb:
	nop                                              ; $79fb: $00
	nop                                              ; $79fc: $00
	ld   a, a                                        ; $79fd: $7f
	rrca                                             ; $79fe: $0f
	add  hl, sp                                      ; $79ff: $39
	ld   [bc], a                                     ; $7a00: $02
	ld   [hl-], a                                    ; $7a01: $32
	inc  d                                           ; $7a02: $14
	nop                                              ; $7a03: $00
	nop                                              ; $7a04: $00
	ld   c, d                                        ; $7a05: $4a
	add  hl, hl                                      ; $7a06: $29
	add  hl, sp                                      ; $7a07: $39
	ld   [bc], a                                     ; $7a08: $02
	ld   [hl-], a                                    ; $7a09: $32
	inc  d                                           ; $7a0a: $14
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
	rst  $38                                         ; $7a2b: $ff
	ld   a, a                                        ; $7a2c: $7f
	nop                                              ; $7a2d: $00
	nop                                              ; $7a2e: $00
	ld   a, a                                        ; $7a2f: $7f
	ld   b, e                                        ; $7a30: $43
	sbc  b                                           ; $7a31: $98
	ld   [hl+], a                                    ; $7a32: $22
	nop                                              ; $7a33: $00
	nop                                              ; $7a34: $00
	jr   nz, jr_08a_7a83                             ; $7a35: $20 $4c

	scf                                              ; $7a37: $37
	jr   jr_08a_79c3                                 ; $7a38: $18 $89

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
	rst  $38                                         ; $7a63: $ff
	ld   a, a                                        ; $7a64: $7f
	nop                                              ; $7a65: $00
	nop                                              ; $7a66: $00
	ld   e, a                                        ; $7a67: $5f
	ld   [bc], a                                     ; $7a68: $02
	or   $00                                         ; $7a69: $f6 $00
	nop                                              ; $7a6b: $00
	nop                                              ; $7a6c: $00
	ld   [hl-], a                                    ; $7a6d: $32
	ld   bc, $2b2e                                   ; $7a6e: $01 $2e $2b
	ld   h, b                                        ; $7a71: $60
	ld   bc, $0000                                   ; $7a72: $01 $00 $00
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

jr_08a_7a83:
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
	rst  $38                                         ; $7a9b: $ff
	ld   a, a                                        ; $7a9c: $7f
	nop                                              ; $7a9d: $00
	nop                                              ; $7a9e: $00
	ld   e, a                                        ; $7a9f: $5f
	ld   l, e                                        ; $7aa0: $6b
	ld   d, $42                                      ; $7aa1: $16 $42
	nop                                              ; $7aa3: $00
	nop                                              ; $7aa4: $00
	or   [hl]                                        ; $7aa5: $b6
	jr   z, jr_08a_7b0f                              ; $7aa6: $28 $67

	ccf                                              ; $7aa8: $3f
	ccf                                              ; $7aa9: $3f
	inc  bc                                          ; $7aaa: $03
	nop                                              ; $7aab: $00
	nop                                              ; $7aac: $00
	or   [hl]                                        ; $7aad: $b6
	jr   z, jr_08a_7ac7                              ; $7aae: $28 $17

	ld   [bc], a                                     ; $7ab0: $02
	ccf                                              ; $7ab1: $3f
	inc  bc                                          ; $7ab2: $03
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

jr_08a_7ac7:
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
	rst  $38                                         ; $7ad3: $ff
	ld   a, a                                        ; $7ad4: $7f
	nop                                              ; $7ad5: $00
	nop                                              ; $7ad6: $00
	add  hl, sp                                      ; $7ad7: $39
	inc  bc                                          ; $7ad8: $03
	pop  af                                          ; $7ad9: $f1
	dec  b                                           ; $7ada: $05
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
	rst  $38                                         ; $7b0b: $ff
	ld   a, a                                        ; $7b0c: $7f
	nop                                              ; $7b0d: $00
	nop                                              ; $7b0e: $00

jr_08a_7b0f:
	sbc  b                                           ; $7b0f: $98
	nop                                              ; $7b10: $00
	and  b                                           ; $7b11: $a0
	ld   h, c                                        ; $7b12: $61
	nop                                              ; $7b13: $00
	nop                                              ; $7b14: $00
	rra                                              ; $7b15: $1f
	ld   b, e                                        ; $7b16: $43
	ld   l, a                                        ; $7b17: $6f
	nop                                              ; $7b18: $00
	ld   e, l                                        ; $7b19: $5d
	ld   bc, $0000                                   ; $7b1a: $01 $00 $00
	ld   c, l                                        ; $7b1d: $4d
	ld   d, [hl]                                     ; $7b1e: $56
	ld   l, a                                        ; $7b1f: $6f
	nop                                              ; $7b20: $00
	rra                                              ; $7b21: $1f
	ld   b, e                                        ; $7b22: $43
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
	rst  $38                                         ; $7b43: $ff
	ld   a, a                                        ; $7b44: $7f
	nop                                              ; $7b45: $00
	nop                                              ; $7b46: $00
	dec  b                                           ; $7b47: $05
	inc  e                                           ; $7b48: $1c
	jr   nz, jr_08a_7b4d                             ; $7b49: $20 $02

	nop                                              ; $7b4b: $00
	nop                                              ; $7b4c: $00

jr_08a_7b4d:
	jr   nz, jr_08a_7b50                             ; $7b4d: $20 $01

	inc  d                                           ; $7b4f: $14

jr_08a_7b50:
	ld   a, h                                        ; $7b50: $7c
	jr   nz, jr_08a_7bd0                             ; $7b51: $20 $7d

	nop                                              ; $7b53: $00
	nop                                              ; $7b54: $00
	inc  d                                           ; $7b55: $14
	ld   a, h                                        ; $7b56: $7c
	rra                                              ; $7b57: $1f
	inc  bc                                          ; $7b58: $03
	jr   nz, jr_08a_7bd8                             ; $7b59: $20 $7d

	nop                                              ; $7b5b: $00
	nop                                              ; $7b5c: $00
	dec  h                                           ; $7b5d: $25
	ld   a, a                                        ; $7b5e: $7f
	ccf                                              ; $7b5f: $3f
	ld   bc, $0012                                   ; $7b60: $01 $12 $00
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
	rst  $38                                         ; $7b7b: $ff
	ld   a, a                                        ; $7b7c: $7f
	nop                                              ; $7b7d: $00
	nop                                              ; $7b7e: $00
	ld   c, [hl]                                     ; $7b7f: $4e
	ld   a, b                                        ; $7b80: $78
	ld   b, $34                                      ; $7b81: $06 $34
	nop                                              ; $7b83: $00
	nop                                              ; $7b84: $00
	sbc  a                                           ; $7b85: $9f
	inc  bc                                          ; $7b86: $03
	inc  [hl]                                        ; $7b87: $34
	ld   [bc], a                                     ; $7b88: $02
	nop                                              ; $7b89: $00
	nop                                              ; $7b8a: $00
	nop                                              ; $7b8b: $00
	nop                                              ; $7b8c: $00
	ld   hl, sp+$5e                                  ; $7b8d: $f8 $5e
	rla                                              ; $7b8f: $17
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
	rst  $38                                         ; $7bb3: $ff
	ld   a, a                                        ; $7bb4: $7f
	nop                                              ; $7bb5: $00
	nop                                              ; $7bb6: $00
	ld   sp, hl                                      ; $7bb7: $f9
	ld   a, [bc]                                     ; $7bb8: $0a
	sub  l                                           ; $7bb9: $95
	ld   bc, $0000                                   ; $7bba: $01 $00 $00
	db   $ec                                         ; $7bbd: $ec
	nop                                              ; $7bbe: $00
	ld   a, [de]                                     ; $7bbf: $1a
	nop                                              ; $7bc0: $00
	ld   [de], a                                     ; $7bc1: $12
	ld   [rRAMG], sp                                 ; $7bc2: $08 $00 $00
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

jr_08a_7bd0:
	nop                                              ; $7bd0: $00
	nop                                              ; $7bd1: $00
	nop                                              ; $7bd2: $00
	nop                                              ; $7bd3: $00
	nop                                              ; $7bd4: $00
	nop                                              ; $7bd5: $00
	nop                                              ; $7bd6: $00
	nop                                              ; $7bd7: $00

jr_08a_7bd8:
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
	rst  $38                                         ; $7beb: $ff
	ld   a, a                                        ; $7bec: $7f
	nop                                              ; $7bed: $00
	nop                                              ; $7bee: $00
	ld   a, a                                        ; $7bef: $7f
	rrca                                             ; $7bf0: $0f
	ld   e, l                                        ; $7bf1: $5d
	ld   [bc], a                                     ; $7bf2: $02
	nop                                              ; $7bf3: $00
	nop                                              ; $7bf4: $00
	ld   [hl-], a                                    ; $7bf5: $32
	ld   bc, $55bf                                   ; $7bf6: $01 $bf $55
	scf                                              ; $7bf9: $37
	jr   jr_08a_7bfc                                 ; $7bfa: $18 $00

jr_08a_7bfc:
	nop                                              ; $7bfc: $00
	ld   [hl-], a                                    ; $7bfd: $32
	ld   bc, $38d8                                   ; $7bfe: $01 $d8 $38
	ld   de, $0004                                   ; $7c01: $11 $04 $00
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
	rst  $38                                         ; $7c23: $ff
	ld   a, a                                        ; $7c24: $7f
	nop                                              ; $7c25: $00
	nop                                              ; $7c26: $00
	rst  JumpTable                                         ; $7c27: $df
	ld   e, a                                        ; $7c28: $5f
	nop                                              ; $7c29: $00
	ld   [hl], b                                     ; $7c2a: $70
	nop                                              ; $7c2b: $00
	nop                                              ; $7c2c: $00
	ld   a, a                                        ; $7c2d: $7f
	rrca                                             ; $7c2e: $0f
	sub  $1d                                         ; $7c2f: $d6 $1d
	nop                                              ; $7c31: $00
	jr   nz, jr_08a_7c34                             ; $7c32: $20 $00

jr_08a_7c34:
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
	rst  $38                                         ; $7c5b: $ff
	ld   a, a                                        ; $7c5c: $7f
	nop                                              ; $7c5d: $00
	nop                                              ; $7c5e: $00
	ld   l, e                                        ; $7c5f: $6b
	dec  [hl]                                        ; $7c60: $35
	add  hl, bc                                      ; $7c61: $09
	ld   [bc], a                                     ; $7c62: $02
	nop                                              ; $7c63: $00
	nop                                              ; $7c64: $00
	ret  c                                           ; $7c65: $d8

	ld   [bc], a                                     ; $7c66: $02
	rst  $30                                         ; $7c67: $f7
	ld   l, d                                        ; $7c68: $6a
	ld   c, a                                        ; $7c69: $4f
	ld   l, d                                        ; $7c6a: $6a
	nop                                              ; $7c6b: $00
	nop                                              ; $7c6c: $00
	ld   e, d                                        ; $7c6d: $5a
	inc  e                                           ; $7c6e: $1c
	ret  c                                           ; $7c6f: $d8

	ld   [bc], a                                     ; $7c70: $02
	ld   c, a                                        ; $7c71: $4f
	ld   l, d                                        ; $7c72: $6a
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
	rst  $38                                         ; $7c93: $ff
	ld   a, a                                        ; $7c94: $7f
	nop                                              ; $7c95: $00
	nop                                              ; $7c96: $00
	ld   d, [hl]                                     ; $7c97: $56
	ld   e, $1a                                      ; $7c98: $1e $1a
	nop                                              ; $7c9a: $00
	nop                                              ; $7c9b: $00
	nop                                              ; $7c9c: $00
	jr   nz, jr_08a_7ca2                             ; $7c9d: $20 $03

	ld   c, d                                        ; $7c9f: $4a
	add  hl, hl                                      ; $7ca0: $29
	xor  l                                           ; $7ca1: $ad

jr_08a_7ca2:
	ld   a, [hl]                                     ; $7ca2: $7e
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
	rst  $38                                         ; $7ccb: $ff
	ld   a, a                                        ; $7ccc: $7f
	nop                                              ; $7ccd: $00
	nop                                              ; $7cce: $00
	ld   a, a                                        ; $7ccf: $7f
	ld   b, e                                        ; $7cd0: $43
	db   $10                                         ; $7cd1: $10
	dec  b                                           ; $7cd2: $05
	nop                                              ; $7cd3: $00
	nop                                              ; $7cd4: $00
	adc  b                                           ; $7cd5: $88
	ld   bc, $2ab9                                   ; $7cd6: $01 $b9 $2a
	adc  c                                           ; $7cd9: $89
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
	rst  $38                                         ; $7d03: $ff
	ld   a, a                                        ; $7d04: $7f
	nop                                              ; $7d05: $00
	nop                                              ; $7d06: $00
	cp   d                                           ; $7d07: $ba
	ld   [hl], $d6                                   ; $7d08: $36 $d6
	dec  e                                           ; $7d0a: $1d
	nop                                              ; $7d0b: $00
	nop                                              ; $7d0c: $00
	rla                                              ; $7d0d: $17
	nop                                              ; $7d0e: $00
	ld   [hl-], a                                    ; $7d0f: $32
	ld   bc, $0000                                   ; $7d10: $01 $00 $00
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
	rst  $38                                         ; $7d3b: $ff
	ld   a, a                                        ; $7d3c: $7f
	nop                                              ; $7d3d: $00
	nop                                              ; $7d3e: $00
	cp   e                                           ; $7d3f: $bb
	ld   l, $73                                      ; $7d40: $2e $73
	ld   bc, $0000                                   ; $7d42: $01 $00 $00
	xor  h                                           ; $7d45: $ac
	nop                                              ; $7d46: $00
	ccf                                              ; $7d47: $3f
	ld   c, b                                        ; $7d48: $48
	ld   c, $00                                      ; $7d49: $0e $00
	nop                                              ; $7d4b: $00
	nop                                              ; $7d4c: $00
	xor  h                                           ; $7d4d: $ac
	nop                                              ; $7d4e: $00
	ld   c, $48                                      ; $7d4f: $0e $48
	dec  b                                           ; $7d51: $05
	inc  e                                           ; $7d52: $1c
	nop                                              ; $7d53: $00
	nop                                              ; $7d54: $00
	xor  h                                           ; $7d55: $ac
	nop                                              ; $7d56: $00
	ccf                                              ; $7d57: $3f
	ld   c, b                                        ; $7d58: $48
	ldh  [$2a], a                                    ; $7d59: $e0 $2a
	nop                                              ; $7d5b: $00
	nop                                              ; $7d5c: $00
	ccf                                              ; $7d5d: $3f
	ld   c, b                                        ; $7d5e: $48
	sbc  e                                           ; $7d5f: $9b
	ld   [bc], a                                     ; $7d60: $02
	pop  de                                          ; $7d61: $d1
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
	rst  $38                                         ; $7d73: $ff
	ld   a, a                                        ; $7d74: $7f
	nop                                              ; $7d75: $00
	nop                                              ; $7d76: $00
	cp   c                                           ; $7d77: $b9
	ld   c, $8f                                      ; $7d78: $0e $8f
	ld   bc, $0000                                   ; $7d7a: $01 $00 $00
	rst  JumpTable                                         ; $7d7d: $df
	ld   b, e                                        ; $7d7e: $43
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
	rst  $38                                         ; $7dab: $ff
	ld   a, a                                        ; $7dac: $7f
	nop                                              ; $7dad: $00
	nop                                              ; $7dae: $00
	add  hl, de                                      ; $7daf: $19
	nop                                              ; $7db0: $00
	sub  d                                           ; $7db1: $92
	jr   jr_08a_7db4                                 ; $7db2: $18 $00

jr_08a_7db4:
	nop                                              ; $7db4: $00
	dec  a                                           ; $7db5: $3d
	ld   b, [hl]                                     ; $7db6: $46
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
	rst  $38                                         ; $7de3: $ff
	ld   a, a                                        ; $7de4: $7f
	nop                                              ; $7de5: $00
	nop                                              ; $7de6: $00
	add  hl, de                                      ; $7de7: $19
	nop                                              ; $7de8: $00
	ld   b, b                                        ; $7de9: $40
	ld   a, l                                        ; $7dea: $7d
	nop                                              ; $7deb: $00
	nop                                              ; $7dec: $00
	ret  nz                                          ; $7ded: $c0

	ld   [bc], a                                     ; $7dee: $02
	sub  b                                           ; $7def: $90
	nop                                              ; $7df0: $00
	ret  nz                                          ; $7df1: $c0

	ld   b, b                                        ; $7df2: $40
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
	rst  $38                                         ; $7e1b: $ff
	ld   a, a                                        ; $7e1c: $7f
	nop                                              ; $7e1d: $00
	nop                                              ; $7e1e: $00
	cp   c                                           ; $7e1f: $b9
	ld   c, $70                                      ; $7e20: $0e $70
	ld   bc, $0000                                   ; $7e22: $01 $00 $00
	inc  bc                                          ; $7e25: $03
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
	rst  $38                                         ; $7e53: $ff
	ld   a, a                                        ; $7e54: $7f
	nop                                              ; $7e55: $00
	nop                                              ; $7e56: $00
	di                                               ; $7e57: $f3
	dec  b                                           ; $7e58: $05
	ret  nc                                          ; $7e59: $d0

	inc  b                                           ; $7e5a: $04
	nop                                              ; $7e5b: $00
	nop                                              ; $7e5c: $00
	reti                                             ; $7e5d: $d9


	ld   l, $1b                                      ; $7e5e: $2e $1b
	nop                                              ; $7e60: $00
	adc  b                                           ; $7e61: $88
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
	rst  $38                                         ; $7e8b: $ff
	ld   a, a                                        ; $7e8c: $7f
	nop                                              ; $7e8d: $00
	nop                                              ; $7e8e: $00
	sub  d                                           ; $7e8f: $92
	ld   e, [hl]                                     ; $7e90: $5e
	daa                                              ; $7e91: $27
	dec  [hl]                                        ; $7e92: $35
	nop                                              ; $7e93: $00
	nop                                              ; $7e94: $00
	and  h                                           ; $7e95: $a4
	jr   jr_08a_7e98                                 ; $7e96: $18 $00

jr_08a_7e98:
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
	rst  $38                                         ; $7ec3: $ff
	ld   a, a                                        ; $7ec4: $7f
	nop                                              ; $7ec5: $00
	nop                                              ; $7ec6: $00
	adc  $3d                                         ; $7ec7: $ce $3d
	rst  $20                                         ; $7ec9: $e7
	jr   nz, jr_08a_7ecc                             ; $7eca: $20 $00

jr_08a_7ecc:
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
	rst  $38                                         ; $7efb: $ff
	ld   a, a                                        ; $7efc: $7f
	nop                                              ; $7efd: $00
	nop                                              ; $7efe: $00
	inc  de                                          ; $7eff: $13
	ld   [hl+], a                                    ; $7f00: $22
	xor  e                                           ; $7f01: $ab
	inc  c                                           ; $7f02: $0c
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
	rst  $38                                         ; $7f33: $ff
	ld   a, a                                        ; $7f34: $7f
	nop                                              ; $7f35: $00
	nop                                              ; $7f36: $00
	inc  e                                           ; $7f37: $1c
	ld   b, e                                        ; $7f38: $43
	ld   d, e                                        ; $7f39: $53
	ld   bc, $0000                                   ; $7f3a: $01 $00 $00
	db   $10                                         ; $7f3d: $10
	ld   b, d                                        ; $7f3e: $42
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
	rst  $38                                         ; $7f6b: $ff
	ld   a, a                                        ; $7f6c: $7f
	nop                                              ; $7f6d: $00
	nop                                              ; $7f6e: $00
	cp   c                                           ; $7f6f: $b9
	ld   a, [de]                                     ; $7f70: $1a
	ld   c, $01                                      ; $7f71: $0e $01
	nop                                              ; $7f73: $00
	nop                                              ; $7f74: $00
	nop                                              ; $7f75: $00
	nop                                              ; $7f76: $00

Call_08a_7f77:
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
	rst  $38                                         ; $7fa3: $ff
	ld   a, a                                        ; $7fa4: $7f
	nop                                              ; $7fa5: $00
	nop                                              ; $7fa6: $00
	sub  h                                           ; $7fa7: $94
	ld   d, d                                        ; $7fa8: $52
	ld   c, d                                        ; $7fa9: $4a
	add  hl, hl                                      ; $7faa: $29
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
