; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $033", ROMX[$4000], BANK[$33]

	cp   a                                           ; $4000: $bf
	inc  b                                           ; $4001: $04
	adc  h                                           ; $4002: $8c
	nop                                              ; $4003: $00
	inc  bc                                          ; $4004: $03

Jump_033_4005:
	rlca                                             ; $4005: $07
	nop                                              ; $4006: $00
	ld   c, $06                                      ; $4007: $0e $06
	add  b                                           ; $4009: $80
	rlca                                             ; $400a: $07
	nop                                              ; $400b: $00
	rra                                              ; $400c: $1f
	add  c                                           ; $400d: $81
	rrca                                             ; $400e: $0f
	ld   bc, $1f3f                                   ; $400f: $01 $3f $1f
	add  b                                           ; $4012: $80
	rla                                              ; $4013: $17
	inc  b                                           ; $4014: $04
	ld   [de], a                                     ; $4015: $12
	ld   e, $0f                                      ; $4016: $1e $0f
	rla                                              ; $4018: $17
	dec  hl                                          ; $4019: $2b
	adc  l                                           ; $401a: $8d
	nop                                              ; $401b: $00
	ld   [$0080], sp                                 ; $401c: $08 $80 $00
	ldh  [$80], a                                    ; $401f: $e0 $80
	db   $fc                                         ; $4021: $fc
	ldh  [$de], a                                    ; $4022: $e0 $de
	call c, $81f4                                    ; $4024: $dc $f4 $81
	db   $fc                                         ; $4027: $fc
	rrca                                             ; $4028: $0f
	db   $f4                                         ; $4029: $f4
	db   $fc                                         ; $402a: $fc
	ldh  a, [c]                                      ; $402b: $f2
	ldh  a, [$c3]                                    ; $402c: $f0 $c3
	inc  bc                                          ; $402e: $03
	ld   e, c                                        ; $402f: $59
	dec  sp                                          ; $4030: $3b
	inc  a                                           ; $4031: $3c
	dec  a                                           ; $4032: $3d
	ld   h, e                                        ; $4033: $63
	inc  bc                                          ; $4034: $03
	ld   a, e                                        ; $4035: $7b
	inc  bc                                          ; $4036: $03
	cp   a                                           ; $4037: $bf
	ld   b, a                                        ; $4038: $47
	add  d                                           ; $4039: $82
	ld   a, [hl]                                     ; $403a: $7e
	inc  c                                           ; $403b: $0c
	rst  JumpTable                                         ; $403c: $df
	rra                                              ; $403d: $1f
	ld   h, h                                        ; $403e: $64
	inc  b                                           ; $403f: $04
	ld   a, [de]                                     ; $4040: $1a
	inc  bc                                          ; $4041: $03
	dec  c                                           ; $4042: $0d
	rlca                                             ; $4043: $07
	inc  bc                                          ; $4044: $03
	ld   b, $0e                                      ; $4045: $06 $0e
	nop                                              ; $4047: $00
	rlca                                             ; $4048: $07
	add  c                                           ; $4049: $81
	nop                                              ; $404a: $00
	nop                                              ; $404b: $00
	pop  bc                                          ; $404c: $c1
	add  c                                           ; $404d: $81
	cp   $03                                         ; $404e: $fe $03
	cp   l                                           ; $4050: $bd
	db   $fc                                         ; $4051: $fc
	add  d                                           ; $4052: $82
	nop                                              ; $4053: $00
	add  b                                           ; $4054: $80
	ld   hl, sp-$80                                  ; $4055: $f8 $80
	jr   c, jr_033_4069                              ; $4057: $38 $10

	ld   a, d                                        ; $4059: $7a
	ld   hl, sp-$15                                  ; $405a: $f8 $eb
	ld   [$1a9a], a                                  ; $405c: $ea $9a $1a
	ld   sp, hl                                      ; $405f: $f9
	ld   hl, sp+$7a                                  ; $4060: $f8 $7a
	ld   a, b                                        ; $4062: $78
	ld   [hl], h                                     ; $4063: $74
	ld   [hl], b                                     ; $4064: $70
	ret  z                                           ; $4065: $c8

	ret  nz                                          ; $4066: $c0

	jr   nc, jr_033_4069                             ; $4067: $30 $00

jr_033_4069:
	ret  nz                                          ; $4069: $c0

	adc  a                                           ; $406a: $8f
	nop                                              ; $406b: $00
	inc  bc                                          ; $406c: $03
	ld   c, $00                                      ; $406d: $0e $00
	dec  e                                           ; $406f: $1d
	inc  c                                           ; $4070: $0c
	add  b                                           ; $4071: $80
	rlca                                             ; $4072: $07
	add  d                                           ; $4073: $82
	rrca                                             ; $4074: $0f
	ld   bc, $1f3f                                   ; $4075: $01 $3f $1f
	add  b                                           ; $4078: $80
	rla                                              ; $4079: $17
	inc  b                                           ; $407a: $04
	inc  de                                          ; $407b: $13
	rra                                              ; $407c: $1f

jr_033_407d:
	dec  c                                           ; $407d: $0d
	inc  de                                          ; $407e: $13
	dec  l                                           ; $407f: $2d

Call_033_4080:
	adc  l                                           ; $4080: $8d
	nop                                              ; $4081: $00
	ld   [$0080], sp                                 ; $4082: $08 $80 $00
	ldh  [$80], a                                    ; $4085: $e0 $80
	cp   $e0                                         ; $4087: $fe $e0
	rst  $28                                         ; $4089: $ef
	xor  $fa                                         ; $408a: $ee $fa
	add  c                                           ; $408c: $81
	cp   $09                                         ; $408d: $fe $09
	ld   a, d                                        ; $408f: $7a
	ld   a, [hl]                                     ; $4090: $7e
	ld   sp, hl                                      ; $4091: $f9
	ld   hl, sp-$07                                  ; $4092: $f8 $f9
	inc  bc                                          ; $4094: $03
	add  hl, sp                                      ; $4095: $39
	inc  bc                                          ; $4096: $03
	ld   e, h                                        ; $4097: $5c
	dec  a                                           ; $4098: $3d
	add  b                                           ; $4099: $80
	dec  sp                                          ; $409a: $3b
	dec  b                                           ; $409b: $05
	ld   h, a                                        ; $409c: $67
	rlca                                             ; $409d: $07
	ld   l, a                                        ; $409e: $6f
	rrca                                             ; $409f: $0f
	xor  a                                           ; $40a0: $af
	ld   c, a                                        ; $40a1: $4f
	add  d                                           ; $40a2: $82
	ld   a, a                                        ; $40a3: $7f
	inc  b                                           ; $40a4: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40a5: $cf
	rrca                                             ; $40a6: $0f
	halt                                             ; $40a7: $76
	ld   b, $08                                      ; $40a8: $06 $08
	add  b                                           ; $40aa: $80
	ld   bc, $0381                                   ; $40ab: $01 $81 $03
	inc  b                                           ; $40ae: $04
	rlca                                             ; $40af: $07
	nop                                              ; $40b0: $00
	inc  bc                                          ; $40b1: $03
	nop                                              ; $40b2: $00
	pop  hl                                          ; $40b3: $e1
	add  c                                           ; $40b4: $81
	cp   $03                                         ; $40b5: $fe $03
	db   $dd                                         ; $40b7: $dd
	db   $fc                                         ; $40b8: $fc
	ld   b, d                                        ; $40b9: $42
	add  b                                           ; $40ba: $80
	add  b                                           ; $40bb: $80
	ld   hl, sp-$80                                  ; $40bc: $f8 $80
	ret  c                                           ; $40be: $d8

	inc  bc                                          ; $40bf: $03
	or   d                                           ; $40c0: $b2
	or   b                                           ; $40c1: $b0
	inc  [hl]                                        ; $40c2: $34
	ld   [hl], h                                     ; $40c3: $74
	add  b                                           ; $40c4: $80
	ld   l, b                                        ; $40c5: $68
	inc  c                                           ; $40c6: $0c
	jp   c, Jump_033_7498                            ; $40c7: $da $98 $74

	ld   [hl], b                                     ; $40ca: $70
	jr   nc, jr_033_407d                             ; $40cb: $30 $b0

	xor  b                                           ; $40cd: $a8
	and  b                                           ; $40ce: $a0
	db   $10                                         ; $40cf: $10
	add  b                                           ; $40d0: $80
	ld   h, b                                        ; $40d1: $60
	nop                                              ; $40d2: $00
	add  b                                           ; $40d3: $80
	adc  l                                           ; $40d4: $8d
	nop                                              ; $40d5: $00
	ld   b, $01                                      ; $40d6: $06 $01
	nop                                              ; $40d8: $00
	inc  bc                                          ; $40d9: $03
	ld   bc, $030f                                   ; $40da: $01 $0f $03
	rra                                              ; $40dd: $1f
	add  c                                           ; $40de: $81
	rrca                                             ; $40df: $0f
	ld   bc, $1f3f                                   ; $40e0: $01 $3f $1f
	add  b                                           ; $40e3: $80
	rrca                                             ; $40e4: $0f
	inc  b                                           ; $40e5: $04
	dec  b                                           ; $40e6: $05
	dec  e                                           ; $40e7: $1d
	dec  de                                          ; $40e8: $1b
	rrca                                             ; $40e9: $0f
	inc  sp                                          ; $40ea: $33
	adc  e                                           ; $40eb: $8b
	nop                                              ; $40ec: $00
	ld   a, [bc]                                     ; $40ed: $0a
	add  b                                           ; $40ee: $80
	nop                                              ; $40ef: $00
	ret  nz                                          ; $40f0: $c0

	add  b                                           ; $40f1: $80
	and  b                                           ; $40f2: $a0
	add  b                                           ; $40f3: $80
	ld   hl, sp-$20                                  ; $40f4: $f8 $e0
	call c, $e8d8                                    ; $40f6: $dc $d8 $e8
	add  c                                           ; $40f9: $81
	ld   hl, sp+$20                                  ; $40fa: $f8 $20
	add  sp, -$08                                    ; $40fc: $e8 $f8
	db   $e4                                         ; $40fe: $e4
	ldh  [$e7], a                                    ; $40ff: $e0 $e7
	inc  bc                                          ; $4101: $03
	add  hl, hl                                      ; $4102: $29
	dec  de                                          ; $4103: $1b
	inc  e                                           ; $4104: $1c
	dec  e                                           ; $4105: $1d
	ld   [hl], e                                     ; $4106: $73
	inc  bc                                          ; $4107: $03
	or   a                                           ; $4108: $b7
	ld   b, a                                        ; $4109: $47
	ld   a, [hl]                                     ; $410a: $7e
	ld   l, [hl]                                     ; $410b: $6e
	ld   a, h                                        ; $410c: $7c
	ld   a, l                                        ; $410d: $7d
	db   $dd                                         ; $410e: $dd
	dec  e                                           ; $410f: $1d
	ld   h, a                                        ; $4110: $67
	ld   b, $11                                      ; $4111: $06 $11
	ld   bc, $0600                                   ; $4113: $01 $00 $06
	inc  d                                           ; $4116: $14
	ld   c, $09                                      ; $4117: $0e $09
	dec  c                                           ; $4119: $0d
	jr   jr_033_411c                                 ; $411a: $18 $00

jr_033_411c:
	rrca                                             ; $411c: $0f
	add  c                                           ; $411d: $81
	nop                                              ; $411e: $00
	nop                                              ; $411f: $00
	add  c                                           ; $4120: $81
	add  c                                           ; $4121: $81
	cp   $03                                         ; $4122: $fe $03
	ld   a, l                                        ; $4124: $7d
	db   $fc                                         ; $4125: $fc
	ld   [bc], a                                     ; $4126: $02
	nop                                              ; $4127: $00
	add  b                                           ; $4128: $80
	ld   hl, sp-$80                                  ; $4129: $f8 $80
	jr   c, jr_033_4130                              ; $412b: $38 $03

	ld   a, [$ebf8]                                  ; $412d: $fa $f8 $eb

jr_033_4130:
	ld   [$1a80], a                                  ; $4130: $ea $80 $1a
	add  b                                           ; $4133: $80
	ld   a, [$f908]                                  ; $4134: $fa $08 $f9
	ld   hl, sp-$0a                                  ; $4137: $f8 $f6
	ldh  a, [$88]                                    ; $4139: $f0 $88
	add  b                                           ; $413b: $80
	ld   [hl], b                                     ; $413c: $70
	nop                                              ; $413d: $00
	add  b                                           ; $413e: $80
	add  e                                           ; $413f: $83
	nop                                              ; $4140: $00
	ld   [$0007], sp                                 ; $4141: $08 $07 $00
	rrca                                             ; $4144: $0f
	rlca                                             ; $4145: $07
	ld   b, $07                                      ; $4146: $06 $07
	ld   b, $07                                      ; $4148: $06 $07
	rra                                              ; $414a: $1f
	add  c                                           ; $414b: $81
	rrca                                             ; $414c: $0f
	nop                                              ; $414d: $00
	ccf                                              ; $414e: $3f
	add  c                                           ; $414f: $81
	rra                                              ; $4150: $1f
	add  b                                           ; $4151: $80
	rrca                                             ; $4152: $0f
	ld   a, [bc]                                     ; $4153: $0a
	ld   a, a                                        ; $4154: $7f
	ccf                                              ; $4155: $3f
	daa                                              ; $4156: $27
	ccf                                              ; $4157: $3f
	cpl                                              ; $4158: $2f
	ccf                                              ; $4159: $3f
	ld   d, e                                        ; $415a: $53
	dec  de                                          ; $415b: $1b
	jr   nz, jr_033_415e                             ; $415c: $20 $00

jr_033_415e:
	rra                                              ; $415e: $1f
	add  c                                           ; $415f: $81
	nop                                              ; $4160: $00
	db   $10                                         ; $4161: $10
	add  b                                           ; $4162: $80
	nop                                              ; $4163: $00
	ret  nz                                          ; $4164: $c0

	add  b                                           ; $4165: $80
	jr   nz, jr_033_4168                             ; $4166: $20 $00

jr_033_4168:
	ldh  a, [$e0]                                    ; $4168: $f0 $e0
	ld   hl, sp-$10                                  ; $416a: $f8 $f0
	db   $fc                                         ; $416c: $fc
	ld   hl, sp-$16                                  ; $416d: $f8 $ea
	add  sp, -$0c                                    ; $416f: $e8 $f4
	db   $fc                                         ; $4171: $fc
	add  sp, -$80                                    ; $4172: $e8 $80
	db   $fc                                         ; $4174: $fc
	add  hl, bc                                      ; $4175: $09
	db   $f4                                         ; $4176: $f4
	or   b                                           ; $4177: $b0
	cp   h                                           ; $4178: $bc
	jp   nc, $d4f8                                   ; $4179: $d2 $f8 $d4

	ldh  [$08], a                                    ; $417c: $e0 $08
	nop                                              ; $417e: $00
	ldh  a, [$85]                                    ; $417f: $f0 $85
	nop                                              ; $4181: $00
	add  hl, bc                                      ; $4182: $09
	ld   c, $00                                      ; $4183: $0e $00
	rra                                              ; $4185: $1f
	ld   c, $09                                      ; $4186: $0e $09
	rrca                                             ; $4188: $0f
	add  hl, bc                                      ; $4189: $09
	rrca                                             ; $418a: $0f
	scf                                              ; $418b: $37
	rla                                              ; $418c: $17
	add  [hl]                                        ; $418d: $86
	rra                                              ; $418e: $1f
	ld   bc, $0f2f                                   ; $418f: $01 $2f $0f
	add  b                                           ; $4192: $80
	rlca                                             ; $4193: $07
	ld   bc, $1e3e                                   ; $4194: $01 $3e $1e
	add  b                                           ; $4197: $80
	nop                                              ; $4198: $00
	add  hl, bc                                      ; $4199: $09
	add  hl, sp                                      ; $419a: $39
	nop                                              ; $419b: $00
	dec  bc                                          ; $419c: $0b
	ld   b, $18                                      ; $419d: $06 $18
	ld   c, $3f                                      ; $419f: $0e $3f
	dec  e                                           ; $41a1: $1d
	ld   a, [$803a]                                  ; $41a2: $fa $3a $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41a5: $cf
	add  d                                           ; $41a6: $82
	rst  $30                                         ; $41a7: $f7
	ld   c, $d3                                      ; $41a8: $0e $d3
	db   $db                                         ; $41aa: $db
	db   $eb                                         ; $41ab: $eb
	ei                                               ; $41ac: $fb
	db   $db                                         ; $41ad: $db
	db   $eb                                         ; $41ae: $eb
	ret  z                                           ; $41af: $c8

	ld   hl, sp-$36                                  ; $41b0: $f8 $ca
	db   $db                                         ; $41b2: $db
	db   $fd                                         ; $41b3: $fd
	rst  $30                                         ; $41b4: $f7
	db   $e3                                         ; $41b5: $e3
	ldh  [$1f], a                                    ; $41b6: $e0 $1f
	add  c                                           ; $41b8: $81
	nop                                              ; $41b9: $00
	ld   [$e030], sp                                 ; $41ba: $08 $30 $e0
	ret  nz                                          ; $41bd: $c0

	ldh  [rAUD4LEN], a                               ; $41be: $e0 $20
	ldh  [$b0], a                                    ; $41c0: $e0 $b0
	add  b                                           ; $41c2: $80
	ld   h, b                                        ; $41c3: $60
	add  c                                           ; $41c4: $81
	nop                                              ; $41c5: $00
	nop                                              ; $41c6: $00
	ret  nz                                          ; $41c7: $c0

	add  c                                           ; $41c8: $81
	add  b                                           ; $41c9: $80
	inc  b                                           ; $41ca: $04
	ldh  [$c0], a                                    ; $41cb: $e0 $c0
	sub  b                                           ; $41cd: $90
	add  b                                           ; $41ce: $80
	ld   [$7081], sp                                 ; $41cf: $08 $81 $70
	ld   [bc], a                                     ; $41d2: $02
	ld   a, b                                        ; $41d3: $78
	nop                                              ; $41d4: $00
	ldh  a, [$87]                                    ; $41d5: $f0 $87
	nop                                              ; $41d7: $00
	add  hl, bc                                      ; $41d8: $09

jr_033_41d9:
	ld   c, $00                                      ; $41d9: $0e $00
	rra                                              ; $41db: $1f
	ld   c, $09                                      ; $41dc: $0e $09
	rrca                                             ; $41de: $0f
	add  hl, bc                                      ; $41df: $09
	rrca                                             ; $41e0: $0f
	scf                                              ; $41e1: $37
	rla                                              ; $41e2: $17
	add  [hl]                                        ; $41e3: $86
	rra                                              ; $41e4: $1f
	ld   bc, $0f2f                                   ; $41e5: $01 $2f $0f
	add  b                                           ; $41e8: $80
	rlca                                             ; $41e9: $07
	ld   bc, $1e3e                                   ; $41ea: $01 $3e $1e
	add  b                                           ; $41ed: $80
	nop                                              ; $41ee: $00
	dec  bc                                          ; $41ef: $0b
	ccf                                              ; $41f0: $3f
	nop                                              ; $41f1: $00
	inc  bc                                          ; $41f2: $03
	nop                                              ; $41f3: $00
	rlca                                             ; $41f4: $07
	inc  bc                                          ; $41f5: $03
	dec  e                                           ; $41f6: $1d
	dec  b                                           ; $41f7: $05
	cp   $1e                                         ; $41f8: $fe $1e
	adc  $cf                                         ; $41fa: $ce $cf
	add  b                                           ; $41fc: $80
	rst  $30                                         ; $41fd: $f7
	db   $10                                         ; $41fe: $10
	di                                               ; $41ff: $f3
	ldh  a, [c]                                      ; $4200: $f2
	pop  de                                          ; $4201: $d1
	reti                                             ; $4202: $d9


	db   $eb                                         ; $4203: $eb
	ei                                               ; $4204: $fb
	db   $db                                         ; $4205: $db
	db   $eb                                         ; $4206: $eb
	ret  z                                           ; $4207: $c8

	ld   hl, sp-$36                                  ; $4208: $f8 $ca
	db   $db                                         ; $420a: $db
	db   $fd                                         ; $420b: $fd
	rst  $30                                         ; $420c: $f7
	db   $e3                                         ; $420d: $e3
	ldh  [$1f], a                                    ; $420e: $e0 $1f
	add  c                                           ; $4210: $81
	nop                                              ; $4211: $00
	nop                                              ; $4212: $00
	db   $10                                         ; $4213: $10
	add  c                                           ; $4214: $81
	ldh  [rDIV], a                                   ; $4215: $e0 $04
	jr   nz, jr_033_41d9                             ; $4217: $20 $c0

	or   b                                           ; $4219: $b0
	add  b                                           ; $421a: $80
	ld   b, b                                        ; $421b: $40
	add  c                                           ; $421c: $81
	nop                                              ; $421d: $00
	nop                                              ; $421e: $00
	ret  nz                                          ; $421f: $c0

	add  c                                           ; $4220: $81
	add  b                                           ; $4221: $80
	inc  b                                           ; $4222: $04
	ldh  [$c0], a                                    ; $4223: $e0 $c0
	sub  b                                           ; $4225: $90
	add  b                                           ; $4226: $80
	ld   [$7081], sp                                 ; $4227: $08 $81 $70
	ld   [bc], a                                     ; $422a: $02
	ld   a, b                                        ; $422b: $78
	nop                                              ; $422c: $00
	ldh  a, [$81]                                    ; $422d: $f0 $81
	nop                                              ; $422f: $00
	inc  bc                                          ; $4230: $03
	ld   a, b                                        ; $4231: $78
	ret  nz                                          ; $4232: $c0

	cp   a                                           ; $4233: $bf
	ld   hl, sp-$80                                  ; $4234: $f8 $80
	db   $fd                                         ; $4236: $fd
	add  b                                           ; $4237: $80
	cp   $80                                         ; $4238: $fe $80
	ld   a, [$fd02]                                  ; $423a: $fa $02 $fd
	rst  $38                                         ; $423d: $ff
	ld   a, [$ff80]                                  ; $423e: $fa $80 $ff

jr_033_4241:
	ld   b, $fd                                      ; $4241: $06 $fd
	db   $ec                                         ; $4243: $ec
	rst  $28                                         ; $4244: $ef
	db   $f4                                         ; $4245: $f4
	cp   $f5                                         ; $4246: $fe $f5
	ld   sp, hl                                      ; $4248: $f9
	add  b                                           ; $4249: $80
	inc  bc                                          ; $424a: $03
	ld   a, [bc]                                     ; $424b: $0a
	cp   l                                           ; $424c: $bd
	dec  a                                           ; $424d: $3d
	ld   e, b                                        ; $424e: $58
	ld   e, $26                                      ; $424f: $1e $26
	ld   b, $1e                                      ; $4251: $06 $1e
	nop                                              ; $4253: $00
	rst  $20                                         ; $4254: $e7
	nop                                              ; $4255: $00
	ret  nc                                          ; $4256: $d0

	add  c                                           ; $4257: $81
	ldh  [$0b], a                                    ; $4258: $e0 $0b
	or   b                                           ; $425a: $b0
	add  b                                           ; $425b: $80

jr_033_425c:
	ld   e, h                                        ; $425c: $5c
	ld   b, b                                        ; $425d: $40
	ld   [hl], d                                     ; $425e: $72
	ld   a, h                                        ; $425f: $7c
	ld   [hl], h                                     ; $4260: $74
	ld   a, h                                        ; $4261: $7c
	ld   d, [hl]                                     ; $4262: $56
	ld   d, b                                        ; $4263: $50
	ld   l, h                                        ; $4264: $6c
	ld   h, b                                        ; $4265: $60
	add  b                                           ; $4266: $80
	ldh  [rP1], a                                    ; $4267: $e0 $00
	ret  nc                                          ; $4269: $d0

	add  c                                           ; $426a: $81

jr_033_426b:
	ret  nz                                          ; $426b: $c0

	ld   [bc], a                                     ; $426c: $02
	sub  b                                           ; $426d: $90
	add  b                                           ; $426e: $80
	ld   [$7081], sp                                 ; $426f: $08 $81 $70
	ld   [bc], a                                     ; $4272: $02
	ld   a, b                                        ; $4273: $78
	nop                                              ; $4274: $00
	ldh  a, [$83]                                    ; $4275: $f0 $83
	nop                                              ; $4277: $00
	ld   [$0001], sp                                 ; $4278: $08 $01 $00
	ld   c, $00                                      ; $427b: $0e $00
	stop                                             ; $427d: $10 $00
	stop                                             ; $427f: $10 $00
	rrca                                             ; $4281: $0f
	sub  l                                           ; $4282: $95
	nop                                              ; $4283: $00
	ld   [$00e0], sp                                 ; $4284: $08 $e0 $00
	stop                                             ; $4287: $10 $00
	stop                                             ; $4289: $10 $00
	ld   h, b                                        ; $428b: $60
	nop                                              ; $428c: $00
	add  b                                           ; $428d: $80
	sub  e                                           ; $428e: $93
	nop                                              ; $428f: $00
	ld   b, $3e                                      ; $4290: $06 $3e
	nop                                              ; $4292: $00
	ld   h, c                                        ; $4293: $61
	nop                                              ; $4294: $00
	ld   h, b                                        ; $4295: $60

jr_033_4296:
	db   $10                                         ; $4296: $10
	ld   d, b                                        ; $4297: $50
	add  b                                           ; $4298: $80
	inc  c                                           ; $4299: $0c
	add  c                                           ; $429a: $81
	nop                                              ; $429b: $00
	add  b                                           ; $429c: $80
	ld   [$2802], sp                                 ; $429d: $08 $02 $28
	ld   a, [bc]                                     ; $42a0: $0a
	ld   c, [hl]                                     ; $42a1: $4e

jr_033_42a2:
	add  c                                           ; $42a2: $81
	inc  c                                           ; $42a3: $0c
	add  b                                           ; $42a4: $80
	rrca                                             ; $42a5: $0f
	ld   bc, $0717                                   ; $42a6: $01 $17 $07
	add  c                                           ; $42a9: $81
	nop                                              ; $42aa: $00
	ld   bc, $0c03                                   ; $42ab: $01 $03 $0c
	add  c                                           ; $42ae: $81
	nop                                              ; $42af: $00
	inc  b                                           ; $42b0: $04
	ldh  a, [rP1]                                    ; $42b1: $f0 $00
	ld   [$0400], sp                                 ; $42b3: $08 $00 $04
	add  b                                           ; $42b6: $80
	ld   [$d001], sp                                 ; $42b7: $08 $01 $d0
	jp   nc, $0083                                   ; $42ba: $d2 $83 $00

jr_033_42bd:
	nop                                              ; $42bd: $00
	jr   nc, jr_033_4241                             ; $42be: $30 $81

	or   b                                           ; $42c0: $b0
	dec  bc                                          ; $42c1: $0b
	ldh  [c], a                                      ; $42c2: $e2
	ldh  [$64], a                                    ; $42c3: $e0 $64
	ldh  [$c8], a                                    ; $42c5: $e0 $c8
	ret  nz                                          ; $42c7: $c0

	stop                                             ; $42c8: $10 $00
	jr   jr_033_425c                                 ; $42ca: $18 $90

	ld   [hl], a                                     ; $42cc: $77
	ld   [bc], a                                     ; $42cd: $02
	add  h                                           ; $42ce: $84
	ld   a, [bc]                                     ; $42cf: $0a
	nop                                              ; $42d0: $00
	ld   [hl+], a                                    ; $42d1: $22
	add  c                                           ; $42d2: $81
	db   $10                                         ; $42d3: $10
	ld   [bc], a                                     ; $42d4: $02
	jr   nc, jr_033_42d7                             ; $42d5: $30 $00

jr_033_42d7:
	db   $10                                         ; $42d7: $10
	add  a                                           ; $42d8: $87
	nop                                              ; $42d9: $00
	ld   [bc], a                                     ; $42da: $02
	db   $10                                         ; $42db: $10
	ld   c, $2e                                      ; $42dc: $0e $2e
	add  b                                           ; $42de: $80
	ld   e, $04                                      ; $42df: $1e $04
	nop                                              ; $42e1: $00
	inc  a                                           ; $42e2: $3c
	nop                                              ; $42e3: $00
	rst  $38                                         ; $42e4: $ff
	jr   jr_033_426b                                 ; $42e5: $18 $84

	ret  c                                           ; $42e7: $d8

	ld   [bc], a                                     ; $42e8: $02
	ld   e, b                                        ; $42e9: $58
	ld   b, b                                        ; $42ea: $40
	nop                                              ; $42eb: $00
	add  c                                           ; $42ec: $81
	jr   c, jr_033_42f1                              ; $42ed: $38 $02

	inc  a                                           ; $42ef: $3c
	nop                                              ; $42f0: $00

jr_033_42f1:
	ld   [$0083], sp                                 ; $42f1: $08 $83 $00
	nop                                              ; $42f4: $00
	ld   [$0081], sp                                 ; $42f5: $08 $81 $00
	ld   a, [bc]                                     ; $42f8: $0a
	inc  b                                           ; $42f9: $04
	jr   nc, jr_033_432e                             ; $42fa: $30 $32

	ld   a, b                                        ; $42fc: $78
	ld   a, d                                        ; $42fd: $7a
	nop                                              ; $42fe: $00
	adc  e                                           ; $42ff: $8b

Jump_033_4300:
	ld   [$0a28], sp                                 ; $4300: $08 $28 $0a
	ld   c, [hl]                                     ; $4303: $4e
	add  c                                           ; $4304: $81
	inc  c                                           ; $4305: $0c
	add  b                                           ; $4306: $80
	rrca                                             ; $4307: $0f
	ld   bc, $0717                                   ; $4308: $01 $17 $07
	add  c                                           ; $430b: $81
	nop                                              ; $430c: $00
	inc  bc                                          ; $430d: $03
	inc  bc                                          ; $430e: $03
	inc  de                                          ; $430f: $13
	ld   [bc], a                                     ; $4310: $02
	jr   jr_033_4296                                 ; $4311: $18 $83

	nop                                              ; $4313: $00
	nop                                              ; $4314: $00
	ld   a, [hl+]                                    ; $4315: $2a
	add  c                                           ; $4316: $81
	db   $10                                         ; $4317: $10
	ld   b, $20                                      ; $4318: $06 $20
	nop                                              ; $431a: $00
	stop                                             ; $431b: $10 $00
	pop  af                                          ; $431d: $f1
	nop                                              ; $431e: $00
	jr   nc, jr_033_42a2                             ; $431f: $30 $81

	or   b                                           ; $4321: $b0
	inc  d                                           ; $4322: $14
	ldh  a, [c]                                      ; $4323: $f2
	ldh  a, [$64]                                    ; $4324: $f0 $64
	ldh  [$c8], a                                    ; $4326: $e0 $c8
	ret  nz                                          ; $4328: $c0

	stop                                             ; $4329: $10 $00
	jr   jr_033_42bd                                 ; $432b: $18 $90

	sub  h                                           ; $432d: $94

jr_033_432e:
	jr   @-$24                                       ; $432e: $18 $da

	inc  e                                           ; $4330: $1c
	inc  a                                           ; $4331: $3c
	inc  c                                           ; $4332: $0c
	ld   c, $08                                      ; $4333: $0e $08
	xor  b                                           ; $4335: $a8
	nop                                              ; $4336: $00
	ld   a, b                                        ; $4337: $78
	add  c                                           ; $4338: $81
	jr   c, jr_033_433d                              ; $4339: $38 $02

	inc  b                                           ; $433b: $04
	nop                                              ; $433c: $00

jr_033_433d:
	ld   hl, sp-$7d                                  ; $433d: $f8 $83
	nop                                              ; $433f: $00
	ld   [$0003], sp                                 ; $4340: $08 $03 $00
	inc  e                                           ; $4343: $1c
	nop                                              ; $4344: $00
	jr   nz, jr_033_4347                             ; $4345: $20 $00

jr_033_4347:
	jr   nz, jr_033_4349                             ; $4347: $20 $00

jr_033_4349:
	rra                                              ; $4349: $1f
	sub  l                                           ; $434a: $95
	nop                                              ; $434b: $00
	ld   [$00f0], sp                                 ; $434c: $08 $f0 $00
	ld   [$0800], sp                                 ; $434f: $08 $00 $08
	nop                                              ; $4352: $00
	jr   nc, jr_033_4355                             ; $4353: $30 $00

jr_033_4355:
	ret  nz                                          ; $4355: $c0

	adc  a                                           ; $4356: $8f
	nop                                              ; $4357: $00
	ld   [bc], a                                     ; $4358: $02
	adc  a                                           ; $4359: $8f
	nop                                              ; $435a: $00
	ld   [hl], b                                     ; $435b: $70
	add  b                                           ; $435c: $80
	add  e                                           ; $435d: $83
	add  d                                           ; $435e: $82
	cp   a                                           ; $435f: $bf
	dec  b                                           ; $4360: $05
	nop                                              ; $4361: $00
	add  sp, $0a                                     ; $4362: $e8 $0a
	ld   h, d                                        ; $4364: $62
	nop                                              ; $4365: $00
	add  b                                           ; $4366: $80
	add  c                                           ; $4367: $81
	nop                                              ; $4368: $00
	nop                                              ; $4369: $00
	ld   b, $81                                      ; $436a: $06 $81
	nop                                              ; $436c: $00
	nop                                              ; $436d: $00
	ld   bc, $e080                                   ; $436e: $01 $80 $e0
	rrca                                             ; $4371: $0f
	ldh  a, [$f7]                                    ; $4372: $f0 $f7
	nop                                              ; $4374: $00
	ldh  [rP1], a                                    ; $4375: $e0 $00
	rra                                              ; $4377: $1f
	nop                                              ; $4378: $00
	ldh  [rP1], a                                    ; $4379: $e0 $00
	db   $10                                         ; $437b: $10
	add  b                                           ; $437c: $80
	adc  b                                           ; $437d: $88

jr_033_437e:
	add  b                                           ; $437e: $80
	or   b                                           ; $437f: $b0
	jr   nc, jr_033_437e                             ; $4380: $30 $fc

	add  c                                           ; $4382: $81
	ld   hl, sp+$03                                  ; $4383: $f8 $03
	ld   [hl], h                                     ; $4385: $74
	ld   [hl], b                                     ; $4386: $70
	jr   z, jr_033_43a9                              ; $4387: $28 $20

	add  d                                           ; $4389: $82
	nop                                              ; $438a: $00
	ld   c, $08                                      ; $438b: $0e $08
	nop                                              ; $438d: $00
	inc  b                                           ; $438e: $04
	nop                                              ; $438f: $00
	add  e                                           ; $4390: $83
	inc  c                                           ; $4391: $0c
	adc  h                                           ; $4392: $8c
	ld   a, $3f                                      ; $4393: $3e $3f
	nop                                              ; $4395: $00
	cp   $00                                         ; $4396: $fe $00
	ld   a, $00                                      ; $4398: $3e $00
	rla                                              ; $439a: $17
	add  c                                           ; $439b: $81
	ld   d, $80                                      ; $439c: $16 $80
	ld   a, [bc]                                     ; $439e: $0a
	ld   [$0020], sp                                 ; $439f: $08 $20 $00
	rra                                              ; $43a2: $1f
	nop                                              ; $43a3: $00
	ld   bc, $0200                                   ; $43a4: $01 $00 $02
	nop                                              ; $43a7: $00
	inc  bc                                          ; $43a8: $03

jr_033_43a9:
	add  e                                           ; $43a9: $83
	nop                                              ; $43aa: $00
	ld   [bc], a                                     ; $43ab: $02
	inc  b                                           ; $43ac: $04
	nop                                              ; $43ad: $00
	ld   [$0480], sp                                 ; $43ae: $08 $80 $04
	ld   bc, $0c00                                   ; $43b1: $01 $00 $0c
	adc  c                                           ; $43b4: $89
	nop                                              ; $43b5: $00
	ld   b, $7d                                      ; $43b6: $06 $7d
	nop                                              ; $43b8: $00
	jp   nz, $c000                                   ; $43b9: $c2 $00 $c0

	db   $10                                         ; $43bc: $10
	sub  b                                           ; $43bd: $90
	add  b                                           ; $43be: $80
	ld   a, [bc]                                     ; $43bf: $0a
	nop                                              ; $43c0: $00
	nop                                              ; $43c1: $00
	add  b                                           ; $43c2: $80
	ld   [$1080], sp                                 ; $43c3: $08 $80 $10
	ld   [bc], a                                     ; $43c6: $02
	ret  nc                                          ; $43c7: $d0

	dec  d                                           ; $43c8: $15
	dec  e                                           ; $43c9: $1d
	add  c                                           ; $43ca: $81
	add  hl, de                                      ; $43cb: $19
	inc  b                                           ; $43cc: $04
	ld   e, $1f                                      ; $43cd: $1e $1f
	cpl                                              ; $43cf: $2f
	rrca                                             ; $43d0: $0f
	rra                                              ; $43d1: $1f
	add  l                                           ; $43d2: $85
	nop                                              ; $43d3: $00
	inc  b                                           ; $43d4: $04
	ldh  [rP1], a                                    ; $43d5: $e0 $00
	stop                                             ; $43d7: $10 $00

jr_033_43d9:
	ld   [$1080], sp                                 ; $43d9: $08 $80 $10
	ld   bc, $e4e0                                   ; $43dc: $01 $e0 $e4
	add  e                                           ; $43df: $83
	nop                                              ; $43e0: $00
	add  b                                           ; $43e1: $80
	ld   h, b                                        ; $43e2: $60
	add  b                                           ; $43e3: $80
	ldh  [rAUD1HIGH], a                              ; $43e4: $e0 $14
	call nz, $c8c0                                   ; $43e6: $c4 $c0 $c8
	ret  nz                                          ; $43e9: $c0

	sub  b                                           ; $43ea: $90
	add  b                                           ; $43eb: $80
	rra                                              ; $43ec: $1f
	nop                                              ; $43ed: $00
	ld   a, $00                                      ; $43ee: $3e $00
	ld   h, b                                        ; $43f0: $60
	nop                                              ; $43f1: $00
	jr   nc, jr_033_43f4                             ; $43f2: $30 $00

jr_033_43f4:
	jr   jr_033_43f6                                 ; $43f4: $18 $00

jr_033_43f6:
	inc  c                                           ; $43f6: $0c
	nop                                              ; $43f7: $00
	ld   b, $00                                      ; $43f8: $06 $00
	ld   a, h                                        ; $43fa: $7c
	add  c                                           ; $43fb: $81
	nop                                              ; $43fc: $00
	ld   c, $3e                                      ; $43fd: $0e $3e
	nop                                              ; $43ff: $00
	ld   h, b                                        ; $4400: $60
	nop                                              ; $4401: $00
	jr   nc, jr_033_4404                             ; $4402: $30 $00

jr_033_4404:
	jr   jr_033_4406                                 ; $4404: $18 $00

jr_033_4406:
	inc  c                                           ; $4406: $0c
	nop                                              ; $4407: $00
	ld   b, $00                                      ; $4408: $06 $00
	ld   a, h                                        ; $440a: $7c
	nop                                              ; $440b: $00
	rst  $38                                         ; $440c: $ff
	add  e                                           ; $440d: $83
	nop                                              ; $440e: $00
	ld   [$000f], sp                                 ; $440f: $08 $0f $00
	jr   nc, jr_033_4414                             ; $4412: $30 $00

jr_033_4414:
	ld   b, b                                        ; $4414: $40
	nop                                              ; $4415: $00
	ld   b, b                                        ; $4416: $40
	nop                                              ; $4417: $00
	ccf                                              ; $4418: $3f
	sub  l                                           ; $4419: $95
	nop                                              ; $441a: $00
	ld   [bc], a                                     ; $441b: $02
	ld   hl, sp+$00                                  ; $441c: $f8 $00
	inc  b                                           ; $441e: $04
	add  c                                           ; $441f: $81
	nop                                              ; $4420: $00
	ld   [bc], a                                     ; $4421: $02
	inc  c                                           ; $4422: $0c
	nop                                              ; $4423: $00
	ldh  a, [$8f]                                    ; $4424: $f0 $8f
	nop                                              ; $4426: $00
	nop                                              ; $4427: $00
	rst  $38                                         ; $4428: $ff
	add  b                                           ; $4429: $80
	add  b                                           ; $442a: $80
	add  b                                           ; $442b: $80
	cp   a                                           ; $442c: $bf
	add  b                                           ; $442d: $80
	ccf                                              ; $442e: $3f
	rlca                                             ; $442f: $07
	ret  nz                                          ; $4430: $c0

	ret  z                                           ; $4431: $c8

	ld   a, [bc]                                     ; $4432: $0a
	ld   [$620a], a                                  ; $4433: $ea $0a $62
	nop                                              ; $4436: $00
	add  b                                           ; $4437: $80
	add  c                                           ; $4438: $81
	nop                                              ; $4439: $00

jr_033_443a:
	nop                                              ; $443a: $00
	rlca                                             ; $443b: $07
	add  d                                           ; $443c: $82
	nop                                              ; $443d: $00
	add  b                                           ; $443e: $80
	ldh  [rIF], a                                    ; $443f: $e0 $0f
	ldh  a, [$f7]                                    ; $4441: $f0 $f7
	nop                                              ; $4443: $00
	ret  nz                                          ; $4444: $c0

	nop                                              ; $4445: $00
	ccf                                              ; $4446: $3f
	nop                                              ; $4447: $00
	ldh  [rP1], a                                    ; $4448: $e0 $00
	db   $10                                         ; $444a: $10
	add  b                                           ; $444b: $80
	adc  b                                           ; $444c: $88

jr_033_444d:
	add  b                                           ; $444d: $80
	or   b                                           ; $444e: $b0
	jr   nc, jr_033_444d                             ; $444f: $30 $fc

	add  c                                           ; $4451: $81
	ld   hl, sp+$01                                  ; $4452: $f8 $01
	ld   [hl], h                                     ; $4454: $74
	ld   [hl], b                                     ; $4455: $70
	add  b                                           ; $4456: $80
	jr   nz, jr_033_43d9                             ; $4457: $20 $80

	nop                                              ; $4459: $00
	ld   [hl+], a                                    ; $445a: $22
	inc  b                                           ; $445b: $04
	nop                                              ; $445c: $00
	add  b                                           ; $445d: $80
	nop                                              ; $445e: $00
	ld   [bc], a                                     ; $445f: $02
	nop                                              ; $4460: $00
	ld   b, c                                        ; $4461: $41
	inc  c                                           ; $4462: $0c
	call z, $3f3e                                    ; $4463: $cc $3e $3f
	nop                                              ; $4466: $00
	cp   $00                                         ; $4467: $fe $00
	inc  c                                           ; $4469: $0c
	nop                                              ; $446a: $00
	ld   b, $04                                      ; $446b: $06 $04
	daa                                              ; $446d: $27
	ld   b, $72                                      ; $446e: $06 $72
	ld   [hl+], a                                    ; $4470: $22
	jr   nc, jr_033_44a7                             ; $4471: $30 $34

	ld   e, h                                        ; $4473: $5c
	dec  de                                          ; $4474: $1b
	inc  hl                                          ; $4475: $23
	nop                                              ; $4476: $00
	rra                                              ; $4477: $1f
	nop                                              ; $4478: $00
	ld   bc, $0200                                   ; $4479: $01 $00 $02
	nop                                              ; $447c: $00
	inc  bc                                          ; $447d: $03
	add  e                                           ; $447e: $83
	nop                                              ; $447f: $00
	ld   [bc], a                                     ; $4480: $02
	inc  b                                           ; $4481: $04
	nop                                              ; $4482: $00
	ld   [$0480], sp                                 ; $4483: $08 $80 $04
	ld   bc, $0c00                                   ; $4486: $01 $00 $0c
	add  l                                           ; $4489: $85
	nop                                              ; $448a: $00
	inc  b                                           ; $448b: $04
	ld   a, e                                        ; $448c: $7b
	nop                                              ; $448d: $00
	ld   b, h                                        ; $448e: $44
	nop                                              ; $448f: $00
	ld   b, b                                        ; $4490: $40
	add  b                                           ; $4491: $80
	db   $10                                         ; $4492: $10
	add  hl, bc                                      ; $4493: $09
	ld   a, [bc]                                     ; $4494: $0a
	adc  d                                           ; $4495: $8a
	nop                                              ; $4496: $00
	ld   b, b                                        ; $4497: $40
	nop                                              ; $4498: $00
	call nz, $0804                                   ; $4499: $c4 $04 $08
	add  hl, bc                                      ; $449c: $09
	ld   c, c                                        ; $449d: $49
	add  b                                           ; $449e: $80
	dec  c                                           ; $449f: $0d
	ld   [bc], a                                     ; $44a0: $02
	add  hl, bc                                      ; $44a1: $09
	ld   l, $0f                                      ; $44a2: $2e $0f
	add  b                                           ; $44a4: $80
	rlca                                             ; $44a5: $07
	nop                                              ; $44a6: $00

jr_033_44a7:
	rra                                              ; $44a7: $1f
	add  l                                           ; $44a8: $85
	nop                                              ; $44a9: $00
	inc  b                                           ; $44aa: $04
	ldh  a, [rP1]                                    ; $44ab: $f0 $00
	ld   [$0400], sp                                 ; $44ad: $08 $00 $04
	add  b                                           ; $44b0: $80
	db   $10                                         ; $44b1: $10
	ld   bc, $e2e0                                   ; $44b2: $01 $e0 $e2
	add  e                                           ; $44b5: $83
	nop                                              ; $44b6: $00
	add  b                                           ; $44b7: $80
	jr   nc, jr_033_443a                             ; $44b8: $30 $80

	ld   [hl], b                                     ; $44ba: $70
	ld   b, $e2                                      ; $44bb: $06 $e2
	ldh  [$e4], a                                    ; $44bd: $e0 $e4
	ldh  [$c8], a                                    ; $44bf: $e0 $c8
	ret  nz                                          ; $44c1: $c0

	rrca                                             ; $44c2: $0f
	add  b                                           ; $44c3: $80
	cp   h                                           ; $44c4: $bc
	inc  bc                                          ; $44c5: $03
	ccf                                              ; $44c6: $3f

jr_033_44c7:
	rst  $38                                         ; $44c7: $ff
	rlca                                             ; $44c8: $07
	rst  JumpTable                                         ; $44c9: $df
	add  b                                           ; $44ca: $80
	jr   @+$03                                       ; $44cb: $18 $01

	jp   c, $80ca                                    ; $44cd: $da $ca $80

	ld   [$0a01], a                                  ; $44d0: $ea $01 $0a
	ld   [bc], a                                     ; $44d3: $02
	add  e                                           ; $44d4: $83
	nop                                              ; $44d5: $00
	nop                                              ; $44d6: $00
	rlca                                             ; $44d7: $07
	add  b                                           ; $44d8: $80
	nop                                              ; $44d9: $00
	inc  d                                           ; $44da: $14
	ldh  [$e4], a                                    ; $44db: $e0 $e4
	ldh  a, [$f3]                                    ; $44dd: $f0 $f3
	nop                                              ; $44df: $00
	add  b                                           ; $44e0: $80
	nop                                              ; $44e1: $00
	ld   a, a                                        ; $44e2: $7f
	nop                                              ; $44e3: $00
	ret  nz                                          ; $44e4: $c0

	nop                                              ; $44e5: $00
	jr   nz, @-$7e                                   ; $44e6: $20 $80

	sub  b                                           ; $44e8: $90
	ret  nz                                          ; $44e9: $c0

	ret  z                                           ; $44ea: $c8

	ret  nz                                          ; $44eb: $c0

	ldh  a, [$30]                                    ; $44ec: $f0 $30
	db   $fc                                         ; $44ee: $fc
	ld   hl, sp-$80                                  ; $44ef: $f8 $80
	ld   a, b                                        ; $44f1: $78
	ld   [bc], a                                     ; $44f2: $02
	ld   h, h                                        ; $44f3: $64
	ld   h, b                                        ; $44f4: $60
	inc  b                                           ; $44f5: $04
	add  c                                           ; $44f6: $81
	nop                                              ; $44f7: $00
	ld   a, [bc]                                     ; $44f8: $0a
	add  d                                           ; $44f9: $82
	nop                                              ; $44fa: $00
	ld   b, b                                        ; $44fb: $40
	nop                                              ; $44fc: $00
	ld   bc, $dc1c                                   ; $44fd: $01 $1c $dc
	ld   a, $3f                                      ; $4500: $3e $3f
	nop                                              ; $4502: $00
	cp   $83                                         ; $4503: $fe $83
	nop                                              ; $4505: $00
	inc  bc                                          ; $4506: $03
	inc  c                                           ; $4507: $0c
	nop                                              ; $4508: $00
	rra                                              ; $4509: $1f
	inc  c                                           ; $450a: $0c
	add  b                                           ; $450b: $80
	ld   b, $01                                      ; $450c: $06 $01
	ld   a, [de]                                     ; $450e: $1a
	ld   [bc], a                                     ; $450f: $02
	add  b                                           ; $4510: $80
	nop                                              ; $4511: $00
	ld   [bc], a                                     ; $4512: $02
	rlca                                             ; $4513: $07
	nop                                              ; $4514: $00
	ld   bc, $0081                                   ; $4515: $01 $81 $00
	inc  b                                           ; $4518: $04
	ld   bc, $0100                                   ; $4519: $01 $00 $01
	nop                                              ; $451c: $00
	ld   [bc], a                                     ; $451d: $02
	add  b                                           ; $451e: $80
	ld   bc, $0001                                   ; $451f: $01 $01 $00
	inc  bc                                          ; $4522: $03
	add  a                                           ; $4523: $87
	nop                                              ; $4524: $00
	ld   [$0043], sp                                 ; $4525: $08 $43 $00
	ld   a, h                                        ; $4528: $7c
	nop                                              ; $4529: $00
	jr   nz, jr_033_452c                             ; $452a: $20 $00

jr_033_452c:
	jr   nz, jr_033_453e                             ; $452c: $20 $10

	ld   d, b                                        ; $452e: $50
	add  b                                           ; $452f: $80
	ld   a, [bc]                                     ; $4530: $0a
	ld   [$8000], sp                                 ; $4531: $08 $00 $80
	nop                                              ; $4534: $00
	ld   b, d                                        ; $4535: $42
	ld   [bc], a                                     ; $4536: $02
	add  l                                           ; $4537: $85
	dec  b                                           ; $4538: $05
	ld   b, h                                        ; $4539: $44
	inc  b                                           ; $453a: $04
	add  b                                           ; $453b: $80
	inc  sp                                          ; $453c: $33
	inc  b                                           ; $453d: $04

jr_033_453e:
	ld   e, b                                        ; $453e: $58
	jr   @+$12                                       ; $453f: $18 $10

	rla                                              ; $4541: $17
	jr   c, jr_033_44c7                              ; $4542: $38 $83

	nop                                              ; $4544: $00
	ld   b, $fc                                      ; $4545: $06 $fc

jr_033_4547:
	nop                                              ; $4547: $00
	ld   c, $00                                      ; $4548: $0e $00
	ld   c, $00                                      ; $454a: $0e $00
	ld   [bc], a                                     ; $454c: $02
	add  b                                           ; $454d: $80
	db   $10                                         ; $454e: $10
	ld   bc, $e1e0                                   ; $454f: $01 $e0 $e1
	add  c                                           ; $4552: $81
	nop                                              ; $4553: $00
	add  b                                           ; $4554: $80
	call z, $2c80                                    ; $4555: $cc $80 $2c
	ld   bc, $e8e9                                   ; $4558: $01 $e9 $e8
	add  b                                           ; $455b: $80
	ld   hl, sp+$0e                                  ; $455c: $f8 $0e
	ld   [hl], d                                     ; $455e: $72
	ld   [hl], b                                     ; $455f: $70
	inc  e                                           ; $4560: $1c
	add  b                                           ; $4561: $80
	sbc  a                                           ; $4562: $9f
	ldh  a, [c]                                      ; $4563: $f2
	or   $75                                         ; $4564: $f6 $75
	push af                                          ; $4566: $f5
	dec  b                                           ; $4567: $05
	ld   a, e                                        ; $4568: $7b
	ld   [bc], a                                     ; $4569: $02
	dec  b                                           ; $456a: $05
	ld   bc, $8102                                   ; $456b: $01 $02 $81
	nop                                              ; $456e: $00
	nop                                              ; $456f: $00
	ld   [bc], a                                     ; $4570: $02
	add  l                                           ; $4571: $85
	nop                                              ; $4572: $00
	inc  c                                           ; $4573: $0c
	inc  b                                           ; $4574: $04

jr_033_4575:
	inc  bc                                          ; $4575: $03
	dec  de                                          ; $4576: $1b
	rlca                                             ; $4577: $07
	daa                                              ; $4578: $27
	nop                                              ; $4579: $00
	jr   nz, jr_033_457c                             ; $457a: $20 $00

jr_033_457c:
	rra                                              ; $457c: $1f
	nop                                              ; $457d: $00
	inc  a                                           ; $457e: $3c
	ret  c                                           ; $457f: $d8

	ld   a, d                                        ; $4580: $7a
	add  c                                           ; $4581: $81
	ld   l, h                                        ; $4582: $6c
	inc  b                                           ; $4583: $04
	inc  a                                           ; $4584: $3c
	or   b                                           ; $4585: $b0
	and  c                                           ; $4586: $a1
	inc  l                                           ; $4587: $2c
	inc  c                                           ; $4588: $0c
	add  b                                           ; $4589: $80
	ld   c, $03                                      ; $458a: $0e $03
	ld   b, $07                                      ; $458c: $06 $07
	nop                                              ; $458e: $00
	ld   [bc], a                                     ; $458f: $02
	add  h                                           ; $4590: $84
	nop                                              ; $4591: $00
	rlca                                             ; $4592: $07
	add  b                                           ; $4593: $80
	add  d                                           ; $4594: $82
	sbc  h                                           ; $4595: $9c
	sbc  l                                           ; $4596: $9d
	inc  a                                           ; $4597: $3c
	dec  a                                           ; $4598: $3d

jr_033_4599:
	nop                                              ; $4599: $00
	cp   $81                                         ; $459a: $fe $81
	nop                                              ; $459c: $00
	ld   [$007d], sp                                 ; $459d: $08 $7d $00
	ldh  [c], a                                      ; $45a0: $e2
	nop                                              ; $45a1: $00
	and  b                                           ; $45a2: $a0
	nop                                              ; $45a3: $00
	ld   b, b                                        ; $45a4: $40
	jr   nz, jr_033_4547                             ; $45a5: $20 $a0

	add  b                                           ; $45a7: $80
	add  hl, de                                      ; $45a8: $19
	add  c                                           ; $45a9: $81
	nop                                              ; $45aa: $00
	add  b                                           ; $45ab: $80
	inc  c                                           ; $45ac: $0c
	add  b                                           ; $45ad: $80
	ccf                                              ; $45ae: $3f
	ld   bc, $0888                                   ; $45af: $01 $88 $08

jr_033_45b2:
	add  d                                           ; $45b2: $82
	ccf                                              ; $45b3: $3f
	add  b                                           ; $45b4: $80
	ld   sp, $9f0e                                   ; $45b5: $31 $0e $9f
	ld   e, a                                        ; $45b8: $5f
	ld   b, b                                        ; $45b9: $40
	ld   h, b                                        ; $45ba: $60
	sbc  a                                           ; $45bb: $9f
	nop                                              ; $45bc: $00
	ret  nz                                          ; $45bd: $c0

	nop                                              ; $45be: $00
	jr   nc, jr_033_45c1                             ; $45bf: $30 $00

jr_033_45c1:
	ld   [$0400], sp                                 ; $45c1: $08 $00 $04
	db   $10                                         ; $45c4: $10
	ld   [de], a                                     ; $45c5: $12
	add  b                                           ; $45c6: $80
	and  b                                           ; $45c7: $a0
	add  c                                           ; $45c8: $81
	nop                                              ; $45c9: $00
	ld   bc, $b080                                   ; $45ca: $01 $80 $b0
	add  b                                           ; $45cd: $80
	ld   [hl], b                                     ; $45ce: $70
	add  b                                           ; $45cf: $80
	or   b                                           ; $45d0: $b0
	inc  c                                           ; $45d1: $0c
	ldh  a, [c]                                      ; $45d2: $f2
	ret  nz                                          ; $45d3: $c0

	db   $e4                                         ; $45d4: $e4
	ldh  [$c8], a                                    ; $45d5: $e0 $c8
	ret  nz                                          ; $45d7: $c0

	adc  b                                           ; $45d8: $88
	sub  b                                           ; $45d9: $90
	ld   d, h                                        ; $45da: $54
	jr   jr_033_4575                                 ; $45db: $18 $98

	jr   jr_033_4599                                 ; $45dd: $18 $ba

	add  c                                           ; $45df: $81
	inc  c                                           ; $45e0: $0c
	dec  b                                           ; $45e1: $05
	ld   e, h                                        ; $45e2: $5c
	add  b                                           ; $45e3: $80
	sbc  l                                           ; $45e4: $9d
	inc  c                                           ; $45e5: $0c
	ld   l, $0e                                      ; $45e6: $2e $0e
	add  b                                           ; $45e8: $80
	ld   b, $02                                      ; $45e9: $06 $02

jr_033_45eb:
	ld   bc, $0200                                   ; $45eb: $01 $00 $02
	add  h                                           ; $45ee: $84
	nop                                              ; $45ef: $00
	ld   a, [bc]                                     ; $45f0: $0a
	add  b                                           ; $45f1: $80
	add  d                                           ; $45f2: $82
	sbc  h                                           ; $45f3: $9c
	sbc  l                                           ; $45f4: $9d
	inc  a                                           ; $45f5: $3c
	dec  a                                           ; $45f6: $3d
	nop                                              ; $45f7: $00
	cp   $00                                         ; $45f8: $fe $00
	ld   a, l                                        ; $45fa: $7d
	xor  d                                           ; $45fb: $aa
	add  b                                           ; $45fc: $80
	xor  e                                           ; $45fd: $ab
	nop                                              ; $45fe: $00
	db   $eb                                         ; $45ff: $eb
	add  b                                           ; $4600: $80
	db   $db                                         ; $4601: $db
	nop                                              ; $4602: $00

jr_033_4603:
	jp   $0380                                       ; $4603: $c3 $80 $03


	add  d                                           ; $4606: $82
	nop                                              ; $4607: $00
	ld   [bc], a                                     ; $4608: $02
	stop                                             ; $4609: $10 $00
	ld   [$0081], sp                                 ; $460b: $08 $81 $00
	ld   [bc], a                                     ; $460e: $02
	inc  b                                           ; $460f: $04
	add  b                                           ; $4610: $80
	sbc  h                                           ; $4611: $9c
	add  b                                           ; $4612: $80
	pop  bc                                          ; $4613: $c1
	inc  bc                                          ; $4614: $03
	ld   bc, $00e1                                   ; $4615: $01 $e1 $00
	rra                                              ; $4618: $1f
	add  c                                           ; $4619: $81
	nop                                              ; $461a: $00
	inc  b                                           ; $461b: $04
	db   $fc                                         ; $461c: $fc
	ldh  [$ec], a                                    ; $461d: $e0 $ec
	nop                                              ; $461f: $00
	or   b                                           ; $4620: $b0
	add  c                                           ; $4621: $81
	add  b                                           ; $4622: $80
	add  b                                           ; $4623: $80
	nop                                              ; $4624: $00
	ld   [bc], a                                     ; $4625: $02
	ret  nz                                          ; $4626: $c0

	nop                                              ; $4627: $00
	add  b                                           ; $4628: $80
	add  c                                           ; $4629: $81
	nop                                              ; $462a: $00
	nop                                              ; $462b: $00
	ld   b, b                                        ; $462c: $40
	add  c                                           ; $462d: $81
	nop                                              ; $462e: $00
	nop                                              ; $462f: $00
	jr   nz, jr_033_45b2                             ; $4630: $20 $80

	nop                                              ; $4632: $00
	dec  b                                           ; $4633: $05
	ret  nz                                          ; $4634: $c0

	ret  nc                                          ; $4635: $d0

	ldh  [$f0], a                                    ; $4636: $e0 $f0
	nop                                              ; $4638: $00
	ldh  [$81], a                                    ; $4639: $e0 $81
	nop                                              ; $463b: $00
	inc  b                                           ; $463c: $04
	inc  bc                                          ; $463d: $03
	nop                                              ; $463e: $00
	ld   b, $00                                      ; $463f: $06 $00
	ld   b, $81                                      ; $4641: $06 $81
	nop                                              ; $4643: $00
	nop                                              ; $4644: $00
	inc  b                                           ; $4645: $04
	add  b                                           ; $4646: $80
	ld   bc, $0083                                   ; $4647: $01 $83 $00
	add  b                                           ; $464a: $80
	ld   bc, $0382                                   ; $464b: $01 $82 $03
	inc  c                                           ; $464e: $0c
	dec  b                                           ; $464f: $05
	ld   bc, $0002                                   ; $4650: $01 $02 $00
	ld   bc, $0100                                   ; $4653: $01 $00 $01
	nop                                              ; $4656: $00
	ld   [bc], a                                     ; $4657: $02
	nop                                              ; $4658: $00
	db   $ec                                         ; $4659: $ec
	nop                                              ; $465a: $00
	db   $10                                         ; $465b: $10
	add  h                                           ; $465c: $84
	nop                                              ; $465d: $00
	add  b                                           ; $465e: $80
	add  b                                           ; $465f: $80
	ld   [bc], a                                     ; $4660: $02
	ld   l, l                                        ; $4661: $6d
	ld   a, l                                        ; $4662: $7d
	db   $10                                         ; $4663: $10
	add  b                                           ; $4664: $80
	sub  c                                           ; $4665: $91
	add  b                                           ; $4666: $80
	stop                                             ; $4667: $10 $00
	jr   jr_033_45eb                                 ; $4669: $18 $80

	sbc  c                                           ; $466b: $99
	add  b                                           ; $466c: $80
	db   $dd                                         ; $466d: $dd
	ld   [bc], a                                     ; $466e: $02
	sbc  c                                           ; $466f: $99
	ld   a, [hl]                                     ; $4670: $7e
	rst  $38                                         ; $4671: $ff
	add  b                                           ; $4672: $80
	ld   a, [hl]                                     ; $4673: $7e
	add  b                                           ; $4674: $80
	jr   c, jr_033_467d                              ; $4675: $38 $06

	nop                                              ; $4677: $00
	jr   z, @-$27                                    ; $4678: $28 $d7

	nop                                              ; $467a: $00
	add  b                                           ; $467b: $80
	nop                                              ; $467c: $00

jr_033_467d:
	ld   b, b                                        ; $467d: $40
	add  c                                           ; $467e: $81
	nop                                              ; $467f: $00
	nop                                              ; $4680: $00
	jr   nz, jr_033_4603                             ; $4681: $20 $80

	add  b                                           ; $4683: $80
	add  c                                           ; $4684: $81
	nop                                              ; $4685: $00
	inc  bc                                          ; $4686: $03
	jr   jr_033_4689                                 ; $4687: $18 $00

jr_033_4689:
	sbc  h                                           ; $4689: $9c
	sbc  b                                           ; $468a: $98
	add  b                                           ; $468b: $80
	ret  c                                           ; $468c: $d8

	add  b                                           ; $468d: $80
	ret  nz                                          ; $468e: $c0

	ld   bc, $bcbe                                   ; $468f: $01 $be $bc
	add  e                                           ; $4692: $83
	inc  a                                           ; $4693: $3c
	inc  bc                                          ; $4694: $03
	cp   h                                           ; $4695: $bc
	sbc  h                                           ; $4696: $9c
	call c, $8139                                    ; $4697: $dc $39 $81
	ld   [bc], a                                     ; $469a: $02
	nop                                              ; $469b: $00
	ld   c, $81                                      ; $469c: $0e $81
	inc  b                                           ; $469e: $04
	ld   [bc], a                                     ; $469f: $02
	ld   [$0600], sp                                 ; $46a0: $08 $00 $06
	add  l                                           ; $46a3: $85
	nop                                              ; $46a4: $00
	inc  b                                           ; $46a5: $04
	ld   [bc], a                                     ; $46a6: $02
	nop                                              ; $46a7: $00
	inc  b                                           ; $46a8: $04
	inc  bc                                          ; $46a9: $03
	dec  bc                                          ; $46aa: $0b
	add  b                                           ; $46ab: $80
	rlca                                             ; $46ac: $07
	ld   bc, $0f00                                   ; $46ad: $01 $00 $0f
	add  e                                           ; $46b0: $83
	nop                                              ; $46b1: $00
	ld   c, $ff                                      ; $46b2: $0e $ff
	nop                                              ; $46b4: $00
	ld   a, $00                                      ; $46b5: $3e $00
	ld   h, b                                        ; $46b7: $60
	nop                                              ; $46b8: $00
	jr   nc, jr_033_46bb                             ; $46b9: $30 $00

jr_033_46bb:
	jr   jr_033_46bd                                 ; $46bb: $18 $00

jr_033_46bd:
	inc  c                                           ; $46bd: $0c
	nop                                              ; $46be: $00
	ld   b, $00                                      ; $46bf: $06 $00
	ld   a, h                                        ; $46c1: $7c
	add  c                                           ; $46c2: $81
	nop                                              ; $46c3: $00
	inc  c                                           ; $46c4: $0c
	ld   a, $00                                      ; $46c5: $3e $00
	ld   h, b                                        ; $46c7: $60
	nop                                              ; $46c8: $00
	jr   nc, jr_033_46cb                             ; $46c9: $30 $00

jr_033_46cb:
	jr   jr_033_46cd                                 ; $46cb: $18 $00

jr_033_46cd:
	inc  c                                           ; $46cd: $0c
	nop                                              ; $46ce: $00
	ld   b, $00                                      ; $46cf: $06 $00
	ld   a, h                                        ; $46d1: $7c
	add  c                                           ; $46d2: $81
	nop                                              ; $46d3: $00
	inc  c                                           ; $46d4: $0c
	ld   a, $00                                      ; $46d5: $3e $00
	ld   h, b                                        ; $46d7: $60
	nop                                              ; $46d8: $00
	jr   nc, jr_033_46db                             ; $46d9: $30 $00

jr_033_46db:
	jr   jr_033_46dd                                 ; $46db: $18 $00

jr_033_46dd:
	inc  c                                           ; $46dd: $0c
	nop                                              ; $46de: $00
	ld   b, $00                                      ; $46df: $06 $00
	ld   a, h                                        ; $46e1: $7c
	add  c                                           ; $46e2: $81
	nop                                              ; $46e3: $00
	inc  c                                           ; $46e4: $0c
	ld   a, $00                                      ; $46e5: $3e $00
	ld   h, b                                        ; $46e7: $60
	nop                                              ; $46e8: $00
	jr   nc, jr_033_46eb                             ; $46e9: $30 $00

jr_033_46eb:
	jr   jr_033_46ed                                 ; $46eb: $18 $00

jr_033_46ed:
	inc  c                                           ; $46ed: $0c
	nop                                              ; $46ee: $00
	ld   b, $00                                      ; $46ef: $06 $00
	ld   a, h                                        ; $46f1: $7c
	add  c                                           ; $46f2: $81
	nop                                              ; $46f3: $00
	inc  c                                           ; $46f4: $0c
	ld   a, $00                                      ; $46f5: $3e $00
	ld   h, b                                        ; $46f7: $60
	nop                                              ; $46f8: $00
	jr   nc, jr_033_46fb                             ; $46f9: $30 $00

jr_033_46fb:
	jr   jr_033_46fd                                 ; $46fb: $18 $00

jr_033_46fd:
	inc  c                                           ; $46fd: $0c
	nop                                              ; $46fe: $00
	ld   b, $00                                      ; $46ff: $06 $00
	ld   a, h                                        ; $4701: $7c
	add  c                                           ; $4702: $81
	nop                                              ; $4703: $00
	inc  d                                           ; $4704: $14
	ld   a, $00                                      ; $4705: $3e $00

jr_033_4707:
	ld   h, b                                        ; $4707: $60
	nop                                              ; $4708: $00
	jr   nc, jr_033_470b                             ; $4709: $30 $00

jr_033_470b:
	jr   jr_033_470d                                 ; $470b: $18 $00

jr_033_470d:
	inc  c                                           ; $470d: $0c
	nop                                              ; $470e: $00
	ld   b, $00                                      ; $470f: $06 $00
	ld   a, h                                        ; $4711: $7c
	nop                                              ; $4712: $00
	rst  $38                                         ; $4713: $ff
	nop                                              ; $4714: $00
	ld   bc, $0200                                   ; $4715: $01 $00 $02
	ld   bc, $8105                                   ; $4718: $01 $05 $81
	inc  bc                                          ; $471b: $03
	rrca                                             ; $471c: $0f
	rlca                                             ; $471d: $07
	ld   bc, $0205                                   ; $471e: $01 $05 $02
	ld   a, [de]                                     ; $4721: $1a
	ld   b, $26                                      ; $4722: $06 $26
	ld   e, $5f                                      ; $4724: $1e $5f
	dec  a                                           ; $4726: $3d
	ld   a, a                                        ; $4727: $7f
	dec  de                                          ; $4728: $1b
	ccf                                              ; $4729: $3f
	rlca                                             ; $472a: $07
	rla                                              ; $472b: $17
	rlca                                             ; $472c: $07
	add  d                                           ; $472d: $82
	dec  b                                           ; $472e: $05
	dec  c                                           ; $472f: $0d
	ld   a, [bc]                                     ; $4730: $0a
	ld   [bc], a                                     ; $4731: $02
	add  $00                                         ; $4732: $c6 $00
	ld   [hl+], a                                    ; $4734: $22
	pop  bc                                          ; $4735: $c1
	db   $dd                                         ; $4736: $dd
	db   $e3                                         ; $4737: $e3
	db   $eb                                         ; $4738: $eb
	ret  z                                           ; $4739: $c8

	rst  $30                                         ; $473a: $f7
	or   a                                           ; $473b: $b7
	ldh  [c], a                                      ; $473c: $e2
	ld   h, d                                        ; $473d: $62
	add  b                                           ; $473e: $80
	db   $dd                                         ; $473f: $dd
	add  b                                           ; $4740: $80
	cp   b                                           ; $4741: $b8
	ld   b, $d8                                      ; $4742: $06 $d8
	jp   c, $b7b2                                    ; $4744: $da $b2 $b7

	rst  $20                                         ; $4747: $e7
	db   $e3                                         ; $4748: $e3
	db   $d3                                         ; $4749: $d3
	add  b                                           ; $474a: $80
	rst  ToBoot                                         ; $474b: $c7
	add  c                                           ; $474c: $81
	jp   $9300                                       ; $474d: $c3 $00 $93


	add  b                                           ; $4750: $80
	xor  a                                           ; $4751: $af
	dec  b                                           ; $4752: $05
	or   [hl]                                        ; $4753: $b6
	ld   c, c                                        ; $4754: $49
	nop                                              ; $4755: $00
	ld   b, b                                        ; $4756: $40
	add  b                                           ; $4757: $80
	and  b                                           ; $4758: $a0
	add  d                                           ; $4759: $82
	ret  nz                                          ; $475a: $c0

	inc  bc                                          ; $475b: $03
	ld   b, b                                        ; $475c: $40
	ldh  [$80], a                                    ; $475d: $e0 $80
	ldh  [$81], a                                    ; $475f: $e0 $81
	ret  nz                                          ; $4761: $c0

	inc  c                                           ; $4762: $0c
	ldh  a, [$e0]                                    ; $4763: $f0 $e0
	jr   nz, jr_033_4707                             ; $4765: $20 $a0

	cp   b                                           ; $4767: $b8
	jr   nc, jr_033_478a                             ; $4768: $30 $20

	and  b                                           ; $476a: $a0
	sub  b                                           ; $476b: $90
	db   $10                                         ; $476c: $10
	adc  b                                           ; $476d: $88
	ld   b, b                                        ; $476e: $40
	adc  $80                                         ; $476f: $ce $80
	nop                                              ; $4771: $00
	inc  bc                                          ; $4772: $03
	cp   h                                           ; $4773: $bc
	ld   b, c                                        ; $4774: $41
	nop                                              ; $4775: $00
	ld   [bc], a                                     ; $4776: $02
	add  e                                           ; $4777: $83

jr_033_4778:
	nop                                              ; $4778: $00
	inc  b                                           ; $4779: $04
	inc  bc                                          ; $477a: $03
	nop                                              ; $477b: $00
	ld   b, $00                                      ; $477c: $06 $00
	inc  c                                           ; $477e: $0c
	add  c                                           ; $477f: $81
	nop                                              ; $4780: $00
	ld   b, $01                                      ; $4781: $06 $01
	nop                                              ; $4783: $00
	inc  c                                           ; $4784: $0c
	nop                                              ; $4785: $00
	ld   b, $00                                      ; $4786: $06 $00
	inc  bc                                          ; $4788: $03
	add  a                                           ; $4789: $87

jr_033_478a:
	nop                                              ; $478a: $00
	ld   a, [bc]                                     ; $478b: $0a
	rst  ToBoot                                         ; $478c: $c7
	jr   c, @-$3e                                    ; $478d: $38 $c0

	nop                                              ; $478f: $00
	jr   nc, jr_033_4794                             ; $4790: $30 $02

	ld   [de], a                                     ; $4792: $12
	nop                                              ; $4793: $00

jr_033_4794:
	add  b                                           ; $4794: $80
	rrca                                             ; $4795: $0f
	rst  $28                                         ; $4796: $ef
	add  b                                           ; $4797: $80
	rra                                              ; $4798: $1f
	ld   bc, $bf3f                                   ; $4799: $01 $3f $bf
	add  b                                           ; $479c: $80
	ld   a, a                                        ; $479d: $7f
	add  b                                           ; $479e: $80
	ret  nz                                          ; $479f: $c0

	add  b                                           ; $47a0: $80
	nop                                              ; $47a1: $00
	add  b                                           ; $47a2: $80
	ld   de, $6603                                   ; $47a3: $11 $03 $66
	rst  $28                                         ; $47a6: $ef
	nop                                              ; $47a7: $00
	halt                                             ; $47a8: $76
	add  e                                           ; $47a9: $83
	nop                                              ; $47aa: $00
	inc  c                                           ; $47ab: $0c
	ld   a, $c0                                      ; $47ac: $3e $c0
	ld   e, $00                                      ; $47ae: $1e $00
	ldh  a, [rP1]                                    ; $47b0: $f0 $00
	add  b                                           ; $47b2: $80
	nop                                              ; $47b3: $00
	ld   h, b                                        ; $47b4: $60
	nop                                              ; $47b5: $00
	jr   jr_033_4778                                 ; $47b6: $18 $c0

	call z, $c082                                    ; $47b8: $cc $82 $c0
	dec  b                                           ; $47bb: $05
	ld   b, b                                        ; $47bc: $40
	ld   c, h                                        ; $47bd: $4c
	nop                                              ; $47be: $00

jr_033_47bf:
	jr   jr_033_47c1                                 ; $47bf: $18 $00

jr_033_47c1:
	ldh  a, [$89]                                    ; $47c1: $f0 $89
	nop                                              ; $47c3: $00
	inc  b                                           ; $47c4: $04
	ld   bc, $0200                                   ; $47c5: $01 $00 $02
	ld   bc, $8105                                   ; $47c8: $01 $05 $81
	inc  bc                                          ; $47cb: $03
	rrca                                             ; $47cc: $0f
	rlca                                             ; $47cd: $07
	ld   bc, $0205                                   ; $47ce: $01 $05 $02
	ld   a, [de]                                     ; $47d1: $1a
	ld   b, $26                                      ; $47d2: $06 $26
	ld   e, $5f                                      ; $47d4: $1e $5f
	dec  a                                           ; $47d6: $3d
	ld   a, a                                        ; $47d7: $7f
	dec  de                                          ; $47d8: $1b
	ccf                                              ; $47d9: $3f
	rlca                                             ; $47da: $07
	rla                                              ; $47db: $17
	rlca                                             ; $47dc: $07
	add  d                                           ; $47dd: $82
	dec  b                                           ; $47de: $05
	dec  c                                           ; $47df: $0d
	ld   a, [bc]                                     ; $47e0: $0a
	ld   [bc], a                                     ; $47e1: $02
	add  $00                                         ; $47e2: $c6 $00
	ld   [hl+], a                                    ; $47e4: $22
	pop  bc                                          ; $47e5: $c1
	db   $dd                                         ; $47e6: $dd
	db   $e3                                         ; $47e7: $e3
	db   $eb                                         ; $47e8: $eb

jr_033_47e9:
	ret  z                                           ; $47e9: $c8

	rst  $30                                         ; $47ea: $f7
	or   a                                           ; $47eb: $b7
	ldh  [c], a                                      ; $47ec: $e2
	ld   h, d                                        ; $47ed: $62
	add  b                                           ; $47ee: $80
	db   $dd                                         ; $47ef: $dd
	add  b                                           ; $47f0: $80
	cp   b                                           ; $47f1: $b8
	inc  c                                           ; $47f2: $0c
	ret  c                                           ; $47f3: $d8

	jp   c, $b7b2                                    ; $47f4: $da $b2 $b7

	rst  $20                                         ; $47f7: $e7
	db   $e3                                         ; $47f8: $e3
	db   $d3                                         ; $47f9: $d3
	rst  ToBoot                                         ; $47fa: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47fb: $cf
	jp   $c3cb                                       ; $47fc: $c3 $cb $c3


	sub  e                                           ; $47ff: $93
	add  b                                           ; $4800: $80
	xor  a                                           ; $4801: $af
	dec  b                                           ; $4802: $05
	or   h                                           ; $4803: $b4
	ld   c, e                                        ; $4804: $4b
	nop                                              ; $4805: $00
	ld   b, b                                        ; $4806: $40
	add  b                                           ; $4807: $80
	and  b                                           ; $4808: $a0
	add  d                                           ; $4809: $82
	ret  nz                                          ; $480a: $c0

	inc  bc                                          ; $480b: $03
	ld   b, b                                        ; $480c: $40
	ldh  [$80], a                                    ; $480d: $e0 $80
	ldh  [$81], a                                    ; $480f: $e0 $81
	ret  nz                                          ; $4811: $c0

	inc  c                                           ; $4812: $0c
	ldh  a, [$e0]                                    ; $4813: $f0 $e0
	jr   nz, @-$5e                                   ; $4815: $20 $a0

	cp   b                                           ; $4817: $b8
	jr   nc, jr_033_483a                             ; $4818: $30 $20

	and  b                                           ; $481a: $a0
	sbc  h                                           ; $481b: $9c
	jr   @+$16                                       ; $481c: $18 $14

	ld   d, b                                        ; $481e: $50
	ld   b, a                                        ; $481f: $47
	add  b                                           ; $4820: $80
	add  b                                           ; $4821: $80
	inc  bc                                          ; $4822: $03
	cp   [hl]                                        ; $4823: $be
	ld   b, d                                        ; $4824: $42
	nop                                              ; $4825: $00
	ld   [bc], a                                     ; $4826: $02
	add  l                                           ; $4827: $85
	nop                                              ; $4828: $00
	ld   b, $03                                      ; $4829: $06 $03
	nop                                              ; $482b: $00
	ld   b, $00                                      ; $482c: $06 $00
	inc  c                                           ; $482e: $0c
	nop                                              ; $482f: $00
	ld   bc, $0081                                   ; $4830: $01 $81 $00
	inc  b                                           ; $4833: $04
	inc  c                                           ; $4834: $0c
	nop                                              ; $4835: $00
	ld   b, $00                                      ; $4836: $06 $00
	inc  bc                                          ; $4838: $03
	add  l                                           ; $4839: $85

jr_033_483a:
	nop                                              ; $483a: $00
	ld   a, [bc]                                     ; $483b: $0a
	rst  ToBoot                                         ; $483c: $c7
	jr   c, jr_033_47bf                              ; $483d: $38 $80

	nop                                              ; $483f: $00
	jr   c, jr_033_4842                              ; $4840: $38 $00

jr_033_4842:
	ld   c, b                                        ; $4842: $48
	ld   [bc], a                                     ; $4843: $02
	ld   [de], a                                     ; $4844: $12
	nop                                              ; $4845: $00
	ldh  [$80], a                                    ; $4846: $e0 $80
	ld   e, $80                                      ; $4848: $1e $80
	ccf                                              ; $484a: $3f
	add  b                                           ; $484b: $80
	ld   a, a                                        ; $484c: $7f
	add  b                                           ; $484d: $80
	rst  $38                                         ; $484e: $ff
	add  b                                           ; $484f: $80
	pop  hl                                          ; $4850: $e1
	add  c                                           ; $4851: $81
	nop                                              ; $4852: $00
	ld   [bc], a                                     ; $4853: $02
	add  b                                           ; $4854: $80
	inc  sp                                          ; $4855: $33
	ld   [hl], e                                     ; $4856: $73
	add  b                                           ; $4857: $80
	ld   [de], a                                     ; $4858: $12
	rlca                                             ; $4859: $07
	nop                                              ; $485a: $00
	ccf                                              ; $485b: $3f
	nop                                              ; $485c: $00
	ccf                                              ; $485d: $3f
	ret  nz                                          ; $485e: $c0

	rrca                                             ; $485f: $0f
	nop                                              ; $4860: $00
	ld   h, b                                        ; $4861: $60
	add  e                                           ; $4862: $83
	nop                                              ; $4863: $00
	ld   b, $60                                      ; $4864: $06 $60
	nop                                              ; $4866: $00
	jr   c, jr_033_47e9                              ; $4867: $38 $80

	adc  h                                           ; $4869: $8c
	add  b                                           ; $486a: $80
	and  b                                           ; $486b: $a0
	add  c                                           ; $486c: $81
	ret  nz                                          ; $486d: $c0

	ld   b, $cc                                      ; $486e: $06 $cc
	ret  nz                                          ; $4870: $c0

	ret  c                                           ; $4871: $d8

	nop                                              ; $4872: $00
	ld   [hl], b                                     ; $4873: $70
	nop                                              ; $4874: $00
	add  b                                           ; $4875: $80
	add  e                                           ; $4876: $83
	nop                                              ; $4877: $00
	ld   b, $01                                      ; $4878: $06 $01
	nop                                              ; $487a: $00
	ld   [bc], a                                     ; $487b: $02
	ld   bc, $0305                                   ; $487c: $01 $05 $03
	dec  bc                                          ; $487f: $0b
	add  c                                           ; $4880: $81
	rlca                                             ; $4881: $07
	rrca                                             ; $4882: $0f
	rrca                                             ; $4883: $0f
	ld   [bc], a                                     ; $4884: $02
	dec  bc                                          ; $4885: $0b
	dec  b                                           ; $4886: $05
	dec  [hl]                                        ; $4887: $35
	dec  c                                           ; $4888: $0d
	ld   c, l                                        ; $4889: $4d
	dec  a                                           ; $488a: $3d
	cp   a                                           ; $488b: $bf
	ld   a, e                                        ; $488c: $7b
	rst  $38                                         ; $488d: $ff
	scf                                              ; $488e: $37
	ld   a, a                                        ; $488f: $7f
	rrca                                             ; $4890: $0f
	cpl                                              ; $4891: $2f
	rrca                                             ; $4892: $0f
	add  d                                           ; $4893: $82
	dec  bc                                          ; $4894: $0b
	dec  bc                                          ; $4895: $0b
	dec  d                                           ; $4896: $15
	dec  b                                           ; $4897: $05
	adc  h                                           ; $4898: $8c
	nop                                              ; $4899: $00
	ld   b, h                                        ; $489a: $44
	add  e                                           ; $489b: $83
	cp   e                                           ; $489c: $bb
	rst  ToBoot                                         ; $489d: $c7
	rst  $10                                         ; $489e: $d7
	sub  c                                           ; $489f: $91
	rst  $28                                         ; $48a0: $ef
	ld   l, [hl]                                     ; $48a1: $6e
	add  b                                           ; $48a2: $80
	push bc                                          ; $48a3: $c5
	add  b                                           ; $48a4: $80
	cp   e                                           ; $48a5: $bb
	add  b                                           ; $48a6: $80
	ld   [hl], c                                     ; $48a7: $71
	inc  c                                           ; $48a8: $0c
	or   c                                           ; $48a9: $b1
	or   l                                           ; $48aa: $b5
	ld   h, h                                        ; $48ab: $64
	ld   l, a                                        ; $48ac: $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48ad: $cf
	add  $a6                                         ; $48ae: $c6 $a6
	adc  a                                           ; $48b0: $8f
	sbc  a                                           ; $48b1: $9f
	add  [hl]                                        ; $48b2: $86
	sub  [hl]                                        ; $48b3: $96
	add  [hl]                                        ; $48b4: $86
	and  [hl]                                        ; $48b5: $a6
	add  b                                           ; $48b6: $80
	cp   a                                           ; $48b7: $bf
	dec  b                                           ; $48b8: $05
	sbc  a                                           ; $48b9: $9f
	ldh  [rP1], a                                    ; $48ba: $e0 $00
	add  b                                           ; $48bc: $80
	nop                                              ; $48bd: $00
	ld   b, b                                        ; $48be: $40
	add  e                                           ; $48bf: $83
	add  b                                           ; $48c0: $80
	ld   [bc], a                                     ; $48c1: $02
	ret  nz                                          ; $48c2: $c0

	nop                                              ; $48c3: $00
	ret  nz                                          ; $48c4: $c0

	add  c                                           ; $48c5: $81
	add  b                                           ; $48c6: $80
	ld   bc, $c0e0                                   ; $48c7: $01 $e0 $c0
	add  b                                           ; $48ca: $80
	ld   b, b                                        ; $48cb: $40
	ld   bc, $6070                                   ; $48cc: $01 $70 $60
	add  b                                           ; $48cf: $80
	ld   b, b                                        ; $48d0: $40
	ld   c, $38                                      ; $48d1: $0e $38
	jr   nc, jr_033_48fd                             ; $48d3: $30 $28

	and  b                                           ; $48d5: $a0
	sub  b                                           ; $48d6: $90
	add  b                                           ; $48d7: $80
	ldh  [rP1], a                                    ; $48d8: $e0 $00
	add  a                                           ; $48da: $87
	nop                                              ; $48db: $00
	ld   bc, $0400                                   ; $48dc: $01 $00 $04
	nop                                              ; $48df: $00
	inc  bc                                          ; $48e0: $03
	add  e                                           ; $48e1: $83
	nop                                              ; $48e2: $00
	ld   [bc], a                                     ; $48e3: $02
	inc  bc                                          ; $48e4: $03
	nop                                              ; $48e5: $00
	ld   b, $85                                      ; $48e6: $06 $85
	nop                                              ; $48e8: $00
	inc  b                                           ; $48e9: $04
	ld   b, $00                                      ; $48ea: $06 $00
	inc  bc                                          ; $48ec: $03
	nop                                              ; $48ed: $00
	ld   bc, $0083                                   ; $48ee: $01 $83 $00
	ld   [bc], a                                     ; $48f1: $02
	cp   a                                           ; $48f2: $bf
	nop                                              ; $48f3: $00
	add  b                                           ; $48f4: $80
	add  b                                           ; $48f5: $80
	nop                                              ; $48f6: $00
	add  hl, bc                                      ; $48f7: $09
	ld   e, $3e                                      ; $48f8: $1e $3e
	rrca                                             ; $48fa: $0f
	sbc  a                                           ; $48fb: $9f
	nop                                              ; $48fc: $00

jr_033_48fd:
	rst  ToBoot                                         ; $48fd: $c7
	rlca                                             ; $48fe: $07
	scf                                              ; $48ff: $37
	rlca                                             ; $4900: $07
	add  b                                           ; $4901: $80
	add  b                                           ; $4902: $80
	ld   a, b                                        ; $4903: $78
	add  d                                           ; $4904: $82
	ld   a, a                                        ; $4905: $7f
	add  b                                           ; $4906: $80
	ld   b, b                                        ; $4907: $40
	add  b                                           ; $4908: $80
	nop                                              ; $4909: $00
	add  hl, bc                                      ; $490a: $09
	ld   [$0ce8], sp                                 ; $490b: $08 $e8 $0c
	dec  e                                           ; $490e: $1d
	nop                                              ; $490f: $00
	ld   c, $00                                      ; $4910: $0e $00
	ld   b, b                                        ; $4912: $40
	nop                                              ; $4913: $00
	ld   h, b                                        ; $4914: $60
	add  c                                           ; $4915: $81
	nop                                              ; $4916: $00
	nop                                              ; $4917: $00
	or   b                                           ; $4918: $b0
	add  c                                           ; $4919: $81
	nop                                              ; $491a: $00
	rra                                              ; $491b: $1f
	jr   nc, jr_033_491e                             ; $491c: $30 $00

jr_033_491e:
	ld   [hl], b                                     ; $491e: $70
	nop                                              ; $491f: $00
	ld   e, b                                        ; $4920: $58
	nop                                              ; $4921: $00
	ld   c, h                                        ; $4922: $4c
	add  b                                           ; $4923: $80
	and  b                                           ; $4924: $a0
	ret  nz                                          ; $4925: $c0

	ret  nc                                          ; $4926: $d0

	ld   h, b                                        ; $4927: $60
	ld   l, h                                        ; $4928: $6c
	jr   nz, jr_033_4953                             ; $4929: $20 $28

	add  b                                           ; $492b: $80
	sub  b                                           ; $492c: $90
	ret  nz                                          ; $492d: $c0

	ldh  [rP1], a                                    ; $492e: $e0 $00
	ret  nz                                          ; $4930: $c0

	nop                                              ; $4931: $00
	add  e                                           ; $4932: $83
	nop                                              ; $4933: $00
	ld   b, h                                        ; $4934: $44
	add  e                                           ; $4935: $83
	cp   e                                           ; $4936: $bb
	rst  ToBoot                                         ; $4937: $c7
	rst  $10                                         ; $4938: $d7
	sub  c                                           ; $4939: $91
	rst  $28                                         ; $493a: $ef
	ld   l, [hl]                                     ; $493b: $6e
	add  b                                           ; $493c: $80
	push bc                                          ; $493d: $c5
	add  b                                           ; $493e: $80
	cp   e                                           ; $493f: $bb
	add  b                                           ; $4940: $80
	ld   [hl], c                                     ; $4941: $71
	ld   b, $b1                                      ; $4942: $06 $b1
	or   l                                           ; $4944: $b5
	ld   h, h                                        ; $4945: $64
	ld   h, [hl]                                     ; $4946: $66
	add  $db                                         ; $4947: $c6 $db
	sbc  e                                           ; $4949: $9b
	add  b                                           ; $494a: $80
	adc  a                                           ; $494b: $8f
	add  b                                           ; $494c: $80
	sub  [hl]                                        ; $494d: $96
	add  b                                           ; $494e: $80
	cp   a                                           ; $494f: $bf
	add  b                                           ; $4950: $80
	or   c                                           ; $4951: $b1
	dec  b                                           ; $4952: $05

jr_033_4953:
	sub  e                                           ; $4953: $93
	db   $ec                                         ; $4954: $ec
	nop                                              ; $4955: $00
	add  b                                           ; $4956: $80
	nop                                              ; $4957: $00
	ld   b, b                                        ; $4958: $40
	add  e                                           ; $4959: $83
	add  b                                           ; $495a: $80
	ld   [bc], a                                     ; $495b: $02
	ret  nz                                          ; $495c: $c0

	nop                                              ; $495d: $00
	ret  nz                                          ; $495e: $c0

	add  c                                           ; $495f: $81
	add  b                                           ; $4960: $80
	ld   bc, $c0e0                                   ; $4961: $01 $e0 $c0
	add  b                                           ; $4964: $80
	ld   b, b                                        ; $4965: $40
	ld   bc, $6070                                   ; $4966: $01 $70 $60
	add  b                                           ; $4969: $80
	ld   b, b                                        ; $496a: $40
	ld   de, $b038                                   ; $496b: $11 $38 $b0
	xor  b                                           ; $496e: $a8
	and  b                                           ; $496f: $a0
	sub  b                                           ; $4970: $90
	add  b                                           ; $4971: $80
	ldh  [rP1], a                                    ; $4972: $e0 $00
	inc  bc                                          ; $4974: $03
	nop                                              ; $4975: $00
	ld   b, h                                        ; $4976: $44
	add  e                                           ; $4977: $83
	cp   e                                           ; $4978: $bb
	rst  ToBoot                                         ; $4979: $c7
	rst  $10                                         ; $497a: $d7
	sub  c                                           ; $497b: $91
	rst  $28                                         ; $497c: $ef
	ld   l, [hl]                                     ; $497d: $6e
	add  b                                           ; $497e: $80
	push bc                                          ; $497f: $c5
	add  b                                           ; $4980: $80
	cp   e                                           ; $4981: $bb
	add  b                                           ; $4982: $80
	ld   [hl], c                                     ; $4983: $71
	inc  c                                           ; $4984: $0c
	or   c                                           ; $4985: $b1
	or   l                                           ; $4986: $b5
	ld   h, h                                        ; $4987: $64
	ld   l, a                                        ; $4988: $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4989: $cf
	db   $dd                                         ; $498a: $dd
	sbc  l                                           ; $498b: $9d
	add  d                                           ; $498c: $82
	or   d                                           ; $498d: $b2
	add  [hl]                                        ; $498e: $86
	adc  a                                           ; $498f: $8f
	add  [hl]                                        ; $4990: $86
	cp   a                                           ; $4991: $bf
	add  b                                           ; $4992: $80
	cp   l                                           ; $4993: $bd
	dec  b                                           ; $4994: $05
	cp   a                                           ; $4995: $bf
	ret  nz                                          ; $4996: $c0

	nop                                              ; $4997: $00
	add  b                                           ; $4998: $80
	nop                                              ; $4999: $00
	ld   b, b                                        ; $499a: $40
	add  e                                           ; $499b: $83
	add  b                                           ; $499c: $80
	ld   [bc], a                                     ; $499d: $02
	ret  nz                                          ; $499e: $c0

	nop                                              ; $499f: $00
	ret  nz                                          ; $49a0: $c0

	add  c                                           ; $49a1: $81
	add  b                                           ; $49a2: $80
	ld   bc, $c0e0                                   ; $49a3: $01 $e0 $c0
	add  b                                           ; $49a6: $80
	ld   b, b                                        ; $49a7: $40
	ld   bc, $6070                                   ; $49a8: $01 $70 $60
	add  b                                           ; $49ab: $80
	ld   b, b                                        ; $49ac: $40
	ld   d, $38                                      ; $49ad: $16 $38
	jr   nc, @+$2a                                   ; $49af: $30 $28

	and  b                                           ; $49b1: $a0
	sub  b                                           ; $49b2: $90
	add  b                                           ; $49b3: $80
	ldh  [rP1], a                                    ; $49b4: $e0 $00
	ld   a, a                                        ; $49b6: $7f
	nop                                              ; $49b7: $00
	ld   a, $00                                      ; $49b8: $3e $00
	ld   h, b                                        ; $49ba: $60
	nop                                              ; $49bb: $00
	jr   nc, jr_033_49be                             ; $49bc: $30 $00

jr_033_49be:
	jr   jr_033_49c0                                 ; $49be: $18 $00

jr_033_49c0:
	inc  c                                           ; $49c0: $0c
	nop                                              ; $49c1: $00
	ld   b, $00                                      ; $49c2: $06 $00
	ld   a, h                                        ; $49c4: $7c
	add  c                                           ; $49c5: $81
	nop                                              ; $49c6: $00
	inc  c                                           ; $49c7: $0c
	ld   a, $00                                      ; $49c8: $3e $00
	ld   h, b                                        ; $49ca: $60
	nop                                              ; $49cb: $00
	jr   nc, jr_033_49ce                             ; $49cc: $30 $00

jr_033_49ce:
	jr   jr_033_49d0                                 ; $49ce: $18 $00

jr_033_49d0:
	inc  c                                           ; $49d0: $0c
	nop                                              ; $49d1: $00
	ld   b, $00                                      ; $49d2: $06 $00
	ld   a, h                                        ; $49d4: $7c
	add  c                                           ; $49d5: $81
	nop                                              ; $49d6: $00
	inc  c                                           ; $49d7: $0c
	ld   a, $00                                      ; $49d8: $3e $00
	ld   h, b                                        ; $49da: $60
	nop                                              ; $49db: $00
	jr   nc, jr_033_49de                             ; $49dc: $30 $00

jr_033_49de:
	jr   jr_033_49e0                                 ; $49de: $18 $00

jr_033_49e0:
	inc  c                                           ; $49e0: $0c
	nop                                              ; $49e1: $00
	ld   b, $00                                      ; $49e2: $06 $00
	ld   a, h                                        ; $49e4: $7c
	add  c                                           ; $49e5: $81
	nop                                              ; $49e6: $00
	inc  c                                           ; $49e7: $0c
	ld   a, $00                                      ; $49e8: $3e $00
	ld   h, b                                        ; $49ea: $60
	nop                                              ; $49eb: $00
	jr   nc, jr_033_49ee                             ; $49ec: $30 $00

jr_033_49ee:
	jr   jr_033_49f0                                 ; $49ee: $18 $00

jr_033_49f0:
	inc  c                                           ; $49f0: $0c
	nop                                              ; $49f1: $00
	ld   b, $00                                      ; $49f2: $06 $00
	ld   a, h                                        ; $49f4: $7c
	add  c                                           ; $49f5: $81
	nop                                              ; $49f6: $00
	inc  c                                           ; $49f7: $0c
	ld   a, $00                                      ; $49f8: $3e $00
	ld   h, b                                        ; $49fa: $60
	nop                                              ; $49fb: $00
	jr   nc, jr_033_49fe                             ; $49fc: $30 $00

jr_033_49fe:
	jr   jr_033_4a00                                 ; $49fe: $18 $00

jr_033_4a00:
	inc  c                                           ; $4a00: $0c
	nop                                              ; $4a01: $00
	ld   b, $00                                      ; $4a02: $06 $00
	ld   a, h                                        ; $4a04: $7c
	add  c                                           ; $4a05: $81
	nop                                              ; $4a06: $00
	inc  c                                           ; $4a07: $0c
	ld   a, $00                                      ; $4a08: $3e $00
	ld   h, b                                        ; $4a0a: $60
	nop                                              ; $4a0b: $00
	jr   nc, jr_033_4a0e                             ; $4a0c: $30 $00

jr_033_4a0e:
	jr   jr_033_4a10                                 ; $4a0e: $18 $00

jr_033_4a10:
	inc  c                                           ; $4a10: $0c
	nop                                              ; $4a11: $00
	ld   b, $00                                      ; $4a12: $06 $00
	ld   a, h                                        ; $4a14: $7c
	add  c                                           ; $4a15: $81
	nop                                              ; $4a16: $00
	inc  c                                           ; $4a17: $0c
	ld   a, $00                                      ; $4a18: $3e $00
	ld   h, b                                        ; $4a1a: $60
	nop                                              ; $4a1b: $00
	jr   nc, jr_033_4a1e                             ; $4a1c: $30 $00

jr_033_4a1e:
	jr   jr_033_4a20                                 ; $4a1e: $18 $00

jr_033_4a20:
	inc  c                                           ; $4a20: $0c
	nop                                              ; $4a21: $00
	ld   b, $00                                      ; $4a22: $06 $00
	ld   a, h                                        ; $4a24: $7c
	add  c                                           ; $4a25: $81
	nop                                              ; $4a26: $00
	inc  c                                           ; $4a27: $0c
	ld   a, $00                                      ; $4a28: $3e $00
	ld   h, b                                        ; $4a2a: $60
	nop                                              ; $4a2b: $00
	jr   nc, jr_033_4a2e                             ; $4a2c: $30 $00

jr_033_4a2e:
	jr   jr_033_4a30                                 ; $4a2e: $18 $00

jr_033_4a30:
	inc  c                                           ; $4a30: $0c
	nop                                              ; $4a31: $00
	ld   b, $00                                      ; $4a32: $06 $00
	ld   a, h                                        ; $4a34: $7c
	add  c                                           ; $4a35: $81
	nop                                              ; $4a36: $00
	inc  c                                           ; $4a37: $0c
	ld   a, $00                                      ; $4a38: $3e $00
	ld   h, b                                        ; $4a3a: $60
	nop                                              ; $4a3b: $00
	jr   nc, jr_033_4a3e                             ; $4a3c: $30 $00

jr_033_4a3e:
	jr   jr_033_4a40                                 ; $4a3e: $18 $00

jr_033_4a40:
	inc  c                                           ; $4a40: $0c
	nop                                              ; $4a41: $00
	ld   b, $00                                      ; $4a42: $06 $00
	ld   a, h                                        ; $4a44: $7c
	add  c                                           ; $4a45: $81
	nop                                              ; $4a46: $00
	inc  c                                           ; $4a47: $0c
	ld   a, $00                                      ; $4a48: $3e $00
	ld   h, b                                        ; $4a4a: $60
	nop                                              ; $4a4b: $00
	jr   nc, jr_033_4a4e                             ; $4a4c: $30 $00

jr_033_4a4e:
	jr   jr_033_4a50                                 ; $4a4e: $18 $00

jr_033_4a50:
	inc  c                                           ; $4a50: $0c
	nop                                              ; $4a51: $00
	ld   b, $00                                      ; $4a52: $06 $00
	ld   a, h                                        ; $4a54: $7c
	add  c                                           ; $4a55: $81
	nop                                              ; $4a56: $00
	inc  c                                           ; $4a57: $0c
	ld   a, $00                                      ; $4a58: $3e $00
	ld   h, b                                        ; $4a5a: $60
	nop                                              ; $4a5b: $00
	jr   nc, jr_033_4a5e                             ; $4a5c: $30 $00

jr_033_4a5e:
	jr   jr_033_4a60                                 ; $4a5e: $18 $00

jr_033_4a60:
	inc  c                                           ; $4a60: $0c
	nop                                              ; $4a61: $00
	ld   b, $00                                      ; $4a62: $06 $00
	ld   a, h                                        ; $4a64: $7c
	add  c                                           ; $4a65: $81
	nop                                              ; $4a66: $00
	inc  c                                           ; $4a67: $0c
	ld   a, $00                                      ; $4a68: $3e $00
	ld   h, b                                        ; $4a6a: $60
	nop                                              ; $4a6b: $00
	jr   nc, jr_033_4a6e                             ; $4a6c: $30 $00

jr_033_4a6e:
	jr   jr_033_4a70                                 ; $4a6e: $18 $00

jr_033_4a70:
	inc  c                                           ; $4a70: $0c
	nop                                              ; $4a71: $00
	ld   b, $00                                      ; $4a72: $06 $00
	ld   a, h                                        ; $4a74: $7c
	add  c                                           ; $4a75: $81
	nop                                              ; $4a76: $00
	inc  c                                           ; $4a77: $0c
	ld   a, $00                                      ; $4a78: $3e $00
	ld   h, b                                        ; $4a7a: $60
	nop                                              ; $4a7b: $00
	jr   nc, jr_033_4a7e                             ; $4a7c: $30 $00

jr_033_4a7e:
	jr   jr_033_4a80                                 ; $4a7e: $18 $00

jr_033_4a80:
	inc  c                                           ; $4a80: $0c
	nop                                              ; $4a81: $00
	ld   b, $00                                      ; $4a82: $06 $00
	ld   a, h                                        ; $4a84: $7c
	add  c                                           ; $4a85: $81
	nop                                              ; $4a86: $00
	inc  c                                           ; $4a87: $0c
	ld   a, $00                                      ; $4a88: $3e $00
	ld   h, b                                        ; $4a8a: $60
	nop                                              ; $4a8b: $00
	jr   nc, jr_033_4a8e                             ; $4a8c: $30 $00

jr_033_4a8e:
	jr   jr_033_4a90                                 ; $4a8e: $18 $00

jr_033_4a90:
	inc  c                                           ; $4a90: $0c
	nop                                              ; $4a91: $00
	ld   b, $00                                      ; $4a92: $06 $00
	ld   a, h                                        ; $4a94: $7c
	add  c                                           ; $4a95: $81
	nop                                              ; $4a96: $00
	inc  c                                           ; $4a97: $0c
	ld   a, $00                                      ; $4a98: $3e $00
	ld   h, b                                        ; $4a9a: $60
	nop                                              ; $4a9b: $00
	jr   nc, jr_033_4a9e                             ; $4a9c: $30 $00

jr_033_4a9e:
	jr   jr_033_4aa0                                 ; $4a9e: $18 $00

jr_033_4aa0:
	inc  c                                           ; $4aa0: $0c
	nop                                              ; $4aa1: $00
	ld   b, $00                                      ; $4aa2: $06 $00

Call_033_4aa4:
	ld   a, h                                        ; $4aa4: $7c
	add  c                                           ; $4aa5: $81
	nop                                              ; $4aa6: $00
	inc  c                                           ; $4aa7: $0c
	ld   a, $00                                      ; $4aa8: $3e $00
	ld   h, b                                        ; $4aaa: $60
	nop                                              ; $4aab: $00
	jr   nc, jr_033_4aae                             ; $4aac: $30 $00

jr_033_4aae:
	jr   jr_033_4ab0                                 ; $4aae: $18 $00

jr_033_4ab0:
	inc  c                                           ; $4ab0: $0c
	nop                                              ; $4ab1: $00
	ld   b, $00                                      ; $4ab2: $06 $00
	ld   a, h                                        ; $4ab4: $7c
	add  c                                           ; $4ab5: $81
	nop                                              ; $4ab6: $00
	inc  c                                           ; $4ab7: $0c
	ld   a, $00                                      ; $4ab8: $3e $00
	ld   h, b                                        ; $4aba: $60
	nop                                              ; $4abb: $00
	jr   nc, jr_033_4abe                             ; $4abc: $30 $00

jr_033_4abe:
	jr   jr_033_4ac0                                 ; $4abe: $18 $00

jr_033_4ac0:
	inc  c                                           ; $4ac0: $0c
	nop                                              ; $4ac1: $00
	ld   b, $00                                      ; $4ac2: $06 $00
	ld   a, h                                        ; $4ac4: $7c
	add  c                                           ; $4ac5: $81
	nop                                              ; $4ac6: $00
	inc  c                                           ; $4ac7: $0c
	ld   a, $00                                      ; $4ac8: $3e $00
	ld   h, b                                        ; $4aca: $60
	nop                                              ; $4acb: $00
	jr   nc, jr_033_4ace                             ; $4acc: $30 $00

jr_033_4ace:
	jr   jr_033_4ad0                                 ; $4ace: $18 $00

jr_033_4ad0:
	inc  c                                           ; $4ad0: $0c
	nop                                              ; $4ad1: $00
	ld   b, $00                                      ; $4ad2: $06 $00
	ld   a, h                                        ; $4ad4: $7c
	add  c                                           ; $4ad5: $81
	nop                                              ; $4ad6: $00
	inc  c                                           ; $4ad7: $0c
	ld   a, $00                                      ; $4ad8: $3e $00
	ld   h, b                                        ; $4ada: $60
	nop                                              ; $4adb: $00
	jr   nc, jr_033_4ade                             ; $4adc: $30 $00

jr_033_4ade:
	jr   jr_033_4ae0                                 ; $4ade: $18 $00

jr_033_4ae0:
	inc  c                                           ; $4ae0: $0c
	nop                                              ; $4ae1: $00
	ld   b, $00                                      ; $4ae2: $06 $00
	ld   a, h                                        ; $4ae4: $7c
	add  c                                           ; $4ae5: $81
	nop                                              ; $4ae6: $00
	ld   c, $3e                                      ; $4ae7: $0e $3e
	nop                                              ; $4ae9: $00
	ld   h, b                                        ; $4aea: $60
	nop                                              ; $4aeb: $00
	jr   nc, jr_033_4aee                             ; $4aec: $30 $00

jr_033_4aee:
	jr   jr_033_4af0                                 ; $4aee: $18 $00

jr_033_4af0:
	inc  c                                           ; $4af0: $0c
	nop                                              ; $4af1: $00
	ld   b, $00                                      ; $4af2: $06 $00
	ld   a, h                                        ; $4af4: $7c
	nop                                              ; $4af5: $00
	rst  $38                                         ; $4af6: $ff
	add  e                                           ; $4af7: $83
	nop                                              ; $4af8: $00
	ld   b, $07                                      ; $4af9: $06 $07
	nop                                              ; $4afb: $00
	ccf                                              ; $4afc: $3f
	rlca                                             ; $4afd: $07
	ld   a, e                                        ; $4afe: $7b

jr_033_4aff:
	dec  sp                                          ; $4aff: $3b
	cpl                                              ; $4b00: $2f
	add  c                                           ; $4b01: $81
	ccf                                              ; $4b02: $3f
	inc  bc                                          ; $4b03: $03
	ld   c, a                                        ; $4b04: $4f
	rra                                              ; $4b05: $1f
	daa                                              ; $4b06: $27
	rlca                                             ; $4b07: $07
	add  b                                           ; $4b08: $80
	rrca                                             ; $4b09: $0f
	inc  b                                           ; $4b0a: $04
	rla                                              ; $4b0b: $17
	rlca                                             ; $4b0c: $07
	ld   [$0700], sp                                 ; $4b0d: $08 $00 $07
	adc  c                                           ; $4b10: $89
	nop                                              ; $4b11: $00
	inc  bc                                          ; $4b12: $03
	cp   $00                                         ; $4b13: $fe $00
	ei                                               ; $4b15: $fb
	ld   a, [$fe80]                                  ; $4b16: $fa $80 $fe
	add  c                                           ; $4b19: $81
	db   $f4                                         ; $4b1a: $f4
	dec  bc                                          ; $4b1b: $0b
	db   $fc                                         ; $4b1c: $fc
	adc  b                                           ; $4b1d: $88
	sub  h                                           ; $4b1e: $94
	sub  l                                           ; $4b1f: $95
	db   $fc                                         ; $4b20: $fc
	ld   hl, sp-$04                                  ; $4b21: $f8 $fc
	sub  d                                           ; $4b23: $92
	ld   hl, sp+$1c                                  ; $4b24: $f8 $1c
	ld   [$8bf8], sp                                 ; $4b26: $08 $f8 $8b
	nop                                              ; $4b29: $00
	inc  b                                           ; $4b2a: $04
	ccf                                              ; $4b2b: $3f
	nop                                              ; $4b2c: $00
	ld   a, e                                        ; $4b2d: $7b
	dec  sp                                          ; $4b2e: $3b
	cpl                                              ; $4b2f: $2f
	add  c                                           ; $4b30: $81
	ccf                                              ; $4b31: $3f
	ld   a, [bc]                                     ; $4b32: $0a
	cpl                                              ; $4b33: $2f
	ccf                                              ; $4b34: $3f
	ld   b, a                                        ; $4b35: $47
	rlca                                             ; $4b36: $07
	cpl                                              ; $4b37: $2f
	rrca                                             ; $4b38: $0f
	rla                                              ; $4b39: $17
	rlca                                             ; $4b3a: $07
	ld   [$0700], sp                                 ; $4b3b: $08 $00 $07
	adc  e                                           ; $4b3e: $8b
	nop                                              ; $4b3f: $00
	ld   bc, $00ff                                   ; $4b40: $01 $ff $00
	add  b                                           ; $4b43: $80
	cp   $81                                         ; $4b44: $fe $81
	db   $f4                                         ; $4b46: $f4
	dec  bc                                          ; $4b47: $0b
	db   $fc                                         ; $4b48: $fc
	jr   z, jr_033_4b7f                              ; $4b49: $28 $34

	sub  l                                           ; $4b4b: $95
	db   $fc                                         ; $4b4c: $fc
	ld   a, b                                        ; $4b4d: $78
	db   $fc                                         ; $4b4e: $fc
	ld   [hl-], a                                    ; $4b4f: $32
	ld   hl, sp+$3c                                  ; $4b50: $f8 $3c
	ld   [$8bf8], sp                                 ; $4b52: $08 $f8 $8b
	nop                                              ; $4b55: $00
	ld   [bc], a                                     ; $4b56: $02
	ld   h, b                                        ; $4b57: $60
	nop                                              ; $4b58: $00
	ldh  a, [$80]                                    ; $4b59: $f0 $80
	ld   d, b                                        ; $4b5b: $50
	ld   [bc], a                                     ; $4b5c: $02
	db   $10                                         ; $4b5d: $10
	ldh  [$60], a                                    ; $4b5e: $e0 $60
	sub  d                                           ; $4b60: $92
	nop                                              ; $4b61: $00
	inc  b                                           ; $4b62: $04
	jr   c, jr_033_4b65                              ; $4b63: $38 $00

jr_033_4b65:
	inc  a                                           ; $4b65: $3c
	ld   h, b                                        ; $4b66: $60
	and  $80                                         ; $4b67: $e6 $80
	ld   h, d                                        ; $4b69: $62
	ld   [bc], a                                     ; $4b6a: $02
	ld   [bc], a                                     ; $4b6b: $02
	call nz, $8044                                   ; $4b6c: $c4 $44 $80
	jr   c, jr_033_4aff                              ; $4b6f: $38 $8e

	nop                                              ; $4b71: $00
	inc  b                                           ; $4b72: $04
	inc  a                                           ; $4b73: $3c
	nop                                              ; $4b74: $00
	ld   a, [hl]                                     ; $4b75: $7e
	nop                                              ; $4b76: $00
	jp   $3182                                       ; $4b77: $c3 $82 $31


	add  c                                           ; $4b7a: $81
	ld   bc, wLCDC                                   ; $4b7b: $01 $03 $c2
	ld   [bc], a                                     ; $4b7e: $02

jr_033_4b7f:
	ld   a, h                                        ; $4b7f: $7c
	inc  a                                           ; $4b80: $3c
	adc  [hl]                                        ; $4b81: $8e

jr_033_4b82:
	nop                                              ; $4b82: $00
	ld   c, $ff                                      ; $4b83: $0e $ff
	nop                                              ; $4b85: $00
	ld   a, $00                                      ; $4b86: $3e $00
	ld   h, b                                        ; $4b88: $60
	nop                                              ; $4b89: $00
	jr   nc, jr_033_4b8c                             ; $4b8a: $30 $00

jr_033_4b8c:
	jr   jr_033_4b8e                                 ; $4b8c: $18 $00

jr_033_4b8e:
	inc  c                                           ; $4b8e: $0c
	nop                                              ; $4b8f: $00
	ld   b, $00                                      ; $4b90: $06 $00
	ld   a, h                                        ; $4b92: $7c
	add  c                                           ; $4b93: $81
	nop                                              ; $4b94: $00
	ld   c, $3e                                      ; $4b95: $0e $3e
	nop                                              ; $4b97: $00
	ld   h, b                                        ; $4b98: $60
	nop                                              ; $4b99: $00
	jr   nc, jr_033_4b9c                             ; $4b9a: $30 $00

jr_033_4b9c:
	jr   jr_033_4b9e                                 ; $4b9c: $18 $00

jr_033_4b9e:
	inc  c                                           ; $4b9e: $0c
	nop                                              ; $4b9f: $00
	ld   b, $00                                      ; $4ba0: $06 $00
	ld   a, h                                        ; $4ba2: $7c
	nop                                              ; $4ba3: $00
	rst  $38                                         ; $4ba4: $ff
	add  e                                           ; $4ba5: $83
	nop                                              ; $4ba6: $00
	ld   b, $01                                      ; $4ba7: $06 $01
	nop                                              ; $4ba9: $00
	rlca                                             ; $4baa: $07
	nop                                              ; $4bab: $00
	ld   c, $03                                      ; $4bac: $0e $03
	dec  de                                          ; $4bae: $1b
	add  b                                           ; $4baf: $80
	inc  bc                                          ; $4bb0: $03
	add  e                                           ; $4bb1: $83
	nop                                              ; $4bb2: $00
	dec  b                                           ; $4bb3: $05
	jr   jr_033_4bbe                                 ; $4bb4: $18 $08

	ld   b, $02                                      ; $4bb6: $06 $02
	dec  b                                           ; $4bb8: $05
	ld   bc, $008a                                   ; $4bb9: $01 $8a $00
	dec  b                                           ; $4bbc: $05
	ret  nz                                          ; $4bbd: $c0

jr_033_4bbe:
	nop                                              ; $4bbe: $00
	ldh  a, [rP1]                                    ; $4bbf: $f0 $00
	jr   c, @+$0a                                    ; $4bc1: $38 $08

	add  c                                           ; $4bc3: $81
	inc  b                                           ; $4bc4: $04
	add  b                                           ; $4bc5: $80
	nop                                              ; $4bc6: $00
	add  c                                           ; $4bc7: $81
	inc  b                                           ; $4bc8: $04
	add  b                                           ; $4bc9: $80
	ld   [$3080], sp                                 ; $4bca: $08 $80 $30
	add  b                                           ; $4bcd: $80

jr_033_4bce:
	ret  nz                                          ; $4bce: $c0

	adc  b                                           ; $4bcf: $88
	nop                                              ; $4bd0: $00
	ld   [bc], a                                     ; $4bd1: $02
	rlca                                             ; $4bd2: $07
	nop                                              ; $4bd3: $00
	rlca                                             ; $4bd4: $07
	add  b                                           ; $4bd5: $80
	jr   @+$0b                                       ; $4bd6: $18 $09

	jr   nz, @+$36                                   ; $4bd8: $20 $34

	ld   e, h                                        ; $4bda: $5c
	ld   c, b                                        ; $4bdb: $48
	ld   e, h                                        ; $4bdc: $5c

jr_033_4bdd:
	ld   c, b                                        ; $4bdd: $48
	sbc  h                                           ; $4bde: $9c
	ld   [$c000], sp                                 ; $4bdf: $08 $00 $c0
	add  c                                           ; $4be2: $81
	nop                                              ; $4be3: $00
	dec  b                                           ; $4be4: $05
	ld   h, b                                        ; $4be5: $60
	jr   nz, jr_033_4c00                             ; $4be6: $20 $18

	ld   [$0717], sp                                 ; $4be8: $08 $17 $07
	add  [hl]                                        ; $4beb: $86
	nop                                              ; $4bec: $00
	ld   b, $e0                                      ; $4bed: $06 $e0
	nop                                              ; $4bef: $00
	ld   hl, sp+$00                                  ; $4bf0: $f8 $00
	inc  e                                           ; $4bf2: $1c
	inc  b                                           ; $4bf3: $04
	ld   [bc], a                                     ; $4bf4: $02
	add  b                                           ; $4bf5: $80
	nop                                              ; $4bf6: $00
	nop                                              ; $4bf7: $00
	ld   [bc], a                                     ; $4bf8: $02
	add  d                                           ; $4bf9: $82
	ld   bc, $0282                                   ; $4bfa: $01 $82 $02
	add  b                                           ; $4bfd: $80
	inc  b                                           ; $4bfe: $04

jr_033_4bff:
	add  b                                           ; $4bff: $80

jr_033_4c00:
	jr   jr_033_4b82                                 ; $4c00: $18 $80

	ldh  [$84], a                                    ; $4c02: $e0 $84
	nop                                              ; $4c04: $00
	ld   [bc], a                                     ; $4c05: $02
	ld   bc, $0302                                   ; $4c06: $01 $02 $03
	add  b                                           ; $4c09: $80
	inc  c                                           ; $4c0a: $0c
	ld   b, $10                                      ; $4c0b: $06 $10
	ld   e, $2e                                      ; $4c0d: $1e $2e
	ld   a, [hl+]                                    ; $4c0f: $2a
	ld   l, $6a                                      ; $4c10: $2e $6a
	ld   c, $83                                      ; $4c12: $0e $83
	nop                                              ; $4c14: $00
	ld   bc, $2040                                   ; $4c15: $01 $40 $20
	add  b                                           ; $4c18: $80
	nop                                              ; $4c19: $00
	nop                                              ; $4c1a: $00
	jr   nz, @-$7e                                   ; $4c1b: $20 $80

	db   $10                                         ; $4c1d: $10
	add  b                                           ; $4c1e: $80
	inc  c                                           ; $4c1f: $0c
	add  b                                           ; $4c20: $80
	inc  bc                                          ; $4c21: $03
	add  d                                           ; $4c22: $82
	nop                                              ; $4c23: $00
	ld   b, $c0                                      ; $4c24: $06 $c0
	nop                                              ; $4c26: $00
	ldh  a, [rAUD1SWEEP]                             ; $4c27: $f0 $10
	jr   z, jr_033_4c2b                              ; $4c29: $28 $00

jr_033_4c2b:
	inc  c                                           ; $4c2b: $0c
	add  c                                           ; $4c2c: $81
	inc  b                                           ; $4c2d: $04
	add  [hl]                                        ; $4c2e: $86
	ld   [bc], a                                     ; $4c2f: $02
	add  d                                           ; $4c30: $82
	inc  b                                           ; $4c31: $04
	add  b                                           ; $4c32: $80
	ld   [$3080], sp                                 ; $4c33: $08 $80 $30
	add  b                                           ; $4c36: $80
	ret  nz                                          ; $4c37: $c0

	add  c                                           ; $4c38: $81
	nop                                              ; $4c39: $00
	add  b                                           ; $4c3a: $80
	ld   bc, $0680                                   ; $4c3b: $01 $80 $06
	rlca                                             ; $4c3e: $07
	ld   [$170d], sp                                 ; $4c3f: $08 $0d $17
	ld   [de], a                                     ; $4c42: $12
	rla                                              ; $4c43: $17
	ld   [hl-], a                                    ; $4c44: $32
	rlca                                             ; $4c45: $07
	ld   [bc], a                                     ; $4c46: $02
	add  h                                           ; $4c47: $84
	nop                                              ; $4c48: $00
	add  c                                           ; $4c49: $81
	jr   nz, jr_033_4bce                             ; $4c4a: $20 $82

	db   $10                                         ; $4c4c: $10
	add  b                                           ; $4c4d: $80
	ld   [$0680], sp                                 ; $4c4e: $08 $80 $06
	add  b                                           ; $4c51: $80
	ld   bc, $0006                                   ; $4c52: $01 $06 $00
	add  b                                           ; $4c55: $80
	and  b                                           ; $4c56: $a0
	ld   b, b                                        ; $4c57: $40
	ld   [hl], b                                     ; $4c58: $70
	nop                                              ; $4c59: $00
	jr   jr_033_4bdd                                 ; $4c5a: $18 $81

	nop                                              ; $4c5c: $00
	nop                                              ; $4c5d: $00
	inc  c                                           ; $4c5e: $0c
	adc  c                                           ; $4c5f: $89
	inc  b                                           ; $4c60: $04
	add  d                                           ; $4c61: $82
	ld   [$1080], sp                                 ; $4c62: $08 $80 $10
	add  b                                           ; $4c65: $80
	ld   h, b                                        ; $4c66: $60
	add  b                                           ; $4c67: $80
	add  b                                           ; $4c68: $80
	nop                                              ; $4c69: $00
	rst  $38                                         ; $4c6a: $ff
	add  e                                           ; $4c6b: $83
	nop                                              ; $4c6c: $00
	ld   [bc], a                                     ; $4c6d: $02
	ld   a, h                                        ; $4c6e: $7c
	nop                                              ; $4c6f: $00
	cp   d                                           ; $4c70: $ba

jr_033_4c71:
	add  l                                           ; $4c71: $85
	nop                                              ; $4c72: $00
	nop                                              ; $4c73: $00
	add  $83                                         ; $4c74: $c6 $83
	nop                                              ; $4c76: $00
	inc  b                                           ; $4c77: $04
	inc  c                                           ; $4c78: $0c
	nop                                              ; $4c79: $00
	jr   nc, jr_033_4c7c                             ; $4c7a: $30 $00

jr_033_4c7c:
	jr   nc, jr_033_4bff                             ; $4c7c: $30 $81

	nop                                              ; $4c7e: $00
	ld   [bc], a                                     ; $4c7f: $02
	inc  d                                           ; $4c80: $14
	nop                                              ; $4c81: $00
	jr   @-$7b                                       ; $4c82: $18 $83

	nop                                              ; $4c84: $00
	ld   [bc], a                                     ; $4c85: $02
	ld   a, h                                        ; $4c86: $7c
	nop                                              ; $4c87: $00
	ld   a, d                                        ; $4c88: $7a
	add  e                                           ; $4c89: $83
	nop                                              ; $4c8a: $00
	ld   [bc], a                                     ; $4c8b: $02
	ld   a, [de]                                     ; $4c8c: $1a
	nop                                              ; $4c8d: $00
	inc  e                                           ; $4c8e: $1c
	add  e                                           ; $4c8f: $83
	nop                                              ; $4c90: $00
	inc  b                                           ; $4c91: $04
	ld   a, h                                        ; $4c92: $7c
	nop                                              ; $4c93: $00
	ld   a, [$8000]                                  ; $4c94: $fa $00 $80
	add  c                                           ; $4c97: $81
	nop                                              ; $4c98: $00
	ld   [bc], a                                     ; $4c99: $02
	ld   a, [hl-]                                    ; $4c9a: $3a
	nop                                              ; $4c9b: $00
	inc  a                                           ; $4c9c: $3c
	add  e                                           ; $4c9d: $83
	nop                                              ; $4c9e: $00
	ld   [bc], a                                     ; $4c9f: $02
	ld   b, [hl]                                     ; $4ca0: $46
	nop                                              ; $4ca1: $00
	add  b                                           ; $4ca2: $80
	add  l                                           ; $4ca3: $85
	nop                                              ; $4ca4: $00

jr_033_4ca5:
	nop                                              ; $4ca5: $00
	add  $83                                         ; $4ca6: $c6 $83
	nop                                              ; $4ca8: $00
	ld   [bc], a                                     ; $4ca9: $02
	cp   $00                                         ; $4caa: $fe $00
	ld   a, $83                                      ; $4cac: $3e $83
	nop                                              ; $4cae: $00
	ld   [bc], a                                     ; $4caf: $02
	inc  a                                           ; $4cb0: $3c
	nop                                              ; $4cb1: $00

jr_033_4cb2:
	db   $fc                                         ; $4cb2: $fc
	add  e                                           ; $4cb3: $83
	nop                                              ; $4cb4: $00
	inc  b                                           ; $4cb5: $04
	ld   a, h                                        ; $4cb6: $7c
	nop                                              ; $4cb7: $00
	cp   [hl]                                        ; $4cb8: $be
	nop                                              ; $4cb9: $00
	ld   [bc], a                                     ; $4cba: $02
	add  c                                           ; $4cbb: $81
	nop                                              ; $4cbc: $00
	ld   [bc], a                                     ; $4cbd: $02
	inc  a                                           ; $4cbe: $3c
	nop                                              ; $4cbf: $00
	db   $fc                                         ; $4cc0: $fc

jr_033_4cc1:
	add  e                                           ; $4cc1: $83
	nop                                              ; $4cc2: $00
	ld   [bc], a                                     ; $4cc3: $02
	cp   $00                                         ; $4cc4: $fe $00
	ld   hl, sp-$7f                                  ; $4cc6: $f8 $81
	nop                                              ; $4cc8: $00
	inc  b                                           ; $4cc9: $04
	ld   [$0200], sp                                 ; $4cca: $08 $00 $02
	nop                                              ; $4ccd: $00
	inc  c                                           ; $4cce: $0c
	add  e                                           ; $4ccf: $83
	nop                                              ; $4cd0: $00
	ld   [bc], a                                     ; $4cd1: $02
	ld   a, h                                        ; $4cd2: $7c
	nop                                              ; $4cd3: $00
	cp   d                                           ; $4cd4: $ba
	add  e                                           ; $4cd5: $83
	nop                                              ; $4cd6: $00
	ld   [bc], a                                     ; $4cd7: $02
	cp   d                                           ; $4cd8: $ba
	nop                                              ; $4cd9: $00
	ld   a, h                                        ; $4cda: $7c
	add  e                                           ; $4cdb: $83
	nop                                              ; $4cdc: $00
	ld   [bc], a                                     ; $4cdd: $02
	ld   a, h                                        ; $4cde: $7c
	nop                                              ; $4cdf: $00
	cp   d                                           ; $4ce0: $ba
	add  l                                           ; $4ce1: $85
	nop                                              ; $4ce2: $00
	ld   [bc], a                                     ; $4ce3: $02
	ld   hl, $1808                                   ; $4ce4: $21 $08 $18
	add  b                                           ; $4ce7: $80
	ld   b, $80                                      ; $4ce8: $06 $80
	inc  c                                           ; $4cea: $0c
	add  c                                           ; $4ceb: $81
	nop                                              ; $4cec: $00
	nop                                              ; $4ced: $00
	jr   jr_033_4c71                                 ; $4cee: $18 $81

	db   $10                                         ; $4cf0: $10
	add  b                                           ; $4cf1: $80
	nop                                              ; $4cf2: $00
	add  b                                           ; $4cf3: $80
	db   $10                                         ; $4cf4: $10
	dec  c                                           ; $4cf5: $0d
	jr   nc, jr_033_4d18                             ; $4cf6: $30 $20

	ret  nc                                          ; $4cf8: $d0

	or   b                                           ; $4cf9: $b0
	ld   e, b                                        ; $4cfa: $58
	jr   c, jr_033_4cfd                              ; $4cfb: $38 $00

jr_033_4cfd:
	jr   jr_033_4cff                                 ; $4cfd: $18 $00

jr_033_4cff:
	inc  c                                           ; $4cff: $0c
	inc  b                                           ; $4d00: $04
	ld   b, $03                                      ; $4d01: $06 $03
	dec  b                                           ; $4d03: $05
	add  l                                           ; $4d04: $85
	nop                                              ; $4d05: $00
	add  [hl]                                        ; $4d06: $86
	ld   [$0084], sp                                 ; $4d07: $08 $84 $00
	add  b                                           ; $4d0a: $80
	ld   [$4880], sp                                 ; $4d0b: $08 $80 $48
	add  b                                           ; $4d0e: $80
	ld   [$1809], sp                                 ; $4d0f: $08 $09 $18
	jr   c, jr_033_4d30                              ; $4d12: $38 $1c

	ld   e, h                                        ; $4d14: $5c
	jr   nz, jr_033_4d27                             ; $4d15: $20 $10

	ld   e, b                                        ; $4d17: $58

jr_033_4d18:
	ld   [$1030], sp                                 ; $4d18: $08 $30 $10
	add  b                                           ; $4d1b: $80
	jr   nc, jr_033_4d20                             ; $4d1c: $30 $02

	ld   [hl-], a                                    ; $4d1e: $32
	ld   [bc], a                                     ; $4d1f: $02

jr_033_4d20:
	jr   jr_033_4ca5                                 ; $4d20: $18 $83

	ld   [$0c04], sp                                 ; $4d22: $08 $04 $0c
	dec  c                                           ; $4d25: $0d
	rrca                                             ; $4d26: $0f

jr_033_4d27:
	ld   b, $08                                      ; $4d27: $06 $08
	add  c                                           ; $4d29: $81
	nop                                              ; $4d2a: $00
	inc  b                                           ; $4d2b: $04
	inc  b                                           ; $4d2c: $04
	inc  d                                           ; $4d2d: $14
	stop                                             ; $4d2e: $10 $00

jr_033_4d30:
	jr   nc, jr_033_4cb2                             ; $4d30: $30 $80

	ld   [hl], b                                     ; $4d32: $70
	ld   [bc], a                                     ; $4d33: $02
	jr   c, jr_033_4d36                              ; $4d34: $38 $00

jr_033_4d36:
	ld   sp, $0089                                   ; $4d36: $31 $89 $00
	inc  b                                           ; $4d39: $04
	cp   d                                           ; $4d3a: $ba
	nop                                              ; $4d3b: $00
	ld   a, h                                        ; $4d3c: $7c
	nop                                              ; $4d3d: $00
	jr   jr_033_4cc1                                 ; $4d3e: $18 $81

	nop                                              ; $4d40: $00
	ld   [bc], a                                     ; $4d41: $02
	jr   nz, jr_033_4d44                             ; $4d42: $20 $00

jr_033_4d44:
	ld   [$0085], sp                                 ; $4d44: $08 $85 $00
	ld   [bc], a                                     ; $4d47: $02
	jr   nc, jr_033_4d4a                             ; $4d48: $30 $00

jr_033_4d4a:
	ld   h, b                                        ; $4d4a: $60
	add  c                                           ; $4d4b: $81
	nop                                              ; $4d4c: $00
	nop                                              ; $4d4d: $00
	and  b                                           ; $4d4e: $a0
	add  l                                           ; $4d4f: $85
	nop                                              ; $4d50: $00
	inc  b                                           ; $4d51: $04
	ld   a, $00                                      ; $4d52: $3e $00
	cp   $00                                         ; $4d54: $fe $00
	ld   b, $87                                      ; $4d56: $06 $87
	nop                                              ; $4d58: $00
	ld   b, $80                                      ; $4d59: $06 $80
	nop                                              ; $4d5b: $00
	ld   a, [$7c00]                                  ; $4d5c: $fa $00 $7c
	nop                                              ; $4d5f: $00
	add  $83                                         ; $4d60: $c6 $83
	nop                                              ; $4d62: $00
	ld   [bc], a                                     ; $4d63: $02
	jr   c, jr_033_4d66                              ; $4d64: $38 $00

jr_033_4d66:
	ld   hl, sp-$7d                                  ; $4d66: $f8 $83

jr_033_4d68:
	nop                                              ; $4d68: $00
	ld   [bc], a                                     ; $4d69: $02
	ld   b, $00                                      ; $4d6a: $06 $00
	ld   b, $89                                      ; $4d6c: $06 $89
	nop                                              ; $4d6e: $00
	inc  b                                           ; $4d6f: $04
	ld   a, [$fc00]                                  ; $4d70: $fa $00 $fc
	nop                                              ; $4d73: $00
	add  $89                                         ; $4d74: $c6 $89
	nop                                              ; $4d76: $00
	inc  b                                           ; $4d77: $04
	cp   d                                           ; $4d78: $ba
	nop                                              ; $4d79: $00
	ld   a, h                                        ; $4d7a: $7c
	nop                                              ; $4d7b: $00
	inc  c                                           ; $4d7c: $0c
	add  c                                           ; $4d7d: $81
	nop                                              ; $4d7e: $00
	nop                                              ; $4d7f: $00
	inc  d                                           ; $4d80: $14
	add  a                                           ; $4d81: $87
	nop                                              ; $4d82: $00
	ld   [bc], a                                     ; $4d83: $02
	jr   jr_033_4d86                                 ; $4d84: $18 $00

jr_033_4d86:
	add  $89                                         ; $4d86: $c6 $89
	nop                                              ; $4d88: $00
	ld   b, $ba                                      ; $4d89: $06 $ba
	nop                                              ; $4d8b: $00
	ld   a, h                                        ; $4d8c: $7c
	nop                                              ; $4d8d: $00
	ld   a, [hl]                                     ; $4d8e: $7e
	nop                                              ; $4d8f: $00
	ld   a, b                                        ; $4d90: $78
	add  l                                           ; $4d91: $85
	nop                                              ; $4d92: $00
	add  hl, bc                                      ; $4d93: $09
	add  b                                           ; $4d94: $80
	nop                                              ; $4d95: $00
	ld   a, [$7c00]                                  ; $4d96: $fa $00 $7c
	nop                                              ; $4d99: $00
	db   $dd                                         ; $4d9a: $dd
	ld   a, $08                                      ; $4d9b: $3e $08
	inc  e                                           ; $4d9d: $1c
	add  b                                           ; $4d9e: $80
	ld   [$0001], sp                                 ; $4d9f: $08 $01 $00
	ld   [$0081], sp                                 ; $4da2: $08 $81 $00
	add  b                                           ; $4da5: $80
	ld   [$0082], sp                                 ; $4da6: $08 $82 $00
	add  h                                           ; $4da9: $84
	ld   [$0080], sp                                 ; $4daa: $08 $80 $00
	add  b                                           ; $4dad: $80
	ld   [$00c3], sp                                 ; $4dae: $08 $c3 $00
	rlca                                             ; $4db1: $07
	rst  $38                                         ; $4db2: $ff
	nop                                              ; $4db3: $00
	ld   h, b                                        ; $4db4: $60
	ldh  [rPCM12], a                                 ; $4db5: $e0 $76
	ld   c, $05                                      ; $4db7: $0e $05
	ld   [bc], a                                     ; $4db9: $02
	add  b                                           ; $4dba: $80
	dec  b                                           ; $4dbb: $05
	add  b                                           ; $4dbc: $80
	ld   [bc], a                                     ; $4dbd: $02
	add  b                                           ; $4dbe: $80
	dec  b                                           ; $4dbf: $05
	add  b                                           ; $4dc0: $80
	ld   [bc], a                                     ; $4dc1: $02
	nop                                              ; $4dc2: $00
	rst  $38                                         ; $4dc3: $ff
	add  e                                           ; $4dc4: $83
	nop                                              ; $4dc5: $00
	ld   a, [bc]                                     ; $4dc6: $0a
	ldh  [$60], a                                    ; $4dc7: $e0 $60
	ld   h, [hl]                                     ; $4dc9: $66
	ld   e, [hl]                                     ; $4dca: $5e
	db   $ed                                         ; $4dcb: $ed
	db   $eb                                         ; $4dcc: $eb
	ld   d, h                                        ; $4dcd: $54
	ld   d, l                                        ; $4dce: $55
	ld   [$beeb], a                                  ; $4dcf: $ea $eb $be
	add  a                                           ; $4dd2: $87
	nop                                              ; $4dd3: $00
	add  b                                           ; $4dd4: $80
	ldh  [rDIV], a                                   ; $4dd5: $e0 $04
	xor  [hl]                                        ; $4dd7: $ae
	cp   $87                                         ; $4dd8: $fe $87
	rst  $38                                         ; $4dda: $ff
	jr   z, jr_033_4d68                              ; $4ddb: $28 $8b

	nop                                              ; $4ddd: $00
	ld   [bc], a                                     ; $4dde: $02
	ld   h, b                                        ; $4ddf: $60
	ldh  [$80], a                                    ; $4de0: $e0 $80
	rst  ToBoot                                         ; $4de2: $c7
	nop                                              ; $4de3: $00
	add  b                                           ; $4de4: $80
	rlca                                             ; $4de5: $07
	add  b                                           ; $4de6: $80
	dec  de                                          ; $4de7: $1b
	add  b                                           ; $4de8: $80
	dec  a                                           ; $4de9: $3d
	add  b                                           ; $4dea: $80
	nop                                              ; $4deb: $00
	add  b                                           ; $4dec: $80
	add  hl, bc                                      ; $4ded: $09
	add  b                                           ; $4dee: $80
	ld   de, $2180                                   ; $4def: $11 $80 $21
	add  b                                           ; $4df2: $80
	ld   b, c                                        ; $4df3: $41
	add  b                                           ; $4df4: $80
	add  e                                           ; $4df5: $83
	add  b                                           ; $4df6: $80
	ld   b, c                                        ; $4df7: $41
	add  b                                           ; $4df8: $80
	sub  e                                           ; $4df9: $93
	add  b                                           ; $4dfa: $80
	nop                                              ; $4dfb: $00
	add  b                                           ; $4dfc: $80
	sub  b                                           ; $4dfd: $90
	add  b                                           ; $4dfe: $80
	adc  b                                           ; $4dff: $88
	add  b                                           ; $4e00: $80
	add  h                                           ; $4e01: $84
	add  b                                           ; $4e02: $80
	add  d                                           ; $4e03: $82
	add  b                                           ; $4e04: $80
	pop  bc                                          ; $4e05: $c1
	add  b                                           ; $4e06: $80
	add  d                                           ; $4e07: $82
	add  b                                           ; $4e08: $80
	ret                                              ; $4e09: $c9


	adc  b                                           ; $4e0a: $88
	nop                                              ; $4e0b: $00
	add  b                                           ; $4e0c: $80
	ldh  [$80], a                                    ; $4e0d: $e0 $80
	ret  c                                           ; $4e0f: $d8

	add  b                                           ; $4e10: $80
	cp   h                                           ; $4e11: $bc
	cp   [hl]                                        ; $4e12: $be
	nop                                              ; $4e13: $00
	ld   bc, $05fa                                   ; $4e14: $01 $fa $05
	add  b                                           ; $4e17: $80
	ld   [bc], a                                     ; $4e18: $02
	add  b                                           ; $4e19: $80
	dec  b                                           ; $4e1a: $05
	add  b                                           ; $4e1b: $80
	ld   [bc], a                                     ; $4e1c: $02
	add  b                                           ; $4e1d: $80
	dec  b                                           ; $4e1e: $05
	add  b                                           ; $4e1f: $80
	ld   [bc], a                                     ; $4e20: $02
	add  b                                           ; $4e21: $80
	dec  b                                           ; $4e22: $05
	add  b                                           ; $4e23: $80
	ld   [bc], a                                     ; $4e24: $02
	ld   sp, $5515                                   ; $4e25: $31 $15 $55
	ld   [$54eb], a                                  ; $4e28: $ea $eb $54
	ld   d, l                                        ; $4e2b: $55
	ld   [$54eb], a                                  ; $4e2c: $ea $eb $54
	ld   d, l                                        ; $4e2f: $55
	ld   [$54eb], a                                  ; $4e30: $ea $eb $54
	ld   d, l                                        ; $4e33: $55
	ld   [$34eb], a                                  ; $4e34: $ea $eb $34
	rst  $38                                         ; $4e37: $ff
	ldh  a, [c]                                      ; $4e38: $f2
	rst  $38                                         ; $4e39: $ff
	ld   a, [$faff]                                  ; $4e3a: $fa $ff $fa
	rst  $38                                         ; $4e3d: $ff
	ld   a, [$fbff]                                  ; $4e3e: $fa $ff $fb
	rst  $38                                         ; $4e41: $ff
	ei                                               ; $4e42: $fb
	rst  $38                                         ; $4e43: $ff
	ei                                               ; $4e44: $fb
	rst  $38                                         ; $4e45: $ff
	rst  ToBoot                                         ; $4e46: $c7
	cp   $17                                         ; $4e47: $fe $17
	rst  $38                                         ; $4e49: $ff
	inc  de                                          ; $4e4a: $13
	rst  $38                                         ; $4e4b: $ff
	ld   de, $11ff                                   ; $4e4c: $11 $ff $11
	rst  $38                                         ; $4e4f: $ff
	ld   de, $90ff                                   ; $4e50: $11 $ff $90
	rst  $38                                         ; $4e53: $ff
	ret  nc                                          ; $4e54: $d0

	rst  $38                                         ; $4e55: $ff
	ld   [$8000], a                                  ; $4e56: $ea $00 $80
	add  b                                           ; $4e59: $80
	add  b                                           ; $4e5a: $80
	ld   d, b                                        ; $4e5b: $50
	add  b                                           ; $4e5c: $80
	xor  d                                           ; $4e5d: $aa
	add  b                                           ; $4e5e: $80
	call nc, $ea80                                   ; $4e5f: $d4 $80 $ea
	add  b                                           ; $4e62: $80
	db   $f4                                         ; $4e63: $f4

jr_033_4e64:
	add  b                                           ; $4e64: $80
	ld   a, [$008a]                                  ; $4e65: $fa $8a $00
	add  b                                           ; $4e68: $80
	add  b                                           ; $4e69: $80
	add  b                                           ; $4e6a: $80
	jp   $0082                                       ; $4e6b: $c3 $82 $00


	add  b                                           ; $4e6e: $80
	dec  bc                                          ; $4e6f: $0b
	ld   a, [bc]                                     ; $4e70: $0a
	dec  d                                           ; $4e71: $15
	rla                                              ; $4e72: $17
	jr   z, jr_033_4ea3                              ; $4e73: $28 $2e

	ld   h, l                                        ; $4e75: $65
	ld   a, c                                        ; $4e76: $79
	dec  b                                           ; $4e77: $05
	rra                                              ; $4e78: $1f
	add  c                                           ; $4e79: $81
	rst  $38                                         ; $4e7a: $ff
	ld   a, h                                        ; $4e7b: $7c
	add  c                                           ; $4e7c: $81
	nop                                              ; $4e7d: $00
	add  b                                           ; $4e7e: $80
	adc  c                                           ; $4e7f: $89
	add  b                                           ; $4e80: $80
	ld   c, b                                        ; $4e81: $48
	dec  bc                                          ; $4e82: $0b
	adc  c                                           ; $4e83: $89
	ret                                              ; $4e84: $c9


	pop  de                                          ; $4e85: $d1
	reti                                             ; $4e86: $d9


	ld   a, [de]                                     ; $4e87: $1a
	db   $db                                         ; $4e88: $db
	ret  z                                           ; $4e89: $c8

	db   $db                                         ; $4e8a: $db
	add  d                                           ; $4e8b: $82
	jr   jr_033_4eb2                                 ; $4e8c: $18 $24

	inc  a                                           ; $4e8e: $3c
	add  b                                           ; $4e8f: $80
	ld   a, [hl]                                     ; $4e90: $7e
	ld   bc, $5a18                                   ; $4e91: $01 $18 $5a
	add  b                                           ; $4e94: $80
	nop                                              ; $4e95: $00
	inc  bc                                          ; $4e96: $03
	ld   e, d                                        ; $4e97: $5a
	jr   jr_033_4ed7                                 ; $4e98: $18 $3d

	dec  h                                           ; $4e9a: $25
	add  b                                           ; $4e9b: $80
	ld   [hl], a                                     ; $4e9c: $77
	dec  bc                                          ; $4e9d: $0b
	ld   [hl], $37                                   ; $4e9e: $36 $37
	jr   nc, jr_033_4ed6                             ; $4ea0: $30 $34

	nop                                              ; $4ea2: $00

jr_033_4ea3:
	inc  d                                           ; $4ea3: $14
	ld   bc, $1909                                   ; $4ea4: $01 $09 $19
	inc  b                                           ; $4ea7: $04
	xor  h                                           ; $4ea8: $ac
	xor  b                                           ; $4ea9: $a8
	add  b                                           ; $4eaa: $80
	ld   d, l                                        ; $4eab: $55
	add  b                                           ; $4eac: $80
	ei                                               ; $4ead: $fb
	dec  bc                                          ; $4eae: $0b
	ld   l, h                                        ; $4eaf: $6c
	db   $ec                                         ; $4eb0: $ec
	inc  c                                           ; $4eb1: $0c

jr_033_4eb2:
	inc  l                                           ; $4eb2: $2c
	nop                                              ; $4eb3: $00
	jr   z, @-$7e                                    ; $4eb4: $28 $80

	sub  b                                           ; $4eb6: $90
	sbc  b                                           ; $4eb7: $98
	jr   nz, jr_033_4e64                             ; $4eb8: $20 $aa

	adc  d                                           ; $4eba: $8a
	add  b                                           ; $4ebb: $80
	ld   d, l                                        ; $4ebc: $55
	add  b                                           ; $4ebd: $80
	rst  $38                                         ; $4ebe: $ff
	add  b                                           ; $4ebf: $80
	sbc  b                                           ; $4ec0: $98
	ld   bc, $bca4                                   ; $4ec1: $01 $a4 $bc
	add  b                                           ; $4ec4: $80
	ld   a, [hl]                                     ; $4ec5: $7e
	inc  bc                                          ; $4ec6: $03
	jr   jr_033_4f23                                 ; $4ec7: $18 $5a

	nop                                              ; $4ec9: $00
	ld   b, d                                        ; $4eca: $42
	add  b                                           ; $4ecb: $80
	cp   b                                           ; $4ecc: $b8
	ld   bc, $554d                                   ; $4ecd: $01 $4d $55
	add  b                                           ; $4ed0: $80
	rst  $38                                         ; $4ed1: $ff
	add  h                                           ; $4ed2: $84
	nop                                              ; $4ed3: $00
	add  b                                           ; $4ed4: $80
	ld   a, [hl+]                                    ; $4ed5: $2a

jr_033_4ed6:
	add  d                                           ; $4ed6: $82

jr_033_4ed7:
	ld   a, a                                        ; $4ed7: $7f
	inc  b                                           ; $4ed8: $04
	ld   l, d                                        ; $4ed9: $6a
	ld   a, a                                        ; $4eda: $7f
	ld   b, b                                        ; $4edb: $40
	ld   a, a                                        ; $4edc: $7f
	ld   a, [hl+]                                    ; $4edd: $2a
	add  e                                           ; $4ede: $83
	nop                                              ; $4edf: $00
	add  b                                           ; $4ee0: $80
	xor  c                                           ; $4ee1: $a9
	add  hl, bc                                      ; $4ee2: $09
	ld   a, [$f1fb]                                  ; $4ee3: $fa $fb $f1
	di                                               ; $4ee6: $f3
	xor  d                                           ; $4ee7: $aa
	ei                                               ; $4ee8: $fb
	ld   [$a0fa], sp                                 ; $4ee9: $08 $fa $a0
	nop                                              ; $4eec: $00
	add  b                                           ; $4eed: $80
	ld   d, l                                        ; $4eee: $55
	dec  c                                           ; $4eef: $0d
	xor  a                                           ; $4ef0: $af
	rst  $28                                         ; $4ef1: $ef
	ld   c, b                                        ; $4ef2: $48
	ld   hl, sp-$4e                                  ; $4ef3: $f8 $b2
	ei                                               ; $4ef5: $fb
	sbc  e                                           ; $4ef6: $9b
	dec  sp                                          ; $4ef7: $3b
	add  e                                           ; $4ef8: $83
	ei                                               ; $4ef9: $fb
	ld   h, e                                        ; $4efa: $63
	ei                                               ; $4efb: $fb
	ld   sp, hl                                      ; $4efc: $f9
	nop                                              ; $4efd: $00
	add  b                                           ; $4efe: $80
	ld   d, l                                        ; $4eff: $55
	add  b                                           ; $4f00: $80
	rst  $38                                         ; $4f01: $ff
	add  c                                           ; $4f02: $81
	nop                                              ; $4f03: $00
	ld   [$f8ff], sp                                 ; $4f04: $08 $ff $f8
	rst  $38                                         ; $4f07: $ff
	and  l                                           ; $4f08: $a5
	xor  a                                           ; $4f09: $af
	ld   e, c                                        ; $4f0a: $59
	ld   e, a                                        ; $4f0b: $5f
	ld   c, $05                                      ; $4f0c: $0e $05
	add  b                                           ; $4f0e: $80
	ld   [bc], a                                     ; $4f0f: $02
	add  b                                           ; $4f10: $80
	dec  b                                           ; $4f11: $05
	add  b                                           ; $4f12: $80
	ld   [bc], a                                     ; $4f13: $02
	add  b                                           ; $4f14: $80
	dec  b                                           ; $4f15: $05
	add  b                                           ; $4f16: $80
	ld   [bc], a                                     ; $4f17: $02
	add  b                                           ; $4f18: $80
	dec  b                                           ; $4f19: $05
	add  b                                           ; $4f1a: $80
	ld   [bc], a                                     ; $4f1b: $02
	ld   b, e                                        ; $4f1c: $43
	dec  d                                           ; $4f1d: $15
	ld   d, l                                        ; $4f1e: $55
	ld   [$54eb], a                                  ; $4f1f: $ea $eb $54
	ld   d, l                                        ; $4f22: $55

jr_033_4f23:
	ld   [$54eb], a                                  ; $4f23: $ea $eb $54
	ld   d, l                                        ; $4f26: $55
	ld   [$54eb], a                                  ; $4f27: $ea $eb $54
	ld   d, l                                        ; $4f2a: $55
	ld   [$3ceb], a                                  ; $4f2b: $ea $eb $3c
	rst  $38                                         ; $4f2e: $ff
	ei                                               ; $4f2f: $fb
	rst  $38                                         ; $4f30: $ff
	ei                                               ; $4f31: $fb
	rst  $38                                         ; $4f32: $ff
	ei                                               ; $4f33: $fb
	rst  $38                                         ; $4f34: $ff
	ei                                               ; $4f35: $fb
	rst  $38                                         ; $4f36: $ff
	ei                                               ; $4f37: $fb
	rst  $38                                         ; $4f38: $ff
	ei                                               ; $4f39: $fb
	rst  $38                                         ; $4f3a: $ff
	ei                                               ; $4f3b: $fb
	rst  $38                                         ; $4f3c: $ff
	ld   b, e                                        ; $4f3d: $43
	rst  $38                                         ; $4f3e: $ff
	ret  nc                                          ; $4f3f: $d0

	rst  $38                                         ; $4f40: $ff
	ret  nc                                          ; $4f41: $d0

	rst  $38                                         ; $4f42: $ff
	ret  nc                                          ; $4f43: $d0

	rst  $38                                         ; $4f44: $ff
	ret  c                                           ; $4f45: $d8

	rst  $38                                         ; $4f46: $ff
	call c, $deff                                    ; $4f47: $dc $ff $de
	rst  $38                                         ; $4f4a: $ff
	sbc  $ff                                         ; $4f4b: $de $ff
	ld   e, d                                        ; $4f4d: $5a
	db   $f4                                         ; $4f4e: $f4
	cp   d                                           ; $4f4f: $ba
	ld   a, [$fcbc]                                  ; $4f50: $fa $bc $fc
	sbc  d                                           ; $4f53: $9a
	ld   a, [$fc9c]                                  ; $4f54: $fa $9c $fc
	sbc  [hl]                                        ; $4f57: $9e
	cp   $9c                                         ; $4f58: $fe $9c
	db   $fc                                         ; $4f5a: $fc
	sbc  [hl]                                        ; $4f5b: $9e
	cp   $80                                         ; $4f5c: $fe $80
	ld   h, b                                        ; $4f5e: $60
	ld   sp, $8019                                   ; $4f5f: $31 $19 $80
	rla                                              ; $4f62: $17
	add  d                                           ; $4f63: $82
	ld   d, $80                                      ; $4f64: $16 $80
	dec  d                                           ; $4f66: $15
	add  b                                           ; $4f67: $80
	dec  b                                           ; $4f68: $05
	ld   a, [de]                                     ; $4f69: $1a
	inc  b                                           ; $4f6a: $04
	dec  c                                           ; $4f6b: $0d
	dec  e                                           ; $4f6c: $1d
	rst  $38                                         ; $4f6d: $ff
	nop                                              ; $4f6e: $00
	rst  $38                                         ; $4f6f: $ff
	db   $fd                                         ; $4f70: $fd
	ld   bc, $efa9                                   ; $4f71: $01 $a9 $ef
	ld   l, a                                        ; $4f74: $6f
	rst  $28                                         ; $4f75: $ef
	jp   $83c7                                       ; $4f76: $c3 $c7 $83


	jp   $9390                                       ; $4f79: $c3 $90 $93


	ld   a, [bc]                                     ; $4f7c: $0a
	cp   b                                           ; $4f7d: $b8
	ld   h, h                                        ; $4f7e: $64
	ld   [hl], b                                     ; $4f7f: $70
	ret  z                                           ; $4f80: $c8

	ldh  [$60], a                                    ; $4f81: $e0 $60
	ldh  [$d0], a                                    ; $4f83: $e0 $d0
	add  c                                           ; $4f85: $81
	ldh  a, [rDIV]                                   ; $4f86: $f0 $04
	db   $10                                         ; $4f88: $10
	ldh  a, [$e0]                                    ; $4f89: $f0 $e0
	ld   hl, sp+$57                                  ; $4f8b: $f8 $57
	add  b                                           ; $4f8d: $80
	inc  h                                           ; $4f8e: $24
	add  b                                           ; $4f8f: $80
	ld   h, $80                                      ; $4f90: $26 $80
	ld   [hl], $81                                   ; $4f92: $36 $81
	inc  [hl]                                        ; $4f94: $34
	ld   b, $37                                      ; $4f95: $06 $37
	ld   [hl+], a                                    ; $4f97: $22
	ld   h, $24                                      ; $4f98: $26 $24
	inc  a                                           ; $4f9a: $3c
	inc  de                                          ; $4f9b: $13
	inc  c                                           ; $4f9c: $0c
	add  b                                           ; $4f9d: $80
	sub  e                                           ; $4f9e: $93
	dec  b                                           ; $4f9f: $05
	sbc  b                                           ; $4fa0: $98
	sbc  a                                           ; $4fa1: $9f
	add  a                                           ; $4fa2: $87
	rst  $30                                         ; $4fa3: $f7
	ld   [hl], b                                     ; $4fa4: $70
	ld   hl, sp-$80                                  ; $4fa5: $f8 $80
	adc  h                                           ; $4fa7: $8c
	add  b                                           ; $4fa8: $80
	rra                                              ; $4fa9: $1f
	inc  bc                                          ; $4faa: $03
	ld   a, [$94f2]                                  ; $4fab: $fa $f2 $94
	ld   h, e                                        ; $4fae: $63
	add  b                                           ; $4faf: $80
	inc  h                                           ; $4fb0: $24
	inc  bc                                          ; $4fb1: $03
	inc  b                                           ; $4fb2: $04
	db   $fc                                         ; $4fb3: $fc
	jr   jr_033_4fd4                                 ; $4fb4: $18 $1e

	add  b                                           ; $4fb6: $80
	ld   [bc], a                                     ; $4fb7: $02
	add  b                                           ; $4fb8: $80
	ld   b, $01                                      ; $4fb9: $06 $01
	ld   a, [hl]                                     ; $4fbb: $7e
	ld   a, a                                        ; $4fbc: $7f
	add  b                                           ; $4fbd: $80
	rst  $30                                         ; $4fbe: $f7
	ld   bc, $fe01                                   ; $4fbf: $01 $01 $fe
	add  b                                           ; $4fc2: $80
	sub  d                                           ; $4fc3: $92
	add  b                                           ; $4fc4: $80
	sbc  d                                           ; $4fc5: $9a
	cpl                                              ; $4fc6: $2f
	dec  de                                          ; $4fc7: $1b
	db   $db                                         ; $4fc8: $db
	ld   d, e                                        ; $4fc9: $53
	ld   [hl], e                                     ; $4fca: $73
	and  e                                           ; $4fcb: $a3
	or   e                                           ; $4fcc: $b3
	jp   nc, Jump_033_6cde                           ; $4fcd: $d2 $de $6c

	ld   l, [hl]                                     ; $4fd0: $6e
	ld   [bc], a                                     ; $4fd1: $02
	or   [hl]                                        ; $4fd2: $b6
	ld   a, a                                        ; $4fd3: $7f

jr_033_4fd4:
	db   $f4                                         ; $4fd4: $f4
	rst  $38                                         ; $4fd5: $ff
	cp   $ff                                         ; $4fd6: $fe $ff
	cp   $ff                                         ; $4fd8: $fe $ff
	sbc  $df                                         ; $4fda: $de $df
	xor  $ef                                         ; $4fdc: $ee $ef
	sub  $d7                                         ; $4fde: $d6 $d7
	ld   [$96eb], a                                  ; $4fe0: $ea $eb $96
	ei                                               ; $4fe3: $fb
	ld   c, e                                        ; $4fe4: $4b
	ld   a, [$f96b]                                  ; $4fe5: $fa $6b $f9
	ld   a, c                                        ; $4fe8: $79
	ld   sp, hl                                      ; $4fe9: $f9
	ld   a, d                                        ; $4fea: $7a
	ei                                               ; $4feb: $fb
	ld   a, e                                        ; $4fec: $7b
	ei                                               ; $4fed: $fb
	ld   a, e                                        ; $4fee: $7b
	ei                                               ; $4fef: $fb
	ld   a, e                                        ; $4ff0: $7b
	ei                                               ; $4ff1: $fb
	sub  e                                           ; $4ff2: $93
	ld   a, e                                        ; $4ff3: $7b
	db   $eb                                         ; $4ff4: $eb
	ei                                               ; $4ff5: $fb
	ld   b, e                                        ; $4ff6: $43
	add  l                                           ; $4ff7: $85
	ld   e, e                                        ; $4ff8: $5b
	nop                                              ; $4ff9: $00
	ld   d, e                                        ; $4ffa: $53
	add  c                                           ; $4ffb: $81
	ld   e, e                                        ; $4ffc: $5b
	dec  b                                           ; $4ffd: $05
	ld   b, e                                        ; $4ffe: $43
	cp   a                                           ; $4fff: $bf
	ld   [de], a                                     ; $5000: $12
	ccf                                              ; $5001: $3f
	inc  hl                                          ; $5002: $23
	dec  [hl]                                        ; $5003: $35
	add  b                                           ; $5004: $80
	dec  hl                                          ; $5005: $2b
	add  [hl]                                        ; $5006: $86
	ld   hl, $2401                                   ; $5007: $21 $01 $24
	dec  b                                           ; $500a: $05
	add  b                                           ; $500b: $80
	ld   [bc], a                                     ; $500c: $02
	add  b                                           ; $500d: $80
	dec  b                                           ; $500e: $05
	add  b                                           ; $500f: $80
	ld   [bc], a                                     ; $5010: $02

jr_033_5011:
	add  b                                           ; $5011: $80
	dec  b                                           ; $5012: $05
	add  b                                           ; $5013: $80
	ld   [bc], a                                     ; $5014: $02
	add  b                                           ; $5015: $80
	dec  b                                           ; $5016: $05

jr_033_5017:
	add  b                                           ; $5017: $80
	ld   [bc], a                                     ; $5018: $02
	ld   de, $5515                                   ; $5019: $11 $15 $55
	ld   [$54eb], a                                  ; $501c: $ea $eb $54
	ld   d, l                                        ; $501f: $55
	ld   [$54eb], a                                  ; $5020: $ea $eb $54
	ld   d, l                                        ; $5023: $55
	ld   [$54eb], a                                  ; $5024: $ea $eb $54
	ld   d, l                                        ; $5027: $55
	ld   [$3deb], a                                  ; $5028: $ea $eb $3d
	rst  $38                                         ; $502b: $ff
	add  b                                           ; $502c: $80
	db   $fd                                         ; $502d: $fd
	dec  a                                           ; $502e: $3d
	ld   hl, sp-$03                                  ; $502f: $f8 $fd
	db   $db                                         ; $5031: $db
	ei                                               ; $5032: $fb
	sub  c                                           ; $5033: $91
	db   $db                                         ; $5034: $db
	push bc                                          ; $5035: $c5
	rst  $10                                         ; $5036: $d7
	set  1, a                                        ; $5037: $cb $cf
	db   $d3                                         ; $5039: $d3
	rst  JumpTable                                         ; $503a: $df
	add  hl, sp                                      ; $503b: $39
	ccf                                              ; $503c: $3f
	ld   c, $8f                                      ; $503d: $0e $8f
	ld   e, $97                                      ; $503f: $1e $97
	ld   h, d                                        ; $5041: $62
	ld   a, a                                        ; $5042: $7f
	jr   nc, jr_033_50bc                             ; $5043: $30 $77

	ld   h, d                                        ; $5045: $62
	ld   [hl], e                                     ; $5046: $73
	sbc  d                                           ; $5047: $9a
	cp   e                                           ; $5048: $bb
	adc  [hl]                                        ; $5049: $8e
	adc  a                                           ; $504a: $8f
	jp   nz, $8efe                                   ; $504b: $c2 $fe $8e

	cp   $8e                                         ; $504e: $fe $8e
	cp   $c6                                         ; $5050: $fe $c6
	cp   $e6                                         ; $5052: $fe $e6
	cp   $e6                                         ; $5054: $fe $e6
	cp   $e6                                         ; $5056: $fe $e6
	cp   $f6                                         ; $5058: $fe $f6
	cp   $92                                         ; $505a: $fe $92
	adc  e                                           ; $505c: $8b
	adc  c                                           ; $505d: $89
	dec  bc                                          ; $505e: $0b
	ld   b, $87                                      ; $505f: $06 $87
	adc  d                                           ; $5061: $8a
	ld   c, [hl]                                     ; $5062: $4e
	ld   a, [hl]                                     ; $5063: $7e
	call c, $b9b5                                    ; $5064: $dc $b5 $b9
	ld   l, h                                        ; $5067: $6c
	ld   [hl], h                                     ; $5068: $74
	reti                                             ; $5069: $d9


	jp   hl                                          ; $506a: $e9


	adc  d                                           ; $506b: $8a
	xor  e                                           ; $506c: $ab
	add  b                                           ; $506d: $80
	add  hl, de                                      ; $506e: $19
	ld   bc, $2b2a                                   ; $506f: $01 $2a $2b
	add  b                                           ; $5072: $80
	ld   a, [de]                                     ; $5073: $1a
	add  b                                           ; $5074: $80
	cp   e                                           ; $5075: $bb
	add  b                                           ; $5076: $80
	dec  sp                                          ; $5077: $3b
	add  b                                           ; $5078: $80
	rst  $38                                         ; $5079: $ff
	ld   [bc], a                                     ; $507a: $02
	db   $ed                                         ; $507b: $ed
	rst  $38                                         ; $507c: $ff
	call $f881                                       ; $507d: $cd $81 $f8
	inc  c                                           ; $5080: $0c
	ld   [hl], b                                     ; $5081: $70
	db   $fc                                         ; $5082: $fc
	call nz, $3cfc                                   ; $5083: $c4 $fc $3c
	db   $fc                                         ; $5086: $fc
	ld   a, b                                        ; $5087: $78
	ld   a, [hl]                                     ; $5088: $7e
	add  d                                           ; $5089: $82
	cp   $bc                                         ; $508a: $fe $bc
	cp   a                                           ; $508c: $bf
	dec  d                                           ; $508d: $15
	add  b                                           ; $508e: $80
	jr   c, jr_033_5011                              ; $508f: $38 $80

	inc  a                                           ; $5091: $3c
	add  b                                           ; $5092: $80
	dec  hl                                          ; $5093: $2b
	add  b                                           ; $5094: $80
	jr   nc, jr_033_5017                             ; $5095: $30 $80

	inc  a                                           ; $5097: $3c
	add  b                                           ; $5098: $80
	inc  sp                                          ; $5099: $33
	add  b                                           ; $509a: $80
	jr   c, jr_033_509e                              ; $509b: $38 $01

	inc  a                                           ; $509d: $3c

jr_033_509e:
	db   $f4                                         ; $509e: $f4
	add  b                                           ; $509f: $80
	ld   [hl], $01                                   ; $50a0: $36 $01
	ld   [hl], a                                     ; $50a2: $77
	ld   a, a                                        ; $50a3: $7f
	add  b                                           ; $50a4: $80
	cp   d                                           ; $50a5: $ba
	add  b                                           ; $50a6: $80
	inc  e                                           ; $50a7: $1c
	add  b                                           ; $50a8: $80
	ld   a, e                                        ; $50a9: $7b
	ld   bc, $848c                                   ; $50aa: $01 $8c $84
	add  b                                           ; $50ad: $80
	inc  [hl]                                        ; $50ae: $34
	ld   bc, $fef7                                   ; $50af: $01 $f7 $fe
	add  b                                           ; $50b2: $80
	ld   b, $80                                      ; $50b3: $06 $80
	sbc  [hl]                                        ; $50b5: $9e
	add  b                                           ; $50b6: $80
	ldh  [c], a                                      ; $50b7: $e2
	ld   bc, $0706                                   ; $50b8: $01 $06 $07
	add  b                                           ; $50bb: $80

jr_033_50bc:
	adc  a                                           ; $50bc: $8f
	ld   bc, $7475                                   ; $50bd: $01 $75 $74
	add  b                                           ; $50c0: $80
	ld   [bc], a                                     ; $50c1: $02
	ld   bc, $0f0e                                   ; $50c2: $01 $0e $0f
	add  b                                           ; $50c5: $80
	rra                                              ; $50c6: $1f
	add  b                                           ; $50c7: $80
	ret  nz                                          ; $50c8: $c0

	add  b                                           ; $50c9: $80
	add  b                                           ; $50ca: $80
	add  b                                           ; $50cb: $80
	ld   a, e                                        ; $50cc: $7b
	add  b                                           ; $50cd: $80
	ret  nz                                          ; $50ce: $c0

	add  b                                           ; $50cf: $80
	rst  $30                                         ; $50d0: $f7
	add  b                                           ; $50d1: $80
	nop                                              ; $50d2: $00
	ld   d, $c2                                      ; $50d3: $16 $c2
	ld   d, a                                        ; $50d5: $57
	ld   d, l                                        ; $50d6: $55
	ld   h, b                                        ; $50d7: $60
	ld   l, a                                        ; $50d8: $6f
	ld   c, a                                        ; $50d9: $4f
	ld   e, a                                        ; $50da: $5f
	db   $dd                                         ; $50db: $dd
	db   $d3                                         ; $50dc: $d3
	push de                                          ; $50dd: $d5
	rst  $10                                         ; $50de: $d7
	jp   c, $d7df                                    ; $50df: $da $df $d7

	rst  JumpTable                                         ; $50e2: $df
	call c, $a9de                                    ; $50e3: $dc $de $a9
	ei                                               ; $50e6: $fb
	ld   a, e                                        ; $50e7: $7b
	ei                                               ; $50e8: $fb
	ld   e, e                                        ; $50e9: $5b
	db   $db                                         ; $50ea: $db
	add  b                                           ; $50eb: $80
	cp   e                                           ; $50ec: $bb
	add  b                                           ; $50ed: $80
	db   $db                                         ; $50ee: $db
	add  b                                           ; $50ef: $80
	xor  e                                           ; $50f0: $ab
	add  b                                           ; $50f1: $80
	db   $db                                         ; $50f2: $db
	add  b                                           ; $50f3: $80
	xor  e                                           ; $50f4: $ab
	nop                                              ; $50f5: $00
	inc  sp                                          ; $50f6: $33
	adc  l                                           ; $50f7: $8d
	ld   e, e                                        ; $50f8: $5b
	nop                                              ; $50f9: $00
	and  $87                                         ; $50fa: $e6 $87
	ld   hl, $2380                                   ; $50fc: $21 $80 $23
	dec  b                                           ; $50ff: $05
	dec  h                                           ; $5100: $25
	daa                                              ; $5101: $27
	inc  hl                                          ; $5102: $23
	dec  h                                           ; $5103: $25
	jr   nz, jr_033_510b                             ; $5104: $20 $05

	add  b                                           ; $5106: $80
	ld   [bc], a                                     ; $5107: $02

jr_033_5108:
	add  b                                           ; $5108: $80
	dec  b                                           ; $5109: $05
	add  b                                           ; $510a: $80

jr_033_510b:
	ld   [bc], a                                     ; $510b: $02
	add  b                                           ; $510c: $80
	dec  b                                           ; $510d: $05
	add  b                                           ; $510e: $80
	ld   [bc], a                                     ; $510f: $02
	add  b                                           ; $5110: $80
	dec  b                                           ; $5111: $05
	add  b                                           ; $5112: $80
	ld   [bc], a                                     ; $5113: $02
	dec  sp                                          ; $5114: $3b
	dec  d                                           ; $5115: $15
	ld   d, l                                        ; $5116: $55
	ld   [$54eb], a                                  ; $5117: $ea $eb $54
	ld   d, l                                        ; $511a: $55
	ld   [$54eb], a                                  ; $511b: $ea $eb $54
	ld   d, l                                        ; $511e: $55
	ld   [$54eb], a                                  ; $511f: $ea $eb $54
	ld   d, l                                        ; $5122: $55
	ld   [$7ceb], a                                  ; $5123: $ea $eb $7c
	rst  JumpTable                                         ; $5126: $df
	db   $db                                         ; $5127: $db
	rst  $38                                         ; $5128: $ff
	cp   e                                           ; $5129: $bb
	rst  $38                                         ; $512a: $ff
	ei                                               ; $512b: $fb
	rst  $38                                         ; $512c: $ff
	ei                                               ; $512d: $fb
	rst  $38                                         ; $512e: $ff
	ei                                               ; $512f: $fb
	rst  $38                                         ; $5130: $ff
	cp   e                                           ; $5131: $bb
	cp   a                                           ; $5132: $bf
	ei                                               ; $5133: $fb
	rst  $38                                         ; $5134: $ff
	push bc                                          ; $5135: $c5
	db   $dd                                         ; $5136: $dd
	ld   h, h                                        ; $5137: $64
	xor  l                                           ; $5138: $ad
	db   $fc                                         ; $5139: $fc
	rst  $10                                         ; $513a: $d7
	sub  d                                           ; $513b: $92
	rst  $38                                         ; $513c: $ff
	sbc  $ff                                         ; $513d: $de $ff
	sbc  $ff                                         ; $513f: $de $ff
	sbc  $ff                                         ; $5141: $de $ff
	sbc  $ff                                         ; $5143: $de $ff
	ld   h, e                                        ; $5145: $63
	db   $fd                                         ; $5146: $fd
	push af                                          ; $5147: $f5
	db   $fd                                         ; $5148: $fd
	ldh  a, [c]                                      ; $5149: $f2
	ei                                               ; $514a: $fb
	push hl                                          ; $514b: $e5
	or   $cf                                         ; $514c: $f6 $cf
	db   $ed                                         ; $514e: $ed
	sbc  c                                           ; $514f: $99
	reti                                             ; $5150: $d9


	add  b                                           ; $5151: $80
	pop  hl                                          ; $5152: $e1
	add  b                                           ; $5153: $80
	adc  l                                           ; $5154: $8d
	ld   [de], a                                     ; $5155: $12
	sub  l                                           ; $5156: $95
	push de                                          ; $5157: $d5
	ld   c, a                                        ; $5158: $4f
	adc  a                                           ; $5159: $8f
	sbc  e                                           ; $515a: $9b
	rra                                              ; $515b: $1f
	ld   a, l                                        ; $515c: $7d
	ld   a, a                                        ; $515d: $7f
	sbc  a                                           ; $515e: $9f
	cp   a                                           ; $515f: $bf
	rst  $28                                         ; $5160: $ef
	rst  $38                                         ; $5161: $ff
	ld   a, l                                        ; $5162: $7d
	rst  $38                                         ; $5163: $ff
	rst  $28                                         ; $5164: $ef
	rst  $38                                         ; $5165: $ff
	ret  nz                                          ; $5166: $c0

	rst  $38                                         ; $5167: $ff
	cp   a                                           ; $5168: $bf
	add  l                                           ; $5169: $85
	rst  $38                                         ; $516a: $ff
	nop                                              ; $516b: $00
	cp   a                                           ; $516c: $bf
	add  c                                           ; $516d: $81
	rst  $38                                         ; $516e: $ff
	ld   [de], a                                     ; $516f: $12
	ld   h, h                                        ; $5170: $64
	rst  $38                                         ; $5171: $ff
	db   $eb                                         ; $5172: $eb
	rst  $38                                         ; $5173: $ff
	and  c                                           ; $5174: $a1
	rst  $38                                         ; $5175: $ff
	ret  c                                           ; $5176: $d8

	rst  $38                                         ; $5177: $ff
	db   $f4                                         ; $5178: $f4
	rst  $38                                         ; $5179: $ff
	ldh  a, [c]                                      ; $517a: $f2
	rst  $38                                         ; $517b: $ff
	db   $fd                                         ; $517c: $fd
	rst  $38                                         ; $517d: $ff
	ld   a, [$9eff]                                  ; $517e: $fa $ff $9e
	rst  $38                                         ; $5181: $ff
	ld   [hl-], a                                    ; $5182: $32
	add  b                                           ; $5183: $80
	inc  hl                                          ; $5184: $23
	add  b                                           ; $5185: $80
	jr   c, jr_033_5108                              ; $5186: $38 $80

	ld   a, $80                                      ; $5188: $3e $80
	or   a                                           ; $518a: $b7
	inc  bc                                          ; $518b: $03
	jr   nc, jr_033_519c                             ; $518c: $30 $0e

	add  c                                           ; $518e: $81
	add  b                                           ; $518f: $80
	add  b                                           ; $5190: $80
	adc  $01                                         ; $5191: $ce $01
	ld   a, [hl]                                     ; $5193: $7e
	add  c                                           ; $5194: $81
	add  b                                           ; $5195: $80
	ld   a, [hl+]                                    ; $5196: $2a
	add  b                                           ; $5197: $80
	inc  e                                           ; $5198: $1c
	ld   bc, $f3fb                                   ; $5199: $01 $fb $f3

jr_033_519c:
	add  b                                           ; $519c: $80
	sub  b                                           ; $519d: $90
	add  b                                           ; $519e: $80
	inc  [hl]                                        ; $519f: $34
	ld   bc, $fff7                                   ; $51a0: $01 $f7 $ff
	add  b                                           ; $51a3: $80
	ld   a, [hl+]                                    ; $51a4: $2a
	ld   bc, $1d1c                                   ; $51a5: $01 $1c $1d
	add  b                                           ; $51a8: $80
	ldh  a, [c]                                      ; $51a9: $f2
	inc  bc                                          ; $51aa: $03
	ld   b, $07                                      ; $51ab: $06 $07
	rrca                                             ; $51ad: $0f
	ld   c, $80                                      ; $51ae: $0e $80
	db   $f4                                         ; $51b0: $f4
	add  b                                           ; $51b1: $80
	ld   [bc], a                                     ; $51b2: $02
	dec  b                                           ; $51b3: $05
	ld   c, $0f                                      ; $51b4: $0e $0f
	pop  af                                          ; $51b6: $f1
	ldh  a, [rSC]                                    ; $51b7: $f0 $02
	inc  bc                                          ; $51b9: $03
	add  b                                           ; $51ba: $80
	ldh  a, [$80]                                    ; $51bb: $f0 $80
	ld   b, l                                        ; $51bd: $45
	add  b                                           ; $51be: $80
	ei                                               ; $51bf: $fb
	add  b                                           ; $51c0: $80
	pop  bc                                          ; $51c1: $c1
	add  b                                           ; $51c2: $80
	add  sp, -$80                                    ; $51c3: $e8 $80
	pop  bc                                          ; $51c5: $c1
	add  b                                           ; $51c6: $80
	and  e                                           ; $51c7: $a3
	ld   [$f2f7], sp                                 ; $51c8: $08 $f7 $f2
	db   $dd                                         ; $51cb: $dd
	sub  $df                                         ; $51cc: $d6 $df
	pop  bc                                          ; $51ce: $c1
	rst  JumpTable                                         ; $51cf: $df
	ld   b, l                                        ; $51d0: $45
	ld   c, d                                        ; $51d1: $4a
	add  b                                           ; $51d2: $80
	ld   b, l                                        ; $51d3: $45
	inc  hl                                          ; $51d4: $23
	ld   h, b                                        ; $51d5: $60
	ld   a, a                                        ; $51d6: $7f
	ld   b, b                                        ; $51d7: $40
	ld   h, b                                        ; $51d8: $60
	ld   b, l                                        ; $51d9: $45
	ld   b, a                                        ; $51da: $47
	xor  b                                           ; $51db: $a8
	db   $db                                         ; $51dc: $db
	xor  d                                           ; $51dd: $aa
	xor  e                                           ; $51de: $ab
	jp   c, $aa5b                                    ; $51df: $da $5b $aa

	xor  e                                           ; $51e2: $ab
	ld   e, d                                        ; $51e3: $5a
	ld   e, e                                        ; $51e4: $5b
	ld   a, [hl+]                                    ; $51e5: $2a
	db   $eb                                         ; $51e6: $eb
	jr   jr_033_5221                                 ; $51e7: $18 $38

	ld   a, [bc]                                     ; $51e9: $0a
	ld   a, [de]                                     ; $51ea: $1a
	ld   b, d                                        ; $51eb: $42
	ld   e, e                                        ; $51ec: $5b
	ld   d, e                                        ; $51ed: $53
	ld   e, e                                        ; $51ee: $5b
	ld   b, e                                        ; $51ef: $43
	ld   e, e                                        ; $51f0: $5b
	ld   b, e                                        ; $51f1: $43
	ld   e, e                                        ; $51f2: $5b
	ld   b, e                                        ; $51f3: $43
	ld   e, e                                        ; $51f4: $5b
	ld   b, e                                        ; $51f5: $43
	ld   e, e                                        ; $51f6: $5b
	adc  e                                           ; $51f7: $8b
	sbc  e                                           ; $51f8: $9b
	add  b                                           ; $51f9: $80
	add  e                                           ; $51fa: $83
	ld   [bc], a                                     ; $51fb: $02
	db   $fc                                         ; $51fc: $fc
	daa                                              ; $51fd: $27
	dec  h                                           ; $51fe: $25
	add  b                                           ; $51ff: $80
	inc  hl                                          ; $5200: $23
	inc  b                                           ; $5201: $04
	dec  h                                           ; $5202: $25
	ld   hl, $2127                                   ; $5203: $21 $27 $21
	inc  hl                                          ; $5206: $23
	add  h                                           ; $5207: $84
	ld   hl, $2401                                   ; $5208: $21 $01 $24
	dec  b                                           ; $520b: $05
	add  b                                           ; $520c: $80
	ld   [bc], a                                     ; $520d: $02
	add  b                                           ; $520e: $80
	dec  b                                           ; $520f: $05
	add  b                                           ; $5210: $80
	ld   [bc], a                                     ; $5211: $02
	add  b                                           ; $5212: $80
	dec  b                                           ; $5213: $05
	add  b                                           ; $5214: $80
	ld   [bc], a                                     ; $5215: $02

jr_033_5216:
	add  b                                           ; $5216: $80
	dec  b                                           ; $5217: $05
	add  b                                           ; $5218: $80
	ld   [bc], a                                     ; $5219: $02
	ld   e, h                                        ; $521a: $5c
	dec  d                                           ; $521b: $15
	ld   d, l                                        ; $521c: $55
	ld   [$54eb], a                                  ; $521d: $ea $eb $54
	ld   d, l                                        ; $5220: $55

jr_033_5221:
	ld   [$54eb], a                                  ; $5221: $ea $eb $54
	ld   d, l                                        ; $5224: $55
	ld   [$54eb], a                                  ; $5225: $ea $eb $54
	ld   d, l                                        ; $5228: $55
	ld   [$7ceb], a                                  ; $5229: $ea $eb $7c
	cp   a                                           ; $522c: $bf
	db   $db                                         ; $522d: $db
	rst  JumpTable                                         ; $522e: $df
	cp   e                                           ; $522f: $bb
	cp   a                                           ; $5230: $bf
	db   $db                                         ; $5231: $db
	rst  JumpTable                                         ; $5232: $df
	cp   e                                           ; $5233: $bb
	cp   a                                           ; $5234: $bf
	db   $db                                         ; $5235: $db
	rst  JumpTable                                         ; $5236: $df
	xor  e                                           ; $5237: $ab
	xor  a                                           ; $5238: $af
	db   $db                                         ; $5239: $db
	rst  JumpTable                                         ; $523a: $df
	ld   c, e                                        ; $523b: $4b
	cp   $d9                                         ; $523c: $fe $d9
	db   $fd                                         ; $523e: $fd
	call c, $dcfc                                    ; $523f: $dc $fc $dc
	db   $fc                                         ; $5242: $fc
	call c, $dcfc                                    ; $5243: $dc $fc $dc
	db   $fc                                         ; $5246: $fc
	call c, $dcfc                                    ; $5247: $dc $fc $dc
	db   $fc                                         ; $524a: $fc
	and  $0f                                         ; $524b: $e6 $0f
	ld   d, a                                        ; $524d: $57
	ld   e, a                                        ; $524e: $5f
	cp   e                                           ; $524f: $bb
	cp   a                                           ; $5250: $bf
	ld   a, a                                        ; $5251: $7f
	ld   a, [hl]                                     ; $5252: $7e
	cp   c                                           ; $5253: $b9
	cp   l                                           ; $5254: $bd
	ld   [hl], d                                     ; $5255: $72
	ld   a, e                                        ; $5256: $7b
	or   l                                           ; $5257: $b5
	or   a                                           ; $5258: $b7
	ld   l, e                                        ; $5259: $6b
	ld   l, l                                        ; $525a: $6d
	ld   b, $a3                                      ; $525b: $06 $a3
	inc  h                                           ; $525d: $24
	adc  d                                           ; $525e: $8a
	dec  d                                           ; $525f: $15
	inc  [hl]                                        ; $5260: $34
	ld   a, $2a                                      ; $5261: $3e $2a
	sub  h                                           ; $5263: $94
	ret  nc                                          ; $5264: $d0

	dec  sp                                          ; $5265: $3b
	xor  d                                           ; $5266: $aa
	ld   d, l                                        ; $5267: $55
	rst  ToBoot                                         ; $5268: $c7
	ld   l, b                                        ; $5269: $68
	xor  h                                           ; $526a: $ac
	ld   e, [hl]                                     ; $526b: $5e
	rst  $38                                         ; $526c: $ff
	ld   e, l                                        ; $526d: $5d
	xor  d                                           ; $526e: $aa
	ld   b, h                                        ; $526f: $44
	ld   d, l                                        ; $5270: $55
	xor  $aa                                         ; $5271: $ee $aa
	ld   l, e                                        ; $5273: $6b
	jr   nc, jr_033_5216                             ; $5274: $30 $a0

	push bc                                          ; $5276: $c5
	add  l                                           ; $5277: $85
	add  b                                           ; $5278: $80
	nop                                              ; $5279: $00
	ld   de, $6f1f                                   ; $527a: $11 $1f $6f
	pop  af                                          ; $527d: $f1
	call Call_033_4aa4                               ; $527e: $cd $a4 $4a
	ld   e, h                                        ; $5281: $5c
	rst  $28                                         ; $5282: $ef
	xor  d                                           ; $5283: $aa
	sub  c                                           ; $5284: $91
	ld   d, l                                        ; $5285: $55
	ld   a, e                                        ; $5286: $7b
	sbc  d                                           ; $5287: $9a
	sbc  h                                           ; $5288: $9c
	ld   h, l                                        ; $5289: $65
	ld   h, [hl]                                     ; $528a: $66
	sbc  d                                           ; $528b: $9a
	sbc  e                                           ; $528c: $9b
	add  b                                           ; $528d: $80
	ld   [hl], $81                                   ; $528e: $36 $81
	ld   b, $0a                                      ; $5290: $06 $0a
	ld   [bc], a                                     ; $5292: $02
	ld   b, $84                                      ; $5293: $06 $84
	ld   b, $c6                                      ; $5295: $06 $c6
	add  d                                           ; $5297: $82
	ld   h, d                                        ; $5298: $62
	ld   b, d                                        ; $5299: $42
	jp   nz, Jump_033_5382                           ; $529a: $c2 $82 $53

	add  b                                           ; $529d: $80
	ld   [hl], $01                                   ; $529e: $36 $01
	rst  $30                                         ; $52a0: $f7
	rst  $38                                         ; $52a1: $ff
	add  b                                           ; $52a2: $80
	ld   a, [hl+]                                    ; $52a3: $2a
	ld   bc, $171f                                   ; $52a4: $01 $1f $17
	add  b                                           ; $52a7: $80
	ld   [hl], a                                     ; $52a8: $77
	dec  b                                           ; $52a9: $05
	or   $e2                                         ; $52aa: $f6 $e2
	ld   h, e                                        ; $52ac: $63
	ld   b, c                                        ; $52ad: $41
	pop  bc                                          ; $52ae: $c1
	cp   $80                                         ; $52af: $fe $80
	ld   b, $80                                      ; $52b1: $06 $80
	sbc  [hl]                                        ; $52b3: $9e
	add  b                                           ; $52b4: $80
	ld   [$0680], a                                  ; $52b5: $ea $80 $06
	add  b                                           ; $52b8: $80
	cp   $02                                         ; $52b9: $fe $02
	sbc  [hl]                                        ; $52bb: $9e
	sbc  h                                           ; $52bc: $9c
	db   $fc                                         ; $52bd: $fc
	add  b                                           ; $52be: $80
	ld   hl, sp+$00                                  ; $52bf: $f8 $00
	rst  $38                                         ; $52c1: $ff
	add  b                                           ; $52c2: $80
	add  c                                           ; $52c3: $81
	add  b                                           ; $52c4: $80
	pop  bc                                          ; $52c5: $c1
	add  b                                           ; $52c6: $80
	di                                               ; $52c7: $f3
	add  b                                           ; $52c8: $80
	pop  bc                                          ; $52c9: $c1
	add  b                                           ; $52ca: $80
	rst  $38                                         ; $52cb: $ff
	ld   [bc], a                                     ; $52cc: $02
	di                                               ; $52cd: $f3
	ld   [hl], e                                     ; $52ce: $73
	ld   a, a                                        ; $52cf: $7f
	add  b                                           ; $52d0: $80
	ld   a, $11                                      ; $52d1: $3e $11
	adc  b                                           ; $52d3: $88
	adc  a                                           ; $52d4: $8f
	sub  l                                           ; $52d5: $95
	sub  d                                           ; $52d6: $92
	add  h                                           ; $52d7: $84
	sub  a                                           ; $52d8: $97
	add  h                                           ; $52d9: $84
	sub  l                                           ; $52da: $95
	add  d                                           ; $52db: $82
	add  b                                           ; $52dc: $80
	sub  h                                           ; $52dd: $94
	sbc  a                                           ; $52de: $9f
	add  c                                           ; $52df: $81
	sbc  l                                           ; $52e0: $9d
	add  c                                           ; $52e1: $81
	sub  d                                           ; $52e2: $92
	adc  [hl]                                        ; $52e3: $8e
	adc  d                                           ; $52e4: $8a
	add  b                                           ; $52e5: $80
	ld   b, b                                        ; $52e6: $40
	add  b                                           ; $52e7: $80
	ld   b, c                                        ; $52e8: $41
	ld   bc, $4140                                   ; $52e9: $01 $40 $41
	add  b                                           ; $52ec: $80
	ld   bc, $c180                                   ; $52ed: $01 $80 $c1
	add  b                                           ; $52f0: $80
	ld   b, c                                        ; $52f1: $41
	add  b                                           ; $52f2: $80
	add  c                                           ; $52f3: $81
	dec  b                                           ; $52f4: $05
	inc  sp                                          ; $52f5: $33
	cp   e                                           ; $52f6: $bb
	dec  sp                                          ; $52f7: $3b
	cp   e                                           ; $52f8: $bb
	inc  bc                                          ; $52f9: $03
	dec  bc                                          ; $52fa: $0b
	add  b                                           ; $52fb: $80
	ld   d, e                                        ; $52fc: $53
	add  b                                           ; $52fd: $80
	ld   e, e                                        ; $52fe: $5b
	ld   [bc], a                                     ; $52ff: $02
	ld   c, e                                        ; $5300: $4b
	ld   e, e                                        ; $5301: $5b
	ld   d, e                                        ; $5302: $53
	add  c                                           ; $5303: $81
	ld   e, e                                        ; $5304: $5b
	dec  bc                                          ; $5305: $0b
	and  $21                                         ; $5306: $e6 $21
	jr   nz, @+$23                                   ; $5308: $20 $21

	ld   bc, $2821                                   ; $530a: $01 $21 $28
	cpl                                              ; $530d: $2f
	ld   de, $293f                                   ; $530e: $11 $3f $29
	ccf                                              ; $5311: $3f
	add  b                                           ; $5312: $80
	dec  sp                                          ; $5313: $3b
	add  b                                           ; $5314: $80
	ld   a, l                                        ; $5315: $7d
	ld   bc, $053a                                   ; $5316: $01 $3a $05
	add  b                                           ; $5319: $80
	ld   [bc], a                                     ; $531a: $02
	add  b                                           ; $531b: $80
	dec  b                                           ; $531c: $05
	add  b                                           ; $531d: $80
	ld   [bc], a                                     ; $531e: $02
	add  b                                           ; $531f: $80
	dec  b                                           ; $5320: $05
	add  b                                           ; $5321: $80
	ld   [bc], a                                     ; $5322: $02
	add  b                                           ; $5323: $80
	dec  b                                           ; $5324: $05
	rrca                                             ; $5325: $0f
	ld   [bc], a                                     ; $5326: $02
	inc  bc                                          ; $5327: $03
	inc  d                                           ; $5328: $14
	ld   d, l                                        ; $5329: $55
	ld   [$54eb], a                                  ; $532a: $ea $eb $54
	ld   d, l                                        ; $532d: $55
	ld   [$54eb], a                                  ; $532e: $ea $eb $54
	ld   d, l                                        ; $5331: $55
	add  sp, -$11                                    ; $5332: $e8 $ef
	ld   b, [hl]                                     ; $5334: $46
	cp   $80                                         ; $5335: $fe $80
	push af                                          ; $5337: $f5
	add  hl, bc                                      ; $5338: $09
	jp   nc, $dbaf                                   ; $5339: $d2 $af $db

	rst  JumpTable                                         ; $533c: $df
	xor  d                                           ; $533d: $aa
	xor  a                                           ; $533e: $af
	db   $d3                                         ; $533f: $d3
	rst  JumpTable                                         ; $5340: $df
	adc  d                                           ; $5341: $8a
	ld   a, [$d480]                                  ; $5342: $fa $80 $d4
	add  b                                           ; $5345: $80
	and  c                                           ; $5346: $a1
	add  b                                           ; $5347: $80
	ld   a, [bc]                                     ; $5348: $0a
	dec  b                                           ; $5349: $05
	inc  [hl]                                        ; $534a: $34
	db   $fc                                         ; $534b: $fc
	call nc, $08fc                                   ; $534c: $d4 $fc $08
	add  sp, -$80                                    ; $534f: $e8 $80
	ld   d, e                                        ; $5351: $53
	add  b                                           ; $5352: $80
	adc  h                                           ; $5353: $8c
	add  b                                           ; $5354: $80
	add  hl, sp                                      ; $5355: $39
	add  b                                           ; $5356: $80
	ld   [hl], e                                     ; $5357: $73
	add  b                                           ; $5358: $80
	ld   c, h                                        ; $5359: $4c
	dec  b                                           ; $535a: $05
	call nc, $21df                                   ; $535b: $d4 $df $21
	ccf                                              ; $535e: $3f
	jp   c, $80cf                                    ; $535f: $da $cf $80

	ccf                                              ; $5362: $3f
	add  d                                           ; $5363: $82
	cp   $82                                         ; $5364: $fe $82
	rst  $38                                         ; $5366: $ff
	inc  bc                                          ; $5367: $03
	dec  l                                           ; $5368: $2d
	push de                                          ; $5369: $d5
	inc  bc                                          ; $536a: $03
	ei                                               ; $536b: $fb
	add  b                                           ; $536c: $80
	ld   hl, sp+$09                                  ; $536d: $f8 $09
	push bc                                          ; $536f: $c5
	push de                                          ; $5370: $d5
	ld   [hl], d                                     ; $5371: $72
	ld   [$7ca8], a                                  ; $5372: $ea $a8 $7c
	ld   e, h                                        ; $5375: $5c
	inc  e                                           ; $5376: $1c
	adc  b                                           ; $5377: $88
	sbc  a                                           ; $5378: $9f
	add  b                                           ; $5379: $80
	rst  $38                                         ; $537a: $ff
	inc  bc                                          ; $537b: $03
	pop  af                                          ; $537c: $f1
	rst  $38                                         ; $537d: $ff
	jp   c, $80df                                    ; $537e: $da $df $80

	ld   [hl], a                                     ; $5381: $77

Jump_033_5382:
	add  b                                           ; $5382: $80
	db   $dd                                         ; $5383: $dd
	add  b                                           ; $5384: $80
	nop                                              ; $5385: $00
	add  b                                           ; $5386: $80
	rst  $38                                         ; $5387: $ff
	add  b                                           ; $5388: $80
	nop                                              ; $5389: $00
	inc  d                                           ; $538a: $14
	ld   a, [de]                                     ; $538b: $1a
	rst  $38                                         ; $538c: $ff
	ld   l, a                                        ; $538d: $6f
	rst  $38                                         ; $538e: $ff
	inc  h                                           ; $538f: $24
	push af                                          ; $5390: $f5
	ld   h, b                                        ; $5391: $60
	call z, $3b22                                    ; $5392: $cc $22 $3b
	push hl                                          ; $5395: $e5
	rst  $30                                         ; $5396: $f7
	ret                                              ; $5397: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5398: $cf
	ld   sp, $bd3f                                   ; $5399: $31 $3f $bd
	ld   h, d                                        ; $539c: $62
	and  d                                           ; $539d: $a2
	ldh  a, [c]                                      ; $539e: $f2
	add  d                                           ; $539f: $82
	add  b                                           ; $53a0: $80
	ld   [hl-], a                                    ; $53a1: $32
	add  b                                           ; $53a2: $80
	ld   [bc], a                                     ; $53a3: $02
	inc  b                                           ; $53a4: $04
	jp   nz, $c0c4                                   ; $53a5: $c2 $c4 $c0

	jp   $8094                                       ; $53a8: $c3 $94 $80


	sub  [hl]                                        ; $53ab: $96
	ld   bc, $0097                                   ; $53ac: $01 $97 $00
	add  b                                           ; $53af: $80
	ld   a, a                                        ; $53b0: $7f
	add  b                                           ; $53b1: $80
	nop                                              ; $53b2: $00
	add  b                                           ; $53b3: $80
	ld   a, [hl+]                                    ; $53b4: $2a
	add  b                                           ; $53b5: $80
	ld   d, h                                        ; $53b6: $54
	rlca                                             ; $53b7: $07
	jr   z, jr_033_53e3                              ; $53b8: $28 $29

	sub  d                                           ; $53ba: $92
	sub  e                                           ; $53bb: $93
	ld   [hl], $b6                                   ; $53bc: $36 $b6
	add  b                                           ; $53be: $80
	nop                                              ; $53bf: $00
	add  b                                           ; $53c0: $80
	push hl                                          ; $53c1: $e5
	dec  c                                           ; $53c2: $0d
	ld   [de], a                                     ; $53c3: $12
	ld   d, $10                                      ; $53c4: $16 $10
	dec  [hl]                                        ; $53c6: $35
	xor  b                                           ; $53c7: $a8
	set  4, h                                        ; $53c8: $cb $e4
	and  [hl]                                        ; $53ca: $a6
	ld   b, h                                        ; $53cb: $44
	ld   l, [hl]                                     ; $53cc: $6e
	or   d                                           ; $53cd: $b2
	call c, $0044                                    ; $53ce: $dc $44 $00
	add  b                                           ; $53d1: $80
	scf                                              ; $53d2: $37
	add  b                                           ; $53d3: $80
	ld   [$4417], sp                                 ; $53d4: $08 $17 $44
	ld   h, h                                        ; $53d7: $64
	ld   [hl], d                                     ; $53d8: $72
	jp   nc, $c404                                   ; $53d9: $d2 $04 $c4

	ld   d, h                                        ; $53dc: $54
	inc  d                                           ; $53dd: $14
	and  d                                           ; $53de: $a2
	or   d                                           ; $53df: $b2
	add  h                                           ; $53e0: $84
	sbc  l                                           ; $53e1: $9d
	sub  e                                           ; $53e2: $93

jr_033_53e3:
	sbc  e                                           ; $53e3: $9b
	sbc  b                                           ; $53e4: $98
	sbc  d                                           ; $53e5: $9a
	sub  h                                           ; $53e6: $94
	sub  l                                           ; $53e7: $95
	ld   c, c                                        ; $53e8: $49
	ld   c, a                                        ; $53e9: $4f
	ld   d, d                                        ; $53ea: $52
	ld   e, [hl]                                     ; $53eb: $5e
	inc  d                                           ; $53ec: $14
	inc  e                                           ; $53ed: $1c
	add  b                                           ; $53ee: $80
	sbc  b                                           ; $53ef: $98
	add  hl, bc                                      ; $53f0: $09
	ld   b, c                                        ; $53f1: $41
	pop  bc                                          ; $53f2: $c1
	jr   nz, jr_033_5456                             ; $53f3: $20 $61

	or   b                                           ; $53f5: $b0
	pop  af                                          ; $53f6: $f1
	ld   l, b                                        ; $53f7: $68
	jp   hl                                          ; $53f8: $e9


	ld   [hl], b                                     ; $53f9: $70
	ld   [hl], c                                     ; $53fa: $71
	add  b                                           ; $53fb: $80
	cp   c                                           ; $53fc: $b9
	add  b                                           ; $53fd: $80
	inc  d                                           ; $53fe: $14
	ld   [bc], a                                     ; $53ff: $02
	ld   bc, $4003                                   ; $5400: $01 $03 $40
	add  c                                           ; $5403: $81
	ld   e, e                                        ; $5404: $5b
	rlca                                             ; $5405: $07
	ld   c, d                                        ; $5406: $4a
	ld   e, e                                        ; $5407: $5b
	ld   b, e                                        ; $5408: $43
	ld   e, e                                        ; $5409: $5b
	inc  bc                                          ; $540a: $03
	dec  de                                          ; $540b: $1b
	inc  de                                          ; $540c: $13
	dec  de                                          ; $540d: $1b
	add  b                                           ; $540e: $80
	ld   [$4001], sp                                 ; $540f: $08 $01 $40
	ret  nz                                          ; $5412: $c0

	add  b                                           ; $5413: $80
	call $0301                                       ; $5414: $cd $01 $03
	and  e                                           ; $5417: $a3
	add  b                                           ; $5418: $80
	cpl                                              ; $5419: $2f
	inc  bc                                          ; $541a: $03
	adc  l                                           ; $541b: $8d
	dec  c                                           ; $541c: $0d
	jp   nz, $8092                                   ; $541d: $c2 $92 $80

	add  l                                           ; $5420: $85
	rlca                                             ; $5421: $07
	ld   d, d                                        ; $5422: $52
	jp   nc, Jump_033_7404                           ; $5423: $d2 $04 $74

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5426: $cf
	ccf                                              ; $5427: $3f
	dec  c                                           ; $5428: $0d
	db   $fd                                         ; $5429: $fd
	add  b                                           ; $542a: $80
	ld   [$5480], a                                  ; $542b: $ea $80 $54
	add  b                                           ; $542e: $80
	and  e                                           ; $542f: $a3
	add  b                                           ; $5430: $80
	rra                                              ; $5431: $1f
	add  b                                           ; $5432: $80
	cp   $80                                         ; $5433: $fe $80
	ldh  a, [$80]                                    ; $5435: $f0 $80
	xor  d                                           ; $5437: $aa
	add  b                                           ; $5438: $80
	ld   d, e                                        ; $5439: $53
	add  b                                           ; $543a: $80
	sbc  a                                           ; $543b: $9f
	add  b                                           ; $543c: $80
	ld   a, h                                        ; $543d: $7c
	add  b                                           ; $543e: $80
	di                                               ; $543f: $f3
	add  b                                           ; $5440: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5441: $cf
	dec  b                                           ; $5442: $05
	ld   e, $1f                                      ; $5443: $1e $1f
	inc  [hl]                                        ; $5445: $34
	ccf                                              ; $5446: $3f
	ld   [hl], d                                     ; $5447: $72
	ld   a, b                                        ; $5448: $78
	add  b                                           ; $5449: $80
	rst  $20                                         ; $544a: $e7
	dec  c                                           ; $544b: $0d
	sbc  [hl]                                        ; $544c: $9e
	sbc  a                                           ; $544d: $9f
	ld   [hl], h                                     ; $544e: $74
	ld   a, a                                        ; $544f: $7f
	ldh  [rIE], a                                    ; $5450: $e0 $ff
	ld   b, b                                        ; $5452: $40
	rst  $38                                         ; $5453: $ff
	nop                                              ; $5454: $00
	rst  $38                                         ; $5455: $ff

jr_033_5456:
	nop                                              ; $5456: $00
	rst  $38                                         ; $5457: $ff
	add  hl, de                                      ; $5458: $19
	or   e                                           ; $5459: $b3
	add  b                                           ; $545a: $80
	call z, $b30d                                    ; $545b: $cc $0d $b3
	di                                               ; $545e: $f3
	inc  e                                           ; $545f: $1c
	db   $fc                                         ; $5460: $fc
	inc  bc                                          ; $5461: $03
	rst  $38                                         ; $5462: $ff
	ld   e, h                                        ; $5463: $5c

jr_033_5464:
	rst  $38                                         ; $5464: $ff
	ld   a, a                                        ; $5465: $7f
	rst  $38                                         ; $5466: $ff
	dec  hl                                          ; $5467: $2b
	rst  $38                                         ; $5468: $ff
	sub  h                                           ; $5469: $94
	ccf                                              ; $546a: $3f
	add  b                                           ; $546b: $80
	jp   z, $1580                                    ; $546c: $ca $80 $15

	add  b                                           ; $546f: $80
	xor  d                                           ; $5470: $aa
	add  b                                           ; $5471: $80
	add  b                                           ; $5472: $80
	nop                                              ; $5473: $00
	nop                                              ; $5474: $00
	add  e                                           ; $5475: $83
	rst  $38                                         ; $5476: $ff
	rlca                                             ; $5477: $07
	ld   a, a                                        ; $5478: $7f
	adc  a                                           ; $5479: $8f
	ld   c, e                                        ; $547a: $4b
	ld   [hl], a                                     ; $547b: $77
	inc  sp                                          ; $547c: $33
	ld   bc, $8081                                   ; $547d: $01 $81 $80
	add  b                                           ; $5480: $80
	rlca                                             ; $5481: $07
	nop                                              ; $5482: $00
	nop                                              ; $5483: $00
	add  c                                           ; $5484: $81
	rst  $38                                         ; $5485: $ff
	inc  c                                           ; $5486: $0c
	ld   a, [$c5ff]                                  ; $5487: $fa $ff $c5
	cp   a                                           ; $548a: $bf
	ld   a, $bf                                      ; $548b: $3e $bf
	ld   [hl], h                                     ; $548d: $74
	ld   a, a                                        ; $548e: $7f
	and  b                                           ; $548f: $a0
	rst  $38                                         ; $5490: $ff
	dec  b                                           ; $5491: $05
	rst  $38                                         ; $5492: $ff
	xor  a                                           ; $5493: $af
	add  c                                           ; $5494: $81
	rst  $38                                         ; $5495: $ff
	rra                                              ; $5496: $1f
	and  d                                           ; $5497: $a2
	db   $fd                                         ; $5498: $fd
	ld   [hl], b                                     ; $5499: $70
	rst  $38                                         ; $549a: $ff
	adc  a                                           ; $549b: $8f
	rst  $38                                         ; $549c: $ff
	ld   e, $ff                                      ; $549d: $1e $ff
	cp   [hl]                                        ; $549f: $be
	db   $fd                                         ; $54a0: $fd
	ld   sp, hl                                      ; $54a1: $f9
	db   $fd                                         ; $54a2: $fd
	ldh  a, [$fd]                                    ; $54a3: $f0 $fd
	call nz, $61f5                                   ; $54a5: $c4 $f5 $61
	and  l                                           ; $54a8: $a5
	or   b                                           ; $54a9: $b0
	rst  $38                                         ; $54aa: $ff
	ld   l, h                                        ; $54ab: $6c
	ld   l, a                                        ; $54ac: $6f

jr_033_54ad:
	push hl                                          ; $54ad: $e5
	db   $ed                                         ; $54ae: $ed
	push de                                          ; $54af: $d5
	ret  nc                                          ; $54b0: $d0

	xor  c                                           ; $54b1: $a9
	xor  $a7                                         ; $54b2: $ee $a7
	ldh  [$a8], a                                    ; $54b4: $e0 $a8
	xor  $80                                         ; $54b6: $ee $80
	or   $15                                         ; $54b8: $f6 $15
	ld   e, $59                                      ; $54ba: $1e $59
	ld   e, h                                        ; $54bc: $5c
	db   $dd                                         ; $54bd: $dd
	sbc  [hl]                                        ; $54be: $9e
	sbc  $df                                         ; $54bf: $de $df
	ld   e, a                                        ; $54c1: $5f
	ld   b, b                                        ; $54c2: $40
	ret  nz                                          ; $54c3: $c0

	sub  b                                           ; $54c4: $90
	jr   nc, jr_033_54ad                             ; $54c5: $30 $e6

	or   $d8                                         ; $54c7: $f6 $d8
	cp   $d5                                         ; $54c9: $fe $d5
	db   $d3                                         ; $54cb: $d3
	and  l                                           ; $54cc: $a5
	rst  $38                                         ; $54cd: $ff
	ld   b, h                                        ; $54ce: $44
	ld   c, $80                                      ; $54cf: $0e $80
	and  b                                           ; $54d1: $a0
	rrca                                             ; $54d2: $0f
	db   $10                                         ; $54d3: $10
	rra                                              ; $54d4: $1f
	rlca                                             ; $54d5: $07
	rrca                                             ; $54d6: $0f
	inc  bc                                          ; $54d7: $03
	rlca                                             ; $54d8: $07
	inc  bc                                          ; $54d9: $03
	nop                                              ; $54da: $00
	dec  e                                           ; $54db: $1d
	ld   e, l                                        ; $54dc: $5d
	inc  d                                           ; $54dd: $14
	ld   d, h                                        ; $54de: $54
	adc  b                                           ; $54df: $88
	ret  z                                           ; $54e0: $c8

	ld   h, b                                        ; $54e1: $60
	jr   nz, jr_033_5464                             ; $54e2: $20 $80

	call nc, sGlobalFlags1                                   ; $54e4: $d4 $80 $a0
	add  b                                           ; $54e7: $80
	ret  nc                                          ; $54e8: $d0

	add  b                                           ; $54e9: $80
	nop                                              ; $54ea: $00
	ld   [bc], a                                     ; $54eb: $02
	ld   bc, $1e1f                                   ; $54ec: $01 $1f $1e
	add  e                                           ; $54ef: $83
	db   $10                                         ; $54f0: $10
	add  b                                           ; $54f1: $80
	dec  d                                           ; $54f2: $15
	add  b                                           ; $54f3: $80
	ld   [de], a                                     ; $54f4: $12
	add  b                                           ; $54f5: $80
	dec  d                                           ; $54f6: $15
	add  b                                           ; $54f7: $80
	db   $10                                         ; $54f8: $10
	dec  b                                           ; $54f9: $05
	ldh  a, [c]                                      ; $54fa: $f2
	rst  $20                                         ; $54fb: $e7
	ld   [$0d0f], sp                                 ; $54fc: $08 $0f $0d
	rrca                                             ; $54ff: $0f
	add  b                                           ; $5500: $80
	rlca                                             ; $5501: $07
	inc  de                                          ; $5502: $13
	ld   d, b                                        ; $5503: $50
	ld   d, [hl]                                     ; $5504: $56
	and  l                                           ; $5505: $a5
	xor  a                                           ; $5506: $af
	ld   c, c                                        ; $5507: $49
	ld   c, a                                        ; $5508: $4f
	and  l                                           ; $5509: $a5
	xor  a                                           ; $550a: $af
	and  d                                           ; $550b: $a2
	xor  $0d                                         ; $550c: $ee $0d
	rst  JumpTable                                         ; $550e: $df
	ld   e, l                                        ; $550f: $5d
	call c, $9c86                                    ; $5510: $dc $86 $9c
	add  c                                           ; $5513: $81
	cp   a                                           ; $5514: $bf
	add  hl, sp                                      ; $5515: $39
	ld   a, a                                        ; $5516: $7f
	add  b                                           ; $5517: $80
	ld   h, l                                        ; $5518: $65
	add  hl, bc                                      ; $5519: $09
	jr   nz, jr_033_557d                             ; $551a: $20 $61

	db   $fc                                         ; $551c: $fc
	call nz, $6024                                   ; $551d: $c4 $24 $60

jr_033_5520:
	ld   b, b                                        ; $5520: $40
	and  b                                           ; $5521: $a0
	ld   bc, $8061                                   ; $5522: $01 $61 $80
	ld   hl, $2680                                   ; $5525: $21 $80 $26
	inc  bc                                          ; $5528: $03
	jp   $cecf                                       ; $5529: $c3 $cf $ce


	rra                                              ; $552c: $1f
	ld   l, e                                        ; $552d: $6b
	inc  b                                           ; $552e: $04
	ld   [bc], a                                     ; $552f: $02
	cp   $00                                         ; $5530: $fe $00
	cp   $9b                                         ; $5532: $fe $9b
	nop                                              ; $5534: $00
	inc  b                                           ; $5535: $04
	rst  $38                                         ; $5536: $ff
	nop                                              ; $5537: $00
	ret  nz                                          ; $5538: $c0

	nop                                              ; $5539: $00
	ccf                                              ; $553a: $3f
	sbc  l                                           ; $553b: $9d
	nop                                              ; $553c: $00
	inc  c                                           ; $553d: $0c
	ld   bc, $0200                                   ; $553e: $01 $00 $02
	ld   bc, $0305                                   ; $5541: $01 $05 $03
	dec  bc                                          ; $5544: $0b
	rlca                                             ; $5545: $07
	rla                                              ; $5546: $17
	rrca                                             ; $5547: $0f
	cpl                                              ; $5548: $2f
	rra                                              ; $5549: $1f

jr_033_554a:
	ld   e, a                                        ; $554a: $5f
	add  b                                           ; $554b: $80
	ccf                                              ; $554c: $3f
	ld   bc, $7f00                                   ; $554d: $01 $00 $7f
	adc  l                                           ; $5550: $8d
	nop                                              ; $5551: $00
	inc  c                                           ; $5552: $0c
	add  b                                           ; $5553: $80
	nop                                              ; $5554: $00
	ld   b, b                                        ; $5555: $40
	add  b                                           ; $5556: $80
	and  b                                           ; $5557: $a0
	ret  nz                                          ; $5558: $c0

	ret  nc                                          ; $5559: $d0

	ldh  [$e8], a                                    ; $555a: $e0 $e8
	ldh  a, [$f4]                                    ; $555c: $f0 $f4
	ld   hl, sp-$06                                  ; $555e: $f8 $fa
	add  b                                           ; $5560: $80
	db   $fc                                         ; $5561: $fc
	ld   bc, $fe00                                   ; $5562: $01 $00 $fe
	adc  c                                           ; $5565: $89
	nop                                              ; $5566: $00
	inc  c                                           ; $5567: $0c
	ld   c, $00                                      ; $5568: $0e $00
	rra                                              ; $556a: $1f
	ld   b, $37                                      ; $556b: $06 $37
	rlca                                             ; $556d: $07
	ld   b, $16                                      ; $556e: $06 $16
	ld   d, h                                        ; $5570: $54
	add  hl, de                                      ; $5571: $19
	db   $ed                                         ; $5572: $ed
	ld   l, e                                        ; $5573: $6b
	ld   [hl], e                                     ; $5574: $73
	add  b                                           ; $5575: $80

jr_033_5576:
	ld   d, l                                        ; $5576: $55
	dec  bc                                          ; $5577: $0b
	inc  sp                                          ; $5578: $33
	rst  $10                                         ; $5579: $d7
	inc  de                                          ; $557a: $13
	ld   b, $2c                                      ; $557b: $06 $2c

jr_033_557d:
	dec  l                                           ; $557d: $2d
	ld   e, h                                        ; $557e: $5c
	db   $dd                                         ; $557f: $dd
	ld   e, b                                        ; $5580: $58
	ld   e, c                                        ; $5581: $59
	ld   d, b                                        ; $5582: $50
	ld   d, e                                        ; $5583: $53
	add  c                                           ; $5584: $81
	xor  b                                           ; $5585: $a8
	inc  c                                           ; $5586: $0c
	xor  e                                           ; $5587: $ab
	sub  h                                           ; $5588: $94
	ld   e, e                                        ; $5589: $5b
	nop                                              ; $558a: $00
	ld   a, b                                        ; $558b: $78
	jr   nc, jr_033_554a                             ; $558c: $30 $bc

	jr   nc, jr_033_55d2                             ; $558e: $30 $42

	ld   c, b                                        ; $5590: $48
	rlca                                             ; $5591: $07
	sub  [hl]                                        ; $5592: $96
	sub  d                                           ; $5593: $92
	add  b                                           ; $5594: $80
	jp   c, $f209                                    ; $5595: $da $09 $f2

	ldh  a, [$28]                                    ; $5598: $f0 $28
	ld   c, b                                        ; $559a: $48
	inc  c                                           ; $559b: $0c
	jr   jr_033_5520                                 ; $559c: $18 $82

	sub  [hl]                                        ; $559e: $96
	ld   [bc], a                                     ; $559f: $02
	adc  e                                           ; $55a0: $8b
	add  c                                           ; $55a1: $81
	nop                                              ; $55a2: $00
	jr   jr_033_55b6                                 ; $55a3: $18 $11

	ld   [bc], a                                     ; $55a5: $02
	ld   a, [bc]                                     ; $55a6: $0a
	ld   [bc], a                                     ; $55a7: $02
	ldh  a, [c]                                      ; $55a8: $f2
	dec  c                                           ; $55a9: $0d
	call nc, Call_033_6703                           ; $55aa: $d4 $03 $67
	nop                                              ; $55ad: $00

jr_033_55ae:
	ld   bc, $a600                                   ; $55ae: $01 $00 $a6
	ld   b, c                                        ; $55b1: $41
	ld   e, e                                        ; $55b2: $5b
	ld   h, c                                        ; $55b3: $61
	ld   a, b                                        ; $55b4: $78
	ld   b, d                                        ; $55b5: $42

jr_033_55b6:
	ld   [$1607], a                                  ; $55b6: $ea $07 $16
	rrca                                             ; $55b9: $0f
	call $2b0d                                       ; $55ba: $cd $0d $2b
	add  e                                           ; $55bd: $83
	dec  de                                          ; $55be: $1b
	ld   a, [bc]                                     ; $55bf: $0a
	ld   e, a                                        ; $55c0: $5f
	ld   h, b                                        ; $55c1: $60
	ldh  [rIF], a                                    ; $55c2: $e0 $0f
	ld   a, c                                        ; $55c4: $79
	nop                                              ; $55c5: $00
	or   $00                                         ; $55c6: $f6 $00
	ld   hl, sp+$10                                  ; $55c8: $f8 $10
	dec  b                                           ; $55ca: $05
	add  b                                           ; $55cb: $80
	nop                                              ; $55cc: $00
	inc  c                                           ; $55cd: $0c
	ld   h, b                                        ; $55ce: $60
	add  [hl]                                        ; $55cf: $86
	db   $10                                         ; $55d0: $10
	ld   a, h                                        ; $55d1: $7c

jr_033_55d2:
	ld   [hl], b                                     ; $55d2: $70
	inc  b                                           ; $55d3: $04
	ld   [$1cea], sp                                 ; $55d4: $08 $ea $1c
	db   $ec                                         ; $55d7: $ec
	db   $fc                                         ; $55d8: $fc
	push af                                          ; $55d9: $f5
	or   $83                                         ; $55da: $f6 $83
	ld   a, [$f80a]                                  ; $55dc: $fa $0a $f8
	db   $fc                                         ; $55df: $fc
	ld   [bc], a                                     ; $55e0: $02
	inc  bc                                          ; $55e1: $03
	db   $fc                                         ; $55e2: $fc
	sub  d                                           ; $55e3: $92
	nop                                              ; $55e4: $00
	ld   l, a                                        ; $55e5: $6f
	nop                                              ; $55e6: $00
	rst  $38                                         ; $55e7: $ff
	nop                                              ; $55e8: $00
	add  b                                           ; $55e9: $80
	ld   [$1880], sp                                 ; $55ea: $08 $80 $18
	add  b                                           ; $55ed: $80
	ld   [$0480], sp                                 ; $55ee: $08 $80 $04
	add  b                                           ; $55f1: $80
	nop                                              ; $55f2: $00
	add  b                                           ; $55f3: $80
	jr   nz, jr_033_5576                             ; $55f4: $20 $80

	ld   b, b                                        ; $55f6: $40
	add  b                                           ; $55f7: $80
	inc  b                                           ; $55f8: $04
	nop                                              ; $55f9: $00
	nop                                              ; $55fa: $00
	add  b                                           ; $55fb: $80
	ld   bc, $0000                                   ; $55fc: $01 $00 $00
	add  b                                           ; $55ff: $80
	ld   bc, $0080                                   ; $5600: $01 $80 $00
	ld   bc, $0003                                   ; $5603: $01 $03 $00
	add  c                                           ; $5606: $81
	inc  bc                                          ; $5607: $03
	add  e                                           ; $5608: $83
	nop                                              ; $5609: $00
	add  b                                           ; $560a: $80
	ld   [$0089], sp                                 ; $560b: $08 $89 $00
	inc  b                                           ; $560e: $04
	ld   h, b                                        ; $560f: $60
	ld   h, h                                        ; $5610: $64
	ld   [hl], h                                     ; $5611: $74
	ld   [hl], b                                     ; $5612: $70
	ld   h, b                                        ; $5613: $60
	add  d                                           ; $5614: $82
	add  sp, $02                                     ; $5615: $e8 $02
	ld   [hl], b                                     ; $5617: $70
	add  sp, -$08                                    ; $5618: $e8 $f8
	add  b                                           ; $561a: $80
	ldh  a, [$80]                                    ; $561b: $f0 $80
	nop                                              ; $561d: $00
	ld   [bc], a                                     ; $561e: $02
	jr   jr_033_563a                                 ; $561f: $18 $19

	dec  a                                           ; $5621: $3d
	add  c                                           ; $5622: $81
	inc  a                                           ; $5623: $3c
	add  b                                           ; $5624: $80
	ld   a, [de]                                     ; $5625: $1a
	inc  bc                                          ; $5626: $03
	nop                                              ; $5627: $00
	ld   bc, $1819                                   ; $5628: $01 $19 $18
	add  b                                           ; $562b: $80
	jr   nc, jr_033_55ae                             ; $562c: $30 $80

	jr   nz, @-$7e                                   ; $562e: $20 $80

	ld   h, d                                        ; $5630: $62
	add  h                                           ; $5631: $84
	ld   b, h                                        ; $5632: $44
	add  c                                           ; $5633: $81
	nop                                              ; $5634: $00
	add  b                                           ; $5635: $80
	ld   b, $80                                      ; $5636: $06 $80
	nop                                              ; $5638: $00
	nop                                              ; $5639: $00

jr_033_563a:
	ldh  [$80], a                                    ; $563a: $e0 $80
	add  sp, $00                                     ; $563c: $e8 $00
	db   $ec                                         ; $563e: $ec
	add  b                                           ; $563f: $80
	adc  h                                           ; $5640: $8c
	nop                                              ; $5641: $00
	inc  c                                           ; $5642: $0c
	add  b                                           ; $5643: $80
	ld   [rRAMG], sp                                 ; $5644: $08 $00 $00
	add  b                                           ; $5647: $80
	db   $10                                         ; $5648: $10
	add  b                                           ; $5649: $80
	ldh  [$81], a                                    ; $564a: $e0 $81
	nop                                              ; $564c: $00
	add  b                                           ; $564d: $80
	ld   [$0484], sp                                 ; $564e: $08 $84 $04
	add  c                                           ; $5651: $81
	nop                                              ; $5652: $00
	add  b                                           ; $5653: $80
	ld   h, b                                        ; $5654: $60
	add  d                                           ; $5655: $82
	nop                                              ; $5656: $00
	ld   a, [bc]                                     ; $5657: $0a

jr_033_5658:
	inc  e                                           ; $5658: $1c
	nop                                              ; $5659: $00
	ld   a, $0c                                      ; $565a: $3e $0c
	ld   l, a                                        ; $565c: $6f
	ld   l, $2c                                      ; $565d: $2e $2c
	inc  [hl]                                        ; $565f: $34
	ret  c                                           ; $5660: $d8

	ld   d, e                                        ; $5661: $53
	ld   h, e                                        ; $5662: $63
	add  b                                           ; $5663: $80

jr_033_5664:
	ld   l, l                                        ; $5664: $6d
	dec  e                                           ; $5665: $1d
	ld   l, [hl]                                     ; $5666: $6e
	sbc  [hl]                                        ; $5667: $9e
	dec  c                                           ; $5668: $0d
	adc  h                                           ; $5669: $8c
	ld   b, h                                        ; $566a: $44
	ld   d, b                                        ; $566b: $50
	ld   [hl-], a                                    ; $566c: $32
	ld   a, $60                                      ; $566d: $3e $60
	ld   l, h                                        ; $566f: $6c
	ldh  [$ec], a                                    ; $5670: $e0 $ec
	ld   b, b                                        ; $5672: $40
	ld   b, [hl]                                     ; $5673: $46
	jr   nz, jr_033_569f                             ; $5674: $20 $29

	and  b                                           ; $5676: $a0
	ld   e, c                                        ; $5677: $59

jr_033_5678:
	nop                                              ; $5678: $00
	jr   c, jr_033_567b                              ; $5679: $38 $00

jr_033_567b:
	ld   a, h                                        ; $567b: $7c
	jr   nz, jr_033_5664                             ; $567c: $20 $e6

	ld   [hl], h                                     ; $567e: $74
	inc  [hl]                                        ; $567f: $34

jr_033_5680:
	inc  a                                           ; $5680: $3c
	dec  bc                                          ; $5681: $0b
	jp   z, $80c6                                    ; $5682: $ca $c6 $80

	or   [hl]                                        ; $5685: $b6
	inc  d                                           ; $5686: $14
	halt                                             ; $5687: $76
	ld   a, c                                        ; $5688: $79
	or   b                                           ; $5689: $b0
	ld   sp, $0a22                                   ; $568a: $31 $22 $0a
	ld   c, h                                        ; $568d: $4c
	ld   a, h                                        ; $568e: $7c
	ld   b, $56                                      ; $568f: $06 $56
	rlca                                             ; $5691: $07
	ld   d, a                                        ; $5692: $57
	ld   [bc], a                                     ; $5693: $02
	ld   h, d                                        ; $5694: $62
	inc  b                                           ; $5695: $04
	sub  h                                           ; $5696: $94
	dec  b                                           ; $5697: $05
	dec  a                                           ; $5698: $3d
	ld   e, b                                        ; $5699: $58
	cp   a                                           ; $569a: $bf
	inc  b                                           ; $569b: $04
	add  c                                           ; $569c: $81
	nop                                              ; $569d: $00
	rrca                                             ; $569e: $0f

jr_033_569f:
	ld   bc, $0462                                   ; $569f: $01 $62 $04
	ld   e, l                                        ; $56a2: $5d
	dec  h                                           ; $56a3: $25
	ld   h, h                                        ; $56a4: $64
	ld   [$0c6f], sp                                 ; $56a5: $08 $6f $0c
	dec  hl                                          ; $56a8: $2b
	rra                                              ; $56a9: $1f
	rst  $10                                         ; $56aa: $d7
	rla                                              ; $56ab: $17
	rrca                                             ; $56ac: $0f
	cpl                                              ; $56ad: $2f
	ld   l, a                                        ; $56ae: $6f
	add  b                                           ; $56af: $80
	cpl                                              ; $56b0: $2f
	ld   [$df4f], sp                                 ; $56b1: $08 $4f $df
	jr   nz, jr_033_5716                             ; $56b4: $20 $60

	rra                                              ; $56b6: $1f
	rst  JumpTable                                         ; $56b7: $df
	nop                                              ; $56b8: $00
	rst  $38                                         ; $56b9: $ff
	nop                                              ; $56ba: $00
	add  d                                           ; $56bb: $82
	db   $10                                         ; $56bc: $10
	add  b                                           ; $56bd: $80
	ld   [$0084], sp                                 ; $56be: $08 $84 $00
	add  c                                           ; $56c1: $81
	db   $10                                         ; $56c2: $10
	ld   bc, $0111                                   ; $56c3: $01 $11 $01
	add  b                                           ; $56c6: $80
	dec  b                                           ; $56c7: $05
	ld   [bc], a                                     ; $56c8: $02
	add  hl, bc                                      ; $56c9: $09
	dec  c                                           ; $56ca: $0d
	dec  b                                           ; $56cb: $05
	add  b                                           ; $56cc: $80
	add  hl, bc                                      ; $56cd: $09
	ld   bc, $090f                                   ; $56ce: $01 $0f $09
	add  c                                           ; $56d1: $81

jr_033_56d2:
	rlca                                             ; $56d2: $07
	add  c                                           ; $56d3: $81
	nop                                              ; $56d4: $00
	add  b                                           ; $56d5: $80
	jr   jr_033_5658                                 ; $56d6: $18 $80

	ld   [$0086], sp                                 ; $56d8: $08 $86 $00
	add  c                                           ; $56db: $81
	ld   [$8801], sp                                 ; $56dc: $08 $01 $88
	add  b                                           ; $56df: $80
	add  b                                           ; $56e0: $80
	and  b                                           ; $56e1: $a0
	ld   [bc], a                                     ; $56e2: $02
	sub  b                                           ; $56e3: $90
	ret  nc                                          ; $56e4: $d0

	ret  nz                                          ; $56e5: $c0

	add  b                                           ; $56e6: $80
	sub  b                                           ; $56e7: $90
	ld   bc, $90f0                                   ; $56e8: $01 $f0 $90
	add  c                                           ; $56eb: $81
	ldh  [$81], a                                    ; $56ec: $e0 $81
	nop                                              ; $56ee: $00
	nop                                              ; $56ef: $00
	inc  bc                                          ; $56f0: $03
	add  c                                           ; $56f1: $81
	dec  sp                                          ; $56f2: $3b
	add  b                                           ; $56f3: $80
	ld   a, [hl-]                                    ; $56f4: $3a
	nop                                              ; $56f5: $00
	jr   c, jr_033_5678                              ; $56f6: $38 $80

	jr   jr_033_567b                                 ; $56f8: $18 $81

	nop                                              ; $56fa: $00
	ld   [bc], a                                     ; $56fb: $02

jr_033_56fc:
	inc  bc                                          ; $56fc: $03
	inc  hl                                          ; $56fd: $23
	jr   nz, jr_033_5680                             ; $56fe: $20 $80

	nop                                              ; $5700: $00

jr_033_5701:
	add  b                                           ; $5701: $80
	ld   c, b                                        ; $5702: $48
	add  b                                           ; $5703: $80
	ld   d, b                                        ; $5704: $50
	add  d                                           ; $5705: $82
	db   $10                                         ; $5706: $10
	add  c                                           ; $5707: $81
	nop                                              ; $5708: $00
	add  b                                           ; $5709: $80
	ld   b, $0a                                      ; $570a: $06 $0a
	inc  e                                           ; $570c: $1c
	nop                                              ; $570d: $00
	ld   a, $0c                                      ; $570e: $3e $0c
	ld   l, a                                        ; $5710: $6f
	ld   l, $2c                                      ; $5711: $2e $2c
	inc  [hl]                                        ; $5713: $34
	ret  c                                           ; $5714: $d8

	ld   d, e                                        ; $5715: $53

jr_033_5716:
	ld   h, e                                        ; $5716: $63
	add  b                                           ; $5717: $80

jr_033_5718:
	ld   l, l                                        ; $5718: $6d
	dec  e                                           ; $5719: $1d
	ld   l, [hl]                                     ; $571a: $6e
	sbc  [hl]                                        ; $571b: $9e
	dec  c                                           ; $571c: $0d
	adc  h                                           ; $571d: $8c
	ld   b, h                                        ; $571e: $44
	ld   d, b                                        ; $571f: $50
	ld   [hl-], a                                    ; $5720: $32
	ld   a, $60                                      ; $5721: $3e $60
	ld   l, h                                        ; $5723: $6c
	ldh  [$ec], a                                    ; $5724: $e0 $ec
	ld   b, b                                        ; $5726: $40
	ld   b, [hl]                                     ; $5727: $46
	jr   nz, jr_033_5752                             ; $5728: $20 $28

	and  b                                           ; $572a: $a0
	and  a                                           ; $572b: $a7
	ld   e, b                                        ; $572c: $58
	sbc  a                                           ; $572d: $9f
	nop                                              ; $572e: $00
	ld   a, h                                        ; $572f: $7c
	jr   nz, jr_033_5718                             ; $5730: $20 $e6

	ld   [hl], h                                     ; $5732: $74
	inc  [hl]                                        ; $5733: $34

jr_033_5734:
	inc  a                                           ; $5734: $3c
	dec  bc                                          ; $5735: $0b
	jp   z, $80c6                                    ; $5736: $ca $c6 $80

	or   [hl]                                        ; $5739: $b6
	dec  d                                           ; $573a: $15
	halt                                             ; $573b: $76
	ld   a, c                                        ; $573c: $79
	or   b                                           ; $573d: $b0
	ld   sp, $0a22                                   ; $573e: $31 $22 $0a
	ld   c, h                                        ; $5741: $4c
	ld   a, h                                        ; $5742: $7c
	ld   b, $56                                      ; $5743: $06 $56
	rlca                                             ; $5745: $07
	ld   d, a                                        ; $5746: $57
	ld   [bc], a                                     ; $5747: $02
	ld   h, d                                        ; $5748: $62
	inc  b                                           ; $5749: $04
	inc  d                                           ; $574a: $14
	dec  b                                           ; $574b: $05
	push hl                                          ; $574c: $e5
	ld   a, [de]                                     ; $574d: $1a
	add  l                                           ; $574e: $85
	inc  b                                           ; $574f: $04
	jr   nz, jr_033_56d2                             ; $5750: $20 $80

jr_033_5752:
	nop                                              ; $5752: $00
	dec  c                                           ; $5753: $0d
	ld   bc, $0462                                   ; $5754: $01 $62 $04
	ld   e, l                                        ; $5757: $5d
	dec  h                                           ; $5758: $25
	ld   h, h                                        ; $5759: $64
	ld   [$0c6f], sp                                 ; $575a: $08 $6f $0c
	dec  hl                                          ; $575d: $2b
	rra                                              ; $575e: $1f
	rst  $10                                         ; $575f: $d7
	rla                                              ; $5760: $17
	rrca                                             ; $5761: $0f
	add  c                                           ; $5762: $81
	cpl                                              ; $5763: $2f
	ld   a, [bc]                                     ; $5764: $0a
	ld   l, a                                        ; $5765: $6f
	rrca                                             ; $5766: $0f
	rra                                              ; $5767: $1f
	ld   h, b                                        ; $5768: $60
	ldh  [$1f], a                                    ; $5769: $e0 $1f
	ld   l, c                                        ; $576b: $69
	nop                                              ; $576c: $00
	or   $00                                         ; $576d: $f6 $00
	db   $fc                                         ; $576f: $fc
	add  b                                           ; $5770: $80
	dec  de                                          ; $5771: $1b
	nop                                              ; $5772: $00
	dec  sp                                          ; $5773: $3b
	add  b                                           ; $5774: $80
	ld   a, [hl-]                                    ; $5775: $3a
	nop                                              ; $5776: $00
	jr   c, @-$7e                                    ; $5777: $38 $80

	jr   jr_033_56fc                                 ; $5779: $18 $81

	nop                                              ; $577b: $00
	ld   [bc], a                                     ; $577c: $02
	inc  bc                                          ; $577d: $03
	inc  hl                                          ; $577e: $23
	jr   nz, jr_033_5701                             ; $577f: $20 $80

	nop                                              ; $5781: $00
	add  b                                           ; $5782: $80
	ld   c, b                                        ; $5783: $48
	add  d                                           ; $5784: $82
	ld   d, b                                        ; $5785: $50
	add  b                                           ; $5786: $80
	db   $10                                         ; $5787: $10
	add  c                                           ; $5788: $81
	nop                                              ; $5789: $00
	add  b                                           ; $578a: $80
	ld   b, $82                                      ; $578b: $06 $82
	nop                                              ; $578d: $00
	add  b                                           ; $578e: $80
	inc  d                                           ; $578f: $14
	add  b                                           ; $5790: $80
	nop                                              ; $5791: $00
	rrca                                             ; $5792: $0f
	rrca                                             ; $5793: $0f
	nop                                              ; $5794: $00
	ld   a, $00                                      ; $5795: $3e $00
	ld   e, $00                                      ; $5797: $1e $00
	jr   nc, @+$12                                   ; $5799: $30 $10

	ld   d, c                                        ; $579b: $51
	add  hl, de                                      ; $579c: $19
	ld   e, l                                        ; $579d: $5d
	dec  b                                           ; $579e: $05
	cpl                                              ; $579f: $2f
	ld   bc, $4f1f                                   ; $57a0: $01 $1f $4f
	add  b                                           ; $57a3: $80
	ld   c, c                                        ; $57a4: $49
	nop                                              ; $57a5: $00
	ld   b, c                                        ; $57a6: $41
	add  b                                           ; $57a7: $80
	add  hl, bc                                      ; $57a8: $09
	ld   bc, $1f0f                                   ; $57a9: $01 $0f $1f
	add  b                                           ; $57ac: $80
	rlca                                             ; $57ad: $07
	add  e                                           ; $57ae: $83
	nop                                              ; $57af: $00
	nop                                              ; $57b0: $00
	jr   nc, jr_033_5734                             ; $57b1: $30 $81

	nop                                              ; $57b3: $00
	nop                                              ; $57b4: $00
	rlca                                             ; $57b5: $07
	add  b                                           ; $57b6: $80
	nop                                              ; $57b7: $00
	add  b                                           ; $57b8: $80
	rla                                              ; $57b9: $17
	ld   bc, $3730                                   ; $57ba: $01 $30 $37
	adc  e                                           ; $57bd: $8b
	nop                                              ; $57be: $00
	add  b                                           ; $57bf: $80
	ld   b, $80                                      ; $57c0: $06 $80
	nop                                              ; $57c2: $00
	ld   b, b                                        ; $57c3: $40
	dec  e                                           ; $57c4: $1d

jr_033_57c5:
	nop                                              ; $57c5: $00
	ccf                                              ; $57c6: $3f
	dec  c                                           ; $57c7: $0d
	nop                                              ; $57c8: $00
	db   $10                                         ; $57c9: $10
	rrca                                             ; $57ca: $0f
	nop                                              ; $57cb: $00
	ld   a, [hl]                                     ; $57cc: $7e
	nop                                              ; $57cd: $00
	ld   e, $00                                      ; $57ce: $1e $00
	jr   nc, jr_033_57d2                             ; $57d0: $30 $00

jr_033_57d2:
	ret  nz                                          ; $57d2: $c0

	nop                                              ; $57d3: $00
	ld   b, b                                        ; $57d4: $40
	nop                                              ; $57d5: $00
	xor  [hl]                                        ; $57d6: $ae
	add  b                                           ; $57d7: $80

jr_033_57d8:
	call c, $8480                                    ; $57d8: $dc $80 $84
	add  b                                           ; $57db: $80
	jp   nz, $0682                                   ; $57dc: $c2 $82 $06

	nop                                              ; $57df: $00
	ret  z                                           ; $57e0: $c8

	nop                                              ; $57e1: $00
	rlca                                             ; $57e2: $07
	nop                                              ; $57e3: $00
	and  a                                           ; $57e4: $a7
	nop                                              ; $57e5: $00
	db   $fc                                         ; $57e6: $fc
	sbc  b                                           ; $57e7: $98
	jr   z, jr_033_57f2                              ; $57e8: $28 $08

	ldh  a, [rP1]                                    ; $57ea: $f0 $00
	ld   a, [hl]                                     ; $57ec: $7e
	nop                                              ; $57ed: $00
	ld   a, b                                        ; $57ee: $78

jr_033_57ef:
	nop                                              ; $57ef: $00
	inc  c                                           ; $57f0: $0c
	nop                                              ; $57f1: $00

jr_033_57f2:
	inc  bc                                          ; $57f2: $03
	nop                                              ; $57f3: $00
	ld   [bc], a                                     ; $57f4: $02
	nop                                              ; $57f5: $00
	ld   [hl], l                                     ; $57f6: $75
	ld   bc, $015b                                   ; $57f7: $01 $5b $01
	ld   b, c                                        ; $57fa: $41
	ld   bc, $2123                                   ; $57fb: $01 $23 $21
	ld   h, h                                        ; $57fe: $64

jr_033_57ff:
	nop                                              ; $57ff: $00
	dec  de                                          ; $5800: $1b
	nop                                              ; $5801: $00
	ldh  [rP1], a                                    ; $5802: $e0 $00
	db   $eb                                         ; $5804: $eb
	add  c                                           ; $5805: $81
	ld   a, [bc]                                     ; $5806: $0a
	nop                                              ; $5807: $00
	ld   l, d                                        ; $5808: $6a
	add  b                                           ; $5809: $80
	dec  l                                           ; $580a: $2d
	add  hl, bc                                      ; $580b: $09
	jr   nc, jr_033_57c5                             ; $580c: $30 $b7

jr_033_580e:
	ld   h, b                                        ; $580e: $60
	ld   [hl], b                                     ; $580f: $70
	nop                                              ; $5810: $00
	jr   nz, jr_033_5813                             ; $5811: $20 $00

jr_033_5813:
	scf                                              ; $5813: $37
	ld   b, b                                        ; $5814: $40
	ld   c, [hl]                                     ; $5815: $4e
	add  b                                           ; $5816: $80
	ld   l, [hl]                                     ; $5817: $6e
	inc  bc                                          ; $5818: $03
	ld   c, [hl]                                     ; $5819: $4e
	ld   e, d                                        ; $581a: $5a
	ld   a, [de]                                     ; $581b: $1a
	db   $db                                         ; $581c: $db
	add  e                                           ; $581d: $83
	dec  de                                          ; $581e: $1b
	inc  b                                           ; $581f: $04
	ld   [hl], $00                                   ; $5820: $36 $00
	or   $00                                         ; $5822: $f6 $00
	dec  bc                                          ; $5824: $0b
	add  b                                           ; $5825: $80
	ld   d, b                                        ; $5826: $50
	ld   bc, $dad0                                   ; $5827: $01 $d0 $da
	add  b                                           ; $582a: $80
	or   h                                           ; $582b: $b4
	rrca                                             ; $582c: $0f
	inc  c                                           ; $582d: $0c
	db   $ed                                         ; $582e: $ed
	ld   b, $0e                                      ; $582f: $06 $0e
	nop                                              ; $5831: $00
	inc  b                                           ; $5832: $04
	nop                                              ; $5833: $00
	db   $ec                                         ; $5834: $ec
	ld   [bc], a                                     ; $5835: $02
	ldh  a, [c]                                      ; $5836: $f2
	or   $d6                                         ; $5837: $f6 $d6

jr_033_5839:
	jp   nc, $585b                                   ; $5839: $d2 $5b $58

	ld   e, d                                        ; $583c: $5a
	add  e                                           ; $583d: $83
	ld   e, b                                        ; $583e: $58
	inc  b                                           ; $583f: $04
	ld   l, h                                        ; $5840: $6c
	nop                                              ; $5841: $00
	ld   l, a                                        ; $5842: $6f
	nop                                              ; $5843: $00
	rst  $38                                         ; $5844: $ff
	add  c                                           ; $5845: $81
	nop                                              ; $5846: $00
	add  b                                           ; $5847: $80
	ld   a, [bc]                                     ; $5848: $0a
	add  b                                           ; $5849: $80
	nop                                              ; $584a: $00
	ld   a, [bc]                                     ; $584b: $0a
	inc  bc                                          ; $584c: $03
	nop                                              ; $584d: $00
	inc  c                                           ; $584e: $0c
	nop                                              ; $584f: $00
	stop                                             ; $5850: $10 $00
	ld   l, $00                                      ; $5852: $2e $00
	ld   e, $08                                      ; $5854: $1e $08
	jr   c, jr_033_57d8                              ; $5856: $38 $80

	db   $10                                         ; $5858: $10
	dec  b                                           ; $5859: $05
	ld   [$0109], sp                                 ; $585a: $08 $09 $01
	dec  b                                           ; $585d: $05
	ld   b, l                                        ; $585e: $45
	ld   a, a                                        ; $585f: $7f
	add  b                                           ; $5860: $80
	ld   b, a                                        ; $5861: $47
	ld   bc, $1101                                   ; $5862: $01 $01 $11
	add  b                                           ; $5865: $80
	rrca                                             ; $5866: $0f
	add  b                                           ; $5867: $80
	rlca                                             ; $5868: $07
	add  e                                           ; $5869: $83
	nop                                              ; $586a: $00
	nop                                              ; $586b: $00
	jr   nc, jr_033_57ef                             ; $586c: $30 $81

	nop                                              ; $586e: $00
	ld   [bc], a                                     ; $586f: $02
	rlca                                             ; $5870: $07
	db   $10                                         ; $5871: $10
	rla                                              ; $5872: $17
	add  b                                           ; $5873: $80
	jr   nc, jr_033_57ff                             ; $5874: $30 $89

	nop                                              ; $5876: $00
	add  b                                           ; $5877: $80
	ld   b, $82                                      ; $5878: $06 $82
	nop                                              ; $587a: $00
	db   $10                                         ; $587b: $10
	inc  e                                           ; $587c: $1c
	nop                                              ; $587d: $00
	ccf                                              ; $587e: $3f
	inc  c                                           ; $587f: $0c
	dec  c                                           ; $5880: $0d
	dec  e                                           ; $5881: $1d
	inc  de                                          ; $5882: $13
	db   $10                                         ; $5883: $10
	inc  c                                           ; $5884: $0c
	nop                                              ; $5885: $00
	stop                                             ; $5886: $10 $00
	ld   l, [hl]                                     ; $5888: $6e
	nop                                              ; $5889: $00
	ld   e, $00                                      ; $588a: $1e $00
	jr   nc, jr_033_580e                             ; $588c: $30 $80

	nop                                              ; $588e: $00
	add  c                                           ; $588f: $81
	add  b                                           ; $5890: $80
	ld   a, [de]                                     ; $5891: $1a
	ret  nz                                          ; $5892: $c0

	add  b                                           ; $5893: $80
	cp   b                                           ; $5894: $b8
	add  b                                           ; $5895: $80
	ld   b, [hl]                                     ; $5896: $46
	nop                                              ; $5897: $00
	adc  $00                                         ; $5898: $ce $00
	stop                                             ; $589a: $10 $00
	jr   c, jr_033_589e                              ; $589c: $38 $00

jr_033_589e:
	db   $fc                                         ; $589e: $fc
	jr   jr_033_5839                                 ; $589f: $18 $98

	cp   b                                           ; $58a1: $b8
	ret  z                                           ; $58a2: $c8

	ld   [$0030], sp                                 ; $58a3: $08 $30 $00
	ld   [$7600], sp                                 ; $58a6: $08 $00 $76
	nop                                              ; $58a9: $00
	ld   a, b                                        ; $58aa: $78
	nop                                              ; $58ab: $00
	inc  c                                           ; $58ac: $0c
	add  b                                           ; $58ad: $80
	nop                                              ; $58ae: $00

jr_033_58af:
	add  c                                           ; $58af: $81
	ld   bc, $030c                                   ; $58b0: $01 $0c $03
	ld   bc, $011d                                   ; $58b3: $01 $1d $01
	ld   h, [hl]                                     ; $58b6: $66
	nop                                              ; $58b7: $00
	ld   a, e                                        ; $58b8: $7b
	nop                                              ; $58b9: $00
	inc  e                                           ; $58ba: $1c
	nop                                              ; $58bb: $00
	rlca                                             ; $58bc: $07
	ld   [$8048], sp                                 ; $58bd: $08 $48 $80
	ld   a, [bc]                                     ; $58c0: $0a
	ld   bc, $ac0c                                   ; $58c1: $01 $0c $ac
	add  b                                           ; $58c4: $80
	ld   h, l                                        ; $58c5: $65
	ld   b, $60                                      ; $58c6: $06 $60
	ld   [hl], a                                     ; $58c8: $77
	nop                                              ; $58c9: $00
	daa                                              ; $58ca: $27
	nop                                              ; $58cb: $00
	ld   a, $4e                                      ; $58cc: $3e $4e
	add  b                                           ; $58ce: $80
	ld   c, d                                        ; $58cf: $4a
	ld   [bc], a                                     ; $58d0: $02
	ld   e, b                                        ; $58d1: $58
	jr   jr_033_58af                                 ; $58d2: $18 $db

	add  c                                           ; $58d4: $81
	dec  de                                          ; $58d5: $1b
	ld   a, [bc]                                     ; $58d6: $0a
	dec  hl                                          ; $58d7: $2b
	dec  bc                                          ; $58d8: $0b
	ld   d, $00                                      ; $58d9: $16 $00
	or   $00                                         ; $58db: $f6 $00
	db   $eb                                         ; $58dd: $eb
	nop                                              ; $58de: $00
	ldh  [rAUD1SWEEP], a                             ; $58df: $e0 $10
	ld   [de], a                                     ; $58e1: $12
	add  b                                           ; $58e2: $80
	ld   d, b                                        ; $58e3: $50
	ld   bc, $b9b0                                   ; $58e4: $01 $b0 $b9
	add  b                                           ; $58e7: $80
	ld   l, [hl]                                     ; $58e8: $6e
	ld   b, $06                                      ; $58e9: $06 $06
	xor  $00                                         ; $58eb: $ee $00
	db   $e4                                         ; $58ed: $e4
	nop                                              ; $58ee: $00
	db   $ec                                         ; $58ef: $ec
	ldh  [c], a                                      ; $58f0: $e2
	add  b                                           ; $58f1: $80
	sub  d                                           ; $58f2: $92
	ld   [bc], a                                     ; $58f3: $02
	ld   e, e                                        ; $58f4: $5b
	ld   e, b                                        ; $58f5: $58
	ld   e, d                                        ; $58f6: $5a
	add  c                                           ; $58f7: $81
	ld   e, b                                        ; $58f8: $58
	ld   b, $54                                      ; $58f9: $06 $54
	ld   d, b                                        ; $58fb: $50
	ld   l, b                                        ; $58fc: $68
	nop                                              ; $58fd: $00
	ld   l, a                                        ; $58fe: $6f
	nop                                              ; $58ff: $00
	rst  $38                                         ; $5900: $ff
	add  c                                           ; $5901: $81
	nop                                              ; $5902: $00
	add  b                                           ; $5903: $80
	rlca                                             ; $5904: $07
	add  b                                           ; $5905: $80
	rra                                              ; $5906: $1f
	inc  b                                           ; $5907: $04
	ccf                                              ; $5908: $3f
	inc  a                                           ; $5909: $3c
	inc  l                                           ; $590a: $2c
	jr   nz, @+$52                                   ; $590b: $20 $50

	add  b                                           ; $590d: $80
	ld   b, e                                        ; $590e: $43
	ld   [bc], a                                     ; $590f: $02
	ld   c, a                                        ; $5910: $4f
	ld   c, $1e                                      ; $5911: $0e $1e
	add  b                                           ; $5913: $80
	ld   d, $80                                      ; $5914: $16 $80
	ld   d, d                                        ; $5916: $52
	inc  b                                           ; $5917: $04
	ld   b, h                                        ; $5918: $44
	ld   b, b                                        ; $5919: $40
	ld   b, d                                        ; $591a: $42
	ld   b, b                                        ; $591b: $40
	ld   b, [hl]                                     ; $591c: $46
	add  c                                           ; $591d: $81
	ld   b, b                                        ; $591e: $40
	ld   [bc], a                                     ; $591f: $02
	stop                                             ; $5920: $10 $00
	db   $10                                         ; $5922: $10
	add  c                                           ; $5923: $81
	nop                                              ; $5924: $00
	add  b                                           ; $5925: $80
	ldh  [$80], a                                    ; $5926: $e0 $80
	ld   hl, sp+$04                                  ; $5928: $f8 $04
	db   $fc                                         ; $592a: $fc
	inc  a                                           ; $592b: $3c
	inc  [hl]                                        ; $592c: $34
	inc  b                                           ; $592d: $04
	ld   a, [bc]                                     ; $592e: $0a
	add  b                                           ; $592f: $80
	jp   nz, $f202                                   ; $5930: $c2 $02 $f2

	or   b                                           ; $5933: $b0
	cp   b                                           ; $5934: $b8
	add  b                                           ; $5935: $80
	xor  b                                           ; $5936: $a8
	add  b                                           ; $5937: $80
	ld   c, d                                        ; $5938: $4a
	inc  b                                           ; $5939: $04
	ld   [hl+], a                                    ; $593a: $22
	ld   [bc], a                                     ; $593b: $02
	ld   b, d                                        ; $593c: $42
	ld   [bc], a                                     ; $593d: $02
	ld   h, d                                        ; $593e: $62
	add  c                                           ; $593f: $81
	ld   [bc], a                                     ; $5940: $02
	inc  b                                           ; $5941: $04
	ld   [$1800], sp                                 ; $5942: $08 $00 $18
	jr   nz, jr_033_5947                             ; $5945: $20 $00

jr_033_5947:
	add  c                                           ; $5947: $81
	ld   b, b                                        ; $5948: $40
	ld   [$7078], sp                                 ; $5949: $08 $78 $70
	ld   a, a                                        ; $594c: $7f
	ld   [$0020], sp                                 ; $594d: $08 $20 $00
	ld   a, [de]                                     ; $5950: $1a
	ld   [bc], a                                     ; $5951: $02
	scf                                              ; $5952: $37
	add  a                                           ; $5953: $87
	nop                                              ; $5954: $00
	nop                                              ; $5955: $00
	rrca                                             ; $5956: $0f
	add  c                                           ; $5957: $81
	nop                                              ; $5958: $00
	ld   [bc], a                                     ; $5959: $02
	ld   e, $00                                      ; $595a: $1e $00
	ld   de, $0081                                   ; $595c: $11 $81 $00
	ld   a, [bc]                                     ; $595f: $0a
	rlca                                             ; $5960: $07
	nop                                              ; $5961: $00
	rra                                              ; $5962: $1f
	nop                                              ; $5963: $00
	jr   c, jr_033_5966                              ; $5964: $38 $00

jr_033_5966:
	ld   h, b                                        ; $5966: $60
	nop                                              ; $5967: $00
	stop                                             ; $5968: $10 $00
	ldh  a, [$81]                                    ; $596a: $f0 $81
	nop                                              ; $596c: $00
	nop                                              ; $596d: $00
	ld   b, b                                        ; $596e: $40
	add  b                                           ; $596f: $80
	ld   b, c                                        ; $5970: $41
	dec  b                                           ; $5971: $05
	ld   c, c                                        ; $5972: $49
	dec  b                                           ; $5973: $05
	ld   bc, $0917                                   ; $5974: $01 $17 $09
	inc  bc                                          ; $5977: $03
	add  b                                           ; $5978: $80
	add  hl, bc                                      ; $5979: $09
	nop                                              ; $597a: $00
	rrca                                             ; $597b: $0f
	add  b                                           ; $597c: $80
	rlca                                             ; $597d: $07
	ld   c, $d0                                      ; $597e: $0e $d0
	nop                                              ; $5980: $00
	ld   l, a                                        ; $5981: $6f
	nop                                              ; $5982: $00
	ldh  [rP1], a                                    ; $5983: $e0 $00
	ld   hl, sp+$00                                  ; $5985: $f8 $00
	inc  e                                           ; $5987: $1c
	nop                                              ; $5988: $00
	ld   b, $00                                      ; $5989: $06 $00
	ld   [$0f00], sp                                 ; $598b: $08 $00 $0f
	add  c                                           ; $598e: $81
	nop                                              ; $598f: $00
	nop                                              ; $5990: $00
	ld   [bc], a                                     ; $5991: $02
	add  b                                           ; $5992: $80
	ld   b, d                                        ; $5993: $42
	dec  b                                           ; $5994: $05
	ld   d, d                                        ; $5995: $52
	ld   h, b                                        ; $5996: $60
	add  b                                           ; $5997: $80
	add  sp, -$70                                    ; $5998: $e8 $90
	ret  nz                                          ; $599a: $c0

	add  b                                           ; $599b: $80
	sub  b                                           ; $599c: $90
	nop                                              ; $599d: $00
	ldh  a, [$80]                                    ; $599e: $f0 $80
	ldh  [rDIV], a                                   ; $59a0: $e0 $04
	dec  bc                                          ; $59a2: $0b
	nop                                              ; $59a3: $00
	cp   c                                           ; $59a4: $b9
	inc  bc                                          ; $59a5: $03
	jp   $0d80                                       ; $59a6: $c3 $80 $0d


	nop                                              ; $59a9: $00
	dec  bc                                          ; $59aa: $0b
	add  b                                           ; $59ab: $80
	inc  bc                                          ; $59ac: $03
	inc  c                                           ; $59ad: $0c
	ld   [hl], h                                     ; $59ae: $74
	nop                                              ; $59af: $00
	and  b                                           ; $59b0: $a0
	nop                                              ; $59b1: $00
	jr   jr_033_59b4                                 ; $59b2: $18 $00

jr_033_59b4:
	scf                                              ; $59b4: $37
	jr   nc, jr_033_59b7                             ; $59b5: $30 $00

jr_033_59b7:
	scf                                              ; $59b7: $37
	ld   b, a                                        ; $59b8: $47
	rlca                                             ; $59b9: $07
	scf                                              ; $59ba: $37
	add  c                                           ; $59bb: $81
	rlca                                             ; $59bc: $07
	nop                                              ; $59bd: $00
	ld   [$0081], sp                                 ; $59be: $08 $81 $00
	add  b                                           ; $59c1: $80
	ld   c, $02                                      ; $59c2: $0e $02
	rst  $38                                         ; $59c4: $ff
	nop                                              ; $59c5: $00
	rst  $38                                         ; $59c6: $ff
	add  e                                           ; $59c7: $83
	nop                                              ; $59c8: $00
	add  b                                           ; $59c9: $80
	rlca                                             ; $59ca: $07
	add  b                                           ; $59cb: $80
	rra                                              ; $59cc: $1f
	inc  b                                           ; $59cd: $04
	ccf                                              ; $59ce: $3f
	inc  a                                           ; $59cf: $3c
	inc  l                                           ; $59d0: $2c
	jr   nz, jr_033_5a23                             ; $59d1: $20 $50

	add  b                                           ; $59d3: $80
	ld   b, e                                        ; $59d4: $43
	ld   [bc], a                                     ; $59d5: $02
	ld   c, a                                        ; $59d6: $4f
	rrca                                             ; $59d7: $0f
	rra                                              ; $59d8: $1f
	add  b                                           ; $59d9: $80
	ld   e, $80                                      ; $59da: $1e $80
	ld   e, d                                        ; $59dc: $5a
	add  [hl]                                        ; $59dd: $86
	ld   b, b                                        ; $59de: $40
	add  h                                           ; $59df: $84
	nop                                              ; $59e0: $00
	add  b                                           ; $59e1: $80
	ldh  [$80], a                                    ; $59e2: $e0 $80
	ld   hl, sp+$04                                  ; $59e4: $f8 $04
	db   $fc                                         ; $59e6: $fc
	inc  a                                           ; $59e7: $3c
	inc  [hl]                                        ; $59e8: $34
	inc  b                                           ; $59e9: $04
	ld   a, [bc]                                     ; $59ea: $0a
	add  b                                           ; $59eb: $80
	jp   nz, $f202                                   ; $59ec: $c2 $02 $f2

	ldh  a, [$f8]                                    ; $59ef: $f0 $f8
	add  b                                           ; $59f1: $80
	cp   b                                           ; $59f2: $b8
	add  b                                           ; $59f3: $80
	ld   e, d                                        ; $59f4: $5a
	add  b                                           ; $59f5: $80
	ld   b, d                                        ; $59f6: $42
	add  h                                           ; $59f7: $84
	ld   [bc], a                                     ; $59f8: $02
	ld   [bc], a                                     ; $59f9: $02
	db   $10                                         ; $59fa: $10
	jr   nz, jr_033_59fd                             ; $59fb: $20 $00

jr_033_59fd:
	add  c                                           ; $59fd: $81
	ld   b, b                                        ; $59fe: $40
	ld   [$7078], sp                                 ; $59ff: $08 $78 $70
	ld   a, a                                        ; $5a02: $7f
	ld   [$0060], sp                                 ; $5a03: $08 $60 $00
	ld   a, [de]                                     ; $5a06: $1a
	ld   [bc], a                                     ; $5a07: $02
	ld   [hl], a                                     ; $5a08: $77
	add  e                                           ; $5a09: $83
	nop                                              ; $5a0a: $00
	nop                                              ; $5a0b: $00
	ld   bc, $0081                                   ; $5a0c: $01 $81 $00
	nop                                              ; $5a0f: $00
	rra                                              ; $5a10: $1f
	add  c                                           ; $5a11: $81
	nop                                              ; $5a12: $00
	ld   b, $3c                                      ; $5a13: $06 $3c
	nop                                              ; $5a15: $00
	ld   [hl+], a                                    ; $5a16: $22
	nop                                              ; $5a17: $00
	ld   [$0004], sp                                 ; $5a18: $08 $04 $00
	add  c                                           ; $5a1b: $81
	ld   [bc], a                                     ; $5a1c: $02
	inc  bc                                          ; $5a1d: $03
	ld   e, $0e                                      ; $5a1e: $1e $0e
	cp   $10                                         ; $5a20: $fe $10
	add  b                                           ; $5a22: $80

jr_033_5a23:
	nop                                              ; $5a23: $00
	add  b                                           ; $5a24: $80
	ld   b, b                                        ; $5a25: $40
	ld   b, $f8                                      ; $5a26: $06 $f8
	nop                                              ; $5a28: $00
	ld   [$8000], sp                                 ; $5a29: $08 $00 $80
	nop                                              ; $5a2c: $00
	add  b                                           ; $5a2d: $80
	add  c                                           ; $5a2e: $81
	nop                                              ; $5a2f: $00
	nop                                              ; $5a30: $00
	ldh  a, [$81]                                    ; $5a31: $f0 $81
	nop                                              ; $5a33: $00
	ld   [bc], a                                     ; $5a34: $02
	ld   a, b                                        ; $5a35: $78
	nop                                              ; $5a36: $00
	adc  b                                           ; $5a37: $88
	add  c                                           ; $5a38: $81
	nop                                              ; $5a39: $00
	ld   a, [bc]                                     ; $5a3a: $0a
	rlca                                             ; $5a3b: $07
	nop                                              ; $5a3c: $00
	rra                                              ; $5a3d: $1f
	nop                                              ; $5a3e: $00
	jr   c, jr_033_5a41                              ; $5a3f: $38 $00

jr_033_5a41:
	ld   h, b                                        ; $5a41: $60
	nop                                              ; $5a42: $00
	stop                                             ; $5a43: $10 $00
	ldh  a, [$81]                                    ; $5a45: $f0 $81
	nop                                              ; $5a47: $00
	add  c                                           ; $5a48: $81
	ld   b, b                                        ; $5a49: $40
	inc  b                                           ; $5a4a: $04
	ld   b, c                                        ; $5a4b: $41
	ld   bc, $1b05                                   ; $5a4c: $01 $05 $1b
	ld   bc, $0980                                   ; $5a4f: $01 $80 $09
	add  b                                           ; $5a52: $80
	rrca                                             ; $5a53: $0f
	add  b                                           ; $5a54: $80
	rlca                                             ; $5a55: $07
	ld   c, $b0                                      ; $5a56: $0e $b0
	nop                                              ; $5a58: $00
	rrca                                             ; $5a59: $0f
	nop                                              ; $5a5a: $00
	ldh  [rP1], a                                    ; $5a5b: $e0 $00
	ld   hl, sp+$00                                  ; $5a5d: $f8 $00
	inc  e                                           ; $5a5f: $1c
	nop                                              ; $5a60: $00
	ld   b, $00                                      ; $5a61: $06 $00
	ld   [$0f00], sp                                 ; $5a63: $08 $00 $0f
	add  c                                           ; $5a66: $81
	nop                                              ; $5a67: $00
	add  c                                           ; $5a68: $81
	ld   [bc], a                                     ; $5a69: $02
	ld   b, $42                                      ; $5a6a: $06 $42
	ld   b, b                                        ; $5a6c: $40
	and  b                                           ; $5a6d: $a0
	sbc  b                                           ; $5a6e: $98
	add  b                                           ; $5a6f: $80
	ret  nc                                          ; $5a70: $d0

	sub  b                                           ; $5a71: $90
	add  b                                           ; $5a72: $80
	ldh  a, [$80]                                    ; $5a73: $f0 $80
	ldh  [rDIV], a                                   ; $5a75: $e0 $04
	dec  c                                           ; $5a77: $0d
	nop                                              ; $5a78: $00
	cp   a                                           ; $5a79: $bf
	inc  bc                                          ; $5a7a: $03
	jp   $0d80                                       ; $5a7b: $c3 $80 $0d


	nop                                              ; $5a7e: $00
	dec  bc                                          ; $5a7f: $0b
	add  b                                           ; $5a80: $80

Jump_033_5a81:
	inc  bc                                          ; $5a81: $03
	dec  bc                                          ; $5a82: $0b
	ld   [hl], h                                     ; $5a83: $74
	nop                                              ; $5a84: $00
	ld   h, b                                        ; $5a85: $60
	nop                                              ; $5a86: $00
	jr   jr_033_5a89                                 ; $5a87: $18 $00

jr_033_5a89:
	rst  $20                                         ; $5a89: $e7
	jr   nc, jr_033_5afc                             ; $5a8a: $30 $70

	rla                                              ; $5a8c: $17
	daa                                              ; $5a8d: $27
	rrca                                             ; $5a8e: $0f
	add  d                                           ; $5a8f: $82
	ld   c, $00                                      ; $5a90: $0e $00

jr_033_5a92:
	db   $10                                         ; $5a92: $10
	add  c                                           ; $5a93: $81
	nop                                              ; $5a94: $00
	add  b                                           ; $5a95: $80
	inc  e                                           ; $5a96: $1c
	inc  b                                           ; $5a97: $04
	rst  $38                                         ; $5a98: $ff
	nop                                              ; $5a99: $00
	dec  c                                           ; $5a9a: $0d
	ret  nz                                          ; $5a9b: $c0

	jp   $b080                                       ; $5a9c: $c3 $80 $b0


	nop                                              ; $5a9f: $00
	ret  nc                                          ; $5aa0: $d0

	add  b                                           ; $5aa1: $80
	ret  nz                                          ; $5aa2: $c0

	ld   [bc], a                                     ; $5aa3: $02
	ld   l, $00                                      ; $5aa4: $2e $00
	inc  bc                                          ; $5aa6: $03
	add  c                                           ; $5aa7: $81
	nop                                              ; $5aa8: $00
	ld   a, [bc]                                     ; $5aa9: $0a
	ld   hl, sp+$00                                  ; $5aaa: $f8 $00
	ld   [$60e8], sp                                 ; $5aac: $08 $e8 $60
	ld   l, b                                        ; $5aaf: $68
	db   $e4                                         ; $5ab0: $e4
	ldh  [$e8], a                                    ; $5ab1: $e0 $e8
	ldh  [rAUD1SWEEP], a                             ; $5ab3: $e0 $10
	add  c                                           ; $5ab5: $81
	nop                                              ; $5ab6: $00
	add  b                                           ; $5ab7: $80
	ld   [hl], b                                     ; $5ab8: $70
	rla                                              ; $5ab9: $17
	rst  $38                                         ; $5aba: $ff
	nop                                              ; $5abb: $00
	rst  $38                                         ; $5abc: $ff
	nop                                              ; $5abd: $00
	dec  c                                           ; $5abe: $0d
	nop                                              ; $5abf: $00
	rra                                              ; $5ac0: $1f
	nop                                              ; $5ac1: $00
	ld   [hl-], a                                    ; $5ac2: $32
	nop                                              ; $5ac3: $00
	ld   e, b                                        ; $5ac4: $58
	nop                                              ; $5ac5: $00
	inc  a                                           ; $5ac6: $3c
	nop                                              ; $5ac7: $00
	inc  b                                           ; $5ac8: $04
	nop                                              ; $5ac9: $00
	xor  $00                                         ; $5aca: $ee $00
	ld   b, b                                        ; $5acc: $40
	jr   nz, jr_033_5af6                             ; $5acd: $20 $27

	ld   h, $1e                                      ; $5acf: $26 $1e
	ld   c, $80                                      ; $5ad1: $0e $80

jr_033_5ad3:
	rrca                                             ; $5ad3: $0f
	ld   bc, $0747                                   ; $5ad4: $01 $47 $07
	add  b                                           ; $5ad7: $80
	ld   bc, $cf18                                   ; $5ad8: $01 $18 $cf
	rrca                                             ; $5adb: $0f
	ld   h, [hl]                                     ; $5adc: $66
	ld   b, $3f                                      ; $5add: $06 $3f
	nop                                              ; $5adf: $00
	ldh  [rP1], a                                    ; $5ae0: $e0 $00
	ldh  a, [rP1]                                    ; $5ae2: $f0 $00
	jr   jr_033_5ae6                                 ; $5ae4: $18 $00

jr_033_5ae6:
	inc  a                                           ; $5ae6: $3c
	nop                                              ; $5ae7: $00
	ld   a, $00                                      ; $5ae8: $3e $00
	ld   e, h                                        ; $5aea: $5c
	db   $10                                         ; $5aeb: $10
	dec  e                                           ; $5aec: $1d
	jr   jr_033_5b2b                                 ; $5aed: $18 $3c

	ld   e, h                                        ; $5aef: $5c
	ld   b, d                                        ; $5af0: $42
	ld   b, b                                        ; $5af1: $40
	add  h                                           ; $5af2: $84
	add  b                                           ; $5af3: $80
	add  b                                           ; $5af4: $80
	add  c                                           ; $5af5: $81

jr_033_5af6:
	nop                                              ; $5af6: $00
	add  hl, bc                                      ; $5af7: $09
	inc  bc                                          ; $5af8: $03
	nop                                              ; $5af9: $00
	ld   a, [bc]                                     ; $5afa: $0a
	nop                                              ; $5afb: $00

jr_033_5afc:
	db   $f4                                         ; $5afc: $f4
	and  b                                           ; $5afd: $a0
	call c, Call_033_6f00                            ; $5afe: $dc $00 $6f
	inc  b                                           ; $5b01: $04
	add  b                                           ; $5b02: $80
	ld   b, $08                                      ; $5b03: $06 $08
	add  hl, bc                                      ; $5b05: $09
	nop                                              ; $5b06: $00
	ld   h, [hl]                                     ; $5b07: $66
	nop                                              ; $5b08: $00
	ccf                                              ; $5b09: $3f
	nop                                              ; $5b0a: $00
	dec  d                                           ; $5b0b: $15
	nop                                              ; $5b0c: $00
	jr   jr_033_5a92                                 ; $5b0d: $18 $83

	nop                                              ; $5b0f: $00
	nop                                              ; $5b10: $00
	ld   [hl], $83                                   ; $5b11: $36 $83
	nop                                              ; $5b13: $00
	ld   a, [bc]                                     ; $5b14: $0a
	dec  de                                          ; $5b15: $1b
	nop                                              ; $5b16: $00
	ld   a, e                                        ; $5b17: $7b
	jr   c, @-$7b                                    ; $5b18: $38 $83

	nop                                              ; $5b1a: $00
	ei                                               ; $5b1b: $fb
	nop                                              ; $5b1c: $00
	and  $00                                         ; $5b1d: $e6 $00
	and  b                                           ; $5b1f: $a0
	add  c                                           ; $5b20: $81
	nop                                              ; $5b21: $00
	jr   @+$08                                       ; $5b22: $18 $06

	nop                                              ; $5b24: $00
	db   $fc                                         ; $5b25: $fc
	nop                                              ; $5b26: $00
	xor  b                                           ; $5b27: $a8
	nop                                              ; $5b28: $00
	jr   jr_033_5b2b                                 ; $5b29: $18 $00

jr_033_5b2b:
	ld   b, b                                        ; $5b2b: $40
	nop                                              ; $5b2c: $00
	inc  c                                           ; $5b2d: $0c
	nop                                              ; $5b2e: $00
	jr   nz, jr_033_5b31                             ; $5b2f: $20 $00

jr_033_5b31:
	ld   b, $00                                      ; $5b31: $06 $00
	stop                                             ; $5b33: $10 $00
	adc  h                                           ; $5b35: $8c
	nop                                              ; $5b36: $00
	call c, $c11c                                    ; $5b37: $dc $1c $c1
	nop                                              ; $5b3a: $00
	rst  $38                                         ; $5b3b: $ff
	add  d                                           ; $5b3c: $82
	nop                                              ; $5b3d: $00
	add  b                                           ; $5b3e: $80
	dec  c                                           ; $5b3f: $0d
	add  b                                           ; $5b40: $80
	rra                                              ; $5b41: $1f
	add  b                                           ; $5b42: $80
	rlca                                             ; $5b43: $07
	add  b                                           ; $5b44: $80
	dec  sp                                          ; $5b45: $3b
	add  b                                           ; $5b46: $80
	ccf                                              ; $5b47: $3f
	add  b                                           ; $5b48: $80
	ld   d, c                                        ; $5b49: $51
	add  b                                           ; $5b4a: $80
	ld   de, $1080                                   ; $5b4b: $11 $80 $10
	add  d                                           ; $5b4e: $82
	jr   nz, jr_033_5ad3                             ; $5b4f: $20 $82

	ld   h, b                                        ; $5b51: $60
	add  b                                           ; $5b52: $80
	jr   nz, @-$7a                                   ; $5b53: $20 $84

	nop                                              ; $5b55: $00
	add  b                                           ; $5b56: $80
	ldh  [$80], a                                    ; $5b57: $e0 $80
	ldh  a, [$80]                                    ; $5b59: $f0 $80
	ret  z                                           ; $5b5b: $c8

	add  b                                           ; $5b5c: $80
	db   $f4                                         ; $5b5d: $f4
	add  b                                           ; $5b5e: $80
	xor  b                                           ; $5b5f: $a8
	add  b                                           ; $5b60: $80
	and  h                                           ; $5b61: $a4
	add  b                                           ; $5b62: $80
	add  b                                           ; $5b63: $80
	add  b                                           ; $5b64: $80
	sbc  [hl]                                        ; $5b65: $9e
	add  h                                           ; $5b66: $84
	ld   e, d                                        ; $5b67: $5a
	add  b                                           ; $5b68: $80
	ld   e, b                                        ; $5b69: $58
	add  b                                           ; $5b6a: $80
	ld   d, b                                        ; $5b6b: $50
	inc  bc                                          ; $5b6c: $03
	nop                                              ; $5b6d: $00
	dec  de                                          ; $5b6e: $1b
	nop                                              ; $5b6f: $00
	dec  hl                                          ; $5b70: $2b
	add  c                                           ; $5b71: $81
	nop                                              ; $5b72: $00
	ld   [$0009], sp                                 ; $5b73: $08 $09 $00
	ld   h, $00                                      ; $5b76: $26 $00
	rra                                              ; $5b78: $1f
	nop                                              ; $5b79: $00
	dec  b                                           ; $5b7a: $05
	nop                                              ; $5b7b: $00
	ld   [$0083], sp                                 ; $5b7c: $08 $83 $00
	nop                                              ; $5b7f: $00
	ld   d, $83                                      ; $5b80: $16 $83
	nop                                              ; $5b82: $00
	nop                                              ; $5b83: $00
	dec  de                                          ; $5b84: $1b
	add  e                                           ; $5b85: $83
	nop                                              ; $5b86: $00
	inc  b                                           ; $5b87: $04
	ld   hl, sp+$00                                  ; $5b88: $f8 $00
	db   $e4                                         ; $5b8a: $e4
	nop                                              ; $5b8b: $00
	and  b                                           ; $5b8c: $a0
	add  c                                           ; $5b8d: $81
	nop                                              ; $5b8e: $00
	ld   [de], a                                     ; $5b8f: $12
	inc  b                                           ; $5b90: $04
	nop                                              ; $5b91: $00
	ld   hl, sp+$00                                  ; $5b92: $f8 $00
	and  b                                           ; $5b94: $a0
	nop                                              ; $5b95: $00
	stop                                             ; $5b96: $10 $00
	ld   b, b                                        ; $5b98: $40
	nop                                              ; $5b99: $00
	ld   [rROMB0], sp                                 ; $5b9a: $08 $00 $20
	nop                                              ; $5b9d: $00
	inc  b                                           ; $5b9e: $04
	nop                                              ; $5b9f: $00
	stop                                             ; $5ba0: $10 $00
	adc  h                                           ; $5ba2: $8c
	add  e                                           ; $5ba3: $83
	nop                                              ; $5ba4: $00
	ld   de, $0007                                   ; $5ba5: $11 $07 $00
	dec  e                                           ; $5ba8: $1d
	nop                                              ; $5ba9: $00
	ld   a, $00                                      ; $5baa: $3e $00
	inc  b                                           ; $5bac: $04
	nop                                              ; $5bad: $00
	ld   h, b                                        ; $5bae: $60
	nop                                              ; $5baf: $00
	ld   a, [hl+]                                    ; $5bb0: $2a
	nop                                              ; $5bb1: $00
	call nz, $4700                                   ; $5bb2: $c4 $00 $47
	ld   h, $3e                                      ; $5bb5: $26 $3e
	ld   l, $80                                      ; $5bb7: $2e $80
	rrca                                             ; $5bb9: $0f
	add  b                                           ; $5bba: $80
	ld   bc, $4107                                   ; $5bbb: $01 $07 $41
	dec  c                                           ; $5bbe: $0d
	ld   c, e                                        ; $5bbf: $4b
	add  hl, bc                                      ; $5bc0: $09
	and  b                                           ; $5bc1: $a0
	ld   c, $67                                      ; $5bc2: $0e $67
	rlca                                             ; $5bc4: $07
	add  b                                           ; $5bc5: $80
	nop                                              ; $5bc6: $00
	ld   c, $ff                                      ; $5bc7: $0e $ff
	nop                                              ; $5bc9: $00
	ldh  a, [rP1]                                    ; $5bca: $f0 $00
	jr   jr_033_5bce                                 ; $5bcc: $18 $00

jr_033_5bce:
	inc  a                                           ; $5bce: $3c
	nop                                              ; $5bcf: $00
	cp   b                                           ; $5bd0: $b8
	nop                                              ; $5bd1: $00
	jp   nc, $391c                                   ; $5bd2: $d2 $1c $39

	jr   c, jr_033_5c09                              ; $5bd5: $38 $32

	add  c                                           ; $5bd7: $81
	ld   d, b                                        ; $5bd8: $50
	nop                                              ; $5bd9: $00
	add  h                                           ; $5bda: $84
	add  e                                           ; $5bdb: $83
	nop                                              ; $5bdc: $00
	dec  b                                           ; $5bdd: $05
	rrca                                             ; $5bde: $0f
	nop                                              ; $5bdf: $00
	or   $a0                                         ; $5be0: $f6 $a0
	db   $e4                                         ; $5be2: $e4
	ldh  [$80], a                                    ; $5be3: $e0 $80
	nop                                              ; $5be5: $00
	nop                                              ; $5be6: $00
	ld   hl, sp-$80                                  ; $5be7: $f8 $80
	nop                                              ; $5be9: $00
	add  b                                           ; $5bea: $80
	dec  b                                           ; $5beb: $05
	add  b                                           ; $5bec: $80
	dec  de                                          ; $5bed: $1b
	add  b                                           ; $5bee: $80
	rra                                              ; $5bef: $1f
	add  b                                           ; $5bf0: $80
	ccf                                              ; $5bf1: $3f
	add  b                                           ; $5bf2: $80
	dec  d                                           ; $5bf3: $15
	add  b                                           ; $5bf4: $80
	ld   d, c                                        ; $5bf5: $51
	add  b                                           ; $5bf6: $80
	db   $10                                         ; $5bf7: $10
	add  b                                           ; $5bf8: $80
	nop                                              ; $5bf9: $00
	add  d                                           ; $5bfa: $82
	jr   nz, @+$05                                   ; $5bfb: $20 $03

	ld   h, b                                        ; $5bfd: $60

jr_033_5bfe:
	ld   h, [hl]                                     ; $5bfe: $66
	ld   h, $20                                      ; $5bff: $26 $20
	add  [hl]                                        ; $5c01: $86
	nop                                              ; $5c02: $00
	add  b                                           ; $5c03: $80
	ldh  [$80], a                                    ; $5c04: $e0 $80
	ldh  a, [$80]                                    ; $5c06: $f0 $80
	ret  z                                           ; $5c08: $c8

jr_033_5c09:
	add  b                                           ; $5c09: $80
	ld   [hl], b                                     ; $5c0a: $70
	add  b                                           ; $5c0b: $80
	and  b                                           ; $5c0c: $a0
	add  b                                           ; $5c0d: $80
	add  h                                           ; $5c0e: $84
	add  d                                           ; $5c0f: $82
	adc  [hl]                                        ; $5c10: $8e
	add  h                                           ; $5c11: $84
	ld   e, d                                        ; $5c12: $5a
	add  b                                           ; $5c13: $80
	ld   d, h                                        ; $5c14: $54
	add  [hl]                                        ; $5c15: $86
	nop                                              ; $5c16: $00
	add  b                                           ; $5c17: $80
	rlca                                             ; $5c18: $07
	add  b                                           ; $5c19: $80
	ld   [hl], $80                                   ; $5c1a: $36 $80
	ccf                                              ; $5c1c: $3f
	add  b                                           ; $5c1d: $80
	ld   e, l                                        ; $5c1e: $5d
	add  b                                           ; $5c1f: $80
	ld   [hl], h                                     ; $5c20: $74
	add  b                                           ; $5c21: $80
	adc  b                                           ; $5c22: $88
	add  d                                           ; $5c23: $82
	jr   z, @-$7e                                    ; $5c24: $28 $80

	call nz, Call_033_4080                           ; $5c26: $c4 $80 $40
	add  b                                           ; $5c29: $80
	ld   [$0088], sp                                 ; $5c2a: $08 $88 $00
	add  b                                           ; $5c2d: $80
	ldh  [$80], a                                    ; $5c2e: $e0 $80
	ld   h, b                                        ; $5c30: $60
	add  b                                           ; $5c31: $80
	or   b                                           ; $5c32: $b0
	add  b                                           ; $5c33: $80
	add  b                                           ; $5c34: $80
	add  b                                           ; $5c35: $80
	call z, $0c82                                    ; $5c36: $cc $82 $0c
	add  b                                           ; $5c39: $80
	ld   l, $80                                      ; $5c3a: $2e $80
	inc  d                                           ; $5c3c: $14
	add  b                                           ; $5c3d: $80
	add  b                                           ; $5c3e: $80
	add  b                                           ; $5c3f: $80
	call nz, $0880                                   ; $5c40: $c4 $80 $08
	add  e                                           ; $5c43: $83
	nop                                              ; $5c44: $00
	ld   c, $38                                      ; $5c45: $0e $38
	db   $10                                         ; $5c47: $10
	ld   de, $5016                                   ; $5c48: $11 $16 $50
	add  hl, de                                      ; $5c4b: $19
	reti                                             ; $5c4c: $d9


	dec  de                                          ; $5c4d: $1b
	dec  sp                                          ; $5c4e: $3b
	rlca                                             ; $5c4f: $07
	rst  $20                                         ; $5c50: $e7
	nop                                              ; $5c51: $00
	ld   h, b                                        ; $5c52: $60
	ld   [$8028], sp                                 ; $5c53: $08 $28 $80
	ld   a, [de]                                     ; $5c56: $1a
	dec  b                                           ; $5c57: $05
	nop                                              ; $5c58: $00
	jr   c, @+$1a                                    ; $5c59: $38 $18

	jr   nc, @+$12                                   ; $5c5b: $30 $10

	inc  bc                                          ; $5c5d: $03
	add  c                                           ; $5c5e: $81
	nop                                              ; $5c5f: $00
	add  b                                           ; $5c60: $80
	inc  a                                           ; $5c61: $3c
	ld   b, $48                                      ; $5c62: $06 $48
	ld   [$0083], sp                                 ; $5c64: $08 $83 $00
	inc  bc                                          ; $5c67: $03
	ld   [$8038], sp                                 ; $5c68: $08 $38 $80
	nop                                              ; $5c6b: $00
	ld   bc, $b080                                   ; $5c6c: $01 $80 $b0
	add  b                                           ; $5c6f: $80
	adc  b                                           ; $5c70: $88
	ld   [$bcb8], sp                                 ; $5c71: $08 $b8 $bc
	nop                                              ; $5c74: $00
	ld   [$6860], sp                                 ; $5c75: $08 $60 $68
	or   b                                           ; $5c78: $b0
	cp   b                                           ; $5c79: $b8
	nop                                              ; $5c7a: $00
	add  b                                           ; $5c7b: $80
	jr   nz, jr_033_5bfe                             ; $5c7c: $20 $80

	ld   [hl], b                                     ; $5c7e: $70
	add  b                                           ; $5c7f: $80
	db   $10                                         ; $5c80: $10
	inc  bc                                          ; $5c81: $03
	ld   [$b800], sp                                 ; $5c82: $08 $00 $b8
	jr   c, @-$7e                                    ; $5c85: $38 $80

	ld   b, b                                        ; $5c87: $40
	rra                                              ; $5c88: $1f
	add  a                                           ; $5c89: $87
	nop                                              ; $5c8a: $00
	ld   hl, sp+$00                                  ; $5c8b: $f8 $00
	ccf                                              ; $5c8d: $3f
	nop                                              ; $5c8e: $00
	ld   [hl], c                                     ; $5c8f: $71
	nop                                              ; $5c90: $00
	add  hl, bc                                      ; $5c91: $09
	nop                                              ; $5c92: $00
	ldh  [c], a                                      ; $5c93: $e2
	nop                                              ; $5c94: $00
	add  hl, hl                                      ; $5c95: $29
	nop                                              ; $5c96: $00
	db   $fc                                         ; $5c97: $fc

jr_033_5c98:
	ld   h, $86                                      ; $5c98: $26 $86
	ld   b, a                                        ; $5c9a: $47
	ld   b, b                                        ; $5c9b: $40
	ld   b, a                                        ; $5c9c: $47
	xor  [hl]                                        ; $5c9d: $ae
	ld   [bc], a                                     ; $5c9e: $02

jr_033_5c9f:
	add  d                                           ; $5c9f: $82
	rla                                              ; $5ca0: $17
	ld   c, a                                        ; $5ca1: $4f
	rla                                              ; $5ca2: $17
	sub  [hl]                                        ; $5ca3: $96
	rra                                              ; $5ca4: $1f
	cpl                                              ; $5ca5: $2f
	rrca                                             ; $5ca6: $0f
	ld   b, b                                        ; $5ca7: $40
	nop                                              ; $5ca8: $00
	add  b                                           ; $5ca9: $80
	dec  bc                                          ; $5caa: $0b
	rlca                                             ; $5cab: $07
	rst  $38                                         ; $5cac: $ff
	nop                                              ; $5cad: $00
	ldh  a, [rP1]                                    ; $5cae: $f0 $00
	adc  b                                           ; $5cb0: $88
	db   $10                                         ; $5cb1: $10
	call nz, $8008                                   ; $5cb2: $c4 $08 $80
	jr   c, jr_033_5cb8                              ; $5cb5: $38 $01

	halt                                             ; $5cb7: $76

jr_033_5cb8:
	db   $10                                         ; $5cb8: $10

jr_033_5cb9:
	add  c                                           ; $5cb9: $81
	ret  nc                                          ; $5cba: $d0

	ld   de, $4360                                   ; $5cbb: $11 $60 $43
	nop                                              ; $5cbe: $00
	ld   a, [hl-]                                    ; $5cbf: $3a
	ld   b, b                                        ; $5cc0: $40
	db   $dd                                         ; $5cc1: $dd
	jr   z, @+$4e                                    ; $5cc2: $28 $4c

	jr   z, @+$30                                    ; $5cc4: $28 $2e

	ldh  [$cc], a                                    ; $5cc6: $e0 $cc
	ret  nz                                          ; $5cc8: $c0

	ld   [$b800], sp                                 ; $5cc9: $08 $00 $b8
	or   b                                           ; $5ccc: $b0
	ld   hl, sp-$80                                  ; $5ccd: $f8 $80
	rlca                                             ; $5ccf: $07
	add  d                                           ; $5cd0: $82
	nop                                              ; $5cd1: $00
	add  b                                           ; $5cd2: $80
	ld   b, b                                        ; $5cd3: $40
	add  b                                           ; $5cd4: $80
	ld   h, b                                        ; $5cd5: $60
	sub  [hl]                                        ; $5cd6: $96
	nop                                              ; $5cd7: $00
	add  d                                           ; $5cd8: $82
	jr   nc, @-$67                                   ; $5cd9: $30 $97

	nop                                              ; $5cdb: $00
	db   $10                                         ; $5cdc: $10
	inc  e                                           ; $5cdd: $1c
	ld   [$102c], sp                                 ; $5cde: $08 $2c $10
	ld   de, $5016                                   ; $5ce1: $11 $16 $50
	add  hl, de                                      ; $5ce4: $19
	reti                                             ; $5ce5: $d9


	dec  de                                          ; $5ce6: $1b
	dec  sp                                          ; $5ce7: $3b
	rlca                                             ; $5ce8: $07
	rst  $20                                         ; $5ce9: $e7
	nop                                              ; $5cea: $00
	ld   h, b                                        ; $5ceb: $60
	ld   [$8028], sp                                 ; $5cec: $08 $28 $80
	ld   a, [de]                                     ; $5cef: $1a
	inc  b                                           ; $5cf0: $04
	nop                                              ; $5cf1: $00
	ld   [hl-], a                                    ; $5cf2: $32
	jr   nc, jr_033_5d16                             ; $5cf3: $30 $21

	jr   nz, @-$7e                                   ; $5cf5: $20 $80

	nop                                              ; $5cf7: $00
	add  b                                           ; $5cf8: $80
	inc  a                                           ; $5cf9: $3c
	ld   [$0848], sp                                 ; $5cfa: $08 $48 $08
	add  e                                           ; $5cfd: $83
	nop                                              ; $5cfe: $00
	add  a                                           ; $5cff: $87
	jr   nc, @-$4a                                   ; $5d00: $30 $b4

	ld   [$8038], sp                                 ; $5d02: $08 $38 $80
	nop                                              ; $5d05: $00
	ld   bc, $b080                                   ; $5d06: $01 $80 $b0
	add  b                                           ; $5d09: $80
	adc  b                                           ; $5d0a: $88
	ld   [$bcb8], sp                                 ; $5d0b: $08 $b8 $bc
	nop                                              ; $5d0e: $00
	ld   [$6860], sp                                 ; $5d0f: $08 $60 $68
	or   b                                           ; $5d12: $b0
	cp   b                                           ; $5d13: $b8
	nop                                              ; $5d14: $00
	add  b                                           ; $5d15: $80

jr_033_5d16:
	jr   nz, jr_033_5c98                             ; $5d16: $20 $80

	ld   [hl], b                                     ; $5d18: $70
	inc  bc                                          ; $5d19: $03
	ld   [$b800], sp                                 ; $5d1a: $08 $00 $b8
	jr   c, jr_033_5c9f                              ; $5d1d: $38 $80

	ld   b, b                                        ; $5d1f: $40
	ld   [bc], a                                     ; $5d20: $02
	add  a                                           ; $5d21: $87
	nop                                              ; $5d22: $00
	rst  $38                                         ; $5d23: $ff
	add  b                                           ; $5d24: $80
	nop                                              ; $5d25: $00
	add  b                                           ; $5d26: $80
	rlca                                             ; $5d27: $07
	add  b                                           ; $5d28: $80
	ld   b, $80                                      ; $5d29: $06 $80
	dec  c                                           ; $5d2b: $0d
	add  b                                           ; $5d2c: $80
	ld   bc, $3380                                   ; $5d2d: $01 $80 $33
	add  b                                           ; $5d30: $80
	dec  [hl]                                        ; $5d31: $35
	add  b                                           ; $5d32: $80
	ld   h, d                                        ; $5d33: $62
	add  b                                           ; $5d34: $80
	ld   c, h                                        ; $5d35: $4c
	add  b                                           ; $5d36: $80
	jr   z, jr_033_5cb9                              ; $5d37: $28 $80

	add  hl, hl                                      ; $5d39: $29
	add  b                                           ; $5d3a: $80
	inc  bc                                          ; $5d3b: $03
	add  b                                           ; $5d3c: $80
	db   $10                                         ; $5d3d: $10
	add  [hl]                                        ; $5d3e: $86
	nop                                              ; $5d3f: $00
	add  b                                           ; $5d40: $80
	ldh  [$80], a                                    ; $5d41: $e0 $80
	ld   l, h                                        ; $5d43: $6c
	add  b                                           ; $5d44: $80
	db   $fc                                         ; $5d45: $fc
	add  b                                           ; $5d46: $80
	cp   d                                           ; $5d47: $ba
	add  b                                           ; $5d48: $80
	ld   l, $80                                      ; $5d49: $2e $80
	ld   b, c                                        ; $5d4b: $41
	add  d                                           ; $5d4c: $82
	ld   b, h                                        ; $5d4d: $44
	add  b                                           ; $5d4e: $80
	ld   [hl+], a                                    ; $5d4f: $22
	add  b                                           ; $5d50: $80
	ld   [bc], a                                     ; $5d51: $02
	add  b                                           ; $5d52: $80
	db   $10                                         ; $5d53: $10
	add  l                                           ; $5d54: $85
	nop                                              ; $5d55: $00
	db   $10                                         ; $5d56: $10
	cp   $1d                                         ; $5d57: $fe $1d
	ld   a, h                                        ; $5d59: $7c
	inc  c                                           ; $5d5a: $0c
	ld   [$ee0c], sp                                 ; $5d5b: $08 $0c $ee
	ld   c, $00                                      ; $5d5e: $0e $00
	jr   c, jr_033_5dd2                              ; $5d60: $38 $70

	nop                                              ; $5d62: $00
	jr   nc, jr_033_5d65                             ; $5d63: $30 $00

jr_033_5d65:
	ld   [$0400], sp                                 ; $5d65: $08 $00 $04
	add  a                                           ; $5d68: $87
	nop                                              ; $5d69: $00
	add  b                                           ; $5d6a: $80
	inc  bc                                          ; $5d6b: $03
	add  b                                           ; $5d6c: $80
	ld   bc, $fc03                                   ; $5d6d: $01 $03 $fc
	nop                                              ; $5d70: $00
	inc  hl                                          ; $5d71: $23
	jr   z, @-$7e                                    ; $5d72: $28 $80

jr_033_5d74:
	ret  z                                           ; $5d74: $c8

	nop                                              ; $5d75: $00
	ld   a, [bc]                                     ; $5d76: $0a
	add  b                                           ; $5d77: $80
	inc  c                                           ; $5d78: $0c
	dec  bc                                          ; $5d79: $0b
	inc  e                                           ; $5d7a: $1c
	ld   e, $08                                      ; $5d7b: $1e $08
	inc  c                                           ; $5d7d: $0c
	jr   nc, jr_033_5db4                             ; $5d7e: $30 $34

	jr   @+$1e                                       ; $5d80: $18 $1c

	nop                                              ; $5d82: $00
	jr   jr_033_5d85                                 ; $5d83: $18 $00

jr_033_5d85:
	ld   h, b                                        ; $5d85: $60
	add  e                                           ; $5d86: $83
	ld   b, b                                        ; $5d87: $40
	add  b                                           ; $5d88: $80
	nop                                              ; $5d89: $00
	add  b                                           ; $5d8a: $80
	ret  nz                                          ; $5d8b: $c0

	ld   a, [de]                                     ; $5d8c: $1a
	jr   nz, jr_033_5d8f                             ; $5d8d: $20 $00

jr_033_5d8f:
	rra                                              ; $5d8f: $1f
	nop                                              ; $5d90: $00
	ld   hl, sp+$00                                  ; $5d91: $f8 $00
	rrca                                             ; $5d93: $0f
	nop                                              ; $5d94: $00
	ld   de, $2308                                   ; $5d95: $11 $08 $23
	db   $10                                         ; $5d98: $10
	inc  e                                           ; $5d99: $1c
	jr   jr_033_5e06                                 ; $5d9a: $18 $6a

	ld   [$020e], sp                                 ; $5d9c: $08 $0e $02
	push de                                          ; $5d9f: $d5
	inc  b                                           ; $5da0: $04
	ld   a, [hl+]                                    ; $5da1: $2a
	nop                                              ; $5da2: $00
	ld   h, h                                        ; $5da3: $64
	ld   [bc], a                                     ; $5da4: $02
	add  e                                           ; $5da5: $83
	inc  b                                           ; $5da6: $04
	ld   a, d                                        ; $5da7: $7a
	add  b                                           ; $5da8: $80
	inc  d                                           ; $5da9: $14
	ld   [bc], a                                     ; $5daa: $02
	rlca                                             ; $5dab: $07
	ld   [hl-], a                                    ; $5dac: $32
	ld   [bc], a                                     ; $5dad: $02
	add  b                                           ; $5dae: $80
	nop                                              ; $5daf: $00
	inc  d                                           ; $5db0: $14
	inc  a                                           ; $5db1: $3c
	inc  e                                           ; $5db2: $1c
	rst  JumpTable                                         ; $5db3: $df

jr_033_5db4:
	nop                                              ; $5db4: $00
	db   $fc                                         ; $5db5: $fc
	nop                                              ; $5db6: $00
	adc  [hl]                                        ; $5db7: $8e
	nop                                              ; $5db8: $00
	sub  b                                           ; $5db9: $90
	nop                                              ; $5dba: $00
	ld   b, a                                        ; $5dbb: $47
	nop                                              ; $5dbc: $00
	sub  h                                           ; $5dbd: $94
	nop                                              ; $5dbe: $00
	ld   l, a                                        ; $5dbf: $6f
	inc  [hl]                                        ; $5dc0: $34
	ld   sp, $02b2                                   ; $5dc1: $31 $b2 $02
	or   d                                           ; $5dc4: $b2
	inc  h                                           ; $5dc5: $24
	add  b                                           ; $5dc6: $80
	ld   b, b                                        ; $5dc7: $40
	ld   b, $e8                                      ; $5dc8: $06 $e8
	di                                               ; $5dca: $f3
	add  sp, $6a                                     ; $5dcb: $e8 $6a
	ld   hl, sp+$14                                  ; $5dcd: $f8 $14
	db   $10                                         ; $5dcf: $10
	add  b                                           ; $5dd0: $80
	nop                                              ; $5dd1: $00

jr_033_5dd2:
	jr   @+$0a                                       ; $5dd2: $18 $08

	nop                                              ; $5dd4: $00
	ldh  a, [rP1]                                    ; $5dd5: $f0 $00
	inc  e                                           ; $5dd7: $1c
	nop                                              ; $5dd8: $00
	ld   [de], a                                     ; $5dd9: $12
	nop                                              ; $5dda: $00
	stop                                             ; $5ddb: $10 $00
	ld   b, c                                        ; $5ddd: $41
	nop                                              ; $5dde: $00
	ld   a, [de]                                     ; $5ddf: $1a
	nop                                              ; $5de0: $00
	ld   e, h                                        ; $5de1: $5c
	nop                                              ; $5de2: $00
	jr   nz, jr_033_5de5                             ; $5de3: $20 $00

jr_033_5de5:
	ld   e, b                                        ; $5de5: $58
	nop                                              ; $5de6: $00
	ld   bc, $2000                                   ; $5de7: $01 $00 $20
	nop                                              ; $5dea: $00
	ld   b, b                                        ; $5deb: $40
	add  l                                           ; $5dec: $85

Call_033_5ded:
	nop                                              ; $5ded: $00
	ld   [bc], a                                     ; $5dee: $02
	jr   nz, jr_033_5df1                             ; $5def: $20 $00

jr_033_5df1:
	jr   nz, jr_033_5d74                             ; $5df1: $20 $81

	nop                                              ; $5df3: $00
	ld   [de], a                                     ; $5df4: $12
	ld   [hl], b                                     ; $5df5: $70
	nop                                              ; $5df6: $00
	adc  b                                           ; $5df7: $88
	nop                                              ; $5df8: $00
	inc  b                                           ; $5df9: $04
	nop                                              ; $5dfa: $00
	or   b                                           ; $5dfb: $b0
	nop                                              ; $5dfc: $00
	ld   l, d                                        ; $5dfd: $6a
	nop                                              ; $5dfe: $00
	jr   c, jr_033_5e01                              ; $5dff: $38 $00

jr_033_5e01:
	stop                                             ; $5e01: $10 $00
	ld   [$0400], sp                                 ; $5e03: $08 $00 $04

jr_033_5e06:
	nop                                              ; $5e06: $00
	ld   [bc], a                                     ; $5e07: $02
	add  c                                           ; $5e08: $81
	nop                                              ; $5e09: $00
	rlca                                             ; $5e0a: $07
	inc  b                                           ; $5e0b: $04
	nop                                              ; $5e0c: $00
	ld   [$0e00], sp                                 ; $5e0d: $08 $00 $0e
	inc  b                                           ; $5e10: $04
	ld   [de], a                                     ; $5e11: $12
	inc  d                                           ; $5e12: $14
	add  b                                           ; $5e13: $80
	inc  [hl]                                        ; $5e14: $34
	add  b                                           ; $5e15: $80
	ld   a, [hl+]                                    ; $5e16: $2a
	add  b                                           ; $5e17: $80
	ld   l, l                                        ; $5e18: $6d
	add  b                                           ; $5e19: $80
	ld   l, [hl]                                     ; $5e1a: $6e
	add  d                                           ; $5e1b: $82

Call_033_5e1c:
jr_033_5e1c:
	dec  c                                           ; $5e1c: $0d
	add  b                                           ; $5e1d: $80
	nop                                              ; $5e1e: $00
	add  d                                           ; $5e1f: $82
	dec  c                                           ; $5e20: $0d
	add  b                                           ; $5e21: $80
	ld   c, $81                                      ; $5e22: $0e $81
	nop                                              ; $5e24: $00
	ld   a, [bc]                                     ; $5e25: $0a
	ld   c, $00                                      ; $5e26: $0e $00
	ld   c, $06                                      ; $5e28: $0e $06
	ld   e, $18                                      ; $5e2a: $1e $18
	nop                                              ; $5e2c: $00
	ld   a, [hl+]                                    ; $5e2d: $2a
	jr   z, jr_033_5e9e                              ; $5e2e: $28 $6e

	ld   l, h                                        ; $5e30: $6c
	add  b                                           ; $5e31: $80
	sbc  h                                           ; $5e32: $9c
	add  b                                           ; $5e33: $80
	ld   l, [hl]                                     ; $5e34: $6e
	add  b                                           ; $5e35: $80
	and  $80                                         ; $5e36: $e6 $80
	ldh  [$80], a                                    ; $5e38: $e0 $80
	ret  nz                                          ; $5e3a: $c0

	add  b                                           ; $5e3b: $80
	nop                                              ; $5e3c: $00
	add  b                                           ; $5e3d: $80
	ldh  [$82], a                                    ; $5e3e: $e0 $82
	ldh  a, [$81]                                    ; $5e40: $f0 $81
	nop                                              ; $5e42: $00
	ld   [hl+], a                                    ; $5e43: $22
	ld   [hl], b                                     ; $5e44: $70
	nop                                              ; $5e45: $00
	ld   [hl], b                                     ; $5e46: $70
	jr   nc, @-$0e                                   ; $5e47: $30 $f0

	ret  nz                                          ; $5e49: $c0

	nop                                              ; $5e4a: $00
	inc  a                                           ; $5e4b: $3c
	nop                                              ; $5e4c: $00
	ld   e, a                                        ; $5e4d: $5f
	nop                                              ; $5e4e: $00
	ld   d, d                                        ; $5e4f: $52
	nop                                              ; $5e50: $00
	ld   d, b                                        ; $5e51: $50
	nop                                              ; $5e52: $00
	pop  bc                                          ; $5e53: $c1
	jr   nz, @+$3c                                   ; $5e54: $20 $3a

	ld   [$0054], sp                                 ; $5e56: $08 $54 $00
	inc  h                                           ; $5e59: $24
	inc  b                                           ; $5e5a: $04
	ld   e, h                                        ; $5e5b: $5c
	inc  b                                           ; $5e5c: $04
	ld   bc, $2808                                   ; $5e5d: $01 $08 $28
	inc  e                                           ; $5e60: $1c
	call c, Call_033_5e1c                            ; $5e61: $dc $1c $5e
	ld   a, [bc]                                     ; $5e64: $0a
	dec  bc                                          ; $5e65: $0b
	inc  bc                                          ; $5e66: $03
	add  b                                           ; $5e67: $80
	rrca                                             ; $5e68: $0f
	dec  bc                                          ; $5e69: $0b
	ld   h, b                                        ; $5e6a: $60
	nop                                              ; $5e6b: $00
	ld   e, a                                        ; $5e6c: $5f
	nop                                              ; $5e6d: $00
	ldh  a, [rP1]                                    ; $5e6e: $f0 $00
	ld   a, b                                        ; $5e70: $78
	nop                                              ; $5e71: $00
	adc  h                                           ; $5e72: $8c
	nop                                              ; $5e73: $00
	ld   b, $00                                      ; $5e74: $06 $00
	add  b                                           ; $5e76: $80
	or   b                                           ; $5e77: $b0
	ld   a, [bc]                                     ; $5e78: $0a
	db   $db                                         ; $5e79: $db
	jr   jr_033_5e1c                                 ; $5e7a: $18 $a0

	add  b                                           ; $5e7c: $80
	stop                                             ; $5e7d: $10 $00
	ld   [$6460], sp                                 ; $5e7f: $08 $60 $64
	ldh  a, [$f6]                                    ; $5e82: $f0 $f6
	add  b                                           ; $5e84: $80
	db   $f4                                         ; $5e85: $f4
	rla                                              ; $5e86: $17
	ld   h, h                                        ; $5e87: $64
	ld   [hl], l                                     ; $5e88: $75
	db   $10                                         ; $5e89: $10
	add  sp, -$20                                    ; $5e8a: $e8 $e0
	dec  bc                                          ; $5e8c: $0b
	nop                                              ; $5e8d: $00
	sub  e                                           ; $5e8e: $93
	ld   bc, $0020                                   ; $5e8f: $01 $20 $00
	ld   e, $00                                      ; $5e92: $1e $00
	rst  ToBoot                                         ; $5e94: $c7
	nop                                              ; $5e95: $00
	inc  bc                                          ; $5e96: $03
	nop                                              ; $5e97: $00
	db   $e3                                         ; $5e98: $e3
	jr   nz, jr_033_5efb                             ; $5e99: $20 $60

	nop                                              ; $5e9b: $00
	dec  l                                           ; $5e9c: $2d
	nop                                              ; $5e9d: $00

jr_033_5e9e:
	dec  c                                           ; $5e9e: $0d
	add  c                                           ; $5e9f: $81
	nop                                              ; $5ea0: $00
	ld   e, $03                                      ; $5ea1: $1e $03
	nop                                              ; $5ea3: $00
	ld   c, $00                                      ; $5ea4: $0e $00
	ld   c, $00                                      ; $5ea6: $0e $00
	jr   nz, jr_033_5eaa                             ; $5ea8: $20 $00

jr_033_5eaa:
	stop                                             ; $5eaa: $10 $00
	sbc  $00                                         ; $5eac: $de $00
	xor  d                                           ; $5eae: $aa
	add  b                                           ; $5eaf: $80
	ld   b, [hl]                                     ; $5eb0: $46
	nop                                              ; $5eb1: $00
	pop  af                                          ; $5eb2: $f1
	nop                                              ; $5eb3: $00
	di                                               ; $5eb4: $f3
	nop                                              ; $5eb5: $00
	adc  b                                           ; $5eb6: $88
	nop                                              ; $5eb7: $00
	rlca                                             ; $5eb8: $07
	inc  c                                           ; $5eb9: $0c
	inc  a                                           ; $5eba: $3c
	inc  d                                           ; $5ebb: $14
	sbc  $18                                         ; $5ebc: $de $18
	db   $e4                                         ; $5ebe: $e4
	nop                                              ; $5ebf: $00
	db   $10                                         ; $5ec0: $10
	add  c                                           ; $5ec1: $81
	nop                                              ; $5ec2: $00
	ld   [bc], a                                     ; $5ec3: $02
	ldh  a, [rP1]                                    ; $5ec4: $f0 $00
	ld   [hl], b                                     ; $5ec6: $70
	add  c                                           ; $5ec7: $81
	nop                                              ; $5ec8: $00
	inc  d                                           ; $5ec9: $14
	add  b                                           ; $5eca: $80
	nop                                              ; $5ecb: $00
	rst  $30                                         ; $5ecc: $f7
	nop                                              ; $5ecd: $00
	rst  $38                                         ; $5ece: $ff
	nop                                              ; $5ecf: $00
	inc  e                                           ; $5ed0: $1c
	nop                                              ; $5ed1: $00
	ld   [de], a                                     ; $5ed2: $12
	nop                                              ; $5ed3: $00
	stop                                             ; $5ed4: $10 $00
	ld   b, c                                        ; $5ed6: $41
	nop                                              ; $5ed7: $00
	ld   a, [de]                                     ; $5ed8: $1a
	nop                                              ; $5ed9: $00
	ld   e, b                                        ; $5eda: $58
	nop                                              ; $5edb: $00
	dec  h                                           ; $5edc: $25
	nop                                              ; $5edd: $00
	ld   e, b                                        ; $5ede: $58
	add  c                                           ; $5edf: $81
	nop                                              ; $5ee0: $00
	ld   [bc], a                                     ; $5ee1: $02
	jr   nz, jr_033_5ee4                             ; $5ee2: $20 $00

jr_033_5ee4:
	ld   b, b                                        ; $5ee4: $40
	adc  e                                           ; $5ee5: $8b
	nop                                              ; $5ee6: $00
	db   $10                                         ; $5ee7: $10
	ld   [hl], b                                     ; $5ee8: $70
	nop                                              ; $5ee9: $00
	adc  b                                           ; $5eea: $88
	nop                                              ; $5eeb: $00
	inc  b                                           ; $5eec: $04
	nop                                              ; $5eed: $00
	or   b                                           ; $5eee: $b0
	nop                                              ; $5eef: $00
	jp   z, $1800                                    ; $5ef0: $ca $00 $18

	nop                                              ; $5ef3: $00
	sub  b                                           ; $5ef4: $90
	nop                                              ; $5ef5: $00
	ld   [$0600], sp                                 ; $5ef6: $08 $00 $06
	add  e                                           ; $5ef9: $83
	nop                                              ; $5efa: $00

jr_033_5efb:
	ld   b, $04                                      ; $5efb: $06 $04
	nop                                              ; $5efd: $00
	ld   [$0e00], sp                                 ; $5efe: $08 $00 $0e
	inc  b                                           ; $5f01: $04
	ld   b, $81                                      ; $5f02: $06 $81
	nop                                              ; $5f04: $00
	add  b                                           ; $5f05: $80
	ld   b, d                                        ; $5f06: $42
	add  b                                           ; $5f07: $80
	ld   hl, $0e80                                   ; $5f08: $21 $80 $0e
	add  d                                           ; $5f0b: $82
	dec  c                                           ; $5f0c: $0d
	add  b                                           ; $5f0d: $80
	nop                                              ; $5f0e: $00
	add  b                                           ; $5f0f: $80
	ld   c, $82                                      ; $5f10: $0e $82
	ld   e, $81                                      ; $5f12: $1e $81
	nop                                              ; $5f14: $00
	ld   a, [bc]                                     ; $5f15: $0a
	inc  e                                           ; $5f16: $1c
	nop                                              ; $5f17: $00

jr_033_5f18:
	inc  e                                           ; $5f18: $1c
	inc  c                                           ; $5f19: $0c
	inc  a                                           ; $5f1a: $3c
	jr   nc, jr_033_5f1d                             ; $5f1b: $30 $00

jr_033_5f1d:
	ld   l, $2c                                      ; $5f1d: $2e $2c
	ld   l, [hl]                                     ; $5f1f: $6e
	ld   l, h                                        ; $5f20: $6c
	add  b                                           ; $5f21: $80
	sbc  [hl]                                        ; $5f22: $9e
	add  b                                           ; $5f23: $80
	halt                                             ; $5f24: $76
	add  b                                           ; $5f25: $80
	or   $80                                         ; $5f26: $f6 $80
	ldh  [c], a                                      ; $5f28: $e2
	add  b                                           ; $5f29: $80
	ret  nz                                          ; $5f2a: $c0

	add  b                                           ; $5f2b: $80
	nop                                              ; $5f2c: $00
	add  b                                           ; $5f2d: $80
	ldh  [$82], a                                    ; $5f2e: $e0 $82
	ldh  a, [$81]                                    ; $5f30: $f0 $81
	nop                                              ; $5f32: $00
	inc  bc                                          ; $5f33: $03
	ld   [hl], b                                     ; $5f34: $70
	nop                                              ; $5f35: $00
	ld   [hl], b                                     ; $5f36: $70
	nop                                              ; $5f37: $00
	add  b                                           ; $5f38: $80
	ld   [hl], b                                     ; $5f39: $70
	ld   de, $1c00                                   ; $5f3a: $11 $00 $1c
	nop                                              ; $5f3d: $00
	ccf                                              ; $5f3e: $3f
	nop                                              ; $5f3f: $00
	ld   [de], a                                     ; $5f40: $12
	nop                                              ; $5f41: $00
	ld   d, b                                        ; $5f42: $50
	nop                                              ; $5f43: $00
	pop  bc                                          ; $5f44: $c1
	jr   nz, jr_033_5f81                             ; $5f45: $20 $3a

	ld   [$0050], sp                                 ; $5f47: $08 $50 $00
	daa                                              ; $5f4a: $27
	ld   [bc], a                                     ; $5f4b: $02
	ld   e, b                                        ; $5f4c: $58
	add  b                                           ; $5f4d: $80
	nop                                              ; $5f4e: $00
	ld   bc, $2c0c                                   ; $5f4f: $01 $0c $2c
	add  b                                           ; $5f52: $80
	ld   e, $80                                      ; $5f53: $1e $80
	ld   e, [hl]                                     ; $5f55: $5e
	ld   [bc], a                                     ; $5f56: $02
	ld   c, h                                        ; $5f57: $4c
	sbc  a                                           ; $5f58: $9f
	inc  de                                          ; $5f59: $13
	add  b                                           ; $5f5a: $80
	dec  hl                                          ; $5f5b: $2b
	add  b                                           ; $5f5c: $80
	db   $10                                         ; $5f5d: $10
	add  hl, bc                                      ; $5f5e: $09
	ld   a, a                                        ; $5f5f: $7f
	nop                                              ; $5f60: $00
	ldh  a, [rP1]                                    ; $5f61: $f0 $00
	ld   a, b                                        ; $5f63: $78
	nop                                              ; $5f64: $00
	adc  h                                           ; $5f65: $8c
	nop                                              ; $5f66: $00
	ld   b, $00                                      ; $5f67: $06 $00
	add  b                                           ; $5f69: $80
	or   b                                           ; $5f6a: $b0
	ld   bc, $187b                                   ; $5f6b: $01 $7b $18
	add  b                                           ; $5f6e: $80
	ld   b, b                                        ; $5f6f: $40
	ld   b, $90                                      ; $5f70: $06 $90
	nop                                              ; $5f72: $00
	ld   [$6660], sp                                 ; $5f73: $08 $60 $66
	ldh  a, [$f5]                                    ; $5f76: $f0 $f5
	add  b                                           ; $5f78: $80
	db   $f4                                         ; $5f79: $f4
	ld   [$7464], sp                                 ; $5f7a: $08 $64 $74
	db   $10                                         ; $5f7d: $10
	add  sp, -$20                                    ; $5f7e: $e8 $e0
	dec  bc                                          ; $5f80: $0b

jr_033_5f81:
	nop                                              ; $5f81: $00
	ccf                                              ; $5f82: $3f
	add  hl, sp                                      ; $5f83: $39
	add  b                                           ; $5f84: $80
	jr   c, jr_033_5f8d                              ; $5f85: $38 $06

	ld   b, d                                        ; $5f87: $42
	nop                                              ; $5f88: $00
	ld   h, e                                        ; $5f89: $63
	nop                                              ; $5f8a: $00
	xor  a                                           ; $5f8b: $af
	nop                                              ; $5f8c: $00

jr_033_5f8d:
	ld   h, e                                        ; $5f8d: $63
	add  c                                           ; $5f8e: $81
	nop                                              ; $5f8f: $00
	inc  b                                           ; $5f90: $04
	dec  c                                           ; $5f91: $0d
	nop                                              ; $5f92: $00
	ld   c, $00                                      ; $5f93: $0e $00
	jr   nc, jr_033_5f18                             ; $5f95: $30 $81

	nop                                              ; $5f97: $00
	inc  e                                           ; $5f98: $1c
	ld   e, $00                                      ; $5f99: $1e $00
	dec  e                                           ; $5f9b: $1d
	nop                                              ; $5f9c: $00

jr_033_5f9d:
	ld   b, b                                        ; $5f9d: $40
	nop                                              ; $5f9e: $00
	jr   nz, jr_033_5fa1                             ; $5f9f: $20 $00

jr_033_5fa1:
	cp   l                                           ; $5fa1: $bd
	nop                                              ; $5fa2: $00
	xor  [hl]                                        ; $5fa3: $ae
	add  b                                           ; $5fa4: $80
	ld   b, e                                        ; $5fa5: $43
	nop                                              ; $5fa6: $00
	di                                               ; $5fa7: $f3
	nop                                              ; $5fa8: $00
	add  sp, $00                                     ; $5fa9: $e8 $00
	add  b                                           ; $5fab: $80
	nop                                              ; $5fac: $00
	inc  d                                           ; $5fad: $14
	inc  c                                           ; $5fae: $0c
	ccf                                              ; $5faf: $3f
	inc  d                                           ; $5fb0: $14
	sbc  $18                                         ; $5fb1: $de $18
	db   $e4                                         ; $5fb3: $e4
	nop                                              ; $5fb4: $00
	db   $10                                         ; $5fb5: $10
	add  c                                           ; $5fb6: $81
	nop                                              ; $5fb7: $00
	ld   [bc], a                                     ; $5fb8: $02
	ldh  a, [rP1]                                    ; $5fb9: $f0 $00
	ld   [hl], b                                     ; $5fbb: $70
	add  e                                           ; $5fbc: $83
	nop                                              ; $5fbd: $00
	inc  d                                           ; $5fbe: $14
	ld   [hl], a                                     ; $5fbf: $77
	nop                                              ; $5fc0: $00
	pop  af                                          ; $5fc1: $f1
	nop                                              ; $5fc2: $00
	rla                                              ; $5fc3: $17
	ld   c, $2f                                      ; $5fc4: $0e $2f
	rra                                              ; $5fc6: $1f
	ld   c, $1e                                      ; $5fc7: $0e $1e
	ld   d, b                                        ; $5fc9: $50
	dec  e                                           ; $5fca: $1d
	db   $ed                                         ; $5fcb: $ed
	ld   l, e                                        ; $5fcc: $6b
	ld   d, e                                        ; $5fcd: $53
	ld   [hl], l                                     ; $5fce: $75
	dec  d                                           ; $5fcf: $15
	ld   [hl], e                                     ; $5fd0: $73
	db   $d3                                         ; $5fd1: $d3
	rla                                              ; $5fd2: $17
	rlca                                             ; $5fd3: $07
	add  b                                           ; $5fd4: $80
	dec  l                                           ; $5fd5: $2d
	ld   bc, $dc5c                                   ; $5fd6: $01 $5c $dc
	add  b                                           ; $5fd9: $80
	ld   e, c                                        ; $5fda: $59
	inc  bc                                          ; $5fdb: $03
	ld   d, b                                        ; $5fdc: $50
	ld   d, e                                        ; $5fdd: $53
	xor  e                                           ; $5fde: $ab
	xor  b                                           ; $5fdf: $a8
	add  b                                           ; $5fe0: $80
	xor  e                                           ; $5fe1: $ab
	dec  bc                                          ; $5fe2: $0b
	sub  h                                           ; $5fe3: $94
	ld   e, e                                        ; $5fe4: $5b
	nop                                              ; $5fe5: $00
	ld   a, b                                        ; $5fe6: $78
	jr   nc, jr_033_5f9d                             ; $5fe7: $30 $b4

	jr   c, jr_033_602d                              ; $5fe9: $38 $42

	ld   c, b                                        ; $5feb: $48
	rlca                                             ; $5fec: $07
	sub  [hl]                                        ; $5fed: $96
	sub  d                                           ; $5fee: $92
	add  b                                           ; $5fef: $80
	jp   c, $f201                                    ; $5ff0: $da $01 $f2

	ldh  a, [$80]                                    ; $5ff3: $f0 $80
	jr   z, @-$7e                                    ; $5ff5: $28 $80

	ld   l, h                                        ; $5ff7: $6c
	add  b                                           ; $5ff8: $80
	or   $01                                         ; $5ff9: $f6 $01
	ld   h, d                                        ; $5ffb: $62
	ld   h, e                                        ; $5ffc: $63
	add  c                                           ; $5ffd: $81
	add  sp, $02                                     ; $5ffe: $e8 $02
	ld   sp, hl                                      ; $6000: $f9
	ld   a, [$80ea]                                  ; $6001: $fa $ea $80
	ldh  a, [c]                                      ; $6004: $f2
	inc  bc                                          ; $6005: $03
	dec  c                                           ; $6006: $0d
	call nc, $7e1b                           ; $6007: $d4 $1b $7e
	add  c                                           ; $600a: $81
	inc  a                                           ; $600b: $3c
	inc  c                                           ; $600c: $0c
	sbc  d                                           ; $600d: $9a
	ld   e, e                                        ; $600e: $5b
	ld   b, e                                        ; $600f: $43
	ld   h, e                                        ; $6010: $63
	ld   a, c                                        ; $6011: $79
	ld   e, d                                        ; $6012: $5a
	di                                               ; $6013: $f3
	scf                                              ; $6014: $37
	ld   h, $2f                                      ; $6015: $26 $2f
	db   $ed                                         ; $6017: $ed
	ld   l, a                                        ; $6018: $6f
	ld   c, c                                        ; $6019: $49
	add  e                                           ; $601a: $83
	ld   e, a                                        ; $601b: $5f
	rlca                                             ; $601c: $07
	dec  de                                          ; $601d: $1b
	ld   h, b                                        ; $601e: $60
	ldh  [rIF], a                                    ; $601f: $e0 $0f
	ld   a, a                                        ; $6021: $7f
	nop                                              ; $6022: $00

jr_033_6023:
	ldh  a, [rP1]                                    ; $6023: $f0 $00
	add  b                                           ; $6025: $80

jr_033_6026:
	jr   jr_033_6029                                 ; $6026: $18 $01

	dec  c                                           ; $6028: $0d

jr_033_6029:
	inc  c                                           ; $6029: $0c
	add  b                                           ; $602a: $80
	ld   l, h                                        ; $602b: $6c
	inc  c                                           ; $602c: $0c

jr_033_602d:
	ld   a, [bc]                                     ; $602d: $0a
	jr   jr_033_6044                                 ; $602e: $18 $14

	ld   [hl], b                                     ; $6030: $70
	ld   [hl], h                                     ; $6031: $74
	ld   [$1c1a], sp                                 ; $6032: $08 $1a $1c
	inc  c                                           ; $6035: $0c
	db   $fc                                         ; $6036: $fc
	push af                                          ; $6037: $f5
	cp   $f2                                         ; $6038: $fe $f2
	add  d                                           ; $603a: $82
	cp   $11                                         ; $603b: $fe $11
	db   $fc                                         ; $603d: $fc
	ld   hl, sp+$02                                  ; $603e: $f8 $02
	inc  bc                                          ; $6040: $03
	db   $fc                                         ; $6041: $fc
	ldh  a, [c]                                      ; $6042: $f2
	nop                                              ; $6043: $00

jr_033_6044:
	rrca                                             ; $6044: $0f
	nop                                              ; $6045: $00
	rst  $38                                         ; $6046: $ff
	nop                                              ; $6047: $00
	dec  c                                           ; $6048: $0d
	nop                                              ; $6049: $00
	ld   [de], a                                     ; $604a: $12
	dec  c                                           ; $604b: $0d
	dec  l                                           ; $604c: $2d
	rra                                              ; $604d: $1f
	ld   e, a                                        ; $604e: $5f
	add  b                                           ; $604f: $80
	rlca                                             ; $6050: $07
	add  b                                           ; $6051: $80
	dec  sp                                          ; $6052: $3b
	ld   bc, $bf3f                                   ; $6053: $01 $3f $bf
	add  b                                           ; $6056: $80
	ld   d, c                                        ; $6057: $51
	add  b                                           ; $6058: $80
	ld   sp, $3680                                   ; $6059: $31 $80 $36
	add  b                                           ; $605c: $80
	ld   [hl+], a                                    ; $605d: $22
	add  b                                           ; $605e: $80
	dec  l                                           ; $605f: $2d
	add  b                                           ; $6060: $80
	ld   h, a                                        ; $6061: $67
	rrca                                             ; $6062: $0f
	ld   h, c                                        ; $6063: $61
	pop  hl                                          ; $6064: $e1
	cpl                                              ; $6065: $2f
	ld   l, a                                        ; $6066: $6f
	ld   b, $39                                      ; $6067: $06 $39
	nop                                              ; $6069: $00
	ldh  [rP1], a                                    ; $606a: $e0 $00
	db   $10                                         ; $606c: $10
	ldh  [$e8], a                                    ; $606d: $e0 $e8
	ldh  a, [$f4]                                    ; $606f: $f0 $f4
	ret  z                                           ; $6071: $c8

	jp   z, $f480                                    ; $6072: $ca $80 $f4

	ld   bc, $b9b8                                   ; $6075: $01 $b8 $b9
	add  b                                           ; $6078: $80
	cp   h                                           ; $6079: $bc
	add  b                                           ; $607a: $80
	call c, $de80                                    ; $607b: $dc $80 $de
	add  b                                           ; $607e: $80
	jp   c, Jump_033_5a81                            ; $607f: $da $81 $5a

	add  hl, bc                                      ; $6082: $09
	ld   e, e                                        ; $6083: $5b
	ld   e, b                                        ; $6084: $58
	ld   e, d                                        ; $6085: $5a
	ld   d, b                                        ; $6086: $50
	ld   d, h                                        ; $6087: $54
	and  b                                           ; $6088: $a0
	ld   h, a                                        ; $6089: $67
	nop                                              ; $608a: $00
	ld   b, h                                        ; $608b: $44
	inc  b                                           ; $608c: $04
	add  b                                           ; $608d: $80
	ld   b, $80                                      ; $608e: $06 $80
	nop                                              ; $6090: $00
	ld   b, $40                                      ; $6091: $06 $40
	nop                                              ; $6093: $00
	jr   nz, jr_033_6096                             ; $6094: $20 $00

jr_033_6096:
	stop                                             ; $6096: $10 $00
	db   $10                                         ; $6098: $10
	add  e                                           ; $6099: $83
	nop                                              ; $609a: $00
	nop                                              ; $609b: $00
	jr   nz, jr_033_6023                             ; $609c: $20 $85

	nop                                              ; $609e: $00
	ld   b, $7b                                      ; $609f: $06 $7b
	jr   c, jr_033_6026                              ; $60a1: $38 $83

	nop                                              ; $60a3: $00
	inc  bc                                          ; $60a4: $03
	nop                                              ; $60a5: $00
	ld   [bc], a                                     ; $60a6: $02
	add  e                                           ; $60a7: $83
	nop                                              ; $60a8: $00
	ld   [$0002], sp                                 ; $60a9: $08 $02 $00
	inc  b                                           ; $60ac: $04
	nop                                              ; $60ad: $00
	ld   [$0800], sp                                 ; $60ae: $08 $00 $08
	nop                                              ; $60b1: $00
	inc  b                                           ; $60b2: $04
	add  c                                           ; $60b3: $81
	nop                                              ; $60b4: $00
	nop                                              ; $60b5: $00
	ld   [bc], a                                     ; $60b6: $02
	add  l                                           ; $60b7: $85
	nop                                              ; $60b8: $00
	dec  c                                           ; $60b9: $0d
	call c, $c11c                                    ; $60ba: $dc $1c $c1
	nop                                              ; $60bd: $00
	rst  $38                                         ; $60be: $ff
	nop                                              ; $60bf: $00
	rlca                                             ; $60c0: $07
	nop                                              ; $60c1: $00
	jr   jr_033_60c4                                 ; $60c2: $18 $00

jr_033_60c4:
	jr   nz, jr_033_60c6                             ; $60c4: $20 $00

jr_033_60c6:
	ld   b, e                                        ; $60c6: $43
	inc  bc                                          ; $60c7: $03
	add  b                                           ; $60c8: $80
	rrca                                             ; $60c9: $0f
	ld   bc, $1c9c                                   ; $60ca: $01 $9c $1c
	add  b                                           ; $60cd: $80
	stop                                             ; $60ce: $10 $00
	nop                                              ; $60d0: $00
	add  b                                           ; $60d1: $80
	ld   b, c                                        ; $60d2: $41
	add  b                                           ; $60d3: $80
	ld   c, c                                        ; $60d4: $49
	ld   [bc], a                                     ; $60d5: $02
	ld   bc, $0d05                                   ; $60d6: $01 $05 $0d
	add  b                                           ; $60d9: $80
	rrca                                             ; $60da: $0f
	nop                                              ; $60db: $00
	add  hl, bc                                      ; $60dc: $09
	add  b                                           ; $60dd: $80
	rrca                                             ; $60de: $0f
	inc  c                                           ; $60df: $0c
	rlca                                             ; $60e0: $07
	add  a                                           ; $60e1: $87
	nop                                              ; $60e2: $00
	ld   a, a                                        ; $60e3: $7f
	nop                                              ; $60e4: $00
	ldh  [rP1], a                                    ; $60e5: $e0 $00
	jr   jr_033_60e9                                 ; $60e7: $18 $00

jr_033_60e9:
	inc  b                                           ; $60e9: $04
	nop                                              ; $60ea: $00
	jp   nz, $80c0                                   ; $60eb: $c2 $c0 $80

	ldh  a, [rSB]                                    ; $60ee: $f0 $01
	add  hl, sp                                      ; $60f0: $39
	jr   c, @-$7e                                    ; $60f1: $38 $80

	ld   [rRAMG], sp                                 ; $60f3: $08 $00 $00
	add  b                                           ; $60f6: $80
	ld   b, d                                        ; $60f7: $42
	add  b                                           ; $60f8: $80
	ld   d, d                                        ; $60f9: $52
	ld   [bc], a                                     ; $60fa: $02
	add  b                                           ; $60fb: $80
	and  b                                           ; $60fc: $a0
	or   b                                           ; $60fd: $b0
	add  b                                           ; $60fe: $80
	ldh  a, [rP1]                                    ; $60ff: $f0 $00
	sub  b                                           ; $6101: $90
	add  b                                           ; $6102: $80
	ldh  a, [rTIMA]                                  ; $6103: $f0 $05
	ldh  [$e1], a                                    ; $6105: $e0 $e1
	nop                                              ; $6107: $00
	add  c                                           ; $6108: $81
	inc  hl                                          ; $6109: $23
	and  e                                           ; $610a: $a3
	add  b                                           ; $610b: $80
	ld   c, l                                        ; $610c: $4d
	add  b                                           ; $610d: $80
	ld   c, e                                        ; $610e: $4b
	add  b                                           ; $610f: $80
	ld   [hl], e                                     ; $6110: $73
	ld   bc, $8808                                   ; $6111: $01 $08 $88
	add  b                                           ; $6114: $80
	nop                                              ; $6115: $00
	add  b                                           ; $6116: $80
	ld   [bc], a                                     ; $6117: $02
	add  b                                           ; $6118: $80
	jr   nc, jr_033_611e                             ; $6119: $30 $03

	scf                                              ; $611b: $37
	ld   [hl], a                                     ; $611c: $77
	rlca                                             ; $611d: $07

jr_033_611e:
	scf                                              ; $611e: $37
	add  d                                           ; $611f: $82
	rlca                                             ; $6120: $07
	add  c                                           ; $6121: $81
	nop                                              ; $6122: $00
	add  hl, bc                                      ; $6123: $09
	db   $10                                         ; $6124: $10
	ld   c, $ee                                      ; $6125: $0e $ee
	nop                                              ; $6127: $00
	ldh  [c], a                                      ; $6128: $e2
	nop                                              ; $6129: $00
	cpl                                              ; $612a: $2f
	dec  e                                           ; $612b: $1d
	nop                                              ; $612c: $00
	db   $10                                         ; $612d: $10
	add  b                                           ; $612e: $80
	nop                                              ; $612f: $00
	nop                                              ; $6130: $00
	ld   b, b                                        ; $6131: $40
	add  d                                           ; $6132: $82
	nop                                              ; $6133: $00
	ld   bc, $9010                                   ; $6134: $01 $10 $90
	add  b                                           ; $6137: $80
	add  hl, de                                      ; $6138: $19
	ld   bc, $8505                                   ; $6139: $01 $05 $85
	add  b                                           ; $613c: $80
	add  c                                           ; $613d: $81
	add  b                                           ; $613e: $80
	call $c905                                       ; $613f: $cd $05 $c9
	res  1, e                                        ; $6142: $cb $8b
	add  hl, bc                                      ; $6144: $09
	rrca                                             ; $6145: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6146: $cf
	add  b                                           ; $6147: $80
	rlca                                             ; $6148: $07
	ld   b, $00                                      ; $6149: $06 $00
	add  a                                           ; $614b: $87
	nop                                              ; $614c: $00
	call c, $28b8                                    ; $614d: $dc $b8 $28
	ld   [$0080], sp                                 ; $6150: $08 $80 $00
	nop                                              ; $6153: $00
	ld   [bc], a                                     ; $6154: $02
	add  d                                           ; $6155: $82
	nop                                              ; $6156: $00
	ld   bc, $0908                                   ; $6157: $01 $08 $09
	add  b                                           ; $615a: $80
	ld   e, b                                        ; $615b: $58
	ld   bc, $4140                                   ; $615c: $01 $40 $41
	add  b                                           ; $615f: $80
	add  c                                           ; $6160: $81
	add  b                                           ; $6161: $80
	db   $d3                                         ; $6162: $d3
	dec  b                                           ; $6163: $05
	sub  e                                           ; $6164: $93
	or   e                                           ; $6165: $b3
	or   c                                           ; $6166: $b1
	sub  b                                           ; $6167: $90
	ldh  a, [$f3]                                    ; $6168: $f0 $f3
	add  b                                           ; $616a: $80
	ldh  [rSB], a                                    ; $616b: $e0 $01
	nop                                              ; $616d: $00
	jp   $0a81                                       ; $616e: $c3 $81 $0a


	nop                                              ; $6171: $00
	ld   c, d                                        ; $6172: $4a
	add  b                                           ; $6173: $80
	dec  l                                           ; $6174: $2d
	ld   bc, $b030                                   ; $6175: $01 $30 $b0
	add  b                                           ; $6178: $80
	ld   h, b                                        ; $6179: $60
	add  b                                           ; $617a: $80
	rla                                              ; $617b: $17
	add  b                                           ; $617c: $80
	jr   nc, jr_033_6180                             ; $617d: $30 $01

	ld   b, b                                        ; $617f: $40

jr_033_6180:
	ld   c, [hl]                                     ; $6180: $4e
	add  b                                           ; $6181: $80
	ld   l, [hl]                                     ; $6182: $6e
	inc  bc                                          ; $6183: $03
	ld   c, [hl]                                     ; $6184: $4e
	ld   e, d                                        ; $6185: $5a
	ld   a, [de]                                     ; $6186: $1a
	db   $db                                         ; $6187: $db
	add  e                                           ; $6188: $83
	dec  de                                          ; $6189: $1b
	inc  b                                           ; $618a: $04
	jr   nc, @+$08                                   ; $618b: $30 $06

	or   $00                                         ; $618d: $f6 $00
	inc  bc                                          ; $618f: $03
	add  b                                           ; $6190: $80
	ld   d, b                                        ; $6191: $50
	ld   bc, $d2d0                                   ; $6192: $01 $d0 $d2
	add  b                                           ; $6195: $80
	or   h                                           ; $6196: $b4
	ld   bc, $0d0c                                   ; $6197: $01 $0c $0d
	add  b                                           ; $619a: $80
	ld   b, $80                                      ; $619b: $06 $80
	add  sp, -$80                                    ; $619d: $e8 $80
	inc  c                                           ; $619f: $0c
	rlca                                             ; $61a0: $07
	ld   [bc], a                                     ; $61a1: $02
	ldh  a, [c]                                      ; $61a2: $f2
	or   $d6                                         ; $61a3: $f6 $d6
	jp   nc, $585b                                   ; $61a5: $d2 $5b $58

	ld   e, d                                        ; $61a8: $5a
	add  e                                           ; $61a9: $83
	ld   e, b                                        ; $61aa: $58
	add  hl, bc                                      ; $61ab: $09
	inc  c                                           ; $61ac: $0c
	ld   h, b                                        ; $61ad: $60

jr_033_61ae:
	ld   l, a                                        ; $61ae: $6f
	nop                                              ; $61af: $00
	ld   hl, sp+$00                                  ; $61b0: $f8 $00
	ccf                                              ; $61b2: $3f
	rlca                                             ; $61b3: $07
	halt                                             ; $61b4: $76
	ld   [hl], $80                                   ; $61b5: $36 $80

jr_033_61b7:
	ccf                                              ; $61b7: $3f
	ld   bc, $5ddd                                   ; $61b8: $01 $dd $5d
	add  b                                           ; $61bb: $80
	ld   [hl], h                                     ; $61bc: $74
	add  hl, bc                                      ; $61bd: $09
	adc  b                                           ; $61be: $88
	xor  [hl]                                        ; $61bf: $ae
	add  hl, bc                                      ; $61c0: $09
	ld   l, a                                        ; $61c1: $6f
	ld   l, b                                        ; $61c2: $68
	ld   l, a                                        ; $61c3: $6f
	add  e                                           ; $61c4: $83
	add  $42                                         ; $61c5: $c6 $42

jr_033_61c7:
	ld   d, a                                        ; $61c7: $57
	add  b                                           ; $61c8: $80
	rra                                              ; $61c9: $1f
	inc  b                                           ; $61ca: $04
	sub  a                                           ; $61cb: $97
	rra                                              ; $61cc: $1f
	ccf                                              ; $61cd: $3f
	rrca                                             ; $61ce: $0f
	ld   c, a                                        ; $61cf: $4f
	add  b                                           ; $61d0: $80
	nop                                              ; $61d1: $00
	dec  c                                           ; $61d2: $0d
	dec  bc                                          ; $61d3: $0b
	db   $f4                                         ; $61d4: $f4
	nop                                              ; $61d5: $00
	ldh  a, [$e0]                                    ; $61d6: $f0 $e0
	ld   l, b                                        ; $61d8: $68
	ld   [hl], b                                     ; $61d9: $70
	and  h                                           ; $61da: $a4
	cp   b                                           ; $61db: $b8
	adc  b                                           ; $61dc: $88
	cp   b                                           ; $61dd: $b8
	or   $dc                                         ; $61de: $f6 $dc
	inc  e                                           ; $61e0: $1c
	add  b                                           ; $61e1: $80
	call c, Call_033_6c06                            ; $61e2: $dc $06 $6c
	ld   c, a                                        ; $61e5: $4f
	ld   l, $14                                      ; $61e6: $2e $14
	ld   d, h                                        ; $61e8: $54
	pop  bc                                          ; $61e9: $c1
	xor  b                                           ; $61ea: $a8
	add  b                                           ; $61eb: $80

jr_033_61ec:
	db   $ec                                         ; $61ec: $ec
	ld   c, $22                                      ; $61ed: $0e $22
	add  sp, -$1c                                    ; $61ef: $e8 $e4
	ret  nz                                          ; $61f1: $c0

	ret  z                                           ; $61f2: $c8

	nop                                              ; $61f3: $00
	ld   [$77b0], sp                                 ; $61f4: $08 $b0 $77
	rla                                              ; $61f7: $17
	ld   de, $5016                                   ; $61f8: $11 $16 $50
	add  hl, de                                      ; $61fb: $19
	sbc  c                                           ; $61fc: $99
	add  b                                           ; $61fd: $80
	ld   e, e                                        ; $61fe: $5b
	dec  b                                           ; $61ff: $05
	ld   h, a                                        ; $6200: $67
	rst  $20                                         ; $6201: $e7
	nop                                              ; $6202: $00
	ld   h, b                                        ; $6203: $60
	ld   [$8028], sp                                 ; $6204: $08 $28 $80
	ld   a, [de]                                     ; $6207: $1a
	dec  b                                           ; $6208: $05
	nop                                              ; $6209: $00
	jr   c, jr_033_6224                              ; $620a: $38 $18

	jr   nc, jr_033_621e                             ; $620c: $30 $10

	inc  bc                                          ; $620e: $03
	add  c                                           ; $620f: $81
	nop                                              ; $6210: $00
	add  b                                           ; $6211: $80
	inc  a                                           ; $6212: $3c
	inc  b                                           ; $6213: $04
	ld   c, b                                        ; $6214: $48
	ld   [$0083], sp                                 ; $6215: $08 $83 $00
	inc  bc                                          ; $6218: $03
	add  b                                           ; $6219: $80
	ld   [$3080], sp                                 ; $621a: $08 $80 $30
	add  b                                           ; $621d: $80

jr_033_621e:
	or   b                                           ; $621e: $b0
	add  b                                           ; $621f: $80
	adc  b                                           ; $6220: $88
	ld   [$bcb8], sp                                 ; $6221: $08 $b8 $bc

jr_033_6224:
	nop                                              ; $6224: $00
	ld   [$6860], sp                                 ; $6225: $08 $60 $68
	or   b                                           ; $6228: $b0
	cp   b                                           ; $6229: $b8
	nop                                              ; $622a: $00
	add  b                                           ; $622b: $80
	jr   nz, jr_033_61ae                             ; $622c: $20 $80

	ld   [hl], b                                     ; $622e: $70
	add  b                                           ; $622f: $80
	db   $10                                         ; $6230: $10
	inc  bc                                          ; $6231: $03
	ld   [$b800], sp                                 ; $6232: $08 $00 $b8
	jr   c, jr_033_61b7                              ; $6235: $38 $80

	ld   b, b                                        ; $6237: $40
	ld   a, [bc]                                     ; $6238: $0a
	add  a                                           ; $6239: $87
	nop                                              ; $623a: $00
	jp   Jump_033_4300                               ; $623b: $c3 $00 $43


	nop                                              ; $623e: $00
	ld   b, b                                        ; $623f: $40
	nop                                              ; $6240: $00
	ld   b, b                                        ; $6241: $40
	nop                                              ; $6242: $00
	add  b                                           ; $6243: $80
	add  b                                           ; $6244: $80
	jr   nz, jr_033_61c7                             ; $6245: $20 $80

	ld   [$0080], sp                                 ; $6247: $08 $80 $00
	add  d                                           ; $624a: $82
	inc  b                                           ; $624b: $04
	add  b                                           ; $624c: $80
	ld   [$1c03], sp                                 ; $624d: $08 $03 $1c
	sbc  h                                           ; $6250: $9c
	inc  e                                           ; $6251: $1c
	ld   e, h                                        ; $6252: $5c
	add  b                                           ; $6253: $80
	ld   a, [bc]                                     ; $6254: $0a
	add  b                                           ; $6255: $80
	inc  bc                                          ; $6256: $03

jr_033_6257:
	dec  bc                                          ; $6257: $0b
	rrca                                             ; $6258: $0f
	ld   c, a                                        ; $6259: $4f
	nop                                              ; $625a: $00

jr_033_625b:
	ld   a, a                                        ; $625b: $7f
	nop                                              ; $625c: $00
	ldh  a, [rP1]                                    ; $625d: $f0 $00
	ld   [$0400], sp                                 ; $625f: $08 $00 $04
	nop                                              ; $6262: $00

jr_033_6263:
	ld   [bc], a                                     ; $6263: $02
	add  b                                           ; $6264: $80
	nop                                              ; $6265: $00
	ld   bc, $b1b0                                   ; $6266: $01 $b0 $b1
	add  b                                           ; $6269: $80
	jr   jr_033_61ec                                 ; $626a: $18 $80

	add  b                                           ; $626c: $80

Call_033_626d:
	add  b                                           ; $626d: $80
	nop                                              ; $626e: $00
	add  b                                           ; $626f: $80
	ld   h, b                                        ; $6270: $60
	add  b                                           ; $6271: $80
	ldh  a, [$80]                                    ; $6272: $f0 $80
	ldh  a, [c]                                      ; $6274: $f2
	ld   bc, $6b6a                                   ; $6275: $01 $6a $6b
	add  b                                           ; $6278: $80
	db   $10                                         ; $6279: $10
	ld   b, $e0                                      ; $627a: $06 $e0
	push hl                                          ; $627c: $e5
	inc  b                                           ; $627d: $04
	sub  h                                           ; $627e: $94
	dec  d                                           ; $627f: $15
	dec  [hl]                                        ; $6280: $35
	inc  [hl]                                        ; $6281: $34
	add  b                                           ; $6282: $80
	ld   a, [hl+]                                    ; $6283: $2a
	ld   bc, $6ded                                   ; $6284: $01 $ed $6d
	add  b                                           ; $6287: $80
	ld   l, [hl]                                     ; $6288: $6e
	dec  b                                           ; $6289: $05
	adc  l                                           ; $628a: $8d
	dec  l                                           ; $628b: $2d
	ld   l, l                                        ; $628c: $6d
	dec  c                                           ; $628d: $0d
	jr   nz, jr_033_6290                             ; $628e: $20 $00

jr_033_6290:
	add  d                                           ; $6290: $82
	dec  c                                           ; $6291: $0d
	add  b                                           ; $6292: $80
	ld   c, $81                                      ; $6293: $0e $81
	nop                                              ; $6295: $00
	ld   c, $0e                                      ; $6296: $0e $0e
	jr   nz, @+$10                                   ; $6298: $20 $0e

	ld   b, $1e                                      ; $629a: $06 $1e
	ret  c                                           ; $629c: $d8

	nop                                              ; $629d: $00
	jr   z, @-$56                                    ; $629e: $28 $a8

	db   $ec                                         ; $62a0: $ec
	ld   l, h                                        ; $62a1: $6c
	sbc  l                                           ; $62a2: $9d
	sbc  h                                           ; $62a3: $9c
	ld   l, a                                        ; $62a4: $6f
	ld   l, [hl]                                     ; $62a5: $6e
	add  b                                           ; $62a6: $80
	and  $07                                         ; $62a7: $e6 $07
	pop  hl                                          ; $62a9: $e1
	db   $ec                                         ; $62aa: $ec

jr_033_62ab:
	call z, $16d4                                    ; $62ab: $cc $d4 $16
	jr   @-$02                                       ; $62ae: $18 $fc

	ldh  [$82], a                                    ; $62b0: $e0 $82
	ldh  a, [$81]                                    ; $62b2: $f0 $81
	nop                                              ; $62b4: $00
	rlca                                             ; $62b5: $07
	ld   [hl], b                                     ; $62b6: $70
	nop                                              ; $62b7: $00
	ld   [hl], b                                     ; $62b8: $70
	jr   nc, jr_033_62ab                             ; $62b9: $30 $f0

	rst  ToBoot                                         ; $62bb: $c7
	nop                                              ; $62bc: $00
	rst  $38                                         ; $62bd: $ff
	add  l                                           ; $62be: $85
	nop                                              ; $62bf: $00
	add  b                                           ; $62c0: $80
	db   $10                                         ; $62c1: $10
	add  b                                           ; $62c2: $80
	nop                                              ; $62c3: $00
	add  h                                           ; $62c4: $84
	db   $10                                         ; $62c5: $10
	add  b                                           ; $62c6: $80
	cp   $84                                         ; $62c7: $fe $84
	db   $10                                         ; $62c9: $10
	add  b                                           ; $62ca: $80
	nop                                              ; $62cb: $00
	add  b                                           ; $62cc: $80
	db   $10                                         ; $62cd: $10
	adc  h                                           ; $62ce: $8c
	nop                                              ; $62cf: $00
	add  b                                           ; $62d0: $80
	ld   [bc], a                                     ; $62d1: $02
	add  b                                           ; $62d2: $80
	ld   b, h                                        ; $62d3: $44
	add  b                                           ; $62d4: $80
	jr   z, jr_033_6257                              ; $62d5: $28 $80

	db   $10                                         ; $62d7: $10
	add  b                                           ; $62d8: $80
	jr   z, jr_033_625b                              ; $62d9: $28 $80

	ld   b, h                                        ; $62db: $44
	add  b                                           ; $62dc: $80
	add  b                                           ; $62dd: $80
	sub  b                                           ; $62de: $90
	nop                                              ; $62df: $00
	add  b                                           ; $62e0: $80
	jr   nz, jr_033_6263                             ; $62e1: $20 $80

	nop                                              ; $62e3: $00
	add  b                                           ; $62e4: $80
	jr   nz, @-$7e                                   ; $62e5: $20 $80

	ld   [hl], b                                     ; $62e7: $70
	add  b                                           ; $62e8: $80
	jr   nz, @-$7e                                   ; $62e9: $20 $80

	nop                                              ; $62eb: $00
	add  b                                           ; $62ec: $80
	jr   nz, @-$7a                                   ; $62ed: $20 $84

	nop                                              ; $62ef: $00
	ld   [bc], a                                     ; $62f0: $02
	ld   [$0004], sp                                 ; $62f1: $08 $04 $00
	add  c                                           ; $62f4: $81
	ld   [bc], a                                     ; $62f5: $02
	ld   [$0e1e], sp                                 ; $62f6: $08 $1e $0e
	cp   $10                                         ; $62f9: $fe $10
	inc  b                                           ; $62fb: $04
	nop                                              ; $62fc: $00
	ld   e, b                                        ; $62fd: $58
	ld   b, b                                        ; $62fe: $40
	db   $ec                                         ; $62ff: $ec
	add  c                                           ; $6300: $81
	nop                                              ; $6301: $00
	nop                                              ; $6302: $00
	add  b                                           ; $6303: $80
	add  e                                           ; $6304: $83
	nop                                              ; $6305: $00
	nop                                              ; $6306: $00
	ld   [hl], b                                     ; $6307: $70
	add  c                                           ; $6308: $81
	nop                                              ; $6309: $00
	ld   b, $38                                      ; $630a: $06 $38
	nop                                              ; $630c: $00
	ret  z                                           ; $630d: $c8

	nop                                              ; $630e: $00
	ldh  a, [c]                                      ; $630f: $f2
	ret  nz                                          ; $6310: $c0

	jp   $b080                                       ; $6311: $c3 $80 $b0


	nop                                              ; $6314: $00
	ret  nc                                          ; $6315: $d0

	add  b                                           ; $6316: $80
	ret  nz                                          ; $6317: $c0

	inc  c                                           ; $6318: $0c
	ld   l, $00                                      ; $6319: $2e $00
	dec  b                                           ; $631b: $05
	nop                                              ; $631c: $00
	jr   jr_033_631f                                 ; $631d: $18 $00

jr_033_631f:
	db   $ec                                         ; $631f: $ec
	inc  c                                           ; $6320: $0c
	nop                                              ; $6321: $00
	db   $ec                                         ; $6322: $ec
	ld   h, d                                        ; $6323: $62
	ld   h, b                                        ; $6324: $60
	ld   l, h                                        ; $6325: $6c
	add  c                                           ; $6326: $81
	ld   h, b                                        ; $6327: $60
	nop                                              ; $6328: $00
	db   $10                                         ; $6329: $10
	add  c                                           ; $632a: $81
	nop                                              ; $632b: $00
	add  b                                           ; $632c: $80
	jr   nc, @+$06                                   ; $632d: $30 $04

	rst  $38                                         ; $632f: $ff
	nop                                              ; $6330: $00
	ld   bc, $c5c4                                   ; $6331: $01 $c4 $c5
	add  b                                           ; $6334: $80
	or   d                                           ; $6335: $b2
	add  b                                           ; $6336: $80
	jp   nc, $ce80                                   ; $6337: $d2 $80 $ce

	ld   bc, $1110                                   ; $633a: $01 $10 $11
	add  b                                           ; $633d: $80
	nop                                              ; $633e: $00
	add  b                                           ; $633f: $80
	ld   b, b                                        ; $6340: $40
	add  b                                           ; $6341: $80
	inc  c                                           ; $6342: $0c
	inc  bc                                          ; $6343: $03
	db   $ec                                         ; $6344: $ec
	xor  $60                                         ; $6345: $ee $60
	ld   l, h                                        ; $6347: $6c
	add  d                                           ; $6348: $82
	ld   h, b                                        ; $6349: $60
	add  c                                           ; $634a: $81
	nop                                              ; $634b: $00
	inc  b                                           ; $634c: $04
	ld   [$3730], sp                                 ; $634d: $08 $30 $37
	nop                                              ; $6350: $00
	rst  $38                                         ; $6351: $ff
	rst  $38                                         ; $6352: $ff
	nop                                              ; $6353: $00
	db   $ec                                         ; $6354: $ec
	nop                                              ; $6355: $00
	nop                                              ; $6356: $00
	dec  de                                          ; $6357: $1b
	add  c                                           ; $6358: $81
	ei                                               ; $6359: $fb
	ld   bc, $f3d3                                   ; $635a: $01 $d3 $f3
	add  d                                           ; $635d: $82
	rst  $30                                         ; $635e: $f7
	ld   a, [bc]                                     ; $635f: $0a
	cp   l                                           ; $6360: $bd
	rst  $38                                         ; $6361: $ff
	reti                                             ; $6362: $d9


	rst  JumpTable                                         ; $6363: $df
	ld   [hl], a                                     ; $6364: $77
	rst  $38                                         ; $6365: $ff
	set  7, a                                        ; $6366: $cb $ff
	cp   $ff                                         ; $6368: $fe $ff
	rst  $30                                         ; $636a: $f7
	add  c                                           ; $636b: $81
	rst  $38                                         ; $636c: $ff
	inc  b                                           ; $636d: $04
	rst  $28                                         ; $636e: $ef
	rst  $38                                         ; $636f: $ff
	cp   l                                           ; $6370: $bd
	rst  $38                                         ; $6371: $ff
	rst  JumpTable                                         ; $6372: $df
	add  c                                           ; $6373: $81
	rst  $38                                         ; $6374: $ff
	ld   [bc], a                                     ; $6375: $02
	ld   [hl], d                                     ; $6376: $72
	rst  $38                                         ; $6377: $ff
	db   $fd                                         ; $6378: $fd
	add  c                                           ; $6379: $81
	rst  $38                                         ; $637a: $ff
	ld   b, $bb                                      ; $637b: $06 $bb
	rst  $38                                         ; $637d: $ff
	cp   $ff                                         ; $637e: $fe $ff
	rst  $28                                         ; $6380: $ef
	rst  $38                                         ; $6381: $ff
	ld   [hl], a                                     ; $6382: $77
	add  c                                           ; $6383: $81
	rst  $38                                         ; $6384: $ff
	nop                                              ; $6385: $00
	inc  de                                          ; $6386: $13
	add  c                                           ; $6387: $81
	rst  $38                                         ; $6388: $ff
	inc  bc                                          ; $6389: $03
	sbc  $ff                                         ; $638a: $de $ff
	ld   a, [$80fe]                                  ; $638c: $fa $fe $80
	rst  $38                                         ; $638f: $ff
	ld   de, $ffdb                                   ; $6390: $11 $db $ff
	sbc  l                                           ; $6393: $9d
	rst  $38                                         ; $6394: $ff
	sub  $ff                                         ; $6395: $d6 $ff
	ld   c, b                                        ; $6397: $48
	rst  $38                                         ; $6398: $ff
	rra                                              ; $6399: $1f
	rst  $38                                         ; $639a: $ff
	ldh  [rIE], a                                    ; $639b: $e0 $ff
	ccf                                              ; $639d: $3f
	rst  $38                                         ; $639e: $ff
	ld   b, a                                        ; $639f: $47
	ld   a, a                                        ; $63a0: $7f
	sbc  b                                           ; $63a1: $98
	sbc  a                                           ; $63a2: $9f
	add  b                                           ; $63a3: $80
	db   $e3                                         ; $63a4: $e3
	inc  hl                                          ; $63a5: $23
	ld   a, a                                        ; $63a6: $7f
	rst  $38                                         ; $63a7: $ff
	ld   a, b                                        ; $63a8: $78
	rst  $38                                         ; $63a9: $ff
	or   $ff                                         ; $63aa: $f6 $ff
	add  hl, bc                                      ; $63ac: $09
	rst  $38                                         ; $63ad: $ff
	and  $ff                                         ; $63ae: $e6 $ff
	sbc  l                                           ; $63b0: $9d
	rst  $38                                         ; $63b1: $ff
	ld   a, e                                        ; $63b2: $7b
	rst  $38                                         ; $63b3: $ff
	rst  $20                                         ; $63b4: $e7
	rst  $38                                         ; $63b5: $ff
	sbc  [hl]                                        ; $63b6: $9e
	rst  $38                                         ; $63b7: $ff
	ld   a, h                                        ; $63b8: $7c
	rst  $38                                         ; $63b9: $ff
	ld   a, l                                        ; $63ba: $7d
	rst  $38                                         ; $63bb: $ff
	ld   a, a                                        ; $63bc: $7f
	rst  $38                                         ; $63bd: $ff
	rst  $28                                         ; $63be: $ef
	rst  $38                                         ; $63bf: $ff
	sbc  $ff                                         ; $63c0: $de $ff
	xor  [hl]                                        ; $63c2: $ae
	cp   $7e                                         ; $63c3: $fe $7e
	cp   $d6                                         ; $63c5: $fe $d6
	rst  $38                                         ; $63c7: $ff
	ld   c, [hl]                                     ; $63c8: $4e
	ld   sp, hl                                      ; $63c9: $f9
	add  b                                           ; $63ca: $80
	db   $fc                                         ; $63cb: $fc
	ld   bc, $febe                                   ; $63cc: $01 $be $fe
	add  b                                           ; $63cf: $80
	rst  $38                                         ; $63d0: $ff
	nop                                              ; $63d1: $00
	ld   e, a                                        ; $63d2: $5f
	add  c                                           ; $63d3: $81
	rst  $38                                         ; $63d4: $ff
	rrca                                             ; $63d5: $0f
	xor  a                                           ; $63d6: $af
	rst  $38                                         ; $63d7: $ff
	ld   [hl], a                                     ; $63d8: $77
	rst  $38                                         ; $63d9: $ff
	ld   a, e                                        ; $63da: $7b
	rst  $38                                         ; $63db: $ff
	db   $dd                                         ; $63dc: $dd
	rst  $38                                         ; $63dd: $ff
	ld   l, [hl]                                     ; $63de: $6e
	ld   a, a                                        ; $63df: $7f
	scf                                              ; $63e0: $37
	ccf                                              ; $63e1: $3f
	sbc  e                                           ; $63e2: $9b
	sbc  a                                           ; $63e3: $9f
	call z, $80cf                                    ; $63e4: $cc $cf $80
	di                                               ; $63e7: $f3
	add  b                                           ; $63e8: $80
	cp   $16                                         ; $63e9: $fe $16
	rst  $30                                         ; $63eb: $f7
	rst  $38                                         ; $63ec: $ff
	ldh  a, [rIE]                                    ; $63ed: $f0 $ff
	ld   sp, hl                                      ; $63ef: $f9
	rst  $38                                         ; $63f0: $ff
	ld   a, [hl]                                     ; $63f1: $7e
	rst  $38                                         ; $63f2: $ff
	cp   a                                           ; $63f3: $bf
	rst  $38                                         ; $63f4: $ff
	rst  JumpTable                                         ; $63f5: $df
	rst  $38                                         ; $63f6: $ff
	ld   h, e                                        ; $63f7: $63
	rst  $38                                         ; $63f8: $ff
	sbc  h                                           ; $63f9: $9c
	rst  $38                                         ; $63fa: $ff
	jr   @+$01                                       ; $63fb: $18 $ff

	rst  $30                                         ; $63fd: $f7
	rst  $38                                         ; $63fe: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63ff: $cf
	rst  $38                                         ; $6400: $ff
	ccf                                              ; $6401: $3f
	add  c                                           ; $6402: $81
	rst  $38                                         ; $6403: $ff
	dec  d                                           ; $6404: $15
	cp   $ff                                         ; $6405: $fe $ff
	ld   sp, hl                                      ; $6407: $f9
	rst  $38                                         ; $6408: $ff
	inc  b                                           ; $6409: $04
	rst  $38                                         ; $640a: $ff
	inc  b                                           ; $640b: $04
	rst  $38                                         ; $640c: $ff
	or   $ff                                         ; $640d: $f6 $ff
	db   $ec                                         ; $640f: $ec
	cp   $d9                                         ; $6410: $fe $d9
	db   $fd                                         ; $6412: $fd
	or   a                                           ; $6413: $b7
	rst  $38                                         ; $6414: $ff
	ld   c, a                                        ; $6415: $4f
	rst  $38                                         ; $6416: $ff
	ccf                                              ; $6417: $3f
	rst  $38                                         ; $6418: $ff
	rst  $30                                         ; $6419: $f7
	rst  $38                                         ; $641a: $ff
	add  b                                           ; $641b: $80
	cp   a                                           ; $641c: $bf
	ld   b, $67                                      ; $641d: $06 $67
	ld   a, a                                        ; $641f: $7f
	adc  $ff                                         ; $6420: $ce $ff
	call c, $fdff                                    ; $6422: $dc $ff $fd
	add  c                                           ; $6425: $81
	rst  $38                                         ; $6426: $ff
	ld   [de], a                                     ; $6427: $12
	rst  $28                                         ; $6428: $ef
	rst  $38                                         ; $6429: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $642a: $cf
	rst  $38                                         ; $642b: $ff
	ld   e, b                                        ; $642c: $58
	rst  $38                                         ; $642d: $ff
	cp   $ff                                         ; $642e: $fe $ff
	ld   a, a                                        ; $6430: $7f
	rst  $38                                         ; $6431: $ff
	push af                                          ; $6432: $f5
	rst  $38                                         ; $6433: $ff
	rst  $28                                         ; $6434: $ef
	rst  $38                                         ; $6435: $ff
	ei                                               ; $6436: $fb
	rst  $38                                         ; $6437: $ff
	rst  $10                                         ; $6438: $d7
	rst  $38                                         ; $6439: $ff
	cp   $81                                         ; $643a: $fe $81
	rst  $38                                         ; $643c: $ff
	nop                                              ; $643d: $00
	db   $ed                                         ; $643e: $ed
	add  c                                           ; $643f: $81
	rst  $38                                         ; $6440: $ff
	ld   a, [de]                                     ; $6441: $1a
	sbc  [hl]                                        ; $6442: $9e
	rst  $38                                         ; $6443: $ff
	ei                                               ; $6444: $fb
	rst  $38                                         ; $6445: $ff
	ld   a, [hl]                                     ; $6446: $7e
	cp   $b4                                         ; $6447: $fe $b4
	cp   $7e                                         ; $6449: $fe $7e
	cp   $00                                         ; $644b: $fe $00
	cp   a                                           ; $644d: $bf
	dec  a                                           ; $644e: $3d
	cp   a                                           ; $644f: $bf
	or   $ff                                         ; $6450: $f6 $ff
	ei                                               ; $6452: $fb
	rst  $38                                         ; $6453: $ff
	cp   l                                           ; $6454: $bd
	rst  $38                                         ; $6455: $ff
	ld   hl, sp-$01                                  ; $6456: $f8 $ff
	ld   a, [$65ff]                                  ; $6458: $fa $ff $65
	rst  $38                                         ; $645b: $ff
	and  $83                                         ; $645c: $e6 $83
	rst  $38                                         ; $645e: $ff
	rlca                                             ; $645f: $07
	ld   a, h                                        ; $6460: $7c
	rst  $38                                         ; $6461: $ff
	sbc  h                                           ; $6462: $9c
	rst  $38                                         ; $6463: $ff
	and  e                                           ; $6464: $a3
	cp   a                                           ; $6465: $bf
	adc  h                                           ; $6466: $8c
	adc  a                                           ; $6467: $8f
	add  b                                           ; $6468: $80
	rst  $20                                         ; $6469: $e7
	dec  c                                           ; $646a: $0d
	rlca                                             ; $646b: $07
	rst  $38                                         ; $646c: $ff
	or   $ff                                         ; $646d: $f6 $ff
	call $23ff                                       ; $646f: $cd $ff $23
	rst  $38                                         ; $6472: $ff
	ld   e, $ff                                      ; $6473: $1e $ff
	ld   sp, hl                                      ; $6475: $f9
	rst  $38                                         ; $6476: $ff
	ld   b, $fe                                      ; $6477: $06 $fe
	add  b                                           ; $6479: $80
	ld   sp, hl                                      ; $647a: $f9
	ld   d, $88                                      ; $647b: $16 $88
	rst  $38                                         ; $647d: $ff
	ld   l, e                                        ; $647e: $6b
	rst  $38                                         ; $647f: $ff
	rst  JumpTable                                         ; $6480: $df
	rst  $38                                         ; $6481: $ff
	cp   e                                           ; $6482: $bb
	rst  $38                                         ; $6483: $ff
	ld   [hl], a                                     ; $6484: $77
	rst  $38                                         ; $6485: $ff
	rst  $28                                         ; $6486: $ef
	rst  $38                                         ; $6487: $ff
	rst  JumpTable                                         ; $6488: $df
	rst  $38                                         ; $6489: $ff
	cp   d                                           ; $648a: $ba
	rst  $38                                         ; $648b: $ff
	add  hl, de                                      ; $648c: $19
	rst  $38                                         ; $648d: $ff
	dec  a                                           ; $648e: $3d
	rst  $38                                         ; $648f: $ff
	ld   l, [hl]                                     ; $6490: $6e
	rst  $38                                         ; $6491: $ff
	rst  $30                                         ; $6492: $f7
	add  b                                           ; $6493: $80
	cp   a                                           ; $6494: $bf
	dec  l                                           ; $6495: $2d
	rst  $38                                         ; $6496: $ff
	set  1, a                                        ; $6497: $cb $cf
	call $36ef                                       ; $6499: $cd $ef $36
	scf                                              ; $649c: $37
	rrca                                             ; $649d: $0f
	rst  $38                                         ; $649e: $ff
	db   $e3                                         ; $649f: $e3
	rst  $38                                         ; $64a0: $ff
	push af                                          ; $64a1: $f5
	rst  $38                                         ; $64a2: $ff
	ld   a, d                                        ; $64a3: $7a
	rst  $38                                         ; $64a4: $ff
	cp   l                                           ; $64a5: $bd
	rst  $38                                         ; $64a6: $ff
	ld   e, $ff                                      ; $64a7: $1e $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64a9: $cf
	rst  $38                                         ; $64aa: $ff
	xor  c                                           ; $64ab: $a9
	rst  $38                                         ; $64ac: $ff
	cp   [hl]                                        ; $64ad: $be
	rst  $38                                         ; $64ae: $ff
	ld   sp, hl                                      ; $64af: $f9
	rst  $38                                         ; $64b0: $ff
	cp   $ff                                         ; $64b1: $fe $ff
	ld   a, a                                        ; $64b3: $7f
	rst  $38                                         ; $64b4: $ff
	adc  a                                           ; $64b5: $8f
	rst  $38                                         ; $64b6: $ff
	pop  af                                          ; $64b7: $f1
	rst  $38                                         ; $64b8: $ff
	ld   a, $ff                                      ; $64b9: $3e $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64bb: $cf
	rst  $38                                         ; $64bc: $ff
	ld   [hl], b                                     ; $64bd: $70
	rst  $38                                         ; $64be: $ff
	sbc  [hl]                                        ; $64bf: $9e
	rst  $38                                         ; $64c0: $ff
	ld   h, c                                        ; $64c1: $61
	rst  $38                                         ; $64c2: $ff
	add  b                                           ; $64c3: $80
	add  c                                           ; $64c4: $81
	rst  $38                                         ; $64c5: $ff
	ld   [bc], a                                     ; $64c6: $02
	db   $fc                                         ; $64c7: $fc
	rst  $38                                         ; $64c8: $ff
	inc  bc                                          ; $64c9: $03
	add  c                                           ; $64ca: $81
	rst  $38                                         ; $64cb: $ff
	daa                                              ; $64cc: $27
	jr   nc, @+$01                                   ; $64cd: $30 $ff

	cpl                                              ; $64cf: $2f
	rst  $38                                         ; $64d0: $ff
	sbc  [hl]                                        ; $64d1: $9e
	rst  $38                                         ; $64d2: $ff
	ld   a, c                                        ; $64d3: $79
	rst  $38                                         ; $64d4: $ff
	add  $ff                                         ; $64d5: $c6 $ff
	jr   c, @+$01                                    ; $64d7: $38 $ff

	push bc                                          ; $64d9: $c5
	rst  $38                                         ; $64da: $ff
	dec  sp                                          ; $64db: $3b
	rst  $38                                         ; $64dc: $ff
	jr   c, @+$01                                    ; $64dd: $38 $ff

	cp   a                                           ; $64df: $bf
	rst  $38                                         ; $64e0: $ff
	ld   a, [hl]                                     ; $64e1: $7e
	rst  $38                                         ; $64e2: $ff
	ld   sp, hl                                      ; $64e3: $f9
	rst  $38                                         ; $64e4: $ff
	and  $ff                                         ; $64e5: $e6 $ff
	sbc  l                                           ; $64e7: $9d
	rst  $38                                         ; $64e8: $ff
	ld   [hl], d                                     ; $64e9: $72
	cp   $cf                                         ; $64ea: $fe $cf
	rst  $38                                         ; $64ec: $ff
	ld   e, d                                        ; $64ed: $5a
	ei                                               ; $64ee: $fb
	ld   d, h                                        ; $64ef: $54
	rst  $30                                         ; $64f0: $f7
	or   l                                           ; $64f1: $b5
	rst  $30                                         ; $64f2: $f7
	ld   l, a                                        ; $64f3: $6f
	rst  $28                                         ; $64f4: $ef
	add  b                                           ; $64f5: $80
	sbc  $80                                         ; $64f6: $de $80
	cp   l                                           ; $64f8: $bd
	add  b                                           ; $64f9: $80
	ld   sp, hl                                      ; $64fa: $f9
	add  b                                           ; $64fb: $80
	ei                                               ; $64fc: $fb
	rla                                              ; $64fd: $17
	ldh  a, [c]                                      ; $64fe: $f2
	cp   $ee                                         ; $64ff: $fe $ee
	cp   $f7                                         ; $6501: $fe $f7
	cp   $54                                         ; $6503: $fe $54
	halt                                             ; $6505: $76
	and  b                                           ; $6506: $a0
	db   $f4                                         ; $6507: $f4
	call nz, $5cf4                                   ; $6508: $c4 $f4 $5c
	ld   hl, sp-$48                                  ; $650b: $f8 $b8
	ldh  a, [rAUD2HIGH]                              ; $650d: $f0 $19
	ld   a, a                                        ; $650f: $7f
	ld   [hl], b                                     ; $6510: $70
	ld   a, l                                        ; $6511: $7d
	dec  a                                           ; $6512: $3d
	dec  e                                           ; $6513: $1d
	dec  c                                           ; $6514: $0d
	dec  b                                           ; $6515: $05
	add  b                                           ; $6516: $80
	ld   bc, $0300                                   ; $6517: $01 $00 $03
	add  e                                           ; $651a: $83
	nop                                              ; $651b: $00
	ld   d, $01                                      ; $651c: $16 $01
	cp   $bf                                         ; $651e: $fe $bf
	rst  $38                                         ; $6520: $ff
	jr   nc, @+$01                                   ; $6521: $30 $ff

	call nz, $f2ff                                   ; $6523: $c4 $ff $f2
	rst  $30                                         ; $6526: $f7
	rst  $20                                         ; $6527: $e7
	rst  $30                                         ; $6528: $f7
	ld   e, b                                        ; $6529: $58
	rrca                                             ; $652a: $0f
	add  hl, bc                                      ; $652b: $09
	nop                                              ; $652c: $00
	sbc  c                                           ; $652d: $99
	ld   h, a                                        ; $652e: $67
	ld   sp, hl                                      ; $652f: $f9
	rst  $38                                         ; $6530: $ff
	ld   b, $ff                                      ; $6531: $06 $ff
	ld   h, l                                        ; $6533: $65
	add  c                                           ; $6534: $81
	rst  JumpTable                                         ; $6535: $df
	ld   a, [bc]                                     ; $6536: $0a
	db   $dd                                         ; $6537: $dd
	rst  JumpTable                                         ; $6538: $df
	reti                                             ; $6539: $d9


	ld   hl, sp-$68                                  ; $653a: $f8 $98
	nop                                              ; $653c: $00
	and  $fa                                         ; $653d: $e6 $fa
	adc  h                                           ; $653f: $8c
	db   $ec                                         ; $6540: $ec
	xor  h                                           ; $6541: $ac
	add  b                                           ; $6542: $80
	jr   z, @+$03                                    ; $6543: $28 $01

	ldh  [$f0], a                                    ; $6545: $e0 $f0
	add  b                                           ; $6547: $80
	ldh  [rP1], a                                    ; $6548: $e0 $00
	ret  nz                                          ; $654a: $c0

	add  d                                           ; $654b: $82
	nop                                              ; $654c: $00
	dec  b                                           ; $654d: $05
	inc  c                                           ; $654e: $0c
	dec  de                                          ; $654f: $1b
	jr   jr_033_656e                                 ; $6550: $18 $1c

	ld   e, $0e                                      ; $6552: $1e $0e
	add  b                                           ; $6554: $80
	rlca                                             ; $6555: $07
	add  c                                           ; $6556: $81
	inc  bc                                          ; $6557: $03
	add  b                                           ; $6558: $80
	ld   bc, $0081                                   ; $6559: $01 $81 $00
	ld   c, a                                        ; $655c: $4f
	ld   sp, $c2ff                                   ; $655d: $31 $ff $c2
	rst  $38                                         ; $6560: $ff
	jr   nc, @+$81                                   ; $6561: $30 $7f

	ld   c, h                                        ; $6563: $4c
	rst  $38                                         ; $6564: $ff
	or   e                                           ; $6565: $b3
	rst  $38                                         ; $6566: $ff
	db   $ec                                         ; $6567: $ec
	rst  $30                                         ; $6568: $f7
	ld   [hl], d                                     ; $6569: $72
	scf                                              ; $656a: $37
	dec  e                                           ; $656b: $1d
	rla                                              ; $656c: $17
	or   [hl]                                        ; $656d: $b6

jr_033_656e:
	rst  $38                                         ; $656e: $ff
	ld   e, [hl]                                     ; $656f: $5e
	rst  $38                                         ; $6570: $ff
	rra                                              ; $6571: $1f
	rst  $38                                         ; $6572: $ff
	ldh  [rIE], a                                    ; $6573: $e0 $ff
	rrca                                             ; $6575: $0f
	rst  $38                                         ; $6576: $ff
	ld   [hl], b                                     ; $6577: $70
	rst  $38                                         ; $6578: $ff
	add  b                                           ; $6579: $80
	rst  $38                                         ; $657a: $ff
	ld   l, [hl]                                     ; $657b: $6e
	rst  $30                                         ; $657c: $f7
	ld   h, c                                        ; $657d: $61
	rst  $38                                         ; $657e: $ff
	rlca                                             ; $657f: $07
	rst  $38                                         ; $6580: $ff
	cp   $ff                                         ; $6581: $fe $ff
	pop  af                                          ; $6583: $f1
	rst  $38                                         ; $6584: $ff
	nop                                              ; $6585: $00
	rst  $38                                         ; $6586: $ff
	ld   c, $fe                                      ; $6587: $0e $fe
	ld   bc, $dcff                                   ; $6589: $01 $ff $dc
	rst  $28                                         ; $658c: $ef
	inc  l                                           ; $658d: $2c
	rst  $38                                         ; $658e: $ff
	sbc  c                                           ; $658f: $99
	rst  $38                                         ; $6590: $ff
	ld   h, [hl]                                     ; $6591: $66
	rst  $38                                         ; $6592: $ff
	inc  e                                           ; $6593: $1c
	rst  $38                                         ; $6594: $ff
	db   $e3                                         ; $6595: $e3
	db   $fd                                         ; $6596: $fd
	inc  e                                           ; $6597: $1c
	dec  [hl]                                        ; $6598: $35
	sub  b                                           ; $6599: $90
	db   $f4                                         ; $659a: $f4
	sub  $f0                                         ; $659b: $d6 $f0
	adc  b                                           ; $659d: $88
	rst  $38                                         ; $659e: $ff
	cp   $ff                                         ; $659f: $fe $ff
	ld   hl, sp-$01                                  ; $65a1: $f8 $ff
	push hl                                          ; $65a3: $e5
	rst  $38                                         ; $65a4: $ff
	sbc  e                                           ; $65a5: $9b
	rst  $38                                         ; $65a6: $ff
	ld   [hl], a                                     ; $65a7: $77
	rst  $38                                         ; $65a8: $ff
	rst  $28                                         ; $65a9: $ef
	rst  $38                                         ; $65aa: $ff
	sbc  [hl]                                        ; $65ab: $9e
	rst  $38                                         ; $65ac: $ff
	add  b                                           ; $65ad: $80
	rst  $30                                         ; $65ae: $f7
	db   $10                                         ; $65af: $10
	ld   l, h                                        ; $65b0: $6c
	rst  $28                                         ; $65b1: $ef
	db   $db                                         ; $65b2: $db
	rst  JumpTable                                         ; $65b3: $df
	or   a                                           ; $65b4: $b7
	cp   e                                           ; $65b5: $bb
	db   $e3                                         ; $65b6: $e3
	ei                                               ; $65b7: $fb
	set  7, e                                        ; $65b8: $cb $fb
	dec  hl                                          ; $65ba: $2b
	ld   a, [$bcfc]                                  ; $65bb: $fa $fc $bc
	db   $fc                                         ; $65be: $fc
	ldh  a, [$c0]                                    ; $65bf: $f0 $c0
	add  b                                           ; $65c1: $80
	ldh  [rSB], a                                    ; $65c2: $e0 $01
	ret  nz                                          ; $65c4: $c0

	ld   b, b                                        ; $65c5: $40
	add  b                                           ; $65c6: $80
	add  b                                           ; $65c7: $80
	add  l                                           ; $65c8: $85
	nop                                              ; $65c9: $00
	inc  de                                          ; $65ca: $13
	rlca                                             ; $65cb: $07
	rst  $38                                         ; $65cc: $ff
	rst  $30                                         ; $65cd: $f7
	rst  $38                                         ; $65ce: $ff
	rst  ToBoot                                         ; $65cf: $c7
	ei                                               ; $65d0: $fb
	inc  hl                                          ; $65d1: $23
	di                                               ; $65d2: $f3
	or   $f7                                         ; $65d3: $f6 $f7
	ld   a, l                                        ; $65d5: $7d
	rst  $38                                         ; $65d6: $ff
	db   $fd                                         ; $65d7: $fd
	rst  $38                                         ; $65d8: $ff
	xor  a                                           ; $65d9: $af
	rst  $38                                         ; $65da: $ff
	cp   l                                           ; $65db: $bd
	cp   b                                           ; $65dc: $b8
	jr   c, @+$32                                    ; $65dd: $38 $30

	add  c                                           ; $65df: $81
	ld   b, b                                        ; $65e0: $40
	ld   bc, $8000                                   ; $65e1: $01 $00 $80
	add  l                                           ; $65e4: $85
	nop                                              ; $65e5: $00
	adc  b                                           ; $65e6: $88
	rst  $38                                         ; $65e7: $ff
	add  b                                           ; $65e8: $80
	db   $fc                                         ; $65e9: $fc
	add  b                                           ; $65ea: $80
	ei                                               ; $65eb: $fb

jr_033_65ec:
	add  b                                           ; $65ec: $80
	ld   a, [$ff88]                                  ; $65ed: $fa $88 $ff
	add  b                                           ; $65f0: $80
	nop                                              ; $65f1: $00
	add  b                                           ; $65f2: $80
	rst  $38                                         ; $65f3: $ff
	sub  b                                           ; $65f4: $90
	nop                                              ; $65f5: $00
	adc  [hl]                                        ; $65f6: $8e
	ld   a, [$ff00]                                  ; $65f7: $fa $00 $ff
	add  b                                           ; $65fa: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65fb: $cf
	add  b                                           ; $65fc: $80
	call $8c80                                       ; $65fd: $cd $80 $8c

Call_033_6600:
	add  c                                           ; $6600: $81
	adc  b                                           ; $6601: $88
	nop                                              ; $6602: $00
	ld   [hl], a                                     ; $6603: $77
	add  b                                           ; $6604: $80
	ld   e, l                                        ; $6605: $5d
	add  b                                           ; $6606: $80
	ld   d, l                                        ; $6607: $55
	ld   bc, $8877                                   ; $6608: $01 $77 $88
	adc  l                                           ; $660b: $8d
	rst  $38                                         ; $660c: $ff
	nop                                              ; $660d: $00
	ld   d, $83                                      ; $660e: $16 $83
	ei                                               ; $6610: $fb
	nop                                              ; $6611: $00
	ld   sp, hl                                      ; $6612: $f9
	add  a                                           ; $6613: $87
	ei                                               ; $6614: $fb
	nop                                              ; $6615: $00
	ld   sp, hl                                      ; $6616: $f9
	adc  l                                           ; $6617: $8d
	ei                                               ; $6618: $fb
	nop                                              ; $6619: $00
	db   $db                                         ; $661a: $db
	adc  l                                           ; $661b: $8d
	ei                                               ; $661c: $fb
	nop                                              ; $661d: $00
	call c, $fe83                                    ; $661e: $dc $83 $fe
	add  b                                           ; $6621: $80
	rst  $38                                         ; $6622: $ff
	ld   [$fffe], sp                                 ; $6623: $08 $fe $ff
	add  sp, -$02                                    ; $6626: $e8 $fe
	ret  nz                                          ; $6628: $c0

	ld   hl, sp-$60                                  ; $6629: $f8 $a0
	ldh  [$94], a                                    ; $662b: $e0 $94
	add  a                                           ; $662d: $87
	ei                                               ; $662e: $fb
	add  h                                           ; $662f: $84
	ld   a, [$1000]                                  ; $6630: $fa $00 $10
	cp   l                                           ; $6633: $bd
	nop                                              ; $6634: $00
	nop                                              ; $6635: $00
	rst  $38                                         ; $6636: $ff
	add  c                                           ; $6637: $81
	nop                                              ; $6638: $00
	inc  b                                           ; $6639: $04
	inc  bc                                          ; $663a: $03
	ld   [bc], a                                     ; $663b: $02
	ld   b, $04                                      ; $663c: $06 $04
	inc  e                                           ; $663e: $1c
	add  b                                           ; $663f: $80
	db   $10                                         ; $6640: $10
	rlca                                             ; $6641: $07
	nop                                              ; $6642: $00
	ld   h, b                                        ; $6643: $60
	ld   b, b                                        ; $6644: $40
	ret  nz                                          ; $6645: $c0

	add  b                                           ; $6646: $80
	ld   h, b                                        ; $6647: $60
	db   $10                                         ; $6648: $10
	ldh  a, [$80]                                    ; $6649: $f0 $80
	add  b                                           ; $664b: $80
	adc  c                                           ; $664c: $89
	nop                                              ; $664d: $00
	nop                                              ; $664e: $00
	cp   $81                                         ; $664f: $fe $81
	ld   bc, $0300                                   ; $6651: $01 $00 $03
	add  b                                           ; $6654: $80
	ld   [bc], a                                     ; $6655: $02
	nop                                              ; $6656: $00
	nop                                              ; $6657: $00
	add  c                                           ; $6658: $81
	inc  b                                           ; $6659: $04
	nop                                              ; $665a: $00
	nop                                              ; $665b: $00
	add  d                                           ; $665c: $82
	ld   [$f800], sp                                 ; $665d: $08 $00 $f8
	adc  l                                           ; $6660: $8d
	nop                                              ; $6661: $00
	ld   bc, $00f0                                   ; $6662: $01 $f0 $00
	add  e                                           ; $6665: $83
	db   $10                                         ; $6666: $10
	add  c                                           ; $6667: $81
	nop                                              ; $6668: $00
	nop                                              ; $6669: $00
	jr   nz, jr_033_65ec                             ; $666a: $20 $80

	dec  d                                           ; $666c: $15
	inc  bc                                          ; $666d: $03
	ld   a, [hl+]                                    ; $666e: $2a
	ld   l, d                                        ; $666f: $6a
	ld   d, l                                        ; $6670: $55
	push de                                          ; $6671: $d5
	adc  b                                           ; $6672: $88
	nop                                              ; $6673: $00
	add  b                                           ; $6674: $80
	ld   d, l                                        ; $6675: $55
	add  b                                           ; $6676: $80
	xor  d                                           ; $6677: $aa
	ld   [bc], a                                     ; $6678: $02
	ld   d, l                                        ; $6679: $55
	ld   e, d                                        ; $667a: $5a
	nop                                              ; $667b: $00
	add  e                                           ; $667c: $83
	ld   [$0081], sp                                 ; $667d: $08 $81 $00
	nop                                              ; $6680: $00
	inc  b                                           ; $6681: $04
	add  b                                           ; $6682: $80
	ld   d, h                                        ; $6683: $54
	add  b                                           ; $6684: $80
	xor  b                                           ; $6685: $a8
	ld   bc, $5754                                   ; $6686: $01 $54 $57
	db   $fd                                         ; $6689: $fd
	nop                                              ; $668a: $00
	db   $10                                         ; $668b: $10
	ld   b, h                                        ; $668c: $44
	nop                                              ; $668d: $00
	call z, $9900                                    ; $668e: $cc $00 $99
	nop                                              ; $6691: $00
	ld   [hl], e                                     ; $6692: $73
	nop                                              ; $6693: $00
	and  $00                                         ; $6694: $e6 $00
	sbc  h                                           ; $6696: $9c
	nop                                              ; $6697: $00
	ld   l, l                                        ; $6698: $6d
	nop                                              ; $6699: $00
	adc  d                                           ; $669a: $8a
	nop                                              ; $669b: $00
	rst  $38                                         ; $669c: $ff
	db   $dd                                         ; $669d: $dd
	nop                                              ; $669e: $00
	ld   b, h                                        ; $669f: $44
	ld   h, d                                        ; $66a0: $62
	nop                                              ; $66a1: $00
	and  $00                                         ; $66a2: $e6 $00
	adc  h                                           ; $66a4: $8c
	nop                                              ; $66a5: $00
	jr   jr_033_66a8                                 ; $66a6: $18 $00

jr_033_66a8:
	ld   sp, $6300                                   ; $66a8: $31 $00 $63
	nop                                              ; $66ab: $00
	sub  a                                           ; $66ac: $97
	nop                                              ; $66ad: $00
	ld   a, [hl+]                                    ; $66ae: $2a
	nop                                              ; $66af: $00
	xor  $00                                         ; $66b0: $ee $00
	inc  sp                                          ; $66b2: $33
	nop                                              ; $66b3: $00
	ld   h, [hl]                                     ; $66b4: $66
	nop                                              ; $66b5: $00
	call z, $9900                                    ; $66b6: $cc $00 $99
	nop                                              ; $66b9: $00
	inc  sp                                          ; $66ba: $33
	nop                                              ; $66bb: $00
	rst  $30                                         ; $66bc: $f7
	nop                                              ; $66bd: $00
	ld   a, [hl+]                                    ; $66be: $2a
	nop                                              ; $66bf: $00
	xor  $00                                         ; $66c0: $ee $00
	inc  sp                                          ; $66c2: $33
	nop                                              ; $66c3: $00
	ld   h, [hl]                                     ; $66c4: $66
	nop                                              ; $66c5: $00
	call z, $9800                                    ; $66c6: $cc $00 $98
	nop                                              ; $66c9: $00
	ld   sp, $7600                                   ; $66ca: $31 $00 $76
	nop                                              ; $66cd: $00
	xor  b                                           ; $66ce: $a8
	nop                                              ; $66cf: $00
	xor  $00                                         ; $66d0: $ee $00
	inc  bc                                          ; $66d2: $03
	nop                                              ; $66d3: $00
	ld   [hl], $00                                   ; $66d4: $36 $00
	ld   h, b                                        ; $66d6: $60
	nop                                              ; $66d7: $00
	call z, $9900                                    ; $66d8: $cc $00 $99
	nop                                              ; $66db: $00
	ld   h, h                                        ; $66dc: $64
	nop                                              ; $66dd: $00
	adc  d                                           ; $66de: $8a
	nop                                              ; $66df: $00
	xor  $00                                         ; $66e0: $ee $00
	inc  sp                                          ; $66e2: $33
	nop                                              ; $66e3: $00
	ld   h, [hl]                                     ; $66e4: $66
	add  c                                           ; $66e5: $81
	nop                                              ; $66e6: $00
	ld   a, [bc]                                     ; $66e7: $0a
	call z, $8000                                    ; $66e8: $cc $00 $80
	nop                                              ; $66eb: $00
	ld   e, l                                        ; $66ec: $5d
	nop                                              ; $66ed: $00
	xor  d                                           ; $66ee: $aa
	nop                                              ; $66ef: $00
	xor  $00                                         ; $66f0: $ee $00
	inc  sp                                          ; $66f2: $33
	add  c                                           ; $66f3: $81
	nop                                              ; $66f4: $00
	nop                                              ; $66f5: $00
	ld   h, [hl]                                     ; $66f6: $66
	add  c                                           ; $66f7: $81
	nop                                              ; $66f8: $00
	ld   b, $cc                                      ; $66f9: $06 $cc
	nop                                              ; $66fb: $00
	ld   d, l                                        ; $66fc: $55
	nop                                              ; $66fd: $00
	ld   [hl+], a                                    ; $66fe: $22
	nop                                              ; $66ff: $00
	xor  $81                                         ; $6700: $ee $81
	nop                                              ; $6702: $00

Call_033_6703:
	inc  b                                           ; $6703: $04
	jr   nc, jr_033_6706                             ; $6704: $30 $00

jr_033_6706:
	inc  bc                                          ; $6706: $03
	nop                                              ; $6707: $00
	ld   h, b                                        ; $6708: $60
	add  c                                           ; $6709: $81
	nop                                              ; $670a: $00
	inc  b                                           ; $670b: $04
	rla                                              ; $670c: $17
	nop                                              ; $670d: $00
	xor  d                                           ; $670e: $aa
	nop                                              ; $670f: $00
	rst  $30                                         ; $6710: $f7
	add  e                                           ; $6711: $83
	nop                                              ; $6712: $00
	ld   [bc], a                                     ; $6713: $02
	jr   jr_033_6716                                 ; $6714: $18 $00

jr_033_6716:
	ld   bc, $0081                                   ; $6716: $01 $81 $00
	inc  b                                           ; $6719: $04
	ld   b, h                                        ; $671a: $44
	nop                                              ; $671b: $00
	xor  d                                           ; $671c: $aa
	nop                                              ; $671d: $00
	ld   [hl], a                                     ; $671e: $77
	add  l                                           ; $671f: $85
	nop                                              ; $6720: $00
	nop                                              ; $6721: $00
	add  b                                           ; $6722: $80
	add  c                                           ; $6723: $81
	nop                                              ; $6724: $00
	inc  b                                           ; $6725: $04
	push de                                          ; $6726: $d5
	nop                                              ; $6727: $00
	ld   [hl+], a                                    ; $6728: $22
	nop                                              ; $6729: $00
	ld   [hl], a                                     ; $672a: $77
	adc  c                                           ; $672b: $89
	nop                                              ; $672c: $00
	inc  b                                           ; $672d: $04
	ld   d, l                                        ; $672e: $55
	nop                                              ; $672f: $00
	ld   [hl+], a                                    ; $6730: $22
	nop                                              ; $6731: $00
	ld   [hl], a                                     ; $6732: $77
	add  e                                           ; $6733: $83
	nop                                              ; $6734: $00
	nop                                              ; $6735: $00
	inc  c                                           ; $6736: $0c
	add  e                                           ; $6737: $83
	nop                                              ; $6738: $00
	ld   [$0051], sp                                 ; $6739: $08 $51 $00
	ld   a, [hl+]                                    ; $673c: $2a
	nop                                              ; $673d: $00
	ld   [hl], a                                     ; $673e: $77
	nop                                              ; $673f: $00
	ret  nz                                          ; $6740: $c0

	nop                                              ; $6741: $00
	inc  c                                           ; $6742: $0c
	add  c                                           ; $6743: $81
	nop                                              ; $6744: $00
	ld   a, [bc]                                     ; $6745: $0a
	ld   b, $00                                      ; $6746: $06 $00
	ld   h, b                                        ; $6748: $60
	nop                                              ; $6749: $00
	ld   d, l                                        ; $674a: $55
	nop                                              ; $674b: $00
	adc  b                                           ; $674c: $88
	nop                                              ; $674d: $00
	ld   [hl], a                                     ; $674e: $77
	nop                                              ; $674f: $00
	call z, $0081                                    ; $6750: $cc $81 $00
	nop                                              ; $6753: $00
	ld   h, [hl]                                     ; $6754: $66
	add  c                                           ; $6755: $81
	nop                                              ; $6756: $00
	add  hl, de                                      ; $6757: $19
	inc  sp                                          ; $6758: $33
	nop                                              ; $6759: $00
	ld   b, h                                        ; $675a: $44
	nop                                              ; $675b: $00
	xor  d                                           ; $675c: $aa
	nop                                              ; $675d: $00
	ld   [hl], a                                     ; $675e: $77
	nop                                              ; $675f: $00
	call z, $0600                                    ; $6760: $cc $00 $06
	nop                                              ; $6763: $00
	ld   h, b                                        ; $6764: $60
	nop                                              ; $6765: $00
	inc  bc                                          ; $6766: $03
	nop                                              ; $6767: $00
	ld   sp, $4d00                                   ; $6768: $31 $00 $4d
	nop                                              ; $676b: $00
	and  d                                           ; $676c: $a2
	nop                                              ; $676d: $00
	ld   [hl], a                                     ; $676e: $77
	nop                                              ; $676f: $00
	call $8001                                       ; $6770: $cd $01 $80
	inc  bc                                          ; $6773: $03
	ld   bc, $0563                                   ; $6774: $01 $63 $05
	add  b                                           ; $6777: $80
	dec  c                                           ; $6778: $0d
	ld   a, [bc]                                     ; $6779: $0a
	dec  a                                           ; $677a: $3d
	ld   c, $6e                                      ; $677b: $0e $6e
	ld   a, [hl+]                                    ; $677d: $2a
	xor  d                                           ; $677e: $aa
	nop                                              ; $677f: $00
	cp   e                                           ; $6780: $bb
	nop                                              ; $6781: $00
	ld   h, [hl]                                     ; $6782: $66
	nop                                              ; $6783: $00
	inc  sp                                          ; $6784: $33
	add  c                                           ; $6785: $81
	nop                                              ; $6786: $00
	ld   d, $19                                      ; $6787: $16 $19
	nop                                              ; $6789: $00
	adc  h                                           ; $678a: $8c
	nop                                              ; $678b: $00
	ld   d, e                                        ; $678c: $53
	nop                                              ; $678d: $00
	jr   z, jr_033_6790                              ; $678e: $28 $00

jr_033_6790:
	cp   e                                           ; $6790: $bb
	nop                                              ; $6791: $00
	ld   h, [hl]                                     ; $6792: $66
	nop                                              ; $6793: $00
	inc  sp                                          ; $6794: $33
	nop                                              ; $6795: $00
	ld   bc, $9800                                   ; $6796: $01 $00 $98
	nop                                              ; $6799: $00
	call z, $3300                                    ; $679a: $cc $00 $33
	nop                                              ; $679d: $00
	adc  b                                           ; $679e: $88
	add  b                                           ; $679f: $80
	nop                                              ; $67a0: $00
	add  b                                           ; $67a1: $80
	inc  bc                                          ; $67a2: $03
	adc  e                                           ; $67a3: $8b
	nop                                              ; $67a4: $00
	inc  b                                           ; $67a5: $04
	jp   c, $25f7                                    ; $67a6: $da $f7 $25

	dec  [hl]                                        ; $67a9: $35
	dec  a                                           ; $67aa: $3d
	adc  c                                           ; $67ab: $89
	nop                                              ; $67ac: $00
	nop                                              ; $67ad: $00
	rst  $38                                         ; $67ae: $ff
	sbc  l                                           ; $67af: $9d
	nop                                              ; $67b0: $00
	rra                                              ; $67b1: $1f
	ld   b, d                                        ; $67b2: $42
	nop                                              ; $67b3: $00
	ld   h, e                                        ; $67b4: $63
	nop                                              ; $67b5: $00
	ld   sp, $9800                                   ; $67b6: $31 $00 $98
	nop                                              ; $67b9: $00
	call z, Call_033_6600                            ; $67ba: $cc $00 $66
	nop                                              ; $67bd: $00
	ld   [hl], a                                     ; $67be: $77
	nop                                              ; $67bf: $00
	xor  d                                           ; $67c0: $aa
	nop                                              ; $67c1: $00
	call c, $3200                                    ; $67c2: $dc $00 $32
	nop                                              ; $67c5: $00
	sbc  c                                           ; $67c6: $99
	nop                                              ; $67c7: $00
	call z, Call_033_6600                            ; $67c8: $cc $00 $66
	nop                                              ; $67cb: $00
	inc  sp                                          ; $67cc: $33
	nop                                              ; $67cd: $00
	ld   c, h                                        ; $67ce: $4c
	nop                                              ; $67cf: $00
	and  d                                           ; $67d0: $a2
	nop                                              ; $67d1: $00
	add  l                                           ; $67d2: $85
	rst  $38                                         ; $67d3: $ff
	add  b                                           ; $67d4: $80
	push de                                          ; $67d5: $d5
	dec  b                                           ; $67d6: $05
	xor  d                                           ; $67d7: $aa
	rst  $38                                         ; $67d8: $ff
	nop                                              ; $67d9: $00
	rst  $38                                         ; $67da: $ff
	nop                                              ; $67db: $00
	xor  d                                           ; $67dc: $aa
	add  b                                           ; $67dd: $80
	ld   d, l                                        ; $67de: $55
	add  b                                           ; $67df: $80
	rst  $38                                         ; $67e0: $ff
	add  d                                           ; $67e1: $82
	nop                                              ; $67e2: $00
	add  b                                           ; $67e3: $80
	xor  d                                           ; $67e4: $aa
	add  b                                           ; $67e5: $80
	ld   d, l                                        ; $67e6: $55
	add  h                                           ; $67e7: $84
	rst  $38                                         ; $67e8: $ff
	add  b                                           ; $67e9: $80
	ld   h, b                                        ; $67ea: $60
	adc  e                                           ; $67eb: $8b
	nop                                              ; $67ec: $00
	inc  b                                           ; $67ed: $04
	ldh  a, [$60]                                    ; $67ee: $f0 $60
	ldh  a, [rP1]                                    ; $67f0: $f0 $00
	ld   h, b                                        ; $67f2: $60
	adc  l                                           ; $67f3: $8d
	nop                                              ; $67f4: $00
	ld   d, $03                                      ; $67f5: $16 $03
	nop                                              ; $67f7: $00
	ld   b, $0b                                      ; $67f8: $06 $0b
	nop                                              ; $67fa: $00
	dec  b                                           ; $67fb: $05
	inc  d                                           ; $67fc: $14
	rrca                                             ; $67fd: $0f
	dec  hl                                          ; $67fe: $2b
	inc  d                                           ; $67ff: $14
	db   $10                                         ; $6800: $10
	dec  b                                           ; $6801: $05
	ld   a, [hl-]                                    ; $6802: $3a
	nop                                              ; $6803: $00
	pop  hl                                          ; $6804: $e1
	nop                                              ; $6805: $00
	ld   [de], a                                     ; $6806: $12
	pop  hl                                          ; $6807: $e1
	ld   b, c                                        ; $6808: $41
	and  c                                           ; $6809: $a1
	add  c                                           ; $680a: $81
	pop  bc                                          ; $680b: $c1
	ld   c, l                                        ; $680c: $4d
	add  b                                           ; $680d: $80
	ldh  a, [c]                                      ; $680e: $f2
	add  b                                           ; $680f: $80
	ld   [de], a                                     ; $6810: $12
	ld   bc, $bc43                                   ; $6811: $01 $43 $bc
	add  c                                           ; $6814: $81
	nop                                              ; $6815: $00
	ld   d, $87                                      ; $6816: $16 $87
	nop                                              ; $6818: $00
	ld   [$4f07], sp                                 ; $6819: $08 $07 $4f
	nop                                              ; $681c: $00
	jr   z, @+$49                                    ; $681d: $28 $47

	rla                                              ; $681f: $17
	pop  bc                                          ; $6820: $c1
	adc  [hl]                                        ; $6821: $8e
	rra                                              ; $6822: $1f
	rst  $28                                         ; $6823: $ef
	nop                                              ; $6824: $00
	ret  nz                                          ; $6825: $c0

	nop                                              ; $6826: $00
	dec  sp                                          ; $6827: $3b
	ld   b, b                                        ; $6828: $40
	ld   b, [hl]                                     ; $6829: $46
	ei                                               ; $682a: $fb
	reti                                             ; $682b: $d9


	and  b                                           ; $682c: $a0
	add  b                                           ; $682d: $80
	add  b                                           ; $682e: $80
	di                                               ; $682f: $f3
	inc  de                                          ; $6830: $13
	nop                                              ; $6831: $00
	ret  nz                                          ; $6832: $c0

	rst  $30                                         ; $6833: $f7
	ret  z                                           ; $6834: $c8

	nop                                              ; $6835: $00
	jr   nz, jr_033_6838                             ; $6836: $20 $00

jr_033_6838:
	call c, $2220                                    ; $6838: $dc $20 $22
	db   $fc                                         ; $683b: $fc
	ld   a, [hl]                                     ; $683c: $7e
	ret  nz                                          ; $683d: $c0

	ld   b, l                                        ; $683e: $45
	ldh  a, [$d6]                                    ; $683f: $f0 $d6
	and  c                                           ; $6841: $a1
	add  h                                           ; $6842: $84
	rst  $38                                         ; $6843: $ff
	dec  b                                           ; $6844: $05
	add  e                                           ; $6845: $83
	nop                                              ; $6846: $00
	ld   a, [bc]                                     ; $6847: $0a
	inc  a                                           ; $6848: $3c
	ld   b, b                                        ; $6849: $40
	jp   nz, $197c                                   ; $684a: $c2 $7c $19

	or   $50                                         ; $684d: $f6 $50
	sub  e                                           ; $684f: $93
	ld   d, l                                        ; $6850: $55
	ld   de, $8daa                                   ; $6851: $11 $aa $8d
	nop                                              ; $6854: $00
	inc  bc                                          ; $6855: $03
	ld   [bc], a                                     ; $6856: $02
	ld   bc, $0204                                   ; $6857: $01 $04 $02
	add  b                                           ; $685a: $80
	inc  bc                                          ; $685b: $03
	ld   a, [bc]                                     ; $685c: $0a
	ld   a, [hl-]                                    ; $685d: $3a
	rlca                                             ; $685e: $07
	ld   b, a                                        ; $685f: $47
	inc  a                                           ; $6860: $3c
	ld   a, h                                        ; $6861: $7c
	rrca                                             ; $6862: $0f
	ld   e, a                                        ; $6863: $5f
	ld   sp, $66e5                                   ; $6864: $31 $e5 $66
	db   $dd                                         ; $6867: $dd
	add  c                                           ; $6868: $81
	nop                                              ; $6869: $00
	inc  c                                           ; $686a: $0c
	and  b                                           ; $686b: $a0
	ld   b, b                                        ; $686c: $40
	db   $10                                         ; $686d: $10
	ret  nz                                          ; $686e: $c0

	ret  nc                                          ; $686f: $d0

	nop                                              ; $6870: $00
	ld   h, c                                        ; $6871: $61
	nop                                              ; $6872: $00
	inc  bc                                          ; $6873: $03
	ld   bc, $8180                                   ; $6874: $01 $80 $81
	add  d                                           ; $6877: $82
	add  c                                           ; $6878: $81
	nop                                              ; $6879: $00
	inc  c                                           ; $687a: $0c
	rra                                              ; $687b: $1f
	ldh  [rP1], a                                    ; $687c: $e0 $00
	rra                                              ; $687e: $1f
	rrca                                             ; $687f: $0f
	ld   [hl], d                                     ; $6880: $72
	ld   [bc], a                                     ; $6881: $02
	db   $fc                                         ; $6882: $fc
	sbc  a                                           ; $6883: $9f
	adc  d                                           ; $6884: $8a
	add  b                                           ; $6885: $80
	inc  c                                           ; $6886: $0c
	ld   a, [$0081]                                  ; $6887: $fa $81 $00
	ld   bc, $00c0                                   ; $688a: $01 $c0 $00
	add  b                                           ; $688d: $80
	ld   b, b                                        ; $688e: $40
	ld   [$81c0], sp                                 ; $688f: $08 $c0 $81
	add  d                                           ; $6892: $82
	inc  b                                           ; $6893: $04
	nop                                              ; $6894: $00
	dec  bc                                          ; $6895: $0b
	ld   de, $1b06                                   ; $6896: $11 $06 $1b
	add  l                                           ; $6899: $85
	nop                                              ; $689a: $00
	ld   [$02fc], sp                                 ; $689b: $08 $fc $02
	inc  b                                           ; $689e: $04
	db   $fd                                         ; $689f: $fd
	jp   nc, $d06e                                   ; $68a0: $d2 $6e $d0

	add  $ad                                         ; $68a3: $c6 $ad
	add  b                                           ; $68a5: $80
	nop                                              ; $68a6: $00
	nop                                              ; $68a7: $00
	ld   bc, $0080                                   ; $68a8: $01 $80 $00
	ld   a, [de]                                     ; $68ab: $1a
	ld   [bc], a                                     ; $68ac: $02
	ld   bc, $0205                                   ; $68ad: $01 $05 $02
	ld   a, [bc]                                     ; $68b0: $0a
	dec  d                                           ; $68b1: $15
	dec  h                                           ; $68b2: $25
	ld   a, [bc]                                     ; $68b3: $0a
	ld   c, b                                        ; $68b4: $48
	scf                                              ; $68b5: $37
	ld   c, d                                        ; $68b6: $4a
	nop                                              ; $68b7: $00
	ret  nz                                          ; $68b8: $c0

	nop                                              ; $68b9: $00
	inc  hl                                          ; $68ba: $23
	add  b                                           ; $68bb: $80
	and  b                                           ; $68bc: $a0
	and  c                                           ; $68bd: $a1
	sub  l                                           ; $68be: $95
	ld   b, e                                        ; $68bf: $43
	res  4, d                                        ; $68c0: $cb $a2
	ld   h, e                                        ; $68c2: $63
	dec  d                                           ; $68c3: $15
	push de                                          ; $68c4: $d5
	xor  h                                           ; $68c5: $ac
	jp   nc, $0081                                   ; $68c6: $d2 $81 $00

	ld   [bc], a                                     ; $68c9: $02
	add  b                                           ; $68ca: $80
	ld   b, b                                        ; $68cb: $40
	ld   c, a                                        ; $68cc: $4f
	add  b                                           ; $68cd: $80
	ld   b, b                                        ; $68ce: $40
	scf                                              ; $68cf: $37
	rlca                                             ; $68d0: $07
	adc  h                                           ; $68d1: $8c
	inc  bc                                          ; $68d2: $03
	dec  sp                                          ; $68d3: $3b
	inc  bc                                          ; $68d4: $03
	ld   b, b                                        ; $68d5: $40
	inc  a                                           ; $68d6: $3c
	ld   b, e                                        ; $68d7: $43
	nop                                              ; $68d8: $00
	ld   l, h                                        ; $68d9: $6c
	nop                                              ; $68da: $00
	sub  d                                           ; $68db: $92
	ld   l, h                                        ; $68dc: $6c
	inc  l                                           ; $68dd: $2c
	ld   [hl], b                                     ; $68de: $70
	sbc  $e0                                         ; $68df: $de $e0
	db   $ec                                         ; $68e1: $ec
	ldh  [c], a                                      ; $68e2: $e2
	nop                                              ; $68e3: $00
	db   $fc                                         ; $68e4: $fc
	cp   $0a                                         ; $68e5: $fe $0a
	ret                                              ; $68e7: $c9


	ld   d, $36                                      ; $68e8: $16 $36
	nop                                              ; $68ea: $00
	db   $10                                         ; $68eb: $10
	rla                                              ; $68ec: $17
	ld   h, $19                                      ; $68ed: $26 $19
	inc  e                                           ; $68ef: $1c
	rlca                                             ; $68f0: $07
	ld   b, [hl]                                     ; $68f1: $46
	dec  a                                           ; $68f2: $3d
	ld   a, [hl-]                                    ; $68f3: $3a
	nop                                              ; $68f4: $00
	ld   a, l                                        ; $68f5: $7d
	nop                                              ; $68f6: $00
	rst  $38                                         ; $68f7: $ff
	and  [hl]                                        ; $68f8: $a6
	and  a                                           ; $68f9: $a7
	ld   c, h                                        ; $68fa: $4c
	ld   b, [hl]                                     ; $68fb: $46
	sbc  b                                           ; $68fc: $98
	dec  de                                          ; $68fd: $1b
	sbc  b                                           ; $68fe: $98
	jr   nc, @+$11                                   ; $68ff: $30 $0f

	ccf                                              ; $6901: $3f
	ret  nz                                          ; $6902: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6903: $cf
	nop                                              ; $6904: $00
	ldh  [rP1], a                                    ; $6905: $e0 $00
	rra                                              ; $6907: $1f
	add  b                                           ; $6908: $80
	rrca                                             ; $6909: $0f
	rra                                              ; $690a: $1f
	ld   [$0f28], sp                                 ; $690b: $08 $28 $0f
	rst  ToBoot                                         ; $690e: $c7
	jr   @-$6e                                       ; $690f: $18 $90

	sbc  a                                           ; $6911: $9f
	rra                                              ; $6912: $1f
	ld   sp, $00ff                                   ; $6913: $31 $ff $00
	ld   sp, $df00                                   ; $6916: $31 $00 $df
	db   $e3                                         ; $6919: $e3
	bit  1, a                                        ; $691a: $cb $4f
	ld   h, l                                        ; $691c: $65
	cp   $9c                                         ; $691d: $fe $9c
	rst  ToBoot                                         ; $691f: $c7
	xor  a                                           ; $6920: $af
	adc  h                                           ; $6921: $8c
	add  h                                           ; $6922: $84
	adc  a                                           ; $6923: $8f
	rst  JumpTable                                         ; $6924: $df
	ld   b, b                                        ; $6925: $40
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6926: $cf
	nop                                              ; $6927: $00
	cp   a                                           ; $6928: $bf
	ld   h, d                                        ; $6929: $62
	ld   [hl+], a                                    ; $692a: $22
	add  b                                           ; $692b: $80
	ldh  a, [c]                                      ; $692c: $f2
	rla                                              ; $692d: $17
	ld   a, [hl+]                                    ; $692e: $2a
	ld   a, [bc]                                     ; $692f: $0a
	db   $e3                                         ; $6930: $e3
	rst  $28                                         ; $6931: $ef
	ld   h, c                                        ; $6932: $61
	ld   d, e                                        ; $6933: $53
	ret  nz                                          ; $6934: $c0

	pop  bc                                          ; $6935: $c1
	nop                                              ; $6936: $00
	ldh  [rP1], a                                    ; $6937: $e0 $00
	ld   l, e                                        ; $6939: $6b
	ld   sp, $232f                                   ; $693a: $31 $2f $23
	add  b                                           ; $693d: $80
	ld   h, e                                        ; $693e: $63
	ld   [$01c6], sp                                 ; $693f: $08 $c6 $01
	sbc  h                                           ; $6942: $9c
	ld   a, d                                        ; $6943: $7a
	nop                                              ; $6944: $00
	sbc  h                                           ; $6945: $9c
	add  c                                           ; $6946: $81
	nop                                              ; $6947: $00
	ld   e, e                                        ; $6948: $5b
	inc  bc                                          ; $6949: $03
	rst  $38                                         ; $694a: $ff
	nop                                              ; $694b: $00
	rst  $38                                         ; $694c: $ff
	nop                                              ; $694d: $00
	rst  $38                                         ; $694e: $ff
	nop                                              ; $694f: $00
	rst  $38                                         ; $6950: $ff
	nop                                              ; $6951: $00
	rst  $38                                         ; $6952: $ff
	nop                                              ; $6953: $00
	rst  $38                                         ; $6954: $ff
	nop                                              ; $6955: $00
	rst  $38                                         ; $6956: $ff
	nop                                              ; $6957: $00
	rst  $38                                         ; $6958: $ff
	nop                                              ; $6959: $00
	rst  $38                                         ; $695a: $ff
	nop                                              ; $695b: $00
	rst  $38                                         ; $695c: $ff
	nop                                              ; $695d: $00
	rst  $38                                         ; $695e: $ff
	nop                                              ; $695f: $00
	rst  $38                                         ; $6960: $ff
	nop                                              ; $6961: $00
	rst  $38                                         ; $6962: $ff

jr_033_6963:
	nop                                              ; $6963: $00
	rst  $38                                         ; $6964: $ff
	nop                                              ; $6965: $00
	rst  $38                                         ; $6966: $ff
	nop                                              ; $6967: $00
	rst  $28                                         ; $6968: $ef
	nop                                              ; $6969: $00
	nop                                              ; $696a: $00
	rst  $38                                         ; $696b: $ff
	adc  l                                           ; $696c: $8d
	nop                                              ; $696d: $00
	add  b                                           ; $696e: $80
	rst  $38                                         ; $696f: $ff
	add  b                                           ; $6970: $80
	ld   hl, sp+$06                                  ; $6971: $f8 $06
	ldh  a, [$f7]                                    ; $6973: $f0 $f7
	ldh  [$e8], a                                    ; $6975: $e0 $e8
	jp   $d7d3                                       ; $6977: $c3 $d3 $d7


	add  b                                           ; $697a: $80
	sub  $81                                         ; $697b: $d6 $81
	call nc, $e301                                   ; $697d: $d4 $01 $e3
	rst  $38                                         ; $6980: $ff
	add  c                                           ; $6981: $81
	nop                                              ; $6982: $00
	nop                                              ; $6983: $00
	rst  $38                                         ; $6984: $ff
	add  b                                           ; $6985: $80
	nop                                              ; $6986: $00
	add  c                                           ; $6987: $81
	rst  $38                                         ; $6988: $ff
	add  e                                           ; $6989: $83
	nop                                              ; $698a: $00
	add  b                                           ; $698b: $80
	add  b                                           ; $698c: $80
	inc  c                                           ; $698d: $0c
	ccf                                              ; $698e: $3f
	nop                                              ; $698f: $00
	ld   a, $80                                      ; $6990: $3e $80
	inc  bc                                          ; $6992: $03
	nop                                              ; $6993: $00
	add  [hl]                                        ; $6994: $86
	add  b                                           ; $6995: $80
	adc  [hl]                                        ; $6996: $8e
	nop                                              ; $6997: $00
	ld   a, e                                        ; $6998: $7b
	nop                                              ; $6999: $00
	ld   [hl], c                                     ; $699a: $71
	add  c                                           ; $699b: $81
	nop                                              ; $699c: $00
	ld   [bc], a                                     ; $699d: $02

jr_033_699e:
	ld   a, [hl]                                     ; $699e: $7e
	nop                                              ; $699f: $00
	ld   a, h                                        ; $69a0: $7c
	add  l                                           ; $69a1: $85
	nop                                              ; $69a2: $00
	inc  bc                                          ; $69a3: $03
	ld   a, h                                        ; $69a4: $7c
	nop                                              ; $69a5: $00
	ld   a, [hl]                                     ; $69a6: $7e
	nop                                              ; $69a7: $00
	add  b                                           ; $69a8: $80
	ld   bc, $fc05                                   ; $69a9: $01 $05 $fc
	nop                                              ; $69ac: $00
	ld   hl, sp+$01                                  ; $69ad: $f8 $01
	jr   nz, jr_033_69b1                             ; $69af: $20 $00

jr_033_69b1:
	add  b                                           ; $69b1: $80
	ld   bc, $1d05                                   ; $69b2: $01 $05 $1d
	nop                                              ; $69b5: $00
	ret  c                                           ; $69b6: $d8

	nop                                              ; $69b7: $00
	ldh  [rP1], a                                    ; $69b8: $e0 $00
	add  b                                           ; $69ba: $80
	ret  nz                                          ; $69bb: $c0

	ld   b, $1f                                      ; $69bc: $06 $1f
	nop                                              ; $69be: $00
	rrca                                             ; $69bf: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69c0: $cf
	ld   c, a                                        ; $69c1: $4f
	ld   c, b                                        ; $69c2: $48
	ret  c                                           ; $69c3: $d8

	add  b                                           ; $69c4: $80
	ei                                               ; $69c5: $fb
	add  e                                           ; $69c6: $83
	nop                                              ; $69c7: $00
	add  b                                           ; $69c8: $80
	rlca                                             ; $69c9: $07
	inc  b                                           ; $69ca: $04
	di                                               ; $69cb: $f3
	dec  bc                                          ; $69cc: $0b
	pop  af                                          ; $69cd: $f1
	push af                                          ; $69ce: $f5
	ld   hl, sp-$80                                  ; $69cf: $f8 $80
	ld   a, [bc]                                     ; $69d1: $0a
	add  b                                           ; $69d2: $80
	ldh  [c], a                                      ; $69d3: $e2
	add  b                                           ; $69d4: $80
	ld   [hl-], a                                    ; $69d5: $32
	add  c                                           ; $69d6: $81
	ld   [de], a                                     ; $69d7: $12
	ld   b, $f6                                      ; $69d8: $06 $f6
	ldh  [$df], a                                    ; $69da: $e0 $df
	ret  nz                                          ; $69dc: $c0

	cp   a                                           ; $69dd: $bf
	sbc  a                                           ; $69de: $9f
	ld   a, a                                        ; $69df: $7f
	add  b                                           ; $69e0: $80
	jr   nc, jr_033_6963                             ; $69e1: $30 $80

	daa                                              ; $69e3: $27
	add  b                                           ; $69e4: $80
	inc  l                                           ; $69e5: $2c
	add  c                                           ; $69e6: $81
	jr   z, jr_033_69f1                              ; $69e7: $28 $08

	ld   l, e                                        ; $69e9: $6b
	inc  bc                                          ; $69ea: $03
	ldh  a, [$08]                                    ; $69eb: $f0 $08
	add  sp, -$17                                    ; $69ed: $e8 $e9
	ld   hl, sp+$1a                                  ; $69ef: $f8 $1a

jr_033_69f1:
	dec  de                                          ; $69f1: $1b
	add  b                                           ; $69f2: $80
	rst  JumpTable                                         ; $69f3: $df
	add  e                                           ; $69f4: $83
	nop                                              ; $69f5: $00
	add  b                                           ; $69f6: $80
	ret  nz                                          ; $69f7: $c0

	ld   b, $1f                                      ; $69f8: $06 $1f
	nop                                              ; $69fa: $00
	ld   c, $80                                      ; $69fb: $0e $80
	ld   a, $00                                      ; $69fd: $3e $00
	xor  [hl]                                        ; $69ff: $ae
	add  b                                           ; $6a00: $80
	add  b                                           ; $6a01: $80
	inc  b                                           ; $6a02: $04
	nop                                              ; $6a03: $00
	rra                                              ; $6a04: $1f
	nop                                              ; $6a05: $00
	ld   e, $00                                      ; $6a06: $1e $00
	add  b                                           ; $6a08: $80
	ld   [hl], b                                     ; $6a09: $70
	ld   [$0006], sp                                 ; $6a0a: $08 $06 $00
	ld   c, $00                                      ; $6a0d: $0e $00
	stop                                             ; $6a0f: $10 $00
	ld   [hl], b                                     ; $6a11: $70
	nop                                              ; $6a12: $00
	ld   h, b                                        ; $6a13: $60
	add  c                                           ; $6a14: $81
	nop                                              ; $6a15: $00
	ld   bc, $0008                                   ; $6a16: $01 $08 $00
	add  b                                           ; $6a19: $80
	adc  a                                           ; $6a1a: $8f
	nop                                              ; $6a1b: $00
	jr   nz, jr_033_699e                             ; $6a1c: $20 $80

	nop                                              ; $6a1e: $00
	db   $10                                         ; $6a1f: $10
	ld   bc, $0060                                   ; $6a20: $01 $60 $00
	add  hl, bc                                      ; $6a23: $09
	ld   bc, $00cd                                   ; $6a24: $01 $cd $00
	ld   a, b                                        ; $6a27: $78
	nop                                              ; $6a28: $00
	db   $fc                                         ; $6a29: $fc
	nop                                              ; $6a2a: $00
	rra                                              ; $6a2b: $1f
	rst  JumpTable                                         ; $6a2c: $df
	ret  nz                                          ; $6a2d: $c0

	add  b                                           ; $6a2e: $80
	rst  $38                                         ; $6a2f: $ff
	nop                                              ; $6a30: $00
	add  c                                           ; $6a31: $81
	ld   a, a                                        ; $6a32: $7f
	ld   bc, $9f80                                   ; $6a33: $01 $80 $9f
	adc  l                                           ; $6a36: $8d
	rst  JumpTable                                         ; $6a37: $df
	inc  bc                                          ; $6a38: $03
	rst  $38                                         ; $6a39: $ff
	cp   a                                           ; $6a3a: $bf
	rst  $38                                         ; $6a3b: $ff
	ld   a, a                                        ; $6a3c: $7f
	add  b                                           ; $6a3d: $80
	rst  $38                                         ; $6a3e: $ff
	inc  b                                           ; $6a3f: $04
	inc  bc                                          ; $6a40: $03
	dec  de                                          ; $6a41: $1b
	jr   jr_033_6a54                                 ; $6a42: $18 $10

	inc  d                                           ; $6a44: $14
	adc  c                                           ; $6a45: $89
	ld   [de], a                                     ; $6a46: $12
	dec  b                                           ; $6a47: $05
	ld   de, $b887                                   ; $6a48: $11 $87 $b8
	add  b                                           ; $6a4b: $80
	add  a                                           ; $6a4c: $87
	add  b                                           ; $6a4d: $80
	add  c                                           ; $6a4e: $81
	cp   a                                           ; $6a4f: $bf
	inc  bc                                          ; $6a50: $03
	cp   b                                           ; $6a51: $b8
	cp   a                                           ; $6a52: $bf
	add  a                                           ; $6a53: $87

jr_033_6a54:
	sbc  a                                           ; $6a54: $9f
	add  c                                           ; $6a55: $81
	rst  JumpTable                                         ; $6a56: $df
	ld   bc, $c418                                   ; $6a57: $01 $18 $c4
	add  b                                           ; $6a5a: $80
	inc  e                                           ; $6a5b: $1c
	ld   bc, $2484                                   ; $6a5c: $01 $84 $24
	add  b                                           ; $6a5f: $80
	and  h                                           ; $6a60: $a4
	ld   [bc], a                                     ; $6a61: $02
	or   h                                           ; $6a62: $b4
	inc  [hl]                                        ; $6a63: $34
	db   $f4                                         ; $6a64: $f4
	add  e                                           ; $6a65: $83
	call nc, $1800                                   ; $6a66: $d4 $00 $18
	add  a                                           ; $6a69: $87
	ld   [de], a                                     ; $6a6a: $12
	ld   [bc], a                                     ; $6a6b: $02
	ld   d, $10                                      ; $6a6c: $16 $10
	inc  de                                          ; $6a6e: $13
	add  c                                           ; $6a6f: $81
	dec  de                                          ; $6a70: $1b
	inc  bc                                          ; $6a71: $03
	jr   jr_033_6a74                                 ; $6a72: $18 $00

jr_033_6a74:
	ld   a, l                                        ; $6a74: $7d
	nop                                              ; $6a75: $00
	add  c                                           ; $6a76: $81
	ld   a, h                                        ; $6a77: $7c
	nop                                              ; $6a78: $00
	nop                                              ; $6a79: $00
	add  [hl]                                        ; $6a7a: $86
	db   $fc                                         ; $6a7b: $fc
	add  hl, bc                                      ; $6a7c: $09
	ld   bc, $ff00                                   ; $6a7d: $01 $00 $ff
	nop                                              ; $6a80: $00
	jr   c, jr_033_6a9b                              ; $6a81: $38 $18

	ld   d, c                                        ; $6a83: $51
	ld   de, $e383                                   ; $6a84: $11 $83 $e3
	add  b                                           ; $6a87: $80
	rst  ToBoot                                         ; $6a88: $c7
	add  b                                           ; $6a89: $80
	adc  a                                           ; $6a8a: $8f
	add  b                                           ; $6a8b: $80
	rra                                              ; $6a8c: $1f
	ld   b, $ff                                      ; $6a8d: $06 $ff
	nop                                              ; $6a8f: $00
	rst  $38                                         ; $6a90: $ff
	nop                                              ; $6a91: $00
	ei                                               ; $6a92: $fb
	ld   sp, hl                                      ; $6a93: $f9
	db   $fd                                         ; $6a94: $fd
	add  b                                           ; $6a95: $80
	ld   sp, hl                                      ; $6a96: $f9
	add  [hl]                                        ; $6a97: $86
	rst  $38                                         ; $6a98: $ff
	ld   [bc], a                                     ; $6a99: $02
	nop                                              ; $6a9a: $00

jr_033_6a9b:
	rst  $20                                         ; $6a9b: $e7
	nop                                              ; $6a9c: $00
	add  c                                           ; $6a9d: $81
	rst  $20                                         ; $6a9e: $e7
	inc  bc                                          ; $6a9f: $03
	ldh  [rIE], a                                    ; $6aa0: $e0 $ff
	rst  JumpTable                                         ; $6aa2: $df
	rst  $38                                         ; $6aa3: $ff
	add  e                                           ; $6aa4: $83
	cp   a                                           ; $6aa5: $bf
	nop                                              ; $6aa6: $00
	ret  nz                                          ; $6aa7: $c0

	add  a                                           ; $6aa8: $87
	jr   z, @+$04                                    ; $6aa9: $28 $02

	ld   l, b                                        ; $6aab: $68
	ld   [$81d8], sp                                 ; $6aac: $08 $d8 $81
	ret  z                                           ; $6aaf: $c8

	nop                                              ; $6ab0: $00
	rlca                                             ; $6ab1: $07
	add  a                                           ; $6ab2: $87
	rst  JumpTable                                         ; $6ab3: $df
	inc  bc                                          ; $6ab4: $03
	rst  $38                                         ; $6ab5: $ff

jr_033_6ab6:
	cp   a                                           ; $6ab6: $bf
	rst  $38                                         ; $6ab7: $ff
	ld   a, a                                        ; $6ab8: $7f
	add  b                                           ; $6ab9: $80
	rst  $38                                         ; $6aba: $ff
	nop                                              ; $6abb: $00
	ret  z                                           ; $6abc: $c8

	add  b                                           ; $6abd: $80
	call nc, $d608                                   ; $6abe: $d4 $08 $d6
	jp   nc, $f8d3                                   ; $6ac1: $d2 $d3 $f8

	add  sp, -$01                                    ; $6ac4: $e8 $ff
	rst  $30                                         ; $6ac6: $f7
	rst  $38                                         ; $6ac7: $ff
	ld   hl, sp-$7e                                  ; $6ac8: $f8 $82
	rst  $38                                         ; $6aca: $ff
	add  e                                           ; $6acb: $83
	nop                                              ; $6acc: $00
	nop                                              ; $6acd: $00
	rst  $38                                         ; $6ace: $ff
	add  b                                           ; $6acf: $80
	nop                                              ; $6ad0: $00
	add  c                                           ; $6ad1: $81
	rst  $38                                         ; $6ad2: $ff
	nop                                              ; $6ad3: $00
	nop                                              ; $6ad4: $00
	add  d                                           ; $6ad5: $82
	rst  $38                                         ; $6ad6: $ff
	add  e                                           ; $6ad7: $83
	nop                                              ; $6ad8: $00
	ld   [$6bfb], sp                                 ; $6ad9: $08 $fb $6b
	ld   c, b                                        ; $6adc: $48
	rst  ToBoot                                         ; $6add: $c7
	ret  nz                                          ; $6ade: $c0

	rst  JumpTable                                         ; $6adf: $df
	rra                                              ; $6ae0: $1f
	rst  JumpTable                                         ; $6ae1: $df
	ret  nz                                          ; $6ae2: $c0

	add  b                                           ; $6ae3: $80
	rst  $38                                         ; $6ae4: $ff
	nop                                              ; $6ae5: $00
	inc  b                                           ; $6ae6: $04
	add  b                                           ; $6ae7: $80
	ld   [de], a                                     ; $6ae8: $12
	add  b                                           ; $6ae9: $80
	ld   [hl-], a                                    ; $6aea: $32
	add  b                                           ; $6aeb: $80
	ldh  [c], a                                      ; $6aec: $e2
	ld   b, $0a                                      ; $6aed: $06 $0a
	rst  $30                                         ; $6aef: $f7
	dec  b                                           ; $6af0: $05
	rst  $38                                         ; $6af1: $ff
	ei                                               ; $6af2: $fb
	rst  $38                                         ; $6af3: $ff
	rlca                                             ; $6af4: $07
	add  b                                           ; $6af5: $80
	rst  $38                                         ; $6af6: $ff
	nop                                              ; $6af7: $00
	db   $fd                                         ; $6af8: $fd
	add  e                                           ; $6af9: $83
	db   $fc                                         ; $6afa: $fc
	dec  b                                           ; $6afb: $05
	ei                                               ; $6afc: $fb
	ld   sp, hl                                      ; $6afd: $f9
	rlca                                             ; $6afe: $07
	inc  bc                                          ; $6aff: $03
	ld   [hl], a                                     ; $6b00: $77
	rlca                                             ; $6b01: $07
	add  c                                           ; $6b02: $81
	ld   [hl], a                                     ; $6b03: $77
	ld   [bc], a                                     ; $6b04: $02
	nop                                              ; $6b05: $00
	ret  nz                                          ; $6b06: $c0

	ccf                                              ; $6b07: $3f
	add  b                                           ; $6b08: $80
	ld   a, a                                        ; $6b09: $7f
	add  d                                           ; $6b0a: $82
	rst  $38                                         ; $6b0b: $ff
	ld   [bc], a                                     ; $6b0c: $02
	cp   a                                           ; $6b0d: $bf
	sbc  a                                           ; $6b0e: $9f
	rst  JumpTable                                         ; $6b0f: $df
	add  b                                           ; $6b10: $80
	sbc  a                                           ; $6b11: $9f
	add  b                                           ; $6b12: $80
	rst  $38                                         ; $6b13: $ff
	add  b                                           ; $6b14: $80
	nop                                              ; $6b15: $00
	add  l                                           ; $6b16: $85
	rst  $38                                         ; $6b17: $ff
	ld   [bc], a                                     ; $6b18: $02
	ei                                               ; $6b19: $fb
	ld   sp, hl                                      ; $6b1a: $f9
	db   $fd                                         ; $6b1b: $fd
	add  b                                           ; $6b1c: $80
	ld   sp, hl                                      ; $6b1d: $f9
	add  b                                           ; $6b1e: $80
	rst  $38                                         ; $6b1f: $ff
	ld   bc, $3f00                                   ; $6b20: $01 $00 $3f
	add  l                                           ; $6b23: $85
	cp   a                                           ; $6b24: $bf
	add  b                                           ; $6b25: $80
	add  b                                           ; $6b26: $80
	ld   bc, $809f                                   ; $6b27: $01 $9f $80
	add  c                                           ; $6b2a: $81
	sbc  a                                           ; $6b2b: $9f
	dec  b                                           ; $6b2c: $05
	nop                                              ; $6b2d: $00
	ret  nc                                          ; $6b2e: $d0

	ret  z                                           ; $6b2f: $c8

	jr   jr_033_6b3a                                 ; $6b30: $18 $08

	ld   c, b                                        ; $6b32: $48
	adc  h                                           ; $6b33: $8c
	jr   z, jr_033_6ab6                              ; $6b34: $28 $80

	inc  l                                           ; $6b36: $2c
	ld   [$4727], sp                                 ; $6b37: $08 $27 $47

jr_033_6b3a:
	ld   d, b                                        ; $6b3a: $50
	rst  $28                                         ; $6b3b: $ef
	and  b                                           ; $6b3c: $a0
	rst  $38                                         ; $6b3d: $ff
	rst  JumpTable                                         ; $6b3e: $df
	rst  $38                                         ; $6b3f: $ff
	ldh  [$80], a                                    ; $6b40: $e0 $80
	rst  $38                                         ; $6b42: $ff
	add  e                                           ; $6b43: $83
	nop                                              ; $6b44: $00
	ld   [$cedf], sp                                 ; $6b45: $08 $df $ce
	ld   a, [bc]                                     ; $6b48: $0a
	db   $eb                                         ; $6b49: $eb
	add  hl, bc                                      ; $6b4a: $09
	ld   sp, hl                                      ; $6b4b: $f9
	ld   hl, sp-$05                                  ; $6b4c: $f8 $fb
	inc  bc                                          ; $6b4e: $03
	add  d                                           ; $6b4f: $82
	rst  $38                                         ; $6b50: $ff
	add  b                                           ; $6b51: $80
	ld   a, a                                        ; $6b52: $7f
	ld   [bc], a                                     ; $6b53: $02
	cp   a                                           ; $6b54: $bf
	ccf                                              ; $6b55: $3f
	sbc  a                                           ; $6b56: $9f
	add  a                                           ; $6b57: $87
	rst  JumpTable                                         ; $6b58: $df
	nop                                              ; $6b59: $00
	ccf                                              ; $6b5a: $3f
	adc  [hl]                                        ; $6b5b: $8e
	rst  $38                                         ; $6b5c: $ff
	inc  bc                                          ; $6b5d: $03
	nop                                              ; $6b5e: $00
	rlca                                             ; $6b5f: $07
	jr   c, jr_033_6b69                              ; $6b60: $38 $07

	add  b                                           ; $6b62: $80
	ld   b, a                                        ; $6b63: $47
	nop                                              ; $6b64: $00
	ld   b, [hl]                                     ; $6b65: $46
	add  d                                           ; $6b66: $82
	jr   c, jr_033_6b69                              ; $6b67: $38 $00

jr_033_6b69:
	add  hl, sp                                      ; $6b69: $39
	add  c                                           ; $6b6a: $81
	jr   c, jr_033_6b70                              ; $6b6b: $38 $03

	ld   a, a                                        ; $6b6d: $7f
	nop                                              ; $6b6e: $00
	rrca                                             ; $6b6f: $0f

jr_033_6b70:
	ldh  a, [$80]                                    ; $6b70: $f0 $80
	rrca                                             ; $6b72: $0f
	rlca                                             ; $6b73: $07
	rst  $38                                         ; $6b74: $ff
	rrca                                             ; $6b75: $0f
	ld   hl, sp-$10                                  ; $6b76: $f8 $f0
	db   $f4                                         ; $6b78: $f4
	ldh  a, [$73]                                    ; $6b79: $f0 $73
	ld   [hl], b                                     ; $6b7b: $70
	add  b                                           ; $6b7c: $80
	ld   a, a                                        ; $6b7d: $7f
	add  b                                           ; $6b7e: $80
	nop                                              ; $6b7f: $00
	ld   bc, $f00f                                   ; $6b80: $01 $0f $f0
	add  d                                           ; $6b83: $82
	rrca                                             ; $6b84: $0f
	add  e                                           ; $6b85: $83
	ldh  a, [rTMA]                                   ; $6b86: $f0 $06
	ld   [hl], b                                     ; $6b88: $70
	ldh  a, [$b0]                                    ; $6b89: $f0 $b0
	ccf                                              ; $6b8b: $3f
	nop                                              ; $6b8c: $00
	rrca                                             ; $6b8d: $0f
	ldh  a, [$82]                                    ; $6b8e: $f0 $82
	rrca                                             ; $6b90: $0f
	add  b                                           ; $6b91: $80
	ldh  a, [rSC]                                    ; $6b92: $f0 $02
	rst  $30                                         ; $6b94: $f7
	ldh  a, [rIE]                                    ; $6b95: $f0 $ff
	add  c                                           ; $6b97: $81
	rst  $30                                         ; $6b98: $f7
	inc  bc                                          ; $6b99: $03
	ldh  a, [rP1]                                    ; $6b9a: $f0 $00
	rrca                                             ; $6b9c: $0f
	ldh  a, [$82]                                    ; $6b9d: $f0 $82
	rrca                                             ; $6b9f: $0f
	ld   [bc], a                                     ; $6ba0: $02
	di                                               ; $6ba1: $f3
	ldh  a, [$f7]                                    ; $6ba2: $f0 $f7
	add  b                                           ; $6ba4: $80
	di                                               ; $6ba5: $f3
	add  b                                           ; $6ba6: $80
	ld   [hl], e                                     ; $6ba7: $73
	dec  b                                           ; $6ba8: $05
	inc  sp                                          ; $6ba9: $33
	jr   c, jr_033_6bac                              ; $6baa: $38 $00

jr_033_6bac:
	inc  e                                           ; $6bac: $1c
	ldh  [rAUD3HIGH], a                              ; $6bad: $e0 $1e
	add  c                                           ; $6baf: $81
	inc  e                                           ; $6bb0: $1c
	ld   [bc], a                                     ; $6bb1: $02
	ldh  [c], a                                      ; $6bb2: $e2
	ld   h, d                                        ; $6bb3: $62
	ldh  [c], a                                      ; $6bb4: $e2
	add  b                                           ; $6bb5: $80
	and  d                                           ; $6bb6: $a2
	nop                                              ; $6bb7: $00
	add  d                                           ; $6bb8: $82
	add  b                                           ; $6bb9: $80
	jp   nz, $1e04                                   ; $6bba: $c2 $04 $1e

	add  b                                           ; $6bbd: $80
	add  a                                           ; $6bbe: $87
	jr   c, jr_033_6bc8                              ; $6bbf: $38 $07

	add  b                                           ; $6bc1: $80
	ld   b, a                                        ; $6bc2: $47
	ld   bc, $3b46                                   ; $6bc3: $01 $46 $3b
	add  c                                           ; $6bc6: $81
	add  hl, sp                                      ; $6bc7: $39

jr_033_6bc8:
	nop                                              ; $6bc8: $00
	ccf                                              ; $6bc9: $3f
	add  c                                           ; $6bca: $81
	dec  sp                                          ; $6bcb: $3b
	inc  bc                                          ; $6bcc: $03
	ld   a, b                                        ; $6bcd: $78
	nop                                              ; $6bce: $00
	rrca                                             ; $6bcf: $0f
	ldh  a, [$80]                                    ; $6bd0: $f0 $80
	rrca                                             ; $6bd2: $0f
	ld   [bc], a                                     ; $6bd3: $02
	rst  $38                                         ; $6bd4: $ff
	ld   bc, $81ff                                   ; $6bd5: $01 $ff $81
	cp   $82                                         ; $6bd8: $fe $82
	adc  [hl]                                        ; $6bda: $8e
	add  b                                           ; $6bdb: $80
	nop                                              ; $6bdc: $00
	ld   bc, $f00f                                   ; $6bdd: $01 $0f $f0
	add  c                                           ; $6be0: $81
	rrca                                             ; $6be1: $0f
	ld   bc, $ff08                                   ; $6be2: $01 $08 $ff
	add  b                                           ; $6be5: $80
	rst  $30                                         ; $6be6: $f7
	ld   [$7f77], sp                                 ; $6be7: $08 $77 $7f
	ld   l, a                                        ; $6bea: $6f
	ld   a, [hl]                                     ; $6beb: $7e
	ld   e, [hl]                                     ; $6bec: $5e
	ld   b, b                                        ; $6bed: $40
	nop                                              ; $6bee: $00
	rrca                                             ; $6bef: $0f
	ldh  a, [$80]                                    ; $6bf0: $f0 $80
	rrca                                             ; $6bf2: $0f
	inc  b                                           ; $6bf3: $04
	ccf                                              ; $6bf4: $3f
	rlca                                             ; $6bf5: $07
	db   $fc                                         ; $6bf6: $fc
	jr   c, jr_033_6c33                              ; $6bf7: $38 $3a

	add  e                                           ; $6bf9: $83
	jr   c, jr_033_6bff                              ; $6bfa: $38 $03

	ld   bc, $0f00                                   ; $6bfc: $01 $00 $0f

jr_033_6bff:
	ldh  a, [$80]                                    ; $6bff: $f0 $80
	rrca                                             ; $6c01: $0f
	ld   [bc], a                                     ; $6c02: $02
	ld   a, a                                        ; $6c03: $7f
	nop                                              ; $6c04: $00
	rst  $38                                         ; $6c05: $ff

Call_033_6c06:
	add  e                                           ; $6c06: $83
	ld   a, a                                        ; $6c07: $7f
	nop                                              ; $6c08: $00
	nop                                              ; $6c09: $00
	add  b                                           ; $6c0a: $80
	add  b                                           ; $6c0b: $80
	ld   [bc], a                                     ; $6c0c: $02
	nop                                              ; $6c0d: $00
	rrca                                             ; $6c0e: $0f
	ldh  a, [$80]                                    ; $6c0f: $f0 $80
	rrca                                             ; $6c11: $0f
	inc  b                                           ; $6c12: $04
	rst  $38                                         ; $6c13: $ff
	ld   c, $fb                                      ; $6c14: $0e $fb
	pop  af                                          ; $6c16: $f1
	db   $fd                                         ; $6c17: $fd
	add  c                                           ; $6c18: $81
	ld   sp, hl                                      ; $6c19: $f9
	add  b                                           ; $6c1a: $80
	ld   a, b                                        ; $6c1b: $78
	add  b                                           ; $6c1c: $80
	nop                                              ; $6c1d: $00
	dec  b                                           ; $6c1e: $05
	rrca                                             ; $6c1f: $0f
	ldh  a, [rIF]                                    ; $6c20: $f0 $0f
	ld   c, $ff                                      ; $6c22: $0e $ff
	ld   bc, $fd84                                   ; $6c24: $01 $84 $fd
	add  b                                           ; $6c27: $80
	ld   [bc], a                                     ; $6c28: $02
	add  hl, bc                                      ; $6c29: $09
	nop                                              ; $6c2a: $00
	ld   bc, $e01d                                   ; $6c2b: $01 $1d $e0
	cp   $1c                                         ; $6c2e: $fe $1c
	db   $fc                                         ; $6c30: $fc
	db   $ec                                         ; $6c31: $ec
	ld   a, [hl+]                                    ; $6c32: $2a

jr_033_6c33:
	ld   [hl+], a                                    ; $6c33: $22
	add  b                                           ; $6c34: $80
	ld   h, d                                        ; $6c35: $62
	add  b                                           ; $6c36: $80
	ldh  [c], a                                      ; $6c37: $e2
	add  b                                           ; $6c38: $80
	ld   [bc], a                                     ; $6c39: $02
	rlca                                             ; $6c3a: $07
	ld   b, $80                                      ; $6c3b: $06 $80

jr_033_6c3d:
	add  a                                           ; $6c3d: $87
	jr   c, @+$09                                    ; $6c3e: $38 $07

	ld   b, b                                        ; $6c40: $40
	ld   c, a                                        ; $6c41: $4f
	ld   b, a                                        ; $6c42: $47
	add  d                                           ; $6c43: $82
	scf                                              ; $6c44: $37
	add  hl, bc                                      ; $6c45: $09
	jr   nc, jr_033_6c80                             ; $6c46: $30 $38

	inc  a                                           ; $6c48: $3c
	jr   c, jr_033_6cc7                              ; $6c49: $38 $7c

	nop                                              ; $6c4b: $00
	rrca                                             ; $6c4c: $0f
	ldh  a, [rIE]                                    ; $6c4d: $f0 $ff
	nop                                              ; $6c4f: $00
	add  h                                           ; $6c50: $84
	rst  $38                                         ; $6c51: $ff
	add  d                                           ; $6c52: $82
	ld   bc, $3800                                   ; $6c53: $01 $00 $38
	add  h                                           ; $6c56: $84
	ld   b, a                                        ; $6c57: $47
	inc  b                                           ; $6c58: $04
	ld   b, b                                        ; $6c59: $40
	ccf                                              ; $6c5a: $3f
	scf                                              ; $6c5b: $37
	ccf                                              ; $6c5c: $3f
	cpl                                              ; $6c5d: $2f
	add  b                                           ; $6c5e: $80

jr_033_6c5f:
	ld   l, $80                                      ; $6c5f: $2e $80
	inc  l                                           ; $6c61: $2c
	ld   bc, $7f1f                                   ; $6c62: $01 $1f $7f
	add  e                                           ; $6c65: $83
	ld   [hl], b                                     ; $6c66: $70
	inc  b                                           ; $6c67: $04
	ld   [hl], a                                     ; $6c68: $77
	cp   $f8                                         ; $6c69: $fe $f8
	rst  $38                                         ; $6c6b: $ff
	cp   $80                                         ; $6c6c: $fe $80
	ccf                                              ; $6c6e: $3f
	add  b                                           ; $6c6f: $80
	dec  de                                          ; $6c70: $1b
	ld   bc, $8f90                                   ; $6c71: $01 $90 $8f
	add  b                                           ; $6c74: $80
	rrca                                             ; $6c75: $0f
	inc  bc                                          ; $6c76: $03
	rra                                              ; $6c77: $1f
	inc  c                                           ; $6c78: $0c
	cp   a                                           ; $6c79: $bf
	inc  sp                                          ; $6c7a: $33
	add  b                                           ; $6c7b: $80
	cp   a                                           ; $6c7c: $bf
	add  b                                           ; $6c7d: $80
	sbc  [hl]                                        ; $6c7e: $9e

jr_033_6c7f:
	inc  b                                           ; $6c7f: $04

jr_033_6c80:
	add  b                                           ; $6c80: $80
	ld   b, b                                        ; $6c81: $40
	ret  nz                                          ; $6c82: $c0

	and  b                                           ; $6c83: $a0
	rst  $10                                         ; $6c84: $d7
	add  c                                           ; $6c85: $81
	rlca                                             ; $6c86: $07
	dec  b                                           ; $6c87: $05
	rst  ToBoot                                         ; $6c88: $c7
	rlca                                             ; $6c89: $07
	rst  $20                                         ; $6c8a: $e7
	rst  ToBoot                                         ; $6c8b: $c7
	rst  $30                                         ; $6c8c: $f7
	rst  $20                                         ; $6c8d: $e7
	add  b                                           ; $6c8e: $80
	ld   h, a                                        ; $6c8f: $67
	add  b                                           ; $6c90: $80
	rlca                                             ; $6c91: $07
	ld   [bc], a                                     ; $6c92: $02
	dec  bc                                          ; $6c93: $0b
	jp   $81f9                                       ; $6c94: $c3 $f9 $81


	dec  c                                           ; $6c97: $0d
	nop                                              ; $6c98: $00
	inc  c                                           ; $6c99: $0c
	add  c                                           ; $6c9a: $81
	ld   c, $82                                      ; $6c9b: $0e $82
	jr   nc, jr_033_6ca4                             ; $6c9d: $30 $05

	ld   sp, $b820                                   ; $6c9f: $31 $20 $b8
	sub  b                                           ; $6ca2: $90
	push bc                                          ; $6ca3: $c5

jr_033_6ca4:
	call z, $ec81                                    ; $6ca4: $cc $81 $ec
	add  c                                           ; $6ca7: $81
	db   $e4                                         ; $6ca8: $e4
	add  d                                           ; $6ca9: $82
	ldh  [c], a                                      ; $6caa: $e2
	add  b                                           ; $6cab: $80
	ld   [bc], a                                     ; $6cac: $02
	inc  b                                           ; $6cad: $04
	ld   a, [bc]                                     ; $6cae: $0a
	add  d                                           ; $6caf: $82
	or   l                                           ; $6cb0: $b5
	ld   b, e                                        ; $6cb1: $43
	ld   c, a                                        ; $6cb2: $4f
	add  c                                           ; $6cb3: $81

jr_033_6cb4:
	ld   b, a                                        ; $6cb4: $47
	ld   bc, $4f5f                                   ; $6cb5: $01 $5f $4f
	add  b                                           ; $6cb8: $80
	ld   l, $00                                      ; $6cb9: $2e $00
	jr   nz, jr_033_6c3d                             ; $6cbb: $20 $80

	jr   nc, jr_033_6cc3                             ; $6cbd: $30 $04

	jr   c, jr_033_6d00                              ; $6cbf: $38 $3f

	jr   c, jr_033_6cb4                              ; $6cc1: $38 $f1

jr_033_6cc3:
	adc  [hl]                                        ; $6cc3: $8e
	add  b                                           ; $6cc4: $80
	cp   $80                                         ; $6cc5: $fe $80

jr_033_6cc7:
	ld   hl, sp-$7d                                  ; $6cc7: $f8 $83
	rla                                              ; $6cc9: $17
	ld   bc, $7857                                   ; $6cca: $01 $57 $78
	add  c                                           ; $6ccd: $81
	cp   b                                           ; $6cce: $b8
	ld   bc, $3ebe                                   ; $6ccf: $01 $be $3e
	add  b                                           ; $6cd2: $80
	ld   a, h                                        ; $6cd3: $7c
	add  c                                           ; $6cd4: $81
	ld   hl, sp-$80                                  ; $6cd5: $f8 $80
	ld   sp, hl                                      ; $6cd7: $f9
	nop                                              ; $6cd8: $00
	ld   hl, sp-$80                                  ; $6cd9: $f8 $80
	jr   c, jr_033_6c5f                              ; $6cdb: $38 $82

	add  hl, sp                                      ; $6cdd: $39

Jump_033_6cde:
	ld   bc, $3938                                   ; $6cde: $01 $38 $39
	add  c                                           ; $6ce1: $81
	ld   [hl], c                                     ; $6ce2: $71
	add  b                                           ; $6ce3: $80
	ld   [hl], e                                     ; $6ce4: $73
	ld   [bc], a                                     ; $6ce5: $02
	ld   [hl], d                                     ; $6ce6: $72
	di                                               ; $6ce7: $f3
	pop  af                                          ; $6ce8: $f1
	add  b                                           ; $6ce9: $80
	pop  hl                                          ; $6cea: $e1
	ld   b, $e5                                      ; $6ceb: $06 $e5
	pop  hl                                          ; $6ced: $e1
	rst  ToBoot                                         ; $6cee: $c7
	jp   $00c0                                       ; $6cef: $c3 $c0 $00


	scf                                              ; $6cf2: $37
	add  c                                           ; $6cf3: $81
	rlca                                             ; $6cf4: $07
	ld   [bc], a                                     ; $6cf5: $02
	rst  ToBoot                                         ; $6cf6: $c7
	rlca                                             ; $6cf7: $07
	rst  $30                                         ; $6cf8: $f7
	add  l                                           ; $6cf9: $85
	rst  $10                                         ; $6cfa: $d7
	nop                                              ; $6cfb: $00
	jr   z, jr_033_6c7f                              ; $6cfc: $28 $81

	add  hl, sp                                      ; $6cfe: $39
	add  b                                           ; $6cff: $80

jr_033_6d00:
	ld   a, c                                        ; $6d00: $79
	ld   bc, $e0e1                                   ; $6d01: $01 $e1 $e0
	add  d                                           ; $6d04: $82
	db   $db                                         ; $6d05: $db
	add  b                                           ; $6d06: $80
	dec  de                                          ; $6d07: $1b
	add  b                                           ; $6d08: $80
	nop                                              ; $6d09: $00
	add  b                                           ; $6d0a: $80
	inc  bc                                          ; $6d0b: $03
	nop                                              ; $6d0c: $00
	di                                               ; $6d0d: $f3
	add  e                                           ; $6d0e: $83
	dec  bc                                          ; $6d0f: $0b
	inc  bc                                          ; $6d10: $03
	di                                               ; $6d11: $f3
	ld   d, e                                        ; $6d12: $53
	ld   a, e                                        ; $6d13: $7b
	inc  hl                                          ; $6d14: $23
	add  b                                           ; $6d15: $80
	ld   h, a                                        ; $6d16: $67
	add  b                                           ; $6d17: $80
	rst  ToBoot                                         ; $6d18: $c7
	nop                                              ; $6d19: $00
	add  d                                           ; $6d1a: $82
	add  b                                           ; $6d1b: $80
	adc  h                                           ; $6d1c: $8c
	add  e                                           ; $6d1d: $83
	sbc  h                                           ; $6d1e: $9c
	add  b                                           ; $6d1f: $80
	add  d                                           ; $6d20: $82
	add  c                                           ; $6d21: $81
	ld   [bc], a                                     ; $6d22: $02
	add  c                                           ; $6d23: $81
	ld   [hl+], a                                    ; $6d24: $22
	nop                                              ; $6d25: $00
	ld   b, $85                                      ; $6d26: $06 $85
	ld   b, a                                        ; $6d28: $47
	add  d                                           ; $6d29: $82
	jr   c, @+$06                                    ; $6d2a: $38 $04

	add  hl, sp                                      ; $6d2c: $39
	jr   c, jr_033_6d6e                              ; $6d2d: $38 $3f

	ld   sp, $8183                                   ; $6d2f: $31 $83 $81
	dec  bc                                          ; $6d32: $0b
	add  hl, bc                                      ; $6d33: $09
	rrca                                             ; $6d34: $0f
	rlca                                             ; $6d35: $07
	rra                                              ; $6d36: $1f
	rrca                                             ; $6d37: $0f
	cp   $de                                         ; $6d38: $fe $de
	db   $fc                                         ; $6d3a: $fc
	cp   h                                           ; $6d3b: $bc
	cp   $7e                                         ; $6d3c: $fe $7e
	add  b                                           ; $6d3e: $80
	rst  $38                                         ; $6d3f: $ff
	ld   bc, $4e2e                                   ; $6d40: $01 $2e $4e
	add  b                                           ; $6d43: $80
	ld   c, a                                        ; $6d44: $4f
	dec  bc                                          ; $6d45: $0b
	ld   d, a                                        ; $6d46: $57
	ld   b, a                                        ; $6d47: $47
	ld   c, b                                        ; $6d48: $48
	ld   b, b                                        ; $6d49: $40
	inc  a                                           ; $6d4a: $3c
	jr   c, jr_033_6d88                              ; $6d4b: $38 $3b

	jr   c, jr_033_6d96                              ; $6d4d: $38 $47

	rlca                                             ; $6d4f: $07
	ccf                                              ; $6d50: $3f
	nop                                              ; $6d51: $00
	add  b                                           ; $6d52: $80
	add  hl, sp                                      ; $6d53: $39
	add  b                                           ; $6d54: $80
	ld   hl, sp+$07                                  ; $6d55: $f8 $07
	ldh  a, [$f1]                                    ; $6d57: $f0 $f1
	ld   bc, $0403                                   ; $6d59: $01 $03 $04
	nop                                              ; $6d5c: $00
	ld   [$80f0], sp                                 ; $6d5d: $08 $f0 $80
	rrca                                             ; $6d60: $0f
	inc  bc                                          ; $6d61: $03
	rst  $38                                         ; $6d62: $ff
	nop                                              ; $6d63: $00
	sub  b                                           ; $6d64: $90
	adc  a                                           ; $6d65: $8f
	add  b                                           ; $6d66: $80
	rrca                                             ; $6d67: $0f
	inc  bc                                          ; $6d68: $03
	cpl                                              ; $6d69: $2f
	rrca                                             ; $6d6a: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d6b: $cf
	rrca                                             ; $6d6c: $0f
	add  d                                           ; $6d6d: $82

jr_033_6d6e:
	ldh  a, [$80]                                    ; $6d6e: $f0 $80
	rrca                                             ; $6d70: $0f
	ld   b, $ff                                      ; $6d71: $06 $ff
	nop                                              ; $6d73: $00
	di                                               ; $6d74: $f3
	dec  bc                                          ; $6d75: $0b
	add  hl, bc                                      ; $6d76: $09
	dec  c                                           ; $6d77: $0d
	inc  c                                           ; $6d78: $0c
	add  b                                           ; $6d79: $80
	ld   c, $00                                      ; $6d7a: $0e $00
	rrca                                             ; $6d7c: $0f
	add  d                                           ; $6d7d: $82
	ldh  a, [$80]                                    ; $6d7e: $f0 $80
	rrca                                             ; $6d80: $0f
	ld   [bc], a                                     ; $6d81: $02
	rst  $38                                         ; $6d82: $ff
	nop                                              ; $6d83: $00
	ldh  a, [$81]                                    ; $6d84: $f0 $81
	di                                               ; $6d86: $f3
	add  b                                           ; $6d87: $80

jr_033_6d88:
	db   $e3                                         ; $6d88: $e3
	ld   [bc], a                                     ; $6d89: $02
	inc  bc                                          ; $6d8a: $03
	rlca                                             ; $6d8b: $07
	ld   [$8080], sp                                 ; $6d8c: $08 $80 $80
	nop                                              ; $6d8f: $00
	ldh  a, [$80]                                    ; $6d90: $f0 $80
	rrca                                             ; $6d92: $0f
	ld   [bc], a                                     ; $6d93: $02
	rst  $38                                         ; $6d94: $ff
	nop                                              ; $6d95: $00

jr_033_6d96:
	ldh  [c], a                                      ; $6d96: $e2
	add  l                                           ; $6d97: $85
	inc  e                                           ; $6d98: $1c
	add  d                                           ; $6d99: $82
	ldh  [c], a                                      ; $6d9a: $e2
	ld   b, $1e                                      ; $6d9b: $06 $1e
	inc  e                                           ; $6d9d: $1c
	db   $fc                                         ; $6d9e: $fc
	nop                                              ; $6d9f: $00
	jr   c, jr_033_6de6                              ; $6da0: $38 $44

	ld   b, a                                        ; $6da2: $47
	add  c                                           ; $6da3: $81
	ld   b, e                                        ; $6da4: $43
	dec  bc                                          ; $6da5: $0b
	ld   b, b                                        ; $6da6: $40
	ld   b, h                                        ; $6da7: $44
	ld   a, [hl-]                                    ; $6da8: $3a
	jr   c, @+$3b                                    ; $6da9: $38 $39

	jr   c, jr_033_6df4                              ; $6dab: $38 $47

	rlca                                             ; $6dad: $07
	ccf                                              ; $6dae: $3f
	add  b                                           ; $6daf: $80
	ld   hl, sp+$79                                  ; $6db0: $f8 $79
	add  b                                           ; $6db2: $80
	pop  af                                          ; $6db3: $f1
	inc  b                                           ; $6db4: $04
	pop  bc                                          ; $6db5: $c1
	jp   $0703                                       ; $6db6: $c3 $03 $07


	ld   [$1080], sp                                 ; $6db9: $08 $80 $10
	nop                                              ; $6dbc: $00
	ldh  a, [$80]                                    ; $6dbd: $f0 $80
	rrca                                             ; $6dbf: $0f
	ld   [bc], a                                     ; $6dc0: $02
	rst  $38                                         ; $6dc1: $ff
	nop                                              ; $6dc2: $00
	cp   e                                           ; $6dc3: $bb
	add  c                                           ; $6dc4: $81
	dec  sp                                          ; $6dc5: $3b
	add  b                                           ; $6dc6: $80
	add  hl, sp                                      ; $6dc7: $39
	dec  b                                           ; $6dc8: $05
	ld   b, b                                        ; $6dc9: $40
	nop                                              ; $6dca: $00
	jp   $ece0                                       ; $6dcb: $c3 $e0 $ec


	ldh  a, [$80]                                    ; $6dce: $f0 $80
	rrca                                             ; $6dd0: $0f
	ld   bc, $00ff                                   ; $6dd1: $01 $ff $00
	add  b                                           ; $6dd4: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dd5: $cf
	add  b                                           ; $6dd6: $80
	rst  $38                                         ; $6dd7: $ff
	add  b                                           ; $6dd8: $80
	db   $fc                                         ; $6dd9: $fc
	add  b                                           ; $6dda: $80
	nop                                              ; $6ddb: $00
	inc  bc                                          ; $6ddc: $03
	ld   bc, $0e00                                   ; $6ddd: $01 $00 $0e
	ldh  a, [$80]                                    ; $6de0: $f0 $80
	rrca                                             ; $6de2: $0f
	ld   bc, $00ff                                   ; $6de3: $01 $ff $00

jr_033_6de6:
	add  b                                           ; $6de6: $80
	rst  $20                                         ; $6de7: $e7
	add  b                                           ; $6de8: $80
	rst  $28                                         ; $6de9: $ef
	add  b                                           ; $6dea: $80
	sbc  $81                                         ; $6deb: $de $81
	nop                                              ; $6ded: $00
	ld   [bc], a                                     ; $6dee: $02
	add  b                                           ; $6def: $80
	adc  a                                           ; $6df0: $8f
	ldh  a, [$80]                                    ; $6df1: $f0 $80
	rrca                                             ; $6df3: $0f

jr_033_6df4:
	inc  b                                           ; $6df4: $04
	rst  $38                                         ; $6df5: $ff
	nop                                              ; $6df6: $00
	ld   hl, $3f01                                   ; $6df7: $21 $01 $3f
	add  c                                           ; $6dfa: $81
	rra                                              ; $6dfb: $1f
	dec  b                                           ; $6dfc: $05
	ld   h, b                                        ; $6dfd: $60
	nop                                              ; $6dfe: $00
	ld   h, b                                        ; $6dff: $60
	ldh  a, [rIE]                                    ; $6e00: $f0 $ff
	ldh  a, [$80]                                    ; $6e02: $f0 $80
	rrca                                             ; $6e04: $0f
	ld   bc, $00ff                                   ; $6e05: $01 $ff $00
	add  b                                           ; $6e08: $80
	adc  $80                                         ; $6e09: $ce $80
	cp   [hl]                                        ; $6e0b: $be
	add  b                                           ; $6e0c: $80
	jr   c, jr_033_6e14                              ; $6e0d: $38 $05

	nop                                              ; $6e0f: $00
	ld   bc, $4002                                   ; $6e10: $01 $02 $40
	ld   c, h                                        ; $6e13: $4c

jr_033_6e14:
	ldh  a, [$80]                                    ; $6e14: $f0 $80
	rrca                                             ; $6e16: $0f
	ld   b, $ff                                      ; $6e17: $06 $ff
	nop                                              ; $6e19: $00
	ld   [hl+], a                                    ; $6e1a: $22
	inc  e                                           ; $6e1b: $1c
	ld   e, h                                        ; $6e1c: $5c
	inc  e                                           ; $6e1d: $1c
	sbc  h                                           ; $6e1e: $9c
	add  c                                           ; $6e1f: $81
	inc  e                                           ; $6e20: $1c
	add  d                                           ; $6e21: $82
	ldh  [c], a                                      ; $6e22: $e2
	inc  b                                           ; $6e23: $04
	ld   e, $1c                                      ; $6e24: $1e $1c
	db   $fc                                         ; $6e26: $fc
	ld   bc, $832e                                   ; $6e27: $01 $2e $83
	ld   c, a                                        ; $6e2a: $4f
	dec  bc                                          ; $6e2b: $0b
	ld   d, b                                        ; $6e2c: $50
	ld   b, b                                        ; $6e2d: $40
	jr   nc, jr_033_6e68                             ; $6e2e: $30 $38

	ccf                                              ; $6e30: $3f
	jr   c, jr_033_6e7a                              ; $6e31: $38 $47

	rlca                                             ; $6e33: $07
	ld   a, a                                        ; $6e34: $7f
	nop                                              ; $6e35: $00
	and  a                                           ; $6e36: $a7
	rst  $20                                         ; $6e37: $e7
	add  b                                           ; $6e38: $80
	jp   $0004                                       ; $6e39: $c3 $04 $00


	inc  c                                           ; $6e3c: $0c
	inc  e                                           ; $6e3d: $1c
	ld   c, $11                                      ; $6e3e: $0e $11
	add  b                                           ; $6e40: $80
	ld   [hl], b                                     ; $6e41: $70
	nop                                              ; $6e42: $00
	ldh  a, [$80]                                    ; $6e43: $f0 $80
	rrca                                             ; $6e45: $0f
	ld   bc, $00ff                                   ; $6e46: $01 $ff $00
	add  h                                           ; $6e49: $84
	db   $e3                                         ; $6e4a: $e3
	dec  b                                           ; $6e4b: $05
	nop                                              ; $6e4c: $00
	inc  b                                           ; $6e4d: $04
	ld   a, [bc]                                     ; $6e4e: $0a
	add  b                                           ; $6e4f: $80
	add  c                                           ; $6e50: $81
	ldh  a, [$80]                                    ; $6e51: $f0 $80
	rrca                                             ; $6e53: $0f
	ld   bc, $00ff                                   ; $6e54: $01 $ff $00
	add  b                                           ; $6e57: $80
	ld   hl, sp+$06                                  ; $6e58: $f8 $06
	ldh  a, [$f1]                                    ; $6e5a: $f0 $f1
	pop  bc                                          ; $6e5c: $c1
	jp   $0703                                       ; $6e5d: $c3 $03 $07


	ld   [$1080], sp                                 ; $6e60: $08 $80 $10
	nop                                              ; $6e63: $00
	ldh  a, [$80]                                    ; $6e64: $f0 $80
	rrca                                             ; $6e66: $0f
	ld   [bc], a                                     ; $6e67: $02

jr_033_6e68:
	rst  $38                                         ; $6e68: $ff
	nop                                              ; $6e69: $00
	ldh  a, [$85]                                    ; $6e6a: $f0 $85
	rrca                                             ; $6e6c: $0f
	add  d                                           ; $6e6d: $82
	ldh  a, [$80]                                    ; $6e6e: $f0 $80
	rrca                                             ; $6e70: $0f
	ld   [bc], a                                     ; $6e71: $02
	rst  $38                                         ; $6e72: $ff
	nop                                              ; $6e73: $00
	ldh  a, [$85]                                    ; $6e74: $f0 $85
	rrca                                             ; $6e76: $0f
	add  d                                           ; $6e77: $82
	ldh  a, [$80]                                    ; $6e78: $f0 $80

jr_033_6e7a:
	rrca                                             ; $6e7a: $0f
	ld   [bc], a                                     ; $6e7b: $02
	rst  $38                                         ; $6e7c: $ff
	nop                                              ; $6e7d: $00
	ld   [hl], b                                     ; $6e7e: $70
	add  e                                           ; $6e7f: $83
	ld   [hl], e                                     ; $6e80: $73
	dec  b                                           ; $6e81: $05
	add  e                                           ; $6e82: $83
	inc  bc                                          ; $6e83: $03
	add  h                                           ; $6e84: $84
	ret  nz                                          ; $6e85: $c0

	ret  z                                           ; $6e86: $c8

	ldh  a, [$80]                                    ; $6e87: $f0 $80
	rrca                                             ; $6e89: $0f
	inc  b                                           ; $6e8a: $04
	rst  $38                                         ; $6e8b: $ff
	nop                                              ; $6e8c: $00
	add  d                                           ; $6e8d: $82
	inc  c                                           ; $6e8e: $0c
	ld   l, h                                        ; $6e8f: $6c
	add  e                                           ; $6e90: $83
	inc  e                                           ; $6e91: $1c
	add  d                                           ; $6e92: $82
	ldh  [c], a                                      ; $6e93: $e2
	ld   [bc], a                                     ; $6e94: $02
	ld   e, $1c                                      ; $6e95: $1e $1c
	db   $fc                                         ; $6e97: $fc
	add  b                                           ; $6e98: $80
	ld   [bc], a                                     ; $6e99: $02
	rlca                                             ; $6e9a: $07
	nop                                              ; $6e9b: $00
	rrca                                             ; $6e9c: $0f
	ldh  a, [$cf]                                    ; $6e9d: $f0 $cf
	rrca                                             ; $6e9f: $0f
	rst  $28                                         ; $6ea0: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ea1: $cf
	pop  de                                          ; $6ea2: $d1
	add  c                                           ; $6ea3: $81
	ret  nz                                          ; $6ea4: $c0

	nop                                              ; $6ea5: $00
	jp   $c181                                       ; $6ea6: $c3 $81 $c1


	dec  b                                           ; $6ea9: $05
	inc  c                                           ; $6eaa: $0c
	nop                                              ; $6eab: $00
	rrca                                             ; $6eac: $0f
	ldh  a, [rIE]                                    ; $6ead: $f0 $ff
	nop                                              ; $6eaf: $00
	add  b                                           ; $6eb0: $80
	ld   a, a                                        ; $6eb1: $7f
	add  b                                           ; $6eb2: $80
	rst  $38                                         ; $6eb3: $ff
	add  d                                           ; $6eb4: $82
	pop  hl                                          ; $6eb5: $e1
	add  b                                           ; $6eb6: $80
	pop  bc                                          ; $6eb7: $c1
	add  b                                           ; $6eb8: $80
	nop                                              ; $6eb9: $00
	ld   b, $0f                                      ; $6eba: $06 $0f
	ldh  a, [$cf]                                    ; $6ebc: $f0 $cf
	rrca                                             ; $6ebe: $0f
	rst  $28                                         ; $6ebf: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ec0: $cf
	ret  nc                                          ; $6ec1: $d0

	add  l                                           ; $6ec2: $85
	ret  nz                                          ; $6ec3: $c0

	inc  bc                                          ; $6ec4: $03
	rrca                                             ; $6ec5: $0f
	nop                                              ; $6ec6: $00
	rrca                                             ; $6ec7: $0f
	ldh  a, [$82]                                    ; $6ec8: $f0 $82
	rrca                                             ; $6eca: $0f
	add  [hl]                                        ; $6ecb: $86
	ldh  a, [$08]                                    ; $6ecc: $f0 $08
	rst  $38                                         ; $6ece: $ff
	nop                                              ; $6ecf: $00
	rrca                                             ; $6ed0: $0f
	ldh  a, [$7f]                                    ; $6ed1: $f0 $7f
	rrca                                             ; $6ed3: $0f
	rst  $38                                         ; $6ed4: $ff
	ld   [hl], a                                     ; $6ed5: $77
	ld   [hl], h                                     ; $6ed6: $74
	add  l                                           ; $6ed7: $85
	ld   [hl], b                                     ; $6ed8: $70
	inc  b                                           ; $6ed9: $04
	inc  bc                                          ; $6eda: $03
	ld   bc, $e01d                                   ; $6edb: $01 $1d $e0
	ld   e, $81                                      ; $6ede: $1e $81
	inc  e                                           ; $6ee0: $1c
	add  [hl]                                        ; $6ee1: $86
	ldh  [c], a                                      ; $6ee2: $e2
	ld   bc, $c33d                                   ; $6ee3: $01 $3d $c3
	add  d                                           ; $6ee6: $82
	adc  a                                           ; $6ee7: $8f
	inc  b                                           ; $6ee8: $04
	stop                                             ; $6ee9: $10 $00
	jr   @+$32                                       ; $6eeb: $18 $30

	scf                                              ; $6eed: $37
	add  c                                           ; $6eee: $81
	ld   [hl], b                                     ; $6eef: $70
	ld   [bc], a                                     ; $6ef0: $02
	di                                               ; $6ef1: $f3
	sub  b                                           ; $6ef2: $90
	db   $e3                                         ; $6ef3: $e3
	add  c                                           ; $6ef4: $81
	rst  $38                                         ; $6ef5: $ff
	add  e                                           ; $6ef6: $83
	rlca                                             ; $6ef7: $07
	ld   a, [bc]                                     ; $6ef8: $0a
	ld   [hl], a                                     ; $6ef9: $77
	ld   a, a                                        ; $6efa: $7f
	rst  $28                                         ; $6efb: $ef
	cp   $9e                                         ; $6efc: $fe $9e
	db   $fc                                         ; $6efe: $fc
	ld   a, h                                        ; $6eff: $7c

Call_033_6f00:
	ret  nz                                          ; $6f00: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f01: $cf
	adc  a                                           ; $6f02: $8f
	add  b                                           ; $6f03: $80
	add  d                                           ; $6f04: $82
	adc  a                                           ; $6f05: $8f
	add  b                                           ; $6f06: $80
	rrca                                             ; $6f07: $0f
	ld   a, [bc]                                     ; $6f08: $0a
	nop                                              ; $6f09: $00
	jr   nc, jr_033_6f44                             ; $6f0a: $30 $38

	jr   nc, jr_033_6f45                             ; $6f0c: $30 $37

	ld   [hl], b                                     ; $6f0e: $70
	adc  a                                           ; $6f0f: $8f
	rrca                                             ; $6f10: $0f
	rst  $38                                         ; $6f11: $ff
	inc  bc                                          ; $6f12: $03
	rst  $38                                         ; $6f13: $ff
	add  b                                           ; $6f14: $80
	db   $fd                                         ; $6f15: $fd
	add  c                                           ; $6f16: $81
	db   $fc                                         ; $6f17: $fc
	add  b                                           ; $6f18: $80
	nop                                              ; $6f19: $00
	dec  b                                           ; $6f1a: $05
	ld   bc, $0e00                                   ; $6f1b: $01 $00 $0e
	ldh  a, [$83]                                    ; $6f1e: $f0 $83
	ld   a, h                                        ; $6f20: $7c
	add  d                                           ; $6f21: $82
	ld   a, a                                        ; $6f22: $7f
	add  b                                           ; $6f23: $80
	ld   [hl], a                                     ; $6f24: $77
	add  b                                           ; $6f25: $80
	ld   [hl], e                                     ; $6f26: $73
	add  b                                           ; $6f27: $80
	ld   [hl], c                                     ; $6f28: $71
	ld   c, $72                                      ; $6f29: $0e $72
	ld   [hl], b                                     ; $6f2b: $70
	ld   [hl], c                                     ; $6f2c: $71
	ld   [hl], b                                     ; $6f2d: $70
	pop  hl                                          ; $6f2e: $e1
	inc  e                                           ; $6f2f: $1c
	sbc  h                                           ; $6f30: $9c
	inc  e                                           ; $6f31: $1c
	call c, $fc9c                                    ; $6f32: $dc $9c $fc
	call c, $e2f2                                    ; $6f35: $dc $f2 $e2
	ld   [$e281], a                                  ; $6f38: $ea $81 $e2
	add  b                                           ; $6f3b: $80
	ld   [bc], a                                     ; $6f3c: $02
	nop                                              ; $6f3d: $00
	ld   b, $ff                                      ; $6f3e: $06 $ff
	nop                                              ; $6f40: $00
	rst  $38                                         ; $6f41: $ff
	nop                                              ; $6f42: $00
	ei                                               ; $6f43: $fb

jr_033_6f44:
	nop                                              ; $6f44: $00

jr_033_6f45:
	nop                                              ; $6f45: $00
	rst  $38                                         ; $6f46: $ff
	sub  a                                           ; $6f47: $97
	nop                                              ; $6f48: $00
	ld   b, $06                                      ; $6f49: $06 $06
	rlca                                             ; $6f4b: $07
	add  hl, de                                      ; $6f4c: $19
	rra                                              ; $6f4d: $1f
	set  7, a                                        ; $6f4e: $cb $ff
	inc  sp                                          ; $6f50: $33
	add  e                                           ; $6f51: $83
	nop                                              ; $6f52: $00
	rrca                                             ; $6f53: $0f
	add  hl, bc                                      ; $6f54: $09
	ld   c, $f5                                      ; $6f55: $0e $f5
	db   $fd                                         ; $6f57: $fd
	ld   l, d                                        ; $6f58: $6a
	cp   d                                           ; $6f59: $ba
	dec  h                                           ; $6f5a: $25
	dec  [hl]                                        ; $6f5b: $35
	xor  d                                           ; $6f5c: $aa
	cp   d                                           ; $6f5d: $ba
	sbc  $01                                         ; $6f5e: $de $01
	dec  bc                                          ; $6f60: $0b
	inc  c                                           ; $6f61: $0c
	sbc  b                                           ; $6f62: $98
	ldh  [$80], a                                    ; $6f63: $e0 $80
	ret  nc                                          ; $6f65: $d0

	add  b                                           ; $6f66: $80
	and  b                                           ; $6f67: $a0
	add  b                                           ; $6f68: $80
	ret  nc                                          ; $6f69: $d0

	add  b                                           ; $6f6a: $80
	and  b                                           ; $6f6b: $a0
	add  b                                           ; $6f6c: $80
	ret  nc                                          ; $6f6d: $d0

	ld   bc, $81fe                                   ; $6f6e: $01 $fe $81
	add  b                                           ; $6f71: $80
	rlca                                             ; $6f72: $07
	add  b                                           ; $6f73: $80
	rra                                              ; $6f74: $1f
	add  b                                           ; $6f75: $80
	ld   a, a                                        ; $6f76: $7f
	add  d                                           ; $6f77: $82
	rst  $38                                         ; $6f78: $ff
	inc  b                                           ; $6f79: $04
	ld   a, [$f0ff]                                  ; $6f7a: $fa $ff $f0
	rst  $38                                         ; $6f7d: $ff
	push af                                          ; $6f7e: $f5
	add  l                                           ; $6f7f: $85
	rst  $38                                         ; $6f80: $ff
	ld   [$fffa], sp                                 ; $6f81: $08 $fa $ff
	ld   d, b                                        ; $6f84: $50
	rst  $38                                         ; $6f85: $ff
	nop                                              ; $6f86: $00
	rst  $38                                         ; $6f87: $ff
	nop                                              ; $6f88: $00
	rst  $38                                         ; $6f89: $ff
	ld   d, l                                        ; $6f8a: $55
	add  e                                           ; $6f8b: $83
	rst  $38                                         ; $6f8c: $ff
	ld   a, [bc]                                     ; $6f8d: $0a
	push de                                          ; $6f8e: $d5
	rst  $38                                         ; $6f8f: $ff
	add  b                                           ; $6f90: $80
	rst  $38                                         ; $6f91: $ff
	nop                                              ; $6f92: $00
	rst  $38                                         ; $6f93: $ff
	nop                                              ; $6f94: $00
	rst  $38                                         ; $6f95: $ff
	dec  d                                           ; $6f96: $15
	rst  $38                                         ; $6f97: $ff
	ld   b, b                                        ; $6f98: $40
	add  c                                           ; $6f99: $81
	rst  $38                                         ; $6f9a: $ff
	ld   [$ffaa], sp                                 ; $6f9b: $08 $aa $ff
	nop                                              ; $6f9e: $00
	rst  $38                                         ; $6f9f: $ff
	nop                                              ; $6fa0: $00
	rst  $38                                         ; $6fa1: $ff
	dec  b                                           ; $6fa2: $05
	rst  $38                                         ; $6fa3: $ff
	xor  a                                           ; $6fa4: $af
	add  c                                           ; $6fa5: $81
	rst  $38                                         ; $6fa6: $ff
	ld   a, [bc]                                     ; $6fa7: $0a
	nop                                              ; $6fa8: $00
	rst  $38                                         ; $6fa9: $ff
	ld   d, l                                        ; $6faa: $55
	rst  $38                                         ; $6fab: $ff
	nop                                              ; $6fac: $00
	rst  $38                                         ; $6fad: $ff
	ld   bc, $2bff                                   ; $6fae: $01 $ff $2b
	rst  $38                                         ; $6fb1: $ff
	ld   a, a                                        ; $6fb2: $7f
	add  e                                           ; $6fb3: $83
	rst  $38                                         ; $6fb4: $ff
	ld   b, $15                                      ; $6fb5: $06 $15
	rst  $38                                         ; $6fb7: $ff
	ld   b, b                                        ; $6fb8: $40
	rst  $38                                         ; $6fb9: $ff
	ld   [bc], a                                     ; $6fba: $02
	rst  $38                                         ; $6fbb: $ff
	ld   d, a                                        ; $6fbc: $57
	add  a                                           ; $6fbd: $87
	rst  $38                                         ; $6fbe: $ff
	inc  b                                           ; $6fbf: $04
	ld   d, l                                        ; $6fc0: $55
	rst  $38                                         ; $6fc1: $ff
	dec  d                                           ; $6fc2: $15
	rst  $38                                         ; $6fc3: $ff
	cp   a                                           ; $6fc4: $bf
	adc  c                                           ; $6fc5: $89
	rst  $38                                         ; $6fc6: $ff
	ld   [bc], a                                     ; $6fc7: $02
	ld   d, h                                        ; $6fc8: $54
	rst  $38                                         ; $6fc9: $ff
	ld   d, h                                        ; $6fca: $54
	adc  e                                           ; $6fcb: $8b
	rst  $38                                         ; $6fcc: $ff
	inc  b                                           ; $6fcd: $04
	ldh  a, [c]                                      ; $6fce: $f2
	ld   c, $3b                                      ; $6fcf: $0e $3b
	ld   hl, sp-$40                                  ; $6fd1: $f8 $c0
	adc  c                                           ; $6fd3: $89
	rst  $38                                         ; $6fd4: $ff
	inc  b                                           ; $6fd5: $04
	add  hl, bc                                      ; $6fd6: $09
	rrca                                             ; $6fd7: $0f
	dec  c                                           ; $6fd8: $0d
	rst  $30                                         ; $6fd9: $f7
	inc  bc                                          ; $6fda: $03
	adc  c                                           ; $6fdb: $89
	rst  $38                                         ; $6fdc: $ff
	ld   b, $55                                      ; $6fdd: $06 $55
	rst  $38                                         ; $6fdf: $ff
	ld   b, b                                        ; $6fe0: $40
	rst  $38                                         ; $6fe1: $ff
	add  sp, -$01                                    ; $6fe2: $e8 $ff
	db   $fd                                         ; $6fe4: $fd
	add  a                                           ; $6fe5: $87
	rst  $38                                         ; $6fe6: $ff
	inc  c                                           ; $6fe7: $0c
	ld   d, h                                        ; $6fe8: $54
	rst  $38                                         ; $6fe9: $ff
	ld   bc, $00ff                                   ; $6fea: $01 $ff $00
	rst  $38                                         ; $6fed: $ff
	nop                                              ; $6fee: $00
	rst  $38                                         ; $6fef: $ff
	and  b                                           ; $6ff0: $a0
	rst  $38                                         ; $6ff1: $ff
	ldh  a, [rIE]                                    ; $6ff2: $f0 $ff
	ld   a, [$ff81]                                  ; $6ff4: $fa $81 $ff
	ld   bc, $0bf4                                   ; $6ff7: $01 $f4 $0b
	add  b                                           ; $6ffa: $80
	ld   d, l                                        ; $6ffb: $55
	add  b                                           ; $6ffc: $80
	cp   $81                                         ; $6ffd: $fe $81
	nop                                              ; $6fff: $00
	jr   z, @+$01                                    ; $7000: $28 $ff

	ccf                                              ; $7002: $3f
	rst  $38                                         ; $7003: $ff
	ld   c, d                                        ; $7004: $4a
	ld   [$f535], a                                  ; $7005: $ea $35 $f5
	rst  $30                                         ; $7008: $f7
	rst  $38                                         ; $7009: $ff
	sbc  e                                           ; $700a: $9b
	rst  $38                                         ; $700b: $ff
	sbc  e                                           ; $700c: $9b
	rst  $38                                         ; $700d: $ff
	dec  de                                          ; $700e: $1b
	ld   a, a                                        ; $700f: $7f
	ld   e, e                                        ; $7010: $5b
	ld   a, a                                        ; $7011: $7f
	ld   e, e                                        ; $7012: $5b
	ld   a, a                                        ; $7013: $7f
	ld   e, e                                        ; $7014: $5b
	ld   a, a                                        ; $7015: $7f
	ld   e, e                                        ; $7016: $5b
	ld   a, a                                        ; $7017: $7f
	adc  c                                           ; $7018: $89
	ld   [hl], l                                     ; $7019: $75
	xor  d                                           ; $701a: $aa
	cp   d                                           ; $701b: $ba
	ld   h, l                                        ; $701c: $65

jr_033_701d:
	ld   [hl], l                                     ; $701d: $75
	xor  d                                           ; $701e: $aa
	cp   d                                           ; $701f: $ba
	ld   h, l                                        ; $7020: $65
	ld   [hl], l                                     ; $7021: $75
	xor  d                                           ; $7022: $aa
	cp   d                                           ; $7023: $ba
	ld   h, l                                        ; $7024: $65
	ld   [hl], l                                     ; $7025: $75
	xor  d                                           ; $7026: $aa
	cp   d                                           ; $7027: $ba
	nop                                              ; $7028: $00
	and  b                                           ; $7029: $a0
	add  b                                           ; $702a: $80
	ret  nc                                          ; $702b: $d0

	add  b                                           ; $702c: $80
	and  b                                           ; $702d: $a0
	add  b                                           ; $702e: $80
	ret  nc                                          ; $702f: $d0

	add  b                                           ; $7030: $80
	and  b                                           ; $7031: $a0
	add  b                                           ; $7032: $80
	ret  nc                                          ; $7033: $d0

	add  b                                           ; $7034: $80
	and  b                                           ; $7035: $a0
	add  b                                           ; $7036: $80
	ret  nc                                          ; $7037: $d0

	ld   d, $d5                                      ; $7038: $16 $d5
	rst  $38                                         ; $703a: $ff
	nop                                              ; $703b: $00
	rst  $38                                         ; $703c: $ff
	nop                                              ; $703d: $00
	rst  $38                                         ; $703e: $ff
	ld   bc, $03ff                                   ; $703f: $01 $ff $03
	rst  $38                                         ; $7042: $ff
	rla                                              ; $7043: $17
	rst  $38                                         ; $7044: $ff
	ccf                                              ; $7045: $3f
	rst  $38                                         ; $7046: $ff
	ld   a, a                                        ; $7047: $7f
	rst  $38                                         ; $7048: $ff
	ld   d, l                                        ; $7049: $55
	rst  $38                                         ; $704a: $ff
	dec  b                                           ; $704b: $05
	rst  $38                                         ; $704c: $ff
	cpl                                              ; $704d: $2f
	rst  $38                                         ; $704e: $ff
	ld   a, a                                        ; $704f: $7f
	add  a                                           ; $7050: $87
	rst  $38                                         ; $7051: $ff
	inc  b                                           ; $7052: $04
	ret  nc                                          ; $7053: $d0

	rst  $38                                         ; $7054: $ff
	push de                                          ; $7055: $d5
	rst  $38                                         ; $7056: $ff
	ld   a, [$ff89]                                  ; $7057: $fa $89 $ff
	ld   [$ff00], sp                                 ; $705a: $08 $00 $ff
	ld   d, a                                        ; $705d: $57
	rst  $38                                         ; $705e: $ff
	ld   [bc], a                                     ; $705f: $02
	rst  $38                                         ; $7060: $ff
	ld   d, h                                        ; $7061: $54
	rst  $38                                         ; $7062: $ff
	cp   $85                                         ; $7063: $fe $85
	rst  $38                                         ; $7065: $ff
	nop                                              ; $7066: $00
	nop                                              ; $7067: $00
	add  c                                           ; $7068: $81
	rst  $38                                         ; $7069: $ff
	ld   b, $bf                                      ; $706a: $06 $bf
	rst  $38                                         ; $706c: $ff
	dec  d                                           ; $706d: $15
	rst  $38                                         ; $706e: $ff
	and  b                                           ; $706f: $a0
	rst  $38                                         ; $7070: $ff
	push af                                          ; $7071: $f5
	add  h                                           ; $7072: $84
	rst  $38                                         ; $7073: $ff
	nop                                              ; $7074: $00
	nop                                              ; $7075: $00
	add  d                                           ; $7076: $82
	rst  $38                                         ; $7077: $ff
	ld   b, $5f                                      ; $7078: $06 $5f
	rst  $38                                         ; $707a: $ff
	ld   a, [bc]                                     ; $707b: $0a
	rst  $38                                         ; $707c: $ff
	ld   b, b                                        ; $707d: $40
	rst  $38                                         ; $707e: $ff
	ld   [$ff82], a                                  ; $707f: $ea $82 $ff
	nop                                              ; $7082: $00
	nop                                              ; $7083: $00
	add  h                                           ; $7084: $84
	rst  $38                                         ; $7085: $ff
	add  hl, bc                                      ; $7086: $09
	cp   a                                           ; $7087: $bf
	rst  $38                                         ; $7088: $ff
	dec  d                                           ; $7089: $15
	rst  $38                                         ; $708a: $ff
	nop                                              ; $708b: $00
	rst  $38                                         ; $708c: $ff
	ld   d, b                                        ; $708d: $50
	rst  $38                                         ; $708e: $ff
	ld   a, [$8600]                                  ; $708f: $fa $00 $86
	rst  $38                                         ; $7092: $ff
	rlca                                             ; $7093: $07
	ld   a, a                                        ; $7094: $7f
	rst  $38                                         ; $7095: $ff
	dec  hl                                          ; $7096: $2b
	rst  $38                                         ; $7097: $ff
	ld   bc, $b2ff                                   ; $7098: $01 $ff $b2
	jr   jr_033_701d                                 ; $709b: $18 $80

	adc  b                                           ; $709d: $88
	add  b                                           ; $709e: $80
	ldh  [$80], a                                    ; $709f: $e0 $80
	ld   hl, sp-$80                                  ; $70a1: $f8 $80
	cp   $82                                         ; $70a3: $fe $82
	rst  $38                                         ; $70a5: $ff
	ld   [bc], a                                     ; $70a6: $02
	ld   e, a                                        ; $70a7: $5f
	rst  $38                                         ; $70a8: $ff
	and  b                                           ; $70a9: $a0
	adc  [hl]                                        ; $70aa: $8e
	rst  $38                                         ; $70ab: $ff
	dec  c                                           ; $70ac: $0d
	nop                                              ; $70ad: $00
	ld   a, $00                                      ; $70ae: $3e $00
	ld   h, b                                        ; $70b0: $60
	nop                                              ; $70b1: $00
	jr   nc, jr_033_70b4                             ; $70b2: $30 $00

jr_033_70b4:
	jr   jr_033_70b6                                 ; $70b4: $18 $00

jr_033_70b6:
	inc  c                                           ; $70b6: $0c
	nop                                              ; $70b7: $00
	ld   b, $00                                      ; $70b8: $06 $00
	ld   a, h                                        ; $70ba: $7c
	add  c                                           ; $70bb: $81
	nop                                              ; $70bc: $00
	inc  de                                          ; $70bd: $13
	ld   a, $00                                      ; $70be: $3e $00
	ld   h, b                                        ; $70c0: $60
	nop                                              ; $70c1: $00
	jr   nc, jr_033_70c4                             ; $70c2: $30 $00

jr_033_70c4:
	jr   jr_033_70c6                                 ; $70c4: $18 $00

jr_033_70c6:
	inc  c                                           ; $70c6: $0c
	nop                                              ; $70c7: $00
	ld   b, $00                                      ; $70c8: $06 $00
	ld   a, h                                        ; $70ca: $7c
	nop                                              ; $70cb: $00
	or   l                                           ; $70cc: $b5
	ld   a, [$f890]                                  ; $70cd: $fa $90 $f8
	adc  b                                           ; $70d0: $88
	ld   e, b                                        ; $70d1: $58
	add  b                                           ; $70d2: $80
	xor  b                                           ; $70d3: $a8
	add  [hl]                                        ; $70d4: $86
	ld   [$9f1d], sp                                 ; $70d5: $08 $1d $9f
	ld   a, a                                        ; $70d8: $7f
	ld   e, e                                        ; $70d9: $5b
	ld   a, a                                        ; $70da: $7f
	ld   e, e                                        ; $70db: $5b
	ld   a, a                                        ; $70dc: $7f
	ld   e, e                                        ; $70dd: $5b
	ld   a, a                                        ; $70de: $7f
	ld   e, e                                        ; $70df: $5b
	ld   a, a                                        ; $70e0: $7f
	ld   e, e                                        ; $70e1: $5b
	ld   a, a                                        ; $70e2: $7f
	ld   e, d                                        ; $70e3: $5a
	ld   a, a                                        ; $70e4: $7f
	ld   e, e                                        ; $70e5: $5b
	ld   a, a                                        ; $70e6: $7f
	adc  b                                           ; $70e7: $88
	ld   [hl], l                                     ; $70e8: $75
	xor  d                                           ; $70e9: $aa
	cp   d                                           ; $70ea: $ba
	ld   h, l                                        ; $70eb: $65
	ld   [hl], l                                     ; $70ec: $75
	xor  d                                           ; $70ed: $aa
	cp   d                                           ; $70ee: $ba
	ld   l, h                                        ; $70ef: $6c
	ld   a, a                                        ; $70f0: $7f
	or   d                                           ; $70f1: $b2
	cp   [hl]                                        ; $70f2: $be
	ld   a, $fe                                      ; $70f3: $3e $fe
	add  b                                           ; $70f5: $80
	and  $01                                         ; $70f6: $e6 $01
	rst  JumpTable                                         ; $70f8: $df
	and  b                                           ; $70f9: $a0
	add  b                                           ; $70fa: $80
	ret  nc                                          ; $70fb: $d0

	add  b                                           ; $70fc: $80
	and  b                                           ; $70fd: $a0
	add  b                                           ; $70fe: $80
	ret  nc                                          ; $70ff: $d0

	add  b                                           ; $7100: $80
	and  b                                           ; $7101: $a0
	add  b                                           ; $7102: $80
	ret  nc                                          ; $7103: $d0

	add  b                                           ; $7104: $80
	and  b                                           ; $7105: $a0
	add  b                                           ; $7106: $80
	ret  nc                                          ; $7107: $d0

	add  hl, bc                                      ; $7108: $09
	cp   [hl]                                        ; $7109: $be
	pop  bc                                          ; $710a: $c1
	add  hl, de                                      ; $710b: $19
	dec  e                                           ; $710c: $1d
	push bc                                          ; $710d: $c5
	db   $fd                                         ; $710e: $fd
	dec  b                                           ; $710f: $05
	db   $fd                                         ; $7110: $fd

jr_033_7111:
	dec  l                                           ; $7111: $2d
	db   $ed                                         ; $7112: $ed
	add  b                                           ; $7113: $80
	adc  l                                           ; $7114: $8d
	add  b                                           ; $7115: $80
	dec  l                                           ; $7116: $2d
	inc  bc                                          ; $7117: $03
	call Call_033_5ded                               ; $7118: $cd $ed $5d
	ld   a, c                                        ; $711b: $79
	add  b                                           ; $711c: $80
	dec  a                                           ; $711d: $3d
	add  b                                           ; $711e: $80
	ld   e, c                                        ; $711f: $59
	dec  b                                           ; $7120: $05
	ld   c, h                                        ; $7121: $4c
	ld   a, l                                        ; $7122: $7d
	ld   [bc], a                                     ; $7123: $02
	ccf                                              ; $7124: $3f
	ld   [hl], c                                     ; $7125: $71
	ld   a, l                                        ; $7126: $7d
	add  b                                           ; $7127: $80
	ld   l, l                                        ; $7128: $6d
	add  b                                           ; $7129: $80
	ld   [$9380], sp                                 ; $712a: $08 $80 $93
	add  b                                           ; $712d: $80
	db   $db                                         ; $712e: $db
	add  b                                           ; $712f: $80
	or   e                                           ; $7130: $b3
	inc  b                                           ; $7131: $04
	inc  e                                           ; $7132: $1c
	rst  $38                                         ; $7133: $ff
	jr   nz, jr_033_7111                             ; $7134: $20 $db

	jp   $db81                                       ; $7136: $c3 $81 $db


	add  b                                           ; $7139: $80
	add  c                                           ; $713a: $81
	add  b                                           ; $713b: $80
	sbc  h                                           ; $713c: $9c
	add  b                                           ; $713d: $80
	sbc  $80                                         ; $713e: $de $80
	sbc  h                                           ; $7140: $9c
	inc  b                                           ; $7141: $04
	ld   a, h                                        ; $7142: $7c
	db   $fc                                         ; $7143: $fc
	ld   h, [hl]                                     ; $7144: $66
	cp   $c6                                         ; $7145: $fe $c6
	add  c                                           ; $7147: $81
	sbc  $80                                         ; $7148: $de $80
	ld   [$f380], sp                                 ; $714a: $08 $80 $f3
	add  b                                           ; $714d: $80
	db   $eb                                         ; $714e: $eb
	add  b                                           ; $714f: $80
	di                                               ; $7150: $f3

jr_033_7151:
	dec  b                                           ; $7151: $05
	db   $ec                                         ; $7152: $ec
	rst  $28                                         ; $7153: $ef
	jr   jr_033_7151                                 ; $7154: $18 $fb

	dec  bc                                          ; $7156: $0b
	db   $eb                                         ; $7157: $eb
	add  b                                           ; $7158: $80
	di                                               ; $7159: $f3
	add  b                                           ; $715a: $80
	ld   b, b                                        ; $715b: $40
	add  b                                           ; $715c: $80
	push af                                          ; $715d: $f5
	add  b                                           ; $715e: $80
	rst  $20                                         ; $715f: $e7
	add  b                                           ; $7160: $80
	rst  $30                                         ; $7161: $f7
	dec  b                                           ; $7162: $05
	ld   a, b                                        ; $7163: $78
	rst  $38                                         ; $7164: $ff
	ld   [$87ff], sp                                 ; $7165: $08 $ff $87
	rst  $30                                         ; $7168: $f7
	add  b                                           ; $7169: $80
	rst  $20                                         ; $716a: $e7
	add  b                                           ; $716b: $80
	add  h                                           ; $716c: $84
	add  d                                           ; $716d: $82
	db   $dd                                         ; $716e: $dd
	add  b                                           ; $716f: $80
	rst  $38                                         ; $7170: $ff
	inc  b                                           ; $7171: $04
	cp   $ff                                         ; $7172: $fe $ff
	ld   [hl+], a                                    ; $7174: $22
	rst  $38                                         ; $7175: $ff
	inc  bc                                          ; $7176: $03
	add  c                                           ; $7177: $81
	rst  JumpTable                                         ; $7178: $df
	add  b                                           ; $7179: $80
	nop                                              ; $717a: $00
	add  b                                           ; $717b: $80
	sub  a                                           ; $717c: $97
	add  b                                           ; $717d: $80
	and  a                                           ; $717e: $a7
	ld   b, $f7                                      ; $717f: $06 $f7
	or   $46                                         ; $7181: $f6 $46
	db   $f4                                         ; $7183: $f4
	ld   e, h                                        ; $7184: $5c
	db   $eb                                         ; $7185: $eb
	ei                                               ; $7186: $fb
	add  b                                           ; $7187: $80
	ldh  a, [$0c]                                    ; $7188: $f0 $0c
	rst  $28                                         ; $718a: $ef
	ld   l, a                                        ; $718b: $6f
	ld   b, d                                        ; $718c: $42
	di                                               ; $718d: $f3
	cp   $19                                         ; $718e: $fe $19
	rst  $38                                         ; $7190: $ff
	ld   c, h                                        ; $7191: $4c
	ei                                               ; $7192: $fb
	dec  a                                           ; $7193: $3d
	ldh  [c], a                                      ; $7194: $e2
	ld   bc, $80c0                                   ; $7195: $01 $c0 $80
	push af                                          ; $7198: $f5
	dec  d                                           ; $7199: $15
	ld   a, $fe                                      ; $719a: $3e $fe
	rra                                              ; $719c: $1f
	rst  $38                                         ; $719d: $ff
	xor  a                                           ; $719e: $af
	or   $23                                         ; $719f: $f6 $23
	dec  h                                           ; $71a1: $25
	ld   b, e                                        ; $71a2: $43
	jp   Jump_033_7f9f                               ; $71a3: $c3 $9f $7f


	ld   b, a                                        ; $71a6: $47
	cp   a                                           ; $71a7: $bf
	ld   b, c                                        ; $71a8: $41
	ccf                                              ; $71a9: $3f
	sub  d                                           ; $71aa: $92
	adc  a                                           ; $71ab: $8f
	ld   b, c                                        ; $71ac: $41
	ld   b, a                                        ; $71ad: $47
	xor  b                                           ; $71ae: $a8
	ld   d, l                                        ; $71af: $55
	add  b                                           ; $71b0: $80
	xor  d                                           ; $71b1: $aa
	add  d                                           ; $71b2: $82
	rst  $38                                         ; $71b3: $ff
	add  hl, bc                                      ; $71b4: $09
	xor  d                                           ; $71b5: $aa
	rst  $38                                         ; $71b6: $ff
	nop                                              ; $71b7: $00
	rst  $38                                         ; $71b8: $ff
	ld   a, [hl+]                                    ; $71b9: $2a
	rst  $38                                         ; $71ba: $ff
	cp   a                                           ; $71bb: $bf
	ld   a, a                                        ; $71bc: $7f
	rst  $38                                         ; $71bd: $ff
	ld   b, b                                        ; $71be: $40
	add  b                                           ; $71bf: $80
	xor  b                                           ; $71c0: $a8
	add  b                                           ; $71c1: $80
	push af                                          ; $71c2: $f5
	add  b                                           ; $71c3: $80
	rst  $38                                         ; $71c4: $ff
	ld   [$ffbf], sp                                 ; $71c5: $08 $bf $ff
	dec  d                                           ; $71c8: $15
	rst  $38                                         ; $71c9: $ff
	add  b                                           ; $71ca: $80
	rst  $38                                         ; $71cb: $ff
	ret  nc                                          ; $71cc: $d0

	rst  $38                                         ; $71cd: $ff
	dec  b                                           ; $71ce: $05
	add  a                                           ; $71cf: $87
	ld   [$8880], sp                                 ; $71d0: $08 $80 $88
	ld   d, $48                                      ; $71d3: $16 $48
	ret  z                                           ; $71d5: $c8

	adc  b                                           ; $71d6: $88
	ld   c, b                                        ; $71d7: $48
	sbc  $7f                                         ; $71d8: $de $7f
	ld   e, e                                        ; $71da: $5b
	ld   a, a                                        ; $71db: $7f
	ld   e, e                                        ; $71dc: $5b
	ld   a, a                                        ; $71dd: $7f
	ld   e, e                                        ; $71de: $5b
	ld   a, a                                        ; $71df: $7f
	ld   e, e                                        ; $71e0: $5b
	ld   a, a                                        ; $71e1: $7f
	ld   e, e                                        ; $71e2: $5b
	ld   a, a                                        ; $71e3: $7f
	ld   e, e                                        ; $71e4: $5b
	ld   a, a                                        ; $71e5: $7f
	ld   e, e                                        ; $71e6: $5b
	ld   a, a                                        ; $71e7: $7f
	sub  h                                           ; $71e8: $94
	cp   [hl]                                        ; $71e9: $be
	sbc  [hl]                                        ; $71ea: $9e
	adc  c                                           ; $71eb: $89
	cp   [hl]                                        ; $71ec: $be
	inc  bc                                          ; $71ed: $03
	add  $fe                                         ; $71ee: $c6 $fe
	rst  JumpTable                                         ; $71f0: $df
	and  b                                           ; $71f1: $a0
	add  b                                           ; $71f2: $80
	ret  nc                                          ; $71f3: $d0

	add  b                                           ; $71f4: $80
	and  b                                           ; $71f5: $a0
	add  b                                           ; $71f6: $80
	ret  nc                                          ; $71f7: $d0

	add  b                                           ; $71f8: $80
	and  b                                           ; $71f9: $a0
	add  b                                           ; $71fa: $80
	ret  nc                                          ; $71fb: $d0

	add  b                                           ; $71fc: $80
	and  b                                           ; $71fd: $a0
	add  b                                           ; $71fe: $80
	ret  nc                                          ; $71ff: $d0

	dec  b                                           ; $7200: $05
	ld   [hl], a                                     ; $7201: $77
	db   $ec                                         ; $7202: $ec
	dec  l                                           ; $7203: $2d
	db   $ed                                         ; $7204: $ed
	db   $ec                                         ; $7205: $ec
	add  sp, -$80                                    ; $7206: $e8 $80
	push hl                                          ; $7208: $e5
	add  b                                           ; $7209: $80
	add  sp, $01                                     ; $720a: $e8 $01
	call nz, $80e4                                   ; $720c: $c4 $e4 $80
	xor  b                                           ; $720f: $a8
	add  b                                           ; $7210: $80
	ld   b, b                                        ; $7211: $40
	add  b                                           ; $7212: $80
	ld   [hl], l                                     ; $7213: $75
	add  b                                           ; $7214: $80
	ld   a, c                                        ; $7215: $79
	add  b                                           ; $7216: $80
	ld   [hl], l                                     ; $7217: $75
	add  b                                           ; $7218: $80
	ld   a, c                                        ; $7219: $79
	add  b                                           ; $721a: $80
	ld   [hl], l                                     ; $721b: $75
	add  b                                           ; $721c: $80
	ld   sp, hl                                      ; $721d: $f9
	add  b                                           ; $721e: $80
	pop  af                                          ; $721f: $f1
	add  b                                           ; $7220: $80
	nop                                              ; $7221: $00
	add  b                                           ; $7222: $80
	rst  $10                                         ; $7223: $d7
	add  b                                           ; $7224: $80
	and  $80                                         ; $7225: $e6 $80
	rst  $10                                         ; $7227: $d7
	add  b                                           ; $7228: $80
	and  $80                                         ; $7229: $e6 $80
	rst  $10                                         ; $722b: $d7
	add  b                                           ; $722c: $80
	and  $80                                         ; $722d: $e6 $80
	rst  $10                                         ; $722f: $d7
	add  b                                           ; $7230: $80
	nop                                              ; $7231: $00
	add  b                                           ; $7232: $80
	ld   e, a                                        ; $7233: $5f
	add  b                                           ; $7234: $80
	sbc  [hl]                                        ; $7235: $9e
	add  b                                           ; $7236: $80
	ld   e, a                                        ; $7237: $5f
	add  b                                           ; $7238: $80
	sbc  [hl]                                        ; $7239: $9e
	add  b                                           ; $723a: $80
	ld   e, a                                        ; $723b: $5f
	add  b                                           ; $723c: $80
	sbc  [hl]                                        ; $723d: $9e
	add  b                                           ; $723e: $80
	rra                                              ; $723f: $1f
	add  b                                           ; $7240: $80
	nop                                              ; $7241: $00
	add  b                                           ; $7242: $80
	inc  a                                           ; $7243: $3c
	add  b                                           ; $7244: $80
	cp   d                                           ; $7245: $ba
	add  b                                           ; $7246: $80
	inc  a                                           ; $7247: $3c
	add  b                                           ; $7248: $80
	cp   d                                           ; $7249: $ba
	add  b                                           ; $724a: $80
	inc  a                                           ; $724b: $3c
	add  b                                           ; $724c: $80
	cp   d                                           ; $724d: $ba
	add  b                                           ; $724e: $80
	inc  a                                           ; $724f: $3c
	add  b                                           ; $7250: $80
	nop                                              ; $7251: $00
	add  b                                           ; $7252: $80
	call z, $ee80                                    ; $7253: $cc $80 $ee
	add  b                                           ; $7256: $80
	call $ee80                                       ; $7257: $cd $80 $ee
	add  b                                           ; $725a: $80
	call $ee80                                       ; $725b: $cd $80 $ee
	add  b                                           ; $725e: $80
	call z, $0080                                    ; $725f: $cc $80 $00
	add  b                                           ; $7262: $80
	ld   h, h                                        ; $7263: $64
	add  b                                           ; $7264: $80
	ld   [hl], d                                     ; $7265: $72
	add  b                                           ; $7266: $80
	ld   h, h                                        ; $7267: $64
	add  b                                           ; $7268: $80
	ld   [hl], d                                     ; $7269: $72
	add  b                                           ; $726a: $80
	ld   h, h                                        ; $726b: $64
	add  b                                           ; $726c: $80
	db   $10                                         ; $726d: $10
	add  d                                           ; $726e: $82
	nop                                              ; $726f: $00
	ld   hl, $b9f9                                   ; $7270: $21 $f9 $b9
	ccf                                              ; $7273: $3f
	ld   b, a                                        ; $7274: $47
	ld   b, b                                        ; $7275: $40
	jr   c, @+$40                                    ; $7276: $38 $3e

	ld   b, [hl]                                     ; $7278: $46
	rlca                                             ; $7279: $07
	inc  a                                           ; $727a: $3c
	dec  c                                           ; $727b: $0d
	inc  bc                                          ; $727c: $03
	inc  c                                           ; $727d: $0c
	nop                                              ; $727e: $00
	ld   bc, $4000                                   ; $727f: $01 $00 $40
	rst  $38                                         ; $7282: $ff
	rla                                              ; $7283: $17
	rst  $38                                         ; $7284: $ff
	add  d                                           ; $7285: $82
	cp   $41                                         ; $7286: $fe $41
	ld   a, l                                        ; $7288: $7d
	and  b                                           ; $7289: $a0
	cp   a                                           ; $728a: $bf
	or   c                                           ; $728b: $b1
	db   $fd                                         ; $728c: $fd
	ld   a, [bc]                                     ; $728d: $0a
	cp   $41                                         ; $728e: $fe $41
	rst  $38                                         ; $7290: $ff
	ld   e, [hl]                                     ; $7291: $5e
	xor  a                                           ; $7292: $af
	add  b                                           ; $7293: $80
	sub  a                                           ; $7294: $97
	add  b                                           ; $7295: $80
	dec  bc                                          ; $7296: $0b
	ld   a, [bc]                                     ; $7297: $0a
	add  c                                           ; $7298: $81
	di                                               ; $7299: $f3
	ld   h, b                                        ; $729a: $60
	sbc  a                                           ; $729b: $9f
	ld   [hl], h                                     ; $729c: $74
	rst  $38                                         ; $729d: $ff
	ld   a, h                                        ; $729e: $7c
	rst  $30                                         ; $729f: $f7
	ld   sp, hl                                      ; $72a0: $f9
	adc  a                                           ; $72a1: $8f
	call nz, Call_033_7f83                           ; $72a2: $c4 $83 $7f
	nop                                              ; $72a5: $00
	ccf                                              ; $72a6: $3f
	add  l                                           ; $72a7: $85
	rst  $38                                         ; $72a8: $ff
	nop                                              ; $72a9: $00
	ld   a, a                                        ; $72aa: $7f
	adc  a                                           ; $72ab: $8f
	rst  $38                                         ; $72ac: $ff
	ld   [bc], a                                     ; $72ad: $02
	add  b                                           ; $72ae: $80
	ret  z                                           ; $72af: $c8

	ld   c, b                                        ; $72b0: $48
	add  b                                           ; $72b1: $80
	adc  b                                           ; $72b2: $88
	inc  b                                           ; $72b3: $04
	ld   c, b                                        ; $72b4: $48
	ld   [$08c8], sp                                 ; $72b5: $08 $c8 $08
	adc  b                                           ; $72b8: $88
	add  d                                           ; $72b9: $82
	ld   [$0980], sp                                 ; $72ba: $08 $80 $09
	ld   de, $7f9e                                   ; $72bd: $11 $9e $7f
	ld   e, d                                        ; $72c0: $5a
	ld   a, a                                        ; $72c1: $7f
	ld   e, e                                        ; $72c2: $5b
	ld   a, a                                        ; $72c3: $7f
	ld   e, e                                        ; $72c4: $5b
	ld   a, a                                        ; $72c5: $7f
	ld   e, e                                        ; $72c6: $5b
	ld   a, a                                        ; $72c7: $7f
	ld   e, e                                        ; $72c8: $5b
	ld   a, a                                        ; $72c9: $7f
	ld   e, e                                        ; $72ca: $5b
	ld   a, a                                        ; $72cb: $7f
	ld   e, e                                        ; $72cc: $5b
	ld   a, a                                        ; $72cd: $7f
	call $80fe                                       ; $72ce: $cd $fe $80
	nop                                              ; $72d1: $00
	dec  c                                           ; $72d2: $0d
	ld   a, [hl-]                                    ; $72d3: $3a
	push af                                          ; $72d4: $f5
	ld   [$e5fa], a                                  ; $72d5: $ea $fa $e5
	push af                                          ; $72d8: $f5
	ld   [$e5fa], a                                  ; $72d9: $ea $fa $e5
	push af                                          ; $72dc: $f5
	ld   [$00fa], a                                  ; $72dd: $ea $fa $00
	and  b                                           ; $72e0: $a0
	add  b                                           ; $72e1: $80
	ret  nc                                          ; $72e2: $d0

	add  b                                           ; $72e3: $80
	and  b                                           ; $72e4: $a0
	add  b                                           ; $72e5: $80
	ret  nc                                          ; $72e6: $d0

	add  b                                           ; $72e7: $80
	and  b                                           ; $72e8: $a0
	add  b                                           ; $72e9: $80
	ret  nc                                          ; $72ea: $d0

	add  b                                           ; $72eb: $80
	and  b                                           ; $72ec: $a0
	add  b                                           ; $72ed: $80
	ret  nc                                          ; $72ee: $d0

	nop                                              ; $72ef: $00
	ld   a, a                                        ; $72f0: $7f
	add  c                                           ; $72f1: $81
	nop                                              ; $72f2: $00
	add  b                                           ; $72f3: $80
	and  b                                           ; $72f4: $a0
	add  b                                           ; $72f5: $80
	ld   d, h                                        ; $72f6: $54
	add  b                                           ; $72f7: $80
	ld   hl, sp-$80                                  ; $72f8: $f8 $80
	db   $fc                                         ; $72fa: $fc
	dec  b                                           ; $72fb: $05
	cp   h                                           ; $72fc: $bc
	db   $fc                                         ; $72fd: $fc
	inc  d                                           ; $72fe: $14
	db   $fc                                         ; $72ff: $fc
	ld   b, a                                        ; $7300: $47
	rst  $28                                         ; $7301: $ef
	add  b                                           ; $7302: $80
	ld   [hl], a                                     ; $7303: $77
	add  b                                           ; $7304: $80
	ld   a, [hl]                                     ; $7305: $7e
	ld   bc, $3d3c                                   ; $7306: $01 $3c $3d
	add  b                                           ; $7309: $80
	jp   Jump_033_4005                               ; $730a: $c3 $05 $40


	ld   a, a                                        ; $730d: $7f
	ld   e, a                                        ; $730e: $5f
	ld   a, a                                        ; $730f: $7f
	jr   nz, jr_033_7350                             ; $7310: $20 $3e

	add  b                                           ; $7312: $80
	cp   b                                           ; $7313: $b8
	add  b                                           ; $7314: $80
	jr   nc, jr_033_731a                             ; $7315: $30 $03

	jr   nz, @-$1e                                   ; $7317: $20 $e0

	ret  nz                                          ; $7319: $c0

jr_033_731a:
	ldh  [$80], a                                    ; $731a: $e0 $80
	jr   nc, jr_033_731f                             ; $731c: $30 $01

	add  b                                           ; $731e: $80

jr_033_731f:
	sub  b                                           ; $731f: $90
	add  b                                           ; $7320: $80
	sub  c                                           ; $7321: $91
	rrca                                             ; $7322: $0f
	jp   nz, $aec3                                   ; $7323: $c2 $c3 $ae

	ld   e, h                                        ; $7326: $5c
	adc  h                                           ; $7327: $8c
	call $d2d0                                       ; $7328: $cd $d0 $d2
	ld   d, a                                        ; $732b: $57
	rst  $10                                         ; $732c: $d7
	sub  l                                           ; $732d: $95
	sub  a                                           ; $732e: $97
	sbc  l                                           ; $732f: $9d
	sbc  c                                           ; $7330: $99
	and  c                                           ; $7331: $a1
	and  a                                           ; $7332: $a7
	add  b                                           ; $7333: $80
	jr   nc, jr_033_7341                             ; $7334: $30 $0b

	ld   a, $98                                      ; $7336: $3e $98
	sbc  d                                           ; $7338: $9a
	sbc  h                                           ; $7339: $9c
	dec  bc                                          ; $733a: $0b
	ld   l, a                                        ; $733b: $6f
	or   $fe                                         ; $733c: $f6 $fe
	cp   a                                           ; $733e: $bf
	rst  $38                                         ; $733f: $ff
	ld   a, [hl-]                                    ; $7340: $3a

jr_033_7341:
	cp   d                                           ; $7341: $ba
	add  b                                           ; $7342: $80
	jr   nc, jr_033_7346                             ; $7343: $30 $01

	push de                                          ; $7345: $d5

jr_033_7346:
	add  hl, de                                      ; $7346: $19
	add  b                                           ; $7347: $80
	ld   b, e                                        ; $7348: $43
	add  b                                           ; $7349: $80
	add  b                                           ; $734a: $80
	add  b                                           ; $734b: $80
	dec  de                                          ; $734c: $1b
	dec  bc                                          ; $734d: $0b
	inc  l                                           ; $734e: $2c
	ccf                                              ; $734f: $3f

jr_033_7350:
	ld   e, e                                        ; $7350: $5b
	ld   a, a                                        ; $7351: $7f
	cp   [hl]                                        ; $7352: $be
	cp   $88                                         ; $7353: $fe $88
	sbc  b                                           ; $7355: $98
	cp   c                                           ; $7356: $b9
	ld   sp, $e00f                                   ; $7357: $31 $0f $e0
	add  b                                           ; $735a: $80
	nop                                              ; $735b: $00
	add  b                                           ; $735c: $80
	or   a                                           ; $735d: $b7
	inc  bc                                          ; $735e: $03
	reti                                             ; $735f: $d9


	rst  $38                                         ; $7360: $ff
	or   a                                           ; $7361: $b7
	rst  $38                                         ; $7362: $ff
	add  b                                           ; $7363: $80
	db   $db                                         ; $7364: $db
	add  b                                           ; $7365: $80
	sub  e                                           ; $7366: $93
	ld   bc, $107e                                   ; $7367: $01 $7e $10
	add  b                                           ; $736a: $80
	rra                                              ; $736b: $1f
	add  b                                           ; $736c: $80
	rlca                                             ; $736d: $07
	add  b                                           ; $736e: $80
	ld   b, b                                        ; $736f: $40
	add  b                                           ; $7370: $80
	ld   [hl], b                                     ; $7371: $70
	add  b                                           ; $7372: $80
	ld   a, b                                        ; $7373: $78
	nop                                              ; $7374: $00
	ld   [$1883], sp                                 ; $7375: $08 $83 $18
	nop                                              ; $7378: $00
	db   $10                                         ; $7379: $10
	adc  a                                           ; $737a: $8f
	nop                                              ; $737b: $00
	db   $10                                         ; $737c: $10
	ld   a, $00                                      ; $737d: $3e $00
	ld   h, b                                        ; $737f: $60
	nop                                              ; $7380: $00
	jr   nc, jr_033_7383                             ; $7381: $30 $00

jr_033_7383:
	jr   jr_033_7385                                 ; $7383: $18 $00

jr_033_7385:
	inc  c                                           ; $7385: $0c
	nop                                              ; $7386: $00
	ld   b, $00                                      ; $7387: $06 $00
	ld   a, h                                        ; $7389: $7c
	nop                                              ; $738a: $00
	ld   a, b                                        ; $738b: $78
	nop                                              ; $738c: $00
	inc  e                                           ; $738d: $1c
	add  e                                           ; $738e: $83
	nop                                              ; $738f: $00
	ld   [bc], a                                     ; $7390: $02
	inc  e                                           ; $7391: $1c
	nop                                              ; $7392: $00
	jr   @-$7b                                       ; $7393: $18 $83

	nop                                              ; $7395: $00
	add  hl, de                                      ; $7396: $19
	ld   e, h                                        ; $7397: $5c
	nop                                              ; $7398: $00
	ld   e, b                                        ; $7399: $58
	nop                                              ; $739a: $00
	inc  b                                           ; $739b: $04
	nop                                              ; $739c: $00
	ld   d, b                                        ; $739d: $50
	nop                                              ; $739e: $00
	jr   z, jr_033_73a1                              ; $739f: $28 $00

jr_033_73a1:
	inc  d                                           ; $73a1: $14
	nop                                              ; $73a2: $00
	ld   b, b                                        ; $73a3: $40
	nop                                              ; $73a4: $00
	inc  [hl]                                        ; $73a5: $34
	nop                                              ; $73a6: $00
	add  l                                           ; $73a7: $85
	dec  bc                                          ; $73a8: $0b
	dec  c                                           ; $73a9: $0d
	rrca                                             ; $73aa: $0f
	jr   jr_033_73cc                                 ; $73ab: $18 $1f

	ld   l, h                                        ; $73ad: $6c
	rst  $38                                         ; $73ae: $ff
	ld   [hl+], a                                    ; $73af: $22
	ld   c, [hl]                                     ; $73b0: $4e
	add  b                                           ; $73b1: $80
	rra                                              ; $73b2: $1f
	dec  c                                           ; $73b3: $0d
	and  a                                           ; $73b4: $a7
	cp   e                                           ; $73b5: $bb
	ld   d, a                                        ; $73b6: $57
	ld   a, a                                        ; $73b7: $7f
	ld   c, d                                        ; $73b8: $4a
	ld   [hl], e                                     ; $73b9: $73
	inc  hl                                          ; $73ba: $23
	db   $e3                                         ; $73bb: $e3
	add  a                                           ; $73bc: $87
	rst  $20                                         ; $73bd: $e7
	dec  de                                          ; $73be: $1b
	ei                                               ; $73bf: $fb
	cp   e                                           ; $73c0: $bb
	ei                                               ; $73c1: $fb
	add  b                                           ; $73c2: $80
	ld   a, e                                        ; $73c3: $7b
	ld   bc, $7372                                   ; $73c4: $01 $72 $73
	add  b                                           ; $73c7: $80
	inc  bc                                          ; $73c8: $03
	ld   de, $f53a                                   ; $73c9: $11 $3a $f5

jr_033_73cc:
	ld   [$e5fa], a                                  ; $73cc: $ea $fa $e5
	push af                                          ; $73cf: $f5
	ld   [$e5fa], a                                  ; $73d0: $ea $fa $e5
	push af                                          ; $73d3: $f5
	ld   [$e5fa], a                                  ; $73d4: $ea $fa $e5
	push af                                          ; $73d7: $f5
	di                                               ; $73d8: $f3
	ccf                                              ; $73d9: $3f
	call c, $80a0                                    ; $73da: $dc $a0 $80
	ret  nc                                          ; $73dd: $d0

	add  b                                           ; $73de: $80
	and  b                                           ; $73df: $a0
	add  b                                           ; $73e0: $80
	ret  nc                                          ; $73e1: $d0

	add  b                                           ; $73e2: $80
	and  b                                           ; $73e3: $a0
	add  b                                           ; $73e4: $80
	ret  nc                                          ; $73e5: $d0

	add  b                                           ; $73e6: $80
	and  b                                           ; $73e7: $a0
	add  b                                           ; $73e8: $80
	ret  nc                                          ; $73e9: $d0

	inc  c                                           ; $73ea: $0c
	db   $d3                                         ; $73eb: $d3
	db   $fc                                         ; $73ec: $fc
	ld   c, l                                        ; $73ed: $4d
	rst  $30                                         ; $73ee: $f7
	ldh  [rIE], a                                    ; $73ef: $e0 $ff
	ldh  a, [rIE]                                    ; $73f1: $f0 $ff
	ld   hl, sp-$01                                  ; $73f3: $f8 $ff
	db   $fc                                         ; $73f5: $fc
	rst  $38                                         ; $73f6: $ff
	cp   $82                                         ; $73f7: $fe $82
	rst  $38                                         ; $73f9: $ff
	nop                                              ; $73fa: $00
	nop                                              ; $73fb: $00
	add  b                                           ; $73fc: $80
	dec  e                                           ; $73fd: $1d
	inc  bc                                          ; $73fe: $03
	ld   a, [bc]                                     ; $73ff: $0a
	rrca                                             ; $7400: $0f
	ld   [$820e], sp                                 ; $7401: $08 $0e $82

Jump_033_7404:
	rlca                                             ; $7404: $07
	ld   bc, $8784                                   ; $7405: $01 $84 $87
	add  b                                           ; $7408: $80

jr_033_7409:
	ret  nz                                          ; $7409: $c0

	dec  c                                           ; $740a: $0d
	push bc                                          ; $740b: $c5
	or   $28                                         ; $740c: $f6 $28
	db   $fc                                         ; $740e: $fc
	inc  de                                          ; $740f: $13
	rla                                              ; $7410: $17
	ld   [$f41b], sp                                 ; $7411: $08 $1b $f4
	db   $fc                                         ; $7414: $fc
	db   $f4                                         ; $7415: $f4
	db   $fc                                         ; $7416: $fc
	ld   bc, $80f1                                   ; $7417: $01 $f1 $80
	ld   a, [bc]                                     ; $741a: $0a
	dec  b                                           ; $741b: $05
	or   h                                           ; $741c: $b4
	ld   [hl], h                                     ; $741d: $74
	and  [hl]                                        ; $741e: $a6
	and  $46                                         ; $741f: $e6 $46
	add  $82                                         ; $7421: $c6 $82
	ld   b, $80                                      ; $7423: $06 $80
	ld   [bc], a                                     ; $7425: $02
	add  b                                           ; $7426: $80
	ld   d, h                                        ; $7427: $54
	add  b                                           ; $7428: $80
	xor  d                                           ; $7429: $aa
	add  b                                           ; $742a: $80
	nop                                              ; $742b: $00
	rrca                                             ; $742c: $0f
	ld   b, a                                        ; $742d: $47
	rst  ToBoot                                         ; $742e: $c7
	db   $dd                                         ; $742f: $dd
	rst  JumpTable                                         ; $7430: $df
	jp   c, $d7df                                    ; $7431: $da $df $d7

	rst  JumpTable                                         ; $7434: $df
	push bc                                          ; $7435: $c5
	rst  JumpTable                                         ; $7436: $df
	ret  nz                                          ; $7437: $c0

	rst  JumpTable                                         ; $7438: $df
	push de                                          ; $7439: $d5
	rst  JumpTable                                         ; $743a: $df
	add  b                                           ; $743b: $80
	nop                                              ; $743c: $00
	add  b                                           ; $743d: $80
	ret  nz                                          ; $743e: $c0

	ld   [bc], a                                     ; $743f: $02
	ld   a, a                                        ; $7440: $7f
	rst  $38                                         ; $7441: $ff
	add  b                                           ; $7442: $80
	add  c                                           ; $7443: $81
	rst  $38                                         ; $7444: $ff
	dec  b                                           ; $7445: $05
	ld   d, l                                        ; $7446: $55
	rst  $38                                         ; $7447: $ff
	nop                                              ; $7448: $00
	rst  $38                                         ; $7449: $ff
	ld   d, l                                        ; $744a: $55
	rst  $38                                         ; $744b: $ff
	add  b                                           ; $744c: $80
	inc  bc                                          ; $744d: $03
	inc  b                                           ; $744e: $04
	ld   sp, hl                                      ; $744f: $f9
	ei                                               ; $7450: $fb
	db   $d3                                         ; $7451: $d3
	ei                                               ; $7452: $fb
	dec  hl                                          ; $7453: $2b
	add  c                                           ; $7454: $81
	ei                                               ; $7455: $fb
	ld   b, $53                                      ; $7456: $06 $53
	ei                                               ; $7458: $fb
	inc  bc                                          ; $7459: $03
	ei                                               ; $745a: $fb
	ld   d, e                                        ; $745b: $53
	ei                                               ; $745c: $fb
	ld   a, [bc]                                     ; $745d: $0a
	adc  l                                           ; $745e: $8d
	jr   jr_033_7479                                 ; $745f: $18 $18

	jr   nc, jr_033_7463                             ; $7461: $30 $00

jr_033_7463:
	call c, $dc00                                    ; $7463: $dc $00 $dc
	nop                                              ; $7466: $00
	ld   e, h                                        ; $7467: $5c
	nop                                              ; $7468: $00
	sub  $00                                         ; $7469: $d6 $00
	jr   jr_033_746d                                 ; $746b: $18 $00

jr_033_746d:
	sub  $00                                         ; $746d: $d6 $00
	ld   h, h                                        ; $746f: $64
	nop                                              ; $7470: $00
	add  b                                           ; $7471: $80
	nop                                              ; $7472: $00
	call z, $7c00                                    ; $7473: $cc $00 $7c
	nop                                              ; $7476: $00
	ld   [hl], b                                     ; $7477: $70
	nop                                              ; $7478: $00

jr_033_7479:
	ret  nz                                          ; $7479: $c0

	add  c                                           ; $747a: $81
	nop                                              ; $747b: $00
	inc  b                                           ; $747c: $04
	db   $fc                                         ; $747d: $fc
	nop                                              ; $747e: $00
	ld   a, h                                        ; $747f: $7c
	nop                                              ; $7480: $00
	rst  $38                                         ; $7481: $ff
	add  c                                           ; $7482: $81
	nop                                              ; $7483: $00
	add  d                                           ; $7484: $82
	jr   jr_033_7409                                 ; $7485: $18 $82

	add  hl, de                                      ; $7487: $19
	add  d                                           ; $7488: $82
	nop                                              ; $7489: $00
	add  b                                           ; $748a: $80
	rst  $38                                         ; $748b: $ff
	ld   bc, $f5f4                                   ; $748c: $01 $f4 $f5
	add  b                                           ; $748f: $80
	xor  e                                           ; $7490: $ab
	ld   bc, $5554                                   ; $7491: $01 $54 $55
	add  b                                           ; $7494: $80
	and  b                                           ; $7495: $a0
	add  c                                           ; $7496: $81
	nop                                              ; $7497: $00

Jump_033_7498:
	add  b                                           ; $7498: $80
	ld   bc, $031c                                   ; $7499: $01 $1c $03
	cp   d                                           ; $749c: $ba
	ld   a, [hl]                                     ; $749d: $7e
	and  l                                           ; $749e: $a5
	sbc  l                                           ; $749f: $9d
	xor  d                                           ; $74a0: $aa
	cp   [hl]                                        ; $74a1: $be
	ld   e, $3e                                      ; $74a2: $1e $3e
	xor  l                                           ; $74a4: $ad
	xor  e                                           ; $74a5: $ab
	inc  de                                          ; $74a6: $13
	dec  sp                                          ; $74a7: $3b
	add  hl, bc                                      ; $74a8: $09
	inc  de                                          ; $74a9: $13
	dec  bc                                          ; $74aa: $0b
	dec  de                                          ; $74ab: $1b
	nop                                              ; $74ac: $00
	ld   [hl], b                                     ; $74ad: $70
	ld   bc, $7a91                                   ; $74ae: $01 $91 $7a
	bit  7, b                                        ; $74b1: $cb $78
	ld   a, [hl-]                                    ; $74b3: $3a
	ld   a, c                                        ; $74b4: $79
	ld   a, e                                        ; $74b5: $7b
	ld   a, h                                        ; $74b6: $7c
	ld   a, l                                        ; $74b7: $7d
	add  b                                           ; $74b8: $80
	cp   d                                           ; $74b9: $ba
	dec  c                                           ; $74ba: $0d
	add  l                                           ; $74bb: $85
	add  a                                           ; $74bc: $87
	pop  bc                                          ; $74bd: $c1
	rst  $38                                         ; $74be: $ff
	add  b                                           ; $74bf: $80
	add  $22                                         ; $74c0: $c6 $22
	ld   h, [hl]                                     ; $74c2: $66
	inc  d                                           ; $74c3: $14
	cp   [hl]                                        ; $74c4: $be
	add  b                                           ; $74c5: $80
	cp   h                                           ; $74c6: $bc
	ld   de, $80b9                                   ; $74c7: $11 $b9 $80
	ld   [hl], c                                     ; $74ca: $71
	add  b                                           ; $74cb: $80
	ld   bc, $df01                                   ; $74cc: $01 $01 $df
	and  b                                           ; $74cf: $a0
	add  b                                           ; $74d0: $80
	ret  nc                                          ; $74d1: $d0

	add  b                                           ; $74d2: $80
	and  b                                           ; $74d3: $a0
	add  b                                           ; $74d4: $80
	ret  nc                                          ; $74d5: $d0

	add  b                                           ; $74d6: $80
	and  b                                           ; $74d7: $a0
	add  b                                           ; $74d8: $80
	ret  nc                                          ; $74d9: $d0

	add  b                                           ; $74da: $80
	and  b                                           ; $74db: $a0
	add  b                                           ; $74dc: $80
	ret  nc                                          ; $74dd: $d0

	ld   [bc], a                                     ; $74de: $02
	nop                                              ; $74df: $00
	ret  nz                                          ; $74e0: $c0

	ld   b, b                                        ; $74e1: $40
	add  d                                           ; $74e2: $82
	ret  nz                                          ; $74e3: $c0

	add  b                                           ; $74e4: $80
	ld   hl, sp-$7e                                  ; $74e5: $f8 $82
	ldh  a, [$80]                                    ; $74e7: $f0 $80
	ldh  [rP1], a                                    ; $74e9: $e0 $00
	add  b                                           ; $74eb: $80
	add  b                                           ; $74ec: $80
	db   $fd                                         ; $74ed: $fd
	ld   bc, $ffbf                                   ; $74ee: $01 $bf $ff
	add  b                                           ; $74f1: $80
	rst  JumpTable                                         ; $74f2: $df
	inc  b                                           ; $74f3: $04
	call Call_033_626d                               ; $74f4: $cd $6d $62
	ldh  [c], a                                      ; $74f7: $e2
	ldh  [$80], a                                    ; $74f8: $e0 $80
	ld   h, b                                        ; $74fa: $60
	add  b                                           ; $74fb: $80
	jr   nz, jr_033_7501                             ; $74fc: $20 $03

	ld   [hl], b                                     ; $74fe: $70
	or   b                                           ; $74ff: $b0
	rst  ToBoot                                         ; $7500: $c7

jr_033_7501:
	rst  $38                                         ; $7501: $ff
	add  b                                           ; $7502: $80
	rst  JumpTable                                         ; $7503: $df
	dec  b                                           ; $7504: $05
	rst  $20                                         ; $7505: $e7
	inc  bc                                          ; $7506: $03
	rra                                              ; $7507: $1f
	db   $e4                                         ; $7508: $e4
	rst  $20                                         ; $7509: $e7
	rst  $38                                         ; $750a: $ff
	add  d                                           ; $750b: $82
	cp   a                                           ; $750c: $bf
	ld   bc, $f708                                   ; $750d: $01 $08 $f7
	add  b                                           ; $7510: $80
	add  b                                           ; $7511: $80
	add  e                                           ; $7512: $83

jr_033_7513:
	nop                                              ; $7513: $00
	add  l                                           ; $7514: $85
	rst  $38                                         ; $7515: $ff
	inc  bc                                          ; $7516: $03
	ld   hl, $39df                                   ; $7517: $21 $df $39
	ccf                                              ; $751a: $3f
	add  b                                           ; $751b: $80
	add  hl, de                                      ; $751c: $19
	inc  b                                           ; $751d: $04
	rra                                              ; $751e: $1f
	rla                                              ; $751f: $17

jr_033_7520:
	rra                                              ; $7520: $1f
	db   $ec                                         ; $7521: $ec
	db   $fc                                         ; $7522: $fc
	add  b                                           ; $7523: $80
	rst  $38                                         ; $7524: $ff
	add  b                                           ; $7525: $80
	rst  JumpTable                                         ; $7526: $df
	ld   [bc], a                                     ; $7527: $02
	rst  $38                                         ; $7528: $ff
	ld   bc, $edfe                                   ; $7529: $01 $fe $ed
	nop                                              ; $752c: $00
	dec  de                                          ; $752d: $1b
	db   $eb                                         ; $752e: $eb
	inc  e                                           ; $752f: $1c
	scf                                              ; $7530: $37
	ccf                                              ; $7531: $3f
	sbc  a                                           ; $7532: $9f
	rst  $38                                         ; $7533: $ff
	and  c                                           ; $7534: $a1
	ccf                                              ; $7535: $3f
	add  h                                           ; $7536: $84
	add  [hl]                                        ; $7537: $86
	db   $fc                                         ; $7538: $fc
	nop                                              ; $7539: $00
	ei                                               ; $753a: $fb
	rst  $38                                         ; $753b: $ff
	db   $dd                                         ; $753c: $dd
	rst  $38                                         ; $753d: $ff
	xor  [hl]                                        ; $753e: $ae
	adc  a                                           ; $753f: $8f
	rla                                              ; $7540: $17
	rra                                              ; $7541: $1f
	inc  de                                          ; $7542: $13
	rra                                              ; $7543: $1f
	ld   b, l                                        ; $7544: $45
	ld   h, a                                        ; $7545: $67
	add  b                                           ; $7546: $80
	cp   c                                           ; $7547: $b9
	xor  c                                           ; $7548: $a9
	cp   a                                           ; $7549: $bf
	add  b                                           ; $754a: $80
	ld   a, a                                        ; $754b: $7f
	dec  bc                                          ; $754c: $0b
	or   a                                           ; $754d: $b7
	cp   a                                           ; $754e: $bf
	ccf                                              ; $754f: $3f
	ld   sp, hl                                      ; $7550: $f9
	sub  h                                           ; $7551: $94
	call c, $ddd9                                    ; $7552: $dc $d9 $dd
	jr   c, jr_033_7513                              ; $7555: $38 $bc

	and  h                                           ; $7557: $a4
	xor  h                                           ; $7558: $ac
	add  b                                           ; $7559: $80
	adc  l                                           ; $755a: $8d
	add  b                                           ; $755b: $80
	adc  c                                           ; $755c: $89
	add  b                                           ; $755d: $80
	ret  nz                                          ; $755e: $c0

	ld   bc, $a0df                                   ; $755f: $01 $df $a0
	add  b                                           ; $7562: $80
	ret  nc                                          ; $7563: $d0

	dec  b                                           ; $7564: $05
	ld   [$a178], sp                                 ; $7565: $08 $78 $a1
	xor  a                                           ; $7568: $af
	ld   d, h                                        ; $7569: $54
	ld   d, l                                        ; $756a: $55
	add  b                                           ; $756b: $80
	adc  d                                           ; $756c: $8a
	add  b                                           ; $756d: $80
	pop  af                                          ; $756e: $f1
	add  b                                           ; $756f: $80
	ld   a, h                                        ; $7570: $7c
	nop                                              ; $7571: $00
	rst  $38                                         ; $7572: $ff
	rst  $38                                         ; $7573: $ff
	nop                                              ; $7574: $00

jr_033_7575:
	cp   h                                           ; $7575: $bc
	nop                                              ; $7576: $00
	inc  sp                                          ; $7577: $33
	ld   bc, $0001                                   ; $7578: $01 $01 $00
	ld   bc, $0080                                   ; $757b: $01 $80 $00
	ld   [hl], $02                                   ; $757e: $36 $02
	ld   bc, $010c                                   ; $7580: $01 $0c $01
	db   $10                                         ; $7583: $10
	rrca                                             ; $7584: $0f
	dec  de                                          ; $7585: $1b
	ld   b, $17                                      ; $7586: $06 $17
	dec  c                                           ; $7588: $0d
	ld   l, a                                        ; $7589: $6f
	inc  b                                           ; $758a: $04
	adc  c                                           ; $758b: $89
	ld   c, [hl]                                     ; $758c: $4e
	ld   b, c                                        ; $758d: $41
	adc  h                                           ; $758e: $8c
	adc  c                                           ; $758f: $89
	ld   a, [$1fe2]                                  ; $7590: $fa $e2 $1f
	rst  ToBoot                                         ; $7593: $c7

jr_033_7594:
	ret  nz                                          ; $7594: $c0

	rrca                                             ; $7595: $0f
	jr   nz, jr_033_7520                             ; $7596: $20 $88

	jr   nc, jr_033_75ea                             ; $7598: $30 $50

	nop                                              ; $759a: $00
	ccf                                              ; $759b: $3f
	ld   [bc], a                                     ; $759c: $02
	dec  bc                                          ; $759d: $0b
	dec  b                                           ; $759e: $05
	ld   d, $8b                                      ; $759f: $16 $8b
	add  hl, hl                                      ; $75a1: $29
	ld   b, e                                        ; $75a2: $43
	ld   sp, $f002                                   ; $75a3: $31 $02 $f0
	rrca                                             ; $75a6: $0f
	ld   b, e                                        ; $75a7: $43

jr_033_75a8:
	inc  a                                           ; $75a8: $3c
	ld   a, a                                        ; $75a9: $7f
	nop                                              ; $75aa: $00
	adc  $f5                                         ; $75ab: $ce $f5
	sub  b                                           ; $75ad: $90
	or   $58                                         ; $75ae: $f6 $58
	db   $e3                                         ; $75b0: $e3
	dec  [hl]                                        ; $75b1: $35
	ret  nc                                          ; $75b2: $d0

	jp   $0408                                       ; $75b3: $c3 $08 $04


	add  b                                           ; $75b6: $80
	ldh  a, [rIF]                                    ; $75b7: $f0 $0f
	nop                                              ; $75b9: $00
	db   $fc                                         ; $75ba: $fc
	nop                                              ; $75bb: $00
	dec  sp                                          ; $75bc: $3b
	inc  c                                           ; $75bd: $0c
	ret  z                                           ; $75be: $c8

	ld   de, $a691                                   ; $75bf: $11 $91 $a6
	inc  hl                                          ; $75c2: $23
	inc  a                                           ; $75c3: $3c
	xor  e                                           ; $75c4: $ab
	ld   [hl-], a                                    ; $75c5: $32
	ld   l, a                                        ; $75c6: $6f
	ld   b, c                                        ; $75c7: $41
	ld   [hl], c                                     ; $75c8: $71
	add  c                                           ; $75c9: $81
	nop                                              ; $75ca: $00
	jr   nz, jr_033_7594                             ; $75cb: $20 $c7

	adc  d                                           ; $75cd: $8a
	jp   $9604                                       ; $75ce: $c3 $04 $96


	ld   a, [bc]                                     ; $75d1: $0a
	ld   c, [hl]                                     ; $75d2: $4e
	inc  [hl]                                        ; $75d3: $34
	sbc  h                                           ; $75d4: $9c
	ld   c, b                                        ; $75d5: $48
	ld   a, c                                        ; $75d6: $79
	ld   [hl+], a                                    ; $75d7: $22
	ldh  [rDIV], a                                   ; $75d8: $e0 $04

jr_033_75da:
	rlca                                             ; $75da: $07
	nop                                              ; $75db: $00
	ld   l, $15                                      ; $75dc: $2e $15
	inc  c                                           ; $75de: $0c
	rra                                              ; $75df: $1f
	rla                                              ; $75e0: $17
	ld   [$3823], sp                                 ; $75e1: $08 $23 $38
	sub  [hl]                                        ; $75e4: $96
	ld   l, h                                        ; $75e5: $6c
	jr   nz, jr_033_7575                             ; $75e6: $20 $8d

	or   $00                                         ; $75e8: $f6 $00

jr_033_75ea:
	adc  l                                           ; $75ea: $8d
	nop                                              ; $75eb: $00
	db   $fc                                         ; $75ec: $fc
	add  b                                           ; $75ed: $80
	xor  b                                           ; $75ee: $a8
	dec  c                                           ; $75ef: $0d
	ld   e, b                                        ; $75f0: $58
	ld   e, h                                        ; $75f1: $5c
	ld   d, b                                        ; $75f2: $50
	ret  nc                                          ; $75f3: $d0

	and  b                                           ; $75f4: $a0
	xor  b                                           ; $75f5: $a8
	jr   nz, jr_033_75a8                             ; $75f6: $20 $b0

	ld   d, b                                        ; $75f8: $50
	db   $10                                         ; $75f9: $10
	ret  nz                                          ; $75fa: $c0

	and  b                                           ; $75fb: $a0
	nop                                              ; $75fc: $00
	ccf                                              ; $75fd: $3f
	add  b                                           ; $75fe: $80
	ld   b, e                                        ; $75ff: $43
	dec  de                                          ; $7600: $1b
	ld   e, $c6                                      ; $7601: $1e $c6
	dec  e                                           ; $7603: $1d
	ld   d, l                                        ; $7604: $55
	inc  a                                           ; $7605: $3c
	inc  c                                           ; $7606: $0c
	dec  [hl]                                        ; $7607: $35
	or   c                                           ; $7608: $b1

jr_033_7609:
	ld   l, h                                        ; $7609: $6c
	ld   c, e                                        ; $760a: $4b
	jr   jr_033_7609                                 ; $760b: $18 $fc

	nop                                              ; $760d: $00
	ldh  a, [$c4]                                    ; $760e: $f0 $c4
	ld   l, h                                        ; $7610: $6c
	add  b                                           ; $7611: $80
	nop                                              ; $7612: $00
	add  b                                           ; $7613: $80
	ret  nz                                          ; $7614: $c0

	nop                                              ; $7615: $00
	ld   b, b                                        ; $7616: $40
	nop                                              ; $7617: $00
	jr   nz, jr_033_75da                             ; $7618: $20 $c0

	ret  nc                                          ; $761a: $d0

	nop                                              ; $761b: $00
	ldh  a, [$81]                                    ; $761c: $f0 $81
	nop                                              ; $761e: $00
	nop                                              ; $761f: $00
	ccf                                              ; $7620: $3f
	add  b                                           ; $7621: $80
	nop                                              ; $7622: $00
	add  b                                           ; $7623: $80
	rra                                              ; $7624: $1f

jr_033_7625:
	add  b                                           ; $7625: $80
	db   $10                                         ; $7626: $10
	add  hl, bc                                      ; $7627: $09
	ld   e, a                                        ; $7628: $5f
	rrca                                             ; $7629: $0f
	jr   nc, @-$5e                                   ; $762a: $30 $a0

	ccf                                              ; $762c: $3f
	dec  a                                           ; $762d: $3d
	ld   b, $f9                                      ; $762e: $06 $f9
	nop                                              ; $7630: $00
	db   $fd                                         ; $7631: $fd

jr_033_7632:
	add  b                                           ; $7632: $80
	ld   [bc], a                                     ; $7633: $02
	dec  l                                           ; $7634: $2d
	rst  $20                                         ; $7635: $e7
	db   $ec                                         ; $7636: $ec
	ld   l, a                                        ; $7637: $6f
	ld   b, b                                        ; $7638: $40
	push af                                          ; $7639: $f5
	ld   c, e                                        ; $763a: $4b
	sbc  $44                                         ; $763b: $de $44
	sbc  $df                                         ; $763d: $de $df
	add  hl, bc                                      ; $763f: $09
	rst  $30                                         ; $7640: $f7
	nop                                              ; $7641: $00
	pop  af                                          ; $7642: $f1
	nop                                              ; $7643: $00
	ld   c, a                                        ; $7644: $4f
	ld   [hl], c                                     ; $7645: $71
	inc  [hl]                                        ; $7646: $34
	db   $dd                                         ; $7647: $dd
	pop  de                                          ; $7648: $d1
	dec  bc                                          ; $7649: $0b
	ld   bc, $a8fb                                   ; $764a: $01 $fb $a8
	ld   d, e                                        ; $764d: $53
	ld   [bc], a                                     ; $764e: $02
	ldh  a, [c]                                      ; $764f: $f2
	dec  c                                           ; $7650: $0d
	nop                                              ; $7651: $00
	add  b                                           ; $7652: $80
	nop                                              ; $7653: $00
	ld   b, b                                        ; $7654: $40
	add  b                                           ; $7655: $80
	or   b                                           ; $7656: $b0
	nop                                              ; $7657: $00
	ld   [$f8f0], sp                                 ; $7658: $08 $f0 $f8
	nop                                              ; $765b: $00
	ld   [hl], b                                     ; $765c: $70
	nop                                              ; $765d: $00
	ld   [hl], b                                     ; $765e: $70
	nop                                              ; $765f: $00
	sbc  l                                           ; $7660: $9d
	nop                                              ; $7661: $00
	sub  d                                           ; $7662: $92
	add  b                                           ; $7663: $80
	ld   l, l                                        ; $7664: $6d
	add  d                                           ; $7665: $82
	ld   l, a                                        ; $7666: $6f
	add  hl, bc                                      ; $7667: $09
	ld   h, a                                        ; $7668: $67
	ld   l, a                                        ; $7669: $6f
	ld   h, d                                        ; $766a: $62
	ld   h, a                                        ; $766b: $67
	ld   h, b                                        ; $766c: $60
	ld   l, d                                        ; $766d: $6a
	ld   [hl], b                                     ; $766e: $70
	inc  d                                           ; $766f: $14
	nop                                              ; $7670: $00
	ld   h, d                                        ; $7671: $62
	add  c                                           ; $7672: $81
	sbc  h                                           ; $7673: $9c
	nop                                              ; $7674: $00
	sbc  l                                           ; $7675: $9d
	add  b                                           ; $7676: $80
	sbc  h                                           ; $7677: $9c
	add  e                                           ; $7678: $83
	ld   a, a                                        ; $7679: $7f
	inc  e                                           ; $767a: $1c
	rst  $38                                         ; $767b: $ff
	inc  c                                           ; $767c: $0c
	ld   [hl], e                                     ; $767d: $73
	nop                                              ; $767e: $00
	inc  bc                                          ; $767f: $03
	nop                                              ; $7680: $00
	inc  b                                           ; $7681: $04
	inc  bc                                          ; $7682: $03
	dec  bc                                          ; $7683: $0b
	rlca                                             ; $7684: $07
	rrca                                             ; $7685: $0f
	inc  bc                                          ; $7686: $03
	rlca                                             ; $7687: $07
	ld   bc, $0005                                   ; $7688: $01 $05 $00
	ld   [$1707], sp                                 ; $768b: $08 $07 $17
	jr   nz, jr_033_7690                             ; $768e: $20 $00

jr_033_7690:
	ld   e, $9e                                      ; $7690: $1e $9e
	add  hl, de                                      ; $7692: $19
	db   $db                                         ; $7693: $db
	cp   e                                           ; $7694: $bb
	dec  a                                           ; $7695: $3d
	or   a                                           ; $7696: $b7
	or   e                                           ; $7697: $b3
	add  b                                           ; $7698: $80
	ld   [hl], $80                                   ; $7699: $36 $80
	ld   [hl], b                                     ; $769b: $70
	nop                                              ; $769c: $00

jr_033_769d:
	rst  $38                                         ; $769d: $ff
	add  b                                           ; $769e: $80
	nop                                              ; $769f: $00
	jr   nz, jr_033_7625                             ; $76a0: $20 $83

	inc  b                                           ; $76a2: $04
	ld   b, b                                        ; $76a3: $40
	adc  e                                           ; $76a4: $8b
	and  e                                           ; $76a5: $a3
	add  a                                           ; $76a6: $87
	or   a                                           ; $76a7: $b7
	nop                                              ; $76a8: $00
	ld   h, b                                        ; $76a9: $60
	rra                                              ; $76aa: $1f
	ld   e, a                                        ; $76ab: $5f
	nop                                              ; $76ac: $00
	jr   c, jr_033_7632                              ; $76ad: $38 $83

	ld   b, h                                        ; $76af: $44
	nop                                              ; $76b0: $00
	db   $fc                                         ; $76b1: $fc
	nop                                              ; $76b2: $00
	ld   [bc], a                                     ; $76b3: $02
	or   l                                           ; $76b4: $b5
	or   h                                           ; $76b5: $b4
	ld   l, [hl]                                     ; $76b6: $6e
	xor  $f6                                         ; $76b7: $ee $f6
	ld   [hl], d                                     ; $76b9: $72
	db   $fc                                         ; $76ba: $fc
	ld   hl, sp+$61                                  ; $76bb: $f8 $61
	ld   h, l                                        ; $76bd: $65
	ld   h, c                                        ; $76be: $61
	push hl                                          ; $76bf: $e5
	nop                                              ; $76c0: $00
	add  b                                           ; $76c1: $80
	add  d                                           ; $76c2: $82
	ld   a, a                                        ; $76c3: $7f
	inc  bc                                          ; $76c4: $03
	nop                                              ; $76c5: $00
	rst  $38                                         ; $76c6: $ff
	nop                                              ; $76c7: $00
	rst  $38                                         ; $76c8: $ff
	add  b                                           ; $76c9: $80
	nop                                              ; $76ca: $00
	add  c                                           ; $76cb: $81
	rst  $38                                         ; $76cc: $ff
	db   $10                                         ; $76cd: $10
	sub  b                                           ; $76ce: $90
	nop                                              ; $76cf: $00
	ld   l, b                                        ; $76d0: $68
	sub  b                                           ; $76d1: $90
	sub  h                                           ; $76d2: $94
	cp   b                                           ; $76d3: $b8
	cp   d                                           ; $76d4: $ba
	inc  e                                           ; $76d5: $1c
	db   $fc                                         ; $76d6: $fc
	ld   [$00da], sp                                 ; $76d7: $08 $da $00
	dec  l                                           ; $76da: $2d
	add  b                                           ; $76db: $80
	add  d                                           ; $76dc: $82
	add  c                                           ; $76dd: $81
	ld   h, d                                        ; $76de: $62
	add  c                                           ; $76df: $81
	nop                                              ; $76e0: $00
	ld   [bc], a                                     ; $76e1: $02
	ld   a, a                                        ; $76e2: $7f
	nop                                              ; $76e3: $00
	add  b                                           ; $76e4: $80
	add  b                                           ; $76e5: $80
	ld   a, a                                        ; $76e6: $7f
	inc  de                                          ; $76e7: $13
	ld   a, [hl]                                     ; $76e8: $7e
	cp   $00                                         ; $76e9: $fe $00
	ld   a, a                                        ; $76eb: $7f
	add  b                                           ; $76ec: $80
	nop                                              ; $76ed: $00
	ld   b, b                                        ; $76ee: $40
	ret  nc                                          ; $76ef: $d0

	nop                                              ; $76f0: $00
	jr   z, jr_033_7703                              ; $76f1: $28 $10

	call nc, Call_033_7a38                           ; $76f3: $d4 $38 $7a
	ld   e, h                                        ; $76f6: $5c
	ld   a, l                                        ; $76f7: $7d
	ld   [$009a], sp                                 ; $76f8: $08 $9a $00
	ld   c, $80                                      ; $76fb: $0e $80
	ld   bc, $0009                                   ; $76fd: $01 $09 $00
	ld   a, [hl]                                     ; $7700: $7e
	nop                                              ; $7701: $00
	ld   a, [bc]                                     ; $7702: $0a

jr_033_7703:
	add  hl, sp                                      ; $7703: $39
	or   c                                           ; $7704: $b1
	ld   [hl], e                                     ; $7705: $73
	ld   a, e                                        ; $7706: $7b
	ld   a, [hl]                                     ; $7707: $7e
	halt                                             ; $7708: $76
	add  b                                           ; $7709: $80
	ld   hl, sp-$80                                  ; $770a: $f8 $80
	rst  $38                                         ; $770c: $ff
	ld   [bc], a                                     ; $770d: $02
	jp   $1bdb                                       ; $770e: $c3 $db $1b


	add  c                                           ; $7711: $81
	nop                                              ; $7712: $00
	ld   a, [bc]                                     ; $7713: $0a

jr_033_7714:
	cp   b                                           ; $7714: $b8
	cp   h                                           ; $7715: $bc
	ld   h, h                                        ; $7716: $64
	ld   l, h                                        ; $7717: $6c
	ret  nz                                          ; $7718: $c0

	ret  nc                                          ; $7719: $d0

	db   $10                                         ; $771a: $10
	jr   nc, jr_033_769d                             ; $771b: $30 $80

	nop                                              ; $771d: $00
	add  b                                           ; $771e: $80
	add  b                                           ; $771f: $80
	nop                                              ; $7720: $00
	inc  b                                           ; $7721: $04
	ld   e, l                                        ; $7722: $5d
	ld   b, $6c                                      ; $7723: $06 $6c
	inc  c                                           ; $7725: $0c
	inc  b                                           ; $7726: $04
	add  b                                           ; $7727: $80

jr_033_7728:
	ld   a, a                                        ; $7728: $7f
	ld   bc, $eb08                                   ; $7729: $01 $08 $eb
	add  c                                           ; $772c: $81
	ld   [$0c38], sp                                 ; $772d: $08 $38 $0c
	nop                                              ; $7730: $00
	jr   jr_033_7733                                 ; $7731: $18 $00

jr_033_7733:
	ld   e, $07                                      ; $7733: $1e $07
	adc  $09                                         ; $7735: $ce $09
	daa                                              ; $7737: $27
	adc  a                                           ; $7738: $8f
	add  a                                           ; $7739: $87
	rra                                              ; $773a: $1f
	pop  de                                          ; $773b: $d1
	inc  bc                                          ; $773c: $03
	dec  sp                                          ; $773d: $3b
	ld   [bc], a                                     ; $773e: $02
	rlca                                             ; $773f: $07
	nop                                              ; $7740: $00
	ld   [bc], a                                     ; $7741: $02
	nop                                              ; $7742: $00

jr_033_7743:
	ei                                               ; $7743: $fb
	ld   b, a                                        ; $7744: $47
	res  5, [hl]                                     ; $7745: $cb $ae
	rst  $30                                         ; $7747: $f7
	db   $f4                                         ; $7748: $f4
	add  $f0                                         ; $7749: $c6 $f0
	dec  de                                          ; $774b: $1b
	ld   [$0338], sp                                 ; $774c: $08 $38 $03
	rst  ToBoot                                         ; $774f: $c7
	nop                                              ; $7750: $00
	inc  bc                                          ; $7751: $03
	nop                                              ; $7752: $00
	add  sp, -$10                                    ; $7753: $e8 $f0
	ret  nz                                          ; $7755: $c0

	jr   nc, jr_033_7728                             ; $7756: $30 $d0

	db   $10                                         ; $7758: $10
	ld   d, b                                        ; $7759: $50
	jr   nc, jr_033_7714                             ; $775a: $30 $b8

	ld   h, b                                        ; $775c: $60
	ld   [hl], b                                     ; $775d: $70
	ret  nz                                          ; $775e: $c0

	ldh  [rP1], a                                    ; $775f: $e0 $00
	ret  nz                                          ; $7761: $c0

	nop                                              ; $7762: $00
	db   $fc                                         ; $7763: $fc
	ld   a, b                                        ; $7764: $78
	ld   a, d                                        ; $7765: $7a
	ld   a, h                                        ; $7766: $7c
	ld   a, l                                        ; $7767: $7d
	add  b                                           ; $7768: $80
	ld   a, [hl]                                     ; $7769: $7e
	add  b                                           ; $776a: $80
	ld   h, a                                        ; $776b: $67
	inc  bc                                          ; $776c: $03
	ld   h, e                                        ; $776d: $63
	ld   l, a                                        ; $776e: $6f
	ld   h, b                                        ; $776f: $60
	ld   h, e                                        ; $7770: $63
	add  c                                           ; $7771: $81
	ld   h, b                                        ; $7772: $60
	inc  b                                           ; $7773: $04
	adc  [hl]                                        ; $7774: $8e
	inc  c                                           ; $7775: $0c
	ld   l, l                                        ; $7776: $6d
	inc  c                                           ; $7777: $0c
	adc  h                                           ; $7778: $8c
	add  d                                           ; $7779: $82
	ld   a, a                                        ; $777a: $7f
	ld   bc, $ed0c                                   ; $777b: $01 $0c $ed
	add  e                                           ; $777e: $83
	inc  c                                           ; $777f: $0c
	db   $10                                         ; $7780: $10
	dec  e                                           ; $7781: $1d
	rlca                                             ; $7782: $07
	ld   b, $01                                      ; $7783: $06 $01
	inc  c                                           ; $7785: $0c
	ld   bc, $0305                                   ; $7786: $01 $05 $03
	dec  bc                                          ; $7789: $0b
	rlca                                             ; $778a: $07
	scf                                              ; $778b: $37
	ld   c, $4e                                      ; $778c: $0e $4e
	inc  a                                           ; $778e: $3c
	dec  a                                           ; $778f: $3d
	jr   nc, jr_033_7743                             ; $7790: $30 $b1

	add  b                                           ; $7792: $80
	rst  $38                                         ; $7793: $ff
	rlca                                             ; $7794: $07
	sbc  b                                           ; $7795: $98
	cp   c                                           ; $7796: $b9
	cp   b                                           ; $7797: $b8
	sbc  d                                           ; $7798: $9a
	jr   nc, jr_033_77cc                             ; $7799: $30 $31

	jr   nc, jr_033_77cf                             ; $779b: $30 $32

	add  b                                           ; $779d: $80
	ld   [hl], c                                     ; $779e: $71
	dec  d                                           ; $779f: $15
	ld   a, a                                        ; $77a0: $7f
	rst  $38                                         ; $77a1: $ff
	ld   a, $9e                                      ; $77a2: $3e $9e
	ld   [hl+], a                                    ; $77a4: $22
	ld   b, [hl]                                     ; $77a5: $46
	ld   d, a                                        ; $77a6: $57
	db   $d3                                         ; $77a7: $d3
	rla                                              ; $77a8: $17
	ld   e, a                                        ; $77a9: $5f
	inc  l                                           ; $77aa: $2c
	and  h                                           ; $77ab: $a4
	cpl                                              ; $77ac: $2f
	ld   l, $7f                                      ; $77ad: $2e $7f
	halt                                             ; $77af: $76
	ld   a, b                                        ; $77b0: $78
	inc  sp                                          ; $77b1: $33
	ld   b, d                                        ; $77b2: $42
	cpl                                              ; $77b3: $2f
	ldh  [$d1], a                                    ; $77b4: $e0 $d1
	add  b                                           ; $77b6: $80
	ld   d, b                                        ; $77b7: $50
	add  b                                           ; $77b8: $80
	ld   b, b                                        ; $77b9: $40
	ld   a, [bc]                                     ; $77ba: $0a
	ret  nz                                          ; $77bb: $c0

	db   $fc                                         ; $77bc: $fc
	ld   h, b                                        ; $77bd: $60
	ld   d, e                                        ; $77be: $53
	ld   a, h                                        ; $77bf: $7c
	ld   l, b                                        ; $77c0: $68
	ld   a, l                                        ; $77c1: $7d
	pop  af                                          ; $77c2: $f1
	add  hl, sp                                      ; $77c3: $39
	or   c                                           ; $77c4: $b1
	inc  bc                                          ; $77c5: $03
	add  b                                           ; $77c6: $80
	ei                                               ; $77c7: $fb
	ld   b, $f3                                      ; $77c8: $06 $f3
	rlca                                             ; $77ca: $07
	rla                                              ; $77cb: $17

jr_033_77cc:
	ld   c, $2e                                      ; $77cc: $0e $2e
	inc  e                                           ; $77ce: $1c

jr_033_77cf:
	call c, $3880                                    ; $77cf: $dc $80 $38
	add  b                                           ; $77d2: $80
	di                                               ; $77d3: $f3
	dec  bc                                          ; $77d4: $0b
	db   $e3                                         ; $77d5: $e3
	db   $db                                         ; $77d6: $db
	add  e                                           ; $77d7: $83
	adc  e                                           ; $77d8: $8b
	rlca                                             ; $77d9: $07
	ld   d, a                                        ; $77da: $57
	ld   c, $2e                                      ; $77db: $0e $2e
	inc  e                                           ; $77dd: $1c
	call c, $b838                                    ; $77de: $dc $38 $b8
	add  b                                           ; $77e1: $80
	ld   [hl], e                                     ; $77e2: $73
	add  b                                           ; $77e3: $80
	rst  $20                                         ; $77e4: $e7
	ld   bc, $ffc0                                   ; $77e5: $01 $c0 $ff
	add  b                                           ; $77e8: $80
	add  b                                           ; $77e9: $80
	rlca                                             ; $77ea: $07
	nop                                              ; $77eb: $00
	ld   b, b                                        ; $77ec: $40
	nop                                              ; $77ed: $00
	add  b                                           ; $77ee: $80
	nop                                              ; $77ef: $00
	db   $fc                                         ; $77f0: $fc
	nop                                              ; $77f1: $00
	inc  bc                                          ; $77f2: $03
	add  b                                           ; $77f3: $80
	db   $fc                                         ; $77f4: $fc
	add  b                                           ; $77f5: $80
	ei                                               ; $77f6: $fb
	inc  de                                          ; $77f7: $13
	inc  bc                                          ; $77f8: $03
	ei                                               ; $77f9: $fb
	inc  bc                                          ; $77fa: $03
	dec  bc                                          ; $77fb: $0b
	rlca                                             ; $77fc: $07
	rla                                              ; $77fd: $17
	ld   c, $2e                                      ; $77fe: $0e $2e
	inc  e                                           ; $7800: $1c
	ld   e, l                                        ; $7801: $5d
	add  hl, sp                                      ; $7802: $39
	cp   e                                           ; $7803: $bb
	ld   [hl], d                                     ; $7804: $72
	ld   [hl], a                                     ; $7805: $77
	db   $e4                                         ; $7806: $e4
	xor  $c9                                         ; $7807: $ee $c9
	cp   l                                           ; $7809: $bd
	dec  bc                                          ; $780a: $0b
	inc  bc                                          ; $780b: $03
	add  b                                           ; $780c: $80
	ld   b, a                                        ; $780d: $47
	rlca                                             ; $780e: $07
	ld   b, [hl]                                     ; $780f: $46
	add  $96                                         ; $7810: $c6 $96
	add  h                                           ; $7812: $84
	ld   c, $ec                                      ; $7813: $0e $ec
	inc  c                                           ; $7815: $0c
	dec  c                                           ; $7816: $0d
	add  b                                           ; $7817: $80
	db   $fd                                         ; $7818: $fd
	ld   bc, $82fc                                   ; $7819: $01 $fc $82
	add  b                                           ; $781c: $80
	ld   b, b                                        ; $781d: $40
	add  c                                           ; $781e: $81
	nop                                              ; $781f: $00
	add  c                                           ; $7820: $81
	add  b                                           ; $7821: $80
	add  l                                           ; $7822: $85
	nop                                              ; $7823: $00
	ld   [bc], a                                     ; $7824: $02
	dec  c                                           ; $7825: $0d
	nop                                              ; $7826: $00
	ld   [de], a                                     ; $7827: $12
	add  c                                           ; $7828: $81
	dec  c                                           ; $7829: $0d
	inc  b                                           ; $782a: $04
	adc  l                                           ; $782b: $8d
	dec  c                                           ; $782c: $0d
	ld   c, l                                        ; $782d: $4d
	adc  h                                           ; $782e: $8c
	adc  l                                           ; $782f: $8d
	add  c                                           ; $7830: $81
	adc  h                                           ; $7831: $8c
	inc  b                                           ; $7832: $04
	call $220e                                       ; $7833: $cd $0e $22
	nop                                              ; $7836: $00
	ld   c, h                                        ; $7837: $4c
	add  b                                           ; $7838: $80
	or   e                                           ; $7839: $b3
	add  d                                           ; $783a: $82
	di                                               ; $783b: $f3
	add  b                                           ; $783c: $80
	rst  $28                                         ; $783d: $ef
	rlca                                             ; $783e: $07
	ld   c, a                                        ; $783f: $4f
	rst  $28                                         ; $7840: $ef
	rrca                                             ; $7841: $0f
	ld   e, a                                        ; $7842: $5f
	ld   bc, $008e                                   ; $7843: $01 $8e $00
	ld   b, b                                        ; $7846: $40
	add  c                                           ; $7847: $81
	add  b                                           ; $7848: $80
	ld   [bc], a                                     ; $7849: $02
	or   b                                           ; $784a: $b0
	add  b                                           ; $784b: $80
	adc  b                                           ; $784c: $88
	add  e                                           ; $784d: $83
	ldh  a, [rTMA]                                   ; $784e: $f0 $06
	ld   sp, hl                                      ; $7850: $f9
	add  b                                           ; $7851: $80
	ld   [hl], c                                     ; $7852: $71
	nop                                              ; $7853: $00
	inc  c                                           ; $7854: $0c
	nop                                              ; $7855: $00
	ld   [de], a                                     ; $7856: $12
	add  a                                           ; $7857: $87
	inc  c                                           ; $7858: $0c
	ld   [bc], a                                     ; $7859: $02
	adc  h                                           ; $785a: $8c
	inc  c                                           ; $785b: $0c
	sub  d                                           ; $785c: $92
	adc  e                                           ; $785d: $8b
	nop                                              ; $785e: $00
	ld   b, $0d                                      ; $785f: $06 $0d
	nop                                              ; $7861: $00
	dec  c                                           ; $7862: $0d
	nop                                              ; $7863: $00
	rrca                                             ; $7864: $0f
	nop                                              ; $7865: $00
	db   $10                                         ; $7866: $10
	add  e                                           ; $7867: $83
	rrca                                             ; $7868: $0f
	ld   [bc], a                                     ; $7869: $02
	rra                                              ; $786a: $1f
	nop                                              ; $786b: $00
	ld   c, $81                                      ; $786c: $0e $81
	nop                                              ; $786e: $00
	ld   [bc], a                                     ; $786f: $02
	dec  a                                           ; $7870: $3d
	nop                                              ; $7871: $00
	inc  a                                           ; $7872: $3c
	adc  e                                           ; $7873: $8b
	nop                                              ; $7874: $00
	ld   [bc], a                                     ; $7875: $02
	ccf                                              ; $7876: $3f
	nop                                              ; $7877: $00
	ccf                                              ; $7878: $3f
	adc  e                                           ; $7879: $8b
	nop                                              ; $787a: $00
	ld   [bc], a                                     ; $787b: $02
	ldh  [rP1], a                                    ; $787c: $e0 $00
	ldh  [$8b], a                                    ; $787e: $e0 $8b
	nop                                              ; $7880: $00
	ld   [bc], a                                     ; $7881: $02
	dec  a                                           ; $7882: $3d
	nop                                              ; $7883: $00
	dec  a                                           ; $7884: $3d
	add  b                                           ; $7885: $80
	ld   bc, $0089                                   ; $7886: $01 $89 $00
	ld   [bc], a                                     ; $7889: $02
	di                                               ; $788a: $f3
	nop                                              ; $788b: $00
	di                                               ; $788c: $f3
	add  b                                           ; $788d: $80
	db   $e3                                         ; $788e: $e3
	adc  c                                           ; $788f: $89
	nop                                              ; $7890: $00
	ld   [bc], a                                     ; $7891: $02
	rst  $20                                         ; $7892: $e7
	db   $10                                         ; $7893: $10
	rst  $30                                         ; $7894: $f7
	add  b                                           ; $7895: $80
	ret  nz                                          ; $7896: $c0

	adc  c                                           ; $7897: $89
	nop                                              ; $7898: $00
	ld   [bc], a                                     ; $7899: $02
	ei                                               ; $789a: $fb
	inc  b                                           ; $789b: $04
	rst  $38                                         ; $789c: $ff
	add  b                                           ; $789d: $80
	ld   bc, $0089                                   ; $789e: $01 $89 $00
	ld   [bc], a                                     ; $78a1: $02
	db   $e3                                         ; $78a2: $e3
	db   $10                                         ; $78a3: $10
	di                                               ; $78a4: $f3
	add  b                                           ; $78a5: $80
	pop  hl                                          ; $78a6: $e1
	adc  c                                           ; $78a7: $89
	nop                                              ; $78a8: $00
	ld   [bc], a                                     ; $78a9: $02
	db   $fc                                         ; $78aa: $fc
	ld   [bc], a                                     ; $78ab: $02
	cp   $80                                         ; $78ac: $fe $80
	db   $fc                                         ; $78ae: $fc
	sbc  c                                           ; $78af: $99
	nop                                              ; $78b0: $00
	inc  b                                           ; $78b1: $04
	rra                                              ; $78b2: $1f
	rrca                                             ; $78b3: $0f
	adc  a                                           ; $78b4: $8f
	rrca                                             ; $78b5: $0f
	ld   c, a                                        ; $78b6: $4f
	add  b                                           ; $78b7: $80
	adc  a                                           ; $78b8: $8f
	inc  bc                                          ; $78b9: $03
	adc  h                                           ; $78ba: $8c
	call $8c0c                                       ; $78bb: $cd $0c $8c
	add  e                                           ; $78be: $83
	inc  c                                           ; $78bf: $0c
	inc  b                                           ; $78c0: $04
	sub  c                                           ; $78c1: $91
	ld   bc, $814d                                   ; $78c2: $01 $4d $81
	or   c                                           ; $78c5: $b1
	add  b                                           ; $78c6: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78c7: $cf
	add  b                                           ; $78c8: $80
	rst  $28                                         ; $78c9: $ef
	inc  bc                                          ; $78ca: $03
	ld   h, c                                        ; $78cb: $61
	db   $fd                                         ; $78cc: $fd
	ld   bc, $8161                                   ; $78cd: $01 $61 $81
	ld   bc, $c10a                                   ; $78d0: $01 $0a $c1
	add  c                                           ; $78d3: $81
	or   c                                           ; $78d4: $b1
	add  c                                           ; $78d5: $81
	adc  e                                           ; $78d6: $8b
	ldh  a, [$f1]                                    ; $78d7: $f0 $f1
	ldh  a, [$f8]                                    ; $78d9: $f0 $f8
	add  b                                           ; $78db: $80
	or   b                                           ; $78dc: $b0
	add  e                                           ; $78dd: $83
	add  b                                           ; $78de: $80
	nop                                              ; $78df: $00
	sbc  [hl]                                        ; $78e0: $9e
	add  c                                           ; $78e1: $81

jr_033_78e2:
	adc  h                                           ; $78e2: $8c
	inc  b                                           ; $78e3: $04
	call z, $8c0c                                    ; $78e4: $cc $0c $8c
	inc  c                                           ; $78e7: $0c
	dec  c                                           ; $78e8: $0d
	add  b                                           ; $78e9: $80
	inc  c                                           ; $78ea: $0c
	add  h                                           ; $78eb: $84
	rrca                                             ; $78ec: $0f
	add  e                                           ; $78ed: $83
	dec  c                                           ; $78ee: $0d
	inc  c                                           ; $78ef: $0c
	db   $ed                                         ; $78f0: $ed
	dec  c                                           ; $78f1: $0d
	rra                                              ; $78f2: $1f
	ret  nz                                          ; $78f3: $c0

	call $e1c0                                       ; $78f4: $cd $c0 $e1
	add  b                                           ; $78f7: $80
	jp   nz, $3301                                   ; $78f8: $c2 $01 $33

	nop                                              ; $78fb: $00
	ld   c, b                                        ; $78fc: $48
	add  c                                           ; $78fd: $81
	jr   nc, jr_033_7904                             ; $78fe: $30 $04

	ld   [hl-], a                                    ; $7900: $32
	ld   sp, $633d                                   ; $7901: $31 $3d $63

jr_033_7904:
	ld   l, e                                        ; $7904: $6b
	add  b                                           ; $7905: $80
	ld   h, a                                        ; $7906: $67
	add  b                                           ; $7907: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7908: $cf
	rlca                                             ; $7909: $07
	sbc  $21                                         ; $790a: $de $21
	nop                                              ; $790c: $00
	db   $e3                                         ; $790d: $e3
	nop                                              ; $790e: $00
	inc  d                                           ; $790f: $14
	db   $e3                                         ; $7910: $e3
	db   $eb                                         ; $7911: $eb
	add  c                                           ; $7912: $81
	rst  $20                                         ; $7913: $e7
	ld   b, $ef                                      ; $7914: $06 $ef
	db   $e3                                         ; $7916: $e3
	rst  $20                                         ; $7917: $e7
	pop  hl                                          ; $7918: $e1
	db   $e3                                         ; $7919: $e3
	ldh  [rAUD1LEN], a                               ; $791a: $e0 $11
	add  c                                           ; $791c: $81
	nop                                              ; $791d: $00
	db   $10                                         ; $791e: $10
	add  b                                           ; $791f: $80
	nop                                              ; $7920: $00
	ld   b, b                                        ; $7921: $40
	add  b                                           ; $7922: $80
	and  b                                           ; $7923: $a0
	ret  nz                                          ; $7924: $c0

	ret  c                                           ; $7925: $d8

	add  b                                           ; $7926: $80
	add  h                                           ; $7927: $84
	jr   c, jr_033_78e2                              ; $7928: $38 $b8

	jr   c, jr_033_7986                              ; $792a: $38 $5a

	inc  c                                           ; $792c: $0c
	ld   e, $00                                      ; $792d: $1e $00
	inc  c                                           ; $792f: $0c
	adc  c                                           ; $7930: $89
	nop                                              ; $7931: $00
	inc  b                                           ; $7932: $04
	ld   e, $0c                                      ; $7933: $1e $0c
	ld   e, $00                                      ; $7935: $1e $00
	inc  c                                           ; $7937: $0c
	adc  c                                           ; $7938: $89
	nop                                              ; $7939: $00
	inc  b                                           ; $793a: $04
	inc  bc                                          ; $793b: $03
	ld   bc, $0003                                   ; $793c: $01 $03 $00
	ld   bc, $0089                                   ; $793f: $01 $89 $00
	inc  b                                           ; $7942: $04
	ret  nz                                          ; $7943: $c0

	add  b                                           ; $7944: $80
	ret  nz                                          ; $7945: $c0

	nop                                              ; $7946: $00
	add  b                                           ; $7947: $80
	adc  c                                           ; $7948: $89
	nop                                              ; $7949: $00
	inc  b                                           ; $794a: $04
	rra                                              ; $794b: $1f
	ld   c, $1f                                      ; $794c: $0e $1f
	nop                                              ; $794e: $00
	ld   c, $89                                      ; $794f: $0e $89
	nop                                              ; $7951: $00
	nop                                              ; $7952: $00
	inc  bc                                          ; $7953: $03
	add  b                                           ; $7954: $80
	nop                                              ; $7955: $00
	add  hl, bc                                      ; $7956: $09
	ld   bc, $110d                                   ; $7957: $01 $0d $11
	ld   bc, $2909                                   ; $795a: $01 $09 $29
	ld   c, c                                        ; $795d: $49
	add  hl, bc                                      ; $795e: $09
	ccf                                              ; $795f: $3f
	ld   a, a                                        ; $7960: $7f
	add  b                                           ; $7961: $80
	ld   d, b                                        ; $7962: $50
	dec  c                                           ; $7963: $0d
	inc  d                                           ; $7964: $14
	dec  hl                                          ; $7965: $2b
	add  b                                           ; $7966: $80
	inc  bc                                          ; $7967: $03
	inc  b                                           ; $7968: $04
	ld   b, b                                        ; $7969: $40
	inc  hl                                          ; $796a: $23
	rlca                                             ; $796b: $07
	call nz, $0ad6                                   ; $796c: $c4 $d6 $0a
	nop                                              ; $796f: $00
	db   $f4                                         ; $7970: $f4
	ld   hl, sp-$80                                  ; $7971: $f8 $80
	dec  hl                                          ; $7973: $2b
	ld   de, $75a2                                   ; $7974: $11 $a2 $75
	ld   d, b                                        ; $7977: $50
	adc  [hl]                                        ; $7978: $8e
	ld   hl, $fe20                                   ; $7979: $21 $20 $fe
	rst  $28                                         ; $797c: $ef
	ld   sp, $3233                                   ; $797d: $31 $33 $32
	jr   nz, @-$05                                   ; $7980: $20 $f9

	xor  b                                           ; $7982: $a8
	halt                                             ; $7983: $76
	xor  [hl]                                        ; $7984: $ae
	ld   [hl+], a                                    ; $7985: $22

jr_033_7986:
	ld   d, l                                        ; $7986: $55
	add  [hl]                                        ; $7987: $86
	nop                                              ; $7988: $00
	ld   bc, $0004                                   ; $7989: $01 $04 $00
	add  c                                           ; $798c: $81
	ld   a, [bc]                                     ; $798d: $0a
	ld   [bc], a                                     ; $798e: $02
	ld   sp, $3f00                                   ; $798f: $31 $00 $3f
	add  [hl]                                        ; $7992: $86
	nop                                              ; $7993: $00
	ld   [bc], a                                     ; $7994: $02
	ld   b, b                                        ; $7995: $40
	add  sp, $55                                     ; $7996: $e8 $55
	add  b                                           ; $7998: $80
	ld   d, h                                        ; $7999: $54
	ld   [bc], a                                     ; $799a: $02
	cp   h                                           ; $799b: $bc
	cp   b                                           ; $799c: $b8
	ld   sp, hl                                      ; $799d: $f9
	adc  b                                           ; $799e: $88
	nop                                              ; $799f: $00
	dec  b                                           ; $79a0: $05
	add  b                                           ; $79a1: $80
	ld   b, $00                                      ; $79a2: $06 $00
	ld   bc, $8700                                   ; $79a4: $01 $00 $87
	sub  a                                           ; $79a7: $97
	nop                                              ; $79a8: $00
	ld   b, $10                                      ; $79a9: $06 $10
	nop                                              ; $79ab: $00
	jr   nz, jr_033_79b7                             ; $79ac: $20 $09

	ld   a, [bc]                                     ; $79ae: $0a
	inc  b                                           ; $79af: $04
	scf                                              ; $79b0: $37
	add  a                                           ; $79b1: $87
	nop                                              ; $79b2: $00
	ld   b, $a0                                      ; $79b3: $06 $a0
	ld   d, [hl]                                     ; $79b5: $56

jr_033_79b6:
	and  b                                           ; $79b6: $a0

jr_033_79b7:
	add  b                                           ; $79b7: $80
	ld   [hl], b                                     ; $79b8: $70
	ld   d, b                                        ; $79b9: $50
	ld   b, $83                                      ; $79ba: $06 $83
	ldh  [rP1], a                                    ; $79bc: $e0 $00
	ldh  a, [$81]                                    ; $79be: $f0 $81
	ret  nz                                          ; $79c0: $c0

	ld   b, $d0                                      ; $79c1: $06 $d0
	ldh  [$eb], a                                    ; $79c3: $e0 $eb
	ldh  a, [$f4]                                    ; $79c5: $f0 $f4
	ld   a, e                                        ; $79c7: $7b
	ld   hl, sp-$79                                  ; $79c8: $f8 $87
	jr   c, jr_033_79d6                              ; $79ca: $38 $0a

	cp   b                                           ; $79cc: $b8
	ld   a, b                                        ; $79cd: $78
	ld   a, h                                        ; $79ce: $7c
	ldh  a, [$f8]                                    ; $79cf: $f0 $f8
	ldh  [rAUD1LOW], a                               ; $79d1: $e0 $13
	ld   bc, $0003                                   ; $79d3: $01 $03 $00

jr_033_79d6:
	ld   bc, $0089                                   ; $79d6: $01 $89 $00
	inc  b                                           ; $79d9: $04
	cp   $9c                                         ; $79da: $fe $9c
	cp   $00                                         ; $79dc: $fe $00
	sbc  h                                           ; $79de: $9c
	adc  c                                           ; $79df: $89
	nop                                              ; $79e0: $00
	inc  b                                           ; $79e1: $04
	ld   a, a                                        ; $79e2: $7f
	dec  sp                                          ; $79e3: $3b
	ld   a, a                                        ; $79e4: $7f
	nop                                              ; $79e5: $00
	dec  sp                                          ; $79e6: $3b
	adc  c                                           ; $79e7: $89
	nop                                              ; $79e8: $00
	inc  b                                           ; $79e9: $04
	ldh  [$c0], a                                    ; $79ea: $e0 $c0
	ldh  [rP1], a                                    ; $79ec: $e0 $00
	ret  nz                                          ; $79ee: $c0

	adc  d                                           ; $79ef: $8a
	nop                                              ; $79f0: $00
	add  b                                           ; $79f1: $80
	ret  nz                                          ; $79f2: $c0

	adc  e                                           ; $79f3: $8b
	nop                                              ; $79f4: $00
	nop                                              ; $79f5: $00
	ccf                                              ; $79f6: $3f
	add  b                                           ; $79f7: $80
	inc  de                                          ; $79f8: $13
	dec  b                                           ; $79f9: $05
	rrca                                             ; $79fa: $0f
	dec  bc                                          ; $79fb: $0b
	ld   d, $11                                      ; $79fc: $16 $11
	inc  de                                          ; $79fe: $13
	db   $10                                         ; $79ff: $10
	add  b                                           ; $7a00: $80
	inc  d                                           ; $7a01: $14
	add  b                                           ; $7a02: $80
	db   $10                                         ; $7a03: $10
	dec  h                                           ; $7a04: $25
	rra                                              ; $7a05: $1f
	ccf                                              ; $7a06: $3f
	jr   nz, @-$35                                   ; $7a07: $20 $c9

	inc  hl                                          ; $7a09: $23
	and  d                                           ; $7a0a: $a2
	jp   nz, $a5c6                                   ; $7a0b: $c2 $c6 $a5

	daa                                              ; $7a0e: $27
	ld   [hl+], a                                    ; $7a0f: $22
	jr   nz, jr_033_79b6                             ; $7a10: $20 $a4

	and  b                                           ; $7a12: $a0
	inc  hl                                          ; $7a13: $23

jr_033_7a14:
	daa                                              ; $7a14: $27
	db   $e4                                         ; $7a15: $e4
	rst  $30                                         ; $7a16: $f7
	db   $10                                         ; $7a17: $10
	ld   e, e                                        ; $7a18: $5b
	halt                                             ; $7a19: $76
	xor  d                                           ; $7a1a: $aa
	ld   [hl+], a                                    ; $7a1b: $22
	ld   [hl], e                                     ; $7a1c: $73
	db   $fd                                         ; $7a1d: $fd
	scf                                              ; $7a1e: $37
	ld   [hl-], a                                    ; $7a1f: $32
	jr   nc, jr_033_7a53                             ; $7a20: $30 $31

jr_033_7a22:
	jr   nz, jr_033_7a22                             ; $7a22: $20 $fe

	rst  $38                                         ; $7a24: $ff
	ld   hl, $50ff                                   ; $7a25: $21 $ff $50
	ld   c, a                                        ; $7a28: $4f
	nop                                              ; $7a29: $00
	inc  sp                                          ; $7a2a: $33
	add  d                                           ; $7a2b: $82
	ld   [bc], a                                     ; $7a2c: $02
	nop                                              ; $7a2d: $00
	db   $10                                         ; $7a2e: $10
	add  b                                           ; $7a2f: $80
	nop                                              ; $7a30: $00
	ld   [$2504], sp                                 ; $7a31: $08 $04 $25
	ld   b, $00                                      ; $7a34: $06 $00
	jr   c, @+$12                                    ; $7a36: $38 $10

Call_033_7a38:
	xor  d                                           ; $7a38: $aa
	ld   b, b                                        ; $7a39: $40
	and  b                                           ; $7a3a: $a0
	add  c                                           ; $7a3b: $81
	and  h                                           ; $7a3c: $a4
	nop                                              ; $7a3d: $00
	sbc  h                                           ; $7a3e: $9c
	add  b                                           ; $7a3f: $80
	sbc  b                                           ; $7a40: $98
	nop                                              ; $7a41: $00
	add  b                                           ; $7a42: $80
	add  b                                           ; $7a43: $80
	ld   bc, $2106                                   ; $7a44: $01 $06 $21
	jr   nz, jr_033_7aa9                             ; $7a47: $20 $60

	ld   b, b                                        ; $7a49: $40
	ld   b, e                                        ; $7a4a: $43
	inc  b                                           ; $7a4b: $04
	ld   b, $82                                      ; $7a4c: $06 $82
	ld   [bc], a                                     ; $7a4e: $02
	add  b                                           ; $7a4f: $80
	nop                                              ; $7a50: $00
	inc  d                                           ; $7a51: $14
	ld   c, b                                        ; $7a52: $48

jr_033_7a53:
	ld   de, $0525                                   ; $7a53: $11 $25 $05
	inc  b                                           ; $7a56: $04
	add  h                                           ; $7a57: $84
	add  b                                           ; $7a58: $80
	ld   hl, sp-$80                                  ; $7a59: $f8 $80
	ld   b, $09                                      ; $7a5b: $06 $09
	db   $10                                         ; $7a5d: $10
	jr   nz, jr_033_7a6e                             ; $7a5e: $20 $0e

	ld   a, [bc]                                     ; $7a60: $0a
	ld   a, [hl-]                                    ; $7a61: $3a
	jr   nc, jr_033_7a14                             ; $7a62: $30 $b0

	add  d                                           ; $7a64: $82
	add  h                                           ; $7a65: $84
	ld   [$0180], sp                                 ; $7a66: $08 $80 $01
	nop                                              ; $7a69: $00
	ccf                                              ; $7a6a: $3f

jr_033_7a6b:
	add  b                                           ; $7a6b: $80
	inc  bc                                          ; $7a6c: $03
	add  b                                           ; $7a6d: $80

jr_033_7a6e:
	nop                                              ; $7a6e: $00
	dec  bc                                          ; $7a6f: $0b
	add  b                                           ; $7a70: $80
	ld   bc, $0002                                   ; $7a71: $01 $02 $00
	ld   b, h                                        ; $7a74: $44
	ld   b, c                                        ; $7a75: $41
	nop                                              ; $7a76: $00
	add  l                                           ; $7a77: $85
	adc  h                                           ; $7a78: $8c
	xor  [hl]                                        ; $7a79: $ae
	ld   a, [hl+]                                    ; $7a7a: $2a
	db   $fd                                         ; $7a7b: $fd
	add  e                                           ; $7a7c: $83
	jr   nz, @+$0c                                   ; $7a7d: $20 $0a

	nop                                              ; $7a7f: $00
	ld   bc, $0111                                   ; $7a80: $01 $11 $01
	add  h                                           ; $7a83: $84
	inc  b                                           ; $7a84: $04
	sub  h                                           ; $7a85: $94
	db   $10                                         ; $7a86: $10
	ld   [hl-], a                                    ; $7a87: $32
	jr   nz, jr_033_7a6b                             ; $7a88: $20 $e1

	adc  c                                           ; $7a8a: $89
	nop                                              ; $7a8b: $00
	inc  b                                           ; $7a8c: $04
	jr   jr_033_7a8f                                 ; $7a8d: $18 $00

jr_033_7a8f:
	inc  b                                           ; $7a8f: $04
	nop                                              ; $7a90: $00
	inc  de                                          ; $7a91: $13
	add  c                                           ; $7a92: $81
	nop                                              ; $7a93: $00
	ld   [bc], a                                     ; $7a94: $02
	ld   [bc], a                                     ; $7a95: $02
	nop                                              ; $7a96: $00
	ld   [de], a                                     ; $7a97: $12
	add  c                                           ; $7a98: $81
	nop                                              ; $7a99: $00
	ld   [bc], a                                     ; $7a9a: $02
	inc  e                                           ; $7a9b: $1c
	inc  c                                           ; $7a9c: $0c
	inc  d                                           ; $7a9d: $14
	add  c                                           ; $7a9e: $81
	inc  b                                           ; $7a9f: $04
	ld   bc, $00c0                                   ; $7aa0: $01 $c0 $00
	add  b                                           ; $7aa3: $80
	inc  b                                           ; $7aa4: $04

jr_033_7aa5:
	inc  c                                           ; $7aa5: $0c
	ld   d, [hl]                                     ; $7aa6: $56
	ld   d, d                                        ; $7aa7: $52
	ld   b, h                                        ; $7aa8: $44

jr_033_7aa9:
	ld   b, b                                        ; $7aa9: $40
	jr   nz, jr_033_7aac                             ; $7aaa: $20 $00

jr_033_7aac:
	sbc  e                                           ; $7aac: $9b
	dec  de                                          ; $7aad: $1b
	ld   [de], a                                     ; $7aae: $12
	add  b                                           ; $7aaf: $80
	ld   [de], a                                     ; $7ab0: $12
	nop                                              ; $7ab1: $00
	ccf                                              ; $7ab2: $3f
	add  c                                           ; $7ab3: $81
	nop                                              ; $7ab4: $00
	inc  d                                           ; $7ab5: $14
	ld   b, b                                        ; $7ab6: $40
	nop                                              ; $7ab7: $00
	add  b                                           ; $7ab8: $80
	nop                                              ; $7ab9: $00
	ret  nz                                          ; $7aba: $c0

	ld   [bc], a                                     ; $7abb: $02
	inc  c                                           ; $7abc: $0c
	ld   de, $0263                                   ; $7abd: $11 $63 $02
	ld   h, $04                                      ; $7ac0: $26 $04
	sbc  h                                           ; $7ac2: $9c
	nop                                              ; $7ac3: $00
	ld   bc, $0002                                   ; $7ac4: $01 $02 $00
	ld   bc, $211d                                   ; $7ac7: $01 $1d $21
	ld   bc, $1f84                                   ; $7aca: $01 $84 $1f
	inc  c                                           ; $7acd: $0c
	inc  bc                                          ; $7ace: $03
	inc  a                                           ; $7acf: $3c
	nop                                              ; $7ad0: $00
	ld   hl, sp+$00                                  ; $7ad1: $f8 $00
	jr   jr_033_7aa5                                 ; $7ad3: $18 $d0

	call z, $8182                                    ; $7ad5: $cc $82 $81
	db   $fc                                         ; $7ad8: $fc
	ld   sp, hl                                      ; $7ad9: $f9
	db   $fd                                         ; $7ada: $fd
	add  b                                           ; $7adb: $80
	ld   sp, hl                                      ; $7adc: $f9
	inc  b                                           ; $7add: $04
	db   $db                                         ; $7ade: $db
	dec  sp                                          ; $7adf: $3b
	rst  $20                                         ; $7ae0: $e7
	nop                                              ; $7ae1: $00
	ld   a, a                                        ; $7ae2: $7f
	add  b                                           ; $7ae3: $80
	nop                                              ; $7ae4: $00
	ld   bc, $bf3f                                   ; $7ae5: $01 $3f $bf
	add  b                                           ; $7ae8: $80
	ccf                                              ; $7ae9: $3f
	add  b                                           ; $7aea: $80
	nop                                              ; $7aeb: $00
	add  e                                           ; $7aec: $83
	rst  $38                                         ; $7aed: $ff
	add  b                                           ; $7aee: $80
	nop                                              ; $7aef: $00
	ld   a, [bc]                                     ; $7af0: $0a
	ldh  a, [$08]                                    ; $7af1: $f0 $08
	dec  de                                          ; $7af3: $1b
	sub  b                                           ; $7af4: $90
	or   b                                           ; $7af5: $b0
	add  c                                           ; $7af6: $81
	add  l                                           ; $7af7: $85
	inc  hl                                          ; $7af8: $23
	dec  bc                                          ; $7af9: $0b
	ret  nc                                          ; $7afa: $d0

	ret  nz                                          ; $7afb: $c0

	add  b                                           ; $7afc: $80
	rst  $28                                         ; $7afd: $ef
	ld   bc, $30cf                                   ; $7afe: $01 $cf $30
	add  c                                           ; $7b01: $81
	nop                                              ; $7b02: $00
	nop                                              ; $7b03: $00
	rst  $38                                         ; $7b04: $ff
	add  b                                           ; $7b05: $80
	nop                                              ; $7b06: $00
	add  b                                           ; $7b07: $80
	cp   $03                                         ; $7b08: $fe $03
	db   $fc                                         ; $7b0a: $fc
	db   $fd                                         ; $7b0b: $fd
	ld   bc, $8100                                   ; $7b0c: $01 $00 $81
	rst  $38                                         ; $7b0f: $ff
	add  b                                           ; $7b10: $80
	nop                                              ; $7b11: $00
	rlca                                             ; $7b12: $07
	inc  bc                                          ; $7b13: $03
	inc  b                                           ; $7b14: $04
	ret  nz                                          ; $7b15: $c0

	inc  bc                                          ; $7b16: $03
	ld   a, e                                        ; $7b17: $7b
	inc  bc                                          ; $7b18: $03
	jp   $82bf                                       ; $7b19: $c3 $bf $82


	ccf                                              ; $7b1c: $3f
	ld   a, [bc]                                     ; $7b1d: $0a
	ld   a, a                                        ; $7b1e: $7f
	ld   b, [hl]                                     ; $7b1f: $46
	ld   sp, hl                                      ; $7b20: $f9
	nop                                              ; $7b21: $00
	ldh  a, [$08]                                    ; $7b22: $f0 $08
	sbc  b                                           ; $7b24: $98
	add  b                                           ; $7b25: $80
	ld   e, $01                                      ; $7b26: $1e $01
	inc  bc                                          ; $7b28: $03
	add  b                                           ; $7b29: $80
	ldh  a, [c]                                      ; $7b2a: $f2
	nop                                              ; $7b2b: $00
	ldh  a, [$81]                                    ; $7b2c: $f0 $81
	db   $f4                                         ; $7b2e: $f4
	ld   bc, $8870                                   ; $7b2f: $01 $70 $88
	add  b                                           ; $7b32: $80
	inc  bc                                          ; $7b33: $03
	adc  h                                           ; $7b34: $8c
	nop                                              ; $7b35: $00
	add  b                                           ; $7b36: $80
	jr   nc, @-$72                                   ; $7b37: $30 $8c

	nop                                              ; $7b39: $00
	add  b                                           ; $7b3a: $80
	ld   b, $8c                                      ; $7b3b: $06 $8c
	nop                                              ; $7b3d: $00
	add  b                                           ; $7b3e: $80
	db   $10                                         ; $7b3f: $10
	adc  e                                           ; $7b40: $8b
	nop                                              ; $7b41: $00
	ld   bc, $70e8                                   ; $7b42: $01 $e8 $70
	add  b                                           ; $7b45: $80
	ldh  a, [rIF]                                    ; $7b46: $f0 $0f
	ld   l, b                                        ; $7b48: $68
	add  sp, -$38                                    ; $7b49: $e8 $c8
	add  sp, -$68                                    ; $7b4b: $e8 $98
	ret  nc                                          ; $7b4d: $d0

	sub  b                                           ; $7b4e: $90
	nop                                              ; $7b4f: $00
	ld   h, b                                        ; $7b50: $60
	ld   b, b                                        ; $7b51: $40
	ret  nz                                          ; $7b52: $c0

	nop                                              ; $7b53: $00
	inc  c                                           ; $7b54: $0c
	ld   [de], a                                     ; $7b55: $12
	stop                                             ; $7b56: $10 $00
	add  c                                           ; $7b58: $81
	ld   [$0980], sp                                 ; $7b59: $08 $80 $09
	inc  bc                                          ; $7b5c: $03
	ld   hl, $9247                                   ; $7b5d: $21 $47 $92
	ld   [de], a                                     ; $7b60: $12
	add  b                                           ; $7b61: $80
	db   $10                                         ; $7b62: $10
	ld   bc, $d600                                   ; $7b63: $01 $00 $d6
	add  b                                           ; $7b66: $80
	add  hl, bc                                      ; $7b67: $09
	inc  bc                                          ; $7b68: $03
	nop                                              ; $7b69: $00
	db   $10                                         ; $7b6a: $10
	jr   @+$43                                       ; $7b6b: $18 $41

	add  c                                           ; $7b6d: $81
	nop                                              ; $7b6e: $00
	ld   [bc], a                                     ; $7b6f: $02
	rra                                              ; $7b70: $1f
	add  hl, de                                      ; $7b71: $19
	ld   a, c                                        ; $7b72: $79
	add  c                                           ; $7b73: $81
	nop                                              ; $7b74: $00
	ld   [bc], a                                     ; $7b75: $02
	ld   l, e                                        ; $7b76: $6b
	inc  d                                           ; $7b77: $14
	add  b                                           ; $7b78: $80
	add  c                                           ; $7b79: $81
	nop                                              ; $7b7a: $00
	ld   b, $24                                      ; $7b7b: $06 $24
	inc  b                                           ; $7b7d: $04
	dec  c                                           ; $7b7e: $0d
	dec  h                                           ; $7b7f: $25
	ld   b, c                                        ; $7b80: $41
	ld   c, c                                        ; $7b81: $49
	rst  $38                                         ; $7b82: $ff
	add  c                                           ; $7b83: $81
	nop                                              ; $7b84: $00
	inc  c                                           ; $7b85: $0c
	ld   a, $80                                      ; $7b86: $3e $80
	ld   e, l                                        ; $7b88: $5d
	inc  d                                           ; $7b89: $14
	ld   [hl], h                                     ; $7b8a: $74
	ld   b, b                                        ; $7b8b: $40
	ldh  a, [$0c]                                    ; $7b8c: $f0 $0c
	ld   d, c                                        ; $7b8e: $51
	nop                                              ; $7b8f: $00
	ld   d, [hl]                                     ; $7b90: $56
	ld   b, h                                        ; $7b91: $44
	ld   a, h                                        ; $7b92: $7c
	add  c                                           ; $7b93: $81
	nop                                              ; $7b94: $00
	ld   [hl], $0f                                   ; $7b95: $36 $0f
	rlca                                             ; $7b97: $07
	rla                                              ; $7b98: $17
	ld   c, $2c                                      ; $7b99: $0e $2c
	ld   e, $5c                                      ; $7b9b: $1e $5c
	add  hl, sp                                      ; $7b9d: $39
	or   c                                           ; $7b9e: $b1
	ld   a, c                                        ; $7b9f: $79
	ld   h, h                                        ; $7ba0: $64
	dec  [hl]                                        ; $7ba1: $35
	xor  [hl]                                        ; $7ba2: $ae
	ld   [$3079], sp                                 ; $7ba3: $08 $79 $30
	push bc                                          ; $7ba6: $c5
	jr   c, jr_033_7c1a                              ; $7ba7: $38 $71

	ld   [hl], b                                     ; $7ba9: $70
	inc  [hl]                                        ; $7baa: $34
	ld   [hl], h                                     ; $7bab: $74
	ld   h, a                                        ; $7bac: $67
	ldh  a, [$ca]                                    ; $7bad: $f0 $ca
	ld   [$905a], a                                  ; $7baf: $ea $5a $90
	ld   [hl], c                                     ; $7bb2: $71
	ld   b, c                                        ; $7bb3: $41
	pop  bc                                          ; $7bb4: $c1
	nop                                              ; $7bb5: $00
	rst  $38                                         ; $7bb6: $ff
	inc  bc                                          ; $7bb7: $03
	rrc  a                                           ; $7bb8: $cb $0f
	rst  $20                                         ; $7bba: $e7
	ld   a, $9a                                      ; $7bbb: $3e $9a
	db   $fc                                         ; $7bbd: $fc
	ld   a, e                                        ; $7bbe: $7b
	ldh  a, [c]                                      ; $7bbf: $f2
	or   $c0                                         ; $7bc0: $f6 $c0
	ld   hl, sp+$20                                  ; $7bc2: $f8 $20
	ldh  [$c0], a                                    ; $7bc4: $e0 $c0
	cpl                                              ; $7bc6: $2f
	add  b                                           ; $7bc7: $80
	xor  [hl]                                        ; $7bc8: $ae
	ld   [bc], a                                     ; $7bc9: $02
	ld   b, h                                        ; $7bca: $44
	ld   bc, $8099                                   ; $7bcb: $01 $99 $80
	rlca                                             ; $7bce: $07
	ld   bc, $1f0f                                   ; $7bcf: $01 $0f $1f
	add  b                                           ; $7bd2: $80
	ld   d, $0f                                      ; $7bd3: $16 $0f
	nop                                              ; $7bd5: $00
	add  hl, bc                                      ; $7bd6: $09
	nop                                              ; $7bd7: $00
	ld   sp, hl                                      ; $7bd8: $f9
	ld   [hl], b                                     ; $7bd9: $70
	ld   [hl], a                                     ; $7bda: $77
	ldh  [$c8], a                                    ; $7bdb: $e0 $c8
	add  sp, -$77                                    ; $7bdd: $e8 $89
	ret  nz                                          ; $7bdf: $c0

	db   $10                                         ; $7be0: $10
	add  b                                           ; $7be1: $80
	jr   nz, jr_033_7be4                             ; $7be2: $20 $00

jr_033_7be4:
	pop  bc                                          ; $7be4: $c1
	add  b                                           ; $7be5: $80
	add  b                                           ; $7be6: $80
	ld   sp, $9f00                                   ; $7be7: $31 $00 $9f
	ld   c, $ae                                      ; $7bea: $0e $ae
	inc  e                                           ; $7bec: $1c
	call c, $b838                                    ; $7bed: $dc $38 $b8
	di                                               ; $7bf0: $f3
	ld   [hl], e                                     ; $7bf1: $73
	db   $e3                                         ; $7bf2: $e3
	add  sp, $4b                                     ; $7bf3: $e8 $4b
	ld   e, h                                        ; $7bf5: $5c
	db   $10                                         ; $7bf6: $10
	di                                               ; $7bf7: $f3
	jp   $00e1                                       ; $7bf8: $c3 $e1 $00


	dec  sp                                          ; $7bfb: $3b
	nop                                              ; $7bfc: $00
	sbc  l                                           ; $7bfd: $9d
	nop                                              ; $7bfe: $00
	and  $00                                         ; $7bff: $e6 $00

jr_033_7c01:
	ld   [hl], e                                     ; $7c01: $73
	nop                                              ; $7c02: $00
	add  hl, de                                      ; $7c03: $19
	nop                                              ; $7c04: $00
	db   $dd                                         ; $7c05: $dd
	nop                                              ; $7c06: $00
	ld   a, [hl+]                                    ; $7c07: $2a
	nop                                              ; $7c08: $00
	db   $dd                                         ; $7c09: $dd
	nop                                              ; $7c0a: $00
	inc  sp                                          ; $7c0b: $33
	nop                                              ; $7c0c: $00
	sbc  c                                           ; $7c0d: $99
	nop                                              ; $7c0e: $00
	ld   l, [hl]                                     ; $7c0f: $6e
	add  b                                           ; $7c10: $80
	sub  a                                           ; $7c11: $97
	ldh  [$e9], a                                    ; $7c12: $e0 $e9
	ldh  a, [$f5]                                    ; $7c14: $f0 $f5
	jr   z, @+$2c                                    ; $7c16: $28 $2a

	nop                                              ; $7c18: $00
	rst  $38                                         ; $7c19: $ff

jr_033_7c1a:
	cp   l                                           ; $7c1a: $bd
	nop                                              ; $7c1b: $00


RleXorTileData_Jupiter::
	db $63, $01, $86, $00, $00, $f0, $8d, $00, $00, $f0, $8d, $00, $00, $3c, $8d, $00, $00, $3c, $8b, $00, $80, $01, $01, $00, $01, $82, $00, $80, $02, $01, $00, $02
	db $80, $00, $80, $04, $01, $00, $04, $80, $00, $00, $07, $87, $00, $00, $f3, $a1, $00, $82, $02, $00, $00, $81, $02, $80, $00, $82, $01, $01, $00, $01, $8c, $00
	db $80, $10, $01, $00, $10, $82, $00, $80, $20, $01, $00, $20, $80, $00, $80, $40, $01, $00, $40, $80, $00, $00, $80, $87, $00, $00, $c3, $a1, $00, $82, $20, $01
	db $00, $20, $82, $00, $80, $10, $01, $00, $10, $80, $00, $80, $08, $06, $80, $88, $04, $84, $44, $40, $7f, $81, $00, $00, $cf, $b9, $00, $00, $c0, $97, $00, $00
	db $0f, $87, $00, $07, $f0, $08, $04, $84, $40, $44, $00, $40, $80, $02, $03, $20, $22, $02, $22, $80, $00, $80, $01, $80, $11, $00, $00, $81, $11, $8a, $00, $82
	db $11, $01, $00, $11, $80, $01, $80, $00, $80, $22, $03, $02, $22, $00, $02, $80, $40, $06, $04, $44, $80, $84, $88, $08, $f8, $81, $00, $00, $3c, $b9, $00, $00
	db $3c, $81, $00, $00, $f0, $97, $00, $00, $0f, $85, $00, $00, $0f, $9d, $00, $80, $88, $01, $00, $88, $82, $00, $80, $44, $01, $00, $44, $80, $00, $80, $22, $01
	db $00, $22, $80, $00, $00, $1e, $87, $00, $01, $03, $04, $80, $08, $01, $00, $08, $80, $00, $80, $10, $03, $01, $11, $10, $11, $80, $00, $80, $20, $80, $22, $00
	db $00, $81, $22, $80, $00, $00, $03, $85, $00, $01, $03, $00, $82, $22, $01, $00, $22, $80, $20, $80, $00, $80, $11, $03, $10, $11, $00, $10, $80, $00, $80, $08
	db $01, $00, $08, $80, $04, $00, $07, $81, $00, $00, $fc, $80, $00, $00, $40, $80, $80, $01, $00, $80, $90, $00, $00, $c0, $85, $00, $00, $fc, $8f, $00, $80, $80
	db $01, $00, $80, $81, $40, $01, $00, $c0, $81, $00, $00, $ff, $80, $00, $00, $08, $80, $04, $01, $00, $04, $80, $00, $80, $02, $01, $00, $02, $82, $00, $80, $01
	db $00, $00, $81, $01, $a2, $00, $00, $f0, $82, $00, $00, $80, $80, $40, $01, $00, $40, $80, $00, $80, $20, $00, $00, $81, $20, $80, $00, $82, $10, $00, $00, $81
	db $10, $88, $00, $00, $f0, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $de, $00, $00, $0f, $8d, $00, $00, $0c, $8d
	db $00, $00, $03, $89, $00, $00, $0f, $81, $00, $00, $0f, $89, $00, $00, $3c, $81, $00, $00, $3c, $89, $00, $00, $ff, $80, $00, $01, $08, $f7, $89, $00, $01, $03
	db $80, $80, $40, $00, $83, $89, $00, $00, $cf, $81, $00, $00, $cf, $89, $00, $04, $3f, $40, $80, $84, $7b, $89, $00, $04, $f0, $08, $04, $84, $44, $8d, $00, $03
	db $cf, $04, $00, $04, $80, $00, $80, $02, $01, $00, $02, $82, $00, $80, $01, $01, $72, $40, $80, $00, $80, $20, $00, $00, $81, $20, $80, $00, $82, $10, $00, $2c
	db $8d, $00, $00, $cf, $81, $00, $80, $01, $00, $00, $81, $01, $80, $00, $82, $02, $03, $72, $88, $00, $08, $80, $00, $80, $10, $01, $00, $10, $82, $00, $80, $20
	db $03, $db, $44, $00, $40, $80, $02, $03, $20, $22, $02, $22, $80, $00, $80, $01, $80, $11, $00, $ef, $81, $01, $8a, $00, $00, $13, $81, $10, $8a, $00, $00, $f2
	db $81, $02, $80, $00, $00, $f0, $85, $00, $02, $f0, $00, $e0, $81, $20, $80, $00, $00, $3c, $85, $00, $02, $3f, $00, $0f, $8b, $00, $01, $c0, $00, $82, $11, $88
	db $00, $02, $0f, $00, $1e, $81, $22, $01, $00, $22, $80, $20, $80, $00, $80, $11, $04, $10, $11, $00, $10, $fe, $81, $01, $01, $00, $01, $82, $00, $80, $02, $01
	db $00, $02, $80, $00, $82, $10, $00, $00, $81, $10, $80, $00, $82, $20, $02, $00, $20, $c2, $81, $02, $00, $00, $81, $02, $80, $00, $82, $01, $02, $00, $01, $e0
	db $81, $20, $01, $00, $20, $82, $00, $80, $10, $01, $00, $10, $80, $00, $00, $ff, $8b, $00, $80, $11, $80, $00, $80, $08, $01, $00, $08, $80, $04, $00, $07, $85
	db $00, $03, $bc, $80, $00, $80, $81, $40, $01, $00, $fc, $85, $00, $03, $f7, $04, $00, $04, $81, $08, $01, $00, $0f, $85, $00, $01, $33, $00, $80, $40, $01, $00
	db $40, $80, $80, $00, $83, $85, $00, $00, $cf, $85, $00, $00, $c0, $83, $00, $80, $08, $00, $0f, $8b, $00, $80, $80, $08, $f8, $08, $80, $88, $04, $84, $44, $40
	db $7c, $85, $00, $00, $0f, $85, $00, $00, $0f, $85, $00, $01, $0f, $11, $82, $00, $80, $22, $01, $00, $22, $80, $00, $80, $44, $03, $00, $44, $77, $08, $82, $00
	db $80, $04, $01, $00, $04, $80, $00, $80, $02, $03, $00, $02, $01, $80, $82, $00, $80, $40, $01, $00, $40, $80, $00, $80, $20, $04, $00, $20, $98, $00, $78, $8b
	db $00, $02, $f0, $00, $f0, $8b, $00, $02, $01, $00, $01, $8b, $00, $02, $e0, $00, $e0, $eb, $00



	add  [hl]                                        ; $7f6f: $86
	ld   [hl-], a                                    ; $7f70: $32
	and  h                                           ; $7f71: $a4
	ld   hl, $0ca2                                   ; $7f72: $21 $a2 $0c
	nop                                              ; $7f75: $00
	nop                                              ; $7f76: $00
	rst  $38                                         ; $7f77: $ff
	ld   a, a                                        ; $7f78: $7f
	add  [hl]                                        ; $7f79: $86
	ld   [hl-], a                                    ; $7f7a: $32
	db   $fc                                         ; $7f7b: $fc
	ld   [bc], a                                     ; $7f7c: $02
	nop                                              ; $7f7d: $00
	nop                                              ; $7f7e: $00
	rst  $38                                         ; $7f7f: $ff
	ld   a, a                                        ; $7f80: $7f
	rst  $38                                         ; $7f81: $ff
	ld   a, a                                        ; $7f82: $7f

Call_033_7f83:
	ld   sp, $315e                                   ; $7f83: $31 $5e $31
	ld   e, [hl]                                     ; $7f86: $5e
	sbc  a                                           ; $7f87: $9f
	ld   h, c                                        ; $7f88: $61
	cp   a                                           ; $7f89: $bf
	ld   l, [hl]                                     ; $7f8a: $6e
	sbc  a                                           ; $7f8b: $9f
	ld   h, c                                        ; $7f8c: $61
	ld   [bc], a                                     ; $7f8d: $02
	jr   nz, jr_033_7f90                             ; $7f8e: $20 $00

jr_033_7f90:
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

Jump_033_7f9f:
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
	rst  $38                                         ; $7fbf: $ff
	ld   a, a                                        ; $7fc0: $7f
	ld   d, $04                                      ; $7fc1: $16 $04
	rst  $38                                         ; $7fc3: $ff
	ld   a, a                                        ; $7fc4: $7f
	nop                                              ; $7fc5: $00
	nop                                              ; $7fc6: $00
	sbc  a                                           ; $7fc7: $9f
	ld   h, c                                        ; $7fc8: $61
	cp   a                                           ; $7fc9: $bf
	ld   l, [hl]                                     ; $7fca: $6e
	rst  $38                                         ; $7fcb: $ff
	inc  bc                                          ; $7fcc: $03
	ld   [bc], a                                     ; $7fcd: $02
	jr   nz, jr_033_7fd0                             ; $7fce: $20 $00

jr_033_7fd0:
	nop                                              ; $7fd0: $00
	nop                                              ; $7fd1: $00
	nop                                              ; $7fd2: $00
	nop                                              ; $7fd3: $00
	nop                                              ; $7fd4: $00
	nop                                              ; $7fd5: $00
	nop                                              ; $7fd6: $00
	rst  $38                                         ; $7fd7: $ff
	ld   a, a                                        ; $7fd8: $7f
	ld   c, $01                                      ; $7fd9: $0e $01
	rst  $38                                         ; $7fdb: $ff
	dec  l                                           ; $7fdc: $2d
	ld   [bc], a                                     ; $7fdd: $02
	jr   nz, @+$01                                   ; $7fde: $20 $ff

	ld   a, a                                        ; $7fe0: $7f
	ld   a, a                                        ; $7fe1: $7f
	inc  bc                                          ; $7fe2: $03
	rst  $38                                         ; $7fe3: $ff
	dec  l                                           ; $7fe4: $2d
	ld   [bc], a                                     ; $7fe5: $02
	jr   nz, @+$01                                   ; $7fe6: $20 $ff

	ld   a, a                                        ; $7fe8: $7f
	ld   a, [de]                                     ; $7fe9: $1a
	add  hl, sp                                      ; $7fea: $39
	rst  $38                                         ; $7feb: $ff
	dec  l                                           ; $7fec: $2d
	ld   [bc], a                                     ; $7fed: $02
	db $20
