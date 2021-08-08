; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $08e", ROMX[$4000], BANK[$8e]

	ld   d, a                                        ; $4000: $57
	inc  b                                           ; $4001: $04
	nop                                              ; $4002: $00
	rst  $38                                         ; $4003: $ff
	add  l                                           ; $4004: $85
	nop                                              ; $4005: $00
	nop                                              ; $4006: $00
	rra                                              ; $4007: $1f
	add  c                                           ; $4008: $81
	nop                                              ; $4009: $00
	nop                                              ; $400a: $00
	rlca                                             ; $400b: $07
	add  b                                           ; $400c: $80
	inc  b                                           ; $400d: $04
	ld   bc, $1f07                                   ; $400e: $01 $07 $1f
	add  l                                           ; $4011: $85
	nop                                              ; $4012: $00
	nop                                              ; $4013: $00
	rst  $38                                         ; $4014: $ff
	add  c                                           ; $4015: $81
	nop                                              ; $4016: $00
	nop                                              ; $4017: $00
	rst  $38                                         ; $4018: $ff
	add  b                                           ; $4019: $80
	nop                                              ; $401a: $00
	add  b                                           ; $401b: $80
	rst  $38                                         ; $401c: $ff
	add  l                                           ; $401d: $85
	nop                                              ; $401e: $00
	nop                                              ; $401f: $00
	rst  $38                                         ; $4020: $ff
	add  c                                           ; $4021: $81
	nop                                              ; $4022: $00
	inc  b                                           ; $4023: $04

jr_08e_4024:
	rst  $38                                         ; $4024: $ff
	nop                                              ; $4025: $00
	ld   bc, $fffe                                   ; $4026: $01 $fe $ff
	add  l                                           ; $4029: $85
	nop                                              ; $402a: $00
	nop                                              ; $402b: $00
	rst  $38                                         ; $402c: $ff
	add  c                                           ; $402d: $81
	nop                                              ; $402e: $00
	ld   bc, $003f                                   ; $402f: $01 $3f $00
	add  b                                           ; $4032: $80
	ccf                                              ; $4033: $3f
	nop                                              ; $4034: $00
	ret  nz                                          ; $4035: $c0

	add  l                                           ; $4036: $85
	nop                                              ; $4037: $00
	nop                                              ; $4038: $00
	rst  $38                                         ; $4039: $ff
	add  c                                           ; $403a: $81
	nop                                              ; $403b: $00
	ld   bc, $04fc                                   ; $403c: $01 $fc $04
	add  b                                           ; $403f: $80
	db   $fc                                         ; $4040: $fc
	nop                                              ; $4041: $00
	rlca                                             ; $4042: $07
	add  l                                           ; $4043: $85
	nop                                              ; $4044: $00
	nop                                              ; $4045: $00
	rst  $38                                         ; $4046: $ff
	add  c                                           ; $4047: $81
	nop                                              ; $4048: $00
	inc  b                                           ; $4049: $04
	rst  $38                                         ; $404a: $ff
	nop                                              ; $404b: $00
	rst  $38                                         ; $404c: $ff
	rst  $20                                         ; $404d: $e7
	db   $18, $85                                    ; $404e: $18 $85
	nop                                              ; $4050: $00
	nop                                              ; $4051: $00
	rst  $38                                         ; $4052: $ff
	add  c                                           ; $4053: $81
	nop                                              ; $4054: $00
	ld   bc, $7909                                   ; $4055: $01 $09 $79
	add  b                                           ; $4058: $80
	ld   c, c                                        ; $4059: $49
	nop                                              ; $405a: $00
	adc  a                                           ; $405b: $8f
	add  l                                           ; $405c: $85
	nop                                              ; $405d: $00
	nop                                              ; $405e: $00
	rst  $38                                         ; $405f: $ff
	add  c                                           ; $4060: $81
	nop                                              ; $4061: $00
	ld   bc, $e00f                                   ; $4062: $01 $0f $e0
	add  b                                           ; $4065: $80
	cpl                                              ; $4066: $2f
	nop                                              ; $4067: $00
	db   $10                                         ; $4068: $10
	add  l                                           ; $4069: $85
	nop                                              ; $406a: $00
	nop                                              ; $406b: $00
	rst  $38                                         ; $406c: $ff
	add  c                                           ; $406d: $81
	nop                                              ; $406e: $00
	ld   bc, $40f3                                   ; $406f: $01 $f3 $40
	add  b                                           ; $4072: $80
	ld   [hl], e                                     ; $4073: $73
	nop                                              ; $4074: $00
	ld   c, h                                        ; $4075: $4c
	add  l                                           ; $4076: $85
	nop                                              ; $4077: $00
	nop                                              ; $4078: $00
	rst  $38                                         ; $4079: $ff
	add  c                                           ; $407a: $81
	nop                                              ; $407b: $00
	ld   bc, $00ff                                   ; $407c: $01 $ff $00
	add  b                                           ; $407f: $80

Call_08e_4080:
Jump_08e_4080:
	rst  $38                                         ; $4080: $ff
	add  [hl]                                        ; $4081: $86
	nop                                              ; $4082: $00
	nop                                              ; $4083: $00
	ld   hl, sp-$7f                                  ; $4084: $f8 $81

Jump_08e_4086:
	nop                                              ; $4086: $00
	ld   bc, $00e0                                   ; $4087: $01 $e0 $00
	add  b                                           ; $408a: $80
	ldh  [rP1], a                                    ; $408b: $e0 $00
	jr   jr_08e_4024                                 ; $408d: $18 $95

	nop                                              ; $408f: $00
	nop                                              ; $4090: $00
	rst  $38                                         ; $4091: $ff
	add  c                                           ; $4092: $81
	nop                                              ; $4093: $00
	add  b                                           ; $4094: $80
	ccf                                              ; $4095: $3f
	add  b                                           ; $4096: $80
	jr   nz, jr_08e_4099                             ; $4097: $20 $00

jr_08e_4099:
	rst  $38                                         ; $4099: $ff
	add  l                                           ; $409a: $85
	nop                                              ; $409b: $00
	nop                                              ; $409c: $00
	rst  $38                                         ; $409d: $ff
	add  c                                           ; $409e: $81
	nop                                              ; $409f: $00
	add  b                                           ; $40a0: $80
	rst  $38                                         ; $40a1: $ff
	add  b                                           ; $40a2: $80
	nop                                              ; $40a3: $00
	nop                                              ; $40a4: $00
	rst  $38                                         ; $40a5: $ff
	add  l                                           ; $40a6: $85
	nop                                              ; $40a7: $00
	nop                                              ; $40a8: $00
	rst  $38                                         ; $40a9: $ff
	add  c                                           ; $40aa: $81
	nop                                              ; $40ab: $00
	add  b                                           ; $40ac: $80
	rst  $38                                         ; $40ad: $ff
	add  b                                           ; $40ae: $80
	nop                                              ; $40af: $00
	nop                                              ; $40b0: $00
	rst  $38                                         ; $40b1: $ff
	add  l                                           ; $40b2: $85
	nop                                              ; $40b3: $00
	nop                                              ; $40b4: $00
	rst  $38                                         ; $40b5: $ff
	add  c                                           ; $40b6: $81
	nop                                              ; $40b7: $00
	add  b                                           ; $40b8: $80
	rst  $38                                         ; $40b9: $ff
	add  b                                           ; $40ba: $80
	nop                                              ; $40bb: $00
	nop                                              ; $40bc: $00
	db   $e4                                         ; $40bd: $e4
	add  c                                           ; $40be: $81
	rlca                                             ; $40bf: $07
	add  b                                           ; $40c0: $80
	inc  b                                           ; $40c1: $04
	nop                                              ; $40c2: $00
	rlca                                             ; $40c3: $07
	add  h                                           ; $40c4: $84
	inc  b                                           ; $40c5: $04
	add  b                                           ; $40c6: $80
	rlca                                             ; $40c7: $07
	ld   bc, $e004                                   ; $40c8: $01 $04 $e0
	add  c                                           ; $40cb: $81
	rst  $38                                         ; $40cc: $ff
	add  b                                           ; $40cd: $80
	rlca                                             ; $40ce: $07
	ld   [bc], a                                     ; $40cf: $02
	rst  $38                                         ; $40d0: $ff
	nop                                              ; $40d1: $00
	ld   c, b                                        ; $40d2: $48
	add  c                                           ; $40d3: $81
	db   $dd                                         ; $40d4: $dd
	nop                                              ; $40d5: $00
	sub  l                                           ; $40d6: $95
	add  b                                           ; $40d7: $80
	rst  $38                                         ; $40d8: $ff
	nop                                              ; $40d9: $00
	nop                                              ; $40da: $00
	add  e                                           ; $40db: $83
	cp   $03                                         ; $40dc: $fe $03
	adc  $32                                         ; $40de: $ce $32
	ld   [bc], a                                     ; $40e0: $02
	ld   c, d                                        ; $40e1: $4a
	add  c                                           ; $40e2: $81
	ld   a, [$4e01]                                  ; $40e3: $fa $01 $4e
	cp   $80                                         ; $40e6: $fe $80
	ld   [bc], a                                     ; $40e8: $02
	rlca                                             ; $40e9: $07
	nop                                              ; $40ea: $00
	ccf                                              ; $40eb: $3f
	nop                                              ; $40ec: $00
	ccf                                              ; $40ed: $3f
	nop                                              ; $40ee: $00
	add  hl, bc                                      ; $40ef: $09
	ld   [hl], $3f                                   ; $40f0: $36 $3f
	add  b                                           ; $40f2: $80
	nop                                              ; $40f3: $00
	add  d                                           ; $40f4: $82
	ccf                                              ; $40f5: $3f
	add  b                                           ; $40f6: $80
	nop                                              ; $40f7: $00
	rlca                                             ; $40f8: $07
	inc  b                                           ; $40f9: $04
	db   $fc                                         ; $40fa: $fc

jr_08e_40fb:
	inc  b                                           ; $40fb: $04
	db   $fc                                         ; $40fc: $fc
	inc  b                                           ; $40fd: $04
	inc  h                                           ; $40fe: $24
	call c, $80fc                                    ; $40ff: $dc $fc $80
	inc  b                                           ; $4102: $04
	add  d                                           ; $4103: $82
	db   $fc                                         ; $4104: $fc
	add  b                                           ; $4105: $80
	nop                                              ; $4106: $00
	ld   [bc], a                                     ; $4107: $02
	jr   jr_08e_410a                                 ; $4108: $18 $00

jr_08e_410a:
	jp   $0081                                       ; $410a: $c3 $81 $00


	ld   c, $e7                                      ; $410d: $0e $e7
	rst  $38                                         ; $410f: $ff
	inc  a                                           ; $4110: $3c
	rst  ToBoot                                         ; $4111: $c7
	rst  $38                                         ; $4112: $ff
	cp   l                                           ; $4113: $bd
	add  l                                           ; $4114: $85
	cp   l                                           ; $4115: $bd
	add  c                                           ; $4116: $81
	cp   l                                           ; $4117: $bd
	ld   b, a                                        ; $4118: $47
	ld   c, c                                        ; $4119: $49
	add  hl, bc                                      ; $411a: $09
	ld   a, c                                        ; $411b: $79
	nop                                              ; $411c: $00
	add  b                                           ; $411d: $80
	ld   a, c                                        ; $411e: $79
	add  b                                           ; $411f: $80
	nop                                              ; $4120: $00
	ld   [bc], a                                     ; $4121: $02
	ld   c, c                                        ; $4122: $49
	or   b                                           ; $4123: $b0
	ld   sp, hl                                      ; $4124: $f9
	add  b                                           ; $4125: $80
	nop                                              ; $4126: $00
	ld   [$f9f8], sp                                 ; $4127: $08 $f8 $f9
	pop  bc                                          ; $412a: $c1
	jr   nz, @-$1d                                   ; $412b: $20 $e1

	ld   c, $0f                                      ; $412d: $0e $0f
	cp   $ff                                         ; $412f: $fe $ff
	add  b                                           ; $4131: $80
	nop                                              ; $4132: $00
	add  b                                           ; $4133: $80
	inc  h                                           ; $4134: $24
	rlca                                             ; $4135: $07
	nop                                              ; $4136: $00
	ld   bc, $ff00                                   ; $4137: $01 $00 $ff
	nop                                              ; $413a: $00
	ld   c, [hl]                                     ; $413b: $4e
	ld   [hl-], a                                    ; $413c: $32
	ld   [hl+], a                                    ; $413d: $22
	add  b                                           ; $413e: $80
	ld   [hl], d                                     ; $413f: $72
	add  b                                           ; $4140: $80
	or   d                                           ; $4141: $b2
	dec  bc                                          ; $4142: $0b
	ld   h, b                                        ; $4143: $60
	ld   h, c                                        ; $4144: $61
	ld   [hl], d                                     ; $4145: $72
	ld   h, c                                        ; $4146: $61
	ld   [hl], b                                     ; $4147: $70
	inc  hl                                          ; $4148: $23
	ld   h, b                                        ; $4149: $60
	ld   h, e                                        ; $414a: $63
	db   $10                                         ; $414b: $10
	call z, $dbc0                                    ; $414c: $cc $c0 $db
	add  c                                           ; $414f: $81
	ret  nz                                          ; $4150: $c0

	inc  c                                           ; $4151: $0c
	db   $e4                                         ; $4152: $e4
	rra                                              ; $4153: $1f
	nop                                              ; $4154: $00
	ret  c                                           ; $4155: $d8

	ld   c, a                                        ; $4156: $4f
	ld   d, a                                        ; $4157: $57
	ret  nc                                          ; $4158: $d0

	rla                                              ; $4159: $17
	sub  b                                           ; $415a: $90
	ld   d, a                                        ; $415b: $57
	jr   c, jr_08e_415e                              ; $415c: $38 $00

jr_08e_415e:
	ld   b, b                                        ; $415e: $40
	add  c                                           ; $415f: $81
	nop                                              ; $4160: $00
	ld   [bc], a                                     ; $4161: $02
	and  b                                           ; $4162: $a0
	ldh  [rP1], a                                    ; $4163: $e0 $00
	add  b                                           ; $4165: $80
	ldh  [$81], a                                    ; $4166: $e0 $81
	and  b                                           ; $4168: $a0
	ld   [bc], a                                     ; $4169: $02
	jr   nz, @-$5e                                   ; $416a: $20 $a0

	jr   c, jr_08e_40fb                              ; $416c: $38 $8d

	nop                                              ; $416e: $00

jr_08e_416f:
	ld   [bc], a                                     ; $416f: $02
	call z, $3724                                    ; $4170: $cc $24 $37
	add  b                                           ; $4173: $80
	daa                                              ; $4174: $27
	add  b                                           ; $4175: $80
	scf                                              ; $4176: $37
	add  b                                           ; $4177: $80
	dec  sp                                          ; $4178: $3b
	inc  b                                           ; $4179: $04

jr_08e_417a:
	jr   nz, @+$28                                   ; $417a: $20 $26

	jr   c, jr_08e_419f                              ; $417c: $38 $21

	ccf                                              ; $417e: $3f
	add  b                                           ; $417f: $80
	jr   nz, jr_08e_4183                             ; $4180: $20 $01

	rst  ToBoot                                         ; $4182: $c7

jr_08e_4183:
	jr   z, jr_08e_410a                              ; $4183: $28 $85

	rst  $28                                         ; $4185: $ef
	inc  bc                                          ; $4186: $03
	nop                                              ; $4187: $00
	xor  $00                                         ; $4188: $ee $00
	ld   bc, $6d80                                   ; $418a: $01 $80 $6d
	inc  bc                                          ; $418d: $03
	xor  d                                           ; $418e: $aa
	rst  $10                                         ; $418f: $d7
	ld   b, b                                        ; $4190: $40
	jp   nc, $c080                                   ; $4191: $d2 $80 $c0

	add  b                                           ; $4194: $80
	sbc  $80                                         ; $4195: $de $80
	cp   a                                           ; $4197: $bf
	inc  b                                           ; $4198: $04
	nop                                              ; $4199: $00
	ret  nz                                          ; $419a: $c0

	ccf                                              ; $419b: $3f
	nop                                              ; $419c: $00
	rst  $38                                         ; $419d: $ff
	add  b                                           ; $419e: $80

jr_08e_419f:
	nop                                              ; $419f: $00
	ld   bc, $8578                                   ; $41a0: $01 $78 $85
	add  e                                           ; $41a3: $83
	db   $fd                                         ; $41a4: $fd
	add  b                                           ; $41a5: $80
	ld   a, l                                        ; $41a6: $7d
	ld   [$dd00], sp                                 ; $41a7: $08 $00 $dd
	nop                                              ; $41aa: $00
	jr   nc, jr_08e_417a                             ; $41ab: $30 $cd

	ld   c, l                                        ; $41ad: $4d
	ld   b, l                                        ; $41ae: $45
	call z, $8004                                    ; $41af: $cc $04 $80
	rlca                                             ; $41b2: $07
	nop                                              ; $41b3: $00
	inc  b                                           ; $41b4: $04
	add  c                                           ; $41b5: $81
	rlca                                             ; $41b6: $07
	add  b                                           ; $41b7: $80
	ld   b, $00                                      ; $41b8: $06 $00
	rlca                                             ; $41ba: $07
	add  b                                           ; $41bb: $80
	inc  b                                           ; $41bc: $04
	add  b                                           ; $41bd: $80
	dec  b                                           ; $41be: $05
	ld   [$e307], sp                                 ; $41bf: $08 $07 $e3
	or   h                                           ; $41c2: $b4
	ld   c, e                                        ; $41c3: $4b
	rst  $38                                         ; $41c4: $ff
	inc  bc                                          ; $41c5: $03
	rst  $38                                         ; $41c6: $ff

jr_08e_41c7:
	cp   $ff                                         ; $41c7: $fe $ff
	add  b                                           ; $41c9: $80
	rra                                              ; $41ca: $1f
	add  hl, bc                                      ; $41cb: $09
	cp   $07                                         ; $41cc: $fe $07
	ld   d, [hl]                                     ; $41ce: $56
	ld   h, $77                                      ; $41cf: $26 $77
	rst  $38                                         ; $41d1: $ff
	push af                                          ; $41d2: $f5
	xor  e                                           ; $41d3: $ab
	ld   e, a                                        ; $41d4: $5f
	add  a                                           ; $41d5: $87
	add  b                                           ; $41d6: $80
	rlca                                             ; $41d7: $07

jr_08e_41d8:
	dec  b                                           ; $41d8: $05
	daa                                              ; $41d9: $27
	sub  a                                           ; $41da: $97
	or   a                                           ; $41db: $b7
	add  a                                           ; $41dc: $87
	dec  [hl]                                        ; $41dd: $35
	add  a                                           ; $41de: $87
	add  b                                           ; $41df: $80
	inc  d                                           ; $41e0: $14
	ld   [bc], a                                     ; $41e1: $02
	inc  b                                           ; $41e2: $04
	sub  a                                           ; $41e3: $97
	db   $e3                                         ; $41e4: $e3
	add  e                                           ; $41e5: $83
	ccf                                              ; $41e6: $3f
	ld   [bc], a                                     ; $41e7: $02
	nop                                              ; $41e8: $00
	rlca                                             ; $41e9: $07
	jr   c, jr_08e_416f                              ; $41ea: $38 $83

	ccf                                              ; $41ec: $3f
	ld   [bc], a                                     ; $41ed: $02
	nop                                              ; $41ee: $00
	rlca                                             ; $41ef: $07
	nop                                              ; $41f0: $00
	add  e                                           ; $41f1: $83
	db   $fc                                         ; $41f2: $fc
	ld   [bc], a                                     ; $41f3: $02
	nop                                              ; $41f4: $00
	db   $fc                                         ; $41f5: $fc
	nop                                              ; $41f6: $00
	add  e                                           ; $41f7: $83
	db   $fc                                         ; $41f8: $fc
	ld   [bc], a                                     ; $41f9: $02
	nop                                              ; $41fa: $00
	db   $fc                                         ; $41fb: $fc
	rst  $38                                         ; $41fc: $ff
	add  l                                           ; $41fd: $85
	add  c                                           ; $41fe: $81
	add  b                                           ; $41ff: $80
	add  e                                           ; $4200: $83
	add  b                                           ; $4201: $80
	rst  $38                                         ; $4202: $ff
	add  hl, de                                      ; $4203: $19
	add  hl, hl                                      ; $4204: $29
	cp   $56                                         ; $4205: $fe $56
	ld   d, d                                        ; $4207: $52
	ld   a, l                                        ; $4208: $7d
	ld   hl, sp-$80                                  ; $4209: $f8 $80
	ld   sp, hl                                      ; $420b: $f9
	add  c                                           ; $420c: $81
	ld   sp, hl                                      ; $420d: $f9
	add  c                                           ; $420e: $81
	ld   sp, hl                                      ; $420f: $f9
	add  c                                           ; $4210: $81
	ld   sp, hl                                      ; $4211: $f9
	add  b                                           ; $4212: $80
	ld   hl, sp+$51                                  ; $4213: $f8 $51
	nop                                              ; $4215: $00
	ld   c, b                                        ; $4216: $48
	ld   a, c                                        ; $4217: $79
	ld   [hl], $07                                   ; $4218: $36 $07
	inc  hl                                          ; $421a: $23
	ret  c                                           ; $421b: $d8

	adc  d                                           ; $421c: $8a
	adc  h                                           ; $421d: $8c
	add  b                                           ; $421e: $80
	inc  d                                           ; $421f: $14
	add  b                                           ; $4220: $80
	and  h                                           ; $4221: $a4
	add  b                                           ; $4222: $80
	inc  b                                           ; $4223: $04
	inc  b                                           ; $4224: $04
	db   $f4                                         ; $4225: $f4
	dec  b                                           ; $4226: $05
	push af                                          ; $4227: $f5
	inc  b                                           ; $4228: $04
	ld   e, $81                                      ; $4229: $1e $81
	ret  nc                                          ; $422b: $d0

	adc  c                                           ; $422c: $89
	db   $d3                                         ; $422d: $d3
	ld   bc, $7c13                                   ; $422e: $01 $13 $7c
	add  c                                           ; $4231: $81
	ld   d, b                                        ; $4232: $50
	add  h                                           ; $4233: $84
	ret  nc                                          ; $4234: $d0

	ld   [bc], a                                     ; $4235: $02
	call nc, $cbdf                                   ; $4236: $d4 $df $cb
	add  c                                           ; $4239: $81
	jp   z, $3200                                    ; $423a: $ca $00 $32

	add  l                                           ; $423d: $85
	jr   nz, @-$7e                                   ; $423e: $20 $80

	ld   h, b                                        ; $4240: $60
	add  b                                           ; $4241: $80
	ldh  [rP1], a                                    ; $4242: $e0 $00
	jr   nz, jr_08e_41c7                             ; $4244: $20 $81

	ld   b, b                                        ; $4246: $40
	nop                                              ; $4247: $00
	ld   e, b                                        ; $4248: $58
	adc  l                                           ; $4249: $8d
	nop                                              ; $424a: $00
	nop                                              ; $424b: $00
	rst  JumpTable                                         ; $424c: $df
	adc  l                                           ; $424d: $8d
	jr   nz, jr_08e_4256                             ; $424e: $20 $06

	rst  $38                                         ; $4250: $ff
	ld   b, l                                        ; $4251: $45
	rst  ToBoot                                         ; $4252: $c7
	inc  a                                           ; $4253: $3c
	ld   [hl], b                                     ; $4254: $70
	db   $10                                         ; $4255: $10

jr_08e_4256:
	jr   jr_08e_41d8                                 ; $4256: $18 $80

	ld   [$0007], sp                                 ; $4258: $08 $07 $00
	ld   b, $07                                      ; $425b: $06 $07
	inc  bc                                          ; $425d: $03
	inc  a                                           ; $425e: $3c
	jr   c, jr_08e_42a1                              ; $425f: $38 $40

	rst  $38                                         ; $4261: $ff
	add  b                                           ; $4262: $80
	nop                                              ; $4263: $00
	rlca                                             ; $4264: $07
	add  b                                           ; $4265: $80
	ret  nz                                          ; $4266: $c0

	ld   b, b                                        ; $4267: $40
	ld   h, b                                        ; $4268: $60
	jr   nz, jr_08e_429b                             ; $4269: $20 $30

	db   $10                                         ; $426b: $10
	rra                                              ; $426c: $1f
	add  b                                           ; $426d: $80
	rst  $38                                         ; $426e: $ff
	add  c                                           ; $426f: $81
	nop                                              ; $4270: $00
	ld   a, [bc]                                     ; $4271: $0a
	sub  b                                           ; $4272: $90
	ld   b, b                                        ; $4273: $40
	ld   d, a                                        ; $4274: $57
	ld   b, b                                        ; $4275: $40
	ld   c, b                                        ; $4276: $48
	ld   h, b                                        ; $4277: $60
	ld   l, b                                        ; $4278: $68
	ld   b, b                                        ; $4279: $40
	ld   b, l                                        ; $427a: $45
	nop                                              ; $427b: $00
	add  d                                           ; $427c: $82
	add  b                                           ; $427d: $80
	rst  $38                                         ; $427e: $ff
	add  c                                           ; $427f: $81
	nop                                              ; $4280: $00
	nop                                              ; $4281: $00
	dec  de                                          ; $4282: $1b
	add  b                                           ; $4283: $80
	inc  b                                           ; $4284: $04
	ld   bc, $0105                                   ; $4285: $01 $05 $01
	add  c                                           ; $4288: $81
	nop                                              ; $4289: $00
	ld   bc, $0007                                   ; $428a: $01 $07 $00
	add  h                                           ; $428d: $84
	rlca                                             ; $428e: $07
	nop                                              ; $428f: $00
	db   $e4                                         ; $4290: $e4
	add  b                                           ; $4291: $80
	rlca                                             ; $4292: $07
	ld   bc, $5457                                   ; $4293: $01 $57 $54
	add  c                                           ; $4296: $81
	nop                                              ; $4297: $00
	ld   bc, $00ff                                   ; $4298: $01 $ff $00

jr_08e_429b:
	add  h                                           ; $429b: $84
	rst  $38                                         ; $429c: $ff
	ld   bc, $93ef                                   ; $429d: $01 $ef $93
	add  b                                           ; $42a0: $80

jr_08e_42a1:
	rst  $38                                         ; $42a1: $ff
	nop                                              ; $42a2: $00
	add  e                                           ; $42a3: $83
	add  c                                           ; $42a4: $81
	nop                                              ; $42a5: $00
	ld   bc, $00ff                                   ; $42a6: $01 $ff $00

jr_08e_42a9:
	add  c                                           ; $42a9: $81
	rst  $38                                         ; $42aa: $ff
	add  b                                           ; $42ab: $80
	rst  ToBoot                                         ; $42ac: $c7
	ld   bc, $e8d0                                   ; $42ad: $01 $d0 $e8
	add  e                                           ; $42b0: $83
	ccf                                              ; $42b1: $3f
	inc  bc                                          ; $42b2: $03
	nop                                              ; $42b3: $00
	rlca                                             ; $42b4: $07
	ld   hl, sp+$3f                                  ; $42b5: $f8 $3f
	add  d                                           ; $42b7: $82
	rst  $38                                         ; $42b8: $ff
	ld   [bc], a                                     ; $42b9: $02
	ret  nz                                          ; $42ba: $c0

	rlca                                             ; $42bb: $07
	nop                                              ; $42bc: $00
	add  e                                           ; $42bd: $83
	db   $fc                                         ; $42be: $fc
	inc  bc                                          ; $42bf: $03
	nop                                              ; $42c0: $00
	db   $fc                                         ; $42c1: $fc
	inc  bc                                          ; $42c2: $03
	db   $fc                                         ; $42c3: $fc
	add  d                                           ; $42c4: $82
	db   $fd                                         ; $42c5: $fd
	dec  b                                           ; $42c6: $05
	ld   bc, $aefd                                   ; $42c7: $01 $fd $ae
	nop                                              ; $42ca: $00
	ld   d, d                                        ; $42cb: $52
	rst  $38                                         ; $42cc: $ff
	add  b                                           ; $42cd: $80
	nop                                              ; $42ce: $00
	add  b                                           ; $42cf: $80
	rlca                                             ; $42d0: $07
	ld   [bc], a                                     ; $42d1: $02
	ldh  [rP1], a                                    ; $42d2: $e0 $00
	xor  $81                                         ; $42d4: $ee $81
	and  $03                                         ; $42d6: $e6 $03
	rst  $28                                         ; $42d8: $ef
	rst  $20                                         ; $42d9: $e7
	add  hl, hl                                      ; $42da: $29
	ld   hl, sp-$80                                  ; $42db: $f8 $80
	ld   sp, hl                                      ; $42dd: $f9
	ld   bc, $0031                                   ; $42de: $01 $31 $00
	add  b                                           ; $42e1: $80
	add  b                                           ; $42e2: $80
	ld   bc, $80bf                                   ; $42e3: $01 $bf $80
	add  h                                           ; $42e6: $84
	cp   a                                           ; $42e7: $bf
	dec  b                                           ; $42e8: $05
	cp   [hl]                                        ; $42e9: $be
	ld   bc, $007c                                   ; $42ea: $01 $7c $00
	db   $fc                                         ; $42ed: $fc
	nop                                              ; $42ee: $00

jr_08e_42ef:
	add  b                                           ; $42ef: $80
	rrca                                             ; $42f0: $0f
	ld   [bc], a                                     ; $42f1: $02
	pop  bc                                          ; $42f2: $c1
	ld   bc, $81dd                                   ; $42f3: $01 $dd $81
	call $df04                                       ; $42f6: $cd $04 $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42f9: $cf
	jr   nz, jr_08e_42ef                             ; $42fa: $20 $f3

	inc  de                                          ; $42fc: $13
	add  b                                           ; $42fd: $80
	di                                               ; $42fe: $f3
	add  c                                           ; $42ff: $81
	nop                                              ; $4300: $00
	ld   bc, $007f                                   ; $4301: $01 $7f $00
	add  l                                           ; $4304: $85
	ld   a, a                                        ; $4305: $7f
	add  b                                           ; $4306: $80
	jp   z, $ff80                                    ; $4307: $ca $80 $ff

	nop                                              ; $430a: $00
	nop                                              ; $430b: $00
	add  b                                           ; $430c: $80
	ld   e, $02                                      ; $430d: $1e $02
	add  d                                           ; $430f: $82
	ld   [bc], a                                     ; $4310: $02
	cp   d                                           ; $4311: $ba
	add  c                                           ; $4312: $81
	sbc  d                                           ; $4313: $9a
	ld   [bc], a                                     ; $4314: $02
	cp   [hl]                                        ; $4315: $be
	sbc  [hl]                                        ; $4316: $9e
	add  a                                           ; $4317: $87
	add  b                                           ; $4318: $80
	ld   b, b                                        ; $4319: $40
	add  b                                           ; $431a: $80
	ldh  [$81], a                                    ; $431b: $e0 $81
	nop                                              ; $431d: $00
	ld   bc, $00e0                                   ; $431e: $01 $e0 $00
	add  h                                           ; $4321: $84
	ldh  [rP1], a                                    ; $4322: $e0 $00
	jr   jr_08e_42a9                                 ; $4324: $18 $83

	nop                                              ; $4326: $00
	ld   e, $01                                      ; $4327: $1e $01
	nop                                              ; $4329: $00
	inc  bc                                          ; $432a: $03
	nop                                              ; $432b: $00
	ld   b, $00                                      ; $432c: $06 $00
	inc  c                                           ; $432e: $0c
	nop                                              ; $432f: $00
	ld   bc, $d500                                   ; $4330: $01 $00 $d5
	jr   nz, jr_08e_4351                             ; $4333: $20 $1c

	nop                                              ; $4335: $00
	ld   h, e                                        ; $4336: $63
	nop                                              ; $4337: $00
	inc  c                                           ; $4338: $0c
	nop                                              ; $4339: $00
	or   e                                           ; $433a: $b3
	dec  bc                                          ; $433b: $0b
	ld   c, b                                        ; $433c: $48
	rrca                                             ; $433d: $0f
	adc  a                                           ; $433e: $8f
	ld   [$0310], sp                                 ; $433f: $08 $10 $03
	db   $e3                                         ; $4342: $e3
	nop                                              ; $4343: $00
	jr   c, jr_08e_4347                              ; $4344: $38 $01

	pop  bc                                          ; $4346: $c1

jr_08e_4347:
	add  b                                           ; $4347: $80
	nop                                              ; $4348: $00
	inc  bc                                          ; $4349: $03
	ld   bc, $fffe                                   ; $434a: $01 $fe $ff
	nop                                              ; $434d: $00
	add  b                                           ; $434e: $80
	rst  $38                                         ; $434f: $ff
	add  b                                           ; $4350: $80

jr_08e_4351:
	nop                                              ; $4351: $00
	add  b                                           ; $4352: $80
	rst  $38                                         ; $4353: $ff
	add  b                                           ; $4354: $80
	nop                                              ; $4355: $00
	add  b                                           ; $4356: $80
	ld   d, l                                        ; $4357: $55
	add  b                                           ; $4358: $80
	xor  d                                           ; $4359: $aa
	inc  bc                                          ; $435a: $03
	ld   d, l                                        ; $435b: $55
	xor  d                                           ; $435c: $aa
	rst  $38                                         ; $435d: $ff
	nop                                              ; $435e: $00
	add  b                                           ; $435f: $80
	rst  $38                                         ; $4360: $ff
	add  b                                           ; $4361: $80
	nop                                              ; $4362: $00
	add  b                                           ; $4363: $80
	rst  $38                                         ; $4364: $ff
	add  b                                           ; $4365: $80
	nop                                              ; $4366: $00
	ld   [bc], a                                     ; $4367: $02
	ld   a, a                                        ; $4368: $7f
	ld   a, e                                        ; $4369: $7b
	ei                                               ; $436a: $fb
	add  b                                           ; $436b: $80
	pop  af                                          ; $436c: $f1
	inc  b                                           ; $436d: $04
	nop                                              ; $436e: $00
	ld   [$e000], a                                  ; $436f: $ea $00 $e0
	push af                                          ; $4372: $f5
	add  b                                           ; $4373: $80
	nop                                              ; $4374: $00
	ld   bc, $1fff                                   ; $4375: $01 $ff $1f
	add  c                                           ; $4378: $81
	rlca                                             ; $4379: $07
	nop                                              ; $437a: $00
	nop                                              ; $437b: $00
	add  c                                           ; $437c: $81
	rlca                                             ; $437d: $07
	add  e                                           ; $437e: $83
	nop                                              ; $437f: $00
	add  b                                           ; $4380: $80
	ld   bc, $0401                                   ; $4381: $01 $01 $04

Jump_08e_4384:
	db   $e4                                         ; $4384: $e4
	add  c                                           ; $4385: $81
	rst  $38                                         ; $4386: $ff
	ld   bc, $fe01                                   ; $4387: $01 $01 $fe
	add  b                                           ; $438a: $80
	ldh  a, [rP1]                                    ; $438b: $f0 $00
	nop                                              ; $438d: $00
	add  b                                           ; $438e: $80
	ld   b, $80                                      ; $438f: $06 $80

jr_08e_4391:
	jr   nc, @+$05                                   ; $4391: $30 $03

	add  b                                           ; $4393: $80
	add  [hl]                                        ; $4394: $86
	ld   b, $00                                      ; $4395: $06 $00
	add  b                                           ; $4397: $80
	push de                                          ; $4398: $d5
	add  b                                           ; $4399: $80
	ret  nc                                          ; $439a: $d0

	ld   bc, $1b00                                   ; $439b: $01 $00 $1b
	add  b                                           ; $439e: $80
	db   $db                                         ; $439f: $db
	add  c                                           ; $43a0: $81
	dec  de                                          ; $43a1: $1b
	inc  b                                           ; $43a2: $04
	ret  nz                                          ; $43a3: $c0

	db   $db                                         ; $43a4: $db
	ld   e, e                                        ; $43a5: $5b
	db   $db                                         ; $43a6: $db
	and  e                                           ; $43a7: $a3
	add  b                                           ; $43a8: $80
	ld   a, a                                        ; $43a9: $7f
	add  c                                           ; $43aa: $81
	ccf                                              ; $43ab: $3f
	ld   [bc], a                                     ; $43ac: $02
	add  b                                           ; $43ad: $80
	add  a                                           ; $43ae: $87
	cp   b                                           ; $43af: $b8
	add  c                                           ; $43b0: $81
	cp   a                                           ; $43b1: $bf
	inc  b                                           ; $43b2: $04
	ccf                                              ; $43b3: $3f
	cp   a                                           ; $43b4: $bf
	add  b                                           ; $43b5: $80
	add  a                                           ; $43b6: $87
	add  e                                           ; $43b7: $83
	add  c                                           ; $43b8: $81
	rst  $38                                         ; $43b9: $ff
	add  b                                           ; $43ba: $80
	db   $fc                                         ; $43bb: $fc
	ld   [bc], a                                     ; $43bc: $02
	ld   bc, $01fd                                   ; $43bd: $01 $fd $01
	add  c                                           ; $43c0: $81
	db   $fd                                         ; $43c1: $fd
	dec  b                                           ; $43c2: $05
	cp   $ff                                         ; $43c3: $fe $ff
	ld   bc, $e1fd                                   ; $43c5: $01 $fd $e1
	ldh  [$80], a                                    ; $43c8: $e0 $80
	and  $80                                         ; $43ca: $e6 $80
	nop                                              ; $43cc: $00
	add  h                                           ; $43cd: $84
	db   $dd                                         ; $43ce: $dd
	nop                                              ; $43cf: $00
	ld   [hl+], a                                    ; $43d0: $22
	add  c                                           ; $43d1: $81
	rst  $38                                         ; $43d2: $ff
	nop                                              ; $43d3: $00
	ld   h, d                                        ; $43d4: $62
	add  c                                           ; $43d5: $81
	cp   a                                           ; $43d6: $bf
	add  b                                           ; $43d7: $80
	nop                                              ; $43d8: $00
	add  h                                           ; $43d9: $84
	db   $dd                                         ; $43da: $dd
	nop                                              ; $43db: $00
	ld   [hl+], a                                    ; $43dc: $22
	add  c                                           ; $43dd: $81
	rst  $38                                         ; $43de: $ff
	ld   bc, $c11c                                   ; $43df: $01 $1c $c1
	add  b                                           ; $43e2: $80
	call $0080                                       ; $43e3: $cd $80 $00
	add  h                                           ; $43e6: $84
	db   $dd                                         ; $43e7: $dd
	nop                                              ; $43e8: $00
	ld   [hl+], a                                    ; $43e9: $22
	add  c                                           ; $43ea: $81

jr_08e_43eb:
	rst  $38                                         ; $43eb: $ff
	nop                                              ; $43ec: $00
	and  d                                           ; $43ed: $a2
	add  c                                           ; $43ee: $81
	ld   a, a                                        ; $43ef: $7f
	add  b                                           ; $43f0: $80
	nop                                              ; $43f1: $00
	add  h                                           ; $43f2: $84
	db   $dd                                         ; $43f3: $dd
	nop                                              ; $43f4: $00
	ld   [hl+], a                                    ; $43f5: $22
	add  c                                           ; $43f6: $81
	rst  $38                                         ; $43f7: $ff
	ld   bc, $825f                                   ; $43f8: $01 $5f $82
	add  b                                           ; $43fb: $80
	sbc  d                                           ; $43fc: $9a
	add  b                                           ; $43fd: $80
	nop                                              ; $43fe: $00
	add  h                                           ; $43ff: $84
	db   $dd                                         ; $4400: $dd
	nop                                              ; $4401: $00
	ld   [hl+], a                                    ; $4402: $22
	add  c                                           ; $4403: $81
	rst  $38                                         ; $4404: $ff
	nop                                              ; $4405: $00
	ld   a, [hl-]                                    ; $4406: $3a
	add  c                                           ; $4407: $81
	ldh  [$80], a                                    ; $4408: $e0 $80
	nop                                              ; $440a: $00
	add  h                                           ; $440b: $84
	ldh  [rP1], a                                    ; $440c: $e0 $00
	jr   nz, jr_08e_4391                             ; $440e: $20 $81

	ldh  [rSC], a                                    ; $4410: $e0 $02
	ld   sp, $0300                                   ; $4412: $31 $00 $03
	adc  e                                           ; $4415: $8b
	nop                                              ; $4416: $00
	inc  bc                                          ; $4417: $03
	sbc  l                                           ; $4418: $9d
	dec  hl                                          ; $4419: $2b
	db   $e3                                         ; $441a: $e3
	and  e                                           ; $441b: $a3
	add  b                                           ; $441c: $80
	adc  e                                           ; $441d: $8b
	add  b                                           ; $441e: $80
	dec  hl                                          ; $441f: $2b
	add  h                                           ; $4420: $84
	ld   l, e                                        ; $4421: $6b
	add  b                                           ; $4422: $80
	ld   l, d                                        ; $4423: $6a
	inc  b                                           ; $4424: $04
	ld   b, e                                        ; $4425: $43
	ld   b, b                                        ; $4426: $40
	ld   c, c                                        ; $4427: $49
	ld   b, b                                        ; $4428: $40
	ld   h, h                                        ; $4429: $64
	add  c                                           ; $442a: $81
	ld   b, b                                        ; $442b: $40
	ld   [bc], a                                     ; $442c: $02
	ld   d, d                                        ; $442d: $52
	ld   a, a                                        ; $442e: $7f
	rst  $38                                         ; $442f: $ff
	add  b                                           ; $4430: $80
	push de                                          ; $4431: $d5
	rlca                                             ; $4432: $07
	rst  $38                                         ; $4433: $ff
	ld   d, l                                        ; $4434: $55
	rst  $38                                         ; $4435: $ff
	sbc  d                                           ; $4436: $9a
	jr   nc, jr_08e_446f                             ; $4437: $30 $36

	jr   nc, jr_08e_43eb                             ; $4439: $30 $b0

	add  c                                           ; $443b: $81
	nop                                              ; $443c: $00
	nop                                              ; $443d: $00
	ld   c, c                                        ; $443e: $49
	add  b                                           ; $443f: $80
	rst  $38                                         ; $4440: $ff
	add  b                                           ; $4441: $80
	ld   d, l                                        ; $4442: $55
	rlca                                             ; $4443: $07
	rst  $38                                         ; $4444: $ff
	ld   d, l                                        ; $4445: $55
	rst  $38                                         ; $4446: $ff
	xor  d                                           ; $4447: $aa
	nop                                              ; $4448: $00
	add  b                                           ; $4449: $80
	nop                                              ; $444a: $00
	ld   e, e                                        ; $444b: $5b
	add  c                                           ; $444c: $81
	nop                                              ; $444d: $00
	nop                                              ; $444e: $00
	inc  h                                           ; $444f: $24
	add  b                                           ; $4450: $80
	rst  $38                                         ; $4451: $ff
	add  b                                           ; $4452: $80
	ld   d, l                                        ; $4453: $55
	inc  b                                           ; $4454: $04
	rst  $38                                         ; $4455: $ff
	ld   d, l                                        ; $4456: $55
	rst  $38                                         ; $4457: $ff
	ld   c, d                                        ; $4458: $4a

jr_08e_4459:
	nop                                              ; $4459: $00
	add  b                                           ; $445a: $80
	ld   bc, $0400                                   ; $445b: $01 $00 $04
	add  l                                           ; $445e: $85
	dec  b                                           ; $445f: $05
	nop                                              ; $4460: $00
	ld   bc, $0081                                   ; $4461: $01 $81 $00
	ld   [bc], a                                     ; $4464: $02
	jp   nc, $9636                                   ; $4465: $d2 $36 $96

	add  a                                           ; $4468: $87
	or   [hl]                                        ; $4469: $b6
	nop                                              ; $446a: $00
	inc  h                                           ; $446b: $24
	add  c                                           ; $446c: $81
	nop                                              ; $446d: $00
	nop                                              ; $446e: $00

jr_08e_446f:
	ld   b, b                                        ; $446f: $40
	adc  c                                           ; $4470: $89
	db   $db                                         ; $4471: $db
	nop                                              ; $4472: $00
	sbc  e                                           ; $4473: $9b
	add  c                                           ; $4474: $81
	nop                                              ; $4475: $00
	nop                                              ; $4476: $00
	ld   b, b                                        ; $4477: $40
	add  e                                           ; $4478: $83
	rst  $38                                         ; $4479: $ff
	ld   [bc], a                                     ; $447a: $02
	add  b                                           ; $447b: $80
	cp   a                                           ; $447c: $bf
	ret  nz                                          ; $447d: $c0

	add  c                                           ; $447e: $81
	rst  $38                                         ; $447f: $ff
	inc  b                                           ; $4480: $04
	cp   a                                           ; $4481: $bf
	ccf                                              ; $4482: $3f
	nop                                              ; $4483: $00
	ccf                                              ; $4484: $3f
	ld   [bc], a                                     ; $4485: $02
	add  e                                           ; $4486: $83
	rst  $38                                         ; $4487: $ff
	ld   [bc], a                                     ; $4488: $02
	ld   bc, $03fd                                   ; $4489: $01 $fd $03
	add  c                                           ; $448c: $81
	rst  $38                                         ; $448d: $ff
	inc  b                                           ; $448e: $04
	db   $fd                                         ; $448f: $fd
	db   $fc                                         ; $4490: $fc
	nop                                              ; $4491: $00
	db   $fc                                         ; $4492: $fc
	ld   [hl+], a                                    ; $4493: $22
	adc  c                                           ; $4494: $89
	rst  $38                                         ; $4495: $ff
	nop                                              ; $4496: $00
	db   $dd                                         ; $4497: $dd
	add  c                                           ; $4498: $81
	nop                                              ; $4499: $00
	nop                                              ; $449a: $00
	ld   [hl+], a                                    ; $449b: $22
	adc  c                                           ; $449c: $89
	rst  $38                                         ; $449d: $ff
	nop                                              ; $449e: $00
	db   $dd                                         ; $449f: $dd
	add  c                                           ; $44a0: $81
	nop                                              ; $44a1: $00
	nop                                              ; $44a2: $00
	ld   [hl+], a                                    ; $44a3: $22
	adc  c                                           ; $44a4: $89
	rst  $38                                         ; $44a5: $ff
	nop                                              ; $44a6: $00
	db   $dd                                         ; $44a7: $dd
	add  c                                           ; $44a8: $81
	nop                                              ; $44a9: $00
	nop                                              ; $44aa: $00
	ld   [hl+], a                                    ; $44ab: $22
	adc  c                                           ; $44ac: $89
	rst  $38                                         ; $44ad: $ff
	nop                                              ; $44ae: $00
	db   $dd                                         ; $44af: $dd
	add  c                                           ; $44b0: $81
	nop                                              ; $44b1: $00
	nop                                              ; $44b2: $00
	ld   [hl+], a                                    ; $44b3: $22
	adc  c                                           ; $44b4: $89
	rst  $38                                         ; $44b5: $ff
	nop                                              ; $44b6: $00
	db   $dd                                         ; $44b7: $dd
	add  c                                           ; $44b8: $81
	nop                                              ; $44b9: $00
	nop                                              ; $44ba: $00
	daa                                              ; $44bb: $27

jr_08e_44bc:
	adc  c                                           ; $44bc: $89
	ldh  [rP1], a                                    ; $44bd: $e0 $00
	rst  ToBoot                                         ; $44bf: $c7
	add  c                                           ; $44c0: $81
	nop                                              ; $44c1: $00
	nop                                              ; $44c2: $00
	push af                                          ; $44c3: $f5
	adc  c                                           ; $44c4: $89
	inc  b                                           ; $44c5: $04
	nop                                              ; $44c6: $00
	db   $f4                                         ; $44c7: $f4
	add  c                                           ; $44c8: $81
	inc  b                                           ; $44c9: $04
	ld   bc, $6a68                                   ; $44ca: $01 $68 $6a
	add  c                                           ; $44cd: $81
	ld   l, b                                        ; $44ce: $68
	nop                                              ; $44cf: $00
	ld   l, c                                        ; $44d0: $69
	add  d                                           ; $44d1: $82
	ld   l, e                                        ; $44d2: $6b
	inc  bc                                          ; $44d3: $03
	ld   c, e                                        ; $44d4: $4b
	ld   c, d                                        ; $44d5: $4a
	inc  hl                                          ; $44d6: $23
	jr   nz, jr_08e_4459                             ; $44d7: $20 $80

	add  b                                           ; $44d9: $80
	inc  b                                           ; $44da: $04
	ld   d, l                                        ; $44db: $55
	rst  $38                                         ; $44dc: $ff
	db   $eb                                         ; $44dd: $eb
	rst  $38                                         ; $44de: $ff
	cp   [hl]                                        ; $44df: $be
	add  l                                           ; $44e0: $85
	rst  $38                                         ; $44e1: $ff
	ld   [$ff28], sp                                 ; $44e2: $08 $28 $ff
	jr   z, jr_08e_44e7                              ; $44e5: $28 $00

jr_08e_44e7:
	ld   d, l                                        ; $44e7: $55
	rst  $38                                         ; $44e8: $ff
	cp   [hl]                                        ; $44e9: $be
	rst  $38                                         ; $44ea: $ff
	db   $eb                                         ; $44eb: $eb
	add  c                                           ; $44ec: $81
	rst  $38                                         ; $44ed: $ff
	dec  b                                           ; $44ee: $05
	add  sp, -$01                                    ; $44ef: $e8 $ff
	add  sp, -$01                                    ; $44f1: $e8 $ff
	nop                                              ; $44f3: $00
	rst  $38                                         ; $44f4: $ff
	add  b                                           ; $44f5: $80
	nop                                              ; $44f6: $00
	ld   [bc], a                                     ; $44f7: $02
	ld   d, l                                        ; $44f8: $55
	rst  $38                                         ; $44f9: $ff
	xor  d                                           ; $44fa: $aa
	add  c                                           ; $44fb: $81
	rst  $38                                         ; $44fc: $ff
	rlca                                             ; $44fd: $07
	ld   de, $44ff                                   ; $44fe: $11 $ff $44
	rst  $38                                         ; $4501: $ff
	pop  de                                          ; $4502: $d1
	rst  $38                                         ; $4503: $ff
	ld   a, [bc]                                     ; $4504: $0a
	adc  [hl]                                        ; $4505: $8e
	add  b                                           ; $4506: $80
	nop                                              ; $4507: $00
	inc  b                                           ; $4508: $04

jr_08e_4509:
	rst  $20                                         ; $4509: $e7
	nop                                              ; $450a: $00
	rlca                                             ; $450b: $07
	ld   b, $07                                      ; $450c: $06 $07
	add  a                                           ; $450e: $87
	inc  b                                           ; $450f: $04
	ld   [bc], a                                     ; $4510: $02
	dec  b                                           ; $4511: $05
	nop                                              ; $4512: $00
	and  $80                                         ; $4513: $e6 $80
	reti                                             ; $4515: $d9


	ld   bc, $4659                                   ; $4516: $01 $59 $46
	add  c                                           ; $4519: $81
	add  [hl]                                        ; $451a: $86
	add  d                                           ; $451b: $82
	sbc  c                                           ; $451c: $99
	add  b                                           ; $451d: $80
	add  [hl]                                        ; $451e: $86
	ld   [bc], a                                     ; $451f: $02
	sbc  a                                           ; $4520: $9f
	nop                                              ; $4521: $00
	inc  c                                           ; $4522: $0c
	add  c                                           ; $4523: $81
	or   e                                           ; $4524: $b3
	add  d                                           ; $4525: $82
	inc  c                                           ; $4526: $0c
	add  d                                           ; $4527: $82
	or   e                                           ; $4528: $b3
	add  b                                           ; $4529: $80
	inc  c                                           ; $452a: $0c
	nop                                              ; $452b: $00
	cp   a                                           ; $452c: $bf
	add  b                                           ; $452d: $80
	nop                                              ; $452e: $00
	ld   bc, $073f                                   ; $452f: $01 $3f $07
	add  c                                           ; $4532: $81
	ccf                                              ; $4533: $3f
	ld   [bc], a                                     ; $4534: $02
	nop                                              ; $4535: $00
	rlca                                             ; $4536: $07
	jr   c, jr_08e_44bc                              ; $4537: $38 $83

	ccf                                              ; $4539: $3f
	ld   [bc], a                                     ; $453a: $02
	nop                                              ; $453b: $00
	rlca                                             ; $453c: $07
	nop                                              ; $453d: $00
	add  e                                           ; $453e: $83
	db   $fc                                         ; $453f: $fc
	ld   [bc], a                                     ; $4540: $02
	nop                                              ; $4541: $00
	db   $fc                                         ; $4542: $fc
	nop                                              ; $4543: $00
	add  e                                           ; $4544: $83
	db   $fc                                         ; $4545: $fc
	ld   [bc], a                                     ; $4546: $02
	nop                                              ; $4547: $00
	db   $fc                                         ; $4548: $fc
	nop                                              ; $4549: $00
	add  d                                           ; $454a: $82
	rst  $38                                         ; $454b: $ff
	inc  b                                           ; $454c: $04
	jp   $38fb                                       ; $454d: $c3 $fb $38


	ld   a, [hl]                                     ; $4550: $7e
	ld   b, [hl]                                     ; $4551: $46
	add  b                                           ; $4552: $80
	rst  $38                                         ; $4553: $ff
	inc  b                                           ; $4554: $04
	rst  ToBoot                                         ; $4555: $c7
	cp   l                                           ; $4556: $bd
	add  c                                           ; $4557: $81
	cp   l                                           ; $4558: $bd
	ld   a, a                                        ; $4559: $7f
	add  c                                           ; $455a: $81
	ld   sp, hl                                      ; $455b: $f9
	rlca                                             ; $455c: $07
	add  hl, de                                      ; $455d: $19
	jr   jr_08e_4560                                 ; $455e: $18 $00

jr_08e_4560:
	db   $10                                         ; $4560: $10
	sub  b                                           ; $4561: $90
	ld   [hl], c                                     ; $4562: $71
	ld   bc, $80f1                                   ; $4563: $01 $f1 $80
	ld   bc, $f180                                   ; $4566: $01 $80 $f1
	ld   [bc], a                                     ; $4569: $02
	inc  b                                           ; $456a: $04
	ld   l, a                                        ; $456b: $6f
	ld   l, [hl]                                     ; $456c: $6e
	add  b                                           ; $456d: $80
	ld   l, a                                        ; $456e: $6f
	ld   bc, $5557                                   ; $456f: $01 $57 $55
	add  b                                           ; $4572: $80
	ei                                               ; $4573: $fb
	ld   de, $fe8f                                   ; $4574: $11 $8f $fe
	ld   a, d                                        ; $4577: $7a
	ld   a, [bc]                                     ; $4578: $0a
	ld   a, d                                        ; $4579: $7a
	ld   [bc], a                                     ; $457a: $02
	ld   a, d                                        ; $457b: $7a
	db   $fc                                         ; $457c: $fc
	di                                               ; $457d: $f3
	jr   nz, @-$0d                                   ; $457e: $20 $f1

	ret  nc                                          ; $4580: $d0

	ld   h, c                                        ; $4581: $61
	pop  hl                                          ; $4582: $e1
	sub  c                                           ; $4583: $91
	jr   nc, jr_08e_4509                             ; $4584: $30 $83

	and  e                                           ; $4586: $a3
	add  b                                           ; $4587: $80
	ld   [bc], a                                     ; $4588: $02
	add  b                                           ; $4589: $80
	sub  d                                           ; $458a: $92
	inc  de                                          ; $458b: $13
	ld   h, d                                        ; $458c: $62
	sub  c                                           ; $458d: $91
	rst  $38                                         ; $458e: $ff
	ld   [bc], a                                     ; $458f: $02
	ld   d, a                                        ; $4590: $57
	rlca                                             ; $4591: $07

jr_08e_4592:
	ld   d, [hl]                                     ; $4592: $56
	ld   b, $f7                                      ; $4593: $06 $f7
	or   $1d                                         ; $4595: $f6 $1d
	db   $fd                                         ; $4597: $fd
	push af                                          ; $4598: $f5
	dec  d                                           ; $4599: $15
	push af                                          ; $459a: $f5
	inc  b                                           ; $459b: $04
	push af                                          ; $459c: $f5
	ld   a, e                                        ; $459d: $7b
	ldh  [$83], a                                    ; $459e: $e0 $83
	add  b                                           ; $45a0: $80
	ld   h, e                                        ; $45a1: $63
	add  b                                           ; $45a2: $80
	inc  hl                                          ; $45a3: $23
	add  b                                           ; $45a4: $80
	ld   b, e                                        ; $45a5: $43
	add  b                                           ; $45a6: $80
	and  e                                           ; $45a7: $a3
	add  b                                           ; $45a8: $80
	inc  bc                                          ; $45a9: $03
	add  b                                           ; $45aa: $80
	and  e                                           ; $45ab: $a3
	inc  bc                                          ; $45ac: $03
	db   $e3                                         ; $45ad: $e3
	or   $04                                         ; $45ae: $f6 $04
	push af                                          ; $45b0: $f5
	adc  b                                           ; $45b1: $88
	db   $f4                                         ; $45b2: $f4
	add  b                                           ; $45b3: $80
	or   h                                           ; $45b4: $b4
	ld   bc, $1014                                   ; $45b5: $01 $14 $10
	add  l                                           ; $45b8: $85
	nop                                              ; $45b9: $00
	add  [hl]                                        ; $45ba: $86
	ld   bc, $0080                                   ; $45bb: $01 $80 $00
	add  b                                           ; $45be: $80
	ccf                                              ; $45bf: $3f
	add  b                                           ; $45c0: $80
	ld   a, a                                        ; $45c1: $7f
	nop                                              ; $45c2: $00
	ld   h, [hl]                                     ; $45c3: $66
	add  e                                           ; $45c4: $83
	nop                                              ; $45c5: $00
	nop                                              ; $45c6: $00
	ld   h, [hl]                                     ; $45c7: $66
	add  e                                           ; $45c8: $83
	nop                                              ; $45c9: $00
	add  d                                           ; $45ca: $82
	rst  $38                                         ; $45cb: $ff
	nop                                              ; $45cc: $00
	ld   h, [hl]                                     ; $45cd: $66
	add  e                                           ; $45ce: $83
	nop                                              ; $45cf: $00
	nop                                              ; $45d0: $00
	ld   h, [hl]                                     ; $45d1: $66
	add  e                                           ; $45d2: $83
	nop                                              ; $45d3: $00
	add  d                                           ; $45d4: $82
	add  h                                           ; $45d5: $84
	nop                                              ; $45d6: $00
	ld   h, h                                        ; $45d7: $64
	add  e                                           ; $45d8: $83
	inc  b                                           ; $45d9: $04
	nop                                              ; $45da: $00
	ld   h, h                                        ; $45db: $64
	add  c                                           ; $45dc: $81
	inc  b                                           ; $45dd: $04
	inc  bc                                          ; $45de: $03
	ld   bc, $e5e0                                   ; $45df: $01 $e0 $e5
	db   $e4                                         ; $45e2: $e4
	add  b                                           ; $45e3: $80
	ldh  [rP1], a                                    ; $45e4: $e0 $00
	rst  $20                                         ; $45e6: $e7
	add  l                                           ; $45e7: $85
	ldh  [$80], a                                    ; $45e8: $e0 $80
	rst  $20                                         ; $45ea: $e7
	ld   bc, $bf67                                   ; $45eb: $01 $67 $bf
	add  c                                           ; $45ee: $81
	ccf                                              ; $45ef: $3f
	nop                                              ; $45f0: $00
	inc  bc                                          ; $45f1: $03
	add  d                                           ; $45f2: $82
	ret  z                                           ; $45f3: $c8

	ld   [bc], a                                     ; $45f4: $02
	set  1, b                                        ; $45f5: $cb $c8
	res  0, c                                        ; $45f7: $cb $81
	ret  z                                           ; $45f9: $c8

	nop                                              ; $45fa: $00
	inc  bc                                          ; $45fb: $03
	add  e                                           ; $45fc: $83
	rst  JumpTable                                         ; $45fd: $df
	add  d                                           ; $45fe: $82
	inc  bc                                          ; $45ff: $03
	ld   [bc], a                                     ; $4600: $02
	jp   $c303                                       ; $4601: $c3 $03 $c3


	add  c                                           ; $4604: $81
	inc  bc                                          ; $4605: $03
	nop                                              ; $4606: $00
	rst  $20                                         ; $4607: $e7
	add  e                                           ; $4608: $83
	ccf                                              ; $4609: $3f
	ld   [bc], a                                     ; $460a: $02
	nop                                              ; $460b: $00
	rlca                                             ; $460c: $07
	jr   c, jr_08e_4592                              ; $460d: $38 $83

	ccf                                              ; $460f: $3f
	ld   [bc], a                                     ; $4610: $02
	nop                                              ; $4611: $00
	rlca                                             ; $4612: $07
	nop                                              ; $4613: $00
	add  e                                           ; $4614: $83
	db   $fc                                         ; $4615: $fc
	ld   [bc], a                                     ; $4616: $02
	nop                                              ; $4617: $00
	db   $fc                                         ; $4618: $fc
	nop                                              ; $4619: $00
	add  e                                           ; $461a: $83
	db   $fc                                         ; $461b: $fc
	ld   [bc], a                                     ; $461c: $02
	nop                                              ; $461d: $00
	db   $fc                                         ; $461e: $fc
	add  c                                           ; $461f: $81
	add  a                                           ; $4620: $87
	ld   a, a                                        ; $4621: $7f
	add  b                                           ; $4622: $80
	ld   a, l                                        ; $4623: $7d
	add  c                                           ; $4624: $81
	ld   bc, $ff02                                   ; $4625: $01 $02 $ff
	ld   l, c                                        ; $4628: $69
	sub  c                                           ; $4629: $91
	add  b                                           ; $462a: $80
	pop  af                                          ; $462b: $f1
	add  b                                           ; $462c: $80
	sub  c                                           ; $462d: $91
	ld   bc, $01f9                                   ; $462e: $01 $f9 $01
	add  b                                           ; $4631: $80
	ld   sp, hl                                      ; $4632: $f9
	ld   b, $61                                      ; $4633: $06 $61
	add  hl, de                                      ; $4635: $19
	ld   bc, $5011                                   ; $4636: $01 $11 $50
	ld   [hl], c                                     ; $4639: $71
	or   a                                           ; $463a: $b7
	add  a                                           ; $463b: $87
	ld   [bc], a                                     ; $463c: $02
	add  b                                           ; $463d: $80
	ld   b, $80                                      ; $463e: $06 $80
	cp   $02                                         ; $4640: $fe $02
	ld   d, d                                        ; $4642: $52
	db   $fc                                         ; $4643: $fc
	and  c                                           ; $4644: $a1
	add  c                                           ; $4645: $81
	sub  d                                           ; $4646: $92
	inc  bc                                          ; $4647: $03
	ldh  a, [c]                                      ; $4648: $f2
	ld   h, d                                        ; $4649: $62
	ldh  a, [c]                                      ; $464a: $f2
	ld   [bc], a                                     ; $464b: $02
	add  b                                           ; $464c: $80
	ldh  a, [c]                                      ; $464d: $f2
	ld   b, $b2                                      ; $464e: $06 $b2
	ldh  a, [c]                                      ; $4650: $f2
	jp   $f0f3                                       ; $4651: $c3 $f3 $f0


	di                                               ; $4654: $f3
	adc  [hl]                                        ; $4655: $8e
	add  a                                           ; $4656: $87
	inc  b                                           ; $4657: $04
	add  b                                           ; $4658: $80
	dec  c                                           ; $4659: $0d
	add  b                                           ; $465a: $80
	db   $fd                                         ; $465b: $fd
	dec  b                                           ; $465c: $05
	and  l                                           ; $465d: $a5
	ld   sp, hl                                      ; $465e: $f9
	rst  $20                                         ; $465f: $e7
	and  c                                           ; $4660: $a1
	and  b                                           ; $4661: $a0
	and  c                                           ; $4662: $a1
	add  b                                           ; $4663: $80
	ld   b, $03                                      ; $4664: $06 $03
	db   $e4                                         ; $4666: $e4
	ld   [bc], a                                     ; $4667: $02
	ld   bc, $8007                                   ; $4668: $01 $07 $80
	push hl                                          ; $466b: $e5
	ld   bc, $e7e3                                   ; $466c: $01 $e3 $e7
	add  b                                           ; $466f: $80
	db   $e3                                         ; $4670: $e3

jr_08e_4671:
	inc  bc                                          ; $4671: $03
	inc  bc                                          ; $4672: $03
	call nc, Call_08e_7454                           ; $4673: $d4 $54 $74
	add  b                                           ; $4676: $80
	db   $e4                                         ; $4677: $e4
	add  b                                           ; $4678: $80
	call nz, Call_08e_7503                           ; $4679: $c4 $03 $75
	ld   h, h                                        ; $467c: $64
	db   $f4                                         ; $467d: $f4
	db   $e4                                         ; $467e: $e4
	add  b                                           ; $467f: $80
	db   $f4                                         ; $4680: $f4
	ld   [bc], a                                     ; $4681: $02
	or   l                                           ; $4682: $b5
	and  h                                           ; $4683: $a4
	ldh  [$80], a                                    ; $4684: $e0 $80
	rrca                                             ; $4686: $0f
	add  b                                           ; $4687: $80
	jr   nc, jr_08e_468e                             ; $4688: $30 $04

	ld   b, b                                        ; $468a: $40
	ld   b, c                                        ; $468b: $41
	add  c                                           ; $468c: $81
	add  e                                           ; $468d: $83

jr_08e_468e:
	inc  bc                                          ; $468e: $03
	add  b                                           ; $468f: $80
	ld   b, $80                                      ; $4690: $06 $80
	ld   c, $80                                      ; $4692: $0e $80
	ld   e, $00                                      ; $4694: $1e $00
	nop                                              ; $4696: $00
	add  b                                           ; $4697: $80
	rst  $38                                         ; $4698: $ff
	add  c                                           ; $4699: $81
	nop                                              ; $469a: $00
	add  b                                           ; $469b: $80
	rst  $38                                         ; $469c: $ff
	ld   bc, $7b8c                                   ; $469d: $01 $8c $7b
	add  h                                           ; $46a0: $84
	nop                                              ; $46a1: $00
	nop                                              ; $46a2: $00
	rst  $30                                         ; $46a3: $f7
	add  b                                           ; $46a4: $80
	rst  $38                                         ; $46a5: $ff
	add  c                                           ; $46a6: $81
	nop                                              ; $46a7: $00
	add  b                                           ; $46a8: $80
	rst  $38                                         ; $46a9: $ff
	ld   bc, $de63                                   ; $46aa: $01 $63 $de
	add  h                                           ; $46ad: $84
	nop                                              ; $46ae: $00
	nop                                              ; $46af: $00
	cp   l                                           ; $46b0: $bd
	add  b                                           ; $46b1: $80
	rst  $38                                         ; $46b2: $ff
	add  c                                           ; $46b3: $81
	nop                                              ; $46b4: $00
	add  b                                           ; $46b5: $80
	rst  $38                                         ; $46b6: $ff
	ld   bc, $ee0e                                   ; $46b7: $01 $0e $ee
	add  h                                           ; $46ba: $84
	ld   c, $82                                      ; $46bb: $0e $82
	nop                                              ; $46bd: $00
	add  b                                           ; $46be: $80
	rlca                                             ; $46bf: $07
	add  e                                           ; $46c0: $83
	nop                                              ; $46c1: $00
	add  b                                           ; $46c2: $80
	rlca                                             ; $46c3: $07
	inc  bc                                          ; $46c4: $03
	inc  b                                           ; $46c5: $04
	dec  b                                           ; $46c6: $05
	nop                                              ; $46c7: $00
	ld   [$0881], a                                  ; $46c8: $ea $81 $08
	add  b                                           ; $46cb: $80
	ld   hl, sp+$00                                  ; $46cc: $f8 $00
	inc  bc                                          ; $46ce: $03
	add  c                                           ; $46cf: $81
	nop                                              ; $46d0: $00
	add  b                                           ; $46d1: $80
	rst  $38                                         ; $46d2: $ff
	add  b                                           ; $46d3: $80
	rra                                              ; $46d4: $1f
	add  b                                           ; $46d5: $80
	rst  ToBoot                                         ; $46d6: $c7
	nop                                              ; $46d7: $00
	call c, $0383                                    ; $46d8: $dc $83 $03
	nop                                              ; $46db: $00
	rst  JumpTable                                         ; $46dc: $df
	add  c                                           ; $46dd: $81
	nop                                              ; $46de: $00
	add  b                                           ; $46df: $80
	rst  $38                                         ; $46e0: $ff
	inc  b                                           ; $46e1: $04
	ld   a, [$a0f0]                                  ; $46e2: $fa $f0 $a0
	add  b                                           ; $46e5: $80
	ld   [de], a                                     ; $46e6: $12
	add  e                                           ; $46e7: $83
	ccf                                              ; $46e8: $3f
	ld   [bc], a                                     ; $46e9: $02
	nop                                              ; $46ea: $00
	rlca                                             ; $46eb: $07
	jr   c, jr_08e_4671                              ; $46ec: $38 $83

	ccf                                              ; $46ee: $3f
	ld   [bc], a                                     ; $46ef: $02
	nop                                              ; $46f0: $00
	rlca                                             ; $46f1: $07
	nop                                              ; $46f2: $00
	add  e                                           ; $46f3: $83
	db   $fc                                         ; $46f4: $fc
	ld   [bc], a                                     ; $46f5: $02
	nop                                              ; $46f6: $00
	db   $fc                                         ; $46f7: $fc
	nop                                              ; $46f8: $00
	add  e                                           ; $46f9: $83
	db   $fc                                         ; $46fa: $fc
	ld   [bc], a                                     ; $46fb: $02
	nop                                              ; $46fc: $00
	db   $fc                                         ; $46fd: $fc
	cp   $81                                         ; $46fe: $fe $81
	ld   d, h                                        ; $4700: $54
	ld   bc, $7fd5                                   ; $4701: $01 $d5 $7f
	add  d                                           ; $4704: $82
	nop                                              ; $4705: $00
	nop                                              ; $4706: $00
	ret  nc                                          ; $4707: $d0

	add  e                                           ; $4708: $83
	rst  $20                                         ; $4709: $e7
	ld   bc, $400e                                   ; $470a: $01 $0e $40
	add  b                                           ; $470d: $80
	ld   a, b                                        ; $470e: $78
	ld   bc, $6019                                   ; $470f: $01 $19 $60
	add  b                                           ; $4712: $80
	nop                                              ; $4713: $00
	inc  bc                                          ; $4714: $03
	ld   e, $00                                      ; $4715: $1e $00
	adc  [hl]                                        ; $4717: $8e
	ld   l, $82                                      ; $4718: $2e $82
	ld   l, [hl]                                     ; $471a: $6e
	ld   bc, $a440                                   ; $471b: $01 $40 $a4
	add  b                                           ; $471e: $80
	nop                                              ; $471f: $00
	ld   bc, $ffa5                                   ; $4720: $01 $a5 $ff
	add  d                                           ; $4723: $82
	nop                                              ; $4724: $00
	nop                                              ; $4725: $00
	and  c                                           ; $4726: $a1
	add  e                                           ; $4727: $83
	adc  $01                                         ; $4728: $ce $01
	db   $ec                                         ; $472a: $ec
	pop  af                                          ; $472b: $f1
	add  b                                           ; $472c: $80
	ldh  a, [rSB]                                    ; $472d: $f0 $01
	or   e                                           ; $472f: $b3
	pop  bc                                          ; $4730: $c1
	add  b                                           ; $4731: $80
	nop                                              ; $4732: $00
	inc  bc                                          ; $4733: $03
	inc  a                                           ; $4734: $3c
	nop                                              ; $4735: $00
	dec  e                                           ; $4736: $1d
	ld   e, l                                        ; $4737: $5d
	add  d                                           ; $4738: $82
	db   $dd                                         ; $4739: $dd
	ld   bc, $4981                                   ; $473a: $01 $81 $49
	add  b                                           ; $473d: $80
	ld   bc, $4b01                                   ; $473e: $01 $01 $4b
	rst  $38                                         ; $4741: $ff
	add  d                                           ; $4742: $82
	nop                                              ; $4743: $00
	ld   bc, $9c42                                   ; $4744: $01 $42 $9c
	add  d                                           ; $4747: $82
	sbc  l                                           ; $4748: $9d
	ld   bc, $e43a                                   ; $4749: $01 $3a $e4
	add  b                                           ; $474c: $80
	and  $80                                         ; $474d: $e6 $80
	ret  nz                                          ; $474f: $c0

	add  b                                           ; $4750: $80
	nop                                              ; $4751: $00
	ld   [bc], a                                     ; $4752: $02
	inc  a                                           ; $4753: $3c
	nop                                              ; $4754: $00
	inc  e                                           ; $4755: $1c
	add  e                                           ; $4756: $83
	call c, $e805                                    ; $4757: $dc $05 $e8
	call nz, $c4d4                                   ; $475a: $c4 $d4 $c4
	ld   b, h                                        ; $475d: $44
	ld   h, h                                        ; $475e: $64
	add  b                                           ; $475f: $80
	and  h                                           ; $4760: $a4
	nop                                              ; $4761: $00
	db   $e4                                         ; $4762: $e4
	add  b                                           ; $4763: $80
	add  h                                           ; $4764: $84
	add  d                                           ; $4765: $82
	inc  b                                           ; $4766: $04
	inc  b                                           ; $4767: $04
	ld   [hl], h                                     ; $4768: $74
	ld   c, [hl]                                     ; $4769: $4e
	ccf                                              ; $476a: $3f
	ld   sp, $842e                                   ; $476b: $31 $2e $84
	jr   nz, @+$05                                   ; $476e: $20 $03

	ld   a, $21                                      ; $4770: $3e $21
	ld   sp, $802e                                   ; $4772: $31 $2e $80
	jr   nz, jr_08e_477a                             ; $4775: $20 $03

	ld   e, $08                                      ; $4777: $1e $08
	adc  h                                           ; $4779: $8c

jr_08e_477a:
	ld   [hl], e                                     ; $477a: $73
	add  h                                           ; $477b: $84
	nop                                              ; $477c: $00
	add  hl, bc                                      ; $477d: $09
	rst  $30                                         ; $477e: $f7
	ld   [$7388], sp                                 ; $477f: $08 $88 $73
	inc  de                                          ; $4782: $13
	nop                                              ; $4783: $00

jr_08e_4784:
	ldh  [rSCY], a                                   ; $4784: $e0 $42
	ld   h, e                                        ; $4786: $63
	sbc  h                                           ; $4787: $9c
	add  h                                           ; $4788: $84
	nop                                              ; $4789: $00
	ld   [bc], a                                     ; $478a: $02
	cp   l                                           ; $478b: $bd
	ld   b, d                                        ; $478c: $42
	ld   b, e                                        ; $478d: $43
	add  b                                           ; $478e: $80
	sbc  h                                           ; $478f: $9c
	inc  b                                           ; $4790: $04
	nop                                              ; $4791: $00
	rrca                                             ; $4792: $0f
	rra                                              ; $4793: $1f
	ld   c, $ff                                      ; $4794: $0e $ff
	add  h                                           ; $4796: $84
	ld   c, $03                                      ; $4797: $0e $03
	xor  $1f                                         ; $4799: $ee $1f
	ld   c, $ff                                      ; $479b: $0e $ff
	add  b                                           ; $479d: $80
	ld   c, $0b                                      ; $479e: $0e $0b
	rlca                                             ; $47a0: $07
	inc  bc                                          ; $47a1: $03
	nop                                              ; $47a2: $00
	inc  b                                           ; $47a3: $04
	ld   bc, $0700                                   ; $47a4: $01 $00 $07
	ld   bc, $0100                                   ; $47a7: $01 $00 $01
	nop                                              ; $47aa: $00
	ld   bc, $0082                                   ; $47ab: $01 $82 $00
	inc  de                                          ; $47ae: $13
	ld   a, [bc]                                     ; $47af: $0a
	db   $fd                                         ; $47b0: $fd
	inc  c                                           ; $47b1: $0c
	rra                                              ; $47b2: $1f
	rst  ToBoot                                         ; $47b3: $c7
	rlca                                             ; $47b4: $07
	rst  $28                                         ; $47b5: $ef
	rst  $30                                         ; $47b6: $f7
	inc  [hl]                                        ; $47b7: $34
	db   $f4                                         ; $47b8: $f4
	ld   d, $f5                                      ; $47b9: $16 $f5
	inc  b                                           ; $47bb: $04
	dec  b                                           ; $47bc: $05
	inc  b                                           ; $47bd: $04
	dec  b                                           ; $47be: $05
	rla                                              ; $47bf: $17
	push bc                                          ; $47c0: $c5
	dec  hl                                          ; $47c1: $2b
	add  c                                           ; $47c2: $81
	add  b                                           ; $47c3: $80
	rst  $38                                         ; $47c4: $ff
	ld   [bc], a                                     ; $47c5: $02
	add  b                                           ; $47c6: $80
	rst  $38                                         ; $47c7: $ff
	nop                                              ; $47c8: $00
	add  b                                           ; $47c9: $80
	ld   c, $05                                      ; $47ca: $0e $05
	pop  af                                          ; $47cc: $f1
	sub  a                                           ; $47cd: $97
	ld   [hl], a                                     ; $47ce: $77
	rla                                              ; $47cf: $17
	rst  $30                                         ; $47d0: $f7
	ld   [hl], $83                                   ; $47d1: $36 $83
	ccf                                              ; $47d3: $3f
	ld   [bc], a                                     ; $47d4: $02
	nop                                              ; $47d5: $00
	rlca                                             ; $47d6: $07
	jr   c, @-$7b                                    ; $47d7: $38 $83

	ccf                                              ; $47d9: $3f
	ld   [bc], a                                     ; $47da: $02
	nop                                              ; $47db: $00
	rlca                                             ; $47dc: $07
	nop                                              ; $47dd: $00
	add  e                                           ; $47de: $83
	db   $fc                                         ; $47df: $fc
	ld   [bc], a                                     ; $47e0: $02
	nop                                              ; $47e1: $00
	db   $fc                                         ; $47e2: $fc
	nop                                              ; $47e3: $00
	add  e                                           ; $47e4: $83
	db   $fc                                         ; $47e5: $fc
	inc  b                                           ; $47e6: $04
	nop                                              ; $47e7: $00
	db   $fc                                         ; $47e8: $fc
	pop  de                                          ; $47e9: $d1
	pop  hl                                          ; $47ea: $e1
	rst  $28                                         ; $47eb: $ef
	add  b                                           ; $47ec: $80
	ldh  [rSC], a                                    ; $47ed: $e0 $02
	rst  $38                                         ; $47ef: $ff
	ldh  [rIE], a                                    ; $47f0: $e0 $ff
	add  b                                           ; $47f2: $80
	ret  nz                                          ; $47f3: $c0

	add  e                                           ; $47f4: $83
	rst  $38                                         ; $47f5: $ff
	ld   bc, $d0c0                                   ; $47f6: $01 $c0 $d0
	add  d                                           ; $47f9: $82
	ld   l, [hl]                                     ; $47fa: $6e
	ld   [bc], a                                     ; $47fb: $02
	xor  $2e                                         ; $47fc: $ee $2e
	xor  $80                                         ; $47fe: $ee $80
	jr   nz, jr_08e_4784                             ; $4800: $20 $82

	xor  $04                                         ; $4802: $ee $04
	cp   $00                                         ; $4804: $fe $00
	and  e                                           ; $4806: $a3
	jp   nz, $80de                                   ; $4807: $c2 $de $80

	ret  nz                                          ; $480a: $c0

	ld   [bc], a                                     ; $480b: $02
	rst  $38                                         ; $480c: $ff
	ret  nz                                          ; $480d: $c0

	rst  $38                                         ; $480e: $ff
	add  b                                           ; $480f: $80
	add  b                                           ; $4810: $80
	add  d                                           ; $4811: $82
	rst  $38                                         ; $4812: $ff
	ld   [bc], a                                     ; $4813: $02
	ld   a, a                                        ; $4814: $7f
	nop                                              ; $4815: $00
	and  c                                           ; $4816: $a1
	add  e                                           ; $4817: $83
	db   $dd                                         ; $4818: $dd
	ld   bc, $dd5d                                   ; $4819: $01 $5d $dd
	add  b                                           ; $481c: $80
	ld   b, c                                        ; $481d: $41
	add  d                                           ; $481e: $82
	db   $dd                                         ; $481f: $dd
	inc  b                                           ; $4820: $04
	db   $fc                                         ; $4821: $fc
	nop                                              ; $4822: $00
	ld   b, a                                        ; $4823: $47
	add  l                                           ; $4824: $85
	cp   l                                           ; $4825: $bd
	add  b                                           ; $4826: $80
	add  c                                           ; $4827: $81
	ld   [bc], a                                     ; $4828: $02
	rst  $38                                         ; $4829: $ff
	add  b                                           ; $482a: $80
	rst  $38                                         ; $482b: $ff
	add  b                                           ; $482c: $80
	nop                                              ; $482d: $00
	add  e                                           ; $482e: $83
	rst  $38                                         ; $482f: $ff
	ld   bc, $2000                                   ; $4830: $01 $00 $20
	add  l                                           ; $4833: $85
	call c, Call_08e_4080                            ; $4834: $dc $80 $40
	add  d                                           ; $4837: $82
	call c, $fc00                                    ; $4838: $dc $00 $fc
	add  b                                           ; $483b: $80
	nop                                              ; $483c: $00
	add  d                                           ; $483d: $82
	ld   [hl], b                                     ; $483e: $70
	add  c                                           ; $483f: $81
	ld   h, b                                        ; $4840: $60
	add  l                                           ; $4841: $85
	ld   a, a                                        ; $4842: $7f
	ld   bc, $deff                                   ; $4843: $01 $ff $de
	add  c                                           ; $4846: $81
	jr   nz, @+$05                                   ; $4847: $20 $03

	ld   a, $21                                      ; $4849: $3e $21
	ld   sp, $802e                                   ; $484b: $31 $2e $80
	jr   nz, jr_08e_4855                             ; $484e: $20 $05

	ld   [hl+], a                                    ; $4850: $22
	jr   nz, @+$1e                                   ; $4851: $20 $1c

	inc  bc                                          ; $4853: $03
	ld   [bc], a                                     ; $4854: $02

jr_08e_4855:
	ld   bc, $8080                                   ; $4855: $01 $80 $80
	dec  c                                           ; $4858: $0d
	dec  de                                          ; $4859: $1b
	dec  b                                           ; $485a: $05
	ld   [hl], c                                     ; $485b: $71
	add  hl, de                                      ; $485c: $19
	add  $7f                                         ; $485d: $c6 $7f
	rrca                                             ; $485f: $0f
	ld   a, a                                        ; $4860: $7f
	cp   a                                           ; $4861: $bf
	nop                                              ; $4862: $00
	cp   a                                           ; $4863: $bf
	ld   h, b                                        ; $4864: $60
	jr   nz, @+$01                                   ; $4865: $20 $ff

	add  b                                           ; $4867: $80
	nop                                              ; $4868: $00
	ld   a, [de]                                     ; $4869: $1a
	db   $ec                                         ; $486a: $ec
	ld   d, b                                        ; $486b: $50
	rst  ToBoot                                         ; $486c: $c7
	call z, $ffb1                                    ; $486d: $cc $b1 $ff
	ld   hl, sp-$01                                  ; $4870: $f8 $ff
	cp   $00                                         ; $4872: $fe $00
	ei                                               ; $4874: $fb
	ld   b, $82                                      ; $4875: $06 $82
	ld   a, a                                        ; $4877: $7f
	xor  $0e                                         ; $4878: $ee $0e
	adc  [hl]                                        ; $487a: $8e
	ld   c, $6e                                      ; $487b: $0e $6e
	rra                                              ; $487d: $1f
	ld   c, $be                                      ; $487e: $0e $be
	adc  a                                           ; $4880: $8f
	adc  [hl]                                        ; $4881: $8e
	xor  [hl]                                        ; $4882: $ae
	ld   c, $00                                      ; $4883: $0e $00
	add  b                                           ; $4885: $80
	ret  nz                                          ; $4886: $c0

	ld   bc, $e700                                   ; $4887: $01 $00 $e7
	add  e                                           ; $488a: $83
	nop                                              ; $488b: $00
	add  b                                           ; $488c: $80
	inc  b                                           ; $488d: $04
	ld   [bc], a                                     ; $488e: $02
	inc  bc                                          ; $488f: $03
	rlca                                             ; $4890: $07
	inc  b                                           ; $4891: $04
	add  c                                           ; $4892: $81
	ld   [bc], a                                     ; $4893: $02
	inc  c                                           ; $4894: $0c
	push hl                                          ; $4895: $e5
	nop                                              ; $4896: $00
	db   $fc                                         ; $4897: $fc
	dec  b                                           ; $4898: $05
	inc  b                                           ; $4899: $04
	dec  b                                           ; $489a: $05
	inc  b                                           ; $489b: $04
	dec  b                                           ; $489c: $05
	dec  c                                           ; $489d: $0d
	inc  c                                           ; $489e: $0c
	dec  l                                           ; $489f: $2d
	rst  $38                                         ; $48a0: $ff
	sub  $81                                         ; $48a1: $d6 $81
	sub  a                                           ; $48a3: $97
	add  hl, bc                                      ; $48a4: $09
	ld   l, e                                        ; $48a5: $6b
	nop                                              ; $48a6: $00
	sbc  c                                           ; $48a7: $99
	ld   [hl], a                                     ; $48a8: $77
	rla                                              ; $48a9: $17
	rst  $30                                         ; $48aa: $f7
	sub  a                                           ; $48ab: $97
	ld   [hl], a                                     ; $48ac: $77
	pop  af                                          ; $48ad: $f1
	rra                                              ; $48ae: $1f
	add  b                                           ; $48af: $80

jr_08e_48b0:
	ldh  [rSC], a                                    ; $48b0: $e0 $02
	ld   [de], a                                     ; $48b2: $12
	or   $e4                                         ; $48b3: $f6 $e4
	add  b                                           ; $48b5: $80
	rst  $38                                         ; $48b6: $ff
	ld   bc, $3800                                   ; $48b7: $01 $00 $38
	add  e                                           ; $48ba: $83
	ccf                                              ; $48bb: $3f
	ld   [bc], a                                     ; $48bc: $02
	nop                                              ; $48bd: $00
	rlca                                             ; $48be: $07
	jr   c, @-$7b                                    ; $48bf: $38 $83

	ccf                                              ; $48c1: $3f
	ld   [bc], a                                     ; $48c2: $02
	nop                                              ; $48c3: $00
	rlca                                             ; $48c4: $07
	nop                                              ; $48c5: $00
	add  e                                           ; $48c6: $83
	db   $fc                                         ; $48c7: $fc
	ld   [bc], a                                     ; $48c8: $02
	nop                                              ; $48c9: $00
	db   $fc                                         ; $48ca: $fc
	nop                                              ; $48cb: $00
	add  e                                           ; $48cc: $83
	db   $fc                                         ; $48cd: $fc
	ld   [bc], a                                     ; $48ce: $02
	nop                                              ; $48cf: $00
	db   $fc                                         ; $48d0: $fc
	ccf                                              ; $48d1: $3f
	add  b                                           ; $48d2: $80
	ld   a, [hl-]                                    ; $48d3: $3a
	rra                                              ; $48d4: $1f
	ld   a, $3f                                      ; $48d5: $3e $3f
	add  hl, sp                                      ; $48d7: $39
	jr   c, jr_08e_4916                              ; $48d8: $38 $3c

	dec  a                                           ; $48da: $3d
	dec  [hl]                                        ; $48db: $35
	ld   sp, $3a3d                                   ; $48dc: $31 $3d $3a
	ld   [hl+], a                                    ; $48df: $22
	rra                                              ; $48e0: $1f
	nop                                              ; $48e1: $00
	cp   $4e                                         ; $48e2: $fe $4e
	rst  JumpTable                                         ; $48e4: $df
	sbc  a                                           ; $48e5: $9f
	adc  l                                           ; $48e6: $8d
	and  l                                           ; $48e7: $a5
	ld   a, l                                        ; $48e8: $7d
	ld   e, l                                        ; $48e9: $5d
	ld   d, l                                        ; $48ea: $55
	ld   c, c                                        ; $48eb: $49
	pop  af                                          ; $48ec: $f1
	push bc                                          ; $48ed: $c5
	call nc, $8480                                   ; $48ee: $d4 $80 $84
	nop                                              ; $48f1: $00
	add  b                                           ; $48f2: $80
	rst  $38                                         ; $48f3: $ff
	ld   [hl], a                                     ; $48f4: $77
	add  b                                           ; $48f5: $80
	push af                                          ; $48f6: $f5
	add  b                                           ; $48f7: $80
	dec  b                                           ; $48f8: $05
	add  e                                           ; $48f9: $83
	ld   [hl], l                                     ; $48fa: $75
	nop                                              ; $48fb: $00
	ld   a, l                                        ; $48fc: $7d
	add  b                                           ; $48fd: $80
	ld   bc, $0010                                   ; $48fe: $01 $10 $00
	db   $fd                                         ; $4901: $fd
	call nc, $e0d6                                   ; $4902: $d4 $d6 $e0
	ld   [$a09a], a                                  ; $4905: $ea $9a $a0
	ldh  a, [$ca]                                    ; $4908: $f0 $ca
	ld   [$bdff], a                                  ; $490a: $ea $ff $bd
	or   l                                           ; $490d: $b5
	db   $10                                         ; $490e: $10
	ld   hl, sp+$00                                  ; $490f: $f8 $00
	add  b                                           ; $4911: $80
	rst  $38                                         ; $4912: $ff
	dec  bc                                          ; $4913: $0b
	ld   a, l                                        ; $4914: $7d
	cp   l                                           ; $4915: $bd

jr_08e_4916:
	ld   b, l                                        ; $4916: $45
	dec  b                                           ; $4917: $05
	push hl                                          ; $4918: $e5
	or   l                                           ; $4919: $b5
	add  l                                           ; $491a: $85
	dec  [hl]                                        ; $491b: $35
	db   $fd                                         ; $491c: $fd
	ld   c, l                                        ; $491d: $4d
	pop  de                                          ; $491e: $d1
	ld   bc, $0080                                   ; $491f: $01 $80 $00
	nop                                              ; $4922: $00
	jr   nz, jr_08e_48b0                             ; $4923: $20 $8b

	call c, $fc03                                    ; $4925: $dc $03 $fc
	nop                                              ; $4928: $00
	ccf                                              ; $4929: $3f
	rst  JumpTable                                         ; $492a: $df
	add  b                                           ; $492b: $80
	ld   e, a                                        ; $492c: $5f
	add  b                                           ; $492d: $80
	cp   a                                           ; $492e: $bf
	add  b                                           ; $492f: $80
	ld   e, a                                        ; $4930: $5f
	add  b                                           ; $4931: $80
	cp   a                                           ; $4932: $bf
	ld   a, [bc]                                     ; $4933: $0a
	rst  $38                                         ; $4934: $ff
	sbc  a                                           ; $4935: $9f
	cp   a                                           ; $4936: $bf
	rra                                              ; $4937: $1f
	cp   a                                           ; $4938: $bf
	ld   e, a                                        ; $4939: $5f
	ret  nz                                          ; $493a: $c0

	ld   bc, $7d42                                   ; $493b: $01 $42 $7d
	ld   a, h                                        ; $493e: $7c
	add  b                                           ; $493f: $80
	ld   l, l                                        ; $4940: $6d
	ld   bc, $7d45                                   ; $4941: $01 $45 $7d
	add  c                                           ; $4944: $81
	ld   b, l                                        ; $4945: $45
	add  b                                           ; $4946: $80
	ld   l, l                                        ; $4947: $6d
	add  b                                           ; $4948: $80
	ld   a, l                                        ; $4949: $7d
	dec  b                                           ; $494a: $05
	ld   a, a                                        ; $494b: $7f
	rst  $38                                         ; $494c: $ff
	nop                                              ; $494d: $00
	cp   a                                           ; $494e: $bf
	ld   hl, $84a1                                   ; $494f: $21 $a1 $84
	xor  a                                           ; $4952: $af
	add  b                                           ; $4953: $80
	cp   a                                           ; $4954: $bf
	dec  b                                           ; $4955: $05
	and  c                                           ; $4956: $a1
	and  b                                           ; $4957: $a0
	add  b                                           ; $4958: $80
	rst  $38                                         ; $4959: $ff
	add  c                                           ; $495a: $81
	ld   a, [hl]                                     ; $495b: $7e
	add  b                                           ; $495c: $80
	ld   b, d                                        ; $495d: $42
	add  h                                           ; $495e: $84
	ld   e, [hl]                                     ; $495f: $5e
	add  b                                           ; $4960: $80
	ld   a, [hl]                                     ; $4961: $7e
	ld   b, $42                                      ; $4962: $06 $42
	ld   [bc], a                                     ; $4964: $02
	ld   b, c                                        ; $4965: $41
	ret  nz                                          ; $4966: $c0

	nop                                              ; $4967: $00
	rst  JumpTable                                         ; $4968: $df
	rra                                              ; $4969: $1f
	add  b                                           ; $496a: $80
	db   $db                                         ; $496b: $db
	ld   bc, $dfd1                                   ; $496c: $01 $d1 $df
	add  c                                           ; $496f: $81
	pop  de                                          ; $4970: $d1
	add  b                                           ; $4971: $80
	db   $db                                         ; $4972: $db
	add  c                                           ; $4973: $81
	rst  JumpTable                                         ; $4974: $df
	dec  b                                           ; $4975: $05
	nop                                              ; $4976: $00
	ccf                                              ; $4977: $3f
	add  hl, bc                                      ; $4978: $09
	add  hl, hl                                      ; $4979: $29
	jr   nc, jr_08e_499c                             ; $497a: $30 $20

	add  c                                           ; $497c: $81
	inc  h                                           ; $497d: $24
	ld   a, [bc]                                     ; $497e: $0a
	inc  b                                           ; $497f: $04
	ld   h, $36                                      ; $4980: $26 $36
	ld   [hl+], a                                    ; $4982: $22
	ccf                                              ; $4983: $3f
	dec  b                                           ; $4984: $05
	daa                                              ; $4985: $27
	nop                                              ; $4986: $00
	rst  $38                                         ; $4987: $ff
	nop                                              ; $4988: $00
	ld   a, a                                        ; $4989: $7f
	add  c                                           ; $498a: $81
	rst  $38                                         ; $498b: $ff
	ld   [bc], a                                     ; $498c: $02
	ccf                                              ; $498d: $3f
	rst  $38                                         ; $498e: $ff
	ret  nz                                          ; $498f: $c0

	add  c                                           ; $4990: $81
	rst  $38                                         ; $4991: $ff
	ld   bc, $8000                                   ; $4992: $01 $00 $80
	add  b                                           ; $4995: $80
	nop                                              ; $4996: $00
	inc  b                                           ; $4997: $04
	ei                                               ; $4998: $fb
	nop                                              ; $4999: $00
	ei                                               ; $499a: $fb
	pop  af                                          ; $499b: $f1

jr_08e_499c:
	xor  $81                                         ; $499c: $ee $81
	ldh  [rP1], a                                    ; $499e: $e0 $00
	nop                                              ; $49a0: $00
	add  b                                           ; $49a1: $80
	pop  af                                          ; $49a2: $f1
	nop                                              ; $49a3: $00
	rst  $38                                         ; $49a4: $ff
	add  b                                           ; $49a5: $80
	nop                                              ; $49a6: $00
	inc  bc                                          ; $49a7: $03
	jr   c, jr_08e_49e9                              ; $49a8: $38 $3f

	rst  $38                                         ; $49aa: $ff
	ccf                                              ; $49ab: $3f
	add  b                                           ; $49ac: $80
	cp   a                                           ; $49ad: $bf
	inc  b                                           ; $49ae: $04
	add  b                                           ; $49af: $80
	add  a                                           ; $49b0: $87
	cp   b                                           ; $49b1: $b8
	cp   a                                           ; $49b2: $bf
	ccf                                              ; $49b3: $3f
	add  c                                           ; $49b4: $81
	rst  $38                                         ; $49b5: $ff
	dec  b                                           ; $49b6: $05
	nop                                              ; $49b7: $00
	rlca                                             ; $49b8: $07
	nop                                              ; $49b9: $00
	db   $fc                                         ; $49ba: $fc
	rst  $38                                         ; $49bb: $ff
	db   $fc                                         ; $49bc: $fc
	add  b                                           ; $49bd: $80
	db   $fd                                         ; $49be: $fd
	inc  b                                           ; $49bf: $04
	ld   bc, $01fd                                   ; $49c0: $01 $fd $01
	db   $fd                                         ; $49c3: $fd
	db   $fc                                         ; $49c4: $fc
	add  c                                           ; $49c5: $81
	rst  $38                                         ; $49c6: $ff
	ld   bc, $f804                                   ; $49c7: $01 $04 $f8
	add  b                                           ; $49ca: $80
	nop                                              ; $49cb: $00
	inc  b                                           ; $49cc: $04
	sbc  $00                                         ; $49cd: $de $00
	sbc  $8e                                         ; $49cf: $de $8e
	halt                                             ; $49d1: $76
	add  c                                           ; $49d2: $81
	ld   b, $00                                      ; $49d3: $06 $00
	nop                                              ; $49d5: $00
	add  b                                           ; $49d6: $80
	adc  [hl]                                        ; $49d7: $8e
	nop                                              ; $49d8: $00
	cp   $82                                         ; $49d9: $fe $82
	nop                                              ; $49db: $00
	ld   [bc], a                                     ; $49dc: $02
	ld   a, [hl]                                     ; $49dd: $7e
	ld   bc, $8300                                   ; $49de: $01 $00 $83
	ld   a, a                                        ; $49e1: $7f
	ld   a, [bc]                                     ; $49e2: $0a
	ld   a, h                                        ; $49e3: $7c
	ld   a, a                                        ; $49e4: $7f
	ld   [hl], e                                     ; $49e5: $73
	ld   a, a                                        ; $49e6: $7f
	ld   l, a                                        ; $49e7: $6f
	ld   a, a                                        ; $49e8: $7f

jr_08e_49e9:
	rst  $20                                         ; $49e9: $e7
	nop                                              ; $49ea: $00
	ld   bc, $787a                                   ; $49eb: $01 $7a $78
	add  e                                           ; $49ee: $83
	ld   a, e                                        ; $49ef: $7b
	ld   [bc], a                                     ; $49f0: $02
	ld   [bc], a                                     ; $49f1: $02
	ld   a, e                                        ; $49f2: $7b
	ld   a, c                                        ; $49f3: $79
	add  b                                           ; $49f4: $80
	ld   h, c                                        ; $49f5: $61
	inc  bc                                          ; $49f6: $03
	ld   b, b                                        ; $49f7: $40
	ret  nz                                          ; $49f8: $c0

	nop                                              ; $49f9: $00
	rst  $38                                         ; $49fa: $ff
	add  b                                           ; $49fb: $80
	nop                                              ; $49fc: $00
	add  e                                           ; $49fd: $83
	rst  $38                                         ; $49fe: $ff
	nop                                              ; $49ff: $00
	nop                                              ; $4a00: $00
	add  e                                           ; $4a01: $83
	rst  $38                                         ; $4a02: $ff
	inc  b                                           ; $4a03: $04
	add  e                                           ; $4a04: $83
	nop                                              ; $4a05: $00
	add  b                                           ; $4a06: $80
	dec  a                                           ; $4a07: $3d
	inc  a                                           ; $4a08: $3c
	add  e                                           ; $4a09: $83
	cp   l                                           ; $4a0a: $bd
	ld   bc, $bd01                                   ; $4a0b: $01 $01 $bd
	add  d                                           ; $4a0e: $82
	cp   h                                           ; $4a0f: $bc
	ld   [bc], a                                     ; $4a10: $02
	db   $fc                                         ; $4a11: $fc
	nop                                              ; $4a12: $00
	rst  $38                                         ; $4a13: $ff
	add  b                                           ; $4a14: $80
	nop                                              ; $4a15: $00
	add  e                                           ; $4a16: $83
	rst  $38                                         ; $4a17: $ff
	inc  b                                           ; $4a18: $04
	rlca                                             ; $4a19: $07
	rst  $38                                         ; $4a1a: $ff
	ld   sp, hl                                      ; $4a1b: $f9
	rra                                              ; $4a1c: $1f
	ld   e, $80                                      ; $4a1d: $1e $80
	rrca                                             ; $4a1f: $0f
	ld   bc, $f919                                   ; $4a20: $01 $19 $f9
	add  b                                           ; $4a23: $80
	add  hl, de                                      ; $4a24: $19
	add  b                                           ; $4a25: $80
	ld   sp, hl                                      ; $4a26: $f9
	ld   [bc], a                                     ; $4a27: $02
	ld   hl, sp-$07                                  ; $4a28: $f8 $f9
	ld   hl, sp-$7c                                  ; $4a2a: $f8 $84
	ld   sp, hl                                      ; $4a2c: $f9
	nop                                              ; $4a2d: $00
	ld   e, e                                        ; $4a2e: $5b
	add  a                                           ; $4a2f: $87
	ld   a, l                                        ; $4a30: $7d
	ld   [bc], a                                     ; $4a31: $02
	ld   a, h                                        ; $4a32: $7c
	ld   a, a                                        ; $4a33: $7f
	ld   a, [hl]                                     ; $4a34: $7e
	add  c                                           ; $4a35: $81
	ld   a, l                                        ; $4a36: $7d
	ld   bc, $af11                                   ; $4a37: $01 $11 $af
	add  c                                           ; $4a3a: $81
	xor  [hl]                                        ; $4a3b: $ae
	nop                                              ; $4a3c: $00
	xor  a                                           ; $4a3d: $af
	add  b                                           ; $4a3e: $80
	cp   a                                           ; $4a3f: $bf
	add  b                                           ; $4a40: $80
	and  c                                           ; $4a41: $a1
	ld   [bc], a                                     ; $4a42: $02
	cpl                                              ; $4a43: $2f
	xor  a                                           ; $4a44: $af
	cpl                                              ; $4a45: $2f
	add  c                                           ; $4a46: $81
	xor  a                                           ; $4a47: $af
	ld   bc, $5e9f                                   ; $4a48: $01 $9f $5e
	add  c                                           ; $4a4b: $81
	ld   e, $00                                      ; $4a4c: $1e $00
	ld   e, [hl]                                     ; $4a4e: $5e
	add  b                                           ; $4a4f: $80
	ld   a, [hl]                                     ; $4a50: $7e
	add  b                                           ; $4a51: $80
	ld   b, d                                        ; $4a52: $42
	nop                                              ; $4a53: $00
	ld   e, [hl]                                     ; $4a54: $5e
	add  b                                           ; $4a55: $80
	ld   e, a                                        ; $4a56: $5f
	add  c                                           ; $4a57: $81
	ld   e, [hl]                                     ; $4a58: $5e
	nop                                              ; $4a59: $00
	ld   bc, $df87                                   ; $4a5a: $01 $87 $df
	ld   [bc], a                                     ; $4a5d: $02
	rra                                              ; $4a5e: $1f
	rst  JumpTable                                         ; $4a5f: $df
	rra                                              ; $4a60: $1f
	add  c                                           ; $4a61: $81
	rst  JumpTable                                         ; $4a62: $df
	ld   b, $ff                                      ; $4a63: $06 $ff
	nop                                              ; $4a65: $00
	inc  b                                           ; $4a66: $04
	jr   nz, jr_08e_4a6d                             ; $4a67: $20 $04

	jr   nz, jr_08e_4a8a                             ; $4a69: $20 $1f

	add  b                                           ; $4a6b: $80
	nop                                              ; $4a6c: $00

jr_08e_4a6d:
	ld   bc, $003f                                   ; $4a6d: $01 $3f $00
	add  d                                           ; $4a70: $82
	ccf                                              ; $4a71: $3f
	add  b                                           ; $4a72: $80
	nop                                              ; $4a73: $00
	inc  b                                           ; $4a74: $04
	add  b                                           ; $4a75: $80
	add  [hl]                                        ; $4a76: $86
	add  c                                           ; $4a77: $81
	adc  a                                           ; $4a78: $8f
	add  e                                           ; $4a79: $83
	add  b                                           ; $4a7a: $80
	or   e                                           ; $4a7b: $b3
	ld   [$33bb], sp                                 ; $4a7c: $08 $bb $33
	dec  a                                           ; $4a7f: $3d
	or   b                                           ; $4a80: $b0
	and  b                                           ; $4a81: $a0
	and  a                                           ; $4a82: $a7
	and  [hl]                                        ; $4a83: $a6
	add  hl, hl                                      ; $4a84: $29
	ld   b, $80                                      ; $4a85: $06 $80
	nop                                              ; $4a87: $00
	add  b                                           ; $4a88: $80
	add  b                                           ; $4a89: $80

jr_08e_4a8a:
	nop                                              ; $4a8a: $00
	ld   b, b                                        ; $4a8b: $40
	add  h                                           ; $4a8c: $84
	ld   a, a                                        ; $4a8d: $7f
	nop                                              ; $4a8e: $00
	ccf                                              ; $4a8f: $3f
	add  c                                           ; $4a90: $81
	cp   a                                           ; $4a91: $bf
	nop                                              ; $4a92: $00
	rst  ToBoot                                         ; $4a93: $c7
	add  e                                           ; $4a94: $83
	rlca                                             ; $4a95: $07
	adc  b                                           ; $4a96: $88
	rst  $38                                         ; $4a97: $ff
	add  h                                           ; $4a98: $84
	ld   hl, sp-$78                                  ; $4a99: $f8 $88
	rst  $38                                         ; $4a9b: $ff
	add  h                                           ; $4a9c: $84
	nop                                              ; $4a9d: $00
	adc  b                                           ; $4a9e: $88
	cp   $02                                         ; $4a9f: $fe $02
	ld   h, b                                        ; $4aa1: $60
	ld   a, a                                        ; $4aa2: $7f
	ld   e, a                                        ; $4aa3: $5f
	add  l                                           ; $4aa4: $85
	ld   a, a                                        ; $4aa5: $7f
	nop                                              ; $4aa6: $00
	ld   b, b                                        ; $4aa7: $40
	add  c                                           ; $4aa8: $81
	ld   a, a                                        ; $4aa9: $7f
	add  b                                           ; $4aaa: $80
	nop                                              ; $4aab: $00
	nop                                              ; $4aac: $00
	add  b                                           ; $4aad: $80
	add  c                                           ; $4aae: $81
	nop                                              ; $4aaf: $00
	add  b                                           ; $4ab0: $80
	ld   b, b                                        ; $4ab1: $40
	ld   [bc], a                                     ; $4ab2: $02
	ld   h, c                                        ; $4ab3: $61
	ld   b, c                                        ; $4ab4: $41
	ld   d, e                                        ; $4ab5: $53
	add  e                                           ; $4ab6: $83
	ld   c, a                                        ; $4ab7: $4f
	ld   [bc], a                                     ; $4ab8: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ab9: $cf
	ld   c, a                                        ; $4aba: $4f
	inc  a                                           ; $4abb: $3c
	add  a                                           ; $4abc: $87
	ld   a, a                                        ; $4abd: $7f
	nop                                              ; $4abe: $00
	nop                                              ; $4abf: $00
	add  c                                           ; $4ac0: $81
	ld   a, a                                        ; $4ac1: $7f
	add  b                                           ; $4ac2: $80
	nop                                              ; $4ac3: $00
	nop                                              ; $4ac4: $00
	ld   b, b                                        ; $4ac5: $40
	add  c                                           ; $4ac6: $81
	cp   b                                           ; $4ac7: $b8
	add  b                                           ; $4ac8: $80
	cp   h                                           ; $4ac9: $bc
	ld   a, [bc]                                     ; $4aca: $0a
	cp   [hl]                                        ; $4acb: $be
	cp   h                                           ; $4acc: $bc
	add  l                                           ; $4acd: $85
	add  h                                           ; $4ace: $84
	inc  a                                           ; $4acf: $3c
	cp   h                                           ; $4ad0: $bc
	add  h                                           ; $4ad1: $84
	cp   h                                           ; $4ad2: $bc
	ld   b, h                                        ; $4ad3: $44
	inc  b                                           ; $4ad4: $04
	inc  bc                                          ; $4ad5: $03
	add  e                                           ; $4ad6: $83
	rlca                                             ; $4ad7: $07
	add  b                                           ; $4ad8: $80
	rla                                              ; $4ad9: $17
	ld   [bc], a                                     ; $4ada: $02
	scf                                              ; $4adb: $37
	rst  $30                                         ; $4adc: $f7

jr_08e_4add:
	ldh  a, [$81]                                    ; $4add: $f0 $81
	rst  $30                                         ; $4adf: $f7
	add  b                                           ; $4ae0: $80
	ldh  a, [rSC]                                    ; $4ae1: $f0 $02
	jr   nz, jr_08e_4add                             ; $4ae3: $20 $f8

	ld   a, b                                        ; $4ae5: $78
	add  l                                           ; $4ae6: $85
	ld   hl, sp+$00                                  ; $4ae7: $f8 $00
	ld   [hl], b                                     ; $4ae9: $70
	add  c                                           ; $4aea: $81
	ld   hl, sp+$00                                  ; $4aeb: $f8 $00
	db   $10                                         ; $4aed: $10
	add  a                                           ; $4aee: $87
	nop                                              ; $4aef: $00
	add  [hl]                                        ; $4af0: $86
	rrca                                             ; $4af1: $0f
	add  [hl]                                        ; $4af2: $86
	nop                                              ; $4af3: $00
	add  [hl]                                        ; $4af4: $86
	rst  $38                                         ; $4af5: $ff
	add  [hl]                                        ; $4af6: $86
	nop                                              ; $4af7: $00
	add  d                                           ; $4af8: $82
	rst  $38                                         ; $4af9: $ff
	add  c                                           ; $4afa: $81
	rra                                              ; $4afb: $1f
	ld   bc, $c0df                                   ; $4afc: $01 $df $c0
	add  l                                           ; $4aff: $85
	nop                                              ; $4b00: $00
	add  [hl]                                        ; $4b01: $86
	rst  $38                                         ; $4b02: $ff
	nop                                              ; $4b03: $00
	ld   [$0080], sp                                 ; $4b04: $08 $80 $00
	add  b                                           ; $4b07: $80
	inc  b                                           ; $4b08: $04
	inc  bc                                          ; $4b09: $03
	rlca                                             ; $4b0a: $07
	ld   b, $07                                      ; $4b0b: $06 $07
	rrca                                             ; $4b0d: $0f
	add  b                                           ; $4b0e: $80
	rlca                                             ; $4b0f: $07
	nop                                              ; $4b10: $00
	inc  bc                                          ; $4b11: $03
	add  c                                           ; $4b12: $81
	ld   [bc], a                                     ; $4b13: $02
	rlca                                             ; $4b14: $07
	inc  bc                                          ; $4b15: $03
	inc  a                                           ; $4b16: $3c
	daa                                              ; $4b17: $27
	rst  $30                                         ; $4b18: $f7
	call nz, $d01b                                   ; $4b19: $c4 $1b $d0
	ld   e, b                                        ; $4b1c: $58
	add  b                                           ; $4b1d: $80
	sbc  [hl]                                        ; $4b1e: $9e
	ld   c, $98                                      ; $4b1f: $0e $98
	sbc  a                                           ; $4b21: $9f
	sbc  b                                           ; $4b22: $98
	jr   c, jr_08e_4b29                              ; $4b23: $38 $04

	inc  d                                           ; $4b25: $14
	db   $e4                                         ; $4b26: $e4
	ld   d, h                                        ; $4b27: $54
	rra                                              ; $4b28: $1f

jr_08e_4b29:
	rst  JumpTable                                         ; $4b29: $df
	ld   l, a                                        ; $4b2a: $6f
	ld   h, b                                        ; $4b2b: $60
	ld   l, a                                        ; $4b2c: $6f
	ld   h, e                                        ; $4b2d: $63
	ld   l, l                                        ; $4b2e: $6d
	add  b                                           ; $4b2f: $80
	dec  l                                           ; $4b30: $2d
	ld   [$2dad], sp                                 ; $4b31: $08 $ad $2d
	ld   [hl], c                                     ; $4b34: $71
	add  c                                           ; $4b35: $81
	and  c                                           ; $4b36: $a1
	sbc  a                                           ; $4b37: $9f
	and  b                                           ; $4b38: $a0
	cp   a                                           ; $4b39: $bf
	ccf                                              ; $4b3a: $3f
	add  e                                           ; $4b3b: $83
	cp   a                                           ; $4b3c: $bf
	ld   [bc], a                                     ; $4b3d: $02
	rst  $38                                         ; $4b3e: $ff
	cp   a                                           ; $4b3f: $bf
	rst  $38                                         ; $4b40: $ff
	add  e                                           ; $4b41: $83
	ld   a, a                                        ; $4b42: $7f
	adc  [hl]                                        ; $4b43: $8e
	rst  $38                                         ; $4b44: $ff
	adc  [hl]                                        ; $4b45: $8e
	cp   $82                                         ; $4b46: $fe $82
	ld   a, a                                        ; $4b48: $7f
	dec  c                                           ; $4b49: $0d
	ld   a, b                                        ; $4b4a: $78
	ld   a, [hl]                                     ; $4b4b: $7e
	ld   h, l                                        ; $4b4c: $65
	ld   a, l                                        ; $4b4d: $7d
	ld   e, c                                        ; $4b4e: $59
	ld   a, b                                        ; $4b4f: $78
	jr   c, jr_08e_4bca                              ; $4b50: $38 $78

	ld   a, h                                        ; $4b52: $7c
	inc  c                                           ; $4b53: $0c
	ld   c, a                                        ; $4b54: $4f
	cpl                                              ; $4b55: $2f
	sbc  h                                           ; $4b56: $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b57: $cf
	add  b                                           ; $4b58: $80
	ld   c, a                                        ; $4b59: $4f
	ld   bc, $cf4d                                   ; $4b5a: $01 $4d $cf
	add  [hl]                                        ; $4b5d: $86
	ld   c, a                                        ; $4b5e: $4f
	add  b                                           ; $4b5f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b60: $cf
	ld   bc, $7fc1                                   ; $4b61: $01 $c1 $7f
	add  b                                           ; $4b64: $80
	ccf                                              ; $4b65: $3f
	ld   bc, $5f00                                   ; $4b66: $01 $00 $5f
	add  b                                           ; $4b69: $80
	cpl                                              ; $4b6a: $2f
	nop                                              ; $4b6b: $00
	daa                                              ; $4b6c: $27
	add  c                                           ; $4b6d: $81
	rlca                                             ; $4b6e: $07
	dec  b                                           ; $4b6f: $05
	ld   l, a                                        ; $4b70: $6f
	rrca                                             ; $4b71: $0f

jr_08e_4b72:
	sbc  a                                           ; $4b72: $9f
	ld   e, a                                        ; $4b73: $5f
	jr   nz, jr_08e_4b72                             ; $4b74: $20 $fc

	add  b                                           ; $4b76: $80
	db   $f4                                         ; $4b77: $f4
	ld   bc, $ec04                                   ; $4b78: $01 $04 $ec
	add  b                                           ; $4b7b: $80
	call nc, $9400                                   ; $4b7c: $d4 $00 $94
	add  c                                           ; $4b7f: $81
	add  h                                           ; $4b80: $84
	dec  b                                           ; $4b81: $05
	push bc                                          ; $4b82: $c5
	call nz, $fcfd                                   ; $4b83: $c4 $fd $fc
	call z, $80f7                                    ; $4b86: $cc $f7 $80
	di                                               ; $4b89: $f3
	ld   bc, $f5d0                                   ; $4b8a: $01 $d0 $f5
	add  c                                           ; $4b8d: $81
	ldh  a, [c]                                      ; $4b8e: $f2
	add  d                                           ; $4b8f: $82
	ldh  a, [$03]                                    ; $4b90: $f0 $03
	jr   nc, jr_08e_4bcb                             ; $4b92: $30 $37

	or   a                                           ; $4b94: $b7
	ld   e, c                                        ; $4b95: $59
	add  e                                           ; $4b96: $83
	cp   $05                                         ; $4b97: $fe $05
	ld   a, $fe                                      ; $4b99: $3e $fe
	ld   e, [hl]                                     ; $4b9b: $5e
	ld   a, [hl]                                     ; $4b9c: $7e
	ld   l, [hl]                                     ; $4b9d: $6e
	ld   a, [hl]                                     ; $4b9e: $7e
	add  b                                           ; $4b9f: $80
	db   $fc                                         ; $4ba0: $fc
	ld   [bc], a                                     ; $4ba1: $02
	cp   $fd                                         ; $4ba2: $fe $fd
	db   $fc                                         ; $4ba4: $fc
	adc  l                                           ; $4ba5: $8d
	rrca                                             ; $4ba6: $0f
	adc  [hl]                                        ; $4ba7: $8e
	rst  $38                                         ; $4ba8: $ff
	rlca                                             ; $4ba9: $07
	add  b                                           ; $4baa: $80
	ld   b, b                                        ; $4bab: $40
	rst  JumpTable                                         ; $4bac: $df
	nop                                              ; $4bad: $00
	sbc  a                                           ; $4bae: $9f
	ld   e, a                                        ; $4baf: $5f
	ld   d, [hl]                                     ; $4bb0: $56
	ld   c, l                                        ; $4bb1: $4d
	add  c                                           ; $4bb2: $81
	ld   b, h                                        ; $4bb3: $44
	add  b                                           ; $4bb4: $80
	ld   e, a                                        ; $4bb5: $5f
	ld   bc, $c040                                   ; $4bb6: $01 $40 $c0
	add  c                                           ; $4bb9: $81
	nop                                              ; $4bba: $00
	ld   bc, $00ff                                   ; $4bbb: $01 $ff $00
	add  b                                           ; $4bbe: $80
	rst  $38                                         ; $4bbf: $ff
	ld   bc, $b6db                                   ; $4bc0: $01 $db $b6
	add  c                                           ; $4bc3: $81
	sub  d                                           ; $4bc4: $92
	add  b                                           ; $4bc5: $80
	rst  $38                                         ; $4bc6: $ff
	add  d                                           ; $4bc7: $82
	nop                                              ; $4bc8: $00
	add  h                                           ; $4bc9: $84

jr_08e_4bca:
	ld   [bc], a                                     ; $4bca: $02

jr_08e_4bcb:
	add  c                                           ; $4bcb: $81
	nop                                              ; $4bcc: $00
	add  b                                           ; $4bcd: $80
	rrca                                             ; $4bce: $0f
	add  d                                           ; $4bcf: $82
	nop                                              ; $4bd0: $00
	ld   bc, $2f04                                   ; $4bd1: $01 $04 $2f
	add  c                                           ; $4bd4: $81
	dec  hl                                          ; $4bd5: $2b
	add  b                                           ; $4bd6: $80
	cpl                                              ; $4bd7: $2f
	add  c                                           ; $4bd8: $81
	ld   [$f801], sp                                 ; $4bd9: $08 $01 $f8
	ldh  a, [$82]                                    ; $4bdc: $f0 $82
	nop                                              ; $4bde: $00
	ld   bc, $d180                                   ; $4bdf: $01 $80 $d1
	add  c                                           ; $4be2: $81
	ld   d, c                                        ; $4be3: $51
	add  b                                           ; $4be4: $80
	pop  de                                          ; $4be5: $d1
	add  c                                           ; $4be6: $81
	ld   b, b                                        ; $4be7: $40
	ld   bc, $0747                                   ; $4be8: $01 $47 $07
	add  d                                           ; $4beb: $82
	nop                                              ; $4bec: $00
	add  b                                           ; $4bed: $80
	ld   a, a                                        ; $4bee: $7f
	add  [hl]                                        ; $4bef: $86
	rra                                              ; $4bf0: $1f
	add  b                                           ; $4bf1: $80
	rst  $38                                         ; $4bf2: $ff
	add  b                                           ; $4bf3: $80
	ld   a, a                                        ; $4bf4: $7f
	add  b                                           ; $4bf5: $80
	ccf                                              ; $4bf6: $3f
	adc  [hl]                                        ; $4bf7: $8e
	rst  $38                                         ; $4bf8: $ff
	add  c                                           ; $4bf9: $81
	cp   $88                                         ; $4bfa: $fe $88
	rst  $38                                         ; $4bfc: $ff
	add  c                                           ; $4bfd: $81
	cp   $06                                         ; $4bfe: $fe $06
	ld   c, a                                        ; $4c00: $4f
	cpl                                              ; $4c01: $2f
	rst  $28                                         ; $4c02: $ef
	nop                                              ; $4c03: $00
	ret  nz                                          ; $4c04: $c0

	xor  a                                           ; $4c05: $af
	and  b                                           ; $4c06: $a0
	add  c                                           ; $4c07: $81
	xor  c                                           ; $4c08: $a9
	ld   [bc], a                                     ; $4c09: $02
	add  [hl]                                        ; $4c0a: $86
	ldh  [$8f], a                                    ; $4c0b: $e0 $8f
	add  b                                           ; $4c0d: $80
	ld   h, b                                        ; $4c0e: $60
	nop                                              ; $4c0f: $00
	nop                                              ; $4c10: $00
	add  c                                           ; $4c11: $81
	rst  $38                                         ; $4c12: $ff
	add  b                                           ; $4c13: $80
	nop                                              ; $4c14: $00
	ld   bc, $00ff                                   ; $4c15: $01 $ff $00
	add  c                                           ; $4c18: $81
	inc  h                                           ; $4c19: $24
	ld   [bc], a                                     ; $4c1a: $02
	db   $db                                         ; $4c1b: $db
	nop                                              ; $4c1c: $00
	rst  $38                                         ; $4c1d: $ff
	add  c                                           ; $4c1e: $81
	nop                                              ; $4c1f: $00
	ld   b, $9f                                      ; $4c20: $06 $9f
	ld   e, a                                        ; $4c22: $5f
	rst  JumpTable                                         ; $4c23: $df
	nop                                              ; $4c24: $00
	add  b                                           ; $4c25: $80
	ld   e, a                                        ; $4c26: $5f
	ld   b, b                                        ; $4c27: $40
	add  c                                           ; $4c28: $81
	ld   d, d                                        ; $4c29: $52
	ld   [bc], a                                     ; $4c2a: $02
	dec  c                                           ; $4c2b: $0d
	ret  nz                                          ; $4c2c: $c0

	rra                                              ; $4c2d: $1f
	add  b                                           ; $4c2e: $80
	ret  nz                                          ; $4c2f: $c0

	rlca                                             ; $4c30: $07
	nop                                              ; $4c31: $00
	rst  $38                                         ; $4c32: $ff
	cp   $ff                                         ; $4c33: $fe $ff
	nop                                              ; $4c35: $00
	ld   bc, $00fe                                   ; $4c36: $01 $fe $00
	add  c                                           ; $4c39: $81
	ld   c, b                                        ; $4c3a: $48
	ld   [bc], a                                     ; $4c3b: $02
	or   [hl]                                        ; $4c3c: $b6
	ld   bc, $80fe                                   ; $4c3d: $01 $fe $80
	ld   bc, $0001                                   ; $4c40: $01 $01 $00
	ccf                                              ; $4c43: $3f
	add  b                                           ; $4c44: $80
	cp   a                                           ; $4c45: $bf
	add  b                                           ; $4c46: $80
	nop                                              ; $4c47: $00
	ld   bc, $80bf                                   ; $4c48: $01 $bf $80
	add  c                                           ; $4c4b: $81
	and  h                                           ; $4c4c: $a4
	ld   [bc], a                                     ; $4c4d: $02
	dec  de                                          ; $4c4e: $1b
	add  b                                           ; $4c4f: $80
	ccf                                              ; $4c50: $3f
	add  b                                           ; $4c51: $80
	add  b                                           ; $4c52: $80
	rlca                                             ; $4c53: $07
	nop                                              ; $4c54: $00
	cp   $fd                                         ; $4c55: $fe $fd
	rst  $38                                         ; $4c57: $ff
	nop                                              ; $4c58: $00
	ld   [bc], a                                     ; $4c59: $02
	db   $fd                                         ; $4c5a: $fd
	ld   bc, $9181                                   ; $4c5b: $01 $81 $91
	ld   [bc], a                                     ; $4c5e: $02
	ld   l, h                                        ; $4c5f: $6c
	inc  bc                                          ; $4c60: $03
	db   $fc                                         ; $4c61: $fc
	add  b                                           ; $4c62: $80
	inc  bc                                          ; $4c63: $03
	nop                                              ; $4c64: $00
	nop                                              ; $4c65: $00
	adc  [hl]                                        ; $4c66: $8e
	rrca                                             ; $4c67: $0f
	adc  [hl]                                        ; $4c68: $8e
	rst  $38                                         ; $4c69: $ff
	ld   bc, $4f8f                                   ; $4c6a: $01 $8f $4f
	add  b                                           ; $4c6d: $80
	ld   b, b                                        ; $4c6e: $40
	inc  bc                                          ; $4c6f: $03
	ret  nz                                          ; $4c70: $c0

	nop                                              ; $4c71: $00
	sbc  a                                           ; $4c72: $9f
	ld   b, b                                        ; $4c73: $40
	add  b                                           ; $4c74: $80
	ld   e, a                                        ; $4c75: $5f
	ld   bc, $4d56                                   ; $4c76: $01 $56 $4d
	add  c                                           ; $4c79: $81
	ld   b, h                                        ; $4c7a: $44
	ld   [bc], a                                     ; $4c7b: $02
	ld   e, b                                        ; $4c7c: $58
	daa                                              ; $4c7d: $27
	rst  $38                                         ; $4c7e: $ff
	add  d                                           ; $4c7f: $82
	nop                                              ; $4c80: $00
	ld   bc, $00ff                                   ; $4c81: $01 $ff $00
	add  c                                           ; $4c84: $81
	rst  $38                                         ; $4c85: $ff
	add  b                                           ; $4c86: $80
	add  b                                           ; $4c87: $80
	inc  b                                           ; $4c88: $04
	nop                                              ; $4c89: $00
	ccf                                              ; $4c8a: $3f
	nop                                              ; $4c8b: $00
	jr   nz, jr_08e_4cad                             ; $4c8c: $20 $1f

	add  b                                           ; $4c8e: $80
	rlca                                             ; $4c8f: $07
	dec  b                                           ; $4c90: $05
	ret  nz                                          ; $4c91: $c0

	nop                                              ; $4c92: $00
	ldh  a, [$c0]                                    ; $4c93: $f0 $c0
	rst  $38                                         ; $4c95: $ff
	ldh  a, [$84]                                    ; $4c96: $f0 $84
	rst  $30                                         ; $4c98: $f7
	add  e                                           ; $4c99: $83
	rst  $38                                         ; $4c9a: $ff
	add  c                                           ; $4c9b: $81
	nop                                              ; $4c9c: $00
	add  hl, bc                                      ; $4c9d: $09
	rst  $38                                         ; $4c9e: $ff
	nop                                              ; $4c9f: $00
	pop  af                                          ; $4ca0: $f1
	rst  $38                                         ; $4ca1: $ff
	xor  $e1                                         ; $4ca2: $ee $e1
	call $e1d2                                       ; $4ca4: $cd $d2 $e1
	cp   $81                                         ; $4ca7: $fe $81
	rst  $38                                         ; $4ca9: $ff
	add  b                                           ; $4caa: $80
	rlca                                             ; $4cab: $07
	dec  c                                           ; $4cac: $0d

jr_08e_4cad:
	inc  bc                                          ; $4cad: $03
	db   $e3                                         ; $4cae: $e3
	ld   bc, $e0f0                                   ; $4caf: $01 $f0 $e0
	db   $fc                                         ; $4cb2: $fc
	ldh  a, [$7f]                                    ; $4cb3: $f0 $7f
	db   $fc                                         ; $4cb5: $fc
	ld   h, b                                        ; $4cb6: $60
	rra                                              ; $4cb7: $1f
	rrca                                             ; $4cb8: $0f
	adc  a                                           ; $4cb9: $8f
	add  a                                           ; $4cba: $87
	add  b                                           ; $4cbb: $80
	rst  ToBoot                                         ; $4cbc: $c7
	add  d                                           ; $4cbd: $82
	rst  $20                                         ; $4cbe: $e7
	add  b                                           ; $4cbf: $80
	daa                                              ; $4cc0: $27
	add  c                                           ; $4cc1: $81
	rlca                                             ; $4cc2: $07
	adc  h                                           ; $4cc3: $8c
	rst  $38                                         ; $4cc4: $ff
	add  b                                           ; $4cc5: $80
	ldh  a, [$86]                                    ; $4cc6: $f0 $86
	cp   $84                                         ; $4cc8: $fe $84
	rst  $38                                         ; $4cca: $ff
	add  b                                           ; $4ccb: $80
	ld   a, a                                        ; $4ccc: $7f
	add  d                                           ; $4ccd: $82
	ld   b, $80                                      ; $4cce: $06 $80
	nop                                              ; $4cd0: $00
	add  b                                           ; $4cd1: $80
	ld   a, a                                        ; $4cd2: $7f
	add  h                                           ; $4cd3: $84
	rst  $38                                         ; $4cd4: $ff
	add  b                                           ; $4cd5: $80
	ld   hl, sp-$7e                                  ; $4cd6: $f8 $82
	db   $db                                         ; $4cd8: $db
	add  b                                           ; $4cd9: $80
	nop                                              ; $4cda: $00
	add  [hl]                                        ; $4cdb: $86
	rst  $38                                         ; $4cdc: $ff
	add  b                                           ; $4cdd: $80
	ccf                                              ; $4cde: $3f
	add  d                                           ; $4cdf: $82
	dec  c                                           ; $4ce0: $0d
	add  b                                           ; $4ce1: $80
	nop                                              ; $4ce2: $00
	add  b                                           ; $4ce3: $80
	rrca                                             ; $4ce4: $0f
	add  [hl]                                        ; $4ce5: $86
	rst  $38                                         ; $4ce6: $ff
	add  d                                           ; $4ce7: $82
	or   [hl]                                        ; $4ce8: $b6
	add  b                                           ; $4ce9: $80
	nop                                              ; $4cea: $00
	add  b                                           ; $4ceb: $80
	cp   $86                                         ; $4cec: $fe $86
	rst  $38                                         ; $4cee: $ff
	add  d                                           ; $4cef: $82
	dec  de                                          ; $4cf0: $1b
	add  b                                           ; $4cf1: $80
	nop                                              ; $4cf2: $00
	add  b                                           ; $4cf3: $80
	rra                                              ; $4cf4: $1f
	add  [hl]                                        ; $4cf5: $86
	rst  $38                                         ; $4cf6: $ff
	add  d                                           ; $4cf7: $82
	ld   l, h                                        ; $4cf8: $6c
	add  b                                           ; $4cf9: $80
	nop                                              ; $4cfa: $00
	add  [hl]                                        ; $4cfb: $86
	rst  $38                                         ; $4cfc: $ff
	add  b                                           ; $4cfd: $80
	ld   hl, sp-$7a                                  ; $4cfe: $f8 $86
	rrca                                             ; $4d00: $0f
	add  h                                           ; $4d01: $84
	rst  $38                                         ; $4d02: $ff
	add  b                                           ; $4d03: $80
	inc  a                                           ; $4d04: $3c
	adc  d                                           ; $4d05: $8a
	rst  $38                                         ; $4d06: $ff
	add  b                                           ; $4d07: $80
	add  e                                           ; $4d08: $83
	add  b                                           ; $4d09: $80
	inc  bc                                          ; $4d0a: $03
	add  b                                           ; $4d0b: $80
	nop                                              ; $4d0c: $00
	inc  b                                           ; $4d0d: $04
	inc  bc                                          ; $4d0e: $03
	nop                                              ; $4d0f: $00
	rrca                                             ; $4d10: $0f
	inc  bc                                          ; $4d11: $03
	sbc  a                                           ; $4d12: $9f
	add  b                                           ; $4d13: $80
	adc  h                                           ; $4d14: $8c
	add  hl, bc                                      ; $4d15: $09
	adc  b                                           ; $4d16: $88
	cp   b                                           ; $4d17: $b8
	sub  b                                           ; $4d18: $90
	sub  l                                           ; $4d19: $95
	sub  b                                           ; $4d1a: $90
	ld   hl, sp-$60                                  ; $4d1b: $f8 $a0
	xor  l                                           ; $4d1d: $ad
	ccf                                              ; $4d1e: $3f

jr_08e_4d1f:
	rst  $38                                         ; $4d1f: $ff
	add  b                                           ; $4d20: $80
	ret  nz                                          ; $4d21: $c0

	add  b                                           ; $4d22: $80
	dec  e                                           ; $4d23: $1d
	add  b                                           ; $4d24: $80
	db   $dd                                         ; $4d25: $dd
	add  c                                           ; $4d26: $81
	nop                                              ; $4d27: $00
	inc  bc                                          ; $4d28: $03
	ret  c                                           ; $4d29: $d8

	ld   [bc], a                                     ; $4d2a: $02
	rrca                                             ; $4d2b: $0f
	nop                                              ; $4d2c: $00
	nop                                              ; $4d2d: $00
	nop                                              ; $4d2e: $00
	nop                                              ; $4d2f: $00
	ld   a, [hl-]                                    ; $4d30: $3a
	inc  b                                           ; $4d31: $04
	rst  $38                                         ; $4d32: $ff
	nop                                              ; $4d33: $00
	add  e                                           ; $4d34: $83
	nop                                              ; $4d35: $00
	add  b                                           ; $4d36: $80
	rst  $38                                         ; $4d37: $ff
	add  d                                           ; $4d38: $82
	add  b                                           ; $4d39: $80
	ld   bc, $8c8f                                   ; $4d3a: $01 $8f $8c
	add  b                                           ; $4d3d: $80
	adc  a                                           ; $4d3e: $8f
	nop                                              ; $4d3f: $00
	inc  bc                                          ; $4d40: $03
	add  e                                           ; $4d41: $83
	nop                                              ; $4d42: $00
	add  b                                           ; $4d43: $80
	rst  $38                                         ; $4d44: $ff
	add  d                                           ; $4d45: $82
	nop                                              ; $4d46: $00
	ld   bc, $00ff                                   ; $4d47: $01 $ff $00
	add  c                                           ; $4d4a: $81
	rst  $38                                         ; $4d4b: $ff
	add  e                                           ; $4d4c: $83
	nop                                              ; $4d4d: $00
	add  b                                           ; $4d4e: $80
	rst  $38                                         ; $4d4f: $ff
	add  d                                           ; $4d50: $82
	nop                                              ; $4d51: $00
	inc  b                                           ; $4d52: $04
	rst  $38                                         ; $4d53: $ff
	nop                                              ; $4d54: $00
	ldh  a, [$ef]                                    ; $4d55: $f0 $ef
	ldh  [$83], a                                    ; $4d57: $e0 $83
	nop                                              ; $4d59: $00
	add  b                                           ; $4d5a: $80
	rst  $38                                         ; $4d5b: $ff
	add  d                                           ; $4d5c: $82
	nop                                              ; $4d5d: $00
	inc  b                                           ; $4d5e: $04
	rst  $38                                         ; $4d5f: $ff
	nop                                              ; $4d60: $00
	rra                                              ; $4d61: $1f
	rst  $38                                         ; $4d62: $ff
	ld   e, $83                                      ; $4d63: $1e $83
	ld   bc, $fd80                                   ; $4d65: $01 $80 $fd
	add  e                                           ; $4d68: $83
	ld   bc, $3902                                   ; $4d69: $01 $02 $39
	ld   bc, $8939                                   ; $4d6c: $01 $39 $89
	rst  $38                                         ; $4d6f: $ff
	dec  b                                           ; $4d70: $05
	di                                               ; $4d71: $f3
	rst  $30                                         ; $4d72: $f7
	pop  hl                                          ; $4d73: $e1
	db   $eb                                         ; $4d74: $eb
	ret  nz                                          ; $4d75: $c0

	adc  $86                                         ; $4d76: $ce $86
	rst  $38                                         ; $4d78: $ff
	add  b                                           ; $4d79: $80
	ld   sp, hl                                      ; $4d7a: $f9
	dec  b                                           ; $4d7b: $05
	ldh  a, [$f2]                                    ; $4d7c: $f0 $f2
	ldh  [$f5], a                                    ; $4d7e: $e0 $f5
	add  b                                           ; $4d80: $80
	add  sp, -$7f                                    ; $4d81: $e8 $81
	add  b                                           ; $4d83: $80
	inc  bc                                          ; $4d84: $03
	sbc  h                                           ; $4d85: $9c
	and  b                                           ; $4d86: $a0
	sbc  c                                           ; $4d87: $99
	and  c                                           ; $4d88: $a1
	add  e                                           ; $4d89: $83
	sub  h                                           ; $4d8a: $94
	inc  bc                                          ; $4d8b: $03
	sub  l                                           ; $4d8c: $95
	sub  h                                           ; $4d8d: $94
	sub  l                                           ; $4d8e: $95
	inc  b                                           ; $4d8f: $04
	add  a                                           ; $4d90: $87
	nop                                              ; $4d91: $00
	add  b                                           ; $4d92: $80
	ccf                                              ; $4d93: $3f
	add  d                                           ; $4d94: $82
	jr   nz, jr_08e_4d1f                             ; $4d95: $20 $88

	nop                                              ; $4d97: $00
	add  b                                           ; $4d98: $80
	rst  $38                                         ; $4d99: $ff
	adc  h                                           ; $4d9a: $8c
	nop                                              ; $4d9b: $00
	add  b                                           ; $4d9c: $80
	rst  $38                                         ; $4d9d: $ff

jr_08e_4d9e:
	adc  h                                           ; $4d9e: $8c
	nop                                              ; $4d9f: $00
	add  b                                           ; $4da0: $80
	rst  $38                                         ; $4da1: $ff
	adc  h                                           ; $4da2: $8c
	nop                                              ; $4da3: $00
	add  b                                           ; $4da4: $80
	rst  $38                                         ; $4da5: $ff
	adc  h                                           ; $4da6: $8c
	nop                                              ; $4da7: $00
	add  h                                           ; $4da8: $84
	add  b                                           ; $4da9: $80
	sbc  [hl]                                        ; $4daa: $9e
	nop                                              ; $4dab: $00
	inc  b                                           ; $4dac: $04
	adc  h                                           ; $4dad: $8c
	adc  a                                           ; $4dae: $8f
	add  b                                           ; $4daf: $80
	add  e                                           ; $4db0: $83
	sbc  h                                           ; $4db1: $9c
	add  e                                           ; $4db2: $83
	sbc  a                                           ; $4db3: $9f
	ld   a, [bc]                                     ; $4db4: $0a
	sub  b                                           ; $4db5: $90
	sbc  h                                           ; $4db6: $9c
	sub  e                                           ; $4db7: $93
	sbc  a                                           ; $4db8: $9f
	sbc  h                                           ; $4db9: $9c
	sbc  a                                           ; $4dba: $9f
	ld   b, $f9                                      ; $4dbb: $06 $f9
	ld   [bc], a                                     ; $4dbd: $02
	ld   sp, hl                                      ; $4dbe: $f9
	ld   b, e                                        ; $4dbf: $43
	add  c                                           ; $4dc0: $81
	add  c                                           ; $4dc1: $81
	ld   bc, $8589                                   ; $4dc2: $01 $89 $85
	add  b                                           ; $4dc5: $80
	dec  b                                           ; $4dc6: $05
	ld   b, $86                                      ; $4dc7: $06 $86
	add  h                                           ; $4dc9: $84
	rlca                                             ; $4dca: $07
	ret  nz                                          ; $4dcb: $c0

	rlca                                             ; $4dcc: $07
	rst  $28                                         ; $4dcd: $ef
	rrca                                             ; $4dce: $0f
	add  c                                           ; $4dcf: $81
	ld   l, a                                        ; $4dd0: $6f
	ld   [bc], a                                     ; $4dd1: $02
	ld   c, b                                        ; $4dd2: $48
	ld   b, b                                        ; $4dd3: $40
	ld   b, a                                        ; $4dd4: $47
	add  b                                           ; $4dd5: $80
	ld   b, b                                        ; $4dd6: $40
	ld   b, $42                                      ; $4dd7: $06 $42
	ldh  [c], a                                      ; $4dd9: $e2
	ld   h, a                                        ; $4dda: $67
	rst  $20                                         ; $4ddb: $e7
	nop                                              ; $4ddc: $00
	add  sp, -$40                                    ; $4ddd: $e8 $c0
	add  b                                           ; $4ddf: $80
	rst  JumpTable                                         ; $4de0: $df
	add  b                                           ; $4de1: $80
	ret  nz                                          ; $4de2: $c0

	inc  bc                                          ; $4de3: $03
	ld   e, a                                        ; $4de4: $5f
	ld   a, a                                        ; $4de5: $7f
	pop  hl                                          ; $4de6: $e1
	ld   bc, $d180                                   ; $4de7: $01 $80 $d1
	nop                                              ; $4dea: $00
	ld   bc, $ff80                                   ; $4deb: $01 $80 $ff
	add  hl, bc                                      ; $4dee: $09
	ld   bc, $3433                                   ; $4def: $01 $33 $34
	daa                                              ; $4df2: $27
	jr   z, jr_08e_4e20                              ; $4df3: $28 $2b

	jr   z, jr_08e_4e20                              ; $4df5: $28 $29

	jr   z, jr_08e_4e23                              ; $4df7: $28 $2a

	add  b                                           ; $4df9: $80
	jr   nz, jr_08e_4dfc                             ; $4dfa: $20 $00

jr_08e_4dfc:
	ld   [hl+], a                                    ; $4dfc: $22
	add  d                                           ; $4dfd: $82
	ld   [bc], a                                     ; $4dfe: $02
	dec  bc                                          ; $4dff: $0b
	adc  l                                           ; $4e00: $8d
	ld   h, b                                        ; $4e01: $60
	ld   e, [hl]                                     ; $4e02: $5e
	ld   h, b                                        ; $4e03: $60
	ld   h, $60                                      ; $4e04: $26 $60
	ld   h, d                                        ; $4e06: $62
	ld   h, b                                        ; $4e07: $60
	call nc, $55e1                                   ; $4e08: $d4 $e1 $55
	pop  af                                          ; $4e0b: $f1
	add  d                                           ; $4e0c: $82
	nop                                              ; $4e0d: $00
	dec  bc                                          ; $4e0e: $0b
	cpl                                              ; $4e0f: $2f
	rst  $38                                         ; $4e10: $ff
	xor  l                                           ; $4e11: $ad
	rst  $38                                         ; $4e12: $ff
	ld   hl, $b2e7                                   ; $4e13: $21 $e7 $b2
	cp   $50                                         ; $4e16: $fe $50
	ld   a, h                                        ; $4e18: $7c
	db   $10                                         ; $4e19: $10
	jr   nc, jr_08e_4d9e                             ; $4e1a: $30 $82

	nop                                              ; $4e1c: $00
	dec  b                                           ; $4e1d: $05
	sub  c                                           ; $4e1e: $91
	sub  l                                           ; $4e1f: $95

jr_08e_4e20:
	xor  l                                           ; $4e20: $ad
	or   l                                           ; $4e21: $b5
	sbc  l                                           ; $4e22: $9d

jr_08e_4e23:
	add  l                                           ; $4e23: $85
	adc  b                                           ; $4e24: $88
	sub  h                                           ; $4e25: $94
	ld   [bc], a                                     ; $4e26: $02
	dec  h                                           ; $4e27: $25
	ld   h, $21                                      ; $4e28: $26 $21
	add  c                                           ; $4e2a: $81
	daa                                              ; $4e2b: $27
	ld   bc, $2021                                   ; $4e2c: $01 $21 $20
	add  b                                           ; $4e2f: $80
	inc  hl                                          ; $4e30: $23
	nop                                              ; $4e31: $00
	daa                                              ; $4e32: $27
	add  b                                           ; $4e33: $80
	ld   h, $80                                      ; $4e34: $26 $80
	inc  h                                           ; $4e36: $24
	ld   [bc], a                                     ; $4e37: $02

jr_08e_4e38:
	ld   h, $fe                                      ; $4e38: $26 $fe
	nop                                              ; $4e3a: $00
	add  e                                           ; $4e3b: $83
	rst  $38                                         ; $4e3c: $ff
	inc  bc                                          ; $4e3d: $03
	rra                                              ; $4e3e: $1f
	sbc  a                                           ; $4e3f: $9f
	ld   l, a                                        ; $4e40: $6f
	cpl                                              ; $4e41: $2f
	add  b                                           ; $4e42: $80
	scf                                              ; $4e43: $37
	inc  b                                           ; $4e44: $04
	ld   [hl], b                                     ; $4e45: $70
	jr   nc, jr_08e_4e38                             ; $4e46: $30 $f0

	adc  a                                           ; $4e48: $8f
	nop                                              ; $4e49: $00
	add  e                                           ; $4e4a: $83
	rst  $38                                         ; $4e4b: $ff
	nop                                              ; $4e4c: $00
	nop                                              ; $4e4d: $00
	add  h                                           ; $4e4e: $84
	ld   a, a                                        ; $4e4f: $7f
	inc  b                                           ; $4e50: $04
	nop                                              ; $4e51: $00
	ld   a, a                                        ; $4e52: $7f
	ld   a, h                                        ; $4e53: $7c
	inc  c                                           ; $4e54: $0c
	inc  bc                                          ; $4e55: $03
	add  c                                           ; $4e56: $81
	rrca                                             ; $4e57: $0f
	ld   bc, $0f0c                                   ; $4e58: $01 $0c $0f
	add  b                                           ; $4e5b: $80
	inc  b                                           ; $4e5c: $04
	add  d                                           ; $4e5d: $82
	nop                                              ; $4e5e: $00
	inc  bc                                          ; $4e5f: $03
	inc  c                                           ; $4e60: $0c
	rrca                                             ; $4e61: $0f
	rst  $38                                         ; $4e62: $ff
	nop                                              ; $4e63: $00
	add  d                                           ; $4e64: $82
	db   $fc                                         ; $4e65: $fc
	ld   bc, $fc00                                   ; $4e66: $01 $00 $fc
	add  b                                           ; $4e69: $80
	sub  b                                           ; $4e6a: $90
	add  e                                           ; $4e6b: $83
	nop                                              ; $4e6c: $00
	ld   bc, $7cfc                                   ; $4e6d: $01 $fc $7c
	adc  e                                           ; $4e70: $8b
	add  b                                           ; $4e71: $80
	add  b                                           ; $4e72: $80
	rst  $38                                         ; $4e73: $ff
	adc  h                                           ; $4e74: $8c
	nop                                              ; $4e75: $00
	add  b                                           ; $4e76: $80
	rst  $38                                         ; $4e77: $ff

jr_08e_4e78:
	adc  h                                           ; $4e78: $8c
	nop                                              ; $4e79: $00
	add  b                                           ; $4e7a: $80
	rst  $38                                         ; $4e7b: $ff
	add  b                                           ; $4e7c: $80
	sub  b                                           ; $4e7d: $90
	ld   [bc], a                                     ; $4e7e: $02
	sub  e                                           ; $4e7f: $93
	sbc  h                                           ; $4e80: $9c
	sub  e                                           ; $4e81: $93

jr_08e_4e82:
	add  c                                           ; $4e82: $81
	sbc  a                                           ; $4e83: $9f
	nop                                              ; $4e84: $00
	add  e                                           ; $4e85: $83
	add  l                                           ; $4e86: $85
	add  b                                           ; $4e87: $80
	add  b                                           ; $4e88: $80
	rrca                                             ; $4e89: $0f
	inc  b                                           ; $4e8a: $04
	call z, $cc0f                                    ; $4e8b: $cc $0f $cc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e8e: $cf
	ret  nz                                          ; $4e8f: $c0

	add  b                                           ; $4e90: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e91: $cf
	nop                                              ; $4e92: $00
	nop                                              ; $4e93: $00
	add  b                                           ; $4e94: $80
	dec  bc                                          ; $4e95: $0b
	add  b                                           ; $4e96: $80
	ld   e, e                                        ; $4e97: $5b
	dec  c                                           ; $4e98: $0d
	db   $dd                                         ; $4e99: $dd
	rst  JumpTable                                         ; $4e9a: $df
	ld   [$63e3], a                                  ; $4e9b: $ea $e3 $63
	rst  $20                                         ; $4e9e: $e7
	ld   h, a                                        ; $4e9f: $67
	ldh  [rP1], a                                    ; $4ea0: $e0 $00
	pop  hl                                          ; $4ea2: $e1
	jp   hl                                          ; $4ea3: $e9


	rrca                                             ; $4ea4: $0f
	ld   l, a                                        ; $4ea5: $6f
	ld   h, b                                        ; $4ea6: $60

jr_08e_4ea7:
	add  b                                           ; $4ea7: $80
	ld   l, l                                        ; $4ea8: $6d
	inc  b                                           ; $4ea9: $04
	ld   b, l                                        ; $4eaa: $45
	ld   l, l                                        ; $4eab: $6d
	ld   h, c                                        ; $4eac: $61
	ld   l, c                                        ; $4ead: $69
	ld   hl, $ff80                                   ; $4eae: $21 $80 $ff
	ld   b, $01                                      ; $4eb1: $06 $01
	ld   b, c                                        ; $4eb3: $41
	ret                                              ; $4eb4: $c9


	adc  c                                           ; $4eb5: $89
	rst  $38                                         ; $4eb6: $ff
	cp   $00                                         ; $4eb7: $fe $00
	add  d                                           ; $4eb9: $82
	or   h                                           ; $4eba: $b4
	nop                                              ; $4ebb: $00
	nop                                              ; $4ebc: $00
	add  d                                           ; $4ebd: $82
	ld   [bc], a                                     ; $4ebe: $02
	add  b                                           ; $4ebf: $80
	dec  b                                           ; $4ec0: $05
	add  b                                           ; $4ec1: $80
	ld   a, [bc]                                     ; $4ec2: $0a
	add  c                                           ; $4ec3: $81
	nop                                              ; $4ec4: $00
	add  b                                           ; $4ec5: $80
	ld   bc, $0880                                   ; $4ec6: $01 $80 $08
	ld   bc, $3f3b                                   ; $4ec9: $01 $3b $3f
	add  c                                           ; $4ecc: $81
	inc  b                                           ; $4ecd: $04
	add  b                                           ; $4ece: $80
	ld   a, [bc]                                     ; $4ecf: $0a
	add  b                                           ; $4ed0: $80
	sub  l                                           ; $4ed1: $95
	nop                                              ; $4ed2: $00
	nop                                              ; $4ed3: $00
	add  b                                           ; $4ed4: $80
	inc  sp                                          ; $4ed5: $33
	dec  b                                           ; $4ed6: $05
	add  a                                           ; $4ed7: $87
	add  b                                           ; $4ed8: $80
	ld   a, b                                        ; $4ed9: $78
	nop                                              ; $4eda: $00
	add  b                                           ; $4edb: $80
	rst  $38                                         ; $4edc: $ff
	add  h                                           ; $4edd: $84
	nop                                              ; $4ede: $00
	add  d                                           ; $4edf: $82
	or   [hl]                                        ; $4ee0: $b6
	nop                                              ; $4ee1: $00
	rst  $38                                         ; $4ee2: $ff
	add  c                                           ; $4ee3: $81
	nop                                              ; $4ee4: $00
	inc  bc                                          ; $4ee5: $03
	ld   e, a                                        ; $4ee6: $5f
	cp   h                                           ; $4ee7: $bc
	inc  e                                           ; $4ee8: $1c
	nop                                              ; $4ee9: $00
	add  d                                           ; $4eea: $82
	ld   a, [de]                                     ; $4eeb: $1a
	add  d                                           ; $4eec: $82
	db   $db                                         ; $4eed: $db
	nop                                              ; $4eee: $00
	rst  $38                                         ; $4eef: $ff
	add  c                                           ; $4ef0: $81
	nop                                              ; $4ef1: $00
	inc  bc                                          ; $4ef2: $03
	db   $db                                         ; $4ef3: $db
	daa                                              ; $4ef4: $27
	inc  hl                                          ; $4ef5: $23
	jr   nz, jr_08e_4e78                             ; $4ef6: $20 $80

	inc  hl                                          ; $4ef8: $23
	add  b                                           ; $4ef9: $80
	ld   h, $80                                      ; $4efa: $26 $80
	inc  hl                                          ; $4efc: $23
	add  b                                           ; $4efd: $80
	jr   nz, jr_08e_4e82                             ; $4efe: $20 $82

	ld   hl, $0700                                   ; $4f00: $21 $00 $07
	add  b                                           ; $4f03: $80
	rst  $30                                         ; $4f04: $f7
	dec  c                                           ; $4f05: $0d
	rla                                              ; $4f06: $17
	add  h                                           ; $4f07: $84
	rst  $30                                         ; $4f08: $f7
	ld   h, a                                        ; $4f09: $67
	rlca                                             ; $4f0a: $07
	add  a                                           ; $4f0b: $87
	rst  $30                                         ; $4f0c: $f7
	ld   [hl], e                                     ; $4f0d: $73
	nop                                              ; $4f0e: $00
	call c, $dbdf                                    ; $4f0f: $dc $df $db
	rst  JumpTable                                         ; $4f12: $df
	rlca                                             ; $4f13: $07
	add  c                                           ; $4f14: $81
	nop                                              ; $4f15: $00
	add  d                                           ; $4f16: $82
	sub  [hl]                                        ; $4f17: $96
	add  b                                           ; $4f18: $80
	rst  $30                                         ; $4f19: $f7
	add  b                                           ; $4f1a: $80
	rlca                                             ; $4f1b: $07
	add  b                                           ; $4f1c: $80
	rst  $30                                         ; $4f1d: $f7
	nop                                              ; $4f1e: $00
	nop                                              ; $4f1f: $00
	add  b                                           ; $4f20: $80
	ldh  a, [rP1]                                    ; $4f21: $f0 $00
	nop                                              ; $4f23: $00
	add  e                                           ; $4f24: $83
	jr   nc, jr_08e_4ea7                             ; $4f25: $30 $80

	ld   sp, $3300                                   ; $4f27: $31 $00 $33
	add  b                                           ; $4f2a: $80
	inc  bc                                          ; $4f2b: $03
	add  b                                           ; $4f2c: $80
	inc  sp                                          ; $4f2d: $33
	add  c                                           ; $4f2e: $81
	inc  bc                                          ; $4f2f: $03
	nop                                              ; $4f30: $00
	nop                                              ; $4f31: $00
	add  e                                           ; $4f32: $83
	inc  bc                                          ; $4f33: $03
	add  c                                           ; $4f34: $81
	rst  $38                                         ; $4f35: $ff
	add  l                                           ; $4f36: $85
	db   $fc                                         ; $4f37: $fc
	add  c                                           ; $4f38: $81
	nop                                              ; $4f39: $00
	ld   bc, $80ff                                   ; $4f3a: $01 $ff $80
	add  d                                           ; $4f3d: $82
	cp   a                                           ; $4f3e: $bf
	ld   bc, $ffc0                                   ; $4f3f: $01 $c0 $ff
	add  b                                           ; $4f42: $80
	db   $e4                                         ; $4f43: $e4
	ld   bc, $c080                                   ; $4f44: $01 $80 $c0
	add  d                                           ; $4f47: $82
	nop                                              ; $4f48: $00
	ld   bc, $00ff                                   ; $4f49: $01 $ff $00
	add  d                                           ; $4f4c: $82
	rst  $38                                         ; $4f4d: $ff
	ld   bc, $ff00                                   ; $4f4e: $01 $00 $ff
	add  b                                           ; $4f51: $80
	sub  d                                           ; $4f52: $92
	add  h                                           ; $4f53: $84
	nop                                              ; $4f54: $00
	ld   bc, $00ff                                   ; $4f55: $01 $ff $00
	add  d                                           ; $4f58: $82
	rst  $38                                         ; $4f59: $ff
	ld   bc, $ff00                                   ; $4f5a: $01 $00 $ff
	add  b                                           ; $4f5d: $80
	ld   c, c                                        ; $4f5e: $49
	add  d                                           ; $4f5f: $82
	nop                                              ; $4f60: $00
	add  b                                           ; $4f61: $80
	ld   [bc], a                                     ; $4f62: $02
	ld   bc, $02e2                                   ; $4f63: $01 $e2 $02
	add  d                                           ; $4f66: $82
	ldh  [c], a                                      ; $4f67: $e2
	ld   bc, $e202                                   ; $4f68: $01 $02 $e2
	add  b                                           ; $4f6b: $80
	ld   [hl+], a                                    ; $4f6c: $22
	add  b                                           ; $4f6d: $80
	ld   [bc], a                                     ; $4f6e: $02
	db   $10                                         ; $4f6f: $10
	ret  z                                           ; $4f70: $c8

	ret  c                                           ; $4f71: $d8

	ldh  [$f8], a                                    ; $4f72: $e0 $f8
	xor  c                                           ; $4f74: $a9
	ld   sp, hl                                      ; $4f75: $f9
	cp   c                                           ; $4f76: $b9
	ld   sp, hl                                      ; $4f77: $f9
	add  hl, sp                                      ; $4f78: $39
	ld   sp, hl                                      ; $4f79: $f9
	ld   a, [hl]                                     ; $4f7a: $7e
	ld   hl, sp+$7a                                  ; $4f7b: $f8 $7a
	ld   a, [$da02]                                  ; $4f7d: $fa $02 $da
	ld   b, $81                                      ; $4f80: $06 $81
	nop                                              ; $4f82: $00
	ld   bc, $80ff                                   ; $4f83: $01 $ff $80
	add  d                                           ; $4f86: $82
	rst  $38                                         ; $4f87: $ff
	ld   bc, $7f00                                   ; $4f88: $01 $00 $7f
	add  [hl]                                        ; $4f8b: $86
	nop                                              ; $4f8c: $00
	ld   bc, $00ff                                   ; $4f8d: $01 $ff $00
	add  c                                           ; $4f90: $81
	rst  $38                                         ; $4f91: $ff
	inc  d                                           ; $4f92: $14
	cp   $03                                         ; $4f93: $fe $03
	db   $fc                                         ; $4f95: $fc
	ld   [bc], a                                     ; $4f96: $02
	nop                                              ; $4f97: $00
	dec  b                                           ; $4f98: $05
	ld   [hl], b                                     ; $4f99: $70
	ld   [hl], l                                     ; $4f9a: $75
	nop                                              ; $4f9b: $00
	inc  c                                           ; $4f9c: $0c
	nop                                              ; $4f9d: $00
	di                                               ; $4f9e: $f3
	nop                                              ; $4f9f: $00
	adc  h                                           ; $4fa0: $8c
	nop                                              ; $4fa1: $00
	or   b                                           ; $4fa2: $b0
	nop                                              ; $4fa3: $00
	ld   b, b                                        ; $4fa4: $40
	nop                                              ; $4fa5: $00
	add  b                                           ; $4fa6: $80
	ld   [$1880], sp                                 ; $4fa7: $08 $80 $18
	ld   [bc], a                                     ; $4faa: $02
	ldh  a, [rAUD2LOW]                               ; $4fab: $f0 $18
	ldh  [$85], a                                    ; $4fad: $e0 $85
	nop                                              ; $4faf: $00
	ld   b, $0e                                      ; $4fb0: $06 $0e
	rrca                                             ; $4fb2: $0f
	ld   bc, $7800                                   ; $4fb3: $01 $00 $78
	ld   a, a                                        ; $4fb6: $7f
	rlca                                             ; $4fb7: $07
	add  b                                           ; $4fb8: $80
	nop                                              ; $4fb9: $00
	add  b                                           ; $4fba: $80
	dec  d                                           ; $4fbb: $15
	add  b                                           ; $4fbc: $80
	ld   a, [hl+]                                    ; $4fbd: $2a
	inc  bc                                          ; $4fbe: $03
	ld   d, l                                        ; $4fbf: $55
	xor  d                                           ; $4fc0: $aa
	rst  $38                                         ; $4fc1: $ff
	nop                                              ; $4fc2: $00
	add  b                                           ; $4fc3: $80
	rst  $38                                         ; $4fc4: $ff
	add  b                                           ; $4fc5: $80
	nop                                              ; $4fc6: $00
	add  b                                           ; $4fc7: $80
	rst  $38                                         ; $4fc8: $ff
	add  b                                           ; $4fc9: $80
	nop                                              ; $4fca: $00
	ld   [bc], a                                     ; $4fcb: $02
	ld   a, a                                        ; $4fcc: $7f
	ld   a, e                                        ; $4fcd: $7b
	ei                                               ; $4fce: $fb
	add  b                                           ; $4fcf: $80
	pop  af                                          ; $4fd0: $f1
	inc  b                                           ; $4fd1: $04
	nop                                              ; $4fd2: $00
	ld   [$e000], a                                  ; $4fd3: $ea $00 $e0
	push af                                          ; $4fd6: $f5
	add  b                                           ; $4fd7: $80
	nop                                              ; $4fd8: $00
	ld   bc, $deff                                   ; $4fd9: $01 $ff $de
	add  e                                           ; $4fdc: $83
	ld   hl, $2082                                   ; $4fdd: $21 $82 $20
	ld   [bc], a                                     ; $4fe0: $02
	ld   hl, $2126                                   ; $4fe1: $21 $26 $21
	add  c                                           ; $4fe4: $81
	daa                                              ; $4fe5: $27
	nop                                              ; $4fe6: $00
	reti                                             ; $4fe7: $d9


	add  e                                           ; $4fe8: $83
	rst  JumpTable                                         ; $4fe9: $df
	nop                                              ; $4fea: $00
	rlca                                             ; $4feb: $07
	add  c                                           ; $4fec: $81
	nop                                              ; $4fed: $00
	ld   bc, $00ff                                   ; $4fee: $01 $ff $00
	add  d                                           ; $4ff1: $82
	rst  $38                                         ; $4ff2: $ff
	nop                                              ; $4ff3: $00
	cp   $83                                         ; $4ff4: $fe $83
	rst  $30                                         ; $4ff6: $f7
	nop                                              ; $4ff7: $00
	or   $81                                         ; $4ff8: $f6 $81
	nop                                              ; $4ffa: $00
	ld   bc, $00ff                                   ; $4ffb: $01 $ff $00
	add  c                                           ; $4ffe: $81
	rst  $38                                         ; $4fff: $ff
	add  b                                           ; $5000: $80
	adc  a                                           ; $5001: $8f
	nop                                              ; $5002: $00
	rrca                                             ; $5003: $0f
	add  b                                           ; $5004: $80
	ld   c, $80                                      ; $5005: $0e $80
	dec  b                                           ; $5007: $05
	ld   b, $0a                                      ; $5008: $06 $0a
	ld   a, [de]                                     ; $500a: $1a
	stop                                             ; $500b: $10 $00
	ret  z                                           ; $500d: $c8

	jr   jr_08e_5020                                 ; $500e: $18 $10

	add  c                                           ; $5010: $81
	ret  nc                                          ; $5011: $d0

	db   $10                                         ; $5012: $10
	db   $e3                                         ; $5013: $e3
	db   $fc                                         ; $5014: $fc
	cp   [hl]                                        ; $5015: $be
	cp   $16                                         ; $5016: $fe $16
	cp   $83                                         ; $5018: $fe $83
	rst  $38                                         ; $501a: $ff
	pop  de                                          ; $501b: $d1
	rst  $38                                         ; $501c: $ff
	pop  af                                          ; $501d: $f1
	rst  $38                                         ; $501e: $ff
	pop  af                                          ; $501f: $f1

jr_08e_5020:
	rst  $38                                         ; $5020: $ff
	ld   sp, hl                                      ; $5021: $f9
	rst  $38                                         ; $5022: $ff
	db   $fc                                         ; $5023: $fc
	add  e                                           ; $5024: $83
	nop                                              ; $5025: $00
	add  d                                           ; $5026: $82
	rst  $38                                         ; $5027: $ff
	rlca                                             ; $5028: $07
	cp   $ff                                         ; $5029: $fe $ff
	cp   $ff                                         ; $502b: $fe $ff
	cp   $ff                                         ; $502d: $fe $ff
	ld   bc, $8000                                   ; $502f: $01 $00 $80
	dec  b                                           ; $5032: $05
	add  b                                           ; $5033: $80
	ld   a, [hl-]                                    ; $5034: $3a
	ld   a, [bc]                                     ; $5035: $0a
	xor  b                                           ; $5036: $a8
	rst  $38                                         ; $5037: $ff
	rlca                                             ; $5038: $07
	rst  $38                                         ; $5039: $ff
	cpl                                              ; $503a: $2f
	rst  $38                                         ; $503b: $ff
	ccf                                              ; $503c: $3f
	rst  $38                                         ; $503d: $ff
	ccf                                              ; $503e: $3f
	rst  $38                                         ; $503f: $ff
	ld   a, a                                        ; $5040: $7f
	add  c                                           ; $5041: $81
	nop                                              ; $5042: $00
	add  b                                           ; $5043: $80
	ldh  [$0a], a                                    ; $5044: $e0 $0a
	xor  a                                           ; $5046: $af
	rst  $38                                         ; $5047: $ff
	rlca                                             ; $5048: $07
	rst  $38                                         ; $5049: $ff
	and  e                                           ; $504a: $a3
	rst  $38                                         ; $504b: $ff
	db   $e3                                         ; $504c: $e3
	rst  $38                                         ; $504d: $ff
	db   $e3                                         ; $504e: $e3
	rst  $38                                         ; $504f: $ff
	rst  $30                                         ; $5050: $f7
	add  c                                           ; $5051: $81
	inc  bc                                          ; $5052: $03
	ld   b, $06                                      ; $5053: $06 $06

jr_08e_5055:
	rlca                                             ; $5055: $07
	cp   $ff                                         ; $5056: $fe $ff
	cp   $ff                                         ; $5058: $fe $ff
	cp   $83                                         ; $505a: $fe $83

jr_08e_505c:
	rst  $38                                         ; $505c: $ff
	ld   bc, $06fe                                   ; $505d: $01 $fe $06
	add  b                                           ; $5060: $80
	nop                                              ; $5061: $00
	add  b                                           ; $5062: $80
	add  e                                           ; $5063: $83
	add  b                                           ; $5064: $80
	inc  bc                                          ; $5065: $03
	add  b                                           ; $5066: $80
	and  e                                           ; $5067: $a3
	add  b                                           ; $5068: $80
	ld   d, e                                        ; $5069: $53
	add  b                                           ; $506a: $80
	db   $eb                                         ; $506b: $eb
	add  b                                           ; $506c: $80
	ei                                               ; $506d: $fb
	ld   b, $04                                      ; $506e: $06 $04
	db   $fc                                         ; $5070: $fc
	ld   bc, $0400                                   ; $5071: $01 $00 $04
	inc  c                                           ; $5074: $0c
	inc  l                                           ; $5075: $2c
	add  c                                           ; $5076: $81
	ld   l, h                                        ; $5077: $6c
	ld   b, $6d                                      ; $5078: $06 $6d
	ld   l, h                                        ; $507a: $6c
	ld   l, b                                        ; $507b: $68
	ld   h, b                                        ; $507c: $60
	ld   b, b                                        ; $507d: $40
	nop                                              ; $507e: $00
	inc  b                                           ; $507f: $04
	add  b                                           ; $5080: $80
	ld   [hl], b                                     ; $5081: $70
	add  l                                           ; $5082: $85
	pop  af                                          ; $5083: $f1
	nop                                              ; $5084: $00
	or   c                                           ; $5085: $b1
	add  e                                           ; $5086: $83
	ld   sp, $1d01                                   ; $5087: $31 $01 $1d
	ld   l, e                                        ; $508a: $6b
	add  b                                           ; $508b: $80
	and  e                                           ; $508c: $a3
	add  b                                           ; $508d: $80
	adc  e                                           ; $508e: $8b
	add  b                                           ; $508f: $80
	dec  hl                                          ; $5090: $2b
	add  h                                           ; $5091: $84
	ld   l, e                                        ; $5092: $6b
	add  b                                           ; $5093: $80
	ld   l, d                                        ; $5094: $6a
	inc  b                                           ; $5095: $04
	inc  bc                                          ; $5096: $03
	nop                                              ; $5097: $00
	ld   c, c                                        ; $5098: $49
	ld   b, b                                        ; $5099: $40
	ld   h, h                                        ; $509a: $64
	add  c                                           ; $509b: $81
	ld   b, b                                        ; $509c: $40
	ld   [bc], a                                     ; $509d: $02
	ld   d, d                                        ; $509e: $52
	ld   a, a                                        ; $509f: $7f
	rst  $38                                         ; $50a0: $ff
	add  b                                           ; $50a1: $80
	push de                                          ; $50a2: $d5
	rlca                                             ; $50a3: $07
	rst  $38                                         ; $50a4: $ff
	ld   d, l                                        ; $50a5: $55
	rst  $38                                         ; $50a6: $ff
	sbc  d                                           ; $50a7: $9a
	jr   nc, jr_08e_50e0                             ; $50a8: $30 $36

	jr   nc, jr_08e_505c                             ; $50aa: $30 $b0

	add  c                                           ; $50ac: $81
	nop                                              ; $50ad: $00
	nop                                              ; $50ae: $00
	ld   c, c                                        ; $50af: $49
	add  b                                           ; $50b0: $80
	rst  $38                                         ; $50b1: $ff
	add  b                                           ; $50b2: $80
	ld   d, l                                        ; $50b3: $55
	rlca                                             ; $50b4: $07
	rst  $38                                         ; $50b5: $ff
	ld   d, l                                        ; $50b6: $55
	rst  $38                                         ; $50b7: $ff
	xor  d                                           ; $50b8: $aa
	nop                                              ; $50b9: $00
	add  b                                           ; $50ba: $80
	nop                                              ; $50bb: $00
	ld   e, e                                        ; $50bc: $5b
	add  c                                           ; $50bd: $81
	nop                                              ; $50be: $00
	nop                                              ; $50bf: $00
	inc  h                                           ; $50c0: $24
	add  b                                           ; $50c1: $80
	rst  $38                                         ; $50c2: $ff
	add  b                                           ; $50c3: $80
	ld   d, l                                        ; $50c4: $55
	dec  b                                           ; $50c5: $05
	rst  $38                                         ; $50c6: $ff
	ld   d, l                                        ; $50c7: $55
	rst  $38                                         ; $50c8: $ff
	adc  h                                           ; $50c9: $8c
	daa                                              ; $50ca: $27
	ld   hl, $2086                                   ; $50cb: $21 $86 $20
	add  b                                           ; $50ce: $80

jr_08e_50cf:
	ld   hl, $2680                                   ; $50cf: $21 $80 $26
	nop                                              ; $50d2: $00
	jr   nz, jr_08e_5055                             ; $50d3: $20 $80

	rst  $38                                         ; $50d5: $ff
	add  d                                           ; $50d6: $82
	nop                                              ; $50d7: $00
	add  b                                           ; $50d8: $80
	rlca                                             ; $50d9: $07
	add  b                                           ; $50da: $80
	jr   c, @+$04                                    ; $50db: $38 $02

	call nz, $22c2                                   ; $50dd: $c4 $c2 $22

jr_08e_50e0:
	add  c                                           ; $50e0: $81
	ld   [de], a                                     ; $50e1: $12
	ld   bc, $a096                                   ; $50e2: $01 $96 $a0
	add  b                                           ; $50e5: $80
	add  hl, hl                                      ; $50e6: $29
	add  b                                           ; $50e7: $80
	and  b                                           ; $50e8: $a0
	add  b                                           ; $50e9: $80
	nop                                              ; $50ea: $00
	nop                                              ; $50eb: $00
	add  b                                           ; $50ec: $80
	add  d                                           ; $50ed: $82
	ld   b, b                                        ; $50ee: $40
	add  c                                           ; $50ef: $81
	ld   e, a                                        ; $50f0: $5f
	ld   bc, $10d0                                   ; $50f1: $01 $d0 $10
	add  b                                           ; $50f4: $80
	ld   e, b                                        ; $50f5: $58
	ld   bc, $0010                                   ; $50f6: $01 $10 $00
	add  b                                           ; $50f9: $80
	ld   a, [bc]                                     ; $50fa: $0a
	add  b                                           ; $50fb: $80
	dec  b                                           ; $50fc: $05
	ld   [bc], a                                     ; $50fd: $02
	ld   c, $1e                                      ; $50fe: $0e $1e
	rra                                              ; $5100: $1f
	add  c                                           ; $5101: $81
	rst  $38                                         ; $5102: $ff
	inc  c                                           ; $5103: $0c
	ei                                               ; $5104: $fb
	cp   $f0                                         ; $5105: $fe $f0
	cp   $f0                                         ; $5107: $fe $f0
	cp   $d0                                         ; $5109: $fe $d0

jr_08e_510b:
	cp   $82                                         ; $510b: $fe $82
	cp   $16                                         ; $510d: $fe $16
	cp   $be                                         ; $510f: $fe $be
	add  c                                           ; $5111: $81
	cp   $82                                         ; $5112: $fe $82
	nop                                              ; $5114: $00
	ld   bc, $407f                                   ; $5115: $01 $7f $40
	add  b                                           ; $5118: $80
	ld   a, a                                        ; $5119: $7f
	ld   bc, $7f40                                   ; $511a: $01 $40 $7f
	adc  b                                           ; $511d: $88
	nop                                              ; $511e: $00
	ld   bc, $00ff                                   ; $511f: $01 $ff $00
	add  b                                           ; $5122: $80
	rst  $38                                         ; $5123: $ff
	ld   bc, $c120                                   ; $5124: $01 $20 $c1
	add  e                                           ; $5127: $83
	rra                                              ; $5128: $1f
	ld   bc, $1617                                   ; $5129: $01 $17 $16
	add  c                                           ; $512c: $81
	nop                                              ; $512d: $00
	nop                                              ; $512e: $00
	cp   $80                                         ; $512f: $fe $80
	nop                                              ; $5131: $00
	ld   bc, $80fe                                   ; $5132: $01 $fe $80
	add  e                                           ; $5135: $83
	ld   a, [hl]                                     ; $5136: $7e
	add  b                                           ; $5137: $80
	ld   [bc], a                                     ; $5138: $02
	nop                                              ; $5139: $00
	cp   $81                                         ; $513a: $fe $81
	nop                                              ; $513c: $00
	inc  bc                                          ; $513d: $03
	ld   b, b                                        ; $513e: $40
	ld   a, a                                        ; $513f: $7f
	nop                                              ; $5140: $00
	ccf                                              ; $5141: $3f
	add  b                                           ; $5142: $80
	rlca                                             ; $5143: $07
	rlca                                             ; $5144: $07
	jr   c, jr_08e_5147                              ; $5145: $38 $00

jr_08e_5147:
	ld   b, c                                        ; $5147: $41
	inc  b                                           ; $5148: $04
	ld   a, c                                        ; $5149: $79
	ld   a, l                                        ; $514a: $7d
	ld   e, c                                        ; $514b: $59
	jr   nz, jr_08e_50cf                             ; $514c: $20 $81

	nop                                              ; $514e: $00
	ld   [bc], a                                     ; $514f: $02
	rst  $38                                         ; $5150: $ff
	nop                                              ; $5151: $00
	rst  $38                                         ; $5152: $ff
	add  b                                           ; $5153: $80
	inc  e                                           ; $5154: $1c
	ld   b, $e3                                      ; $5155: $06 $e3
	nop                                              ; $5157: $00
	inc  b                                           ; $5158: $04
	db   $10                                         ; $5159: $10
	rst  $20                                         ; $515a: $e7
	rst  $30                                         ; $515b: $f7
	rst  $20                                         ; $515c: $e7
	add  d                                           ; $515d: $82
	nop                                              ; $515e: $00
	ld   [bc], a                                     ; $515f: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5160: $cf
	ld   bc, $80cf                                   ; $5161: $01 $cf $80
	ld   c, a                                        ; $5164: $4f
	ld   b, $8f                                      ; $5165: $06 $8f
	ld   c, $0f                                      ; $5167: $0e $0f
	ld   c, a                                        ; $5169: $4f
	adc  [hl]                                        ; $516a: $8e
	adc  $81                                         ; $516b: $ce $81
	add  c                                           ; $516d: $81
	ld   bc, $b903                                   ; $516e: $01 $03 $b9
	ld   sp, hl                                      ; $5171: $f9
	ld   b, c                                        ; $5172: $41
	pop  bc                                          ; $5173: $c1
	add  b                                           ; $5174: $80
	adc  c                                           ; $5175: $89
	rlca                                             ; $5176: $07
	ld   h, c                                        ; $5177: $61
	ld   b, c                                        ; $5178: $41
	xor  c                                           ; $5179: $a9
	adc  c                                           ; $517a: $89
	ld   b, c                                        ; $517b: $41
	ld   bc, $6ae9                                   ; $517c: $01 $e9 $6a
	add  c                                           ; $517f: $81
	ld   l, b                                        ; $5180: $68
	nop                                              ; $5181: $00
	ld   l, c                                        ; $5182: $69
	add  d                                           ; $5183: $82
	ld   l, e                                        ; $5184: $6b
	inc  bc                                          ; $5185: $03
	ld   c, e                                        ; $5186: $4b
	ld   c, d                                        ; $5187: $4a
	dec  hl                                          ; $5188: $2b
	jr   z, jr_08e_510b                              ; $5189: $28 $80

	xor  b                                           ; $518b: $a8
	inc  b                                           ; $518c: $04
	ld   d, l                                        ; $518d: $55
	rst  $38                                         ; $518e: $ff
	db   $eb                                         ; $518f: $eb
	rst  $38                                         ; $5190: $ff
	cp   [hl]                                        ; $5191: $be
	add  l                                           ; $5192: $85
	rst  $38                                         ; $5193: $ff
	ld   [$ff28], sp                                 ; $5194: $08 $28 $ff
	jr   z, jr_08e_5199                              ; $5197: $28 $00

jr_08e_5199:
	ld   d, l                                        ; $5199: $55
	rst  $38                                         ; $519a: $ff
	cp   [hl]                                        ; $519b: $be
	rst  $38                                         ; $519c: $ff
	db   $eb                                         ; $519d: $eb
	add  c                                           ; $519e: $81

jr_08e_519f:
	rst  $38                                         ; $519f: $ff
	dec  b                                           ; $51a0: $05
	add  sp, -$01                                    ; $51a1: $e8 $ff
	add  sp, -$01                                    ; $51a3: $e8 $ff
	nop                                              ; $51a5: $00
	rst  $38                                         ; $51a6: $ff
	add  b                                           ; $51a7: $80
	nop                                              ; $51a8: $00
	ld   [bc], a                                     ; $51a9: $02
	ld   d, l                                        ; $51aa: $55
	rst  $38                                         ; $51ab: $ff
	xor  d                                           ; $51ac: $aa
	add  c                                           ; $51ad: $81
	rst  $38                                         ; $51ae: $ff
	rlca                                             ; $51af: $07
	ld   de, $44ff                                   ; $51b0: $11 $ff $44
	rst  $38                                         ; $51b3: $ff
	pop  de                                          ; $51b4: $d1
	rst  $38                                         ; $51b5: $ff
	ld   a, [bc]                                     ; $51b6: $0a
	adc  [hl]                                        ; $51b7: $8e
	add  b                                           ; $51b8: $80
	nop                                              ; $51b9: $00
	ld   bc, $2026                                   ; $51ba: $01 $26 $20
	adc  d                                           ; $51bd: $8a
	ld   h, $80                                      ; $51be: $26 $80
	jr   nz, jr_08e_51c9                             ; $51c0: $20 $07

	sub  h                                           ; $51c2: $94
	or   [hl]                                        ; $51c3: $b6
	or   $16                                         ; $51c4: $f6 $16
	sbc  $c2                                         ; $51c6: $de $c2
	db   $db                                         ; $51c8: $db

jr_08e_51c9:
	ret  c                                           ; $51c9: $d8

	add  [hl]                                        ; $51ca: $86
	db   $db                                         ; $51cb: $db
	nop                                              ; $51cc: $00
	add  h                                           ; $51cd: $84
	add  h                                           ; $51ce: $84
	rst  JumpTable                                         ; $51cf: $df
	ld   [bc], a                                     ; $51d0: $02
	ld   e, a                                        ; $51d1: $5f
	ld   l, a                                        ; $51d2: $6f
	rrca                                             ; $51d3: $0f
	add  h                                           ; $51d4: $84
	ld   l, a                                        ; $51d5: $6f
	nop                                              ; $51d6: $00
	sbc  a                                           ; $51d7: $9f
	add  e                                           ; $51d8: $83
	rst  $38                                         ; $51d9: $ff
	ld   a, [bc]                                     ; $51da: $0a
	cp   $ff                                         ; $51db: $fe $ff
	db   $f4                                         ; $51dd: $f4
	rst  $38                                         ; $51de: $ff
	ldh  [rIE], a                                    ; $51df: $e0 $ff
	push bc                                          ; $51e1: $c5
	rst  $38                                         ; $51e2: $ff
	rst  ToBoot                                         ; $51e3: $c7
	rst  $38                                         ; $51e4: $ff
	jp   hl                                          ; $51e5: $e9


	add  e                                           ; $51e6: $83
	cp   $0a                                         ; $51e7: $fe $0a
	cp   [hl]                                        ; $51e9: $be
	cp   $16                                         ; $51ea: $fe $16
	cp   $82                                         ; $51ec: $fe $82
	cp   $d0                                         ; $51ee: $fe $d0
	cp   $f0                                         ; $51f0: $fe $f0
	cp   $f4                                         ; $51f2: $fe $f4
	add  b                                           ; $51f4: $80
	ld   [de], a                                     ; $51f5: $12
	add  b                                           ; $51f6: $80
	ccf                                              ; $51f7: $3f
	add  [hl]                                        ; $51f8: $86
	ld   e, [hl]                                     ; $51f9: $5e
	add  b                                           ; $51fa: $80
	dec  d                                           ; $51fb: $15
	ld   [bc], a                                     ; $51fc: $02
	ld   d, l                                        ; $51fd: $55
	dec  e                                           ; $51fe: $1d
	ld   c, b                                        ; $51ff: $48
	add  b                                           ; $5200: $80
	ld   a, h                                        ; $5201: $7c
	nop                                              ; $5202: $00
	ld   a, [hl-]                                    ; $5203: $3a
	add  l                                           ; $5204: $85
	cp   d                                           ; $5205: $ba
	ld   bc, $1494                                   ; $5206: $01 $94 $14
	add  b                                           ; $5209: $80
	ld   d, h                                        ; $520a: $54
	ld   de, $0280                                   ; $520b: $11 $80 $02
	ld   a, [bc]                                     ; $520e: $0a
	ld   a, [hl+]                                    ; $520f: $2a
	ld   h, d                                        ; $5210: $62
	ld   a, $7e                                      ; $5211: $3e $7e

jr_08e_5213:
	ld   [bc], a                                     ; $5213: $02
	ld   c, $2e                                      ; $5214: $0e $2e
	ld   h, d                                        ; $5216: $62

jr_08e_5217:
	ld   a, $7e                                      ; $5217: $3e $7e
	ld   [bc], a                                     ; $5219: $02
	ld   [de], a                                     ; $521a: $12
	ld   h, $8e                                      ; $521b: $26 $8e
	jr   c, jr_08e_519f                              ; $521d: $38 $80

	ld   b, a                                        ; $521f: $47
	ld   b, $7a                                      ; $5220: $06 $7a
	ld   a, l                                        ; $5222: $7d
	ld   b, l                                        ; $5223: $45
	ld   a, a                                        ; $5224: $7f
	ld   b, d                                        ; $5225: $42
	ld   b, b                                        ; $5226: $40
	ccf                                              ; $5227: $3f
	add  c                                           ; $5228: $81
	nop                                              ; $5229: $00
	add  b                                           ; $522a: $80
	ld   [hl], a                                     ; $522b: $77
	add  b                                           ; $522c: $80
	db   $e3                                         ; $522d: $e3
	add  b                                           ; $522e: $80
	inc  e                                           ; $522f: $1c
	ld   b, $eb                                      ; $5230: $06 $eb
	rst  $30                                         ; $5232: $f7
	inc  d                                           ; $5233: $14
	rst  $38                                         ; $5234: $ff
	ld   [$ff00], sp                                 ; $5235: $08 $00 $ff
	add  c                                           ; $5238: $81
	nop                                              ; $5239: $00
	add  b                                           ; $523a: $80
	ld   a, e                                        ; $523b: $7b
	dec  bc                                          ; $523c: $0b
	add  d                                           ; $523d: $82
	add  c                                           ; $523e: $81
	ld   [bc], a                                     ; $523f: $02
	ld   b, $43                                      ; $5240: $06 $43
	ld   c, e                                        ; $5242: $4b
	call $c6c4                                       ; $5243: $cd $c4 $c6
	adc  $02                                         ; $5246: $ce $02
	inc  bc                                          ; $5248: $03
	add  b                                           ; $5249: $80
	ld   [$0f0a], sp                                 ; $524a: $08 $0a $0f
	nop                                              ; $524d: $00
	ld   hl, $31d1                                   ; $524e: $21 $d1 $31
	ld   de, $a8d0                                   ; $5251: $11 $d0 $a8
	jr   z, jr_08e_5256                              ; $5254: $28 $00

jr_08e_5256:
	add  b                                           ; $5256: $80
	add  b                                           ; $5257: $80
	nop                                              ; $5258: $00
	inc  bc                                          ; $5259: $03
	add  sp, -$58                                    ; $525a: $e8 $a8
	db   $10                                         ; $525c: $10
	ld   d, b                                        ; $525d: $50
	add  b                                           ; $525e: $80
	ld   a, b                                        ; $525f: $78
	add  b                                           ; $5260: $80
	and  b                                           ; $5261: $a0
	add  b                                           ; $5262: $80
	add  b                                           ; $5263: $80
	nop                                              ; $5264: $00
	nop                                              ; $5265: $00
	add  b                                           ; $5266: $80
	ld   bc, $0280                                   ; $5267: $01 $80 $02
	add  b                                           ; $526a: $80
	ld   b, $80                                      ; $526b: $06 $80
	ld   c, $80                                      ; $526d: $0e $80
	ld   e, $80                                      ; $526f: $1e $80
	nop                                              ; $5271: $00
	add  b                                           ; $5272: $80
	rra                                              ; $5273: $1f
	add  b                                           ; $5274: $80
	ld   a, a                                        ; $5275: $7f
	add  b                                           ; $5276: $80
	rst  $38                                         ; $5277: $ff
	nop                                              ; $5278: $00
	rst  $30                                         ; $5279: $f7
	add  l                                           ; $527a: $85
	nop                                              ; $527b: $00
	ld   bc, $00f7                                   ; $527c: $01 $f7 $00
	add  h                                           ; $527f: $84
	rst  $38                                         ; $5280: $ff
	nop                                              ; $5281: $00
	cp   l                                           ; $5282: $bd
	add  l                                           ; $5283: $85
	nop                                              ; $5284: $00
	ld   bc, $00bd                                   ; $5285: $01 $bd $00
	add  h                                           ; $5288: $84
	adc  [hl]                                        ; $5289: $8e
	nop                                              ; $528a: $00
	xor  $85                                         ; $528b: $ee $85
	ld   c, $00                                      ; $528d: $0e $00
	ret  nz                                          ; $528f: $c0

	add  c                                           ; $5290: $81
	jr   nz, jr_08e_5213                             ; $5291: $20 $80

	daa                                              ; $5293: $27
	add  b                                           ; $5294: $80
	jr   nz, jr_08e_5217                             ; $5295: $20 $80

	ld   [hl+], a                                    ; $5297: $22
	add  b                                           ; $5298: $80
	ld   hl, $2282                                   ; $5299: $21 $82 $22
	add  d                                           ; $529c: $82
	nop                                              ; $529d: $00
	dec  b                                           ; $529e: $05
	ret  nz                                          ; $529f: $c0

	rst  $38                                         ; $52a0: $ff
	nop                                              ; $52a1: $00
	ccf                                              ; $52a2: $3f
	ld   b, c                                        ; $52a3: $41
	ld   b, b                                        ; $52a4: $40
	add  b                                           ; $52a5: $80
	add  b                                           ; $52a6: $80
	inc  b                                           ; $52a7: $04
	ld   b, d                                        ; $52a8: $42
	ld   b, c                                        ; $52a9: $41
	ld   bc, $4241                                   ; $52aa: $01 $41 $42
	add  d                                           ; $52ad: $82
	nop                                              ; $52ae: $00
	inc  bc                                          ; $52af: $03
	rst  $38                                         ; $52b0: $ff
	nop                                              ; $52b1: $00
	rra                                              ; $52b2: $1f
	ldh  [$81], a                                    ; $52b3: $e0 $81
	ldh  a, [rDIV]                                   ; $52b5: $f0 $04

jr_08e_52b7:
	db   $f4                                         ; $52b7: $f4
	ldh  a, [$fa]                                    ; $52b8: $f0 $fa
	nop                                              ; $52ba: $00
	ld   a, $83                                      ; $52bb: $3e $83
	ccf                                              ; $52bd: $3f
	ld   a, [de]                                     ; $52be: $1a
	rla                                              ; $52bf: $17
	rra                                              ; $52c0: $1f
	rla                                              ; $52c1: $17
	rra                                              ; $52c2: $1f
	dec  d                                           ; $52c3: $15
	rra                                              ; $52c4: $1f
	nop                                              ; $52c5: $00
	rrca                                             ; $52c6: $0f
	inc  b                                           ; $52c7: $04
	rrca                                             ; $52c8: $0f
	dec  b                                           ; $52c9: $05
	cp   $f8                                         ; $52ca: $fe $f8
	cp   $f8                                         ; $52cc: $fe $f8
	cp   $f0                                         ; $52ce: $fe $f0
	cp   $f0                                         ; $52d0: $fe $f0
	cp   $d0                                         ; $52d2: $fe $d0
	cp   $82                                         ; $52d4: $fe $82
	cp   $16                                         ; $52d6: $fe $16
	cp   $40                                         ; $52d8: $fe $40
	add  d                                           ; $52da: $82
	ld   d, l                                        ; $52db: $55
	add  b                                           ; $52dc: $80
	inc  d                                           ; $52dd: $14
	add  e                                           ; $52de: $83
	nop                                              ; $52df: $00
	inc  bc                                          ; $52e0: $03
	rlca                                             ; $52e1: $07
	nop                                              ; $52e2: $00
	inc  b                                           ; $52e3: $04
	inc  bc                                          ; $52e4: $03
	add  b                                           ; $52e5: $80
	ld   d, h                                        ; $52e6: $54
	ld   bc, $5455                                   ; $52e7: $01 $55 $54
	add  b                                           ; $52ea: $80
	ld   d, b                                        ; $52eb: $50
	inc  b                                           ; $52ec: $04

jr_08e_52ed:
	ld   [bc], a                                     ; $52ed: $02
	nop                                              ; $52ee: $00
	inc  b                                           ; $52ef: $04
	nop                                              ; $52f0: $00
	ld   hl, sp-$80                                  ; $52f1: $f8 $80
	ld   bc, $0780                                   ; $52f3: $01 $80 $07
	nop                                              ; $52f6: $00
	rst  $38                                         ; $52f7: $ff
	add  c                                           ; $52f8: $81
	nop                                              ; $52f9: $00
	add  c                                           ; $52fa: $81
	ld   a, $81                                      ; $52fb: $3e $81
	cp   $81                                         ; $52fd: $fe $81
	ret  nz                                          ; $52ff: $c0

	add  d                                           ; $5300: $82
	db   $fc                                         ; $5301: $fc
	nop                                              ; $5302: $00
	ccf                                              ; $5303: $3f
	add  c                                           ; $5304: $81
	nop                                              ; $5305: $00
	adc  d                                           ; $5306: $8a
	rra                                              ; $5307: $1f
	nop                                              ; $5308: $00
	ld   b, b                                        ; $5309: $40
	add  c                                           ; $530a: $81
	nop                                              ; $530b: $00
	nop                                              ; $530c: $00
	ld   a, [hl]                                     ; $530d: $7e
	add  a                                           ; $530e: $87
	db   $fc                                         ; $530f: $fc
	inc  bc                                          ; $5310: $03
	db   $fd                                         ; $5311: $fd
	db   $fc                                         ; $5312: $fc
	jr   c, @-$3a                                    ; $5313: $38 $c4

	add  b                                           ; $5315: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5316: $cf
	add  b                                           ; $5317: $80
	call nz, $c980                                   ; $5318: $c4 $80 $c9
	add  h                                           ; $531b: $84
	ret  nz                                          ; $531c: $c0

	add  b                                           ; $531d: $80
	inc  bc                                          ; $531e: $03
	ld   [bc], a                                     ; $531f: $02
	add  b                                           ; $5320: $80
	ld   d, b                                        ; $5321: $50
	ret  nc                                          ; $5322: $d0

	add  b                                           ; $5323: $80
	ret  nz                                          ; $5324: $c0

	add  b                                           ; $5325: $80
	xor  b                                           ; $5326: $a8
	add  b                                           ; $5327: $80
	ldh  a, [$80]                                    ; $5328: $f0 $80
	add  b                                           ; $532a: $80
	add  d                                           ; $532b: $82
	nop                                              ; $532c: $00
	inc  bc                                          ; $532d: $03
	sbc  b                                           ; $532e: $98
	add  [hl]                                        ; $532f: $86
	ld   e, $3e                                      ; $5330: $1e $3e
	add  c                                           ; $5332: $81
	jr   nz, jr_08e_52b7                             ; $5333: $20 $82

	ld   h, b                                        ; $5335: $60
	ld   [bc], a                                     ; $5336: $02
	ld   e, [hl]                                     ; $5337: $5e
	ld   h, c                                        ; $5338: $61
	ld   e, a                                        ; $5339: $5f
	add  c                                           ; $533a: $81
	ld   h, b                                        ; $533b: $60
	ld   [bc], a                                     ; $533c: $02
	ld   e, $08                                      ; $533d: $1e $08
	rst  $38                                         ; $533f: $ff
	add  l                                           ; $5340: $85
	nop                                              ; $5341: $00
	ld   [bc], a                                     ; $5342: $02
	rst  $30                                         ; $5343: $f7
	ld   [$81ff], sp                                 ; $5344: $08 $ff $81
	nop                                              ; $5347: $00
	ld   [bc], a                                     ; $5348: $02
	rst  $30                                         ; $5349: $f7
	ld   b, d                                        ; $534a: $42
	rst  $38                                         ; $534b: $ff
	add  l                                           ; $534c: $85

jr_08e_534d:
	nop                                              ; $534d: $00
	ld   [bc], a                                     ; $534e: $02
	cp   l                                           ; $534f: $bd
	ld   b, d                                        ; $5350: $42
	rst  $38                                         ; $5351: $ff
	add  c                                           ; $5352: $81
	nop                                              ; $5353: $00
	ld   [bc], a                                     ; $5354: $02
	or   e                                           ; $5355: $b3
	rra                                              ; $5356: $1f
	rst  $38                                         ; $5357: $ff
	add  l                                           ; $5358: $85
	ld   c, $02                                      ; $5359: $0e $02
	xor  $1f                                         ; $535b: $ee $1f
	rst  $38                                         ; $535d: $ff
	add  c                                           ; $535e: $81
	ld   c, $01                                      ; $535f: $0e $01
	push bc                                          ; $5361: $c5
	dec  h                                           ; $5362: $25
	add  b                                           ; $5363: $80
	ld   h, $80                                      ; $5364: $26 $80
	inc  h                                           ; $5366: $24
	add  b                                           ; $5367: $80
	ld   [hl+], a                                    ; $5368: $22
	add  c                                           ; $5369: $81
	jr   nz, jr_08e_52ed                             ; $536a: $20 $81

	ld   [hl+], a                                    ; $536c: $22
	inc  b                                           ; $536d: $04
	jr   nz, jr_08e_5392                             ; $536e: $20 $22

	add  c                                           ; $5370: $81
	and  c                                           ; $5371: $a1
	jr   nz, @-$7e                                   ; $5372: $20 $80

	ld   l, a                                        ; $5374: $6f
	add  b                                           ; $5375: $80
	cpl                                              ; $5376: $2f
	add  b                                           ; $5377: $80
	ld   c, a                                        ; $5378: $4f
	dec  bc                                          ; $5379: $0b
	rrca                                             ; $537a: $0f
	nop                                              ; $537b: $00
	ld   b, b                                        ; $537c: $40
	ld   h, b                                        ; $537d: $60
	ld   l, a                                        ; $537e: $6f
	ld   h, b                                        ; $537f: $60
	ld   l, c                                        ; $5380: $69
	cp   l                                           ; $5381: $bd
	ldh  a, [rP1]                                    ; $5382: $f0 $00
	ld   sp, hl                                      ; $5384: $f9
	db   $fd                                         ; $5385: $fd
	add  b                                           ; $5386: $80
	ei                                               ; $5387: $fb
	add  b                                           ; $5388: $80
	push af                                          ; $5389: $f5
	ld   bc, $0ef1                                   ; $538a: $01 $f1 $0e
	add  b                                           ; $538d: $80
	nop                                              ; $538e: $00
	ld   bc, $00ff                                   ; $538f: $01 $ff $00

jr_08e_5392:
	add  b                                           ; $5392: $80
	inc  h                                           ; $5393: $24
	adc  c                                           ; $5394: $89
	rrca                                             ; $5395: $0f
	add  b                                           ; $5396: $80
	ld   c, $80                                      ; $5397: $0e $80
	dec  b                                           ; $5399: $05
	nop                                              ; $539a: $00
	pop  af                                          ; $539b: $f1
	adc  c                                           ; $539c: $89
	cp   $06                                         ; $539d: $fe $06
	cp   [hl]                                        ; $539f: $be
	cp   $16                                         ; $53a0: $fe $16
	cp   $a8                                         ; $53a2: $fe $a8
	nop                                              ; $53a4: $00
	ld   h, b                                        ; $53a5: $60
	add  b                                           ; $53a6: $80
	ld   a, b                                        ; $53a7: $78
	add  d                                           ; $53a8: $82
	ld   a, c                                        ; $53a9: $79
	add  b                                           ; $53aa: $80
	ld   a, b                                        ; $53ab: $78
	add  b                                           ; $53ac: $80
	ld   a, c                                        ; $53ad: $79
	add  c                                           ; $53ae: $81
	ld   a, b                                        ; $53af: $78
	nop                                              ; $53b0: $00
	jr   @-$7d                                       ; $53b1: $18 $81

	nop                                              ; $53b3: $00
	ld   a, [bc]                                     ; $53b4: $0a
	call c, $cc9c                                    ; $53b5: $dc $9c $cc
	db   $fc                                         ; $53b8: $fc
	db   $ec                                         ; $53b9: $ec
	ld   l, h                                        ; $53ba: $6c
	inc  [hl]                                        ; $53bb: $34
	inc  c                                           ; $53bc: $0c
	call z, $9c98                                    ; $53bd: $cc $98 $9c
	add  b                                           ; $53c0: $80
	adc  b                                           ; $53c1: $88
	rlca                                             ; $53c2: $07
	nop                                              ; $53c3: $00
	jr   z, jr_08e_53c6                              ; $53c4: $28 $00

jr_08e_53c6:
	jr   z, jr_08e_534d                              ; $53c6: $28 $85

	xor  l                                           ; $53c8: $ad
	add  l                                           ; $53c9: $85
	xor  l                                           ; $53ca: $ad
	add  b                                           ; $53cb: $80
	add  l                                           ; $53cc: $85
	add  b                                           ; $53cd: $80

jr_08e_53ce:
	db   $fd                                         ; $53ce: $fd
	add  b                                           ; $53cf: $80
	ld   bc, $ff80                                   ; $53d0: $01 $80 $ff
	rla                                              ; $53d3: $17

jr_08e_53d4:
	nop                                              ; $53d4: $00
	ld   bc, $6500                                   ; $53d5: $01 $00 $65
	call z, $ecf9                                    ; $53d8: $cc $f9 $ec
	db   $fd                                         ; $53db: $fd
	db   $fc                                         ; $53dc: $fc
	jp   hl                                          ; $53dd: $e9


	and  c                                           ; $53de: $a1
	or   $e1                                         ; $53df: $f6 $e1
	inc  hl                                          ; $53e1: $23
	jr   nc, jr_08e_53d4                             ; $53e2: $30 $f0

	nop                                              ; $53e4: $00
	ld   b, c                                        ; $53e5: $41
	nop                                              ; $53e6: $00
	ld   b, b                                        ; $53e7: $40
	jr   z, jr_08e_5452                              ; $53e8: $28 $68

	jr   z, jr_08e_5454                              ; $53ea: $28 $68

	add  b                                           ; $53ec: $80
	jr   z, @-$7e                                    ; $53ed: $28 $80

	add  sp, -$80                                    ; $53ef: $e8 $80
	ld   [$f80c], sp                                 ; $53f1: $08 $0c $f8
	ld   sp, hl                                      ; $53f4: $f9
	dec  c                                           ; $53f5: $0d
	db   $ed                                         ; $53f6: $ed
	db   $ec                                         ; $53f7: $ec

jr_08e_53f8:
	db   $e4                                         ; $53f8: $e4
	ldh  [c], a                                      ; $53f9: $e2
	xor  $e9                                         ; $53fa: $ee $e9
	push hl                                          ; $53fc: $e5
	rst  $20                                         ; $53fd: $e7
	rst  $38                                         ; $53fe: $ff
	xor  $80                                         ; $53ff: $ee $80
	or   $02                                         ; $5401: $f6 $02
	jp   nc, $3cf0                                   ; $5403: $d2 $f0 $3c

	add  b                                           ; $5406: $80
	ld   [$b880], sp                                 ; $5407: $08 $80 $b8
	nop                                              ; $540a: $00
	ld   hl, sp-$80                                  ; $540b: $f8 $80
	ld   a, b                                        ; $540d: $78
	add  d                                           ; $540e: $82
	ld   hl, sp+$04                                  ; $540f: $f8 $04
	cp   b                                           ; $5411: $b8
	jr   c, @+$7a                                    ; $5412: $38 $78

	jr   c, jr_08e_545c                              ; $5414: $38 $46

	add  c                                           ; $5416: $81
	ld   h, b                                        ; $5417: $60
	ld   [bc], a                                     ; $5418: $02
	ld   e, [hl]                                     ; $5419: $5e
	ld   h, c                                        ; $541a: $61
	ld   e, a                                        ; $541b: $5f
	add  e                                           ; $541c: $83
	ld   h, b                                        ; $541d: $60
	ld   bc, $607e                                   ; $541e: $01 $7e $60
	add  b                                           ; $5421: $80
	ld   b, b                                        ; $5422: $40
	nop                                              ; $5423: $00
	rst  $30                                         ; $5424: $f7
	add  c                                           ; $5425: $81
	nop                                              ; $5426: $00
	ld   [bc], a                                     ; $5427: $02
	rst  $30                                         ; $5428: $f7
	ld   [$83ff], sp                                 ; $5429: $08 $ff $83
	nop                                              ; $542c: $00
	inc  b                                           ; $542d: $04
	or   $00                                         ; $542e: $f6 $00
	ld   bc, $bd00                                   ; $5430: $01 $00 $bd
	add  c                                           ; $5433: $81
	nop                                              ; $5434: $00
	ld   [bc], a                                     ; $5435: $02
	cp   l                                           ; $5436: $bd
	ld   b, d                                        ; $5437: $42
	rst  $38                                         ; $5438: $ff
	add  l                                           ; $5439: $85
	nop                                              ; $543a: $00
	ld   [bc], a                                     ; $543b: $02
	cp   l                                           ; $543c: $bd
	nop                                              ; $543d: $00
	xor  $81                                         ; $543e: $ee $81
	ld   c, $02                                      ; $5440: $0e $02
	xor  $1f                                         ; $5442: $ee $1f
	rst  $38                                         ; $5444: $ff
	add  e                                           ; $5445: $83
	ld   c, $00                                      ; $5446: $0e $00
	ldh  [$81], a                                    ; $5448: $e0 $81
	nop                                              ; $544a: $00
	adc  b                                           ; $544b: $88
	jr   nz, jr_08e_53ce                             ; $544c: $20 $80

	ld   hl, $2082                                   ; $544e: $21 $82 $20
	add  b                                           ; $5451: $80

jr_08e_5452:
	add  hl, bc                                      ; $5452: $09
	add  c                                           ; $5453: $81

jr_08e_5454:
	nop                                              ; $5454: $00
	add  b                                           ; $5455: $80
	rra                                              ; $5456: $1f
	ld   [bc], a                                     ; $5457: $02
	ld   a, a                                        ; $5458: $7f
	ld   [hl], b                                     ; $5459: $70
	ldh  a, [$80]                                    ; $545a: $f0 $80

jr_08e_545c:
	ret  nz                                          ; $545c: $c0

	nop                                              ; $545d: $00
	rst  $38                                         ; $545e: $ff
	add  c                                           ; $545f: $81
	nop                                              ; $5460: $00
	add  b                                           ; $5461: $80
	inc  h                                           ; $5462: $24
	add  c                                           ; $5463: $81
	nop                                              ; $5464: $00
	add  c                                           ; $5465: $81
	rst  $38                                         ; $5466: $ff
	add  d                                           ; $5467: $82
	ld   bc, $ff00                                   ; $5468: $01 $00 $ff
	add  c                                           ; $546b: $81
	nop                                              ; $546c: $00
	ld   bc, $1a05                                   ; $546d: $01 $05 $1a
	add  b                                           ; $5470: $80
	db   $10                                         ; $5471: $10
	ld   bc, $3818                                   ; $5472: $01 $18 $38
	add  h                                           ; $5475: $84

jr_08e_5476:
	jr   nc, jr_08e_53f8                             ; $5476: $30 $80

	jr   c, jr_08e_548d                              ; $5478: $38 $13

	jr   nc, @+$12                                   ; $547a: $30 $10

	dec  [hl]                                        ; $547c: $35

jr_08e_547d:
	cp   $d0                                         ; $547d: $fe $d0
	cp   $f0                                         ; $547f: $fe $f0
	cp   $f0                                         ; $5481: $fe $f0
	cp   $f8                                         ; $5483: $fe $f8
	cp   $f8                                         ; $5485: $fe $f8
	cp   $f0                                         ; $5487: $fe $f0
	cp   $f0                                         ; $5489: $fe $f0
	cp   $f8                                         ; $548b: $fe $f8

jr_08e_548d:
	ld   bc, $1f80                                   ; $548d: $01 $80 $1f
	ld   a, [de]                                     ; $5490: $1a
	inc  bc                                          ; $5491: $03
	ld   bc, $0105                                   ; $5492: $01 $05 $01
	ld   b, $00                                      ; $5495: $06 $00
	inc  bc                                          ; $5497: $03
	inc  b                                           ; $5498: $04
	nop                                              ; $5499: $00
	jr   @+$21                                       ; $549a: $18 $1f

	jr   jr_08e_54b1                                 ; $549c: $18 $13

	add  b                                           ; $549e: $80
	ld   c, e                                        ; $549f: $4b
	scf                                              ; $54a0: $37
	ldh  a, [$d2]                                    ; $54a1: $f0 $d2
	adc  $c4                                         ; $54a3: $ce $c4
	ld   e, h                                        ; $54a5: $5c
	ld   b, h                                        ; $54a6: $44
	call nc, $0868                                   ; $54a7: $d4 $68 $08
	inc  c                                           ; $54aa: $0c
	ld   a, h                                        ; $54ab: $7c
	add  b                                           ; $54ac: $80
	inc  e                                           ; $54ad: $1c
	nop                                              ; $54ae: $00
	nop                                              ; $54af: $00
	add  b                                           ; $54b0: $80

jr_08e_54b1:
	rst  $38                                         ; $54b1: $ff
	nop                                              ; $54b2: $00
	nop                                              ; $54b3: $00
	add  b                                           ; $54b4: $80
	ld   bc, $0080                                   ; $54b5: $01 $80 $00
	add  b                                           ; $54b8: $80
	ld   bc, $0080                                   ; $54b9: $01 $80 $00
	ld   de, $006c                                   ; $54bc: $11 $6c $00
	db   $10                                         ; $54bf: $10
	jr   jr_08e_54ca                                 ; $54c0: $18 $08

	db   $ed                                         ; $54c2: $ed
	db   $fc                                         ; $54c3: $fc
	db   $fd                                         ; $54c4: $fd
	ld   d, c                                        ; $54c5: $51
	pop  de                                          ; $54c6: $d1
	ld   [hl-], a                                    ; $54c7: $32
	ld   [de], a                                     ; $54c8: $12
	ret  z                                           ; $54c9: $c8

jr_08e_54ca:
	ld   l, c                                        ; $54ca: $69
	ld   a, [hl-]                                    ; $54cb: $3a
	db   $db                                         ; $54cc: $db
	sub  [hl]                                        ; $54cd: $96
	or   $80                                         ; $54ce: $f6 $80
	ld   [$0002], sp                                 ; $54d0: $08 $02 $00
	ld   a, a                                        ; $54d3: $7f
	rst  $38                                         ; $54d4: $ff
	add  b                                           ; $54d5: $80
	nop                                              ; $54d6: $00
	nop                                              ; $54d7: $00
	add  b                                           ; $54d8: $80
	add  h                                           ; $54d9: $84
	nop                                              ; $54da: $00
	nop                                              ; $54db: $00
	ld   l, a                                        ; $54dc: $6f
	add  b                                           ; $54dd: $80
	rrca                                             ; $54de: $0f
	inc  de                                          ; $54df: $13
	ld   c, a                                        ; $54e0: $4f
	rrca                                             ; $54e1: $0f
	adc  a                                           ; $54e2: $8f
	ld   e, h                                        ; $54e3: $5c
	rst  $20                                         ; $54e4: $e7
	ld   h, h                                        ; $54e5: $64
	ld   a, a                                        ; $54e6: $7f
	ccf                                              ; $54e7: $3f
	ld   [hl], a                                     ; $54e8: $77
	daa                                              ; $54e9: $27
	ld   l, [hl]                                     ; $54ea: $6e
	ld   h, d                                        ; $54eb: $62
	ld   h, e                                        ; $54ec: $63
	ld   b, e                                        ; $54ed: $43
	ld   h, e                                        ; $54ee: $63
	ld   [bc], a                                     ; $54ef: $02
	ld   h, d                                        ; $54f0: $62
	jr   c, jr_08e_554b                              ; $54f1: $38 $58

	jr   jr_08e_5476                                 ; $54f3: $18 $81

	jr   c, @-$7e                                    ; $54f5: $38 $80

	ret  c                                           ; $54f7: $d8

	add  b                                           ; $54f8: $80
	ld   e, b                                        ; $54f9: $58
	add  b                                           ; $54fa: $80
	jr   c, jr_08e_547d                              ; $54fb: $38 $80

	sbc  c                                           ; $54fd: $99
	add  hl, bc                                      ; $54fe: $09
	sbc  b                                           ; $54ff: $98
	sbc  e                                           ; $5500: $9b
	nop                                              ; $5501: $00
	ld   c, $02                                      ; $5502: $0e $02
	inc  a                                           ; $5504: $3c
	ld   [$277b], sp                                 ; $5505: $08 $7b $27
	ld   h, a                                        ; $5508: $67
	add  b                                           ; $5509: $80
	ld   b, b                                        ; $550a: $40
	dec  bc                                          ; $550b: $0b
	nop                                              ; $550c: $00
	rst  $30                                         ; $550d: $f7
	jr   jr_08e_5520                                 ; $550e: $18 $10

jr_08e_5510:
	rst  $38                                         ; $5510: $ff
	ld   hl, sp-$60                                  ; $5511: $f8 $a0
	xor  [hl]                                        ; $5513: $ae
	xor  b                                           ; $5514: $a8
	rst  $20                                         ; $5515: $e7
	ldh  [c], a                                      ; $5516: $e2
	ld   e, e                                        ; $5517: $5b
	add  b                                           ; $5518: $80
	db   $fc                                         ; $5519: $fc
	add  c                                           ; $551a: $81
	nop                                              ; $551b: $00
	inc  bc                                          ; $551c: $03
	db   $fd                                         ; $551d: $fd
	inc  bc                                          ; $551e: $03
	ld   b, c                                        ; $551f: $41

jr_08e_5520:
	cp   a                                           ; $5520: $bf
	add  d                                           ; $5521: $82
	nop                                              ; $5522: $00
	inc  b                                           ; $5523: $04
	add  e                                           ; $5524: $83
	nop                                              ; $5525: $00
	rst  ToBoot                                         ; $5526: $c7
	add  d                                           ; $5527: $82
	add  $80                                         ; $5528: $c6 $80
	ld   b, h                                        ; $552a: $44
	dec  bc                                          ; $552b: $0b
	nop                                              ; $552c: $00
	rst  $38                                         ; $552d: $ff
	ld   bc, $ef11                                   ; $552e: $01 $11 $ef
	ccf                                              ; $5531: $3f
	ld   a, [bc]                                     ; $5532: $0a
	ld   [$ce2a], a                                  ; $5533: $ea $2a $ce
	adc  [hl]                                        ; $5536: $8e
	or   l                                           ; $5537: $b5
	add  b                                           ; $5538: $80
	ld   a, a                                        ; $5539: $7f
	add  c                                           ; $553a: $81
	nop                                              ; $553b: $00
	inc  bc                                          ; $553c: $03
	ld   a, a                                        ; $553d: $7f
	add  b                                           ; $553e: $80
	inc  b                                           ; $553f: $04
	ei                                               ; $5540: $fb
	add  b                                           ; $5541: $80
	daa                                              ; $5542: $27
	add  b                                           ; $5543: $80
	jr   nz, @+$03                                   ; $5544: $20 $01

	ld   h, $27                                      ; $5546: $26 $27
	add  b                                           ; $5548: $80
	rst  $20                                         ; $5549: $e7
	nop                                              ; $554a: $00

jr_08e_554b:
	dec  b                                           ; $554b: $05
	add  b                                           ; $554c: $80
	rlca                                             ; $554d: $07
	ld   [bc], a                                     ; $554e: $02
	inc  b                                           ; $554f: $04
	inc  [hl]                                        ; $5550: $34
	dec  b                                           ; $5551: $05
	add  b                                           ; $5552: $80
	scf                                              ; $5553: $37
	ld   bc, $ffce                                   ; $5554: $01 $ce $ff
	add  b                                           ; $5557: $80
	inc  bc                                          ; $5558: $03
	nop                                              ; $5559: $00
	dec  bc                                          ; $555a: $0b
	add  c                                           ; $555b: $81
	di                                               ; $555c: $f3
	add  b                                           ; $555d: $80
	nop                                              ; $555e: $00
	nop                                              ; $555f: $00
	ldh  a, [$80]                                    ; $5560: $f0 $80
	nop                                              ; $5562: $00
	add  b                                           ; $5563: $80
	ldh  [rSB], a                                    ; $5564: $e0 $01
	ldh  a, [rTAC]                                   ; $5566: $f0 $07
	add  c                                           ; $5568: $81
	rst  $38                                         ; $5569: $ff
	nop                                              ; $556a: $00
	ret  nz                                          ; $556b: $c0

	add  e                                           ; $556c: $83
	cp   a                                           ; $556d: $bf
	add  b                                           ; $556e: $80
	ld   bc, $2500                                   ; $556f: $01 $00 $25
	add  c                                           ; $5572: $81
	inc  de                                          ; $5573: $13
	inc  bc                                          ; $5574: $03

jr_08e_5575:
	ld   c, h                                        ; $5575: $4c
	ld   a, [de]                                     ; $5576: $1a
	dec  d                                           ; $5577: $15
	dec  b                                           ; $5578: $05
	add  b                                           ; $5579: $80
	ld   c, $88                                      ; $557a: $0e $88
	rrca                                             ; $557c: $0f
	ld   b, $25                                      ; $557d: $06 $25
	cp   $82                                         ; $557f: $fe $82
	cp   $16                                         ; $5581: $fe $16
	cp   $be                                         ; $5583: $fe $be
	add  a                                           ; $5585: $87
	cp   $80                                         ; $5586: $fe $80
	ld   [de], a                                     ; $5588: $12
	add  b                                           ; $5589: $80
	add  hl, de                                      ; $558a: $19
	add  b                                           ; $558b: $80
	ld   [de], a                                     ; $558c: $12
	add  b                                           ; $558d: $80
	jr   jr_08e_5510                                 ; $558e: $18 $80

	inc  e                                           ; $5590: $1c
	add  b                                           ; $5591: $80
	rra                                              ; $5592: $1f
	add  b                                           ; $5593: $80
	rrca                                             ; $5594: $0f
	add  b                                           ; $5595: $80
	nop                                              ; $5596: $00
	dec  b                                           ; $5597: $05
	inc  d                                           ; $5598: $14
	inc  e                                           ; $5599: $1c
	ld   b, b                                        ; $559a: $40
	ld   a, b                                        ; $559b: $78
	ld   sp, $8001                                   ; $559c: $31 $01 $80
	nop                                              ; $559f: $00
	add  b                                           ; $55a0: $80
	inc  bc                                          ; $55a1: $03
	add  b                                           ; $55a2: $80
	daa                                              ; $55a3: $27
	add  b                                           ; $55a4: $80
	cp   $80                                         ; $55a5: $fe $80
	nop                                              ; $55a7: $00
	add  b                                           ; $55a8: $80
	ld   a, a                                        ; $55a9: $7f
	ld   bc, $90fc                                   ; $55aa: $01 $fc $90
	add  b                                           ; $55ad: $80
	sub  d                                           ; $55ae: $92
	add  b                                           ; $55af: $80
	cp   $00                                         ; $55b0: $fe $00
	sub  e                                           ; $55b2: $93
	add  c                                           ; $55b3: $81
	rst  $38                                         ; $55b4: $ff
	add  b                                           ; $55b5: $80
	rrca                                             ; $55b6: $0f
	add  c                                           ; $55b7: $81
	nop                                              ; $55b8: $00
	dec  b                                           ; $55b9: $05
	add  h                                           ; $55ba: $84
	call nz, $9d50                                   ; $55bb: $c4 $50 $9d
	call z, $8041                                    ; $55be: $cc $41 $80
	ld   bc, $0000                                   ; $55c1: $01 $00 $00
	add  b                                           ; $55c4: $80
	and  c                                           ; $55c5: $a1
	add  b                                           ; $55c6: $80
	rst  $38                                         ; $55c7: $ff
	add  b                                           ; $55c8: $80
	nop                                              ; $55c9: $00
	add  b                                           ; $55ca: $80
	rst  $38                                         ; $55cb: $ff
	nop                                              ; $55cc: $00
	ld   a, a                                        ; $55cd: $7f
	add  c                                           ; $55ce: $81
	rra                                              ; $55cf: $1f
	add  b                                           ; $55d0: $80
	ld   a, a                                        ; $55d1: $7f
	ld   bc, $7f1f                                   ; $55d2: $01 $1f $7f
	add  b                                           ; $55d5: $80
	rst  $38                                         ; $55d6: $ff
	add  b                                           ; $55d7: $80
	rlca                                             ; $55d8: $07
	add  b                                           ; $55d9: $80
	nop                                              ; $55da: $00
	dec  b                                           ; $55db: $05
	inc  b                                           ; $55dc: $04
	inc  c                                           ; $55dd: $0c
	adc  [hl]                                        ; $55de: $8e
	sub  [hl]                                        ; $55df: $96
	ld   de, $8001                                   ; $55e0: $11 $01 $80
	add  b                                           ; $55e3: $80
	add  b                                           ; $55e4: $80
	call nz, $c880                                   ; $55e5: $c4 $80 $c8
	add  b                                           ; $55e8: $80
	rst  $38                                         ; $55e9: $ff
	add  c                                           ; $55ea: $81
	nop                                              ; $55eb: $00
	add  b                                           ; $55ec: $80
	add  hl, hl                                      ; $55ed: $29
	add  b                                           ; $55ee: $80
	ld   [$8880], sp                                 ; $55ef: $08 $80 $88
	add  d                                           ; $55f2: $82
	jr   jr_08e_5575                                 ; $55f3: $18 $80

	ld   hl, sp-$7f                                  ; $55f5: $f8 $81
	nop                                              ; $55f7: $00
	dec  b                                           ; $55f8: $05
	and  b                                           ; $55f9: $a0
	ld   a, a                                        ; $55fa: $7f
	rra                                              ; $55fb: $1f
	ret  nz                                          ; $55fc: $c0

	sub  b                                           ; $55fd: $90
	ld   d, b                                        ; $55fe: $50
	add  h                                           ; $55ff: $84
	ld   d, a                                        ; $5600: $57
	add  b                                           ; $5601: $80
	ld   e, a                                        ; $5602: $5f
	add  b                                           ; $5603: $80
	ld   d, b                                        ; $5604: $50
	nop                                              ; $5605: $00
	ret  nz                                          ; $5606: $c0

	add  b                                           ; $5607: $80
	rst  $38                                         ; $5608: $ff
	nop                                              ; $5609: $00
	nop                                              ; $560a: $00
	add  b                                           ; $560b: $80
	and  c                                           ; $560c: $a1
	add  h                                           ; $560d: $84
	xor  a                                           ; $560e: $af
	add  b                                           ; $560f: $80
	cp   a                                           ; $5610: $bf
	ld   [$01a1], sp                                 ; $5611: $08 $a1 $01
	ld   [hl+], a                                    ; $5614: $22
	rst  $28                                         ; $5615: $ef
	ld   bc, $c96c                                   ; $5616: $01 $6c $c9
	and  l                                           ; $5619: $a5
	sub  l                                           ; $561a: $95
	add  b                                           ; $561b: $80
	cp   l                                           ; $561c: $bd
	add  c                                           ; $561d: $81
	add  l                                           ; $561e: $85
	inc  b                                           ; $561f: $04
	sbc  l                                           ; $5620: $9d
	xor  l                                           ; $5621: $ad
	add  l                                           ; $5622: $85
	and  l                                           ; $5623: $a5
	ld   l, h                                        ; $5624: $6c
	add  b                                           ; $5625: $80
	rst  $38                                         ; $5626: $ff
	nop                                              ; $5627: $00
	nop                                              ; $5628: $00
	add  b                                           ; $5629: $80
	ld   a, [bc]                                     ; $562a: $0a
	add  h                                           ; $562b: $84
	ld   a, d                                        ; $562c: $7a
	add  b                                           ; $562d: $80
	ei                                               ; $562e: $fb
	ld   [bc], a                                     ; $562f: $02
	ld   a, [bc]                                     ; $5630: $0a
	nop                                              ; $5631: $00
	ld   c, $80                                      ; $5632: $0e $80
	inc  [hl]                                        ; $5634: $34
	ld   bc, $3135                                   ; $5635: $01 $35 $31
	add  c                                           ; $5638: $81
	nop                                              ; $5639: $00
	add  b                                           ; $563a: $80
	rra                                              ; $563b: $1f
	add  d                                           ; $563c: $82
	ld   e, $01                                      ; $563d: $1e $01
	ld   d, $1e                                      ; $563f: $16 $1e
	add  c                                           ; $5641: $81
	nop                                              ; $5642: $00
	ld   bc, $e9e1                                   ; $5643: $01 $e1 $e9
	add  c                                           ; $5646: $81
	ld   bc, $fd02                                   ; $5647: $01 $02 $fd
	inc  bc                                          ; $564a: $03
	rlca                                             ; $564b: $07
	add  e                                           ; $564c: $83
	ei                                               ; $564d: $fb
	nop                                              ; $564e: $00
	ld   c, e                                        ; $564f: $4b
	add  b                                           ; $5650: $80
	ld   bc, $3701                                   ; $5651: $01 $01 $37
	ld   a, a                                        ; $5654: $7f
	add  c                                           ; $5655: $81
	nop                                              ; $5656: $00
	ld   [bc], a                                     ; $5657: $02
	ld   a, [hl]                                     ; $5658: $7e
	add  c                                           ; $5659: $81
	add  e                                           ; $565a: $83
	add  e                                           ; $565b: $83
	ld   a, l                                        ; $565c: $7d
	nop                                              ; $565d: $00
	ld   bc, $0f81                                   ; $565e: $01 $81 $0f
	add  b                                           ; $5661: $80
	ld   c, $80                                      ; $5662: $0e $80
	dec  b                                           ; $5664: $05
	ld   bc, $1a0a                                   ; $5665: $01 $0a $1a
	add  b                                           ; $5668: $80
	db   $10                                         ; $5669: $10
	ld   bc, $3818                                   ; $566a: $01 $18 $38
	add  b                                           ; $566d: $80
	jr   nc, jr_08e_5670                             ; $566e: $30 $00

jr_08e_5670:
	ld   a, $81                                      ; $5670: $3e $81
	rst  $38                                         ; $5672: $ff
	add  b                                           ; $5673: $80
	cp   a                                           ; $5674: $bf
	add  b                                           ; $5675: $80
	ld   d, a                                        ; $5676: $57
	add  b                                           ; $5677: $80
	dec  hl                                          ; $5678: $2b
	add  b                                           ; $5679: $80
	dec  b                                           ; $567a: $05
	add  b                                           ; $567b: $80
	dec  bc                                          ; $567c: $0b
	add  b                                           ; $567d: $80
	dec  b                                           ; $567e: $05
	ld   [bc], a                                     ; $567f: $02
	ld   e, $00                                      ; $5680: $1e $00
	db   $e4                                         ; $5682: $e4
	add  a                                           ; $5683: $87
	rst  $20                                         ; $5684: $e7
	ld   bc, $0704                                   ; $5685: $01 $04 $07
	add  b                                           ; $5688: $80
	ldh  [rSC], a                                    ; $5689: $e0 $02
	pop  hl                                          ; $568b: $e1
	nop                                              ; $568c: $00
	ld   [bc], a                                     ; $568d: $02
	add  a                                           ; $568e: $87
	cp   $01                                         ; $568f: $fe $01
	ld   [bc], a                                     ; $5691: $02
	cp   $80                                         ; $5692: $fe $80
	nop                                              ; $5694: $00
	ld   [bc], a                                     ; $5695: $02
	pop  hl                                          ; $5696: $e1
	nop                                              ; $5697: $00
	db   $e4                                         ; $5698: $e4
	add  a                                           ; $5699: $87
	rst  $20                                         ; $569a: $e7
	ld   bc, $0704                                   ; $569b: $01 $04 $07
	add  c                                           ; $569e: $81
	ldh  [rSB], a                                    ; $569f: $e0 $01
	nop                                              ; $56a1: $00
	ld   bc, $ff87                                   ; $56a2: $01 $87 $ff
	ld   bc, $ff01                                   ; $56a5: $01 $01 $ff
	add  b                                           ; $56a8: $80
	nop                                              ; $56a9: $00

jr_08e_56aa:
	ld   [bc], a                                     ; $56aa: $02
	ldh  a, [rP1]                                    ; $56ab: $f0 $00
	ld   [hl], d                                     ; $56ad: $72
	add  a                                           ; $56ae: $87
	ld   [hl], e                                     ; $56af: $73
	ld   bc, $0302                                   ; $56b0: $01 $02 $03
	add  b                                           ; $56b3: $80
	ld   [hl], b                                     ; $56b4: $70
	ld   [bc], a                                     ; $56b5: $02
	ldh  a, [rP1]                                    ; $56b6: $f0 $00
	ld   bc, $ff87                                   ; $56b8: $01 $87 $ff
	ld   bc, $ff01                                   ; $56bb: $01 $01 $ff
	add  b                                           ; $56be: $80
	nop                                              ; $56bf: $00
	inc  bc                                          ; $56c0: $03
	ldh  a, [rP1]                                    ; $56c1: $f0 $00
	ld   a, d                                        ; $56c3: $7a
	ld   a, b                                        ; $56c4: $78
	add  [hl]                                        ; $56c5: $86
	ld   a, d                                        ; $56c6: $7a
	add  b                                           ; $56c7: $80
	ld   a, [bc]                                     ; $56c8: $0a
	add  b                                           ; $56c9: $80
	ld   a, d                                        ; $56ca: $7a
	nop                                              ; $56cb: $00
	ld   h, l                                        ; $56cc: $65
	add  e                                           ; $56cd: $83
	ld   d, a                                        ; $56ce: $57
	add  b                                           ; $56cf: $80
	ld   e, a                                        ; $56d0: $5f
	add  b                                           ; $56d1: $80
	ld   d, b                                        ; $56d2: $50
	rlca                                             ; $56d3: $07
	rla                                              ; $56d4: $17
	rst  $10                                         ; $56d5: $d7
	ld   d, a                                        ; $56d6: $57
	rst  $10                                         ; $56d7: $d7
	ld   d, a                                        ; $56d8: $57
	rst  $10                                         ; $56d9: $d7
	rrca                                             ; $56da: $0f
	xor  a                                           ; $56db: $af
	add  c                                           ; $56dc: $81
	rrca                                             ; $56dd: $0f
	nop                                              ; $56de: $00
	xor  a                                           ; $56df: $af
	add  b                                           ; $56e0: $80
	cp   a                                           ; $56e1: $bf
	add  b                                           ; $56e2: $80
	and  c                                           ; $56e3: $a1
	add  h                                           ; $56e4: $84
	xor  a                                           ; $56e5: $af
	nop                                              ; $56e6: $00
	ret                                              ; $56e7: $c9


	add  a                                           ; $56e8: $87
	and  l                                           ; $56e9: $a5
	rlca                                             ; $56ea: $07
	add  c                                           ; $56eb: $81
	db   $ed                                         ; $56ec: $ed
	and  l                                           ; $56ed: $a5
	db   $ed                                         ; $56ee: $ed
	and  l                                           ; $56ef: $a5
	db   $ed                                         ; $56f0: $ed
	ld   [hl], b                                     ; $56f1: $70
	ld   a, d                                        ; $56f2: $7a
	add  c                                           ; $56f3: $81
	ld   [hl], b                                     ; $56f4: $70
	nop                                              ; $56f5: $00
	ld   a, d                                        ; $56f6: $7a
	add  b                                           ; $56f7: $80
	ei                                               ; $56f8: $fb
	add  b                                           ; $56f9: $80
	ld   a, [bc]                                     ; $56fa: $0a
	add  h                                           ; $56fb: $84
	ld   a, d                                        ; $56fc: $7a
	ld   [bc], a                                     ; $56fd: $02
	rla                                              ; $56fe: $17
	rra                                              ; $56ff: $1f
	inc  e                                           ; $5700: $1c
	add  l                                           ; $5701: $85
	rra                                              ; $5702: $1f
	add  d                                           ; $5703: $82
	dec  e                                           ; $5704: $1d
	add  b                                           ; $5705: $80
	inc  e                                           ; $5706: $1c
	ld   [bc], a                                     ; $5707: $02
	adc  e                                           ; $5708: $8b
	add  b                                           ; $5709: $80
	rlca                                             ; $570a: $07
	add  e                                           ; $570b: $83
	ld   hl, sp+$02                                  ; $570c: $f8 $02
	ld   [$191f], sp                                 ; $570e: $08 $1f $19
	add  b                                           ; $5711: $80
	ld   e, $05                                      ; $5712: $1e $05
	rst  $38                                         ; $5714: $ff
	pop  af                                          ; $5715: $f1
	nop                                              ; $5716: $00
	rst  $38                                         ; $5717: $ff
	nop                                              ; $5718: $00
	add  c                                           ; $5719: $81
	add  c                                           ; $571a: $81
	rst  $38                                         ; $571b: $ff
	nop                                              ; $571c: $00
	sbc  a                                           ; $571d: $9f
	add  d                                           ; $571e: $82
	cp   a                                           ; $571f: $bf
	add  b                                           ; $5720: $80
	ccf                                              ; $5721: $3f
	inc  bc                                          ; $5722: $03
	rst  $38                                         ; $5723: $ff
	pop  hl                                          ; $5724: $e1
	ld   bc, $81f1                                   ; $5725: $01 $f1 $81
	jr   nc, jr_08e_56aa                             ; $5728: $30 $80

	jr   c, @+$03                                    ; $572a: $38 $01

	jr   nc, @+$12                                   ; $572c: $30 $10

	add  b                                           ; $572e: $80
	ld   a, [de]                                     ; $572f: $1a
	ld   bc, $0515                                   ; $5730: $01 $15 $05
	add  b                                           ; $5733: $80
	ld   c, $80                                      ; $5734: $0e $80
	rrca                                             ; $5736: $0f
	ld   bc, $03f2                                   ; $5737: $01 $f2 $03
	add  b                                           ; $573a: $80
	inc  b                                           ; $573b: $04
	ld   bc, $0b0a                                   ; $573c: $01 $0a $0b
	add  b                                           ; $573f: $80
	dec  b                                           ; $5740: $05
	add  b                                           ; $5741: $80
	dec  hl                                          ; $5742: $2b
	add  b                                           ; $5743: $80
	ld   d, a                                        ; $5744: $57
	add  b                                           ; $5745: $80
	cp   a                                           ; $5746: $bf
	nop                                              ; $5747: $00

jr_08e_5748:
	rst  $38                                         ; $5748: $ff
	add  b                                           ; $5749: $80
	cp   $02                                         ; $574a: $fe $02
	ldh  [$e7], a                                    ; $574c: $e0 $e7
	rlca                                             ; $574e: $07
	add  b                                           ; $574f: $80
	ld   h, a                                        ; $5750: $67
	add  b                                           ; $5751: $80
	nop                                              ; $5752: $00
	add  d                                           ; $5753: $82
	rst  $30                                         ; $5754: $f7
	rlca                                             ; $5755: $07
	sub  b                                           ; $5756: $90
	rst  $30                                         ; $5757: $f7
	ld   h, a                                        ; $5758: $67
	nop                                              ; $5759: $00
	ld   bc, $7700                                   ; $575a: $01 $00 $77
	halt                                             ; $575d: $76
	add  b                                           ; $575e: $80
	ld   [hl], a                                     ; $575f: $77
	add  b                                           ; $5760: $80
	nop                                              ; $5761: $00
	add  d                                           ; $5762: $82
	ld   [hl], a                                     ; $5763: $77
	ld   [bc], a                                     ; $5764: $02
	adc  b                                           ; $5765: $88
	rst  $38                                         ; $5766: $ff
	ld   [hl], a                                     ; $5767: $77
	add  b                                           ; $5768: $80
	nop                                              ; $5769: $00
	ld   [bc], a                                     ; $576a: $02
	ldh  [$e7], a                                    ; $576b: $e0 $e7
	rlca                                             ; $576d: $07
	add  b                                           ; $576e: $80
	ld   [hl], b                                     ; $576f: $70
	add  b                                           ; $5770: $80
	nop                                              ; $5771: $00
	add  d                                           ; $5772: $82
	ld   h, b                                        ; $5773: $60
	dec  b                                           ; $5774: $05
	add  b                                           ; $5775: $80
	ldh  [$28], a                                    ; $5776: $e0 $28
	ld   b, b                                        ; $5778: $40
	ld   [$8200], sp                                 ; $5779: $08 $00 $82
	ld   [hl], a                                     ; $577c: $77
	add  b                                           ; $577d: $80
	nop                                              ; $577e: $00
	add  d                                           ; $577f: $82
	rla                                              ; $5780: $17
	rlca                                             ; $5781: $07
	ld   [$101f], sp                                 ; $5782: $08 $1f $10
	ld   b, a                                        ; $5785: $47
	ret  nz                                          ; $5786: $c0

	ld   [hl], b                                     ; $5787: $70
	rst  $30                                         ; $5788: $f7
	rlca                                             ; $5789: $07
	add  b                                           ; $578a: $80
	ld   [hl], a                                     ; $578b: $77
	add  b                                           ; $578c: $80
	nop                                              ; $578d: $00
	add  d                                           ; $578e: $82
	ld   [hl], a                                     ; $578f: $77
	inc  bc                                          ; $5790: $03
	adc  b                                           ; $5791: $88
	rst  $38                                         ; $5792: $ff
	nop                                              ; $5793: $00
	ld   [hl], a                                     ; $5794: $77
	add  b                                           ; $5795: $80
	nop                                              ; $5796: $00
	add  b                                           ; $5797: $80
	ld   [hl], a                                     ; $5798: $77
	add  b                                           ; $5799: $80
	ld   h, c                                        ; $579a: $61
	add  b                                           ; $579b: $80
	nop                                              ; $579c: $00
	add  h                                           ; $579d: $84
	add  b                                           ; $579e: $80
	dec  b                                           ; $579f: $05
	jr   nz, jr_08e_57a3                             ; $57a0: $20 $01

	xor  c                                           ; $57a2: $a9

jr_08e_57a3:
	ld   a, b                                        ; $57a3: $78
	ldh  a, [c]                                      ; $57a4: $f2
	ld   [bc], a                                     ; $57a5: $02
	add  b                                           ; $57a6: $80
	halt                                             ; $57a7: $76
	add  b                                           ; $57a8: $80
	nop                                              ; $57a9: $00
	add  d                                           ; $57aa: $82
	halt                                             ; $57ab: $76
	inc  bc                                          ; $57ac: $03
	ld   [$467e], sp                                 ; $57ad: $08 $7e $46
	jr   nc, jr_08e_5748                             ; $57b0: $30 $96

	nop                                              ; $57b2: $00
	ld   b, $05                                      ; $57b3: $06 $05
	nop                                              ; $57b5: $00
	cpl                                              ; $57b6: $2f
	ld   a, [bc]                                     ; $57b7: $0a
	ld   [hl], l                                     ; $57b8: $75
	dec  d                                           ; $57b9: $15
	ld   b, b                                        ; $57ba: $40
	add  a                                           ; $57bb: $87
	nop                                              ; $57bc: $00
	inc  bc                                          ; $57bd: $03
	ld   d, l                                        ; $57be: $55
	nop                                              ; $57bf: $00
	rst  $38                                         ; $57c0: $ff
	xor  d                                           ; $57c1: $aa
	add  b                                           ; $57c2: $80
	ld   d, l                                        ; $57c3: $55
	add  b                                           ; $57c4: $80
	rst  $38                                         ; $57c5: $ff
	add  [hl]                                        ; $57c6: $86
	nop                                              ; $57c7: $00
	inc  bc                                          ; $57c8: $03
	ld   d, l                                        ; $57c9: $55
	nop                                              ; $57ca: $00
	rst  $38                                         ; $57cb: $ff
	xor  d                                           ; $57cc: $aa
	add  b                                           ; $57cd: $80
	ld   d, l                                        ; $57ce: $55
	add  b                                           ; $57cf: $80
	rst  $38                                         ; $57d0: $ff
	ld   bc, $1f17                                   ; $57d1: $01 $17 $1f
	add  [hl]                                        ; $57d4: $86
	inc  e                                           ; $57d5: $1c
	add  h                                           ; $57d6: $84
	dec  e                                           ; $57d7: $1d
	ld   bc, $fff7                                   ; $57d8: $01 $f7 $ff
	add  [hl]                                        ; $57db: $86
	nop                                              ; $57dc: $00
	add  [hl]                                        ; $57dd: $86
	rst  $38                                         ; $57de: $ff
	add  [hl]                                        ; $57df: $86
	ld   bc, $fd84                                   ; $57e0: $01 $84 $fd
	nop                                              ; $57e3: $00
	nop                                              ; $57e4: $00
	add  l                                           ; $57e5: $85
	rrca                                             ; $57e6: $0f
	add  b                                           ; $57e7: $80
	ld   c, $80                                      ; $57e8: $0e $80
	dec  b                                           ; $57ea: $05
	ld   bc, $1a0a                                   ; $57eb: $01 $0a $1a
	add  b                                           ; $57ee: $80
	stop                                             ; $57ef: $10 $00
	rra                                              ; $57f1: $1f
	add  l                                           ; $57f2: $85

jr_08e_57f3:
	cp   $80                                         ; $57f3: $fe $80
	cp   [hl]                                        ; $57f5: $be
	add  b                                           ; $57f6: $80
	ld   d, [hl]                                     ; $57f7: $56
	add  b                                           ; $57f8: $80
	ld   a, [hl+]                                    ; $57f9: $2a
	add  b                                           ; $57fa: $80
	inc  b                                           ; $57fb: $04
	inc  d                                           ; $57fc: $14
	cp   $00                                         ; $57fd: $fe $00
	ld   h, b                                        ; $57ff: $60
	ld   a, a                                        ; $5800: $7f
	ld   de, $060f                                   ; $5801: $11 $0f $06
	add  hl, de                                      ; $5804: $19
	dec  e                                           ; $5805: $1d
	jr   nc, jr_08e_5842                             ; $5806: $30 $3a

	ld   [hl], $27                                   ; $5808: $36 $27
	ld   b, $3e                                      ; $580a: $06 $3e
	nop                                              ; $580c: $00
	jr   nz, jr_08e_580f                             ; $580d: $20 $00

jr_08e_580f:
	ld   a, [$ff06]                                  ; $580f: $fa $06 $ff
	add  c                                           ; $5812: $81
	cp   $0c                                         ; $5813: $fe $0c
	ld   a, a                                        ; $5815: $7f
	cp   $00                                         ; $5816: $fe $00
	ld   b, h                                        ; $5818: $44
	add  $c2                                         ; $5819: $c6 $c2
	and  $ba                                         ; $581b: $e6 $ba
	ld   e, l                                        ; $581d: $5d
	inc  sp                                          ; $581e: $33
	push de                                          ; $581f: $d5
	scf                                              ; $5820: $37
	rlca                                             ; $5821: $07
	add  c                                           ; $5822: $81
	rla                                              ; $5823: $17
	ld   [bc], a                                     ; $5824: $02
	daa                                              ; $5825: $27
	scf                                              ; $5826: $37
	rst  $30                                         ; $5827: $f7
	add  c                                           ; $5828: $81
	ld   [hl], a                                     ; $5829: $77
	inc  c                                           ; $582a: $0c
	rla                                              ; $582b: $17
	ld   [hl], a                                     ; $582c: $77
	inc  e                                           ; $582d: $1c
	ld   d, a                                        ; $582e: $57
	ld   c, e                                        ; $582f: $4b
	ld   d, e                                        ; $5830: $53
	ld   b, c                                        ; $5831: $41
	ld   h, c                                        ; $5832: $61
	ld   h, b                                        ; $5833: $60
	ld   h, c                                        ; $5834: $61
	ld   [hl], d                                     ; $5835: $72
	ld   d, e                                        ; $5836: $53
	ld   d, a                                        ; $5837: $57
	add  c                                           ; $5838: $81
	ld   e, a                                        ; $5839: $5f
	dec  b                                           ; $583a: $05
	ld   e, b                                        ; $583b: $58
	ld   e, a                                        ; $583c: $5f
	ret  c                                           ; $583d: $d8

	cp   $fd                                         ; $583e: $fe $fd
	db   $fc                                         ; $5840: $fc
	add  b                                           ; $5841: $80

jr_08e_5842:
	ld   hl, sp+$03                                  ; $5842: $f8 $03
	nop                                              ; $5844: $00
	ld   [hl], b                                     ; $5845: $70
	adc  h                                           ; $5846: $8c
	db   $fc                                         ; $5847: $fc
	add  d                                           ; $5848: $82
	rst  $38                                         ; $5849: $ff
	ld   b, $00                                      ; $584a: $06 $00
	ld   [hl], a                                     ; $584c: $77
	db   $f4                                         ; $584d: $f4
	call $dd55                                       ; $584e: $cd $55 $dd
	dec  e                                           ; $5851: $1d
	add  c                                           ; $5852: $81
	ld   e, l                                        ; $5853: $5d
	nop                                              ; $5854: $00
	sbc  l                                           ; $5855: $9d
	add  e                                           ; $5856: $83
	db   $dd                                         ; $5857: $dd
	ld   b, $5d                                      ; $5858: $06 $5d
	db   $dd                                         ; $585a: $dd
	ld   hl, $7750                                   ; $585b: $21 $50 $77
	ld   c, b                                        ; $585e: $48
	inc  bc                                          ; $585f: $03
	add  c                                           ; $5860: $81
	add  h                                           ; $5861: $84
	ld   [bc], a                                     ; $5862: $02
	call z, Call_08e_7c4c                            ; $5863: $cc $4c $7c
	add  c                                           ; $5866: $81
	ld   [hl], h                                     ; $5867: $74
	ld   bc, $7000                                   ; $5868: $01 $00 $70
	add  b                                           ; $586b: $80
	nop                                              ; $586c: $00
	ld   [bc], a                                     ; $586d: $02
	add  b                                           ; $586e: $80
	nop                                              ; $586f: $00
	jr   nz, jr_08e_57f3                             ; $5870: $20 $81

	ccf                                              ; $5872: $3f
	ld   [bc], a                                     ; $5873: $02
	daa                                              ; $5874: $27
	rrca                                             ; $5875: $0f
	ld   [$0982], sp                                 ; $5876: $08 $82 $09
	ld   b, $3f                                      ; $5879: $06 $3f
	add  b                                           ; $587b: $80
	nop                                              ; $587c: $00
	ld   a, $00                                      ; $587d: $3e $00
	ld   e, $9e                                      ; $587f: $1e $9e
	add  d                                           ; $5881: $82
	sbc  $06                                         ; $5882: $de $06
	ldh  [$fe], a                                    ; $5884: $e0 $fe
	ret  nc                                          ; $5886: $d0

	adc  $c0                                         ; $5887: $ce $c0
	sbc  $5f                                         ; $5889: $de $5f
	adc  c                                           ; $588b: $89
	rst  $38                                         ; $588c: $ff
	add  d                                           ; $588d: $82
	ccf                                              ; $588e: $3f
	adc  [hl]                                        ; $588f: $8e
	rst  $38                                         ; $5890: $ff
	nop                                              ; $5891: $00
	inc  d                                           ; $5892: $14
	add  b                                           ; $5893: $80
	dec  e                                           ; $5894: $1d
	add  c                                           ; $5895: $81
	rra                                              ; $5896: $1f
	nop                                              ; $5897: $00
	dec  bc                                          ; $5898: $0b
	add  c                                           ; $5899: $81
	nop                                              ; $589a: $00
	add  d                                           ; $589b: $82
	ccf                                              ; $589c: $3f
	add  b                                           ; $589d: $80
	rra                                              ; $589e: $1f
	nop                                              ; $589f: $00
	nop                                              ; $58a0: $00
	add  h                                           ; $58a1: $84
	rst  $38                                         ; $58a2: $ff
	add  d                                           ; $58a3: $82
	nop                                              ; $58a4: $00
	add  c                                           ; $58a5: $81
	rst  $38                                         ; $58a6: $ff
	ld   [bc], a                                     ; $58a7: $02
	ccf                                              ; $58a8: $3f
	rst  $38                                         ; $58a9: $ff
	ccf                                              ; $58aa: $3f
	add  d                                           ; $58ab: $82
	db   $fc                                         ; $58ac: $fc
	add  b                                           ; $58ad: $80
	ld   hl, sp-$80                                  ; $58ae: $f8 $80
	ld   bc, $0302                                   ; $58b0: $01 $02 $03
	rst  $38                                         ; $58b3: $ff
	inc  bc                                          ; $58b4: $03
	add  b                                           ; $58b5: $80
	ei                                               ; $58b6: $fb
	ld   [hl+], a                                    ; $58b7: $22
	ld   a, [$c1fb]                                  ; $58b8: $fa $fb $c1
	ccf                                              ; $58bb: $3f
	jr   z, @+$41                                    ; $58bc: $28 $3f

	cpl                                              ; $58be: $2f
	ccf                                              ; $58bf: $3f
	cpl                                              ; $58c0: $2f
	ccf                                              ; $58c1: $3f
	jr   nz, jr_08e_58fb                             ; $58c2: $20 $37

	db   $10                                         ; $58c4: $10
	rra                                              ; $58c5: $1f
	dec  d                                           ; $58c6: $15
	rra                                              ; $58c7: $1f
	db   $10                                         ; $58c8: $10
	rra                                              ; $58c9: $1f
	db   $f4                                         ; $58ca: $f4
	cp   $8c                                         ; $58cb: $fe $8c
	cp   $f8                                         ; $58cd: $fe $f8
	cp   $f8                                         ; $58cf: $fe $f8
	cp   $00                                         ; $58d1: $fe $00
	halt                                             ; $58d3: $76
	add  b                                           ; $58d4: $80
	cp   $d0                                         ; $58d5: $fe $d0
	cp   $54                                         ; $58d7: $fe $54
	add  b                                           ; $58d9: $80
	xor  d                                           ; $58da: $aa
	add  e                                           ; $58db: $83
	ld   d, $07                                      ; $58dc: $16 $07
	ld   [hl], $16                                   ; $58de: $36 $16
	inc  e                                           ; $58e0: $1c
	nop                                              ; $58e1: $00
	inc  c                                           ; $58e2: $0c
	rrca                                             ; $58e3: $0f
	inc  bc                                          ; $58e4: $03
	nop                                              ; $58e5: $00

jr_08e_58e6:
	add  b                                           ; $58e6: $80
	dec  d                                           ; $58e7: $15
	nop                                              ; $58e8: $00
	ld   l, [hl]                                     ; $58e9: $6e
	add  c                                           ; $58ea: $81
	ld   a, [de]                                     ; $58eb: $1a
	inc  bc                                          ; $58ec: $03
	ld   e, h                                        ; $58ed: $5c
	inc  e                                           ; $58ee: $1c
	ld   [hl], h                                     ; $58ef: $74
	ld   b, b                                        ; $58f0: $40
	add  b                                           ; $58f1: $80
	nop                                              ; $58f2: $00
	inc  bc                                          ; $58f3: $03
	ld   a, $fe                                      ; $58f4: $3e $fe
	ret  nz                                          ; $58f6: $c0

	nop                                              ; $58f7: $00
	add  b                                           ; $58f8: $80
	ld   d, h                                        ; $58f9: $54
	ld   [bc], a                                     ; $58fa: $02

jr_08e_58fb:
	ld   [$2c24], sp                                 ; $58fb: $08 $24 $2c
	add  b                                           ; $58fe: $80
	jr   nc, @+$03                                   ; $58ff: $30 $01

	jr   c, jr_08e_592a                              ; $5901: $38 $27

	add  b                                           ; $5903: $80
	nop                                              ; $5904: $00
	add  b                                           ; $5905: $80
	cpl                                              ; $5906: $2f
	nop                                              ; $5907: $00
	jr   z, @-$7e                                    ; $5908: $28 $80

	cpl                                              ; $590a: $2f
	inc  b                                           ; $590b: $04
	dec  hl                                          ; $590c: $2b
	inc  c                                           ; $590d: $0c
	add  sp, $0f                                     ; $590e: $e8 $0f
	rlca                                             ; $5910: $07
	add  c                                           ; $5911: $81
	ld   [hl], a                                     ; $5912: $77
	nop                                              ; $5913: $00
	ld   a, b                                        ; $5914: $78
	add  b                                           ; $5915: $80
	nop                                              ; $5916: $00
	add  c                                           ; $5917: $81
	rst  $38                                         ; $5918: $ff
	add  b                                           ; $5919: $80
	ld   a, a                                        ; $591a: $7f
	add  b                                           ; $591b: $80
	ccf                                              ; $591c: $3f
	nop                                              ; $591d: $00
	adc  c                                           ; $591e: $89
	add  e                                           ; $591f: $83
	db   $fc                                         ; $5920: $fc
	nop                                              ; $5921: $00
	jp   z, $0080                                    ; $5922: $ca $80 $00

	add  b                                           ; $5925: $80
	sbc  a                                           ; $5926: $9f
	nop                                              ; $5927: $00
	sub  c                                           ; $5928: $91
	add  b                                           ; $5929: $80

jr_08e_592a:
	sbc  [hl]                                        ; $592a: $9e
	ld   [$9896], sp                                 ; $592b: $08 $96 $98
	ret  nc                                          ; $592e: $d0

	add  hl, de                                      ; $592f: $19
	add  hl, bc                                      ; $5930: $09
	add  sp, -$17                                    ; $5931: $e8 $e9
	pop  hl                                          ; $5933: $e1
	rst  $38                                         ; $5934: $ff
	add  b                                           ; $5935: $80
	nop                                              ; $5936: $00
	add  e                                           ; $5937: $83
	rst  $38                                         ; $5938: $ff
	add  b                                           ; $5939: $80
	ld   a, a                                        ; $593a: $7f
	ld   bc, $7444                                   ; $593b: $01 $44 $74
	add  d                                           ; $593e: $82
	db   $f4                                         ; $593f: $f4
	ld   [bc], a                                     ; $5940: $02
	ret  nz                                          ; $5941: $c0

	ldh  a, [rDIV]                                   ; $5942: $f0 $04
	add  e                                           ; $5944: $83
	inc  [hl]                                        ; $5945: $34
	inc  b                                           ; $5946: $04
	nop                                              ; $5947: $00
	jr   nc, jr_08e_594a                             ; $5948: $30 $00

jr_08e_594a:
	inc  bc                                          ; $594a: $03
	ld   [bc], a                                     ; $594b: $02
	add  c                                           ; $594c: $81
	inc  bc                                          ; $594d: $03
	add  b                                           ; $594e: $80
	rla                                              ; $594f: $17
	add  b                                           ; $5950: $80
	dec  bc                                          ; $5951: $0b
	add  b                                           ; $5952: $80
	rla                                              ; $5953: $17
	add  b                                           ; $5954: $80
	dec  bc                                          ; $5955: $0b
	add  b                                           ; $5956: $80
	rla                                              ; $5957: $17
	inc  b                                           ; $5958: $04
	ld   [bc], a                                     ; $5959: $02
	ld   hl, sp+$00                                  ; $595a: $f8 $00
	ld   hl, sp+$38                                  ; $595c: $f8 $38
	add  c                                           ; $595e: $81
	ld   hl, sp+$02                                  ; $595f: $f8 $02

jr_08e_5961:
	jr   c, @-$06                                    ; $5961: $38 $f8

	jr   c, jr_08e_58e6                              ; $5963: $38 $81

	ld   hl, sp+$01                                  ; $5965: $f8 $01
	jr   c, jr_08e_5961                              ; $5967: $38 $f8

	add  h                                           ; $5969: $84
	ccf                                              ; $596a: $3f
	sbc  b                                           ; $596b: $98
	rst  $38                                         ; $596c: $ff
	add  b                                           ; $596d: $80
	rlca                                             ; $596e: $07
	dec  b                                           ; $596f: $05
	ret  nz                                          ; $5970: $c0

	nop                                              ; $5971: $00
	ldh  a, [$c0]                                    ; $5972: $f0 $c0
	rst  $38                                         ; $5974: $ff
	ldh  a, [$81]                                    ; $5975: $f0 $81
	rst  $30                                         ; $5977: $f7
	ld   bc, $f7f6                                   ; $5978: $01 $f6 $f7
	add  c                                           ; $597b: $81
	or   $02                                         ; $597c: $f6 $02
	rrca                                             ; $597e: $0f
	rst  $38                                         ; $597f: $ff
	rrca                                             ; $5980: $0f
	add  c                                           ; $5981: $81
	nop                                              ; $5982: $00
	ld   bc, $00ff                                   ; $5983: $01 $ff $00
	add  c                                           ; $5986: $81
	rst  $38                                         ; $5987: $ff
	add  b                                           ; $5988: $80
	nop                                              ; $5989: $00
	nop                                              ; $598a: $00
	rst  $38                                         ; $598b: $ff
	add  b                                           ; $598c: $80
	nop                                              ; $598d: $00
	ld   [bc], a                                     ; $598e: $02
	ld   sp, hl                                      ; $598f: $f9
	ld   a, [$81fc]                                  ; $5990: $fa $fc $81
	nop                                              ; $5993: $00
	ld   [bc], a                                     ; $5994: $02
	ldh  [rP1], a                                    ; $5995: $e0 $00
	ldh  [$80], a                                    ; $5997: $e0 $80
	ldh  a, [$80]                                    ; $5999: $f0 $80
	ld   [$fb00], sp                                 ; $599b: $08 $00 $fb
	add  b                                           ; $599e: $80
	dec  bc                                          ; $599f: $0b
	ld   bc, $1fe4                                   ; $59a0: $01 $e4 $1f
	add  b                                           ; $59a3: $80
	ld   a, $80                                      ; $59a4: $3e $80
	ld   a, h                                        ; $59a6: $7c
	add  b                                           ; $59a7: $80
	ld   hl, sp-$80                                  ; $59a8: $f8 $80
	ld   sp, $1380                                   ; $59aa: $31 $80 $13
	add  b                                           ; $59ad: $80
	inc  bc                                          ; $59ae: $03
	add  b                                           ; $59af: $80
	jp   nz, $0080                                   ; $59b0: $c2 $80 $00

	nop                                              ; $59b3: $00
	db   $10                                         ; $59b4: $10
	add  c                                           ; $59b5: $81
	rra                                              ; $59b6: $1f
	add  h                                           ; $59b7: $84
	sbc  a                                           ; $59b8: $9f
	add  c                                           ; $59b9: $81
	rra                                              ; $59ba: $1f
	nop                                              ; $59bb: $00
	db   $10                                         ; $59bc: $10
	add  b                                           ; $59bd: $80
	rra                                              ; $59be: $1f
	add  d                                           ; $59bf: $82
	add  b                                           ; $59c0: $80
	add  d                                           ; $59c1: $82
	xor  a                                           ; $59c2: $af
	nop                                              ; $59c3: $00
	xor  b                                           ; $59c4: $a8
	add  c                                           ; $59c5: $81
	xor  a                                           ; $59c6: $af
	add  b                                           ; $59c7: $80
	xor  h                                           ; $59c8: $ac
	ld   bc, $fef9                                   ; $59c9: $01 $f9 $fe
	add  d                                           ; $59cc: $82
	nop                                              ; $59cd: $00
	add  d                                           ; $59ce: $82
	ld   a, d                                        ; $59cf: $7a
	nop                                              ; $59d0: $00
	add  h                                           ; $59d1: $84
	add  c                                           ; $59d2: $81
	cp   $0b                                         ; $59d3: $fe $0b
	ld   [bc], a                                     ; $59d5: $02
	add  b                                           ; $59d6: $80
	and  $2e                                         ; $59d7: $e6 $2e
	inc  hl                                          ; $59d9: $23
	cpl                                              ; $59da: $2f
	inc  a                                           ; $59db: $3c
	jr   nz, jr_08e_5a1d                             ; $59dc: $20 $3f

	rra                                              ; $59de: $1f
	dec  de                                          ; $59df: $1b
	dec  sp                                          ; $59e0: $3b
	add  b                                           ; $59e1: $80
	ld   a, [hl-]                                    ; $59e2: $3a
	add  c                                           ; $59e3: $81
	jr   nz, jr_08e_59e8                             ; $59e4: $20 $02

	ccf                                              ; $59e6: $3f
	nop                                              ; $59e7: $00

jr_08e_59e8:
	ccf                                              ; $59e8: $3f
	add  b                                           ; $59e9: $80
	rlca                                             ; $59ea: $07
	inc  bc                                          ; $59eb: $03
	ld   a, b                                        ; $59ec: $78
	nop                                              ; $59ed: $00
	inc  bc                                          ; $59ee: $03
	dec  sp                                          ; $59ef: $3b
	add  c                                           ; $59f0: $81
	ld   a, [hl-]                                    ; $59f1: $3a
	nop                                              ; $59f2: $00
	ld   a, d                                        ; $59f3: $7a
	add  c                                           ; $59f4: $81
	nop                                              ; $59f5: $00
	ld   a, [bc]                                     ; $59f6: $0a
	inc  bc                                          ; $59f7: $03
	cp   a                                           ; $59f8: $bf
	sbc  h                                           ; $59f9: $9c
	add  [hl]                                        ; $59fa: $86
	sbc  [hl]                                        ; $59fb: $9e
	jr   c, jr_08e_59fe                              ; $59fc: $38 $00

jr_08e_59fe:
	sbc  [hl]                                        ; $59fe: $9e
	cp   [hl]                                        ; $59ff: $be
	adc  [hl]                                        ; $5a00: $8e
	xor  [hl]                                        ; $5a01: $ae
	add  b                                           ; $5a02: $80
	inc  h                                           ; $5a03: $24
	add  c                                           ; $5a04: $81
	nop                                              ; $5a05: $00
	ld   [bc], a                                     ; $5a06: $02
	cp   $81                                         ; $5a07: $fe $81
	ld   a, a                                        ; $5a09: $7f
	add  b                                           ; $5a0a: $80
	rrca                                             ; $5a0b: $0f
	ld   [bc], a                                     ; $5a0c: $02
	ldh  a, [rP1]                                    ; $5a0d: $f0 $00
	rlca                                             ; $5a0f: $07
	add  c                                           ; $5a10: $81
	ld   [hl], a                                     ; $5a11: $77
	ld   bc, $f575                                   ; $5a12: $01 $75 $f5
	add  c                                           ; $5a15: $81
	nop                                              ; $5a16: $00
	ld   bc, $3307                                   ; $5a17: $01 $07 $33
	add  e                                           ; $5a1a: $83
	inc  [hl]                                        ; $5a1b: $34
	add  b                                           ; $5a1c: $80

jr_08e_5a1d:
	nop                                              ; $5a1d: $00
	add  h                                           ; $5a1e: $84
	inc  [hl]                                        ; $5a1f: $34
	add  b                                           ; $5a20: $80
	ld   [hl], b                                     ; $5a21: $70
	ld   bc, FarGetAddrBank                                   ; $5a22: $01 $09 $0b
	add  b                                           ; $5a25: $80
	rla                                              ; $5a26: $17
	add  b                                           ; $5a27: $80
	dec  bc                                          ; $5a28: $0b
	add  b                                           ; $5a29: $80
	rla                                              ; $5a2a: $17
	ld   bc, $080b                                   ; $5a2b: $01 $0b $08
	add  b                                           ; $5a2e: $80
	inc  d                                           ; $5a2f: $14
	ld   bc, $0809                                   ; $5a30: $01 $09 $08
	add  b                                           ; $5a33: $80
	dec  d                                           ; $5a34: $15
	nop                                              ; $5a35: $00
	ld   [$e882], sp                                 ; $5a36: $08 $82 $e8
	nop                                              ; $5a39: $00
	ld   [$f881], sp                                 ; $5a3a: $08 $81 $f8
	add  c                                           ; $5a3d: $81
	nop                                              ; $5a3e: $00
	ld   bc, $00f8                                   ; $5a3f: $01 $f8 $00
	add  b                                           ; $5a42: $80
	ld   d, b                                        ; $5a43: $50
	adc  b                                           ; $5a44: $88
	rst  $38                                         ; $5a45: $ff
	add  d                                           ; $5a46: $82
	rlca                                             ; $5a47: $07
	add  b                                           ; $5a48: $80
	nop                                              ; $5a49: $00
	adc  [hl]                                        ; $5a4a: $8e
	rst  $38                                         ; $5a4b: $ff
	nop                                              ; $5a4c: $00
	nop                                              ; $5a4d: $00
	nop                                              ; $5a4e: $00
	nop                                              ; $5a4f: $00
	ei                                               ; $5a50: $fb
	inc  bc                                          ; $5a51: $03
	nop                                              ; $5a52: $00
	rst  $38                                         ; $5a53: $ff
	rst  $38                                         ; $5a54: $ff
	nop                                              ; $5a55: $00
	add  h                                           ; $5a56: $84
	nop                                              ; $5a57: $00
	nop                                              ; $5a58: $00
	ld   a, a                                        ; $5a59: $7f
	add  c                                           ; $5a5a: $81
	nop                                              ; $5a5b: $00
	ld   bc, $101f                                   ; $5a5c: $01 $1f $10
	add  b                                           ; $5a5f: $80
	rra                                              ; $5a60: $1f
	nop                                              ; $5a61: $00
	ld   [hl], b                                     ; $5a62: $70
	add  l                                           ; $5a63: $85
	nop                                              ; $5a64: $00
	nop                                              ; $5a65: $00
	rst  $38                                         ; $5a66: $ff
	add  c                                           ; $5a67: $81
	nop                                              ; $5a68: $00
	ld   bc, $00ff                                   ; $5a69: $01 $ff $00
	add  b                                           ; $5a6c: $80
	rst  $38                                         ; $5a6d: $ff
	add  [hl]                                        ; $5a6e: $86
	nop                                              ; $5a6f: $00
	nop                                              ; $5a70: $00
	rst  $38                                         ; $5a71: $ff
	add  c                                           ; $5a72: $81
	nop                                              ; $5a73: $00
	inc  b                                           ; $5a74: $04
	rst  $38                                         ; $5a75: $ff
	nop                                              ; $5a76: $00
	ldh  [rIE], a                                    ; $5a77: $e0 $ff
	rra                                              ; $5a79: $1f
	add  l                                           ; $5a7a: $85
	nop                                              ; $5a7b: $00
	nop                                              ; $5a7c: $00
	rst  $38                                         ; $5a7d: $ff
	add  c                                           ; $5a7e: $81
	nop                                              ; $5a7f: $00
	inc  b                                           ; $5a80: $04
	rst  $38                                         ; $5a81: $ff
	nop                                              ; $5a82: $00
	rra                                              ; $5a83: $1f
	rst  $38                                         ; $5a84: $ff
	ldh  [c], a                                      ; $5a85: $e2
	add  l                                           ; $5a86: $85
	ld   bc, $fd00                                   ; $5a87: $01 $00 $fd
	add  c                                           ; $5a8a: $81
	ld   bc, $2100                                   ; $5a8b: $01 $00 $21
	add  c                                           ; $5a8e: $81
	dec  a                                           ; $5a8f: $3d
	nop                                              ; $5a90: $00
	db   $e3                                         ; $5a91: $e3
	adc  b                                           ; $5a92: $88
	rst  $38                                         ; $5a93: $ff
	add  b                                           ; $5a94: $80
	di                                               ; $5a95: $f3
	add  b                                           ; $5a96: $80
	pop  hl                                          ; $5a97: $e1
	add  b                                           ; $5a98: $80
	ret  nz                                          ; $5a99: $c0

	add  [hl]                                        ; $5a9a: $86
	rst  $38                                         ; $5a9b: $ff
	add  b                                           ; $5a9c: $80
	ld   sp, hl                                      ; $5a9d: $f9
	add  b                                           ; $5a9e: $80
	ldh  a, [$0b]                                    ; $5a9f: $f0 $0b
	ldh  [$e1], a                                    ; $5aa1: $e0 $e1
	add  b                                           ; $5aa3: $80
	pop  bc                                          ; $5aa4: $c1
	add  b                                           ; $5aa5: $80
	cp   [hl]                                        ; $5aa6: $be
	add  b                                           ; $5aa7: $80
	sbc  h                                           ; $5aa8: $9c
	and  b                                           ; $5aa9: $a0
	sbc  b                                           ; $5aaa: $98
	and  b                                           ; $5aab: $a0
	sub  l                                           ; $5aac: $95
	add  c                                           ; $5aad: $81
	sub  h                                           ; $5aae: $94
	ld   bc, $9495                                   ; $5aaf: $01 $95 $94
	add  b                                           ; $5ab2: $80
	sub  l                                           ; $5ab3: $95
	nop                                              ; $5ab4: $00
	ld   a, [$0089]                                  ; $5ab5: $fa $89 $00
	nop                                              ; $5ab8: $00
	rra                                              ; $5ab9: $1f
	add  c                                           ; $5aba: $81
	nop                                              ; $5abb: $00
	nop                                              ; $5abc: $00
	rra                                              ; $5abd: $1f
	adc  c                                           ; $5abe: $89
	nop                                              ; $5abf: $00
	nop                                              ; $5ac0: $00
	rst  $38                                         ; $5ac1: $ff
	add  c                                           ; $5ac2: $81
	nop                                              ; $5ac3: $00
	nop                                              ; $5ac4: $00
	rst  $38                                         ; $5ac5: $ff
	adc  c                                           ; $5ac6: $89
	nop                                              ; $5ac7: $00
	nop                                              ; $5ac8: $00
	rst  $38                                         ; $5ac9: $ff
	add  c                                           ; $5aca: $81
	nop                                              ; $5acb: $00
	nop                                              ; $5acc: $00
	rst  $38                                         ; $5acd: $ff
	adc  c                                           ; $5ace: $89
	nop                                              ; $5acf: $00
	nop                                              ; $5ad0: $00
	rst  $38                                         ; $5ad1: $ff
	add  c                                           ; $5ad2: $81
	nop                                              ; $5ad3: $00
	nop                                              ; $5ad4: $00
	rst  $38                                         ; $5ad5: $ff
	adc  c                                           ; $5ad6: $89
	nop                                              ; $5ad7: $00
	nop                                              ; $5ad8: $00
	rst  $38                                         ; $5ad9: $ff
	add  c                                           ; $5ada: $81
	nop                                              ; $5adb: $00
	nop                                              ; $5adc: $00
	rst  $38                                         ; $5add: $ff
	xor  l                                           ; $5ade: $ad
	nop                                              ; $5adf: $00
	inc  b                                           ; $5ae0: $04
	ld   l, a                                        ; $5ae1: $6f
	rra                                              ; $5ae2: $1f
	db   $10                                         ; $5ae3: $10
	rra                                              ; $5ae4: $1f
	db   $10                                         ; $5ae5: $10
	add  e                                           ; $5ae6: $83
	rra                                              ; $5ae7: $1f
	add  b                                           ; $5ae8: $80
	db   $10                                         ; $5ae9: $10
	add  d                                           ; $5aea: $82
	rra                                              ; $5aeb: $1f
	add  hl, bc                                      ; $5aec: $09
	adc  c                                           ; $5aed: $89
	ld   sp, hl                                      ; $5aee: $f9
	ld   bc, $5bfb                                   ; $5aef: $01 $fb $5b
	sbc  c                                           ; $5af2: $99
	sbc  b                                           ; $5af3: $98
	sbc  c                                           ; $5af4: $99
	adc  c                                           ; $5af5: $89
	add  l                                           ; $5af6: $85
	add  b                                           ; $5af7: $80
	dec  b                                           ; $5af8: $05
	ld   b, $d6                                      ; $5af9: $06 $d6
	call nc, $d1d6                                   ; $5afb: $d4 $d6 $d1
	rst  $10                                         ; $5afe: $d7
	rst  $30                                         ; $5aff: $f7
	rla                                              ; $5b00: $17
	add  c                                           ; $5b01: $81
	ld   [hl], a                                     ; $5b02: $77
	add  b                                           ; $5b03: $80
	ld   h, b                                        ; $5b04: $60
	nop                                              ; $5b05: $00
	ld   h, a                                        ; $5b06: $67
	add  b                                           ; $5b07: $80
	ld   b, b                                        ; $5b08: $40
	ld   bc, $c242                                   ; $5b09: $01 $42 $c2
	add  b                                           ; $5b0c: $80
	ld   b, a                                        ; $5b0d: $47
	ld   bc, $e880                                   ; $5b0e: $01 $80 $e8
	add  b                                           ; $5b11: $80
	ret  nz                                          ; $5b12: $c0

	add  b                                           ; $5b13: $80
	rst  JumpTable                                         ; $5b14: $df
	inc  b                                           ; $5b15: $04
	ret  nz                                          ; $5b16: $c0

	ld   b, b                                        ; $5b17: $40
	ld   a, a                                        ; $5b18: $7f
	rst  $38                                         ; $5b19: $ff
	ld   bc, $d580                                   ; $5b1a: $01 $80 $d5
	nop                                              ; $5b1d: $00
	ld   bc, $ff80                                   ; $5b1e: $01 $80 $ff
	inc  c                                           ; $5b21: $0c
	ld   bc, $3026                                   ; $5b22: $01 $26 $30
	ccf                                              ; $5b25: $3f
	jr   nz, @+$25                                   ; $5b26: $20 $23

	jr   nz, @+$23                                   ; $5b28: $20 $21

	jr   nz, jr_08e_5b67                             ; $5b2a: $20 $3b

	ld   sp, $393b                                   ; $5b2c: $31 $3b $39
	add  b                                           ; $5b2f: $80
	ld   hl, $3980                                   ; $5b30: $21 $80 $39
	dec  bc                                          ; $5b33: $0b
	adc  l                                           ; $5b34: $8d
	ld   h, b                                        ; $5b35: $60
	ld   e, [hl]                                     ; $5b36: $5e
	ld   h, b                                        ; $5b37: $60
	ld   h, $60                                      ; $5b38: $26 $60
	ld   h, d                                        ; $5b3a: $62
	ld   h, b                                        ; $5b3b: $60
	adc  $fb                                         ; $5b3c: $ce $fb
	ld   e, a                                        ; $5b3e: $5f
	ei                                               ; $5b3f: $fb
	add  b                                           ; $5b40: $80
	ld   [$4317], a                                  ; $5b41: $ea $17 $43
	jp   $ffaf                                       ; $5b44: $c3 $af $ff


	xor  l                                           ; $5b47: $ad
	rst  $38                                         ; $5b48: $ff
	ld   hl, $b3e7                                   ; $5b49: $21 $e7 $b3
	rst  $38                                         ; $5b4c: $ff
	ld   c, e                                        ; $5b4d: $4b
	ld   a, a                                        ; $5b4e: $7f
	inc  l                                           ; $5b4f: $2c
	ld   a, $02                                      ; $5b50: $3e $02
	jr   z, jr_08e_5b84                              ; $5b52: $28 $30

	ld   [hl], b                                     ; $5b54: $70
	ret  nc                                          ; $5b55: $d0

	sub  l                                           ; $5b56: $95
	xor  l                                           ; $5b57: $ad
	or   l                                           ; $5b58: $b5
	sbc  l                                           ; $5b59: $9d
	add  l                                           ; $5b5a: $85
	add  c                                           ; $5b5b: $81
	sub  l                                           ; $5b5c: $95
	add  l                                           ; $5b5d: $85
	sub  h                                           ; $5b5e: $94
	ld   [bc], a                                     ; $5b5f: $02
	rst  $20                                         ; $5b60: $e7
	inc  b                                           ; $5b61: $04
	inc  bc                                          ; $5b62: $03
	add  c                                           ; $5b63: $81
	rlca                                             ; $5b64: $07
	nop                                              ; $5b65: $00
	inc  bc                                          ; $5b66: $03

jr_08e_5b67:
	add  b                                           ; $5b67: $80
	nop                                              ; $5b68: $00
	nop                                              ; $5b69: $00
	rlca                                             ; $5b6a: $07
	add  b                                           ; $5b6b: $80
	ld   b, $80                                      ; $5b6c: $06 $80
	inc  b                                           ; $5b6e: $04
	add  b                                           ; $5b6f: $80
	ld   b, $01                                      ; $5b70: $06 $01
	jr   jr_08e_5b74                                 ; $5b72: $18 $00

jr_08e_5b74:
	add  e                                           ; $5b74: $83
	rst  $38                                         ; $5b75: $ff
	ld   b, $1f                                      ; $5b76: $06 $1f
	sbc  a                                           ; $5b78: $9f
	ld   l, a                                        ; $5b79: $6f
	cpl                                              ; $5b7a: $2f
	scf                                              ; $5b7b: $37
	ld   b, b                                        ; $5b7c: $40
	ld   b, a                                        ; $5b7d: $47
	add  b                                           ; $5b7e: $80
	add  b                                           ; $5b7f: $80
	ld   bc, $000f                                   ; $5b80: $01 $0f $00
	add  d                                           ; $5b83: $82

jr_08e_5b84:
	rst  $38                                         ; $5b84: $ff
	ld   [bc], a                                     ; $5b85: $02
	nop                                              ; $5b86: $00
	rst  $38                                         ; $5b87: $ff
	ld   b, b                                        ; $5b88: $40
	add  e                                           ; $5b89: $83
	ccf                                              ; $5b8a: $3f
	add  b                                           ; $5b8b: $80
	nop                                              ; $5b8c: $00
	ld   bc, $0070                                   ; $5b8d: $01 $70 $00
	add  d                                           ; $5b90: $82
	rrca                                             ; $5b91: $0f
	dec  b                                           ; $5b92: $05
	nop                                              ; $5b93: $00
	rrca                                             ; $5b94: $0f
	nop                                              ; $5b95: $00
	inc  b                                           ; $5b96: $04
	dec  bc                                          ; $5b97: $0b
	rrca                                             ; $5b98: $0f
	add  c                                           ; $5b99: $81
	nop                                              ; $5b9a: $00
	ld   [bc], a                                     ; $5b9b: $02
	rrca                                             ; $5b9c: $0f
	di                                               ; $5b9d: $f3
	nop                                              ; $5b9e: $00
	add  d                                           ; $5b9f: $82
	db   $fc                                         ; $5ba0: $fc
	dec  b                                           ; $5ba1: $05
	nop                                              ; $5ba2: $00
	db   $fc                                         ; $5ba3: $fc
	nop                                              ; $5ba4: $00
	sub  b                                           ; $5ba5: $90
	ld   l, h                                        ; $5ba6: $6c
	db   $fc                                         ; $5ba7: $fc
	add  c                                           ; $5ba8: $81
	nop                                              ; $5ba9: $00
	ld   bc, $03fc                                   ; $5baa: $01 $fc $03
	xor  l                                           ; $5bad: $ad
	nop                                              ; $5bae: $00
	inc  bc                                          ; $5baf: $03
	ld   l, a                                        ; $5bb0: $6f
	db   $10                                         ; $5bb1: $10
	rra                                              ; $5bb2: $1f
	db   $10                                         ; $5bb3: $10
	add  d                                           ; $5bb4: $82
	rra                                              ; $5bb5: $1f
	ld   bc, $000f                                   ; $5bb6: $01 $0f $00
	add  d                                           ; $5bb9: $82
	ld   e, $0b                                      ; $5bba: $1e $0b
	add  hl, de                                      ; $5bbc: $19
	rra                                              ; $5bbd: $1f
	sbc  c                                           ; $5bbe: $99
	rla                                              ; $5bbf: $17
	call nc, $9417                                   ; $5bc0: $d4 $17 $94
	sub  a                                           ; $5bc3: $97
	sbc  b                                           ; $5bc4: $98
	sbc  a                                           ; $5bc5: $9f
	rst  JumpTable                                         ; $5bc6: $df
	db   $10                                         ; $5bc7: $10
	add  d                                           ; $5bc8: $82
	db   $db                                         ; $5bc9: $db
	dec  c                                           ; $5bca: $0d
	inc  h                                           ; $5bcb: $24
	rst  $38                                         ; $5bcc: $ff
	inc  de                                          ; $5bcd: $13
	db   $e3                                         ; $5bce: $e3
	ld   h, e                                        ; $5bcf: $63
	rst  $20                                         ; $5bd0: $e7
	ld   h, a                                        ; $5bd1: $67
	ldh  [rAUD4LEN], a                               ; $5bd2: $e0 $20
	pop  hl                                          ; $5bd4: $e1
	jp   hl                                          ; $5bd5: $e9


	rrca                                             ; $5bd6: $0f
	ld   l, a                                        ; $5bd7: $6f
	ld   h, b                                        ; $5bd8: $60
	add  b                                           ; $5bd9: $80
	ld   l, l                                        ; $5bda: $6d
	inc  b                                           ; $5bdb: $04
	sub  l                                           ; $5bdc: $95
	db   $fd                                         ; $5bdd: $fd
	jr   nz, jr_08e_5c4d                             ; $5bde: $20 $6d

	dec  h                                           ; $5be0: $25
	add  b                                           ; $5be1: $80
	rst  $38                                         ; $5be2: $ff
	inc  bc                                          ; $5be3: $03
	ld   bc, $c941                                   ; $5be4: $01 $41 $c9
	adc  c                                           ; $5be7: $89
	add  b                                           ; $5be8: $80
	rst  $38                                         ; $5be9: $ff
	nop                                              ; $5bea: $00
	nop                                              ; $5beb: $00
	add  d                                           ; $5bec: $82
	or   [hl]                                        ; $5bed: $b6
	ld   bc, $3923                                   ; $5bee: $01 $23 $39
	add  b                                           ; $5bf1: $80
	jr   c, jr_08e_5bfa                              ; $5bf2: $38 $06

	scf                                              ; $5bf4: $37
	jr   c, jr_08e_5c36                              ; $5bf5: $38 $3f

	ld   [hl+], a                                    ; $5bf7: $22
	jr   nz, @+$2d                                   ; $5bf8: $20 $2b

jr_08e_5bfa:
	daa                                              ; $5bfa: $27
	add  c                                           ; $5bfb: $81
	ccf                                              ; $5bfc: $3f
	inc  bc                                          ; $5bfd: $03
	inc  a                                           ; $5bfe: $3c
	ccf                                              ; $5bff: $3f
	rst  $20                                         ; $5c00: $e7
	ei                                               ; $5c01: $fb
	add  b                                           ; $5c02: $80
	nop                                              ; $5c03: $00
	ld   [$f1ff], sp                                 ; $5c04: $08 $ff $f1
	rst  $38                                         ; $5c07: $ff
	ld   h, h                                        ; $5c08: $64
	jp   c, $b36f                                    ; $5c09: $da $6f $b3

	rst  $38                                         ; $5c0c: $ff
	sub  a                                           ; $5c0d: $97
	add  b                                           ; $5c0e: $80
	ld   hl, sp-$80                                  ; $5c0f: $f8 $80
	add  b                                           ; $5c11: $80
	nop                                              ; $5c12: $00
	rst  $38                                         ; $5c13: $ff
	add  b                                           ; $5c14: $80
	nop                                              ; $5c15: $00
	add  d                                           ; $5c16: $82
	or   [hl]                                        ; $5c17: $b6
	ld   [bc], a                                     ; $5c18: $02
	ret                                              ; $5c19: $c9


	rst  $38                                         ; $5c1a: $ff
	ret                                              ; $5c1b: $c9


	add  b                                           ; $5c1c: $80
	rst  $38                                         ; $5c1d: $ff
	add  c                                           ; $5c1e: $81
	nop                                              ; $5c1f: $00
	inc  bc                                          ; $5c20: $03
	ld   e, [hl]                                     ; $5c21: $5e
	cp   l                                           ; $5c22: $bd
	dec  e                                           ; $5c23: $1d
	ld   bc, $db80                                   ; $5c24: $01 $80 $db
	add  b                                           ; $5c27: $80
	jp   c, $2402                                    ; $5c28: $da $02 $24

	rst  $38                                         ; $5c2b: $ff
	inc  h                                           ; $5c2c: $24
	add  b                                           ; $5c2d: $80
	rst  $38                                         ; $5c2e: $ff
	add  c                                           ; $5c2f: $81
	nop                                              ; $5c30: $00
	dec  bc                                          ; $5c31: $0b
	jr   jr_08e_5c34                                 ; $5c32: $18 $00

jr_08e_5c34:
	rlca                                             ; $5c34: $07
	nop                                              ; $5c35: $00

jr_08e_5c36:
	rlca                                             ; $5c36: $07
	inc  b                                           ; $5c37: $04
	dec  b                                           ; $5c38: $05
	nop                                              ; $5c39: $00
	ld   bc, $0304                                   ; $5c3a: $01 $04 $03

jr_08e_5c3d:
	nop                                              ; $5c3d: $00
	add  d                                           ; $5c3e: $82
	rlca                                             ; $5c3f: $07
	inc  c                                           ; $5c40: $0c
	rla                                              ; $5c41: $17
	rlca                                             ; $5c42: $07
	rst  $20                                         ; $5c43: $e7
	rlca                                             ; $5c44: $07
	db   $f4                                         ; $5c45: $f4
	rla                                              ; $5c46: $17
	rst  $30                                         ; $5c47: $f7
	rlca                                             ; $5c48: $07
	rst  $30                                         ; $5c49: $f7
	rlca                                             ; $5c4a: $07
	di                                               ; $5c4b: $f3
	nop                                              ; $5c4c: $00

jr_08e_5c4d:
	call c, $df81                                    ; $5c4d: $dc $81 $df
	nop                                              ; $5c50: $00
	inc  bc                                          ; $5c51: $03
	add  b                                           ; $5c52: $80
	ld   a, a                                        ; $5c53: $7f
	nop                                              ; $5c54: $00
	ld   b, c                                        ; $5c55: $41
	add  c                                           ; $5c56: $81
	ld   d, l                                        ; $5c57: $55
	nop                                              ; $5c58: $00
	inc  d                                           ; $5c59: $14
	add  b                                           ; $5c5a: $80
	rst  $30                                         ; $5c5b: $f7
	add  b                                           ; $5c5c: $80
	rlca                                             ; $5c5d: $07
	add  b                                           ; $5c5e: $80
	rst  $30                                         ; $5c5f: $f7
	add  b                                           ; $5c60: $80
	ldh  a, [rSB]                                    ; $5c61: $f0 $01
	nop                                              ; $5c63: $00
	rrca                                             ; $5c64: $0f
	add  d                                           ; $5c65: $82
	ccf                                              ; $5c66: $3f
	add  d                                           ; $5c67: $82
	ld   a, $80                                      ; $5c68: $3e $80
	ld   c, $80                                      ; $5c6a: $0e $80
	ld   a, $03                                      ; $5c6c: $3e $03
	ld   c, $3e                                      ; $5c6e: $0e $3e
	ccf                                              ; $5c70: $3f
	db   $fc                                         ; $5c71: $fc
	add  d                                           ; $5c72: $82
	rst  $38                                         ; $5c73: $ff
	add  d                                           ; $5c74: $82
	inc  bc                                          ; $5c75: $03
	add  b                                           ; $5c76: $80
	nop                                              ; $5c77: $00
	add  b                                           ; $5c78: $80
	inc  bc                                          ; $5c79: $03
	ld   [bc], a                                     ; $5c7a: $02
	nop                                              ; $5c7b: $00
	inc  bc                                          ; $5c7c: $03
	rst  $38                                         ; $5c7d: $ff
	add  c                                           ; $5c7e: $81
	nop                                              ; $5c7f: $00
	ld   bc, $80ff                                   ; $5c80: $01 $ff $80
	add  d                                           ; $5c83: $82
	cp   a                                           ; $5c84: $bf
	ld   b, $c0                                      ; $5c85: $06 $c0
	rst  $38                                         ; $5c87: $ff
	add  b                                           ; $5c88: $80
	and  h                                           ; $5c89: $a4
	db   $db                                         ; $5c8a: $db
	rst  $38                                         ; $5c8b: $ff
	ld   b, b                                        ; $5c8c: $40
	add  c                                           ; $5c8d: $81
	nop                                              ; $5c8e: $00
	ld   bc, $00ff                                   ; $5c8f: $01 $ff $00
	add  d                                           ; $5c92: $82
	rst  $38                                         ; $5c93: $ff
	dec  b                                           ; $5c94: $05
	nop                                              ; $5c95: $00
	rst  $38                                         ; $5c96: $ff
	nop                                              ; $5c97: $00
	sub  d                                           ; $5c98: $92
	ld   l, l                                        ; $5c99: $6d
	rst  $38                                         ; $5c9a: $ff
	add  d                                           ; $5c9b: $82
	nop                                              ; $5c9c: $00
	ld   bc, $00ff                                   ; $5c9d: $01 $ff $00
	add  d                                           ; $5ca0: $82
	rst  $38                                         ; $5ca1: $ff
	ld   b, $00                                      ; $5ca2: $06 $00
	rst  $38                                         ; $5ca4: $ff
	nop                                              ; $5ca5: $00
	ld   c, c                                        ; $5ca6: $49
	or   [hl]                                        ; $5ca7: $b6
	rst  $38                                         ; $5ca8: $ff
	add  hl, de                                      ; $5ca9: $19
	add  c                                           ; $5caa: $81
	rra                                              ; $5cab: $1f
	ld   bc, $1fff                                   ; $5cac: $01 $ff $1f
	add  d                                           ; $5caf: $82
	rst  $38                                         ; $5cb0: $ff
	ld   b, $1f                                      ; $5cb1: $06 $1f
	rst  $38                                         ; $5cb3: $ff
	rra                                              ; $5cb4: $1f
	ccf                                              ; $5cb5: $3f
	reti                                             ; $5cb6: $d9


	rst  $38                                         ; $5cb7: $ff
	jr   nz, jr_08e_5c3d                             ; $5cb8: $20 $83

	ld   hl, sp-$7e                                  ; $5cba: $f8 $82
	ld   sp, hl                                      ; $5cbc: $f9
	ld   bc, $f8ff                                   ; $5cbd: $01 $ff $f8
	add  b                                           ; $5cc0: $80
	ei                                               ; $5cc1: $fb
	ld   [bc], a                                     ; $5cc2: $02
	inc  hl                                          ; $5cc3: $23
	ei                                               ; $5cc4: $fb
	rlca                                             ; $5cc5: $07
	add  c                                           ; $5cc6: $81
	nop                                              ; $5cc7: $00
	ld   bc, $00ff                                   ; $5cc8: $01 $ff $00
	add  l                                           ; $5ccb: $85
	rst  $38                                         ; $5ccc: $ff
	nop                                              ; $5ccd: $00
	nop                                              ; $5cce: $00
	add  b                                           ; $5ccf: $80
	ld   a, a                                        ; $5cd0: $7f
	add  d                                           ; $5cd1: $82

jr_08e_5cd2:
	nop                                              ; $5cd2: $00
	ld   bc, $00ff                                   ; $5cd3: $01 $ff $00
	add  b                                           ; $5cd6: $80
	rst  $38                                         ; $5cd7: $ff
	ld   a, [de]                                     ; $5cd8: $1a

jr_08e_5cd9:
	cp   $ff                                         ; $5cd9: $fe $ff
	db   $fd                                         ; $5cdb: $fd
	cp   $fa                                         ; $5cdc: $fe $fa
	inc  b                                           ; $5cde: $04
	dec  b                                           ; $5cdf: $05
	ld   [hl], b                                     ; $5ce0: $70
	ld   e, c                                        ; $5ce1: $59
	inc  a                                           ; $5ce2: $3c
	inc  l                                           ; $5ce3: $2c
	jr   nc, jr_08e_5cd9                             ; $5ce4: $30 $f3

	nop                                              ; $5ce6: $00
	inc  c                                           ; $5ce7: $0c
	add  b                                           ; $5ce8: $80
	or   e                                           ; $5ce9: $b3
	dec  bc                                          ; $5cea: $0b
	ld   c, b                                        ; $5ceb: $48
	rrca                                             ; $5cec: $0f
	adc  a                                           ; $5ced: $8f
	ld   [$0310], sp                                 ; $5cee: $08 $10 $03
	db   $e3                                         ; $5cf1: $e3
	jr   @-$1e                                       ; $5cf2: $18 $e0

	add  b                                           ; $5cf4: $80
	ld   bc, $0080                                   ; $5cf5: $01 $80 $00
	inc  bc                                          ; $5cf8: $03
	ld   bc, $fffe                                   ; $5cf9: $01 $fe $ff
	nop                                              ; $5cfc: $00
	add  b                                           ; $5cfd: $80
	rst  $38                                         ; $5cfe: $ff
	add  b                                           ; $5cff: $80
	nop                                              ; $5d00: $00
	add  b                                           ; $5d01: $80
	rst  $38                                         ; $5d02: $ff
	add  b                                           ; $5d03: $80
	nop                                              ; $5d04: $00
	add  b                                           ; $5d05: $80
	ld   d, l                                        ; $5d06: $55
	add  b                                           ; $5d07: $80
	xor  d                                           ; $5d08: $aa
	inc  bc                                          ; $5d09: $03
	ld   d, l                                        ; $5d0a: $55
	xor  d                                           ; $5d0b: $aa
	rst  $38                                         ; $5d0c: $ff
	nop                                              ; $5d0d: $00
	add  b                                           ; $5d0e: $80
	rst  $38                                         ; $5d0f: $ff
	add  b                                           ; $5d10: $80
	nop                                              ; $5d11: $00
	add  b                                           ; $5d12: $80
	rst  $38                                         ; $5d13: $ff
	add  b                                           ; $5d14: $80
	nop                                              ; $5d15: $00
	ld   [bc], a                                     ; $5d16: $02
	ld   a, a                                        ; $5d17: $7f
	ld   a, e                                        ; $5d18: $7b
	ei                                               ; $5d19: $fb
	add  b                                           ; $5d1a: $80
	pop  af                                          ; $5d1b: $f1
	inc  b                                           ; $5d1c: $04
	nop                                              ; $5d1d: $00
	ld   [$e000], a                                  ; $5d1e: $ea $00 $e0
	push af                                          ; $5d21: $f5
	add  b                                           ; $5d22: $80
	nop                                              ; $5d23: $00
	ld   bc, $18ff                                   ; $5d24: $01 $ff $18
	add  e                                           ; $5d27: $83
	rlca                                             ; $5d28: $07
	add  d                                           ; $5d29: $82
	nop                                              ; $5d2a: $00
	ld   [bc], a                                     ; $5d2b: $02
	inc  bc                                          ; $5d2c: $03
	inc  b                                           ; $5d2d: $04
	inc  bc                                          ; $5d2e: $03
	add  c                                           ; $5d2f: $81
	rlca                                             ; $5d30: $07
	nop                                              ; $5d31: $00
	db   $e3                                         ; $5d32: $e3
	add  h                                           ; $5d33: $84
	rst  JumpTable                                         ; $5d34: $df
	add  c                                           ; $5d35: $81
	nop                                              ; $5d36: $00
	ld   bc, $00ff                                   ; $5d37: $01 $ff $00
	add  e                                           ; $5d3a: $83
	rst  $38                                         ; $5d3b: $ff
	add  h                                           ; $5d3c: $84
	rst  $30                                         ; $5d3d: $f7
	add  c                                           ; $5d3e: $81
	nop                                              ; $5d3f: $00
	ld   bc, $00ff                                   ; $5d40: $01 $ff $00
	add  c                                           ; $5d43: $81
	rst  $38                                         ; $5d44: $ff
	ld   bc, $8e8f                                   ; $5d45: $01 $8f $8e
	add  c                                           ; $5d48: $81
	ld   a, $84                                      ; $5d49: $3e $84
	jr   c, jr_08e_5d4d                              ; $5d4b: $38 $00

jr_08e_5d4d:
	ld   hl, sp-$80                                  ; $5d4d: $f8 $80
	jr   c, jr_08e_5cd2                              ; $5d4f: $38 $81

	ld   hl, sp+$00                                  ; $5d51: $f8 $00
	inc  a                                           ; $5d53: $3c
	add  c                                           ; $5d54: $81
	rst  $38                                         ; $5d55: $ff
	nop                                              ; $5d56: $00
	db   $fc                                         ; $5d57: $fc
	adc  c                                           ; $5d58: $89
	rst  $38                                         ; $5d59: $ff
	ld   bc, $807f                                   ; $5d5a: $01 $7f $80
	add  h                                           ; $5d5d: $84
	rst  $38                                         ; $5d5e: $ff
	nop                                              ; $5d5f: $00
	nop                                              ; $5d60: $00
	add  [hl]                                        ; $5d61: $86
	rst  $38                                         ; $5d62: $ff
	nop                                              ; $5d63: $00
	nop                                              ; $5d64: $00
	add  h                                           ; $5d65: $84
	rst  $38                                         ; $5d66: $ff
	nop                                              ; $5d67: $00
	nop                                              ; $5d68: $00
	add  [hl]                                        ; $5d69: $86
	rst  $38                                         ; $5d6a: $ff
	nop                                              ; $5d6b: $00
	nop                                              ; $5d6c: $00
	add  h                                           ; $5d6d: $84
	rst  $38                                         ; $5d6e: $ff
	nop                                              ; $5d6f: $00
	nop                                              ; $5d70: $00

jr_08e_5d71:
	add  l                                           ; $5d71: $85
	rst  $38                                         ; $5d72: $ff
	ld   bc, $1fe7                                   ; $5d73: $01 $e7 $1f
	add  h                                           ; $5d76: $84
	rst  $38                                         ; $5d77: $ff
	nop                                              ; $5d78: $00
	rlca                                             ; $5d79: $07
	add  l                                           ; $5d7a: $85
	rst  $38                                         ; $5d7b: $ff
	ld   bc, $0700                                   ; $5d7c: $01 $00 $07
	add  b                                           ; $5d7f: $80
	nop                                              ; $5d80: $00
	adc  d                                           ; $5d81: $8a
	rlca                                             ; $5d82: $07
	inc  b                                           ; $5d83: $04
	add  h                                           ; $5d84: $84
	ld   a, h                                        ; $5d85: $7c
	ld   h, l                                        ; $5d86: $65
	ld   h, h                                        ; $5d87: $64
	inc  h                                           ; $5d88: $24
	add  b                                           ; $5d89: $80
	inc  l                                           ; $5d8a: $2c
	add  c                                           ; $5d8b: $81
	ld   l, h                                        ; $5d8c: $6c
	ld   [$6c6d], sp                                 ; $5d8d: $08 $6d $6c
	ld   l, b                                        ; $5d90: $68
	ld   h, b                                        ; $5d91: $60
	ld   c, a                                        ; $5d92: $4f
	rrca                                             ; $5d93: $0f

jr_08e_5d94:
	inc  b                                           ; $5d94: $04
	ld   [hl], b                                     ; $5d95: $70
	ld   [hl], c                                     ; $5d96: $71
	add  l                                           ; $5d97: $85
	ldh  a, [rP1]                                    ; $5d98: $f0 $00
	or   b                                           ; $5d9a: $b0
	add  e                                           ; $5d9b: $83
	jr   nc, jr_08e_5da1                             ; $5d9c: $30 $03

	dec  e                                           ; $5d9e: $1d
	dec  hl                                          ; $5d9f: $2b
	db   $e3                                         ; $5da0: $e3

jr_08e_5da1:
	and  e                                           ; $5da1: $a3
	add  b                                           ; $5da2: $80
	adc  e                                           ; $5da3: $8b
	add  b                                           ; $5da4: $80
	dec  hl                                          ; $5da5: $2b
	add  h                                           ; $5da6: $84
	ld   l, e                                        ; $5da7: $6b
	add  b                                           ; $5da8: $80
	ld   l, d                                        ; $5da9: $6a
	inc  b                                           ; $5daa: $04
	ld   b, e                                        ; $5dab: $43
	ld   b, b                                        ; $5dac: $40
	ld   c, c                                        ; $5dad: $49
	ld   b, b                                        ; $5dae: $40
	ld   h, h                                        ; $5daf: $64
	add  c                                           ; $5db0: $81
	ld   b, b                                        ; $5db1: $40
	ld   [bc], a                                     ; $5db2: $02
	ld   d, d                                        ; $5db3: $52
	ld   a, a                                        ; $5db4: $7f
	rst  $38                                         ; $5db5: $ff
	add  b                                           ; $5db6: $80
	push de                                          ; $5db7: $d5
	rlca                                             ; $5db8: $07
	rst  $38                                         ; $5db9: $ff
	ld   d, l                                        ; $5dba: $55
	rst  $38                                         ; $5dbb: $ff
	sbc  d                                           ; $5dbc: $9a
	jr   nc, jr_08e_5df5                             ; $5dbd: $30 $36

	jr   nc, jr_08e_5d71                             ; $5dbf: $30 $b0

	add  c                                           ; $5dc1: $81
	nop                                              ; $5dc2: $00
	nop                                              ; $5dc3: $00
	ld   c, c                                        ; $5dc4: $49
	add  b                                           ; $5dc5: $80
	rst  $38                                         ; $5dc6: $ff
	add  b                                           ; $5dc7: $80
	ld   d, l                                        ; $5dc8: $55
	rlca                                             ; $5dc9: $07
	rst  $38                                         ; $5dca: $ff
	ld   d, l                                        ; $5dcb: $55
	rst  $38                                         ; $5dcc: $ff
	xor  d                                           ; $5dcd: $aa
	nop                                              ; $5dce: $00
	add  b                                           ; $5dcf: $80
	nop                                              ; $5dd0: $00
	ld   e, e                                        ; $5dd1: $5b
	add  c                                           ; $5dd2: $81
	nop                                              ; $5dd3: $00
	nop                                              ; $5dd4: $00
	inc  h                                           ; $5dd5: $24
	add  b                                           ; $5dd6: $80
	rst  $38                                         ; $5dd7: $ff
	add  b                                           ; $5dd8: $80
	ld   d, l                                        ; $5dd9: $55
	inc  bc                                          ; $5dda: $03
	rst  $38                                         ; $5ddb: $ff
	ld   d, l                                        ; $5ddc: $55
	rst  $38                                         ; $5ddd: $ff
	ld   c, [hl]                                     ; $5dde: $4e
	add  e                                           ; $5ddf: $83
	rlca                                             ; $5de0: $07
	nop                                              ; $5de1: $00
	inc  bc                                          ; $5de2: $03
	add  d                                           ; $5de3: $82
	nop                                              ; $5de4: $00
	add  b                                           ; $5de5: $80
	ld   bc, $0680                                   ; $5de6: $01 $80 $06
	ld   bc, $1f00                                   ; $5de9: $01 $00 $1f
	add  c                                           ; $5dec: $81
	rst  $38                                         ; $5ded: $ff
	add  b                                           ; $5dee: $80
	ld   hl, sp-$80                                  ; $5def: $f8 $80
	rlca                                             ; $5df1: $07
	add  b                                           ; $5df2: $80
	jr   c, @+$04                                    ; $5df3: $38 $02

jr_08e_5df5:
	call nz, $22c2                                   ; $5df5: $c4 $c2 $22
	add  c                                           ; $5df8: $81
	ld   [de], a                                     ; $5df9: $12
	ld   bc, $a096                                   ; $5dfa: $01 $96 $a0
	add  b                                           ; $5dfd: $80
	add  hl, hl                                      ; $5dfe: $29
	add  b                                           ; $5dff: $80
	and  b                                           ; $5e00: $a0
	add  b                                           ; $5e01: $80
	nop                                              ; $5e02: $00
	nop                                              ; $5e03: $00
	add  b                                           ; $5e04: $80
	add  e                                           ; $5e05: $83
	ld   e, a                                        ; $5e06: $5f
	add  b                                           ; $5e07: $80
	ld   b, b                                        ; $5e08: $40
	ld   bc, $38d8                                   ; $5e09: $01 $d8 $38
	add  b                                           ; $5e0c: $80
	ld   a, b                                        ; $5e0d: $78
	add  e                                           ; $5e0e: $83
	jr   c, jr_08e_5d94                              ; $5e0f: $38 $83

	ld   hl, sp-$80                                  ; $5e11: $f8 $80
	nop                                              ; $5e13: $00
	nop                                              ; $5e14: $00

jr_08e_5e15:
	rst  $38                                         ; $5e15: $ff
	adc  [hl]                                        ; $5e16: $8e
	cp   $81                                         ; $5e17: $fe $81
	nop                                              ; $5e19: $00
	ld   bc, $407f                                   ; $5e1a: $01 $7f $40
	add  h                                           ; $5e1d: $84
	ld   a, a                                        ; $5e1e: $7f
	ld   bc, $7f40                                   ; $5e1f: $01 $40 $7f
	add  b                                           ; $5e22: $80
	ld   l, l                                        ; $5e23: $6d
	add  d                                           ; $5e24: $82
	nop                                              ; $5e25: $00
	ld   bc, $00ff                                   ; $5e26: $01 $ff $00
	add  b                                           ; $5e29: $80
	rst  $38                                         ; $5e2a: $ff
	ld   bc, $e1c0                                   ; $5e2b: $01 $c0 $e1
	add  b                                           ; $5e2e: $80
	rst  $28                                         ; $5e2f: $ef
	inc  b                                           ; $5e30: $04
	cpl                                              ; $5e31: $2f
	rst  $28                                         ; $5e32: $ef
	xor  a                                           ; $5e33: $af
	and  a                                           ; $5e34: $a7
	ld   d, $81                                      ; $5e35: $16 $81
	nop                                              ; $5e37: $00
	nop                                              ; $5e38: $00
	cp   $80                                         ; $5e39: $fe $80
	nop                                              ; $5e3b: $00
	ld   bc, $82fe                                   ; $5e3c: $01 $fe $82
	add  e                                           ; $5e3f: $83
	ld   a, h                                        ; $5e40: $7c
	add  b                                           ; $5e41: $80
	inc  b                                           ; $5e42: $04
	nop                                              ; $5e43: $00
	cp   $81                                         ; $5e44: $fe $81
	nop                                              ; $5e46: $00
	ld   bc, $007f                                   ; $5e47: $01 $7f $00
	add  c                                           ; $5e4a: $81
	ld   a, a                                        ; $5e4b: $7f
	inc  b                                           ; $5e4c: $04
	ld   b, a                                        ; $5e4d: $47
	ld   a, a                                        ; $5e4e: $7f
	ld   [bc], a                                     ; $5e4f: $02
	ld   b, a                                        ; $5e50: $47
	nop                                              ; $5e51: $00
	add  b                                           ; $5e52: $80
	inc  b                                           ; $5e53: $04
	nop                                              ; $5e54: $00
	ld   a, l                                        ; $5e55: $7d
	add  c                                           ; $5e56: $81
	nop                                              ; $5e57: $00
	ld   bc, $00ff                                   ; $5e58: $01 $ff $00
	add  c                                           ; $5e5b: $81
	rst  $38                                         ; $5e5c: $ff
	inc  b                                           ; $5e5d: $04
	inc  e                                           ; $5e5e: $1c
	rst  $38                                         ; $5e5f: $ff
	ld   [$001c], sp                                 ; $5e60: $08 $1c $00
	add  b                                           ; $5e63: $80
	stop                                             ; $5e64: $10 $00
	rst  $30                                         ; $5e66: $f7
	add  c                                           ; $5e67: $81
	nop                                              ; $5e68: $00
	ld   bc, $00cf                                   ; $5e69: $01 $cf $00
	add  c                                           ; $5e6c: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e6d: $cf
	rlca                                             ; $5e6e: $07
	ld   c, a                                        ; $5e6f: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e70: $cf
	ld   c, $4f                                      ; $5e71: $0e $4f
	rrca                                             ; $5e73: $0f
	ld   c, h                                        ; $5e74: $4c
	ld   c, [hl]                                     ; $5e75: $4e
	call $0081                                       ; $5e76: $cd $81 $00
	inc  bc                                          ; $5e79: $03
	cp   b                                           ; $5e7a: $b8
	ldh  [$60], a                                    ; $5e7b: $e0 $60
	ret  c                                           ; $5e7d: $d8

	add  b                                           ; $5e7e: $80
	cp   b                                           ; $5e7f: $b8

jr_08e_5e80:
	rlca                                             ; $5e80: $07
	ld   e, b                                        ; $5e81: $58
	ld   c, b                                        ; $5e82: $48
	xor  b                                           ; $5e83: $a8
	sbc  b                                           ; $5e84: $98
	ld   c, b                                        ; $5e85: $48
	jr   jr_08e_5e80                                 ; $5e86: $18 $f8

	ld   l, d                                        ; $5e88: $6a
	add  c                                           ; $5e89: $81
	ld   l, b                                        ; $5e8a: $68
	nop                                              ; $5e8b: $00
	ld   l, c                                        ; $5e8c: $69
	add  d                                           ; $5e8d: $82
	ld   l, e                                        ; $5e8e: $6b
	inc  bc                                          ; $5e8f: $03
	ld   c, e                                        ; $5e90: $4b
	ld   c, d                                        ; $5e91: $4a
	dec  hl                                          ; $5e92: $2b
	jr   z, jr_08e_5e15                              ; $5e93: $28 $80

	xor  b                                           ; $5e95: $a8
	inc  b                                           ; $5e96: $04
	ld   d, l                                        ; $5e97: $55
	rst  $38                                         ; $5e98: $ff
	db   $eb                                         ; $5e99: $eb
	rst  $38                                         ; $5e9a: $ff
	cp   [hl]                                        ; $5e9b: $be
	add  l                                           ; $5e9c: $85
	rst  $38                                         ; $5e9d: $ff
	ld   [$ff28], sp                                 ; $5e9e: $08 $28 $ff
	jr   z, jr_08e_5ea3                              ; $5ea1: $28 $00

jr_08e_5ea3:
	ld   d, l                                        ; $5ea3: $55
	rst  $38                                         ; $5ea4: $ff
	cp   [hl]                                        ; $5ea5: $be
	rst  $38                                         ; $5ea6: $ff
	db   $eb                                         ; $5ea7: $eb
	add  c                                           ; $5ea8: $81
	rst  $38                                         ; $5ea9: $ff
	dec  b                                           ; $5eaa: $05
	add  sp, -$01                                    ; $5eab: $e8 $ff
	add  sp, -$01                                    ; $5ead: $e8 $ff
	nop                                              ; $5eaf: $00
	rst  $38                                         ; $5eb0: $ff
	add  b                                           ; $5eb1: $80
	nop                                              ; $5eb2: $00
	ld   [bc], a                                     ; $5eb3: $02
	ld   d, l                                        ; $5eb4: $55
	rst  $38                                         ; $5eb5: $ff
	xor  d                                           ; $5eb6: $aa
	add  c                                           ; $5eb7: $81
	rst  $38                                         ; $5eb8: $ff
	rlca                                             ; $5eb9: $07
	ld   de, $44ff                                   ; $5eba: $11 $ff $44
	rst  $38                                         ; $5ebd: $ff
	pop  de                                          ; $5ebe: $d1
	rst  $38                                         ; $5ebf: $ff
	ld   a, [bc]                                     ; $5ec0: $0a
	adc  [hl]                                        ; $5ec1: $8e
	add  b                                           ; $5ec2: $80
	nop                                              ; $5ec3: $00
	ld   bc, $00e6                                   ; $5ec4: $01 $e6 $00
	adc  d                                           ; $5ec7: $8a
	ld   b, $80                                      ; $5ec8: $06 $80
	nop                                              ; $5eca: $00
	rlca                                             ; $5ecb: $07
	ld   [hl], h                                     ; $5ecc: $74
	or   [hl]                                        ; $5ecd: $b6
	or   $16                                         ; $5ece: $f6 $16
	sbc  $c2                                         ; $5ed0: $de $c2
	db   $db                                         ; $5ed2: $db
	ret  c                                           ; $5ed3: $d8

	add  [hl]                                        ; $5ed4: $86
	db   $db                                         ; $5ed5: $db
	nop                                              ; $5ed6: $00
	sbc  e                                           ; $5ed7: $9b
	add  h                                           ; $5ed8: $84
	rst  JumpTable                                         ; $5ed9: $df
	ld   [bc], a                                     ; $5eda: $02
	ld   e, a                                        ; $5edb: $5f
	ld   a, a                                        ; $5edc: $7f
	rrca                                             ; $5edd: $0f
	add  l                                           ; $5ede: $85
	ld   l, a                                        ; $5edf: $6f
	adc  [hl]                                        ; $5ee0: $8e
	rst  $38                                         ; $5ee1: $ff
	adc  [hl]                                        ; $5ee2: $8e
	cp   $80                                         ; $5ee3: $fe $80
	ld   [de], a                                     ; $5ee5: $12
	add  b                                           ; $5ee6: $80
	ccf                                              ; $5ee7: $3f
	add  [hl]                                        ; $5ee8: $86
	ld   e, [hl]                                     ; $5ee9: $5e
	add  b                                           ; $5eea: $80
	dec  d                                           ; $5eeb: $15
	ld   [bc], a                                     ; $5eec: $02
	ld   d, l                                        ; $5eed: $55
	dec  e                                           ; $5eee: $1d
	ld   c, b                                        ; $5eef: $48
	add  b                                           ; $5ef0: $80
	ld   a, h                                        ; $5ef1: $7c
	nop                                              ; $5ef2: $00
	ld   a, [hl-]                                    ; $5ef3: $3a
	add  l                                           ; $5ef4: $85
	cp   d                                           ; $5ef5: $ba
	ld   bc, $1494                                   ; $5ef6: $01 $94 $14
	add  b                                           ; $5ef9: $80
	ld   d, h                                        ; $5efa: $54
	dec  de                                          ; $5efb: $1b
	add  d                                           ; $5efc: $82
	nop                                              ; $5efd: $00
	inc  c                                           ; $5efe: $0c
	inc  l                                           ; $5eff: $2c
	ld   h, b                                        ; $5f00: $60
	inc  a                                           ; $5f01: $3c
	ld   a, h                                        ; $5f02: $7c
	nop                                              ; $5f03: $00
	inc  c                                           ; $5f04: $0c
	inc  l                                           ; $5f05: $2c
	ld   h, b                                        ; $5f06: $60
	inc  a                                           ; $5f07: $3c
	ld   a, h                                        ; $5f08: $7c
	nop                                              ; $5f09: $00
	db   $10                                         ; $5f0a: $10
	inc  h                                           ; $5f0b: $24
	or   h                                           ; $5f0c: $b4
	ld   a, [hl-]                                    ; $5f0d: $3a
	ld   a, $45                                      ; $5f0e: $3e $45
	ld   a, c                                        ; $5f10: $79
	ld   a, l                                        ; $5f11: $7d
	ld   b, l                                        ; $5f12: $45
	ld   a, a                                        ; $5f13: $7f
	ld   [bc], a                                     ; $5f14: $02
	nop                                              ; $5f15: $00
	ld   a, a                                        ; $5f16: $7f
	nop                                              ; $5f17: $00
	add  d                                           ; $5f18: $82
	ld   [hl], a                                     ; $5f19: $77
	dec  bc                                          ; $5f1a: $0b
	ld   [$f3eb], sp                                 ; $5f1b: $08 $eb $f3
	inc  e                                           ; $5f1e: $1c
	rst  $20                                         ; $5f1f: $e7
	rst  $30                                         ; $5f20: $f7
	inc  d                                           ; $5f21: $14
	rst  $38                                         ; $5f22: $ff
	ld   [$ff00], sp                                 ; $5f23: $08 $00 $ff
	nop                                              ; $5f26: $00
	add  d                                           ; $5f27: $82
	ld   a, e                                        ; $5f28: $7b
	ld   bc, $898a                                   ; $5f29: $01 $8a $89
	add  b                                           ; $5f2c: $80
	ld   c, $05                                      ; $5f2d: $0e $05
	ld   c, h                                        ; $5f2f: $4c
	ld   c, b                                        ; $5f30: $48
	call $c1c8                                       ; $5f31: $cd $c8 $c1
	call z, $0380                                    ; $5f34: $cc $80 $03
	inc  c                                           ; $5f37: $0c
	ld   a, [bc]                                     ; $5f38: $0a
	ld   [$000d], sp                                 ; $5f39: $08 $0d $00
	add  hl, sp                                      ; $5f3c: $39
	ret  c                                           ; $5f3d: $d8

	xor  b                                           ; $5f3e: $a8
	sbc  b                                           ; $5f3f: $98
	reti                                             ; $5f40: $d9


	xor  b                                           ; $5f41: $a8
	jr   z, jr_08e_5f4c                              ; $5f42: $28 $08

	add  b                                           ; $5f44: $80
	add  b                                           ; $5f45: $80
	ret  nz                                          ; $5f46: $c0

	inc  bc                                          ; $5f47: $03
	add  sp, -$58                                    ; $5f48: $e8 $a8
	db   $10                                         ; $5f4a: $10
	ld   d, b                                        ; $5f4b: $50

jr_08e_5f4c:
	add  b                                           ; $5f4c: $80
	ld   a, b                                        ; $5f4d: $78
	add  b                                           ; $5f4e: $80
	and  b                                           ; $5f4f: $a0
	ld   [bc], a                                     ; $5f50: $02
	add  b                                           ; $5f51: $80
	add  c                                           ; $5f52: $81
	ld   bc, $0380                                   ; $5f53: $01 $80 $03
	add  b                                           ; $5f56: $80
	rlca                                             ; $5f57: $07
	add  b                                           ; $5f58: $80
	ld   c, $80                                      ; $5f59: $0e $80
	ld   e, $80                                      ; $5f5b: $1e $80
	ld   a, $80                                      ; $5f5d: $3e $80
	nop                                              ; $5f5f: $00
	add  h                                           ; $5f60: $84
	rst  $38                                         ; $5f61: $ff
	ld   bc, $7b8c                                   ; $5f62: $01 $8c $7b
	add  h                                           ; $5f65: $84
	nop                                              ; $5f66: $00
	ld   bc, $00f7                                   ; $5f67: $01 $f7 $00
	add  h                                           ; $5f6a: $84
	rst  $38                                         ; $5f6b: $ff
	ld   bc, $de63                                   ; $5f6c: $01 $63 $de
	add  h                                           ; $5f6f: $84
	nop                                              ; $5f70: $00
	ld   bc, $00bd                                   ; $5f71: $01 $bd $00
	add  h                                           ; $5f74: $84
	adc  [hl]                                        ; $5f75: $8e
	ld   bc, $ee0e                                   ; $5f76: $01 $0e $ee
	add  h                                           ; $5f79: $84
	ld   c, $83                                      ; $5f7a: $0e $83
	nop                                              ; $5f7c: $00
	inc  bc                                          ; $5f7d: $03
	rlca                                             ; $5f7e: $07
	inc  b                                           ; $5f7f: $04
	rlca                                             ; $5f80: $07
	inc  bc                                          ; $5f81: $03
	add  b                                           ; $5f82: $80
	dec  b                                           ; $5f83: $05
	ld   bc, $0706                                   ; $5f84: $01 $06 $07
	add  c                                           ; $5f87: $81
	inc  b                                           ; $5f88: $04
	nop                                              ; $5f89: $00
	ldh  [c], a                                      ; $5f8a: $e2
	add  d                                           ; $5f8b: $82
	nop                                              ; $5f8c: $00
	rlca                                             ; $5f8d: $07
	rst  $38                                         ; $5f8e: $ff
	nop                                              ; $5f8f: $00
	rst  $38                                         ; $5f90: $ff
	pop  bc                                          ; $5f91: $c1
	add  b                                           ; $5f92: $80
	or   h                                           ; $5f93: $b4
	ld   [hl], h                                     ; $5f94: $74
	or   $81                                         ; $5f95: $f6 $81
	dec  [hl]                                        ; $5f97: $35
	nop                                              ; $5f98: $00
	ld   b, d                                        ; $5f99: $42
	add  d                                           ; $5f9a: $82
	nop                                              ; $5f9b: $00
	inc  bc                                          ; $5f9c: $03
	rst  $38                                         ; $5f9d: $ff
	ld   bc, $e71f                                   ; $5f9e: $01 $1f $e7
	add  c                                           ; $5fa1: $81
	rst  $30                                         ; $5fa2: $f7
	inc  b                                           ; $5fa3: $04
	push af                                          ; $5fa4: $f5
	pop  af                                          ; $5fa5: $f1
	ld   a, [bc]                                     ; $5fa6: $0a
	pop  af                                          ; $5fa7: $f1
	ld   c, $83                                      ; $5fa8: $0e $83
	ccf                                              ; $5faa: $3f
	nop                                              ; $5fab: $00
	rlca                                             ; $5fac: $07
	add  a                                           ; $5fad: $87
	ccf                                              ; $5fae: $3f
	nop                                              ; $5faf: $00
	rlca                                             ; $5fb0: $07
	adc  [hl]                                        ; $5fb1: $8e
	cp   $82                                         ; $5fb2: $fe $82
	ld   d, l                                        ; $5fb4: $55
	inc  bc                                          ; $5fb5: $03
	inc  d                                           ; $5fb6: $14
	ld   d, l                                        ; $5fb7: $55
	nop                                              ; $5fb8: $00
	ld   a, $82                                      ; $5fb9: $3e $82
	nop                                              ; $5fbb: $00
	ld   [bc], a                                     ; $5fbc: $02
	ld   a, [bc]                                     ; $5fbd: $0a
	halt                                             ; $5fbe: $76
	inc  bc                                          ; $5fbf: $03
	add  b                                           ; $5fc0: $80
	ld   d, h                                        ; $5fc1: $54
	add  b                                           ; $5fc2: $80
	ld   d, l                                        ; $5fc3: $55
	add  b                                           ; $5fc4: $80
	ld   d, c                                        ; $5fc5: $51
	ld   [bc], a                                     ; $5fc6: $02
	rlca                                             ; $5fc7: $07
	ld   bc, $80f9                                   ; $5fc8: $01 $f9 $80
	ld   [bc], a                                     ; $5fcb: $02
	add  b                                           ; $5fcc: $80
	dec  d                                           ; $5fcd: $15
	add  b                                           ; $5fce: $80
	xor  e                                           ; $5fcf: $ab
	nop                                              ; $5fd0: $00
	rst  $38                                         ; $5fd1: $ff
	add  b                                           ; $5fd2: $80
	nop                                              ; $5fd3: $00
	nop                                              ; $5fd4: $00
	ret  nz                                          ; $5fd5: $c0

	add  d                                           ; $5fd6: $82
	ld   a, $82                                      ; $5fd7: $3e $82
	cp   $01                                         ; $5fd9: $fe $01
	ret  nz                                          ; $5fdb: $c0

	cp   $81                                         ; $5fdc: $fe $81
	ld   hl, sp+$00                                  ; $5fde: $f8 $00
	ld   a, c                                        ; $5fe0: $79
	add  c                                           ; $5fe1: $81
	nop                                              ; $5fe2: $00
	adc  d                                           ; $5fe3: $8a
	rra                                              ; $5fe4: $1f
	add  d                                           ; $5fe5: $82
	nop                                              ; $5fe6: $00
	nop                                              ; $5fe7: $00
	ld   a, [hl]                                     ; $5fe8: $7e
	add  a                                           ; $5fe9: $87
	db   $fc                                         ; $5fea: $fc
	rlca                                             ; $5feb: $07
	db   $fd                                         ; $5fec: $fd
	db   $fc                                         ; $5fed: $fc
	inc  a                                           ; $5fee: $3c
	ret  z                                           ; $5fef: $c8

	ret                                              ; $5ff0: $c9


	push bc                                          ; $5ff1: $c5
	call nz, $80c0                                   ; $5ff2: $c4 $c0 $80
	ret                                              ; $5ff5: $c9


	add  b                                           ; $5ff6: $80
	jp   nz, $c880                                   ; $5ff7: $c2 $80 $c8

	add  b                                           ; $5ffa: $80
	jp   z, $0f80                                    ; $5ffb: $ca $80 $0f

	ld   [bc], a                                     ; $5ffe: $02
	add  b                                           ; $5fff: $80
	ld   d, b                                        ; $6000: $50
	ret  nc                                          ; $6001: $d0

	add  b                                           ; $6002: $80
	ret  nz                                          ; $6003: $c0

	add  b                                           ; $6004: $80
	xor  b                                           ; $6005: $a8
	add  b                                           ; $6006: $80
	ldh  a, [$80]                                    ; $6007: $f0 $80
	add  b                                           ; $6009: $80
	add  b                                           ; $600a: $80
	nop                                              ; $600b: $00
	add  b                                           ; $600c: $80
	db   $10                                         ; $600d: $10
	inc  b                                           ; $600e: $04
	ld   hl, sp-$7a                                  ; $600f: $f8 $86
	ld   a, a                                        ; $6011: $7f
	pop  af                                          ; $6012: $f1
	xor  $84                                         ; $6013: $ee $84
	ldh  [$03], a                                    ; $6015: $e0 $03
	sbc  $e1                                         ; $6017: $de $e1
	pop  de                                          ; $6019: $d1
	xor  $80                                         ; $601a: $ee $80
	ldh  [$03], a                                    ; $601c: $e0 $03
	ld   e, $08                                      ; $601e: $1e $08
	adc  h                                           ; $6020: $8c
	ld   [hl], e                                     ; $6021: $73
	add  h                                           ; $6022: $84
	nop                                              ; $6023: $00
	inc  bc                                          ; $6024: $03
	rst  $30                                         ; $6025: $f7
	ld   [$738c], sp                                 ; $6026: $08 $8c $73
	add  b                                           ; $6029: $80
	nop                                              ; $602a: $00
	inc  bc                                          ; $602b: $03
	rst  $30                                         ; $602c: $f7
	ld   b, d                                        ; $602d: $42
	ld   h, e                                        ; $602e: $63
	sbc  h                                           ; $602f: $9c
	add  h                                           ; $6030: $84
	nop                                              ; $6031: $00
	inc  bc                                          ; $6032: $03
	cp   l                                           ; $6033: $bd
	ld   b, d                                        ; $6034: $42
	ld   h, e                                        ; $6035: $63
	sbc  h                                           ; $6036: $9c
	add  b                                           ; $6037: $80
	nop                                              ; $6038: $00
	inc  bc                                          ; $6039: $03
	or   e                                           ; $603a: $b3
	rra                                              ; $603b: $1f
	ld   c, $ff                                      ; $603c: $0e $ff
	add  h                                           ; $603e: $84
	ld   c, $03                                      ; $603f: $0e $03
	xor  $1f                                         ; $6041: $ee $1f
	ld   c, $ff                                      ; $6043: $0e $ff
	add  b                                           ; $6045: $80
	ld   c, $00                                      ; $6046: $0e $00
	nop                                              ; $6048: $00
	add  b                                           ; $6049: $80
	dec  b                                           ; $604a: $05
	add  b                                           ; $604b: $80
	ld   b, $80                                      ; $604c: $06 $80
	inc  b                                           ; $604e: $04
	add  b                                           ; $604f: $80
	ld   [bc], a                                     ; $6050: $02
	ld   [bc], a                                     ; $6051: $02
	nop                                              ; $6052: $00
	ld   [bc], a                                     ; $6053: $02
	nop                                              ; $6054: $00
	add  d                                           ; $6055: $82
	inc  b                                           ; $6056: $04
	ld   [bc], a                                     ; $6057: $02
	db   $e3                                         ; $6058: $e3
	and  c                                           ; $6059: $a1
	xor  b                                           ; $605a: $a8
	add  b                                           ; $605b: $80
	ld   h, a                                        ; $605c: $67
	add  b                                           ; $605d: $80
	daa                                              ; $605e: $27
	add  b                                           ; $605f: $80
	ld   b, a                                        ; $6060: $47
	ld   de, $4007                                   ; $6061: $11 $07 $40
	nop                                              ; $6064: $00
	jr   nz, jr_08e_6096                             ; $6065: $20 $2f

	jr   nz, jr_08e_6098                             ; $6067: $20 $2f

	cp   e                                           ; $6069: $bb
	ldh  a, [rP1]                                    ; $606a: $f0 $00
	ld   sp, hl                                      ; $606c: $f9
	db   $fd                                         ; $606d: $fd
	ei                                               ; $606e: $fb
	rst  $38                                         ; $606f: $ff
	pop  af                                          ; $6070: $f1
	push af                                          ; $6071: $f5
	pop  af                                          ; $6072: $f1
	ld   c, $80                                      ; $6073: $0e $80
	nop                                              ; $6075: $00
	inc  bc                                          ; $6076: $03
	rst  $38                                         ; $6077: $ff
	nop                                              ; $6078: $00
	rst  $38                                         ; $6079: $ff
	ld   hl, sp-$73                                  ; $607a: $f8 $8d
	jr   c, jr_08e_607e                              ; $607c: $38 $00

jr_08e_607e:
	ccf                                              ; $607e: $3f
	adc  [hl]                                        ; $607f: $8e
	cp   $03                                         ; $6080: $fe $03
	nop                                              ; $6082: $00
	ld   [$7470], sp                                 ; $6083: $08 $70 $74
	add  d                                           ; $6086: $82
	ld   [hl], a                                     ; $6087: $77
	add  b                                           ; $6088: $80
	halt                                             ; $6089: $76
	add  c                                           ; $608a: $81
	ld   [hl], a                                     ; $608b: $77
	ld   [bc], a                                     ; $608c: $02
	halt                                             ; $608d: $76
	ld   [hl], h                                     ; $608e: $74
	ld   a, c                                        ; $608f: $79
	add  c                                           ; $6090: $81
	nop                                              ; $6091: $00
	inc  c                                           ; $6092: $0c
	rst  JumpTable                                         ; $6093: $df
	sbc  a                                           ; $6094: $9f
	rst  $28                                         ; $6095: $ef

jr_08e_6096:
	ld   d, a                                        ; $6096: $57
	daa                                              ; $6097: $27

jr_08e_6098:
	xor  a                                           ; $6098: $af
	ei                                               ; $6099: $fb
	ld   h, e                                        ; $609a: $63
	rst  ToBoot                                         ; $609b: $c7
	db   $db                                         ; $609c: $db
	scf                                              ; $609d: $37
	dec  sp                                          ; $609e: $3b
	ld   hl, sp-$80                                  ; $609f: $f8 $80
	nop                                              ; $60a1: $00
	ld   bc, $ae28                                   ; $60a2: $01 $28 $ae
	add  b                                           ; $60a5: $80
	inc  bc                                          ; $60a6: $03
	add  b                                           ; $60a7: $80
	dec  hl                                          ; $60a8: $2b
	ld   bc, $7b03                                   ; $60a9: $01 $03 $7b
	add  b                                           ; $60ac: $80
	inc  bc                                          ; $60ad: $03
	ld   bc, $01ff                                   ; $60ae: $01 $ff $01
	add  b                                           ; $60b1: $80
	rst  $38                                         ; $60b2: $ff
	nop                                              ; $60b3: $00
	nop                                              ; $60b4: $00
	add  b                                           ; $60b5: $80
	ld   bc, $ec10                                   ; $60b6: $01 $10 $ec
	ret  z                                           ; $60b9: $c8

	di                                               ; $60ba: $f3
	ld   [$d6d3], a                                  ; $60bb: $ea $d3 $d6
	db   $ed                                         ; $60be: $ed
	and  b                                           ; $60bf: $a0
	db   $d3                                         ; $60c0: $d3
	db   $fd                                         ; $60c1: $fd
	sub  a                                           ; $60c2: $97
	ld   [hl], b                                     ; $60c3: $70
	cp   h                                           ; $60c4: $bc
	nop                                              ; $60c5: $00
	ld   bc, $7040                                   ; $60c6: $01 $40 $70
	add  b                                           ; $60c9: $80
	inc  e                                           ; $60ca: $1c
	add  b                                           ; $60cb: $80
	ld   e, h                                        ; $60cc: $5c
	ld   bc, $dc1c                                   ; $60cd: $01 $1c $dc
	add  b                                           ; $60d0: $80
	inc  e                                           ; $60d1: $1c
	inc  b                                           ; $60d2: $04
	db   $fc                                         ; $60d3: $fc
	adc  h                                           ; $60d4: $8c
	ld   a, h                                        ; $60d5: $7c
	db   $fc                                         ; $60d6: $fc
	ld   c, $80                                      ; $60d7: $0e $80
	xor  $07                                         ; $60d9: $ee $07
	rst  $20                                         ; $60db: $e7
	db   $e3                                         ; $60dc: $e3
	rst  $28                                         ; $60dd: $ef
	jp   hl                                          ; $60de: $e9


	push hl                                          ; $60df: $e5
	rst  $20                                         ; $60e0: $e7
	rst  $38                                         ; $60e1: $ff
	xor  $80                                         ; $60e2: $ee $80
	or   $03                                         ; $60e4: $f6 $03
	ld   [$9de9], a                                  ; $60e6: $ea $e9 $9d
	ld   a, b                                        ; $60e9: $78
	add  b                                           ; $60ea: $80
	nop                                              ; $60eb: $00
	add  b                                           ; $60ec: $80
	add  b                                           ; $60ed: $80
	add  b                                           ; $60ee: $80
	ld   b, b                                        ; $60ef: $40
	add  b                                           ; $60f0: $80
	add  b                                           ; $60f1: $80
	add  b                                           ; $60f2: $80
	ret  nz                                          ; $60f3: $c0

	inc  b                                           ; $60f4: $04
	and  b                                           ; $60f5: $a0
	jr   nz, jr_08e_6138                             ; $60f6: $20 $40

	nop                                              ; $60f8: $00
	add  $81                                         ; $60f9: $c6 $81
	ldh  [$03], a                                    ; $60fb: $e0 $03
	sbc  $e1                                         ; $60fd: $de $e1
	pop  de                                          ; $60ff: $d1
	xor  $82                                         ; $6100: $ee $82
	ldh  [rDIV], a                                   ; $6102: $e0 $04
	xor  $e0                                         ; $6104: $ee $e0
	ret  nc                                          ; $6106: $d0

	ret  nz                                          ; $6107: $c0

	rst  $30                                         ; $6108: $f7
	add  c                                           ; $6109: $81
	nop                                              ; $610a: $00
	inc  bc                                          ; $610b: $03
	rst  $30                                         ; $610c: $f7
	ld   [$738c], sp                                 ; $610d: $08 $8c $73
	add  d                                           ; $6110: $82
	nop                                              ; $6111: $00
	inc  b                                           ; $6112: $04
	or   $00                                         ; $6113: $f6 $00
	ld   bc, $bd00                                   ; $6115: $01 $00 $bd
	add  c                                           ; $6118: $81
	nop                                              ; $6119: $00
	inc  bc                                          ; $611a: $03
	cp   l                                           ; $611b: $bd
	ld   b, d                                        ; $611c: $42
	ld   h, e                                        ; $611d: $63

jr_08e_611e:
	sbc  h                                           ; $611e: $9c
	add  h                                           ; $611f: $84
	nop                                              ; $6120: $00
	ld   [bc], a                                     ; $6121: $02
	pop  bc                                          ; $6122: $c1
	nop                                              ; $6123: $00
	sub  d                                           ; $6124: $92
	add  c                                           ; $6125: $81
	ld   c, $03                                      ; $6126: $0e $03
	xor  $1f                                         ; $6128: $ee $1f
	ld   c, $ff                                      ; $612a: $0e $ff
	add  d                                           ; $612c: $82
	ld   c, $00                                      ; $612d: $0e $00
	ldh  [$81], a                                    ; $612f: $e0 $81
	nop                                              ; $6131: $00
	ld   bc, $04e4                                   ; $6132: $01 $e4 $04
	adc  b                                           ; $6135: $88
	rlca                                             ; $6136: $07
	add  d                                           ; $6137: $82

jr_08e_6138:
	nop                                              ; $6138: $00
	inc  b                                           ; $6139: $04
	jp   hl                                          ; $613a: $e9


	add  hl, hl                                      ; $613b: $29
	jr   nz, jr_08e_611e                             ; $613c: $20 $e0

	nop                                              ; $613e: $00
	add  c                                           ; $613f: $81
	rra                                              ; $6140: $1f
	add  d                                           ; $6141: $82
	nop                                              ; $6142: $00
	nop                                              ; $6143: $00
	rst  $38                                         ; $6144: $ff
	add  c                                           ; $6145: $81
	nop                                              ; $6146: $00

jr_08e_6147:
	add  b                                           ; $6147: $80
	inc  h                                           ; $6148: $24
	add  c                                           ; $6149: $81
	nop                                              ; $614a: $00
	add  c                                           ; $614b: $81
	rst  $38                                         ; $614c: $ff
	add  d                                           ; $614d: $82
	nop                                              ; $614e: $00
	nop                                              ; $614f: $00
	rst  $38                                         ; $6150: $ff

jr_08e_6151:
	add  c                                           ; $6151: $81
	nop                                              ; $6152: $00
	nop                                              ; $6153: $00
	rlca                                             ; $6154: $07
	adc  l                                           ; $6155: $8d
	jr   c, jr_08e_6158                              ; $6156: $38 $00

jr_08e_6158:
	ccf                                              ; $6158: $3f
	adc  l                                           ; $6159: $8d
	cp   $02                                         ; $615a: $fe $02
	rst  $38                                         ; $615c: $ff
	nop                                              ; $615d: $00
	ld   a, a                                        ; $615e: $7f
	add  b                                           ; $615f: $80
	ld   a, c                                        ; $6160: $79
	add  hl, de                                      ; $6161: $19
	ld   a, a                                        ; $6162: $7f
	dec  b                                           ; $6163: $05
	ld   bc, $0200                                   ; $6164: $01 $00 $02
	dec  c                                           ; $6167: $0d
	dec  [hl]                                        ; $6168: $35
	ccf                                              ; $6169: $3f
	inc  a                                           ; $616a: $3c
	jr   c, jr_08e_61a7                              ; $616b: $38 $3a

	or   [hl]                                        ; $616d: $b6
	ld   [hl], b                                     ; $616e: $70
	cp   a                                           ; $616f: $bf
	or   e                                           ; $6170: $b3
	rst  $20                                         ; $6171: $e7
	push bc                                          ; $6172: $c5
	ld   e, [hl]                                     ; $6173: $5e
	ld   d, b                                        ; $6174: $50
	ret  c                                           ; $6175: $d8

	call nz, Call_08e_71cc                           ; $6176: $c4 $cc $71
	ld   e, c                                        ; $6179: $59
	ld   e, b                                        ; $617a: $58
	ld   a, b                                        ; $617b: $78
	add  b                                           ; $617c: $80
	jr   jr_08e_617f                                 ; $617d: $18 $00

jr_08e_617f:
	nop                                              ; $617f: $00
	add  b                                           ; $6180: $80
	rst  $38                                         ; $6181: $ff
	ld   [bc], a                                     ; $6182: $02
	cp   $ff                                         ; $6183: $fe $ff
	ld   bc, $0080                                   ; $6185: $01 $80 $00
	ld   bc, $0001                                   ; $6188: $01 $01 $00
	add  b                                           ; $618b: $80
	ld   a, [hl]                                     ; $618c: $7e
	ld   de, $fffe                                   ; $618d: $11 $fe $ff
	cp   $9a                                         ; $6190: $fe $9a
	jr   jr_08e_6151                                 ; $6192: $18 $bd

	cp   [hl]                                        ; $6194: $be
	push de                                          ; $6195: $d5
	ld   d, e                                        ; $6196: $53
	cp   c                                           ; $6197: $b9
	ld   a, [hl-]                                    ; $6198: $3a
	ld   e, d                                        ; $6199: $5a
	ret  z                                           ; $619a: $c8

	ld   [$beb8], a                                  ; $619b: $ea $b8 $be
	sub  d                                           ; $619e: $92
	sub  [hl]                                        ; $619f: $96
	add  b                                           ; $61a0: $80
	ld   [$0005], sp                                 ; $61a1: $08 $05 $00
	ld   a, a                                        ; $61a4: $7f
	cp   a                                           ; $61a5: $bf
	rra                                              ; $61a6: $1f

jr_08e_61a7:
	ld   a, a                                        ; $61a7: $7f
	and  b                                           ; $61a8: $a0
	add  d                                           ; $61a9: $82
	nop                                              ; $61aa: $00
	add  b                                           ; $61ab: $80
	cpl                                              ; $61ac: $2f
	add  b                                           ; $61ad: $80
	ccf                                              ; $61ae: $3f
	add  b                                           ; $61af: $80
	rra                                              ; $61b0: $1f
	inc  de                                          ; $61b1: $13
	rrca                                             ; $61b2: $0f
	rst  $28                                         ; $61b3: $ef
	ld   e, [hl]                                     ; $61b4: $5e
	ld   a, l                                        ; $61b5: $7d
	cp   h                                           ; $61b6: $bc
	ld   l, a                                        ; $61b7: $6f
	cpl                                              ; $61b8: $2f
	ld   [hl], a                                     ; $61b9: $77
	daa                                              ; $61ba: $27
	ld   l, [hl]                                     ; $61bb: $6e
	ld   h, d                                        ; $61bc: $62
	ld   h, e                                        ; $61bd: $63
	ld   b, e                                        ; $61be: $43
	ld   h, e                                        ; $61bf: $63
	ld   [bc], a                                     ; $61c0: $02
	ld   a, d                                        ; $61c1: $7a
	and  b                                           ; $61c2: $a0
	ret  nc                                          ; $61c3: $d0

	db   $10                                         ; $61c4: $10
	jr   nz, jr_08e_6147                             ; $61c5: $20 $80

	ld   h, b                                        ; $61c7: $60
	ld   bc, $d0c0                                   ; $61c8: $01 $c0 $d0
	add  b                                           ; $61cb: $80
	ld   d, b                                        ; $61cc: $50
	dec  e                                           ; $61cd: $1d
	jr   nc, jr_08e_61f0                             ; $61ce: $30 $20

	add  c                                           ; $61d0: $81
	sub  c                                           ; $61d1: $91
	sub  b                                           ; $61d2: $90
	dec  de                                          ; $61d3: $1b
	add  b                                           ; $61d4: $80
	ld   c, $02                                      ; $61d5: $0e $02
	jr   c, jr_08e_61e5                              ; $61d7: $38 $0c

	ld   h, e                                        ; $61d9: $63
	ccf                                              ; $61da: $3f
	rlca                                             ; $61db: $07
	ccf                                              ; $61dc: $3f
	ld   e, a                                        ; $61dd: $5f
	nop                                              ; $61de: $00
	rst  $30                                         ; $61df: $f7
	jr   jr_08e_61f2                                 ; $61e0: $18 $10

	rst  $38                                         ; $61e2: $ff
	ld   hl, sp-$60                                  ; $61e3: $f8 $a0

jr_08e_61e5:
	xor  [hl]                                        ; $61e5: $ae
	xor  b                                           ; $61e6: $a8
	db   $e3                                         ; $61e7: $e3
	and  $58                                         ; $61e8: $e6 $58
	rst  $38                                         ; $61ea: $ff
	db   $fc                                         ; $61eb: $fc
	add  b                                           ; $61ec: $80
	rst  $38                                         ; $61ed: $ff
	inc  b                                           ; $61ee: $04
	nop                                              ; $61ef: $00

jr_08e_61f0:
	db   $fd                                         ; $61f0: $fd
	inc  bc                                          ; $61f1: $03

jr_08e_61f2:
	ld   b, c                                        ; $61f2: $41
	cp   a                                           ; $61f3: $bf
	add  b                                           ; $61f4: $80
	jr   c, @-$7e                                    ; $61f5: $38 $80

	db   $10                                         ; $61f7: $10
	inc  d                                           ; $61f8: $14
	sub  e                                           ; $61f9: $93
	db   $10                                         ; $61fa: $10
	sub  $93                                         ; $61fb: $d6 $93
	db   $10                                         ; $61fd: $10
	sub  e                                           ; $61fe: $93
	ld   b, l                                        ; $61ff: $45
	nop                                              ; $6200: $00
	rst  $38                                         ; $6201: $ff
	ld   bc, $ef11                                   ; $6202: $01 $11 $ef
	ccf                                              ; $6205: $3f
	ld   a, [bc]                                     ; $6206: $0a
	ld   [$8e2a], a                                  ; $6207: $ea $2a $8e
	adc  $35                                         ; $620a: $ce $35
	rst  $38                                         ; $620c: $ff
	ld   a, a                                        ; $620d: $7f
	add  b                                           ; $620e: $80
	rst  $38                                         ; $620f: $ff
	ld   b, $00                                      ; $6210: $06 $00
	ld   a, a                                        ; $6212: $7f
	add  b                                           ; $6213: $80
	inc  b                                           ; $6214: $04
	ei                                               ; $6215: $fb
	rst  $20                                         ; $6216: $e7
	rlca                                             ; $6217: $07
	add  c                                           ; $6218: $81
	nop                                              ; $6219: $00
	add  c                                           ; $621a: $81
	rlca                                             ; $621b: $07
	inc  c                                           ; $621c: $0c
	ldh  [rP1], a                                    ; $621d: $e0 $00
	rlca                                             ; $621f: $07
	inc  b                                           ; $6220: $04
	inc  [hl]                                        ; $6221: $34
	dec  b                                           ; $6222: $05
	dec  [hl]                                        ; $6223: $35
	scf                                              ; $6224: $37
	ret  z                                           ; $6225: $c8

	rst  $38                                         ; $6226: $ff
	nop                                              ; $6227: $00
	inc  bc                                          ; $6228: $03
	dec  bc                                          ; $6229: $0b
	add  c                                           ; $622a: $81
	di                                               ; $622b: $f3
	add  b                                           ; $622c: $80
	inc  bc                                          ; $622d: $03
	ld   [bc], a                                     ; $622e: $02
	di                                               ; $622f: $f3
	nop                                              ; $6230: $00
	ld   bc, $e180                                   ; $6231: $01 $80 $e1
	ld   bc, $07f1                                   ; $6234: $01 $f1 $07
	add  c                                           ; $6237: $81
	rst  $38                                         ; $6238: $ff
	nop                                              ; $6239: $00
	ret  nz                                          ; $623a: $c0

	add  e                                           ; $623b: $83
	cp   a                                           ; $623c: $bf
	add  b                                           ; $623d: $80
	nop                                              ; $623e: $00

jr_08e_623f:
	nop                                              ; $623f: $00
	dec  h                                           ; $6240: $25
	add  c                                           ; $6241: $81
	inc  de                                          ; $6242: $13
	nop                                              ; $6243: $00
	ld   c, [hl]                                     ; $6244: $4e
	adc  l                                           ; $6245: $8d
	jr   c, jr_08e_6248                              ; $6246: $38 $00

jr_08e_6248:
	ccf                                              ; $6248: $3f
	adc  d                                           ; $6249: $8a
	cp   $81                                         ; $624a: $fe $81
	db   $fc                                         ; $624c: $fc
	rlca                                             ; $624d: $07
	jp   nz, $393e                                   ; $624e: $c2 $3e $39

	ccf                                              ; $6251: $3f
	dec  [hl]                                        ; $6252: $35
	dec  sp                                          ; $6253: $3b
	ld   [hl-], a                                    ; $6254: $32
	ld   a, [hl-]                                    ; $6255: $3a
	add  b                                           ; $6256: $80
	inc  a                                           ; $6257: $3c
	add  b                                           ; $6258: $80
	ccf                                              ; $6259: $3f
	nop                                              ; $625a: $00
	nop                                              ; $625b: $00
	add  b                                           ; $625c: $80
	rrca                                             ; $625d: $0f
	ld   b, $00                                      ; $625e: $06 $00
	inc  b                                           ; $6260: $04
	inc  d                                           ; $6261: $14
	ld   c, b                                        ; $6262: $48
	ld   a, b                                        ; $6263: $78
	pop  hl                                          ; $6264: $e1
	pop  bc                                          ; $6265: $c1
	add  b                                           ; $6266: $80
	add  b                                           ; $6267: $80
	add  b                                           ; $6268: $80
	ld   bc, $2580                                   ; $6269: $01 $80 $25
	add  b                                           ; $626c: $80
	cp   $80                                         ; $626d: $fe $80
	nop                                              ; $626f: $00
	add  b                                           ; $6270: $80
	ld   a, a                                        ; $6271: $7f
	add  b                                           ; $6272: $80
	ld   a, h                                        ; $6273: $7c
	ld   [$fe80], sp                                 ; $6274: $08 $80 $fe
	cp   h                                           ; $6277: $bc
	rst  $38                                         ; $6278: $ff
	db   $fc                                         ; $6279: $fc
	rst  $38                                         ; $627a: $ff
	cp   [hl]                                        ; $627b: $be
	rst  $38                                         ; $627c: $ff
	ld   a, a                                        ; $627d: $7f
	add  b                                           ; $627e: $80
	rrca                                             ; $627f: $0f
	ld   [$0800], sp                                 ; $6280: $08 $00 $08
	adc  h                                           ; $6283: $8c
	jp   z, $b45e                                    ; $6284: $ca $5e $b4

	db   $ec                                         ; $6287: $ec
	jr   nz, jr_08e_62f2                             ; $6288: $20 $68

	add  b                                           ; $628a: $80
	jr   nc, jr_08e_6292                             ; $628b: $30 $05

	ld   h, c                                        ; $628d: $61
	pop  hl                                          ; $628e: $e1
	sbc  [hl]                                        ; $628f: $9e
	cp   $e0                                         ; $6290: $fe $e0

jr_08e_6292:
	nop                                              ; $6292: $00
	add  b                                           ; $6293: $80
	cp   a                                           ; $6294: $bf
	add  b                                           ; $6295: $80
	ccf                                              ; $6296: $3f
	ld   [bc], a                                     ; $6297: $02
	jr   nz, jr_08e_62d9                             ; $6298: $20 $3f

	ld   l, a                                        ; $629a: $6f
	add  c                                           ; $629b: $81
	ld   a, a                                        ; $629c: $7f
	ld   [bc], a                                     ; $629d: $02
	rst  $28                                         ; $629e: $ef
	rst  $38                                         ; $629f: $ff
	rra                                              ; $62a0: $1f
	add  b                                           ; $62a1: $80
	rrca                                             ; $62a2: $0f
	dec  c                                           ; $62a3: $0d
	nop                                              ; $62a4: $00
	ld   h, h                                        ; $62a5: $64
	ld   l, h                                        ; $62a6: $6c
	xor  $f6                                         ; $62a7: $ee $f6
	ld   b, c                                        ; $62a9: $41
	pop  de                                          ; $62aa: $d1
	cp   b                                           ; $62ab: $b8
	ld   hl, sp-$5c                                  ; $62ac: $f8 $a4
	db   $e4                                         ; $62ae: $e4
	adc  b                                           ; $62af: $88
	ld   hl, sp-$10                                  ; $62b0: $f8 $f0
	add  b                                           ; $62b2: $80
	rst  $38                                         ; $62b3: $ff
	add  b                                           ; $62b4: $80
	nop                                              ; $62b5: $00
	add  b                                           ; $62b6: $80
	add  hl, hl                                      ; $62b7: $29
	add  b                                           ; $62b8: $80
	ld   e, b                                        ; $62b9: $58
	add  b                                           ; $62ba: $80
	sbc  b                                           ; $62bb: $98
	add  d                                           ; $62bc: $82
	jr   jr_08e_623f                                 ; $62bd: $18 $80

	ld   hl, sp-$7f                                  ; $62bf: $f8 $81
	nop                                              ; $62c1: $00
	dec  b                                           ; $62c2: $05
	and  b                                           ; $62c3: $a0
	ld   a, a                                        ; $62c4: $7f
	nop                                              ; $62c5: $00
	rst  JumpTable                                         ; $62c6: $df
	sub  b                                           ; $62c7: $90
	ld   d, b                                        ; $62c8: $50
	add  h                                           ; $62c9: $84
	ld   d, a                                        ; $62ca: $57
	add  b                                           ; $62cb: $80
	ld   e, a                                        ; $62cc: $5f
	add  b                                           ; $62cd: $80
	ld   d, b                                        ; $62ce: $50
	inc  bc                                          ; $62cf: $03
	ret  nz                                          ; $62d0: $c0

	rst  $38                                         ; $62d1: $ff
	ld   b, b                                        ; $62d2: $40
	cp   a                                           ; $62d3: $bf
	add  b                                           ; $62d4: $80
	and  c                                           ; $62d5: $a1
	add  h                                           ; $62d6: $84
	xor  a                                           ; $62d7: $af
	add  b                                           ; $62d8: $80

jr_08e_62d9:
	cp   a                                           ; $62d9: $bf
	ld   [$01a1], sp                                 ; $62da: $08 $a1 $01
	ld   [hl+], a                                    ; $62dd: $22
	rst  $28                                         ; $62de: $ef
	add  b                                           ; $62df: $80
	db   $ed                                         ; $62e0: $ed
	ret                                              ; $62e1: $c9


	and  l                                           ; $62e2: $a5
	sub  l                                           ; $62e3: $95
	add  b                                           ; $62e4: $80
	cp   l                                           ; $62e5: $bd
	add  c                                           ; $62e6: $81
	add  l                                           ; $62e7: $85
	rlca                                             ; $62e8: $07
	sbc  l                                           ; $62e9: $9d
	xor  l                                           ; $62ea: $ad
	add  l                                           ; $62eb: $85
	and  l                                           ; $62ec: $a5
	ld   l, h                                        ; $62ed: $6c
	rst  $38                                         ; $62ee: $ff
	inc  b                                           ; $62ef: $04
	ei                                               ; $62f0: $fb
	add  b                                           ; $62f1: $80

jr_08e_62f2:
	ld   a, [bc]                                     ; $62f2: $0a
	add  h                                           ; $62f3: $84
	ld   a, d                                        ; $62f4: $7a
	add  b                                           ; $62f5: $80
	ei                                               ; $62f6: $fb
	ld   [bc], a                                     ; $62f7: $02
	ld   a, [bc]                                     ; $62f8: $0a
	nop                                              ; $62f9: $00
	ld   a, [bc]                                     ; $62fa: $0a
	add  b                                           ; $62fb: $80
	inc  [hl]                                        ; $62fc: $34
	add  b                                           ; $62fd: $80
	dec  [hl]                                        ; $62fe: $35
	nop                                              ; $62ff: $00
	nop                                              ; $6300: $00
	add  b                                           ; $6301: $80
	ccf                                              ; $6302: $3f
	inc  b                                           ; $6303: $04
	jr   nc, @+$41                                   ; $6304: $30 $3f

	inc  a                                           ; $6306: $3c
	ld   a, $32                                      ; $6307: $3e $32
	add  b                                           ; $6309: $80
	ld   a, $01                                      ; $630a: $3e $01
	ld   [hl], $01                                   ; $630c: $36 $01
	add  b                                           ; $630e: $80
	nop                                              ; $630f: $00
	ld   bc, $ebe3                                   ; $6310: $01 $e3 $eb
	add  c                                           ; $6313: $81
	inc  bc                                          ; $6314: $03
	ld   [bc], a                                     ; $6315: $02
	rst  $38                                         ; $6316: $ff
	inc  bc                                          ; $6317: $03
	rlca                                             ; $6318: $07
	add  e                                           ; $6319: $83
	ld   a, [$4a00]                                  ; $631a: $fa $00 $4a
	add  b                                           ; $631d: $80
	ld   bc, $3701                                   ; $631e: $01 $01 $37
	ld   a, a                                        ; $6321: $7f
	add  c                                           ; $6322: $81
	nop                                              ; $6323: $00
	ld   [bc], a                                     ; $6324: $02
	ld   a, [hl]                                     ; $6325: $7e
	add  c                                           ; $6326: $81
	inc  bc                                          ; $6327: $03
	add  e                                           ; $6328: $83
	ld   a, l                                        ; $6329: $7d
	nop                                              ; $632a: $00
	add  [hl]                                        ; $632b: $86
	adc  l                                           ; $632c: $8d
	jr   c, jr_08e_632f                              ; $632d: $38 $00

jr_08e_632f:
	jp   nz, $018d                                   ; $632f: $c2 $8d $01

	inc  bc                                          ; $6332: $03
	inc  e                                           ; $6333: $1c
	nop                                              ; $6334: $00
	rst  $28                                         ; $6335: $ef
	ldh  [$86], a                                    ; $6336: $e0 $86
	rst  $28                                         ; $6338: $ef
	ld   bc, $0f00                                   ; $6339: $01 $00 $0f
	add  b                                           ; $633c: $80
	rst  $28                                         ; $633d: $ef
	inc  bc                                          ; $633e: $03
	pop  hl                                          ; $633f: $e1
	nop                                              ; $6340: $00
	cp   $00                                         ; $6341: $fe $00
	add  [hl]                                        ; $6343: $86
	cp   $00                                         ; $6344: $fe $00
	nop                                              ; $6346: $00
	add  c                                           ; $6347: $81
	cp   $03                                         ; $6348: $fe $03
	pop  hl                                          ; $634a: $e1
	nop                                              ; $634b: $00
	rst  $28                                         ; $634c: $ef
	ldh  [$86], a                                    ; $634d: $e0 $86
	rst  $28                                         ; $634f: $ef
	ld   bc, $0f00                                   ; $6350: $01 $00 $0f
	add  b                                           ; $6353: $80
	rst  $28                                         ; $6354: $ef
	inc  bc                                          ; $6355: $03
	pop  hl                                          ; $6356: $e1
	nop                                              ; $6357: $00
	cp   $00                                         ; $6358: $fe $00
	add  [hl]                                        ; $635a: $86
	cp   $00                                         ; $635b: $fe $00
	nop                                              ; $635d: $00
	add  c                                           ; $635e: $81
	cp   $03                                         ; $635f: $fe $03
	pop  hl                                          ; $6361: $e1
	nop                                              ; $6362: $00
	rst  $28                                         ; $6363: $ef
	ldh  [$86], a                                    ; $6364: $e0 $86
	rst  $28                                         ; $6366: $ef
	ld   bc, $0f00                                   ; $6367: $01 $00 $0f
	add  b                                           ; $636a: $80
	rst  $28                                         ; $636b: $ef
	inc  bc                                          ; $636c: $03
	ldh  [rP1], a                                    ; $636d: $e0 $00
	rst  $38                                         ; $636f: $ff
	nop                                              ; $6370: $00
	add  [hl]                                        ; $6371: $86
	rst  $38                                         ; $6372: $ff
	nop                                              ; $6373: $00
	nop                                              ; $6374: $00
	add  c                                           ; $6375: $81
	rst  $38                                         ; $6376: $ff
	inc  bc                                          ; $6377: $03
	ldh  a, [rP1]                                    ; $6378: $f0 $00
	ld   a, d                                        ; $637a: $7a
	ld   a, b                                        ; $637b: $78
	add  [hl]                                        ; $637c: $86
	ld   a, d                                        ; $637d: $7a
	add  b                                           ; $637e: $80
	ld   a, [bc]                                     ; $637f: $0a
	add  b                                           ; $6380: $80
	ld   a, d                                        ; $6381: $7a
	nop                                              ; $6382: $00
	ld   h, l                                        ; $6383: $65
	add  e                                           ; $6384: $83
	ld   d, a                                        ; $6385: $57
	add  b                                           ; $6386: $80
	ld   e, a                                        ; $6387: $5f
	add  b                                           ; $6388: $80
	ld   d, b                                        ; $6389: $50
	rlca                                             ; $638a: $07
	rla                                              ; $638b: $17
	rst  $10                                         ; $638c: $d7
	sub  a                                           ; $638d: $97
	ld   d, a                                        ; $638e: $57
	rla                                              ; $638f: $17
	rst  $10                                         ; $6390: $d7
	rrca                                             ; $6391: $0f
	xor  a                                           ; $6392: $af
	add  c                                           ; $6393: $81
	rrca                                             ; $6394: $0f
	nop                                              ; $6395: $00
	xor  a                                           ; $6396: $af
	add  b                                           ; $6397: $80
	cp   a                                           ; $6398: $bf
	add  b                                           ; $6399: $80
	and  c                                           ; $639a: $a1
	add  h                                           ; $639b: $84
	xor  a                                           ; $639c: $af
	nop                                              ; $639d: $00
	ret                                              ; $639e: $c9


	add  a                                           ; $639f: $87
	and  l                                           ; $63a0: $a5
	rlca                                             ; $63a1: $07
	add  c                                           ; $63a2: $81
	db   $ed                                         ; $63a3: $ed
	ret                                              ; $63a4: $c9


	and  l                                           ; $63a5: $a5
	ld   bc, $706d                                   ; $63a6: $01 $6d $70
	ld   a, d                                        ; $63a9: $7a
	add  c                                           ; $63aa: $81
	ld   [hl], b                                     ; $63ab: $70
	nop                                              ; $63ac: $00
	ld   a, d                                        ; $63ad: $7a
	add  b                                           ; $63ae: $80
	ei                                               ; $63af: $fb
	add  b                                           ; $63b0: $80
	ld   a, [bc]                                     ; $63b1: $0a
	add  h                                           ; $63b2: $84
	ld   a, d                                        ; $63b3: $7a
	ld   [bc], a                                     ; $63b4: $02
	ccf                                              ; $63b5: $3f
	scf                                              ; $63b6: $37
	ld   [hl], $89                                   ; $63b7: $36 $89
	dec  [hl]                                        ; $63b9: $35
	add  b                                           ; $63ba: $80
	inc  [hl]                                        ; $63bb: $34
	ld   [bc], a                                     ; $63bc: $02
	adc  e                                           ; $63bd: $8b
	add  b                                           ; $63be: $80
	rlca                                             ; $63bf: $07
	add  e                                           ; $63c0: $83
	ld   hl, sp+$02                                  ; $63c1: $f8 $02
	ld   [$191f], sp                                 ; $63c3: $08 $1f $19
	add  b                                           ; $63c6: $80
	ld   e, $05                                      ; $63c7: $1e $05
	rst  $38                                         ; $63c9: $ff
	pop  af                                          ; $63ca: $f1
	nop                                              ; $63cb: $00
	sbc  a                                           ; $63cc: $9f
	ld   h, b                                        ; $63cd: $60
	add  b                                           ; $63ce: $80
	add  c                                           ; $63cf: $81
	rst  $38                                         ; $63d0: $ff
	nop                                              ; $63d1: $00
	sbc  a                                           ; $63d2: $9f
	add  d                                           ; $63d3: $82
	cp   a                                           ; $63d4: $bf
	add  b                                           ; $63d5: $80
	ccf                                              ; $63d6: $3f
	inc  bc                                          ; $63d7: $03
	rst  $38                                         ; $63d8: $ff
	pop  hl                                          ; $63d9: $e1
	ld   bc, $8df8                                   ; $63da: $01 $f8 $8d
	jr   c, @+$03                                    ; $63dd: $38 $01

	jp   nz, $8101                                   ; $63df: $c2 $01 $81

	nop                                              ; $63e2: $00
	add  e                                           ; $63e3: $83
	inc  bc                                          ; $63e4: $03
	add  e                                           ; $63e5: $83
	ld   bc, $0004                                   ; $63e6: $01 $04 $00
	cp   $e0                                         ; $63e9: $fe $e0
	rst  $20                                         ; $63eb: $e7
	rlca                                             ; $63ec: $07
	add  b                                           ; $63ed: $80
	ld   h, a                                        ; $63ee: $67
	add  b                                           ; $63ef: $80
	nop                                              ; $63f0: $00
	nop                                              ; $63f1: $00
	sub  b                                           ; $63f2: $90
	add  e                                           ; $63f3: $83
	rst  $30                                         ; $63f4: $f7
	dec  b                                           ; $63f5: $05
	ld   h, a                                        ; $63f6: $67
	nop                                              ; $63f7: $00
	ld   bc, $7700                                   ; $63f8: $01 $00 $77
	halt                                             ; $63fb: $76
	add  b                                           ; $63fc: $80
	ld   [hl], a                                     ; $63fd: $77
	add  b                                           ; $63fe: $80
	nop                                              ; $63ff: $00
	nop                                              ; $6400: $00
	adc  b                                           ; $6401: $88
	add  e                                           ; $6402: $83
	rst  $38                                         ; $6403: $ff
	nop                                              ; $6404: $00
	ld   [hl], a                                     ; $6405: $77
	add  b                                           ; $6406: $80
	nop                                              ; $6407: $00
	ld   [bc], a                                     ; $6408: $02
	ldh  [$e7], a                                    ; $6409: $e0 $e7
	rlca                                             ; $640b: $07
	add  b                                           ; $640c: $80
	ld   [hl], b                                     ; $640d: $70
	add  b                                           ; $640e: $80
	nop                                              ; $640f: $00
	add  c                                           ; $6410: $81
	add  b                                           ; $6411: $80
	add  c                                           ; $6412: $81
	ldh  [rTIMA], a                                  ; $6413: $e0 $05
	jr   z, jr_08e_6457                              ; $6415: $28 $40

	add  hl, bc                                      ; $6417: $09
	nop                                              ; $6418: $00
	ld   [hl], a                                     ; $6419: $77
	halt                                             ; $641a: $76
	add  b                                           ; $641b: $80
	ld   [hl], a                                     ; $641c: $77
	add  b                                           ; $641d: $80
	nop                                              ; $641e: $00
	nop                                              ; $641f: $00
	ld   [$1f83], sp                                 ; $6420: $08 $83 $1f
	dec  b                                           ; $6423: $05
	db   $10                                         ; $6424: $10
	ld   b, a                                        ; $6425: $47
	ld   b, b                                        ; $6426: $40
	ldh  [$e7], a                                    ; $6427: $e0 $e7
	rlca                                             ; $6429: $07
	add  b                                           ; $642a: $80
	ld   [hl], a                                     ; $642b: $77
	add  b                                           ; $642c: $80
	nop                                              ; $642d: $00
	nop                                              ; $642e: $00
	adc  b                                           ; $642f: $88
	add  e                                           ; $6430: $83
	rst  $38                                         ; $6431: $ff
	ld   bc, $7700                                   ; $6432: $01 $00 $77
	add  b                                           ; $6435: $80
	nop                                              ; $6436: $00
	add  b                                           ; $6437: $80
	ld   [hl], a                                     ; $6438: $77
	add  b                                           ; $6439: $80
	ld   h, c                                        ; $643a: $61
	add  b                                           ; $643b: $80
	nop                                              ; $643c: $00
	add  h                                           ; $643d: $84
	add  b                                           ; $643e: $80
	dec  b                                           ; $643f: $05
	jr   nz, jr_08e_6443                             ; $6440: $20 $01

	xor  c                                           ; $6442: $a9

jr_08e_6443:
	ld   a, b                                        ; $6443: $78
	ldh  a, [c]                                      ; $6444: $f2
	ld   [bc], a                                     ; $6445: $02
	add  b                                           ; $6446: $80
	halt                                             ; $6447: $76
	add  b                                           ; $6448: $80
	nop                                              ; $6449: $00
	nop                                              ; $644a: $00
	ld   [$7e83], sp                                 ; $644b: $08 $83 $7e
	ld   bc, $3046                                   ; $644e: $01 $46 $30
	adc  d                                           ; $6451: $8a
	nop                                              ; $6452: $00
	add  b                                           ; $6453: $80
	ld   bc, $0380                                   ; $6454: $01 $80 $03

jr_08e_6457:
	add  h                                           ; $6457: $84
	nop                                              ; $6458: $00
	add  b                                           ; $6459: $80
	inc  bc                                          ; $645a: $03
	add  b                                           ; $645b: $80
	rra                                              ; $645c: $1f
	add  b                                           ; $645d: $80
	ld   a, a                                        ; $645e: $7f
	add  b                                           ; $645f: $80
	rst  $38                                         ; $6460: $ff
	add  b                                           ; $6461: $80
	add  b                                           ; $6462: $80
	add  h                                           ; $6463: $84
	nop                                              ; $6464: $00
	adc  b                                           ; $6465: $88
	rst  $38                                         ; $6466: $ff
	add  h                                           ; $6467: $84
	nop                                              ; $6468: $00
	adc  b                                           ; $6469: $88
	rst  $38                                         ; $646a: $ff
	ld   [bc], a                                     ; $646b: $02
	ccf                                              ; $646c: $3f
	scf                                              ; $646d: $37
	inc  [hl]                                        ; $646e: $34
	add  c                                           ; $646f: $81
	scf                                              ; $6470: $37
	ld   bc, $3734                                   ; $6471: $01 $34 $37
	add  b                                           ; $6474: $80
	inc  [hl]                                        ; $6475: $34
	nop                                              ; $6476: $00
	inc  sp                                          ; $6477: $33
	add  e                                           ; $6478: $83
	scf                                              ; $6479: $37
	ld   [bc], a                                     ; $647a: $02
	di                                               ; $647b: $f3
	rst  $38                                         ; $647c: $ff
	nop                                              ; $647d: $00
	add  c                                           ; $647e: $81
	rst  $38                                         ; $647f: $ff
	ld   bc, $ff00                                   ; $6480: $01 $00 $ff
	add  b                                           ; $6483: $80
	nop                                              ; $6484: $00
	add  [hl]                                        ; $6485: $86
	rst  $38                                         ; $6486: $ff
	nop                                              ; $6487: $00
	nop                                              ; $6488: $00
	add  c                                           ; $6489: $81
	rst  $38                                         ; $648a: $ff
	ld   bc, $ff00                                   ; $648b: $01 $00 $ff
	add  b                                           ; $648e: $80
	nop                                              ; $648f: $00
	add  h                                           ; $6490: $84
	rst  $38                                         ; $6491: $ff
	nop                                              ; $6492: $00
	rlca                                             ; $6493: $07
	adc  l                                           ; $6494: $8d
	jr   c, jr_08e_6497                              ; $6495: $38 $00

jr_08e_6497:
	pop  bc                                          ; $6497: $c1
	adc  l                                           ; $6498: $8d
	nop                                              ; $6499: $00
	inc  bc                                          ; $649a: $03
	cp   $00                                         ; $649b: $fe $00
	ld   a, a                                        ; $649d: $7f
	ld   b, b                                        ; $649e: $40
	add  b                                           ; $649f: $80
	ld   a, a                                        ; $64a0: $7f
	add  b                                           ; $64a1: $80
	ld   h, c                                        ; $64a2: $61
	dec  bc                                          ; $64a3: $0b
	ld   c, h                                        ; $64a4: $4c
	ld   b, b                                        ; $64a5: $40
	inc  c                                           ; $64a6: $0c
	nop                                              ; $64a7: $00
	ld   h, c                                        ; $64a8: $61
	ld   b, b                                        ; $64a9: $40
	ld   a, a                                        ; $64aa: $7f
	ld   b, b                                        ; $64ab: $40
	ld   hl, $fe00                                   ; $64ac: $21 $00 $fe
	ld   bc, $fe82                                   ; $64af: $01 $82 $fe
	inc  b                                           ; $64b2: $04
	rst  $38                                         ; $64b3: $ff
	cp   $86                                         ; $64b4: $fe $86
	ld   b, [hl]                                     ; $64b6: $46
	add  $80                                         ; $64b7: $c6 $80

jr_08e_64b9:
	jp   nz, $ba05                                   ; $64b9: $c2 $05 $ba

	ld   a, l                                        ; $64bc: $7d
	ld   sp, $33d3                                   ; $64bd: $31 $d3 $33
	inc  bc                                          ; $64c0: $03
	add  c                                           ; $64c1: $81
	inc  de                                          ; $64c2: $13
	inc  bc                                          ; $64c3: $03
	inc  hl                                          ; $64c4: $23
	inc  sp                                          ; $64c5: $33
	di                                               ; $64c6: $f3
	ld   [hl], e                                     ; $64c7: $73
	add  b                                           ; $64c8: $80
	ld   [hl], a                                     ; $64c9: $77
	inc  c                                           ; $64ca: $0c
	ld   d, $77                                      ; $64cb: $16 $77
	sbc  a                                           ; $64cd: $9f
	rst  $10                                         ; $64ce: $d7
	set  2, e                                        ; $64cf: $cb $d3
	pop  bc                                          ; $64d1: $c1
	pop  hl                                          ; $64d2: $e1
	ldh  [$e1], a                                    ; $64d3: $e0 $e1
	ldh  a, [c]                                      ; $64d5: $f2
	db   $d3                                         ; $64d6: $d3
	rst  $10                                         ; $64d7: $d7
	add  c                                           ; $64d8: $81
	rst  JumpTable                                         ; $64d9: $df
	dec  b                                           ; $64da: $05
	ret  c                                           ; $64db: $d8

	rst  JumpTable                                         ; $64dc: $df
	ret  c                                           ; $64dd: $d8

	cp   $fd                                         ; $64de: $fe $fd
	db   $fc                                         ; $64e0: $fc
	add  b                                           ; $64e1: $80
	ld   hl, sp+$03                                  ; $64e2: $f8 $03
	nop                                              ; $64e4: $00
	ld   [hl], b                                     ; $64e5: $70

jr_08e_64e6:
	adc  h                                           ; $64e6: $8c
	db   $fc                                         ; $64e7: $fc
	add  d                                           ; $64e8: $82
	rst  $38                                         ; $64e9: $ff
	ld   b, $00                                      ; $64ea: $06 $00

jr_08e_64ec:
	ld   [hl], a                                     ; $64ec: $77
	cp   $c7                                         ; $64ed: $fe $c7
	ld   c, a                                        ; $64ef: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64f0: $cf
	rrca                                             ; $64f1: $0f
	add  c                                           ; $64f2: $81
	ld   c, a                                        ; $64f3: $4f
	ld   bc, $cf8f                                   ; $64f4: $01 $8f $cf
	add  d                                           ; $64f7: $82
	rst  JumpTable                                         ; $64f8: $df
	ld   b, $5d                                      ; $64f9: $06 $5d
	rst  JumpTable                                         ; $64fb: $df
	dec  hl                                          ; $64fc: $2b
	ld   d, b                                        ; $64fd: $50
	ld   [hl], a                                     ; $64fe: $77
	ld   c, b                                        ; $64ff: $48
	inc  bc                                          ; $6500: $03
	add  c                                           ; $6501: $81
	add  h                                           ; $6502: $84
	ld   [bc], a                                     ; $6503: $02
	call z, Call_08e_7c4c                            ; $6504: $cc $4c $7c
	add  c                                           ; $6507: $81
	ld   [hl], h                                     ; $6508: $74
	ld   bc, $7000                                   ; $6509: $01 $00 $70
	add  b                                           ; $650c: $80
	nop                                              ; $650d: $00
	nop                                              ; $650e: $00
	add  b                                           ; $650f: $80
	add  b                                           ; $6510: $80
	nop                                              ; $6511: $00
	add  c                                           ; $6512: $81
	ccf                                              ; $6513: $3f
	ld   [bc], a                                     ; $6514: $02
	rlca                                             ; $6515: $07
	rrca                                             ; $6516: $0f
	ld   [$0981], sp                                 ; $6517: $08 $81 $09
	rlca                                             ; $651a: $07
	ld   [hl], $3f                                   ; $651b: $36 $3f
	cp   a                                           ; $651d: $bf
	nop                                              ; $651e: $00
	ld   a, $00                                      ; $651f: $3e $00
	ld   e, $9e                                      ; $6521: $1e $9e
	add  d                                           ; $6523: $82
	sbc  $06                                         ; $6524: $de $06

jr_08e_6526:
	ldh  [$fe], a                                    ; $6526: $e0 $fe
	ret  nc                                          ; $6528: $d0

	adc  $c0                                         ; $6529: $ce $c0
	sbc  $5f                                         ; $652b: $de $5f
	adc  c                                           ; $652d: $89
	rst  $38                                         ; $652e: $ff
	add  d                                           ; $652f: $82
	ccf                                              ; $6530: $3f
	adc  [hl]                                        ; $6531: $8e
	rst  $38                                         ; $6532: $ff
	nop                                              ; $6533: $00
	jr   c, jr_08e_64b9                              ; $6534: $38 $83

	scf                                              ; $6536: $37
	nop                                              ; $6537: $00
	rrca                                             ; $6538: $0f
	add  c                                           ; $6539: $81
	nop                                              ; $653a: $00
	add  d                                           ; $653b: $82
	ccf                                              ; $653c: $3f
	add  b                                           ; $653d: $80
	rra                                              ; $653e: $1f
	nop                                              ; $653f: $00
	nop                                              ; $6540: $00
	add  h                                           ; $6541: $84
	rst  $38                                         ; $6542: $ff
	add  c                                           ; $6543: $81
	nop                                              ; $6544: $00
	ld   bc, $00ff                                   ; $6545: $01 $ff $00
	add  b                                           ; $6548: $80
	rst  $38                                         ; $6549: $ff
	ld   [bc], a                                     ; $654a: $02
	ccf                                              ; $654b: $3f
	rst  $38                                         ; $654c: $ff
	ccf                                              ; $654d: $3f
	add  b                                           ; $654e: $80
	cp   $80                                         ; $654f: $fe $80
	db   $fc                                         ; $6551: $fc
	add  b                                           ; $6552: $80
	ld   hl, sp-$80                                  ; $6553: $f8 $80
	ld   bc, $0302                                   ; $6555: $01 $02 $03
	rst  $38                                         ; $6558: $ff
	inc  bc                                          ; $6559: $03
	add  b                                           ; $655a: $80
	ei                                               ; $655b: $fb
	inc  b                                           ; $655c: $04
	ld   a, [$f9fb]                                  ; $655d: $fa $fb $f9
	rlca                                             ; $6560: $07
	jr   nc, jr_08e_64e6                             ; $6561: $30 $83

	scf                                              ; $6563: $37
	ld   [bc], a                                     ; $6564: $02
	nop                                              ; $6565: $00
	rlca                                             ; $6566: $07
	jr   nc, jr_08e_64ec                             ; $6567: $30 $83

	scf                                              ; $6569: $37
	ld   [bc], a                                     ; $656a: $02
	ld   sp, hl                                      ; $656b: $f9
	cp   $88                                         ; $656c: $fe $88
	add  e                                           ; $656e: $83
	cp   $02                                         ; $656f: $fe $02
	nop                                              ; $6571: $00
	halt                                             ; $6572: $76
	adc  b                                           ; $6573: $88
	add  c                                           ; $6574: $81
	cp   $02                                         ; $6575: $fe $02
	or   $80                                         ; $6577: $f6 $80
	ld   l, a                                        ; $6579: $6f
	add  e                                           ; $657a: $83
	ld   d, b                                        ; $657b: $50
	ld   a, [bc]                                     ; $657c: $0a

jr_08e_657d:
	ld   [hl], c                                     ; $657d: $71
	ld   d, b                                        ; $657e: $50
	ld   e, a                                        ; $657f: $5f
	ld   b, c                                        ; $6580: $41
	rrca                                             ; $6581: $0f
	ld   [hl], b                                     ; $6582: $70
	ld   a, a                                        ; $6583: $7f
	nop                                              ; $6584: $00
	ld   a, [hl+]                                    ; $6585: $2a
	ld   a, a                                        ; $6586: $7f
	cp   e                                           ; $6587: $bb
	add  c                                           ; $6588: $81
	sub  d                                           ; $6589: $92
	ld   c, $d4                                      ; $658a: $0e $d4
	sub  h                                           ; $658c: $94
	db   $fc                                         ; $658d: $fc
	jp   nz, $fefc                                   ; $658e: $c2 $fc $fe

	ldh  a, [$0e]                                    ; $6591: $f0 $0e
	cp   $00                                         ; $6593: $fe $00
	xor  b                                           ; $6595: $a8
	cp   $5e                                         ; $6596: $fe $5e
	ld   h, $2e                                      ; $6598: $26 $2e
	add  b                                           ; $659a: $80
	ld   [hl], $01                                   ; $659b: $36 $01
	jr   c, jr_08e_65c6                              ; $659d: $38 $27

	add  b                                           ; $659f: $80
	nop                                              ; $65a0: $00
	add  b                                           ; $65a1: $80
	cpl                                              ; $65a2: $2f
	nop                                              ; $65a3: $00
	jr   z, jr_08e_6526                              ; $65a4: $28 $80

	cpl                                              ; $65a6: $2f
	inc  b                                           ; $65a7: $04
	dec  hl                                          ; $65a8: $2b
	inc  c                                           ; $65a9: $0c
	add  sp, $0f                                     ; $65aa: $e8 $0f
	rlca                                             ; $65ac: $07
	add  c                                           ; $65ad: $81
	ld   [hl], a                                     ; $65ae: $77
	nop                                              ; $65af: $00
	ld   a, b                                        ; $65b0: $78
	add  b                                           ; $65b1: $80
	nop                                              ; $65b2: $00
	add  c                                           ; $65b3: $81
	rst  $38                                         ; $65b4: $ff
	add  b                                           ; $65b5: $80
	ld   a, a                                        ; $65b6: $7f
	add  b                                           ; $65b7: $80
	ccf                                              ; $65b8: $3f
	nop                                              ; $65b9: $00
	adc  c                                           ; $65ba: $89
	add  c                                           ; $65bb: $81
	db   $fc                                         ; $65bc: $fc
	ld   [bc], a                                     ; $65bd: $02
	ld   [hl], h                                     ; $65be: $74
	db   $fc                                         ; $65bf: $fc
	ld   b, d                                        ; $65c0: $42
	add  b                                           ; $65c1: $80
	nop                                              ; $65c2: $00
	add  b                                           ; $65c3: $80
	sbc  a                                           ; $65c4: $9f
	nop                                              ; $65c5: $00

jr_08e_65c6:
	sub  c                                           ; $65c6: $91
	add  b                                           ; $65c7: $80
	sbc  [hl]                                        ; $65c8: $9e
	ld   [$9896], sp                                 ; $65c9: $08 $96 $98
	ret  nc                                          ; $65cc: $d0

	rra                                              ; $65cd: $1f
	rrca                                             ; $65ce: $0f
	xor  $ef                                         ; $65cf: $ee $ef
	pop  hl                                          ; $65d1: $e1
	rst  $38                                         ; $65d2: $ff
	add  b                                           ; $65d3: $80
	nop                                              ; $65d4: $00
	add  e                                           ; $65d5: $83
	rst  $38                                         ; $65d6: $ff
	add  b                                           ; $65d7: $80
	ld   a, a                                        ; $65d8: $7f
	ld   bc, $7444                                   ; $65d9: $01 $44 $74
	add  d                                           ; $65dc: $82
	db   $f4                                         ; $65dd: $f4
	ld   [bc], a                                     ; $65de: $02
	ret  nz                                          ; $65df: $c0

	ldh  a, [rDIV]                                   ; $65e0: $f0 $04
	add  d                                           ; $65e2: $82
	ld   [hl], h                                     ; $65e3: $74
	dec  b                                           ; $65e4: $05
	inc  [hl]                                        ; $65e5: $34
	nop                                              ; $65e6: $00
	jr   nc, jr_08e_65e9                             ; $65e7: $30 $00

jr_08e_65e9:
	inc  bc                                          ; $65e9: $03
	ld   [bc], a                                     ; $65ea: $02
	add  c                                           ; $65eb: $81
	inc  bc                                          ; $65ec: $03
	adc  b                                           ; $65ed: $88
	rra                                              ; $65ee: $1f
	inc  b                                           ; $65ef: $04
	ld   [bc], a                                     ; $65f0: $02
	ld   hl, sp+$00                                  ; $65f1: $f8 $00
	ld   hl, sp+$38                                  ; $65f3: $f8 $38
	add  c                                           ; $65f5: $81
	ld   hl, sp+$02                                  ; $65f6: $f8 $02

jr_08e_65f8:
	jr   c, @-$06                                    ; $65f8: $38 $f8

	jr   c, jr_08e_657d                              ; $65fa: $38 $81

	ld   hl, sp+$01                                  ; $65fc: $f8 $01
	jr   c, jr_08e_65f8                              ; $65fe: $38 $f8

	add  h                                           ; $6600: $84
	ccf                                              ; $6601: $3f
	sbc  b                                           ; $6602: $98
	rst  $38                                         ; $6603: $ff
	add  b                                           ; $6604: $80
	rlca                                             ; $6605: $07
	dec  b                                           ; $6606: $05
	ret  nz                                          ; $6607: $c0

	nop                                              ; $6608: $00
	ldh  a, [$c0]                                    ; $6609: $f0 $c0
	rst  $38                                         ; $660b: $ff
	ldh  a, [$81]                                    ; $660c: $f0 $81
	rst  $30                                         ; $660e: $f7
	ld   bc, $f7f6                                   ; $660f: $01 $f6 $f7
	add  c                                           ; $6612: $81
	or   $02                                         ; $6613: $f6 $02
	rrca                                             ; $6615: $0f
	rst  $38                                         ; $6616: $ff
	rrca                                             ; $6617: $0f
	add  c                                           ; $6618: $81
	nop                                              ; $6619: $00
	ld   bc, $00ff                                   ; $661a: $01 $ff $00
	add  c                                           ; $661d: $81
	rst  $38                                         ; $661e: $ff
	add  b                                           ; $661f: $80
	nop                                              ; $6620: $00
	nop                                              ; $6621: $00
	rst  $38                                         ; $6622: $ff
	add  b                                           ; $6623: $80
	nop                                              ; $6624: $00
	ld   [bc], a                                     ; $6625: $02
	ld   sp, hl                                      ; $6626: $f9
	ld   a, [$81fc]                                  ; $6627: $fa $fc $81
	nop                                              ; $662a: $00
	ld   [bc], a                                     ; $662b: $02
	pop  hl                                          ; $662c: $e1
	ld   bc, $80e0                                   ; $662d: $01 $e0 $80
	ldh  a, [$80]                                    ; $6630: $f0 $80
	ld   [$fb00], sp                                 ; $6632: $08 $00 $fb
	add  b                                           ; $6635: $80
	dec  bc                                          ; $6636: $0b
	ld   a, [bc]                                     ; $6637: $0a
	call z, $3837                                    ; $6638: $cc $37 $38
	ld   a, $ae                                      ; $663b: $3e $ae
	cp   h                                           ; $663d: $bc
	sbc  h                                           ; $663e: $9c
	cp   b                                           ; $663f: $b8
	ld   bc, $0331                                   ; $6640: $01 $31 $03
	add  b                                           ; $6643: $80
	inc  de                                          ; $6644: $13
	ld   b, $03                                      ; $6645: $06 $03
	add  e                                           ; $6647: $83
	jp   VBlankInterrupt                             ; $6648: $c3 $40 $00


	ccf                                              ; $664b: $3f
	nop                                              ; $664c: $00
	add  b                                           ; $664d: $80
	ld   a, [hl]                                     ; $664e: $7e
	add  [hl]                                        ; $664f: $86
	cp   $02                                         ; $6650: $fe $02
	rst  $38                                         ; $6652: $ff
	ldh  a, [$30]                                    ; $6653: $f0 $30
	add  b                                           ; $6655: $80
	ld   a, a                                        ; $6656: $7f
	nop                                              ; $6657: $00
	nop                                              ; $6658: $00
	add  b                                           ; $6659: $80
	ld   a, a                                        ; $665a: $7f
	add  b                                           ; $665b: $80
	nop                                              ; $665c: $00
	add  d                                           ; $665d: $82
	ld   l, a                                        ; $665e: $6f
	nop                                              ; $665f: $00
	ld   l, h                                        ; $6660: $6c
	add  c                                           ; $6661: $81
	ld   l, a                                        ; $6662: $6f
	nop                                              ; $6663: $00
	inc  bc                                          ; $6664: $03
	add  b                                           ; $6665: $80
	cp   $00                                         ; $6666: $fe $00
	nop                                              ; $6668: $00
	add  b                                           ; $6669: $80
	ld   a, d                                        ; $666a: $7a
	add  b                                           ; $666b: $80
	nop                                              ; $666c: $00
	add  d                                           ; $666d: $82
	ld   a, d                                        ; $666e: $7a
	dec  c                                           ; $666f: $0d
	add  h                                           ; $6670: $84
	cp   $fa                                         ; $6671: $fe $fa
	ld   hl, sp+$66                                  ; $6673: $f8 $66
	ld   l, $23                                      ; $6675: $2e $23
	cpl                                              ; $6677: $2f
	inc  a                                           ; $6678: $3c
	jr   nz, jr_08e_66ba                             ; $6679: $20 $3f

	rra                                              ; $667b: $1f
	dec  de                                          ; $667c: $1b
	dec  sp                                          ; $667d: $3b
	add  b                                           ; $667e: $80
	ld   a, [hl-]                                    ; $667f: $3a
	add  c                                           ; $6680: $81
	jr   nz, jr_08e_6685                             ; $6681: $20 $02

	ccf                                              ; $6683: $3f
	nop                                              ; $6684: $00

jr_08e_6685:
	ccf                                              ; $6685: $3f
	add  b                                           ; $6686: $80

jr_08e_6687:
	rlca                                             ; $6687: $07
	inc  bc                                          ; $6688: $03
	ld   a, b                                        ; $6689: $78
	nop                                              ; $668a: $00
	inc  bc                                          ; $668b: $03
	dec  sp                                          ; $668c: $3b
	add  c                                           ; $668d: $81
	ld   a, [hl-]                                    ; $668e: $3a
	nop                                              ; $668f: $00
	ld   a, d                                        ; $6690: $7a
	add  c                                           ; $6691: $81
	nop                                              ; $6692: $00
	ld   a, [bc]                                     ; $6693: $0a
	inc  bc                                          ; $6694: $03
	cp   a                                           ; $6695: $bf
	sbc  h                                           ; $6696: $9c
	add  [hl]                                        ; $6697: $86
	sbc  [hl]                                        ; $6698: $9e
	jr   c, jr_08e_669b                              ; $6699: $38 $00

jr_08e_669b:
	sbc  [hl]                                        ; $669b: $9e
	cp   [hl]                                        ; $669c: $be
	adc  [hl]                                        ; $669d: $8e
	xor  [hl]                                        ; $669e: $ae
	add  b                                           ; $669f: $80
	inc  h                                           ; $66a0: $24
	add  c                                           ; $66a1: $81
	nop                                              ; $66a2: $00
	ld   [bc], a                                     ; $66a3: $02
	cp   $81                                         ; $66a4: $fe $81
	ld   a, a                                        ; $66a6: $7f
	add  b                                           ; $66a7: $80
	rrca                                             ; $66a8: $0f
	ld   [bc], a                                     ; $66a9: $02
	ldh  a, [rP1]                                    ; $66aa: $f0 $00
	rlca                                             ; $66ac: $07
	add  c                                           ; $66ad: $81

jr_08e_66ae:
	ld   [hl], a                                     ; $66ae: $77
	ld   bc, $f575                                   ; $66af: $01 $75 $f5
	add  c                                           ; $66b2: $81
	nop                                              ; $66b3: $00
	ld   bc, $3307                                   ; $66b4: $01 $07 $33
	add  e                                           ; $66b7: $83
	inc  [hl]                                        ; $66b8: $34
	add  b                                           ; $66b9: $80

jr_08e_66ba:
	nop                                              ; $66ba: $00
	add  h                                           ; $66bb: $84
	inc  [hl]                                        ; $66bc: $34
	add  b                                           ; $66bd: $80
	ld   [hl], b                                     ; $66be: $70
	nop                                              ; $66bf: $00
	dec  e                                           ; $66c0: $1d
	add  [hl]                                        ; $66c1: $86
	rra                                              ; $66c2: $1f
	add  c                                           ; $66c3: $81
	inc  e                                           ; $66c4: $1c
	ld   bc, $1c1d                                   ; $66c5: $01 $1d $1c
	add  b                                           ; $66c8: $80
	rlca                                             ; $66c9: $07
	nop                                              ; $66ca: $00
	ld   [$e882], sp                                 ; $66cb: $08 $82 $e8
	nop                                              ; $66ce: $00
	ld   [$f881], sp                                 ; $66cf: $08 $81 $f8
	add  c                                           ; $66d2: $81
	nop                                              ; $66d3: $00
	ld   bc, $00f8                                   ; $66d4: $01 $f8 $00
	add  b                                           ; $66d7: $80
	ldh  a, [$88]                                    ; $66d8: $f0 $88
	rst  $38                                         ; $66da: $ff
	add  d                                           ; $66db: $82
	rlca                                             ; $66dc: $07
	add  b                                           ; $66dd: $80
	nop                                              ; $66de: $00
	adc  [hl]                                        ; $66df: $8e
	rst  $38                                         ; $66e0: $ff
	nop                                              ; $66e1: $00
	nop                                              ; $66e2: $00
	nop                                              ; $66e3: $00
	nop                                              ; $66e4: $00
	nop                                              ; $66e5: $00
	nop                                              ; $66e6: $00
	nop                                              ; $66e7: $00
	nop                                              ; $66e8: $00
	nop                                              ; $66e9: $00
	nop                                              ; $66ea: $00
	nop                                              ; $66eb: $00
	nop                                              ; $66ec: $00
	nop                                              ; $66ed: $00
	nop                                              ; $66ee: $00
	nop                                              ; $66ef: $00
	sbc  b                                           ; $66f0: $98
	inc  bc                                          ; $66f1: $03
	rst  $38                                         ; $66f2: $ff
	nop                                              ; $66f3: $00
	db   $d3                                         ; $66f4: $d3
	nop                                              ; $66f5: $00
	adc  b                                           ; $66f6: $88
	ld   bc, $0084                                   ; $66f7: $01 $84 $00
	add  b                                           ; $66fa: $80
	rst  $38                                         ; $66fb: $ff
	add  d                                           ; $66fc: $82
	nop                                              ; $66fd: $00
	add  b                                           ; $66fe: $80
	ccf                                              ; $66ff: $3f
	add  b                                           ; $6700: $80
	jr   nz, jr_08e_6687                             ; $6701: $20 $84

	nop                                              ; $6703: $00
	add  b                                           ; $6704: $80
	rst  $38                                         ; $6705: $ff
	add  d                                           ; $6706: $82
	nop                                              ; $6707: $00
	add  b                                           ; $6708: $80
	rst  $38                                         ; $6709: $ff
	ld   a, [$8400]                                  ; $670a: $fa $00 $84
	ld   bc, $0088                                   ; $670d: $01 $88 $00
	add  b                                           ; $6710: $80
	rst  $38                                         ; $6711: $ff
	adc  h                                           ; $6712: $8c
	nop                                              ; $6713: $00
	add  b                                           ; $6714: $80
	rst  $38                                         ; $6715: $ff
	adc  h                                           ; $6716: $8c
	nop                                              ; $6717: $00
	add  b                                           ; $6718: $80
	rst  $38                                         ; $6719: $ff
	adc  h                                           ; $671a: $8c
	nop                                              ; $671b: $00
	add  b                                           ; $671c: $80
	rst  $38                                         ; $671d: $ff
	adc  h                                           ; $671e: $8c
	nop                                              ; $671f: $00
	add  b                                           ; $6720: $80
	rst  $38                                         ; $6721: $ff
	add  d                                           ; $6722: $82
	nop                                              ; $6723: $00
	adc  b                                           ; $6724: $88
	ld   bc, $ff80                                   ; $6725: $01 $80 $ff
	add  d                                           ; $6728: $82
	nop                                              ; $6729: $00
	add  c                                           ; $672a: $81
	jr   nz, jr_08e_66ae                             ; $672b: $20 $81

	ld   a, [hl+]                                    ; $672d: $2a
	inc  c                                           ; $672e: $0c
	ld   l, $2a                                      ; $672f: $2e $2a
	ld   hl, $1400                                   ; $6731: $21 $00 $14
	inc  [hl]                                        ; $6734: $34
	ld   a, d                                        ; $6735: $7a
	ld   [hl+], a                                    ; $6736: $22
	ld   h, h                                        ; $6737: $64
	inc  c                                           ; $6738: $0c
	ccf                                              ; $6739: $3f
	nop                                              ; $673a: $00
	ld   [$8181], sp                                 ; $673b: $08 $81 $81
	rlca                                             ; $673e: $07
	and  c                                           ; $673f: $a1
	add  c                                           ; $6740: $81
	inc  c                                           ; $6741: $0c
	ld   b, b                                        ; $6742: $40
	rrca                                             ; $6743: $0f
	ld   bc, $2733                                   ; $6744: $01 $33 $27
	add  b                                           ; $6747: $80
	ld   b, c                                        ; $6748: $41
	nop                                              ; $6749: $00
	rst  $38                                         ; $674a: $ff
	db   $ed                                         ; $674b: $ed
	nop                                              ; $674c: $00
	adc  [hl]                                        ; $674d: $8e
	ld   bc, $0080                                   ; $674e: $01 $80 $00
	nop                                              ; $6751: $00
	ld   [$3080], sp                                 ; $6752: $08 $80 $30
	nop                                              ; $6755: $00
	inc  sp                                          ; $6756: $33
	add  b                                           ; $6757: $80
	rlca                                             ; $6758: $07
	add  b                                           ; $6759: $80
	ccf                                              ; $675a: $3f
	ld   bc, $2c1c                                   ; $675b: $01 $1c $2c
	add  b                                           ; $675e: $80
	cpl                                              ; $675f: $2f
	inc  bc                                          ; $6760: $03
	rrca                                             ; $6761: $0f
	inc  a                                           ; $6762: $3c
	jr   c, jr_08e_6765                              ; $6763: $38 $00

jr_08e_6765:
	add  b                                           ; $6765: $80
	rrca                                             ; $6766: $0f
	dec  b                                           ; $6767: $05
	ld   b, b                                        ; $6768: $40
	add  a                                           ; $6769: $87
	add  h                                           ; $676a: $84
	adc  b                                           ; $676b: $88
	adc  e                                           ; $676c: $8b
	sub  c                                           ; $676d: $91
	add  b                                           ; $676e: $80
	ld   de, $d180                                   ; $676f: $11 $80 $d1
	inc  bc                                          ; $6772: $03
	sbc  $40                                         ; $6773: $de $40
	rrca                                             ; $6775: $0f
	nop                                              ; $6776: $00
	add  b                                           ; $6777: $80
	rst  $38                                         ; $6778: $ff
	ld   b, $60                                      ; $6779: $06 $60
	rst  $38                                         ; $677b: $ff
	jr   nz, jr_08e_677e                             ; $677c: $20 $00

jr_08e_677e:
	ret  nz                                          ; $677e: $c0

	ld   b, b                                        ; $677f: $40
	ld   a, a                                        ; $6780: $7f
	add  c                                           ; $6781: $81
	inc  b                                           ; $6782: $04
	inc  bc                                          ; $6783: $03
	adc  e                                           ; $6784: $8b
	nop                                              ; $6785: $00
	sbc  a                                           ; $6786: $9f
	nop                                              ; $6787: $00
	add  b                                           ; $6788: $80
	ld   a, a                                        ; $6789: $7f
	ld   b, $18                                      ; $678a: $06 $18
	ld   a, a                                        ; $678c: $7f
	add  hl, bc                                      ; $678d: $09
	ld   bc, $292f                                   ; $678e: $01 $2f $29
	ld   a, c                                        ; $6791: $79
	add  b                                           ; $6792: $80
	ld   c, b                                        ; $6793: $48
	inc  b                                           ; $6794: $04
	ld   b, h                                        ; $6795: $44
	rlc  b                                           ; $6796: $cb $00
	adc  a                                           ; $6798: $8f
	nop                                              ; $6799: $00
	add  b                                           ; $679a: $80
	ret  nz                                          ; $679b: $c0

	ld   [bc], a                                     ; $679c: $02
	nop                                              ; $679d: $00
	add  b                                           ; $679e: $80
	add  h                                           ; $679f: $84
	add  c                                           ; $67a0: $81
	inc  bc                                          ; $67a1: $03
	ld   [$8000], sp                                 ; $67a2: $08 $00 $80
	add  a                                           ; $67a5: $87
	ld   h, a                                        ; $67a6: $67
	rst  $20                                         ; $67a7: $e7
	inc  d                                           ; $67a8: $14
	sub  h                                           ; $67a9: $94
	nop                                              ; $67aa: $00
	ld   b, b                                        ; $67ab: $40
	add  c                                           ; $67ac: $81
	ccf                                              ; $67ad: $3f
	add  b                                           ; $67ae: $80
	add  b                                           ; $67af: $80
	add  c                                           ; $67b0: $81
	cp   a                                           ; $67b1: $bf
	nop                                              ; $67b2: $00
	ld   bc, $b580                                   ; $67b3: $01 $80 $b5
	ld   bc, $3f81                                   ; $67b6: $01 $81 $3f
	add  b                                           ; $67b9: $80
	nop                                              ; $67ba: $00
	dec  b                                           ; $67bb: $05
	ld   b, c                                        ; $67bc: $41
	ld   hl, $0636                                   ; $67bd: $21 $36 $06
	add  hl, de                                      ; $67c0: $19
	add  hl, hl                                      ; $67c1: $29
	add  b                                           ; $67c2: $80
	jr   nz, jr_08e_67d2                             ; $67c3: $20 $0d

	dec  [hl]                                        ; $67c5: $35
	jr   nz, jr_08e_67fe                             ; $67c6: $20 $36

	jr   z, jr_08e_67f5                              ; $67c8: $28 $2b

	ccf                                              ; $67ca: $3f
	or   $0e                                         ; $67cb: $f6 $0e
	add  a                                           ; $67cd: $87
	add  b                                           ; $67ce: $80
	ld   b, b                                        ; $67cf: $40
	ld   c, [hl]                                     ; $67d0: $4e
	nop                                              ; $67d1: $00

jr_08e_67d2:
	ld   c, $80                                      ; $67d2: $0e $80
	and  d                                           ; $67d4: $a2
	ld   b, $fe                                      ; $67d5: $06 $fe
	ld   c, $5a                                      ; $67d7: $0e $5a
	ld   [bc], a                                     ; $67d9: $02
	xor  d                                           ; $67da: $aa
	rst  $38                                         ; $67db: $ff
	ld   [bc], a                                     ; $67dc: $02
	db   $ed                                         ; $67dd: $ed
	nop                                              ; $67de: $00
	adc  [hl]                                        ; $67df: $8e
	ld   bc, $2400                                   ; $67e0: $01 $00 $24
	add  c                                           ; $67e3: $81
	inc  l                                           ; $67e4: $2c
	inc  bc                                          ; $67e5: $03
	inc  c                                           ; $67e6: $0c
	ccf                                              ; $67e7: $3f
	inc  e                                           ; $67e8: $1c
	cpl                                              ; $67e9: $2f
	add  b                                           ; $67ea: $80
	inc  l                                           ; $67eb: $2c
	inc  bc                                          ; $67ec: $03
	inc  c                                           ; $67ed: $0c
	ccf                                              ; $67ee: $3f
	dec  sp                                          ; $67ef: $3b
	nop                                              ; $67f0: $00
	add  b                                           ; $67f1: $80
	inc  a                                           ; $67f2: $3c
	nop                                              ; $67f3: $00
	ld   e, l                                        ; $67f4: $5d

jr_08e_67f5:
	add  b                                           ; $67f5: $80
	inc  bc                                          ; $67f6: $03
	inc  bc                                          ; $67f7: $03
	dec  bc                                          ; $67f8: $0b
	adc  e                                           ; $67f9: $8b
	dec  bc                                          ; $67fa: $0b
	adc  e                                           ; $67fb: $8b
	add  c                                           ; $67fc: $81
	dec  bc                                          ; $67fd: $0b

jr_08e_67fe:
	inc  bc                                          ; $67fe: $03
	adc  e                                           ; $67ff: $8b
	dec  bc                                          ; $6800: $0b
	rrc  e                                           ; $6801: $cb $0b
	add  c                                           ; $6803: $81
	res  0, b                                        ; $6804: $cb $80
	inc  bc                                          ; $6806: $03
	adc  h                                           ; $6807: $8c
	adc  e                                           ; $6808: $8b
	add  b                                           ; $6809: $80
	inc  bc                                          ; $680a: $03
	adc  e                                           ; $680b: $8b
	adc  e                                           ; $680c: $8b
	inc  b                                           ; $680d: $04
	sub  a                                           ; $680e: $97
	dec  b                                           ; $680f: $05
	inc  b                                           ; $6810: $04
	sub  b                                           ; $6811: $90
	sub  a                                           ; $6812: $97
	add  b                                           ; $6813: $80
	sub  b                                           ; $6814: $90
	nop                                              ; $6815: $00
	sub  e                                           ; $6816: $93
	add  b                                           ; $6817: $80
	sub  b                                           ; $6818: $90
	ld   bc, $9093                                   ; $6819: $01 $93 $90
	add  c                                           ; $681c: $81
	sub  e                                           ; $681d: $93
	inc  c                                           ; $681e: $0c
	add  e                                           ; $681f: $83
	rlca                                             ; $6820: $07
	ccf                                              ; $6821: $3f
	ld   a, a                                        ; $6822: $7f
	nop                                              ; $6823: $00
	cp   $01                                         ; $6824: $fe $01
	ld   a, l                                        ; $6826: $7d
	ld   sp, hl                                      ; $6827: $f9
	ld   a, c                                        ; $6828: $79
	ld   b, c                                        ; $6829: $41
	cp   l                                           ; $682a: $bd
	ld   bc, $ff83                                   ; $682b: $01 $83 $ff
	add  c                                           ; $682e: $81
	nop                                              ; $682f: $00
	nop                                              ; $6830: $00
	ld   a, e                                        ; $6831: $7b
	add  c                                           ; $6832: $81
	ld   [hl], d                                     ; $6833: $72
	ld   [bc], a                                     ; $6834: $02
	ld   d, [hl]                                     ; $6835: $56
	ld   b, b                                        ; $6836: $40
	ld   l, [hl]                                     ; $6837: $6e
	add  e                                           ; $6838: $83
	ld   l, a                                        ; $6839: $6f
	nop                                              ; $683a: $00
	ld   e, $81                                      ; $683b: $1e $81
	nop                                              ; $683d: $00
	nop                                              ; $683e: $00
	ld   b, b                                        ; $683f: $40
	add  b                                           ; $6840: $80
	ld   c, h                                        ; $6841: $4c
	inc  bc                                          ; $6842: $03
	ld   b, b                                        ; $6843: $40
	add  b                                           ; $6844: $80
	ld   a, $81                                      ; $6845: $3e $81
	add  c                                           ; $6847: $81
	cp   a                                           ; $6848: $bf
	ld   [bc], a                                     ; $6849: $02
	add  a                                           ; $684a: $87
	add  b                                           ; $684b: $80
	add  a                                           ; $684c: $87
	adc  e                                           ; $684d: $8b
	nop                                              ; $684e: $00
	add  b                                           ; $684f: $80
	ccf                                              ; $6850: $3f
	adc  h                                           ; $6851: $8c
	nop                                              ; $6852: $00
	add  b                                           ; $6853: $80
	rst  $38                                         ; $6854: $ff
	adc  h                                           ; $6855: $8c
	nop                                              ; $6856: $00
	add  b                                           ; $6857: $80
	rst  $38                                         ; $6858: $ff
	adc  h                                           ; $6859: $8c
	nop                                              ; $685a: $00
	add  b                                           ; $685b: $80
	rst  $38                                         ; $685c: $ff
	adc  h                                           ; $685d: $8c
	nop                                              ; $685e: $00

jr_08e_685f:
	add  b                                           ; $685f: $80
	rst  $38                                         ; $6860: $ff
	adc  h                                           ; $6861: $8c
	nop                                              ; $6862: $00
	add  b                                           ; $6863: $80
	rst  $38                                         ; $6864: $ff
	adc  h                                           ; $6865: $8c
	nop                                              ; $6866: $00
	add  b                                           ; $6867: $80
	rst  $38                                         ; $6868: $ff
	adc  h                                           ; $6869: $8c
	ld   bc, $ff80                                   ; $686a: $01 $80 $ff
	ld   bc, $3c3d                                   ; $686d: $01 $3d $3c
	add  b                                           ; $6870: $80
	nop                                              ; $6871: $00
	add  d                                           ; $6872: $82
	inc  a                                           ; $6873: $3c
	ld   [bc], a                                     ; $6874: $02
	jr   nc, @+$3e                                   ; $6875: $30 $3c

	dec  a                                           ; $6877: $3d
	add  b                                           ; $6878: $80
	inc  a                                           ; $6879: $3c
	inc  b                                           ; $687a: $04
	ccf                                              ; $687b: $3f
	jr   nc, jr_08e_68bd                             ; $687c: $30 $3f

	rst  JumpTable                                         ; $687e: $df
	ret  nz                                          ; $687f: $c0

	add  b                                           ; $6880: $80

jr_08e_6881:
	add  b                                           ; $6881: $80
	add  b                                           ; $6882: $80
	add  a                                           ; $6883: $87
	inc  b                                           ; $6884: $04
	add  b                                           ; $6885: $80
	adc  a                                           ; $6886: $8f
	rst  JumpTable                                         ; $6887: $df
	nop                                              ; $6888: $00
	ret                                              ; $6889: $c9


	add  b                                           ; $688a: $80
	db   $10                                         ; $688b: $10
	inc  bc                                          ; $688c: $03
	ldh  a, [$09]                                    ; $688d: $f0 $09
	rst  $38                                         ; $688f: $ff
	rst  JumpTable                                         ; $6890: $df
	add  c                                           ; $6891: $81

jr_08e_6892:
	nop                                              ; $6892: $00
	add  b                                           ; $6893: $80
	rst  ToBoot                                         ; $6894: $c7
	dec  b                                           ; $6895: $05
	nop                                              ; $6896: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6897: $cf
	rst  JumpTable                                         ; $6898: $df
	ld   b, b                                        ; $6899: $40
	add  hl, bc                                      ; $689a: $09
	db   $10                                         ; $689b: $10
	add  b                                           ; $689c: $80
	ld   [hl], b                                     ; $689d: $70
	ld   [bc], a                                     ; $689e: $02
	ld   l, c                                        ; $689f: $69
	rst  $38                                         ; $68a0: $ff
	rst  JumpTable                                         ; $68a1: $df
	add  c                                           ; $68a2: $81
	nop                                              ; $68a3: $00
	add  b                                           ; $68a4: $80
	rst  ToBoot                                         ; $68a5: $c7
	dec  b                                           ; $68a6: $05
	nop                                              ; $68a7: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68a8: $cf
	rst  JumpTable                                         ; $68a9: $df
	ld   b, b                                        ; $68aa: $40
	add  hl, bc                                      ; $68ab: $09
	db   $10                                         ; $68ac: $10
	add  b                                           ; $68ad: $80
	ld   [hl], b                                     ; $68ae: $70
	dec  b                                           ; $68af: $05
	ld   l, c                                        ; $68b0: $69
	rst  $38                                         ; $68b1: $ff
	call nz, $0003                                   ; $68b2: $c4 $03 $00
	rlca                                             ; $68b5: $07
	add  b                                           ; $68b6: $80
	ret  nz                                          ; $68b7: $c0

	nop                                              ; $68b8: $00
	rra                                              ; $68b9: $1f
	add  b                                           ; $68ba: $80
	rst  JumpTable                                         ; $68bb: $df
	ld   [bc], a                                     ; $68bc: $02

jr_08e_68bd:
	ld   e, a                                        ; $68bd: $5f
	nop                                              ; $68be: $00
	rra                                              ; $68bf: $1f
	add  b                                           ; $68c0: $80
	ld   a, a                                        ; $68c1: $7f
	dec  b                                           ; $68c2: $05
	ld   h, b                                        ; $68c3: $60
	rst  $38                                         ; $68c4: $ff
	nop                                              ; $68c5: $00
	rst  $38                                         ; $68c6: $ff
	nop                                              ; $68c7: $00
	rst  $38                                         ; $68c8: $ff
	add  b                                           ; $68c9: $80
	nop                                              ; $68ca: $00
	add  d                                           ; $68cb: $82
	rst  $38                                         ; $68cc: $ff
	nop                                              ; $68cd: $00
	ld   bc, $ff81                                   ; $68ce: $01 $81 $ff
	inc  b                                           ; $68d1: $04
	ld   bc, $31ff                                   ; $68d2: $01 $ff $31
	cpl                                              ; $68d5: $2f
	inc  l                                           ; $68d6: $2c
	add  c                                           ; $68d7: $81
	cpl                                              ; $68d8: $2f
	inc  bc                                          ; $68d9: $03
	add  hl, hl                                      ; $68da: $29
	cpl                                              ; $68db: $2f
	dec  sp                                          ; $68dc: $3b
	jr   nz, jr_08e_685f                             ; $68dd: $20 $80

	ccf                                              ; $68df: $3f
	add  d                                           ; $68e0: $82
	scf                                              ; $68e1: $37
	ld   bc, $981f                                   ; $68e2: $01 $1f $98
	add  b                                           ; $68e5: $80
	sbc  a                                           ; $68e6: $9f
	add  d                                           ; $68e7: $82
	sbc  b                                           ; $68e8: $98
	ld   bc, $1f9b                                   ; $68e9: $01 $9b $1f
	add  b                                           ; $68ec: $80
	db   $fc                                         ; $68ed: $fc
	inc  b                                           ; $68ee: $04
	sbc  h                                           ; $68ef: $9c
	sbc  $d1                                         ; $68f0: $de $d1
	ret  nc                                          ; $68f2: $d0

	ld   h, b                                        ; $68f3: $60
	add  c                                           ; $68f4: $81
	jr   nz, @+$07                                   ; $68f5: $20 $05

	daa                                              ; $68f7: $27
	ld   [hl+], a                                    ; $68f8: $22

jr_08e_68f9:
	dec  h                                           ; $68f9: $25
	daa                                              ; $68fa: $27
	jr   nz, jr_08e_6924                             ; $68fb: $20 $27

	add  c                                           ; $68fd: $81
	jr   nz, jr_08e_6881                             ; $68fe: $20 $81

	daa                                              ; $6900: $27
	nop                                              ; $6901: $00
	rlca                                             ; $6902: $07
	add  c                                           ; $6903: $81
	nop                                              ; $6904: $00
	dec  b                                           ; $6905: $05
	rst  $38                                         ; $6906: $ff
	ld   [$fff7], sp                                 ; $6907: $08 $f7 $ff
	nop                                              ; $690a: $00
	rst  $38                                         ; $690b: $ff
	add  b                                           ; $690c: $80
	nop                                              ; $690d: $00
	nop                                              ; $690e: $00
	jr   nz, jr_08e_6892                             ; $690f: $20 $81

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6911: $cf
	nop                                              ; $6912: $00
	rst  $28                                         ; $6913: $ef
	add  c                                           ; $6914: $81
	nop                                              ; $6915: $00
	dec  b                                           ; $6916: $05
	rst  $38                                         ; $6917: $ff
	jr   nz, jr_08e_68f9                             ; $6918: $20 $df

	rst  $38                                         ; $691a: $ff
	nop                                              ; $691b: $00
	rst  $38                                         ; $691c: $ff
	add  b                                           ; $691d: $80
	nop                                              ; $691e: $00
	nop                                              ; $691f: $00
	ld   b, b                                        ; $6920: $40
	add  c                                           ; $6921: $81
	sbc  a                                           ; $6922: $9f
	nop                                              ; $6923: $00

jr_08e_6924:
	rst  JumpTable                                         ; $6924: $df
	add  c                                           ; $6925: $81
	nop                                              ; $6926: $00
	inc  c                                           ; $6927: $0c
	jp   z, Jump_08e_4080                            ; $6928: $ca $80 $40

	ret  nz                                          ; $692b: $c0

	ld   bc, $07c0                                   ; $692c: $01 $c0 $07
	nop                                              ; $692f: $00
	bit  1, b                                        ; $6930: $cb $48
	ld   b, b                                        ; $6932: $40
	ld   c, a                                        ; $6933: $4f
	add  b                                           ; $6934: $80
	add  d                                           ; $6935: $82
	nop                                              ; $6936: $00
	add  c                                           ; $6937: $81
	rst  $38                                         ; $6938: $ff
	add  b                                           ; $6939: $80
	nop                                              ; $693a: $00
	ld   [bc], a                                     ; $693b: $02
	cp   $00                                         ; $693c: $fe $00
	cp   $80                                         ; $693e: $fe $80
	nop                                              ; $6940: $00
	ld   bc, $01fe                                   ; $6941: $01 $fe $01
	add  d                                           ; $6944: $82
	nop                                              ; $6945: $00
	add  c                                           ; $6946: $81
	rst  $38                                         ; $6947: $ff
	inc  b                                           ; $6948: $04
	add  b                                           ; $6949: $80
	nop                                              ; $694a: $00
	ld   a, a                                        ; $694b: $7f
	nop                                              ; $694c: $00
	ld   a, a                                        ; $694d: $7f
	add  b                                           ; $694e: $80
	nop                                              ; $694f: $00
	nop                                              ; $6950: $00
	ld   a, a                                        ; $6951: $7f
	add  e                                           ; $6952: $83
	nop                                              ; $6953: $00
	add  c                                           ; $6954: $81
	rst  $38                                         ; $6955: $ff
	inc  b                                           ; $6956: $04
	ld   bc, $fc00                                   ; $6957: $01 $00 $fc
	nop                                              ; $695a: $00
	db   $fc                                         ; $695b: $fc
	add  b                                           ; $695c: $80
	nop                                              ; $695d: $00
	ld   bc, $02fc                                   ; $695e: $01 $fc $02
	add  d                                           ; $6961: $82
	nop                                              ; $6962: $00
	add  c                                           ; $6963: $81
	rst  $38                                         ; $6964: $ff
	add  b                                           ; $6965: $80
	nop                                              ; $6966: $00
	ld   [bc], a                                     ; $6967: $02
	rst  $38                                         ; $6968: $ff
	nop                                              ; $6969: $00
	rst  $38                                         ; $696a: $ff
	add  b                                           ; $696b: $80
	nop                                              ; $696c: $00
	nop                                              ; $696d: $00
	rst  $38                                         ; $696e: $ff
	add  e                                           ; $696f: $83
	nop                                              ; $6970: $00
	add  c                                           ; $6971: $81
	rst  $38                                         ; $6972: $ff
	ld   [$0002], sp                                 ; $6973: $08 $02 $00
	jp   hl                                          ; $6976: $e9


	nop                                              ; $6977: $00
	ret  nz                                          ; $6978: $c0

	nop                                              ; $6979: $00
	ld   bc, $14c1                                   ; $697a: $01 $c1 $14
	add  d                                           ; $697d: $82
	nop                                              ; $697e: $00
	add  c                                           ; $697f: $81
	rst  $38                                         ; $6980: $ff
	dec  b                                           ; $6981: $05
	rrca                                             ; $6982: $0f
	rlca                                             ; $6983: $07
	rst  $28                                         ; $6984: $ef
	inc  bc                                          ; $6985: $03
	db   $10                                         ; $6986: $10
	inc  bc                                          ; $6987: $03
	add  b                                           ; $6988: $80
	db   $e3                                         ; $6989: $e3
	nop                                              ; $698a: $00
	ld   [$0082], sp                                 ; $698b: $08 $82 $00
	add  e                                           ; $698e: $83
	rst  $38                                         ; $698f: $ff
	add  b                                           ; $6990: $80
	ret  nz                                          ; $6991: $c0

	nop                                              ; $6992: $00
	dec  d                                           ; $6993: $15
	add  c                                           ; $6994: $81
	ret  nz                                          ; $6995: $c0

	nop                                              ; $6996: $00
	ld   a, [hl+]                                    ; $6997: $2a
	add  d                                           ; $6998: $82
	nop                                              ; $6999: $00
	add  e                                           ; $699a: $83
	db   $fc                                         ; $699b: $fc
	ld   [bc], a                                     ; $699c: $02
	ld   a, h                                        ; $699d: $7c
	inc  a                                           ; $699e: $3c
	nop                                              ; $699f: $00
	add  c                                           ; $69a0: $81
	inc  a                                           ; $69a1: $3c
	ld   [bc], a                                     ; $69a2: $02
	add  b                                           ; $69a3: $80
	nop                                              ; $69a4: $00
	ret  c                                           ; $69a5: $d8

	add  e                                           ; $69a6: $83
	sbc  d                                           ; $69a7: $9a
	ld   bc, $9ada                                   ; $69a8: $01 $da $9a
	add  d                                           ; $69ab: $82
	ld   a, [$0200]                                  ; $69ac: $fa $00 $02
	add  b                                           ; $69af: $80
	cp   $82                                         ; $69b0: $fe $82
	nop                                              ; $69b2: $00
	add  l                                           ; $69b3: $85
	rst  $38                                         ; $69b4: $ff
	nop                                              ; $69b5: $00
	nop                                              ; $69b6: $00
	add  c                                           ; $69b7: $81
	rst  $38                                         ; $69b8: $ff
	add  e                                           ; $69b9: $83
	scf                                              ; $69ba: $37
	nop                                              ; $69bb: $00
	or   a                                           ; $69bc: $b7
	add  b                                           ; $69bd: $80
	add  b                                           ; $69be: $80
	dec  c                                           ; $69bf: $0d
	adc  c                                           ; $69c0: $89
	cp   a                                           ; $69c1: $bf
	or   [hl]                                        ; $69c2: $b6
	add  b                                           ; $69c3: $80
	add  hl, bc                                      ; $69c4: $09
	cp   a                                           ; $69c5: $bf
	or   [hl]                                        ; $69c6: $b6
	add  b                                           ; $69c7: $80
	sbc  b                                           ; $69c8: $98
	jp   c, $ded2                                    ; $69c9: $da $d2 $de

	rst  JumpTable                                         ; $69cc: $df
	reti                                             ; $69cd: $d9


	add  c                                           ; $69ce: $81
	ld   e, e                                        ; $69cf: $5b
	ld   b, $fb                                      ; $69d0: $06 $fb
	jp   hl                                          ; $69d2: $e9


	ld   a, [de]                                     ; $69d3: $1a
	inc  e                                           ; $69d4: $1c
	ldh  a, [$f7]                                    ; $69d5: $f0 $f7
	rlca                                             ; $69d7: $07
	add  b                                           ; $69d8: $80
	jr   nz, jr_08e_69e1                             ; $69d9: $20 $06

	ld   hl, $2027                                   ; $69db: $21 $27 $20
	daa                                              ; $69de: $27
	jr   nz, jr_08e_6a08                             ; $69df: $20 $27

jr_08e_69e1:
	ld   h, $80                                      ; $69e1: $26 $80
	daa                                              ; $69e3: $27
	dec  c                                           ; $69e4: $0d
	jr   nz, jr_08e_6a08                             ; $69e5: $20 $21

	daa                                              ; $69e7: $27
	jr   nz, jr_08e_6a11                             ; $69e8: $20 $27

	jp   hl                                          ; $69ea: $e9


	nop                                              ; $69eb: $00
	ld   [bc], a                                     ; $69ec: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69ed: $cf
	nop                                              ; $69ee: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69ef: $cf
	nop                                              ; $69f0: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69f1: $cf
	call $ef80                                       ; $69f2: $cd $80 $ef
	dec  c                                           ; $69f5: $0d
	nop                                              ; $69f6: $00
	ld   [bc], a                                     ; $69f7: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69f8: $cf
	nop                                              ; $69f9: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69fa: $cf
	ld   [hl-], a                                    ; $69fb: $32
	nop                                              ; $69fc: $00
	inc  b                                           ; $69fd: $04
	sbc  a                                           ; $69fe: $9f
	nop                                              ; $69ff: $00
	sbc  a                                           ; $6a00: $9f
	nop                                              ; $6a01: $00
	sbc  a                                           ; $6a02: $9f
	sbc  e                                           ; $6a03: $9b
	add  b                                           ; $6a04: $80
	rst  JumpTable                                         ; $6a05: $df
	rlca                                             ; $6a06: $07
	nop                                              ; $6a07: $00

jr_08e_6a08:
	inc  b                                           ; $6a08: $04
	sbc  a                                           ; $6a09: $9f
	nop                                              ; $6a0a: $00
	sbc  a                                           ; $6a0b: $9f
	dec  de                                          ; $6a0c: $1b
	ld   b, b                                        ; $6a0d: $40
	ld   c, b                                        ; $6a0e: $48
	add  c                                           ; $6a0f: $81
	ld   c, a                                        ; $6a10: $4f

jr_08e_6a11:
	add  c                                           ; $6a11: $81
	ld   c, [hl]                                     ; $6a12: $4e
	add  b                                           ; $6a13: $80
	adc  $81                                         ; $6a14: $ce $81
	ld   c, [hl]                                     ; $6a16: $4e
	inc  b                                           ; $6a17: $04
	ld   c, c                                        ; $6a18: $49
	ld   c, a                                        ; $6a19: $4f
	add  c                                           ; $6a1a: $81
	nop                                              ; $6a1b: $00
	ld   b, d                                        ; $6a1c: $42
	add  c                                           ; $6a1d: $81
	rst  $38                                         ; $6a1e: $ff
	nop                                              ; $6a1f: $00
	nop                                              ; $6a20: $00
	add  l                                           ; $6a21: $85
	ld   b, d                                        ; $6a22: $42
	inc  b                                           ; $6a23: $04
	cp   l                                           ; $6a24: $bd
	rst  $38                                         ; $6a25: $ff
	cp   l                                           ; $6a26: $bd
	nop                                              ; $6a27: $00
	db   $10                                         ; $6a28: $10
	add  c                                           ; $6a29: $81
	rst  $38                                         ; $6a2a: $ff
	nop                                              ; $6a2b: $00
	nop                                              ; $6a2c: $00
	add  l                                           ; $6a2d: $85
	db   $10                                         ; $6a2e: $10
	inc  b                                           ; $6a2f: $04
	rst  $28                                         ; $6a30: $ef

jr_08e_6a31:
	rst  $38                                         ; $6a31: $ff
	rst  $28                                         ; $6a32: $ef
	nop                                              ; $6a33: $00
	add  h                                           ; $6a34: $84

jr_08e_6a35:
	add  c                                           ; $6a35: $81
	rst  $38                                         ; $6a36: $ff
	nop                                              ; $6a37: $00
	nop                                              ; $6a38: $00
	add  l                                           ; $6a39: $85
	add  h                                           ; $6a3a: $84
	inc  b                                           ; $6a3b: $04
	ld   a, e                                        ; $6a3c: $7b
	rst  $38                                         ; $6a3d: $ff
	ld   a, e                                        ; $6a3e: $7b
	nop                                              ; $6a3f: $00
	ld   hl, $ff81                                   ; $6a40: $21 $81 $ff
	nop                                              ; $6a43: $00
	nop                                              ; $6a44: $00
	add  l                                           ; $6a45: $85
	ld   hl, $de04                                   ; $6a46: $21 $04 $de
	rst  $38                                         ; $6a49: $ff
	jp   nz, $1400                                   ; $6a4a: $c2 $00 $14

	add  b                                           ; $6a4d: $80
	jp   hl                                          ; $6a4e: $e9


	ld   bc, $00ff                                   ; $6a4f: $01 $ff $00
	add  l                                           ; $6a52: $85
	ld   [$f700], sp                                 ; $6a53: $08 $00 $f7
	add  b                                           ; $6a56: $80
	rst  $38                                         ; $6a57: $ff
	ld   bc, $4200                                   ; $6a58: $01 $00 $42
	add  c                                           ; $6a5b: $81
	db   $e3                                         ; $6a5c: $e3
	nop                                              ; $6a5d: $00
	inc  d                                           ; $6a5e: $14
	add  l                                           ; $6a5f: $85
	ld   b, d                                        ; $6a60: $42
	ld   [$ffbd], sp                                 ; $6a61: $08 $bd $ff
	sub  a                                           ; $6a64: $97
	nop                                              ; $6a65: $00
	dec  d                                           ; $6a66: $15
	ret  nz                                          ; $6a67: $c0

	rst  $28                                         ; $6a68: $ef
	rst  $38                                         ; $6a69: $ff
	nop                                              ; $6a6a: $00
	add  l                                           ; $6a6b: $85
	db   $10                                         ; $6a6c: $10
	inc  b                                           ; $6a6d: $04
	rst  $28                                         ; $6a6e: $ef
	rst  $38                                         ; $6a6f: $ff
	ld   l, a                                        ; $6a70: $6f
	nop                                              ; $6a71: $00
	inc  b                                           ; $6a72: $04
	add  b                                           ; $6a73: $80
	ccf                                              ; $6a74: $3f
	ld   bc, $40bf                                   ; $6a75: $01 $bf $40
	add  l                                           ; $6a78: $85
	add  h                                           ; $6a79: $84
	inc  b                                           ; $6a7a: $04
	ld   a, e                                        ; $6a7b: $7b
	rst  $38                                         ; $6a7c: $ff
	ld   a, e                                        ; $6a7d: $7b
	nop                                              ; $6a7e: $00
	ld   hl, $ff81                                   ; $6a7f: $21 $81 $ff
	nop                                              ; $6a82: $00
	nop                                              ; $6a83: $00
	add  l                                           ; $6a84: $85
	ld   hl, $de04                                   ; $6a85: $21 $04 $de
	rst  $38                                         ; $6a88: $ff
	sbc  $00                                         ; $6a89: $de $00
	add  hl, bc                                      ; $6a8b: $09
	add  c                                           ; $6a8c: $81
	rst  $38                                         ; $6a8d: $ff
	nop                                              ; $6a8e: $00
	ld   bc, $0885                                   ; $6a8f: $01 $85 $08
	ld   b, $f7                                      ; $6a92: $06 $f7
	rst  $38                                         ; $6a94: $ff
	rst  $30                                         ; $6a95: $f7
	nop                                              ; $6a96: $00
	ld   bc, $e9ef                                   ; $6a97: $01 $ef $e9
	add  c                                           ; $6a9a: $81
	rst  $28                                         ; $6a9b: $ef
	add  b                                           ; $6a9c: $80
	rrca                                             ; $6a9d: $0f
	add  h                                           ; $6a9e: $84
	rst  $28                                         ; $6a9f: $ef
	inc  b                                           ; $6aa0: $04
	add  sp, $00                                     ; $6aa1: $e8 $00
	rst  $20                                         ; $6aa3: $e7
	ret  z                                           ; $6aa4: $c8

jr_08e_6aa5:
	add  $89                                         ; $6aa5: $c6 $89
	adc  $06                                         ; $6aa7: $ce $06
	ld   bc, $2227                                   ; $6aa9: $01 $27 $22
	jr   nz, jr_08e_6ad5                             ; $6aac: $20 $27

	inc  hl                                          ; $6aae: $23
	jr   nz, jr_08e_6a31                             ; $6aaf: $20 $80

	inc  hl                                          ; $6ab1: $23
	add  b                                           ; $6ab2: $80
	jr   nz, jr_08e_6a35                             ; $6ab3: $20 $80

	inc  h                                           ; $6ab5: $24
	add  b                                           ; $6ab6: $80
	inc  hl                                          ; $6ab7: $23
	rlca                                             ; $6ab8: $07
	jr   nz, jr_08e_6aa5                             ; $6ab9: $20 $ea

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6abb: $cf
	xor  h                                           ; $6abc: $ac
	nop                                              ; $6abd: $00
	ld   e, l                                        ; $6abe: $5d
	adc  [hl]                                        ; $6abf: $8e
	add  d                                           ; $6ac0: $82
	add  b                                           ; $6ac1: $80
	adc  [hl]                                        ; $6ac2: $8e
	add  b                                           ; $6ac3: $80
	nop                                              ; $6ac4: $00
	ld   bc, $0151                                   ; $6ac5: $01 $51 $01
	add  b                                           ; $6ac8: $80
	sbc  $04                                         ; $6ac9: $de $04
	ld   d, b                                        ; $6acb: $50
	inc  b                                           ; $6acc: $04

jr_08e_6acd:
	sbc  a                                           ; $6acd: $9f
	ld   b, h                                        ; $6ace: $44
	nop                                              ; $6acf: $00
	add  d                                           ; $6ad0: $82
	ld   a, a                                        ; $6ad1: $7f
	nop                                              ; $6ad2: $00
	nop                                              ; $6ad3: $00
	add  l                                           ; $6ad4: $85

jr_08e_6ad5:
	ld   a, a                                        ; $6ad5: $7f
	inc  bc                                          ; $6ad6: $03
	or   [hl]                                        ; $6ad7: $b6
	ld   c, [hl]                                     ; $6ad8: $4e
	adc  [hl]                                        ; $6ad9: $8e
	ld   c, $82                                      ; $6ada: $0e $82

jr_08e_6adc:
	adc  $00                                         ; $6adc: $ce $00
	ld   c, [hl]                                     ; $6ade: $4e
	add  c                                           ; $6adf: $81
	adc  $04                                         ; $6ae0: $ce $04

jr_08e_6ae2:
	ret                                              ; $6ae2: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ae3: $cf
	ret  z                                           ; $6ae4: $c8

	adc  $3a                                         ; $6ae5: $ce $3a
	adc  c                                           ; $6ae7: $89
	ld   b, d                                        ; $6ae8: $42
	inc  bc                                          ; $6ae9: $03
	cp   l                                           ; $6aea: $bd
	rst  $38                                         ; $6aeb: $ff
	nop                                              ; $6aec: $00
	ld   b, d                                        ; $6aed: $42
	adc  b                                           ; $6aee: $88
	db   $10                                         ; $6aef: $10
	ld   b, $3e                                      ; $6af0: $06 $3e
	nop                                              ; $6af2: $00
	ret  nz                                          ; $6af3: $c0

	pop  bc                                          ; $6af4: $c1
	inc  c                                           ; $6af5: $0c
	ld   bc, $89b6                                   ; $6af6: $01 $b6 $89
	add  h                                           ; $6af9: $84
	inc  b                                           ; $6afa: $04
	ld   a, e                                        ; $6afb: $7b
	rst  $38                                         ; $6afc: $ff
	add  b                                           ; $6afd: $80
	add  h                                           ; $6afe: $84
	and  c                                           ; $6aff: $a1
	add  a                                           ; $6b00: $87
	ld   hl, $ff00                                   ; $6b01: $21 $00 $ff
	add  c                                           ; $6b04: $81
	nop                                              ; $6b05: $00
	ld   bc, $00ff                                   ; $6b06: $01 $ff $00
	adc  b                                           ; $6b09: $88
	ld   [$ff00], sp                                 ; $6b0a: $08 $00 $ff
	add  c                                           ; $6b0d: $81
	nop                                              ; $6b0e: $00
	ld   [bc], a                                     ; $6b0f: $02
	db   $fc                                         ; $6b10: $fc
	inc  b                                           ; $6b11: $04
	ld   b, l                                        ; $6b12: $45
	add  a                                           ; $6b13: $87
	ld   b, d                                        ; $6b14: $42
	ld   b, $c2                                      ; $6b15: $06 $c2
	ld   b, d                                        ; $6b17: $42
	dec  a                                           ; $6b18: $3d
	ld   a, a                                        ; $6b19: $7f
	nop                                              ; $6b1a: $00
	ld   b, d                                        ; $6b1b: $42
	sub  b                                           ; $6b1c: $90
	add  a                                           ; $6b1d: $87
	stop                                             ; $6b1e: $10 $00
	rst  $38                                         ; $6b20: $ff
	add  c                                           ; $6b21: $81
	nop                                              ; $6b22: $00
	add  b                                           ; $6b23: $80
	rst  $38                                         ; $6b24: $ff
	nop                                              ; $6b25: $00
	ld   a, e                                        ; $6b26: $7b
	add  a                                           ; $6b27: $87
	add  h                                           ; $6b28: $84
	nop                                              ; $6b29: $00
	rst  $38                                         ; $6b2a: $ff
	add  c                                           ; $6b2b: $81
	nop                                              ; $6b2c: $00
	add  b                                           ; $6b2d: $80
	cp   $00                                         ; $6b2e: $fe $00
	sbc  $87                                         ; $6b30: $de $87
	ld   hl, $ff00                                   ; $6b32: $21 $00 $ff
	add  c                                           ; $6b35: $81
	nop                                              ; $6b36: $00
	ld   [bc], a                                     ; $6b37: $02
	ld   a, a                                        ; $6b38: $7f
	nop                                              ; $6b39: $00
	adc  b                                           ; $6b3a: $88
	add  a                                           ; $6b3b: $87
	ld   [$ff00], sp                                 ; $6b3c: $08 $00 $ff
	add  c                                           ; $6b3f: $81
	nop                                              ; $6b40: $00
	inc  bc                                          ; $6b41: $03
	rst  $38                                         ; $6b42: $ff
	nop                                              ; $6b43: $00
	ld   hl, sp-$11                                  ; $6b44: $f8 $ef
	add  b                                           ; $6b46: $80
	rrca                                             ; $6b47: $0f
	add  l                                           ; $6b48: $85
	add  sp, $00                                     ; $6b49: $e8 $00
	jr   z, jr_08e_6acd                              ; $6b4b: $28 $80

	ld   [$2880], sp                                 ; $6b4d: $08 $80 $28
	ld   bc, $e8e7                                   ; $6b50: $01 $e7 $e8
	add  b                                           ; $6b53: $80
	ld   [$2a80], a                                  ; $6b54: $ea $80 $2a
	add  b                                           ; $6b57: $80
	jr   z, jr_08e_6adc                              ; $6b58: $28 $82

	ld   a, [hl+]                                    ; $6b5a: $2a
	nop                                              ; $6b5b: $00
	ld   a, [bc]                                     ; $6b5c: $0a
	add  c                                           ; $6b5d: $81
	ld   a, [hl+]                                    ; $6b5e: $2a
	nop                                              ; $6b5f: $00
	jr   nz, jr_08e_6ae2                             ; $6b60: $20 $80

	inc  h                                           ; $6b62: $24
	inc  b                                           ; $6b63: $04
	inc  hl                                          ; $6b64: $23
	daa                                              ; $6b65: $27
	jr   nz, @+$29                                   ; $6b66: $20 $27

	inc  h                                           ; $6b68: $24
	add  d                                           ; $6b69: $82
	daa                                              ; $6b6a: $27
	dec  bc                                          ; $6b6b: $0b
	ld   h, $27                                      ; $6b6c: $26 $27
	ld   hl, $df20                                   ; $6b6e: $21 $20 $df
	ld   d, c                                        ; $6b71: $51
	ld   bc, $ffde                                   ; $6b72: $01 $de $ff
	jr   nz, @-$1f                                   ; $6b75: $20 $df

	ld   [hl], c                                     ; $6b77: $71
	add  b                                           ; $6b78: $80
	rst  $38                                         ; $6b79: $ff
	ld   [bc], a                                     ; $6b7a: $02
	xor  a                                           ; $6b7b: $af
	rst  $38                                         ; $6b7c: $ff
	ld   [hl], b                                     ; $6b7d: $70
	add  b                                           ; $6b7e: $80
	rst  $38                                         ; $6b7f: $ff
	add  b                                           ; $6b80: $80
	nop                                              ; $6b81: $00
	add  c                                           ; $6b82: $81
	ld   a, a                                        ; $6b83: $7f
	add  h                                           ; $6b84: $84
	rst  $38                                         ; $6b85: $ff
	nop                                              ; $6b86: $00
	ld   a, a                                        ; $6b87: $7f
	add  d                                           ; $6b88: $82
	rst  $38                                         ; $6b89: $ff
	ld   bc, $4900                                   ; $6b8a: $01 $00 $49
	add  a                                           ; $6b8d: $87
	adc  $06                                         ; $6b8e: $ce $06
	ret                                              ; $6b90: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b91: $cf
	ret  z                                           ; $6b92: $c8

	adc  $4e                                         ; $6b93: $ce $4e
	adc  $ba                                         ; $6b95: $ce $ba
	add  a                                           ; $6b97: $87
	ld   b, d                                        ; $6b98: $42
	ld   [bc], a                                     ; $6b99: $02
	cp   l                                           ; $6b9a: $bd
	rst  $38                                         ; $6b9b: $ff
	nop                                              ; $6b9c: $00
	add  c                                           ; $6b9d: $81
	ld   b, d                                        ; $6b9e: $42
	nop                                              ; $6b9f: $00
	ld   a, $84                                      ; $6ba0: $3e $84
	dec  c                                           ; $6ba2: $0d
	nop                                              ; $6ba3: $00
	ld   bc, $0f80                                   ; $6ba4: $01 $80 $0f
	add  b                                           ; $6ba7: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ba8: $cf

jr_08e_6ba9:
	nop                                              ; $6ba9: $00
	inc  c                                           ; $6baa: $0c
	add  c                                           ; $6bab: $81
	rrca                                             ; $6bac: $0f
	nop                                              ; $6bad: $00
	jr   c, @-$7b                                    ; $6bae: $38 $83

	add  h                                           ; $6bb0: $84
	add  d                                           ; $6bb1: $82
	cp   $03                                         ; $6bb2: $fe $03
	rst  $38                                         ; $6bb4: $ff
	cp   $7e                                         ; $6bb5: $fe $7e
	cp   $80                                         ; $6bb7: $fe $80
	rst  $38                                         ; $6bb9: $ff
	ld   a, [bc]                                     ; $6bba: $0a
	cp   $ff                                         ; $6bbb: $fe $ff
	cp   b                                           ; $6bbd: $b8
	sbc  b                                           ; $6bbe: $98
	jr   jr_08e_6be0                                 ; $6bbf: $18 $1f

	rst  ToBoot                                         ; $6bc1: $c7
	ret  nz                                          ; $6bc2: $c0

	rra                                              ; $6bc3: $1f
	ret  nz                                          ; $6bc4: $c0

	ld   a, [de]                                     ; $6bc5: $1a
	add  b                                           ; $6bc6: $80
	adc  d                                           ; $6bc7: $8a

jr_08e_6bc8:
	ld   b, $4a                                      ; $6bc8: $06 $4a
	ld   d, b                                        ; $6bca: $50
	db   $10                                         ; $6bcb: $10
	inc  d                                           ; $6bcc: $14
	db   $fc                                         ; $6bcd: $fc
	db   $ec                                         ; $6bce: $ec
	call z, $c480                                    ; $6bcf: $cc $80 $c4
	inc  b                                           ; $6bd2: $04
	inc  e                                           ; $6bd3: $1c
	jr   @-$2e                                       ; $6bd4: $18 $d0

	ld   [$80c4], sp                                 ; $6bd6: $08 $c4 $80
	adc  b                                           ; $6bd9: $88
	inc  bc                                          ; $6bda: $03
	sub  b                                           ; $6bdb: $90
	ld   d, h                                        ; $6bdc: $54
	ld   b, h                                        ; $6bdd: $44
	ld   a, l                                        ; $6bde: $7d
	add  e                                           ; $6bdf: $83

jr_08e_6be0:
	ld   b, d                                        ; $6be0: $42
	nop                                              ; $6be1: $00
	jr   nc, @-$7b                                   ; $6be2: $30 $83

	ld   a, a                                        ; $6be4: $7f
	nop                                              ; $6be5: $00
	nop                                              ; $6be6: $00
	add  c                                           ; $6be7: $81
	ccf                                              ; $6be8: $3f
	nop                                              ; $6be9: $00
	add  a                                           ; $6bea: $87
	add  e                                           ; $6beb: $83
	di                                               ; $6bec: $f3
	add  b                                           ; $6bed: $80
	add  b                                           ; $6bee: $80
	add  b                                           ; $6bef: $80
	cp   c                                           ; $6bf0: $b9
	add  c                                           ; $6bf1: $81
	and  c                                           ; $6bf2: $a1
	inc  bc                                          ; $6bf3: $03
	cp   c                                           ; $6bf4: $b9
	and  c                                           ; $6bf5: $a1
	cp   c                                           ; $6bf6: $b9
	add  hl, sp                                      ; $6bf7: $39
	add  e                                           ; $6bf8: $83
	sbc  h                                           ; $6bf9: $9c
	add  b                                           ; $6bfa: $80
	nop                                              ; $6bfb: $00
	add  b                                           ; $6bfc: $80
	adc  $81                                         ; $6bfd: $ce $81
	ld   [$ce03], sp                                 ; $6bff: $08 $03 $ce
	ld   [$a1ce], sp                                 ; $6c02: $08 $ce $a1
	add  e                                           ; $6c05: $83
	ld   a, a                                        ; $6c06: $7f
	add  b                                           ; $6c07: $80
	nop                                              ; $6c08: $00
	ld   [$2f04], sp                                 ; $6c09: $08 $04 $2f
	inc  b                                           ; $6c0c: $04
	ld   h, h                                        ; $6c0d: $64
	ld   b, h                                        ; $6c0e: $44
	rrca                                             ; $6c0f: $0f
	cpl                                              ; $6c10: $2f
	ld   [hl], h                                     ; $6c11: $74
	and  h                                           ; $6c12: $a4
	add  e                                           ; $6c13: $83
	rst  $38                                         ; $6c14: $ff
	add  b                                           ; $6c15: $80
	nop                                              ; $6c16: $00
	dec  bc                                          ; $6c17: $0b
	sub  d                                           ; $6c18: $92
	rst  $38                                         ; $6c19: $ff
	sub  l                                           ; $6c1a: $95
	sub  b                                           ; $6c1b: $90
	xor  a                                           ; $6c1c: $af
	ret  nz                                          ; $6c1d: $c0

	cp   e                                           ; $6c1e: $bb
	add  b                                           ; $6c1f: $80
	dec  de                                          ; $6c20: $1b
	cpl                                              ; $6c21: $2f
	add  hl, bc                                      ; $6c22: $09
	ld   bc, $0081                                   ; $6c23: $01 $81 $00
	add  b                                           ; $6c26: $80
	jr   c, jr_08e_6ba9                              ; $6c27: $38 $80

	inc  b                                           ; $6c29: $04
	add  b                                           ; $6c2a: $80
	ld   [bc], a                                     ; $6c2b: $02
	add  b                                           ; $6c2c: $80
	ld   bc, $0001                                   ; $6c2d: $01 $01 $00
	db   $ed                                         ; $6c30: $ed
	add  e                                           ; $6c31: $83
	ld   [$780d], a                                  ; $6c32: $ea $0d $78
	nop                                              ; $6c35: $00
	ld   a, a                                        ; $6c36: $7f
	nop                                              ; $6c37: $00
	db   $10                                         ; $6c38: $10
	rra                                              ; $6c39: $1f
	ld   [$0700], sp                                 ; $6c3a: $08 $00 $07
	adc  a                                           ; $6c3d: $8f
	xor  a                                           ; $6c3e: $af
	jr   nz, jr_08e_6c68                             ; $6c3f: $20 $27

	jr   nz, @-$78                                   ; $6c41: $20 $86

	daa                                              ; $6c43: $27
	nop                                              ; $6c44: $00
	jr   nz, jr_08e_6bc8                             ; $6c45: $20 $81

	daa                                              ; $6c47: $27
	add  b                                           ; $6c48: $80
	nop                                              ; $6c49: $00
	ld   bc, $00ff                                   ; $6c4a: $01 $ff $00
	add  [hl]                                        ; $6c4d: $86
	rst  $38                                         ; $6c4e: $ff
	nop                                              ; $6c4f: $00
	nop                                              ; $6c50: $00
	add  c                                           ; $6c51: $81
	rst  $38                                         ; $6c52: $ff
	add  b                                           ; $6c53: $80
	nop                                              ; $6c54: $00
	ld   bc, $00ff                                   ; $6c55: $01 $ff $00
	add  [hl]                                        ; $6c58: $86
	rst  $38                                         ; $6c59: $ff
	ld   bc, $ff00                                   ; $6c5a: $01 $00 $ff
	add  b                                           ; $6c5d: $80
	ld   hl, sp+$03                                  ; $6c5e: $f8 $03
	add  hl, bc                                      ; $6c60: $09
	ld   c, $ee                                      ; $6c61: $0e $ee
	ld   c, $82                                      ; $6c63: $0e $82
	xor  $05                                         ; $6c65: $ee $05
	jp   hl                                          ; $6c67: $e9


jr_08e_6c68:
	rst  $28                                         ; $6c68: $ef
	add  sp, -$12                                    ; $6c69: $e8 $ee
	ld   c, $ee                                      ; $6c6b: $0e $ee
	add  b                                           ; $6c6d: $80
	ld   c, $00                                      ; $6c6e: $0e $00
	cp   d                                           ; $6c70: $ba
	add  l                                           ; $6c71: $85
	ld   b, d                                        ; $6c72: $42
	ld   [bc], a                                     ; $6c73: $02
	cp   l                                           ; $6c74: $bd
	rst  $38                                         ; $6c75: $ff
	nop                                              ; $6c76: $00
	add  e                                           ; $6c77: $83
	ld   b, d                                        ; $6c78: $42
	nop                                              ; $6c79: $00
	inc  sp                                          ; $6c7a: $33
	add  l                                           ; $6c7b: $85
	rrca                                             ; $6c7c: $0f
	add  b                                           ; $6c7d: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c7e: $cf
	add  h                                           ; $6c7f: $84
	rrca                                             ; $6c80: $0f
	nop                                              ; $6c81: $00
	jp   nz, $ff83                                   ; $6c82: $c2 $83 $ff

	nop                                              ; $6c85: $00
	cp   $87                                         ; $6c86: $fe $87
	rst  $38                                         ; $6c88: $ff
	ld   [bc], a                                     ; $6c89: $02
	rst  $28                                         ; $6c8a: $ef
	rrca                                             ; $6c8b: $0f
	nop                                              ; $6c8c: $00
	add  d                                           ; $6c8d: $82
	rrca                                             ; $6c8e: $0f
	add  b                                           ; $6c8f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c90: $cf
	add  l                                           ; $6c91: $85
	rst  $28                                         ; $6c92: $ef
	inc  bc                                          ; $6c93: $03
	call z, $3cbc                                    ; $6c94: $cc $bc $3c
	cp   h                                           ; $6c97: $bc
	add  b                                           ; $6c98: $80
	sbc  h                                           ; $6c99: $9c
	ld   bc, $9c84                                   ; $6c9a: $01 $84 $9c
	add  [hl]                                        ; $6c9d: $86
	cp   h                                           ; $6c9e: $bc
	nop                                              ; $6c9f: $00
	jr   z, @-$7b                                    ; $6ca0: $28 $83

	ccf                                              ; $6ca2: $3f
	nop                                              ; $6ca3: $00
	ret  nz                                          ; $6ca4: $c0

	add  a                                           ; $6ca5: $87
	rst  $38                                         ; $6ca6: $ff
	nop                                              ; $6ca7: $00
	db   $d3                                         ; $6ca8: $d3
	add  c                                           ; $6ca9: $81
	cp   c                                           ; $6caa: $b9
	nop                                              ; $6cab: $00
	sbc  b                                           ; $6cac: $98
	add  c                                           ; $6cad: $81
	cp   c                                           ; $6cae: $b9
	dec  b                                           ; $6caf: $05
	add  b                                           ; $6cb0: $80
	ei                                               ; $6cb1: $fb
	jp   nz, Jump_08e_7bb9                           ; $6cb2: $c2 $b9 $7b

	nop                                              ; $6cb5: $00
	add  b                                           ; $6cb6: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cb7: $cf
	nop                                              ; $6cb8: $00
	jr   @-$7d                                       ; $6cb9: $18 $81

	adc  $00                                         ; $6cbb: $ce $00
	add  $81                                         ; $6cbd: $c6 $81
	adc  $05                                         ; $6cbf: $ce $05
	nop                                              ; $6cc1: $00
	sbc  $10                                         ; $6cc2: $de $10
	adc  $de                                         ; $6cc4: $ce $de
	nop                                              ; $6cc6: $00
	add  b                                           ; $6cc7: $80
	ld   c, $04                                      ; $6cc8: $0e $04
	cpl                                              ; $6cca: $2f
	ld   [hl], h                                     ; $6ccb: $74
	inc  h                                           ; $6ccc: $24
	ld   a, a                                        ; $6ccd: $7f
	cpl                                              ; $6cce: $2f
	add  c                                           ; $6ccf: $81
	ld   [hl], h                                     ; $6cd0: $74
	inc  bc                                          ; $6cd1: $03
	inc  h                                           ; $6cd2: $24
	ld   a, a                                        ; $6cd3: $7f
	cpl                                              ; $6cd4: $2f
	ld   [hl], h                                     ; $6cd5: $74
	add  b                                           ; $6cd6: $80
	ld   a, a                                        ; $6cd7: $7f
	dec  c                                           ; $6cd8: $0d
	ld   h, h                                        ; $6cd9: $64
	nop                                              ; $6cda: $00
	push hl                                          ; $6cdb: $e5
	add  e                                           ; $6cdc: $83
	or   d                                           ; $6cdd: $b2
	db   $e3                                         ; $6cde: $e3
	ld   a, [$9b93]                                  ; $6cdf: $fa $93 $9b
	sub  e                                           ; $6ce2: $93
	sub  [hl]                                        ; $6ce3: $96
	rst  $38                                         ; $6ce4: $ff
	ld   a, [$8097]                                  ; $6ce5: $fa $97 $80
	rst  $38                                         ; $6ce8: $ff
	ld   [bc], a                                     ; $6ce9: $02
	sub  d                                           ; $6cea: $92
	nop                                              ; $6ceb: $00
	ld   hl, sp-$7b                                  ; $6cec: $f8 $85
	rlca                                             ; $6cee: $07
	add  c                                           ; $6cef: $81
	nop                                              ; $6cf0: $00
	add  b                                           ; $6cf1: $80
	ccf                                              ; $6cf2: $3f
	add  b                                           ; $6cf3: $80
	nop                                              ; $6cf4: $00
	add  b                                           ; $6cf5: $80
	inc  bc                                          ; $6cf6: $03
	ld   bc, $8f8e                                   ; $6cf7: $01 $8e $8f
	add  h                                           ; $6cfa: $84
	adc  h                                           ; $6cfb: $8c
	add  b                                           ; $6cfc: $80
	nop                                              ; $6cfd: $00
	ld   [bc], a                                     ; $6cfe: $02
	adc  [hl]                                        ; $6cff: $8e
	adc  a                                           ; $6d00: $8f
	nop                                              ; $6d01: $00
	add  b                                           ; $6d02: $80
	ld   b, $86                                      ; $6d03: $06 $86
	daa                                              ; $6d05: $27
	add  b                                           ; $6d06: $80
	ld   h, $82                                      ; $6d07: $26 $82
	jr   nz, @+$04                                   ; $6d09: $20 $02

	inc  hl                                          ; $6d0b: $23
	jr   nz, @-$02                                   ; $6d0c: $20 $fc

	add  c                                           ; $6d0e: $81
	rst  $38                                         ; $6d0f: $ff
	add  b                                           ; $6d10: $80
	ld   hl, sp-$80                                  ; $6d11: $f8 $80
	ret  nz                                          ; $6d13: $c0

	ld   [bc], a                                     ; $6d14: $02
	ld   [bc], a                                     ; $6d15: $02
	ld   bc, $8011                                   ; $6d16: $01 $11 $80
	add  hl, bc                                      ; $6d19: $09
	inc  b                                           ; $6d1a: $04
	ld   c, c                                        ; $6d1b: $49
	ld   e, c                                        ; $6d1c: $59
	add  hl, bc                                      ; $6d1d: $09
	set  0, b                                        ; $6d1e: $cb $c0
	add  b                                           ; $6d20: $80
	nop                                              ; $6d21: $00
	ld   b, $01                                      ; $6d22: $06 $01
	rrca                                             ; $6d24: $0f
	ld   b, c                                        ; $6d25: $41
	cpl                                              ; $6d26: $2f
	ld   hl, $202f                                   ; $6d27: $21 $2f $20
	add  e                                           ; $6d2a: $83
	ld   hl, $6600                                   ; $6d2b: $21 $00 $66
	add  d                                           ; $6d2e: $82
	ld   c, $05                                      ; $6d2f: $0e $05
	cp   $09                                         ; $6d31: $fe $09
	rst  $38                                         ; $6d33: $ff
	ld   [$00fe], sp                                 ; $6d34: $08 $fe $00
	add  e                                           ; $6d37: $83
	ld   [$4284], sp                                 ; $6d38: $08 $84 $42
	ld   [bc], a                                     ; $6d3b: $02
	cp   l                                           ; $6d3c: $bd
	rst  $38                                         ; $6d3d: $ff
	nop                                              ; $6d3e: $00
	add  l                                           ; $6d3f: $85
	ld   b, d                                        ; $6d40: $42
	nop                                              ; $6d41: $00
	inc  sp                                          ; $6d42: $33
	add  e                                           ; $6d43: $83
	rrca                                             ; $6d44: $0f
	add  b                                           ; $6d45: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d46: $cf
	add  [hl]                                        ; $6d47: $86
	rrca                                             ; $6d48: $0f
	nop                                              ; $6d49: $00
	jp   $ff8d                                       ; $6d4a: $c3 $8d $ff


	inc  b                                           ; $6d4d: $04
	rst  $28                                         ; $6d4e: $ef
	ldh  [$ef], a                                    ; $6d4f: $e0 $ef
	ldh  [rIE], a                                    ; $6d51: $e0 $ff
	add  c                                           ; $6d53: $81
	ldh  [rDIV], a                                   ; $6d54: $e0 $04
	rst  $30                                         ; $6d56: $f7
	db   $ec                                         ; $6d57: $ec
	db   $f4                                         ; $6d58: $f4
	ldh  [$ef], a                                    ; $6d59: $e0 $ef
	add  b                                           ; $6d5b: $80

jr_08e_6d5c:
	ret  nz                                          ; $6d5c: $c0

	dec  b                                           ; $6d5d: $05
	rst  $28                                         ; $6d5e: $ef
	srl  h                                           ; $6d5f: $cb $3c
	cp   h                                           ; $6d61: $bc
	inc  a                                           ; $6d62: $3c
	cp   h                                           ; $6d63: $bc
	add  d                                           ; $6d64: $82
	inc  a                                           ; $6d65: $3c
	inc  bc                                          ; $6d66: $03
	ld   e, h                                        ; $6d67: $5c
	cp   h                                           ; $6d68: $bc
	inc  e                                           ; $6d69: $1c
	call c, $1c80                                    ; $6d6a: $dc $80 $1c
	ld   bc, $e8dc                                   ; $6d6d: $01 $dc $e8
	add  a                                           ; $6d70: $87
	ccf                                              ; $6d71: $3f
	nop                                              ; $6d72: $00
	ret  nz                                          ; $6d73: $c0

	add  h                                           ; $6d74: $84
	rst  $38                                         ; $6d75: $ff
	ld   [bc], a                                     ; $6d76: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d77: $cf
	ret  nz                                          ; $6d78: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d79: $cf
	add  h                                           ; $6d7a: $84
	rst  $38                                         ; $6d7b: $ff
	nop                                              ; $6d7c: $00
	nop                                              ; $6d7d: $00
	add  e                                           ; $6d7e: $83
	rst  $38                                         ; $6d7f: $ff
	inc  bc                                          ; $6d80: $03
	cp   $0e                                         ; $6d81: $fe $0e
	ld   bc, $840e                                   ; $6d83: $01 $0e $84
	cp   $02                                         ; $6d86: $fe $02
	nop                                              ; $6d88: $00
	cp   $ff                                         ; $6d89: $fe $ff
	add  c                                           ; $6d8b: $81
	cp   $01                                         ; $6d8c: $fe $01
	ldh  a, [rP1]                                    ; $6d8e: $f0 $00
	add  d                                           ; $6d90: $82
	or   b                                           ; $6d91: $b0
	add  b                                           ; $6d92: $80
	cp   a                                           ; $6d93: $bf
	add  b                                           ; $6d94: $80
	add  b                                           ; $6d95: $80
	ld   bc, $a49b                                   ; $6d96: $01 $9b $a4
	add  b                                           ; $6d99: $80
	inc  h                                           ; $6d9a: $24
	add  b                                           ; $6d9b: $80
	ccf                                              ; $6d9c: $3f
	nop                                              ; $6d9d: $00
	inc  a                                           ; $6d9e: $3c
	add  e                                           ; $6d9f: $83
	inc  bc                                          ; $6da0: $03
	add  b                                           ; $6da1: $80
	rst  $38                                         ; $6da2: $ff
	add  b                                           ; $6da3: $80
	nop                                              ; $6da4: $00
	nop                                              ; $6da5: $00
	ld   l, l                                        ; $6da6: $6d
	add  c                                           ; $6da7: $81
	sub  d                                           ; $6da8: $92
	add  b                                           ; $6da9: $80
	rst  $38                                         ; $6daa: $ff
	add  hl, bc                                      ; $6dab: $09
	jp   $3e00                                       ; $6dac: $c3 $00 $3e


	nop                                              ; $6daf: $00
	ld   a, $3c                                      ; $6db0: $3e $3c
	ld   a, $02                                      ; $6db2: $3e $02
	ccf                                              ; $6db4: $3f
	ld   bc, $3980                                   ; $6db5: $01 $80 $39
	add  b                                           ; $6db8: $80
	ld   bc, $0204                                   ; $6db9: $01 $04 $02
	nop                                              ; $6dbc: $00
	adc  [hl]                                        ; $6dbd: $8e
	xor  $c0                                         ; $6dbe: $ee $c0
	add  b                                           ; $6dc0: $80
	rst  $10                                         ; $6dc1: $d7
	ld   [bc], a                                     ; $6dc2: $02
	ret  z                                           ; $6dc3: $c8

	ret  nz                                          ; $6dc4: $c0

	jp   $c080                                       ; $6dc5: $c3 $80 $c0


	add  b                                           ; $6dc8: $80
	ldh  [rDIV], a                                   ; $6dc9: $e0 $04
	ret  c                                           ; $6dcb: $d8

	add  b                                           ; $6dcc: $80
	cp   e                                           ; $6dcd: $bb
	add  b                                           ; $6dce: $80
	jr   z, jr_08e_6d5c                              ; $6dcf: $28 $8b

	inc  hl                                          ; $6dd1: $23
	add  b                                           ; $6dd2: $80
	jr   nz, jr_08e_6dda                             ; $6dd3: $20 $05

	ld   h, e                                        ; $6dd5: $63
	ld   bc, $606d                                   ; $6dd6: $01 $6d $60
	ld   l, l                                        ; $6dd9: $6d

jr_08e_6dda:
	ld   l, h                                        ; $6dda: $6c
	adc  b                                           ; $6ddb: $88
	ld   l, l                                        ; $6ddc: $6d
	rlca                                             ; $6ddd: $07
	inc  hl                                          ; $6dde: $23
	ld   hl, $2161                                   ; $6ddf: $21 $61 $21
	xor  [hl]                                        ; $6de2: $ae
	rrca                                             ; $6de3: $0f
	or   b                                           ; $6de4: $b0
	add  c                                           ; $6de5: $81
	add  [hl]                                        ; $6de6: $86
	or   c                                           ; $6de7: $b1
	nop                                              ; $6de8: $00
	ld   c, b                                        ; $6de9: $48
	add  c                                           ; $6dea: $81
	ld   [$f702], sp                                 ; $6deb: $08 $02 $f7
	rst  $38                                         ; $6dee: $ff
	nop                                              ; $6def: $00
	add  a                                           ; $6df0: $87
	ld   [$4282], sp                                 ; $6df1: $08 $82 $42

jr_08e_6df4:
	ld   [bc], a                                     ; $6df4: $02
	cp   l                                           ; $6df5: $bd
	rst  $38                                         ; $6df6: $ff
	nop                                              ; $6df7: $00
	add  a                                           ; $6df8: $87

jr_08e_6df9:
	ld   b, d                                        ; $6df9: $42
	nop                                              ; $6dfa: $00
	inc  sp                                          ; $6dfb: $33
	add  c                                           ; $6dfc: $81
	rrca                                             ; $6dfd: $0f
	add  b                                           ; $6dfe: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6dff: $cf
	add  h                                           ; $6e00: $84
	rrca                                             ; $6e01: $0f
	nop                                              ; $6e02: $00
	inc  c                                           ; $6e03: $0c
	add  c                                           ; $6e04: $81
	ld   c, $00                                      ; $6e05: $0e $00
	pop  bc                                          ; $6e07: $c1
	adc  c                                           ; $6e08: $89
	rst  $38                                         ; $6e09: $ff
	nop                                              ; $6e0a: $00
	add  h                                           ; $6e0b: $84
	add  c                                           ; $6e0c: $81
	add  l                                           ; $6e0d: $85
	ld   b, $e1                                      ; $6e0e: $06 $e1
	rst  $38                                         ; $6e10: $ff
	sbc  a                                           ; $6e11: $9f
	sbc  [hl]                                        ; $6e12: $9e
	sub  b                                           ; $6e13: $90
	sbc  [hl]                                        ; $6e14: $9e
	rst  $28                                         ; $6e15: $ef
	add  b                                           ; $6e16: $80
	add  b                                           ; $6e17: $80
	ld   bc, $d6ce                                   ; $6e18: $01 $ce $d6
	add  c                                           ; $6e1b: $81
	rst  $38                                         ; $6e1c: $ff
	ld   [bc], a                                     ; $6e1d: $02
	rst  $20                                         ; $6e1e: $e7
	rst  $38                                         ; $6e1f: $ff
	dec  bc                                          ; $6e20: $0b
	add  b                                           ; $6e21: $80
	db   $fc                                         ; $6e22: $fc
	rlca                                             ; $6e23: $07
	ld   a, h                                        ; $6e24: $7c
	ld   c, a                                        ; $6e25: $4f
	ld   a, a                                        ; $6e26: $7f
	cp   a                                           ; $6e27: $bf
	ccf                                              ; $6e28: $3f
	add  hl, sp                                      ; $6e29: $39
	ld   a, a                                        ; $6e2a: $7f
	cp   a                                           ; $6e2b: $bf
	add  c                                           ; $6e2c: $81
	rst  $38                                         ; $6e2d: $ff
	ld   [bc], a                                     ; $6e2e: $02
	ccf                                              ; $6e2f: $3f
	rst  $38                                         ; $6e30: $ff
	ld   sp, $ff81                                   ; $6e31: $31 $81 $ff
	nop                                              ; $6e34: $00
	ret  nz                                          ; $6e35: $c0

	add  a                                           ; $6e36: $87
	rst  $38                                         ; $6e37: $ff
	nop                                              ; $6e38: $00
	nop                                              ; $6e39: $00
	add  e                                           ; $6e3a: $83
	rst  $38                                         ; $6e3b: $ff
	nop                                              ; $6e3c: $00
	nop                                              ; $6e3d: $00
	add  a                                           ; $6e3e: $87
	rst  $38                                         ; $6e3f: $ff
	nop                                              ; $6e40: $00
	nop                                              ; $6e41: $00
	add  e                                           ; $6e42: $83
	rst  $38                                         ; $6e43: $ff
	nop                                              ; $6e44: $00
	nop                                              ; $6e45: $00
	add  a                                           ; $6e46: $87
	rst  $38                                         ; $6e47: $ff
	nop                                              ; $6e48: $00
	nop                                              ; $6e49: $00
	add  e                                           ; $6e4a: $83
	rst  $38                                         ; $6e4b: $ff
	nop                                              ; $6e4c: $00
	nop                                              ; $6e4d: $00
	add  a                                           ; $6e4e: $87
	rst  $38                                         ; $6e4f: $ff
	nop                                              ; $6e50: $00
	nop                                              ; $6e51: $00
	add  e                                           ; $6e52: $83
	rst  $38                                         ; $6e53: $ff
	nop                                              ; $6e54: $00
	ld   bc, $ff87                                   ; $6e55: $01 $87 $ff
	ld   [bc], a                                     ; $6e58: $02
	nop                                              ; $6e59: $00
	cp   $f0                                         ; $6e5a: $fe $f0
	add  c                                           ; $6e5c: $81
	nop                                              ; $6e5d: $00
	adc  d                                           ; $6e5e: $8a
	ld   a, $03                                      ; $6e5f: $3e $03
	add  b                                           ; $6e61: $80
	add  a                                           ; $6e62: $87
	add  [hl]                                        ; $6e63: $86
	add  c                                           ; $6e64: $81
	add  d                                           ; $6e65: $82
	adc  b                                           ; $6e66: $88
	add  c                                           ; $6e67: $81
	adc  [hl]                                        ; $6e68: $8e
	ld   bc, $c0ee                                   ; $6e69: $01 $ee $c0
	add  b                                           ; $6e6c: $80
	rst  $10                                         ; $6e6d: $d7
	ld   bc, $48c8                                   ; $6e6e: $01 $c8 $48
	add  d                                           ; $6e71: $82
	jr   nz, jr_08e_6df4                             ; $6e72: $20 $80

	ccf                                              ; $6e74: $3f
	add  b                                           ; $6e75: $80
	jr   nc, jr_08e_6df9                             ; $6e76: $30 $81

	ld   [hl-], a                                    ; $6e78: $32
	inc  b                                           ; $6e79: $04
	ld   a, [hl+]                                    ; $6e7a: $2a
	ld   [hl+], a                                    ; $6e7b: $22
	ld   a, [hl-]                                    ; $6e7c: $3a
	ld   [hl+], a                                    ; $6e7d: $22
	ld   [bc], a                                     ; $6e7e: $02
	add  c                                           ; $6e7f: $81
	nop                                              ; $6e80: $00
	nop                                              ; $6e81: $00
	ld   bc, $ff80                                   ; $6e82: $01 $80 $ff
	add  b                                           ; $6e85: $80
	rra                                              ; $6e86: $1f
	add  c                                           ; $6e87: $81
	sbc  a                                           ; $6e88: $9f
	ld   [bc], a                                     ; $6e89: $02
	and  c                                           ; $6e8a: $a1
	add  b                                           ; $6e8b: $80
	cp   a                                           ; $6e8c: $bf
	add  b                                           ; $6e8d: $80
	add  b                                           ; $6e8e: $80
	add  c                                           ; $6e8f: $81
	nop                                              ; $6e90: $00
	ld   [bc], a                                     ; $6e91: $02
	ldh  [rIE], a                                    ; $6e92: $e0 $ff
	cp   $83                                         ; $6e94: $fe $83
	rst  $38                                         ; $6e96: $ff
	ld   [bc], a                                     ; $6e97: $02
	pop  hl                                          ; $6e98: $e1
	nop                                              ; $6e99: $00
	rst  $38                                         ; $6e9a: $ff
	add  h                                           ; $6e9b: $84
	nop                                              ; $6e9c: $00
	add  b                                           ; $6e9d: $80
	rst  $38                                         ; $6e9e: $ff

jr_08e_6e9f:
	add  e                                           ; $6e9f: $83
	rst  JumpTable                                         ; $6ea0: $df
	ld   [bc], a                                     ; $6ea1: $02
	jr   nz, jr_08e_6ea4                             ; $6ea2: $20 $00

jr_08e_6ea4:
	rst  $38                                         ; $6ea4: $ff
	add  e                                           ; $6ea5: $83
	nop                                              ; $6ea6: $00
	nop                                              ; $6ea7: $00
	ldh  [$83], a                                    ; $6ea8: $e0 $83
	rst  $38                                         ; $6eaa: $ff
	ld   b, $e0                                      ; $6eab: $06 $e0
	rst  $38                                         ; $6ead: $ff
	db   $fc                                         ; $6eae: $fc
	nop                                              ; $6eaf: $00
	ld   a, [$0500]                                  ; $6eb0: $fa $00 $05
	add  c                                           ; $6eb3: $81
	ld   [bc], a                                     ; $6eb4: $02
	nop                                              ; $6eb5: $00
	ld   b, $82                                      ; $6eb6: $06 $82

jr_08e_6eb8:
	jp   z, $cb04                                    ; $6eb8: $ca $04 $cb

	ld   [$00cb], sp                                 ; $6ebb: $08 $cb $00
	rrca                                             ; $6ebe: $0f
	add  b                                           ; $6ebf: $80
	add  b                                           ; $6ec0: $80
	nop                                              ; $6ec1: $00
	ld   a, e                                        ; $6ec2: $7b
	add  l                                           ; $6ec3: $85
	add  l                                           ; $6ec4: $85
	dec  b                                           ; $6ec5: $05
	ld   bc, $00ff                                   ; $6ec6: $01 $ff $00
	rst  $38                                         ; $6ec9: $ff
	nop                                              ; $6eca: $00
	rst  $38                                         ; $6ecb: $ff
	add  c                                           ; $6ecc: $81
	nop                                              ; $6ecd: $00
	add  c                                           ; $6ece: $81
	add  b                                           ; $6ecf: $80
	nop                                              ; $6ed0: $00
	rst  $38                                         ; $6ed1: $ff
	add  d                                           ; $6ed2: $82
	add  b                                           ; $6ed3: $80
	add  c                                           ; $6ed4: $81
	rst  $38                                         ; $6ed5: $ff
	ld   bc, $bf3f                                   ; $6ed6: $01 $3f $bf
	add  b                                           ; $6ed9: $80
	nop                                              ; $6eda: $00
	add  b                                           ; $6edb: $80
	ld   bc, $0080                                   ; $6edc: $01 $80 $00
	nop                                              ; $6edf: $00
	rst  $38                                         ; $6ee0: $ff
	add  d                                           ; $6ee1: $82
	nop                                              ; $6ee2: $00
	add  e                                           ; $6ee3: $83
	rst  $38                                         ; $6ee4: $ff
	add  h                                           ; $6ee5: $84
	nop                                              ; $6ee6: $00
	nop                                              ; $6ee7: $00
	rst  $38                                         ; $6ee8: $ff
	add  d                                           ; $6ee9: $82
	nop                                              ; $6eea: $00
	add  e                                           ; $6eeb: $83
	rst  $38                                         ; $6eec: $ff
	add  h                                           ; $6eed: $84
	nop                                              ; $6eee: $00
	nop                                              ; $6eef: $00
	rst  $38                                         ; $6ef0: $ff
	add  d                                           ; $6ef1: $82
	nop                                              ; $6ef2: $00
	add  e                                           ; $6ef3: $83
	rst  $38                                         ; $6ef4: $ff
	add  h                                           ; $6ef5: $84
	nop                                              ; $6ef6: $00
	nop                                              ; $6ef7: $00
	rst  $38                                         ; $6ef8: $ff
	add  d                                           ; $6ef9: $82
	nop                                              ; $6efa: $00
	add  e                                           ; $6efb: $83
	rst  $38                                         ; $6efc: $ff
	add  h                                           ; $6efd: $84
	nop                                              ; $6efe: $00
	nop                                              ; $6eff: $00
	rst  $38                                         ; $6f00: $ff
	add  d                                           ; $6f01: $82
	nop                                              ; $6f02: $00
	add  e                                           ; $6f03: $83
	rst  $38                                         ; $6f04: $ff
	add  h                                           ; $6f05: $84
	nop                                              ; $6f06: $00
	nop                                              ; $6f07: $00
	rst  $38                                         ; $6f08: $ff
	add  d                                           ; $6f09: $82
	nop                                              ; $6f0a: $00
	add  e                                           ; $6f0b: $83
	rst  $38                                         ; $6f0c: $ff
	add  b                                           ; $6f0d: $80
	nop                                              ; $6f0e: $00
	add  c                                           ; $6f0f: $81
	ld   a, $03                                      ; $6f10: $3e $03
	ld   c, $3e                                      ; $6f12: $0e $3e
	ld   b, $3c                                      ; $6f14: $06 $3c
	add  b                                           ; $6f16: $80
	nop                                              ; $6f17: $00
	add  b                                           ; $6f18: $80
	inc  hl                                          ; $6f19: $23
	nop                                              ; $6f1a: $00
	jr   nz, jr_08e_6e9f                             ; $6f1b: $20 $82

	ld   [hl+], a                                    ; $6f1d: $22
	ld   bc, $c3bc                                   ; $6f1e: $01 $bc $c3
	add  b                                           ; $6f21: $80
	ret  nz                                          ; $6f22: $c0

	add  b                                           ; $6f23: $80
	ldh  [$0b], a                                    ; $6f24: $e0 $0b
	ld   e, b                                        ; $6f26: $58
	nop                                              ; $6f27: $00
	dec  sp                                          ; $6f28: $3b
	add  b                                           ; $6f29: $80
	adc  b                                           ; $6f2a: $88
	add  a                                           ; $6f2b: $87
	add  [hl]                                        ; $6f2c: $86
	add  c                                           ; $6f2d: $81
	ld   [$3c88], sp                                 ; $6f2e: $08 $88 $3c

jr_08e_6f31:
	ld   a, $80                                      ; $6f31: $3e $80
	ld   l, $01                                      ; $6f33: $2e $01
	ld   [hl-], a                                    ; $6f35: $32
	jr   nc, jr_08e_6eb8                             ; $6f36: $30 $80

	jr   nz, @-$7e                                   ; $6f38: $20 $80

	jr   nc, @-$7e                                   ; $6f3a: $30 $80

	rla                                              ; $6f3c: $17
	add  b                                           ; $6f3d: $80
	db   $10                                         ; $6f3e: $10
	add  b                                           ; $6f3f: $80
	rra                                              ; $6f40: $1f
	ld   bc, $bf3f                                   ; $6f41: $01 $3f $bf
	add  b                                           ; $6f44: $80
	and  b                                           ; $6f45: $a0
	nop                                              ; $6f46: $00
	add  b                                           ; $6f47: $80
	add  b                                           ; $6f48: $80
	rra                                              ; $6f49: $1f
	nop                                              ; $6f4a: $00
	nop                                              ; $6f4b: $00
	add  b                                           ; $6f4c: $80
	rra                                              ; $6f4d: $1f
	add  b                                           ; $6f4e: $80
	ret  nc                                          ; $6f4f: $d0

	add  b                                           ; $6f50: $80
	db   $10                                         ; $6f51: $10
	add  b                                           ; $6f52: $80
	ldh  a, [$80]                                    ; $6f53: $f0 $80
	rst  $38                                         ; $6f55: $ff
	add  c                                           ; $6f56: $81
	nop                                              ; $6f57: $00
	add  b                                           ; $6f58: $80
	rst  $38                                         ; $6f59: $ff
	nop                                              ; $6f5a: $00
	nop                                              ; $6f5b: $00
	add  b                                           ; $6f5c: $80
	rst  $38                                         ; $6f5d: $ff
	add  h                                           ; $6f5e: $84
	nop                                              ; $6f5f: $00
	ld   bc, $f5e1                                   ; $6f60: $01 $e1 $f5
	add  b                                           ; $6f63: $80
	inc  d                                           ; $6f64: $14
	dec  b                                           ; $6f65: $05
	inc  [hl]                                        ; $6f66: $34
	push af                                          ; $6f67: $f5
	push de                                          ; $6f68: $d5
	inc  d                                           ; $6f69: $14
	push af                                          ; $6f6a: $f5
	pop  hl                                          ; $6f6b: $e1
	add  b                                           ; $6f6c: $80
	ld   hl, $3f80                                   ; $6f6d: $21 $80 $3f
	add  b                                           ; $6f70: $80
	nop                                              ; $6f71: $00
	ld   bc, $f8fa                                   ; $6f72: $01 $fa $f8
	add  b                                           ; $6f75: $80
	nop                                              ; $6f76: $00
	inc  bc                                          ; $6f77: $03
	inc  b                                           ; $6f78: $04
	db   $fd                                         ; $6f79: $fd
	ei                                               ; $6f7a: $fb
	nop                                              ; $6f7b: $00
	add  b                                           ; $6f7c: $80
	rst  $38                                         ; $6f7d: $ff
	add  h                                           ; $6f7e: $84
	nop                                              ; $6f7f: $00
	ld   bc, $8587                                   ; $6f80: $01 $87 $85
	add  b                                           ; $6f83: $80
	dec  b                                           ; $6f84: $05
	nop                                              ; $6f85: $00
	dec  c                                           ; $6f86: $0d
	add  b                                           ; $6f87: $80
	call $0d02                                       ; $6f88: $cd $02 $0d
	pop  bc                                          ; $6f8b: $c1
	jp   Jump_08e_4384                               ; $6f8c: $c3 $84 $43


	nop                                              ; $6f8f: $00
	ldh  a, [$83]                                    ; $6f90: $f0 $83
	rst  $38                                         ; $6f92: $ff
	ld   a, [bc]                                     ; $6f93: $0a
	di                                               ; $6f94: $f3
	rlca                                             ; $6f95: $07
	ld   [hl], a                                     ; $6f96: $77
	nop                                              ; $6f97: $00
	dec  sp                                          ; $6f98: $3b
	ld   sp, $3805                                   ; $6f99: $31 $05 $38
	ld   a, [hl+]                                    ; $6f9c: $2a
	jr   nz, jr_08e_6f31                             ; $6f9d: $20 $92

	add  c                                           ; $6f9f: $81
	cp   a                                           ; $6fa0: $bf
	nop                                              ; $6fa1: $00
	add  b                                           ; $6fa2: $80
	add  c                                           ; $6fa3: $81
	and  e                                           ; $6fa4: $a3
	ld   bc, $00bf                                   ; $6fa5: $01 $bf $00
	add  b                                           ; $6fa8: $80
	rst  $38                                         ; $6fa9: $ff
	inc  b                                           ; $6faa: $04
	nop                                              ; $6fab: $00
	rst  $38                                         ; $6fac: $ff
	ld   a, a                                        ; $6fad: $7f
	nop                                              ; $6fae: $00

jr_08e_6faf:
	ld   b, e                                        ; $6faf: $43
	add  c                                           ; $6fb0: $81
	rst  $38                                         ; $6fb1: $ff
	nop                                              ; $6fb2: $00
	nop                                              ; $6fb3: $00
	add  c                                           ; $6fb4: $81
	jp   $ff01                                       ; $6fb5: $c3 $01 $ff


	nop                                              ; $6fb8: $00
	add  b                                           ; $6fb9: $80
	rst  $38                                         ; $6fba: $ff
	nop                                              ; $6fbb: $00
	nop                                              ; $6fbc: $00
	add  b                                           ; $6fbd: $80
	rst  $38                                         ; $6fbe: $ff
	ld   bc, $c300                                   ; $6fbf: $01 $00 $c3
	add  c                                           ; $6fc2: $81
	rst  $38                                         ; $6fc3: $ff
	nop                                              ; $6fc4: $00
	nop                                              ; $6fc5: $00
	add  c                                           ; $6fc6: $81
	jp   $ff00                                       ; $6fc7: $c3 $00 $ff


	add  c                                           ; $6fca: $81
	nop                                              ; $6fcb: $00
	add  b                                           ; $6fcc: $80
	ccf                                              ; $6fcd: $3f
	add  b                                           ; $6fce: $80
	ld   a, a                                        ; $6fcf: $7f
	nop                                              ; $6fd0: $00
	jp   $ff81                                       ; $6fd1: $c3 $81 $ff


	nop                                              ; $6fd4: $00
	nop                                              ; $6fd5: $00
	add  c                                           ; $6fd6: $81
	jp   $ff00                                       ; $6fd7: $c3 $00 $ff


	add  c                                           ; $6fda: $81
	nop                                              ; $6fdb: $00
	add  d                                           ; $6fdc: $82
	rst  $38                                         ; $6fdd: $ff
	nop                                              ; $6fde: $00
	jp   $ff81                                       ; $6fdf: $c3 $81 $ff


	nop                                              ; $6fe2: $00
	nop                                              ; $6fe3: $00
	add  c                                           ; $6fe4: $81
	jp   $ff00                                       ; $6fe5: $c3 $00 $ff


	add  c                                           ; $6fe8: $81
	nop                                              ; $6fe9: $00
	add  d                                           ; $6fea: $82
	rst  $38                                         ; $6feb: $ff
	nop                                              ; $6fec: $00
	jp   $ff81                                       ; $6fed: $c3 $81 $ff


	nop                                              ; $6ff0: $00
	nop                                              ; $6ff1: $00
	add  c                                           ; $6ff2: $81
	jp   $ff00                                       ; $6ff3: $c3 $00 $ff


	add  c                                           ; $6ff6: $81
	nop                                              ; $6ff7: $00
	add  b                                           ; $6ff8: $80
	cp   $80                                         ; $6ff9: $fe $80
	rst  $38                                         ; $6ffb: $ff
	nop                                              ; $6ffc: $00
	db   $fc                                         ; $6ffd: $fc
	add  c                                           ; $6ffe: $81
	ret  nz                                          ; $6fff: $c0

	nop                                              ; $7000: $00
	nop                                              ; $7001: $00
	add  d                                           ; $7002: $82
	ret  nz                                          ; $7003: $c0

	add  l                                           ; $7004: $85
	ld   a, h                                        ; $7005: $7c
	nop                                              ; $7006: $00
	ld   [hl], a                                     ; $7007: $77
	add  e                                           ; $7008: $83
	inc  hl                                          ; $7009: $23
	dec  b                                           ; $700a: $05
	dec  hl                                          ; $700b: $2b
	ld   bc, $013f                  ; $700c: $01 $3f $01
	dec  d                                           ; $700f: $15
	ld   bc, $2180                                   ; $7010: $01 $80 $21
	inc  bc                                          ; $7013: $03
	inc  h                                           ; $7014: $24
	jr   nz, jr_08e_6faf                             ; $7015: $20 $98

	adc  b                                           ; $7017: $88
	add  c                                           ; $7018: $81
	adc  a                                           ; $7019: $8f
	ld   bc, $c0ef                                   ; $701a: $01 $ef $c0
	add  b                                           ; $701d: $80
	rst  $10                                         ; $701e: $d7
	ld   [bc], a                                     ; $701f: $02
	ret  z                                           ; $7020: $c8

	ret  nz                                          ; $7021: $c0

	jp   $c080                                       ; $7022: $c3 $80 $c0


	add  b                                           ; $7025: $80
	ld   h, b                                        ; $7026: $60
	nop                                              ; $7027: $00
	ld   l, e                                        ; $7028: $6b
	call $0000                                      ; $7029: $cd $00 $00
	ld   c, a                                        ; $702c: $4f
	add  l                                           ; $702d: $85
	ld   c, l                                        ; $702e: $4d
	nop                                              ; $702f: $00
	ld   b, c                                        ; $7030: $41
	add  l                                           ; $7031: $85
	ld   b, d                                        ; $7032: $42
	ld   [$2e99], sp                                 ; $7033: $08 $99 $2e
	ld   c, $bf                                      ; $7036: $0e $bf
	sbc  h                                           ; $7038: $9c
	xor  l                                           ; $7039: $ad
	xor  c                                           ; $703a: $a9
	xor  a                                           ; $703b: $af
	xor  e                                           ; $703c: $ab
	add  l                                           ; $703d: $85
	dec  l                                           ; $703e: $2d
	inc  c                                           ; $703f: $0c
	ld   c, c                                        ; $7040: $49
	ccf                                              ; $7041: $3f
	and  b                                           ; $7042: $a0
	rra                                              ; $7043: $1f
	ld   c, a                                        ; $7044: $4f
	nop                                              ; $7045: $00
	cpl                                              ; $7046: $2f
	rst  ToBoot                                         ; $7047: $c7
	ret  nc                                          ; $7048: $d0

	rst  $20                                         ; $7049: $e7
	daa                                              ; $704a: $27
	ret  nz                                          ; $704b: $c0

	ld   b, l                                        ; $704c: $45
	add  b                                           ; $704d: $80
	add  a                                           ; $704e: $87
	inc  bc                                          ; $704f: $03
	sbc  a                                           ; $7050: $9f
	dec  l                                           ; $7051: $2d
	rst  $38                                         ; $7052: $ff
	nop                                              ; $7053: $00
	add  b                                           ; $7054: $80
	rst  $38                                         ; $7055: $ff
	nop                                              ; $7056: $00
	nop                                              ; $7057: $00
	add  b                                           ; $7058: $80
	rst  $38                                         ; $7059: $ff
	nop                                              ; $705a: $00
	nop                                              ; $705b: $00
	add  b                                           ; $705c: $80
	rst  $38                                         ; $705d: $ff
	dec  bc                                          ; $705e: $0b
	nop                                              ; $705f: $00
	db   $db                                         ; $7060: $db
	rst  $38                                         ; $7061: $ff
	pop  af                                          ; $7062: $f1
	rst  $38                                         ; $7063: $ff
	ld   b, b                                        ; $7064: $40
	ld   a, a                                        ; $7065: $7f
	ld   b, b                                        ; $7066: $40
	ld   a, a                                        ; $7067: $7f
	ret  nz                                          ; $7068: $c0

	rst  $38                                         ; $7069: $ff
	push de                                          ; $706a: $d5
	add  c                                           ; $706b: $81
	rst  $38                                         ; $706c: $ff
	add  b                                           ; $706d: $80
	ld   [$d580], a                                  ; $706e: $ea $80 $d5
	ld   [$ea6a], sp                                 ; $7071: $08 $6a $ea
	dec  d                                           ; $7074: $15
	rst  $38                                         ; $7075: $ff
	nop                                              ; $7076: $00
	rst  $38                                         ; $7077: $ff
	nop                                              ; $7078: $00
	rst  $38                                         ; $7079: $ff
	ld   d, l                                        ; $707a: $55
	add  c                                           ; $707b: $81
	rst  $38                                         ; $707c: $ff
	add  b                                           ; $707d: $80
	xor  d                                           ; $707e: $aa
	add  b                                           ; $707f: $80
	ld   d, l                                        ; $7080: $55
	add  b                                           ; $7081: $80
	xor  d                                           ; $7082: $aa
	ld   b, $55                                      ; $7083: $06 $55
	rst  $38                                         ; $7085: $ff
	nop                                              ; $7086: $00
	rst  $38                                         ; $7087: $ff
	nop                                              ; $7088: $00
	rst  $38                                         ; $7089: $ff
	ld   d, l                                        ; $708a: $55
	add  c                                           ; $708b: $81
	rst  $38                                         ; $708c: $ff
	add  b                                           ; $708d: $80
	xor  d                                           ; $708e: $aa
	add  b                                           ; $708f: $80
	ld   d, l                                        ; $7090: $55
	add  b                                           ; $7091: $80
	xor  d                                           ; $7092: $aa
	ld   b, $55                                      ; $7093: $06 $55
	rst  $38                                         ; $7095: $ff
	nop                                              ; $7096: $00
	rst  $38                                         ; $7097: $ff
	nop                                              ; $7098: $00
	rst  $38                                         ; $7099: $ff
	ld   d, l                                        ; $709a: $55
	add  c                                           ; $709b: $81
	rst  $38                                         ; $709c: $ff
	add  b                                           ; $709d: $80
	xor  d                                           ; $709e: $aa
	add  b                                           ; $709f: $80
	ld   d, l                                        ; $70a0: $55
	add  b                                           ; $70a1: $80
	xor  d                                           ; $70a2: $aa
	nop                                              ; $70a3: $00
	jp   Jump_08e_4086                               ; $70a4: $c3 $86 $40


	add  l                                           ; $70a7: $85
	ld   a, h                                        ; $70a8: $7c
	nop                                              ; $70a9: $00
	ld   [hl], b                                     ; $70aa: $70
	add  b                                           ; $70ab: $80
	daa                                              ; $70ac: $27
	ld   bc, $2420                                   ; $70ad: $01 $20 $24
	add  a                                           ; $70b0: $87
	jr   nz, jr_08e_70b7                             ; $70b1: $20 $04

	dec  hl                                          ; $70b3: $2b
	ld   bc, $800d                                   ; $70b4: $01 $0d $80

jr_08e_70b7:
	cp   e                                           ; $70b7: $bb
	add  b                                           ; $70b8: $80
	add  b                                           ; $70b9: $80
	inc  b                                           ; $70ba: $04
	adc  a                                           ; $70bb: $8f
	add  [hl]                                        ; $70bc: $86
	add  c                                           ; $70bd: $81
	nop                                              ; $70be: $00
	add  c                                           ; $70bf: $81
	add  b                                           ; $70c0: $80
	adc  c                                           ; $70c1: $89
	add  b                                           ; $70c2: $80
	adc  l                                           ; $70c3: $8d
	add  b                                           ; $70c4: $80
	add  c                                           ; $70c5: $81
	nop                                              ; $70c6: $00
	ld   bc, $00cd                                   ; $70c7: $01 $cd $00
	nop                                              ; $70ca: $00
	ld   c, a                                        ; $70cb: $4f
	add  l                                           ; $70cc: $85
	ld   c, l                                        ; $70cd: $4d
	nop                                              ; $70ce: $00
	ld   b, c                                        ; $70cf: $41
	add  l                                           ; $70d0: $85
	ld   b, d                                        ; $70d1: $42
	nop                                              ; $70d2: $00
	sbc  d                                           ; $70d3: $9a
	add  [hl]                                        ; $70d4: $86
	xor  l                                           ; $70d5: $ad
	add  l                                           ; $70d6: $85
	dec  l                                           ; $70d7: $2d
	rlca                                             ; $70d8: $07
	ld   a, [$9e9f]                                  ; $70d9: $fa $9f $9e
	sbc  a                                           ; $70dc: $9f
	sbc  h                                           ; $70dd: $9c
	sbc  l                                           ; $70de: $9d
	sbc  [hl]                                        ; $70df: $9e
	sbc  d                                           ; $70e0: $9a
	add  d                                           ; $70e1: $82
	sbc  [hl]                                        ; $70e2: $9e
	add  b                                           ; $70e3: $80
	sbc  c                                           ; $70e4: $99
	add  b                                           ; $70e5: $80
	sbc  a                                           ; $70e6: $9f
	rlca                                             ; $70e7: $07
	ld   e, c                                        ; $70e8: $59
	rst  $38                                         ; $70e9: $ff
	inc  e                                           ; $70ea: $1c
	rst  $38                                         ; $70eb: $ff
	ld   h, c                                        ; $70ec: $61
	rst  $38                                         ; $70ed: $ff
	inc  b                                           ; $70ee: $04
	rst  $30                                         ; $70ef: $f7
	add  b                                           ; $70f0: $80
	rst  $28                                         ; $70f1: $ef
	add  b                                           ; $70f2: $80
	ld   h, h                                        ; $70f3: $64
	add  b                                           ; $70f4: $80
	ld   bc, $9d80                                   ; $70f5: $01 $80 $9d
	inc  bc                                          ; $70f8: $03
	ld   d, a                                        ; $70f9: $57
	rst  $10                                         ; $70fa: $d7
	or   b                                           ; $70fb: $b0
	ldh  a, [$80]                                    ; $70fc: $f0 $80
	adc  $01                                         ; $70fe: $ce $01
	ld   [hl], $f6                                   ; $7100: $36 $f6
	add  b                                           ; $7102: $80
	adc  a                                           ; $7103: $8f
	add  b                                           ; $7104: $80
	rst  JumpTable                                         ; $7105: $df
	add  b                                           ; $7106: $80
	ret  nz                                          ; $7107: $c0

	add  b                                           ; $7108: $80
	sub  a                                           ; $7109: $97
	add  b                                           ; $710a: $80
	ld   sp, hl                                      ; $710b: $f9
	add  b                                           ; $710c: $80
	db   $fd                                         ; $710d: $fd
	add  b                                           ; $710e: $80
	ld   hl, sp-$80                                  ; $710f: $f8 $80
	ld   a, [$0680]                                  ; $7111: $fa $80 $06
	add  b                                           ; $7114: $80
	ld   e, $80                                      ; $7115: $1e $80
	ret  nz                                          ; $7117: $c0

	add  b                                           ; $7118: $80
	rst  $38                                         ; $7119: $ff
	add  b                                           ; $711a: $80
	rst  JumpTable                                         ; $711b: $df
	add  b                                           ; $711c: $80
	xor  $80                                         ; $711d: $ee $80
	pop  af                                          ; $711f: $f1
	add  b                                           ; $7120: $80
	db   $ed                                         ; $7121: $ed
	add  b                                           ; $7122: $80
	db   $dd                                         ; $7123: $dd
	add  b                                           ; $7124: $80
	ld   b, b                                        ; $7125: $40
	add  b                                           ; $7126: $80
	dec  e                                           ; $7127: $1d
	add  b                                           ; $7128: $80
	jp   Jump_08e_7f80                               ; $7129: $c3 $80 $7f


	add  b                                           ; $712c: $80
	ld   d, d                                        ; $712d: $52
	add  b                                           ; $712e: $80
	call nz, $dd80                                   ; $712f: $c4 $80 $dd

jr_08e_7132:
	add  b                                           ; $7132: $80
	sbc  h                                           ; $7133: $9c
	add  b                                           ; $7134: $80
	inc  hl                                          ; $7135: $23
	add  b                                           ; $7136: $80
	rst  $30                                         ; $7137: $f7
	add  b                                           ; $7138: $80
	ei                                               ; $7139: $fb
	nop                                              ; $713a: $00
	jp   Jump_08e_4086                               ; $713b: $c3 $86 $40


	add  l                                           ; $713e: $85
	ld   a, h                                        ; $713f: $7c
	ld   b, $41                                      ; $7140: $06 $41
	ld   bc, $3420                                   ; $7142: $01 $20 $34
	jr   nz, jr_08e_716a                             ; $7145: $20 $23

	ld   [hl+], a                                    ; $7147: $22
	add  a                                           ; $7148: $87
	ld   hl, $9801                                   ; $7149: $21 $01 $98
	adc  h                                           ; $714c: $8c
	add  c                                           ; $714d: $81
	dec  c                                           ; $714e: $0d
	nop                                              ; $714f: $00
	adc  l                                           ; $7150: $8d
	add  c                                           ; $7151: $81
	add  b                                           ; $7152: $80
	inc  bc                                          ; $7153: $03
	adc  a                                           ; $7154: $8f
	add  b                                           ; $7155: $80
	adc  a                                           ; $7156: $8f
	ld   c, $81                                      ; $7157: $0e $81
	adc  [hl]                                        ; $7159: $8e
	nop                                              ; $715a: $00
	nop                                              ; $715b: $00
	nop                                              ; $715c: $00
	nop                                              ; $715d: $00
	nop                                              ; $715e: $00
	nop                                              ; $715f: $00
	adc  d                                           ; $7160: $8a
	inc  bc                                          ; $7161: $03
	nop                                              ; $7162: $00
	rst  $38                                         ; $7163: $ff
	rst  $38                                         ; $7164: $ff
	nop                                              ; $7165: $00
	db   $e4                                         ; $7166: $e4
	nop                                              ; $7167: $00
	nop                                              ; $7168: $00
	rst  $38                                         ; $7169: $ff

jr_08e_716a:
	add  c                                           ; $716a: $81
	nop                                              ; $716b: $00
	add  b                                           ; $716c: $80
	ccf                                              ; $716d: $3f
	add  b                                           ; $716e: $80
	jr   nz, jr_08e_7171                             ; $716f: $20 $00

jr_08e_7171:
	rst  $38                                         ; $7171: $ff
	add  l                                           ; $7172: $85
	nop                                              ; $7173: $00
	nop                                              ; $7174: $00
	rst  $38                                         ; $7175: $ff
	add  c                                           ; $7176: $81
	nop                                              ; $7177: $00
	add  b                                           ; $7178: $80
	rst  $38                                         ; $7179: $ff
	add  b                                           ; $717a: $80
	nop                                              ; $717b: $00
	nop                                              ; $717c: $00
	rst  $38                                         ; $717d: $ff
	rst  $38                                         ; $717e: $ff
	nop                                              ; $717f: $00
	adc  b                                           ; $7180: $88
	nop                                              ; $7181: $00
	nop                                              ; $7182: $00
	rst  $38                                         ; $7183: $ff
	add  c                                           ; $7184: $81
	nop                                              ; $7185: $00
	nop                                              ; $7186: $00
	rst  $38                                         ; $7187: $ff
	adc  c                                           ; $7188: $89
	nop                                              ; $7189: $00
	nop                                              ; $718a: $00
	rst  $38                                         ; $718b: $ff
	add  c                                           ; $718c: $81
	nop                                              ; $718d: $00
	nop                                              ; $718e: $00
	rst  $38                                         ; $718f: $ff
	adc  c                                           ; $7190: $89
	nop                                              ; $7191: $00
	nop                                              ; $7192: $00
	rst  $38                                         ; $7193: $ff
	add  c                                           ; $7194: $81
	nop                                              ; $7195: $00
	nop                                              ; $7196: $00
	rst  $38                                         ; $7197: $ff
	adc  c                                           ; $7198: $89
	nop                                              ; $7199: $00
	nop                                              ; $719a: $00
	rst  $38                                         ; $719b: $ff
	add  c                                           ; $719c: $81
	nop                                              ; $719d: $00
	nop                                              ; $719e: $00
	rst  $38                                         ; $719f: $ff
	adc  c                                           ; $71a0: $89
	nop                                              ; $71a1: $00
	nop                                              ; $71a2: $00
	rst  $38                                         ; $71a3: $ff
	add  c                                           ; $71a4: $81
	nop                                              ; $71a5: $00
	nop                                              ; $71a6: $00
	rst  $38                                         ; $71a7: $ff
	adc  c                                           ; $71a8: $89
	nop                                              ; $71a9: $00
	nop                                              ; $71aa: $00
	rst  $38                                         ; $71ab: $ff
	add  c                                           ; $71ac: $81
	nop                                              ; $71ad: $00
	add  c                                           ; $71ae: $81
	jr   nz, jr_08e_7132                             ; $71af: $20 $81

	ld   a, [hl+]                                    ; $71b1: $2a
	inc  c                                           ; $71b2: $0c
	ld   l, $2a                                      ; $71b3: $2e $2a
	ld   hl, $1400                                   ; $71b5: $21 $00 $14
	inc  [hl]                                        ; $71b8: $34
	ld   a, d                                        ; $71b9: $7a
	ld   [hl+], a                                    ; $71ba: $22
	ld   h, h                                        ; $71bb: $64
	inc  c                                           ; $71bc: $0c
	ccf                                              ; $71bd: $3f
	nop                                              ; $71be: $00
	ld   [$8181], sp                                 ; $71bf: $08 $81 $81
	rlca                                             ; $71c2: $07
	and  c                                           ; $71c3: $a1
	add  c                                           ; $71c4: $81
	inc  c                                           ; $71c5: $0c
	ld   b, b                                        ; $71c6: $40
	rrca                                             ; $71c7: $0f
	ld   bc, $2733                                   ; $71c8: $01 $33 $27
	add  b                                           ; $71cb: $80

Call_08e_71cc:
	ld   b, c                                        ; $71cc: $41
	cp   $00                                         ; $71cd: $fe $00
	ld   [bc], a                                     ; $71cf: $02
	rst  $38                                         ; $71d0: $ff
	nop                                              ; $71d1: $00
	ld   [$3080], sp                                 ; $71d2: $08 $80 $30
	nop                                              ; $71d5: $00
	inc  sp                                          ; $71d6: $33
	add  b                                           ; $71d7: $80
	rlca                                             ; $71d8: $07
	add  b                                           ; $71d9: $80
	ccf                                              ; $71da: $3f
	ld   bc, $2c1c                                   ; $71db: $01 $1c $2c
	add  b                                           ; $71de: $80
	cpl                                              ; $71df: $2f
	inc  bc                                          ; $71e0: $03
	rrca                                             ; $71e1: $0f
	inc  a                                           ; $71e2: $3c
	jr   c, jr_08e_71e5                              ; $71e3: $38 $00

jr_08e_71e5:
	add  b                                           ; $71e5: $80
	rrca                                             ; $71e6: $0f
	dec  b                                           ; $71e7: $05
	ld   b, b                                        ; $71e8: $40
	add  a                                           ; $71e9: $87
	add  h                                           ; $71ea: $84
	adc  b                                           ; $71eb: $88
	adc  e                                           ; $71ec: $8b
	sub  c                                           ; $71ed: $91
	add  b                                           ; $71ee: $80
	ld   de, $d180                                   ; $71ef: $11 $80 $d1
	inc  bc                                          ; $71f2: $03
	sbc  $40                                         ; $71f3: $de $40
	rrca                                             ; $71f5: $0f
	nop                                              ; $71f6: $00
	add  b                                           ; $71f7: $80
	rst  $38                                         ; $71f8: $ff
	ld   b, $60                                      ; $71f9: $06 $60
	rst  $38                                         ; $71fb: $ff
	jr   nz, jr_08e_71fe                             ; $71fc: $20 $00

jr_08e_71fe:
	ret  nz                                          ; $71fe: $c0

	ld   b, b                                        ; $71ff: $40
	ld   a, a                                        ; $7200: $7f
	add  c                                           ; $7201: $81
	inc  b                                           ; $7202: $04
	inc  bc                                          ; $7203: $03
	adc  e                                           ; $7204: $8b
	nop                                              ; $7205: $00
	sbc  a                                           ; $7206: $9f
	nop                                              ; $7207: $00
	add  b                                           ; $7208: $80
	ld   a, a                                        ; $7209: $7f
	ld   b, $18                                      ; $720a: $06 $18
	ld   a, a                                        ; $720c: $7f
	add  hl, bc                                      ; $720d: $09
	ld   bc, $292f                                   ; $720e: $01 $2f $29
	ld   a, c                                        ; $7211: $79
	add  b                                           ; $7212: $80
	ld   c, b                                        ; $7213: $48
	inc  b                                           ; $7214: $04
	ld   b, h                                        ; $7215: $44
	rlc  b                                           ; $7216: $cb $00
	adc  a                                           ; $7218: $8f
	nop                                              ; $7219: $00
	add  b                                           ; $721a: $80
	ret  nz                                          ; $721b: $c0

	ld   [bc], a                                     ; $721c: $02
	nop                                              ; $721d: $00
	add  b                                           ; $721e: $80
	add  h                                           ; $721f: $84
	add  c                                           ; $7220: $81
	inc  bc                                          ; $7221: $03
	ld   [$8000], sp                                 ; $7222: $08 $00 $80
	add  a                                           ; $7225: $87
	ld   h, a                                        ; $7226: $67
	rst  $20                                         ; $7227: $e7
	inc  d                                           ; $7228: $14
	sub  h                                           ; $7229: $94
	nop                                              ; $722a: $00
	ld   b, b                                        ; $722b: $40
	add  c                                           ; $722c: $81
	ccf                                              ; $722d: $3f
	add  b                                           ; $722e: $80
	add  b                                           ; $722f: $80
	add  c                                           ; $7230: $81
	cp   a                                           ; $7231: $bf
	nop                                              ; $7232: $00
	ld   bc, $b580                                   ; $7233: $01 $80 $b5
	ld   bc, $3f81                                   ; $7236: $01 $81 $3f
	add  b                                           ; $7239: $80
	nop                                              ; $723a: $00
	dec  b                                           ; $723b: $05
	ld   b, c                                        ; $723c: $41
	ld   hl, $0636                                   ; $723d: $21 $36 $06
	add  hl, de                                      ; $7240: $19
	add  hl, hl                                      ; $7241: $29
	add  b                                           ; $7242: $80
	jr   nz, jr_08e_7252                             ; $7243: $20 $0d

	dec  [hl]                                        ; $7245: $35
	jr   nz, jr_08e_727e                             ; $7246: $20 $36

	jr   z, jr_08e_7275                              ; $7248: $28 $2b

	ccf                                              ; $724a: $3f
	or   $0e                                         ; $724b: $f6 $0e
	add  a                                           ; $724d: $87
	add  b                                           ; $724e: $80
	ld   b, b                                        ; $724f: $40
	ld   c, [hl]                                     ; $7250: $4e
	nop                                              ; $7251: $00

jr_08e_7252:
	ld   c, $80                                      ; $7252: $0e $80
	and  d                                           ; $7254: $a2
	ld   b, $fe                                      ; $7255: $06 $fe
	ld   c, $5a                                      ; $7257: $0e $5a
	ld   [bc], a                                     ; $7259: $02
	xor  d                                           ; $725a: $aa
	rst  $38                                         ; $725b: $ff
	db   $fd                                         ; $725c: $fd
	db   $fd                                         ; $725d: $fd
	nop                                              ; $725e: $00
	nop                                              ; $725f: $00
	db   $db                                         ; $7260: $db
	add  c                                           ; $7261: $81
	inc  l                                           ; $7262: $2c
	inc  bc                                          ; $7263: $03
	inc  c                                           ; $7264: $0c
	ccf                                              ; $7265: $3f
	inc  e                                           ; $7266: $1c
	cpl                                              ; $7267: $2f
	add  b                                           ; $7268: $80
	inc  l                                           ; $7269: $2c
	inc  bc                                          ; $726a: $03
	inc  c                                           ; $726b: $0c
	ccf                                              ; $726c: $3f
	dec  sp                                          ; $726d: $3b
	nop                                              ; $726e: $00
	add  b                                           ; $726f: $80
	inc  a                                           ; $7270: $3c
	nop                                              ; $7271: $00
	ld   e, l                                        ; $7272: $5d
	add  b                                           ; $7273: $80
	inc  bc                                          ; $7274: $03

jr_08e_7275:
	inc  bc                                          ; $7275: $03
	dec  bc                                          ; $7276: $0b
	adc  e                                           ; $7277: $8b
	dec  bc                                          ; $7278: $0b
	adc  e                                           ; $7279: $8b
	add  c                                           ; $727a: $81
	dec  bc                                          ; $727b: $0b
	inc  bc                                          ; $727c: $03
	adc  e                                           ; $727d: $8b

jr_08e_727e:
	dec  bc                                          ; $727e: $0b
	rrc  e                                           ; $727f: $cb $0b
	add  c                                           ; $7281: $81
	res  0, b                                        ; $7282: $cb $80
	inc  bc                                          ; $7284: $03
	adc  h                                           ; $7285: $8c
	adc  e                                           ; $7286: $8b
	add  b                                           ; $7287: $80
	inc  bc                                          ; $7288: $03
	adc  e                                           ; $7289: $8b
	adc  e                                           ; $728a: $8b
	inc  b                                           ; $728b: $04
	sub  a                                           ; $728c: $97
	dec  b                                           ; $728d: $05
	inc  b                                           ; $728e: $04
	sub  b                                           ; $728f: $90
	sub  a                                           ; $7290: $97
	add  b                                           ; $7291: $80
	sub  b                                           ; $7292: $90
	nop                                              ; $7293: $00
	sub  e                                           ; $7294: $93
	add  b                                           ; $7295: $80
	sub  b                                           ; $7296: $90
	ld   bc, $9093                                   ; $7297: $01 $93 $90
	add  c                                           ; $729a: $81
	sub  e                                           ; $729b: $93
	inc  c                                           ; $729c: $0c
	add  e                                           ; $729d: $83
	rlca                                             ; $729e: $07
	ccf                                              ; $729f: $3f
	ld   a, a                                        ; $72a0: $7f
	nop                                              ; $72a1: $00
	cp   $01                                         ; $72a2: $fe $01
	ld   a, l                                        ; $72a4: $7d
	ld   sp, hl                                      ; $72a5: $f9
	ld   a, c                                        ; $72a6: $79
	ld   b, c                                        ; $72a7: $41
	cp   l                                           ; $72a8: $bd
	ld   bc, $ff83                                   ; $72a9: $01 $83 $ff
	add  c                                           ; $72ac: $81
	nop                                              ; $72ad: $00
	nop                                              ; $72ae: $00
	ld   a, e                                        ; $72af: $7b
	add  c                                           ; $72b0: $81
	ld   [hl], d                                     ; $72b1: $72
	ld   [bc], a                                     ; $72b2: $02
	ld   d, [hl]                                     ; $72b3: $56
	ld   b, b                                        ; $72b4: $40
	ld   l, [hl]                                     ; $72b5: $6e
	add  e                                           ; $72b6: $83
	ld   l, a                                        ; $72b7: $6f
	nop                                              ; $72b8: $00
	ld   e, $81                                      ; $72b9: $1e $81
	nop                                              ; $72bb: $00
	nop                                              ; $72bc: $00
	ld   b, b                                        ; $72bd: $40
	add  b                                           ; $72be: $80

jr_08e_72bf:
	ld   c, h                                        ; $72bf: $4c
	inc  bc                                          ; $72c0: $03
	ld   b, b                                        ; $72c1: $40
	add  b                                           ; $72c2: $80
	ld   a, $81                                      ; $72c3: $3e $81
	add  c                                           ; $72c5: $81
	cp   a                                           ; $72c6: $bf
	ld   [bc], a                                     ; $72c7: $02
	add  a                                           ; $72c8: $87
	add  b                                           ; $72c9: $80
	ld   a, b                                        ; $72ca: $78
	db   $fd                                         ; $72cb: $fd
	nop                                              ; $72cc: $00
	ld   bc, $3cc2                                   ; $72cd: $01 $c2 $3c
	add  b                                           ; $72d0: $80
	nop                                              ; $72d1: $00
	add  d                                           ; $72d2: $82
	inc  a                                           ; $72d3: $3c
	ld   [bc], a                                     ; $72d4: $02
	jr   nc, @+$3e                                   ; $72d5: $30 $3c

	dec  a                                           ; $72d7: $3d
	add  b                                           ; $72d8: $80
	inc  a                                           ; $72d9: $3c
	inc  b                                           ; $72da: $04
	ccf                                              ; $72db: $3f
	jr   nc, jr_08e_731d                             ; $72dc: $30 $3f

	rst  JumpTable                                         ; $72de: $df
	ret  nz                                          ; $72df: $c0

	add  b                                           ; $72e0: $80
	add  b                                           ; $72e1: $80
	add  b                                           ; $72e2: $80
	add  a                                           ; $72e3: $87
	inc  b                                           ; $72e4: $04
	add  b                                           ; $72e5: $80
	adc  a                                           ; $72e6: $8f
	rst  JumpTable                                         ; $72e7: $df
	nop                                              ; $72e8: $00
	ret                                              ; $72e9: $c9


	add  b                                           ; $72ea: $80
	db   $10                                         ; $72eb: $10
	inc  bc                                          ; $72ec: $03
	ldh  a, [$09]                                    ; $72ed: $f0 $09
	rst  $38                                         ; $72ef: $ff
	rst  JumpTable                                         ; $72f0: $df
	add  c                                           ; $72f1: $81

jr_08e_72f2:
	nop                                              ; $72f2: $00
	add  b                                           ; $72f3: $80
	rst  ToBoot                                         ; $72f4: $c7
	dec  b                                           ; $72f5: $05
	nop                                              ; $72f6: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72f7: $cf
	rst  JumpTable                                         ; $72f8: $df
	ld   b, b                                        ; $72f9: $40
	add  hl, bc                                      ; $72fa: $09
	db   $10                                         ; $72fb: $10
	add  b                                           ; $72fc: $80
	ld   [hl], b                                     ; $72fd: $70
	ld   [bc], a                                     ; $72fe: $02
	ld   l, c                                        ; $72ff: $69
	rst  $38                                         ; $7300: $ff
	rst  JumpTable                                         ; $7301: $df
	add  c                                           ; $7302: $81
	nop                                              ; $7303: $00
	add  b                                           ; $7304: $80
	rst  ToBoot                                         ; $7305: $c7
	dec  b                                           ; $7306: $05
	nop                                              ; $7307: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7308: $cf
	rst  JumpTable                                         ; $7309: $df
	ld   b, b                                        ; $730a: $40
	add  hl, bc                                      ; $730b: $09
	db   $10                                         ; $730c: $10
	add  b                                           ; $730d: $80
	ld   [hl], b                                     ; $730e: $70
	dec  b                                           ; $730f: $05
	ld   l, c                                        ; $7310: $69
	rst  $38                                         ; $7311: $ff
	call nz, $0003                                   ; $7312: $c4 $03 $00
	rlca                                             ; $7315: $07
	add  b                                           ; $7316: $80
	ret  nz                                          ; $7317: $c0

	nop                                              ; $7318: $00
	rra                                              ; $7319: $1f
	add  b                                           ; $731a: $80
	rst  JumpTable                                         ; $731b: $df
	ld   [bc], a                                     ; $731c: $02

jr_08e_731d:
	ld   e, a                                        ; $731d: $5f
	nop                                              ; $731e: $00
	rra                                              ; $731f: $1f
	add  b                                           ; $7320: $80
	ld   a, a                                        ; $7321: $7f
	dec  b                                           ; $7322: $05
	ld   h, b                                        ; $7323: $60
	rst  $38                                         ; $7324: $ff
	nop                                              ; $7325: $00
	rst  $38                                         ; $7326: $ff
	nop                                              ; $7327: $00
	rst  $38                                         ; $7328: $ff
	add  b                                           ; $7329: $80
	nop                                              ; $732a: $00
	add  d                                           ; $732b: $82
	rst  $38                                         ; $732c: $ff
	nop                                              ; $732d: $00
	ld   bc, $ff81                                   ; $732e: $01 $81 $ff
	inc  b                                           ; $7331: $04
	ld   bc, $31ff                                   ; $7332: $01 $ff $31
	cpl                                              ; $7335: $2f
	inc  l                                           ; $7336: $2c
	add  c                                           ; $7337: $81
	cpl                                              ; $7338: $2f
	inc  bc                                          ; $7339: $03
	add  hl, hl                                      ; $733a: $29
	cpl                                              ; $733b: $2f
	dec  sp                                          ; $733c: $3b
	jr   nz, jr_08e_72bf                             ; $733d: $20 $80

	ccf                                              ; $733f: $3f
	add  d                                           ; $7340: $82
	scf                                              ; $7341: $37
	ld   bc, $981f                                   ; $7342: $01 $1f $98
	add  b                                           ; $7345: $80
	sbc  a                                           ; $7346: $9f
	add  d                                           ; $7347: $82
	sbc  b                                           ; $7348: $98
	ld   bc, $1f9b                                   ; $7349: $01 $9b $1f
	add  b                                           ; $734c: $80
	db   $fc                                         ; $734d: $fc
	inc  b                                           ; $734e: $04
	sbc  h                                           ; $734f: $9c
	sbc  $d1                                         ; $7350: $de $d1
	ret  nc                                          ; $7352: $d0

	and  b                                           ; $7353: $a0
	add  c                                           ; $7354: $81
	nop                                              ; $7355: $00
	dec  b                                           ; $7356: $05
	rlca                                             ; $7357: $07
	ld   [bc], a                                     ; $7358: $02

jr_08e_7359:
	dec  b                                           ; $7359: $05
	rlca                                             ; $735a: $07
	nop                                              ; $735b: $00
	rlca                                             ; $735c: $07
	add  c                                           ; $735d: $81
	nop                                              ; $735e: $00
	add  c                                           ; $735f: $81
	rlca                                             ; $7360: $07
	nop                                              ; $7361: $00
	rst  $20                                         ; $7362: $e7
	add  c                                           ; $7363: $81
	nop                                              ; $7364: $00
	dec  b                                           ; $7365: $05
	rst  $38                                         ; $7366: $ff
	ld   [$fff7], sp                                 ; $7367: $08 $f7 $ff
	nop                                              ; $736a: $00
	rst  $38                                         ; $736b: $ff
	add  b                                           ; $736c: $80
	nop                                              ; $736d: $00
	nop                                              ; $736e: $00
	jr   nz, jr_08e_72f2                             ; $736f: $20 $81

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7371: $cf
	nop                                              ; $7372: $00
	rst  $28                                         ; $7373: $ef
	add  c                                           ; $7374: $81
	nop                                              ; $7375: $00
	dec  b                                           ; $7376: $05
	rst  $38                                         ; $7377: $ff
	jr   nz, jr_08e_7359                             ; $7378: $20 $df

	rst  $38                                         ; $737a: $ff
	nop                                              ; $737b: $00
	rst  $38                                         ; $737c: $ff
	add  b                                           ; $737d: $80
	nop                                              ; $737e: $00
	nop                                              ; $737f: $00
	ld   b, b                                        ; $7380: $40
	add  c                                           ; $7381: $81
	sbc  a                                           ; $7382: $9f
	nop                                              ; $7383: $00
	rst  JumpTable                                         ; $7384: $df
	add  c                                           ; $7385: $81
	nop                                              ; $7386: $00
	inc  c                                           ; $7387: $0c
	jp   z, Jump_08e_4080                            ; $7388: $ca $80 $40

	ret  nz                                          ; $738b: $c0

	ld   bc, $07c0                                   ; $738c: $01 $c0 $07
	nop                                              ; $738f: $00
	bit  1, b                                        ; $7390: $cb $48
	ld   b, b                                        ; $7392: $40
	ld   c, a                                        ; $7393: $4f
	add  b                                           ; $7394: $80
	add  d                                           ; $7395: $82
	nop                                              ; $7396: $00
	add  c                                           ; $7397: $81
	rst  $38                                         ; $7398: $ff
	add  b                                           ; $7399: $80
	nop                                              ; $739a: $00
	ld   [bc], a                                     ; $739b: $02
	cp   $00                                         ; $739c: $fe $00
	cp   $80                                         ; $739e: $fe $80
	nop                                              ; $73a0: $00
	ld   bc, $01fe                                   ; $73a1: $01 $fe $01
	add  d                                           ; $73a4: $82
	nop                                              ; $73a5: $00
	add  c                                           ; $73a6: $81
	rst  $38                                         ; $73a7: $ff
	inc  b                                           ; $73a8: $04
	add  b                                           ; $73a9: $80
	nop                                              ; $73aa: $00
	ld   a, a                                        ; $73ab: $7f
	nop                                              ; $73ac: $00
	ld   a, a                                        ; $73ad: $7f
	add  b                                           ; $73ae: $80
	nop                                              ; $73af: $00
	nop                                              ; $73b0: $00
	ld   a, a                                        ; $73b1: $7f
	add  e                                           ; $73b2: $83
	nop                                              ; $73b3: $00
	add  c                                           ; $73b4: $81
	rst  $38                                         ; $73b5: $ff
	inc  b                                           ; $73b6: $04
	ld   bc, $fc00                                   ; $73b7: $01 $00 $fc
	nop                                              ; $73ba: $00
	db   $fc                                         ; $73bb: $fc
	add  b                                           ; $73bc: $80
	nop                                              ; $73bd: $00
	ld   bc, $02fc                                   ; $73be: $01 $fc $02
	add  d                                           ; $73c1: $82
	nop                                              ; $73c2: $00
	add  c                                           ; $73c3: $81
	rst  $38                                         ; $73c4: $ff
	add  b                                           ; $73c5: $80
	nop                                              ; $73c6: $00
	ld   [bc], a                                     ; $73c7: $02
	rst  $38                                         ; $73c8: $ff
	nop                                              ; $73c9: $00
	rst  $38                                         ; $73ca: $ff
	add  b                                           ; $73cb: $80
	nop                                              ; $73cc: $00
	nop                                              ; $73cd: $00
	rst  $38                                         ; $73ce: $ff
	add  e                                           ; $73cf: $83
	nop                                              ; $73d0: $00
	add  c                                           ; $73d1: $81
	rst  $38                                         ; $73d2: $ff
	ld   [$0002], sp                                 ; $73d3: $08 $02 $00
	jp   hl                                          ; $73d6: $e9


	nop                                              ; $73d7: $00
	ret  nz                                          ; $73d8: $c0

	nop                                              ; $73d9: $00
	ld   bc, $14c1                                   ; $73da: $01 $c1 $14
	add  d                                           ; $73dd: $82
	nop                                              ; $73de: $00
	add  c                                           ; $73df: $81
	rst  $38                                         ; $73e0: $ff
	dec  b                                           ; $73e1: $05
	rrca                                             ; $73e2: $0f
	rlca                                             ; $73e3: $07
	rst  $28                                         ; $73e4: $ef
	inc  bc                                          ; $73e5: $03
	db   $10                                         ; $73e6: $10
	inc  bc                                          ; $73e7: $03
	add  b                                           ; $73e8: $80
	db   $e3                                         ; $73e9: $e3
	nop                                              ; $73ea: $00
	ld   [$0082], sp                                 ; $73eb: $08 $82 $00
	add  e                                           ; $73ee: $83
	rst  $38                                         ; $73ef: $ff
	add  b                                           ; $73f0: $80
	ret  nz                                          ; $73f1: $c0

	nop                                              ; $73f2: $00
	dec  d                                           ; $73f3: $15
	add  c                                           ; $73f4: $81
	ret  nz                                          ; $73f5: $c0

	nop                                              ; $73f6: $00
	ld   a, [hl+]                                    ; $73f7: $2a
	add  d                                           ; $73f8: $82
	nop                                              ; $73f9: $00
	add  e                                           ; $73fa: $83
	db   $fc                                         ; $73fb: $fc
	ld   [bc], a                                     ; $73fc: $02
	ld   a, h                                        ; $73fd: $7c
	inc  a                                           ; $73fe: $3c
	nop                                              ; $73ff: $00
	add  c                                           ; $7400: $81
	inc  a                                           ; $7401: $3c
	ld   [bc], a                                     ; $7402: $02
	add  b                                           ; $7403: $80
	nop                                              ; $7404: $00
	ret  c                                           ; $7405: $d8

	add  e                                           ; $7406: $83
	sbc  d                                           ; $7407: $9a
	ld   bc, $9ada                                   ; $7408: $01 $da $9a
	add  d                                           ; $740b: $82
	ld   a, [$0200]                                  ; $740c: $fa $00 $02
	add  b                                           ; $740f: $80
	cp   $82                                         ; $7410: $fe $82
	nop                                              ; $7412: $00
	add  l                                           ; $7413: $85
	rst  $38                                         ; $7414: $ff
	nop                                              ; $7415: $00
	nop                                              ; $7416: $00
	add  c                                           ; $7417: $81
	rst  $38                                         ; $7418: $ff
	add  e                                           ; $7419: $83
	scf                                              ; $741a: $37
	nop                                              ; $741b: $00
	or   a                                           ; $741c: $b7
	add  b                                           ; $741d: $80
	add  b                                           ; $741e: $80
	dec  c                                           ; $741f: $0d
	adc  c                                           ; $7420: $89
	cp   a                                           ; $7421: $bf
	or   [hl]                                        ; $7422: $b6
	add  b                                           ; $7423: $80
	add  hl, bc                                      ; $7424: $09
	cp   a                                           ; $7425: $bf
	or   [hl]                                        ; $7426: $b6
	add  b                                           ; $7427: $80
	sbc  b                                           ; $7428: $98
	jp   c, $ded2                                    ; $7429: $da $d2 $de

	rst  JumpTable                                         ; $742c: $df
	reti                                             ; $742d: $d9


	add  c                                           ; $742e: $81
	ld   e, e                                        ; $742f: $5b
	rrca                                             ; $7430: $0f
	ei                                               ; $7431: $fb
	jp   hl                                          ; $7432: $e9


	ld   a, [de]                                     ; $7433: $1a
	inc  e                                           ; $7434: $1c
	ldh  a, [$f7]                                    ; $7435: $f0 $f7
	rlca                                             ; $7437: $07
	ldh  [rP1], a                                    ; $7438: $e0 $00
	ld   bc, $0007                                   ; $743a: $01 $07 $00
	rlca                                             ; $743d: $07
	nop                                              ; $743e: $00
	rlca                                             ; $743f: $07
	ld   b, $80                                      ; $7440: $06 $80
	rlca                                             ; $7442: $07
	dec  c                                           ; $7443: $0d
	nop                                              ; $7444: $00
	ld   bc, $0007                                   ; $7445: $01 $07 $00
	rlca                                             ; $7448: $07
	add  hl, bc                                      ; $7449: $09
	nop                                              ; $744a: $00
	ld   [bc], a                                     ; $744b: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $744c: $cf
	nop                                              ; $744d: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $744e: $cf
	nop                                              ; $744f: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7450: $cf
	call $ef80                                       ; $7451: $cd $80 $ef

Call_08e_7454:
	dec  c                                           ; $7454: $0d
	nop                                              ; $7455: $00
	ld   [bc], a                                     ; $7456: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7457: $cf
	nop                                              ; $7458: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7459: $cf
	ld   [hl-], a                                    ; $745a: $32
	nop                                              ; $745b: $00
	inc  b                                           ; $745c: $04
	sbc  a                                           ; $745d: $9f
	nop                                              ; $745e: $00
	sbc  a                                           ; $745f: $9f
	nop                                              ; $7460: $00
	sbc  a                                           ; $7461: $9f
	sbc  e                                           ; $7462: $9b
	add  b                                           ; $7463: $80
	rst  JumpTable                                         ; $7464: $df
	rlca                                             ; $7465: $07
	nop                                              ; $7466: $00
	inc  b                                           ; $7467: $04
	sbc  a                                           ; $7468: $9f
	nop                                              ; $7469: $00
	sbc  a                                           ; $746a: $9f
	dec  de                                          ; $746b: $1b
	ld   b, b                                        ; $746c: $40
	ld   c, b                                        ; $746d: $48
	add  c                                           ; $746e: $81
	ld   c, a                                        ; $746f: $4f
	add  c                                           ; $7470: $81
	ld   c, [hl]                                     ; $7471: $4e
	add  b                                           ; $7472: $80
	adc  $81                                         ; $7473: $ce $81
	ld   c, [hl]                                     ; $7475: $4e
	inc  b                                           ; $7476: $04
	ld   c, c                                        ; $7477: $49
	ld   c, a                                        ; $7478: $4f
	add  c                                           ; $7479: $81
	nop                                              ; $747a: $00
	ld   b, d                                        ; $747b: $42
	add  c                                           ; $747c: $81
	rst  $38                                         ; $747d: $ff
	nop                                              ; $747e: $00
	nop                                              ; $747f: $00
	add  l                                           ; $7480: $85
	ld   b, d                                        ; $7481: $42
	inc  b                                           ; $7482: $04
	cp   l                                           ; $7483: $bd
	rst  $38                                         ; $7484: $ff
	cp   l                                           ; $7485: $bd
	nop                                              ; $7486: $00
	db   $10                                         ; $7487: $10
	add  c                                           ; $7488: $81
	rst  $38                                         ; $7489: $ff
	nop                                              ; $748a: $00
	nop                                              ; $748b: $00
	add  l                                           ; $748c: $85
	db   $10                                         ; $748d: $10
	inc  b                                           ; $748e: $04
	rst  $28                                         ; $748f: $ef
	rst  $38                                         ; $7490: $ff
	rst  $28                                         ; $7491: $ef
	nop                                              ; $7492: $00
	add  h                                           ; $7493: $84
	add  c                                           ; $7494: $81
	rst  $38                                         ; $7495: $ff
	nop                                              ; $7496: $00
	nop                                              ; $7497: $00
	add  l                                           ; $7498: $85
	add  h                                           ; $7499: $84
	inc  b                                           ; $749a: $04
	ld   a, e                                        ; $749b: $7b
	rst  $38                                         ; $749c: $ff
	ld   a, e                                        ; $749d: $7b
	nop                                              ; $749e: $00
	ld   hl, $ff81                                   ; $749f: $21 $81 $ff
	nop                                              ; $74a2: $00
	nop                                              ; $74a3: $00
	add  l                                           ; $74a4: $85
	ld   hl, $de04                                   ; $74a5: $21 $04 $de
	rst  $38                                         ; $74a8: $ff
	jp   nz, $1400                                   ; $74a9: $c2 $00 $14

	add  b                                           ; $74ac: $80
	jp   hl                                          ; $74ad: $e9


	ld   bc, $00ff                                   ; $74ae: $01 $ff $00
	add  l                                           ; $74b1: $85
	ld   [$f700], sp                                 ; $74b2: $08 $00 $f7
	add  b                                           ; $74b5: $80
	rst  $38                                         ; $74b6: $ff
	ld   bc, $4200                                   ; $74b7: $01 $00 $42
	add  c                                           ; $74ba: $81
	db   $e3                                         ; $74bb: $e3
	nop                                              ; $74bc: $00
	inc  d                                           ; $74bd: $14
	add  l                                           ; $74be: $85
	ld   b, d                                        ; $74bf: $42
	ld   [$ffbd], sp                                 ; $74c0: $08 $bd $ff
	sub  a                                           ; $74c3: $97
	nop                                              ; $74c4: $00
	dec  d                                           ; $74c5: $15
	ret  nz                                          ; $74c6: $c0

	rst  $28                                         ; $74c7: $ef
	rst  $38                                         ; $74c8: $ff
	nop                                              ; $74c9: $00
	add  l                                           ; $74ca: $85
	db   $10                                         ; $74cb: $10
	inc  b                                           ; $74cc: $04
	rst  $28                                         ; $74cd: $ef
	rst  $38                                         ; $74ce: $ff
	ld   l, a                                        ; $74cf: $6f
	nop                                              ; $74d0: $00
	inc  b                                           ; $74d1: $04
	add  b                                           ; $74d2: $80
	ccf                                              ; $74d3: $3f
	ld   bc, $40bf                                   ; $74d4: $01 $bf $40
	add  l                                           ; $74d7: $85
	add  h                                           ; $74d8: $84
	inc  b                                           ; $74d9: $04
	ld   a, e                                        ; $74da: $7b
	rst  $38                                         ; $74db: $ff
	ld   a, e                                        ; $74dc: $7b
	nop                                              ; $74dd: $00
	ld   hl, $ff81                                   ; $74de: $21 $81 $ff
	nop                                              ; $74e1: $00
	nop                                              ; $74e2: $00
	add  l                                           ; $74e3: $85
	ld   hl, $de04                                   ; $74e4: $21 $04 $de
	rst  $38                                         ; $74e7: $ff
	sbc  $00                                         ; $74e8: $de $00
	add  hl, bc                                      ; $74ea: $09
	add  c                                           ; $74eb: $81
	rst  $38                                         ; $74ec: $ff
	nop                                              ; $74ed: $00
	ld   bc, $0885                                   ; $74ee: $01 $85 $08
	ld   b, $f7                                      ; $74f1: $06 $f7
	rst  $38                                         ; $74f3: $ff
	rst  $30                                         ; $74f4: $f7
	nop                                              ; $74f5: $00
	ld   bc, $e9ef                                   ; $74f6: $01 $ef $e9
	add  c                                           ; $74f9: $81
	rst  $28                                         ; $74fa: $ef
	add  b                                           ; $74fb: $80
	rrca                                             ; $74fc: $0f
	add  h                                           ; $74fd: $84
	rst  $28                                         ; $74fe: $ef
	inc  b                                           ; $74ff: $04
	add  sp, $00                                     ; $7500: $e8 $00
	rst  $20                                         ; $7502: $e7

Call_08e_7503:
	ret  z                                           ; $7503: $c8

	add  $89                                         ; $7504: $c6 $89
	adc  $06                                         ; $7506: $ce $06
	pop  bc                                          ; $7508: $c1
	rlca                                             ; $7509: $07
	ld   [bc], a                                     ; $750a: $02
	nop                                              ; $750b: $00
	rlca                                             ; $750c: $07
	inc  bc                                          ; $750d: $03
	nop                                              ; $750e: $00
	add  b                                           ; $750f: $80
	inc  bc                                          ; $7510: $03
	add  b                                           ; $7511: $80
	nop                                              ; $7512: $00
	add  b                                           ; $7513: $80
	inc  b                                           ; $7514: $04
	add  b                                           ; $7515: $80
	inc  bc                                          ; $7516: $03
	rlca                                             ; $7517: $07
	nop                                              ; $7518: $00
	ld   a, [bc]                                     ; $7519: $0a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $751a: $cf
	xor  h                                           ; $751b: $ac
	nop                                              ; $751c: $00
	ld   e, l                                        ; $751d: $5d
	adc  [hl]                                        ; $751e: $8e
	add  d                                           ; $751f: $82
	add  b                                           ; $7520: $80
	adc  [hl]                                        ; $7521: $8e
	add  b                                           ; $7522: $80
	nop                                              ; $7523: $00
	ld   bc, $0151                                   ; $7524: $01 $51 $01
	add  b                                           ; $7527: $80
	sbc  $04                                         ; $7528: $de $04
	ld   d, b                                        ; $752a: $50
	inc  b                                           ; $752b: $04

jr_08e_752c:
	sbc  a                                           ; $752c: $9f
	ld   b, h                                        ; $752d: $44
	nop                                              ; $752e: $00
	add  d                                           ; $752f: $82
	ld   a, a                                        ; $7530: $7f
	nop                                              ; $7531: $00
	nop                                              ; $7532: $00
	add  l                                           ; $7533: $85
	ld   a, a                                        ; $7534: $7f
	inc  bc                                          ; $7535: $03
	or   [hl]                                        ; $7536: $b6
	ld   c, [hl]                                     ; $7537: $4e
	adc  [hl]                                        ; $7538: $8e
	ld   c, $82                                      ; $7539: $0e $82

jr_08e_753b:
	adc  $00                                         ; $753b: $ce $00
	ld   c, [hl]                                     ; $753d: $4e
	add  c                                           ; $753e: $81
	adc  $04                                         ; $753f: $ce $04
	ret                                              ; $7541: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7542: $cf
	ret  z                                           ; $7543: $c8

	adc  $3a                                         ; $7544: $ce $3a
	adc  c                                           ; $7546: $89
	ld   b, d                                        ; $7547: $42
	inc  bc                                          ; $7548: $03
	cp   l                                           ; $7549: $bd
	rst  $38                                         ; $754a: $ff
	nop                                              ; $754b: $00
	ld   b, d                                        ; $754c: $42
	adc  b                                           ; $754d: $88
	db   $10                                         ; $754e: $10
	ld   b, $3e                                      ; $754f: $06 $3e
	nop                                              ; $7551: $00
	ret  nz                                          ; $7552: $c0

	pop  bc                                          ; $7553: $c1
	inc  c                                           ; $7554: $0c
	ld   bc, $89b6                                   ; $7555: $01 $b6 $89
	add  h                                           ; $7558: $84
	inc  b                                           ; $7559: $04
	ld   a, e                                        ; $755a: $7b
	rst  $38                                         ; $755b: $ff
	add  b                                           ; $755c: $80
	add  h                                           ; $755d: $84
	and  c                                           ; $755e: $a1
	add  a                                           ; $755f: $87
	ld   hl, $ff00                                   ; $7560: $21 $00 $ff
	add  c                                           ; $7563: $81
	nop                                              ; $7564: $00
	ld   bc, $00ff                                   ; $7565: $01 $ff $00
	adc  b                                           ; $7568: $88
	ld   [$ff00], sp                                 ; $7569: $08 $00 $ff
	add  c                                           ; $756c: $81
	nop                                              ; $756d: $00
	ld   [bc], a                                     ; $756e: $02
	db   $fc                                         ; $756f: $fc
	inc  b                                           ; $7570: $04
	ld   b, l                                        ; $7571: $45
	add  a                                           ; $7572: $87
	ld   b, d                                        ; $7573: $42
	ld   b, $c2                                      ; $7574: $06 $c2
	ld   b, d                                        ; $7576: $42
	dec  a                                           ; $7577: $3d
	ld   a, a                                        ; $7578: $7f
	nop                                              ; $7579: $00
	ld   b, d                                        ; $757a: $42
	sub  b                                           ; $757b: $90
	add  a                                           ; $757c: $87
	stop                                             ; $757d: $10 $00
	rst  $38                                         ; $757f: $ff
	add  c                                           ; $7580: $81
	nop                                              ; $7581: $00
	add  b                                           ; $7582: $80
	rst  $38                                         ; $7583: $ff
	nop                                              ; $7584: $00
	ld   a, e                                        ; $7585: $7b
	add  a                                           ; $7586: $87
	add  h                                           ; $7587: $84
	nop                                              ; $7588: $00
	rst  $38                                         ; $7589: $ff
	add  c                                           ; $758a: $81
	nop                                              ; $758b: $00
	add  b                                           ; $758c: $80
	cp   $00                                         ; $758d: $fe $00
	sbc  $87                                         ; $758f: $de $87
	ld   hl, $ff00                                   ; $7591: $21 $00 $ff
	add  c                                           ; $7594: $81
	nop                                              ; $7595: $00
	ld   [bc], a                                     ; $7596: $02
	ld   a, a                                        ; $7597: $7f
	nop                                              ; $7598: $00
	adc  b                                           ; $7599: $88
	add  a                                           ; $759a: $87
	ld   [$ff00], sp                                 ; $759b: $08 $00 $ff
	add  c                                           ; $759e: $81
	nop                                              ; $759f: $00
	inc  bc                                          ; $75a0: $03
	rst  $38                                         ; $75a1: $ff
	nop                                              ; $75a2: $00
	ld   hl, sp-$11                                  ; $75a3: $f8 $ef
	add  b                                           ; $75a5: $80
	rrca                                             ; $75a6: $0f
	add  l                                           ; $75a7: $85
	add  sp, $00                                     ; $75a8: $e8 $00
	jr   z, jr_08e_752c                              ; $75aa: $28 $80

	ld   [$2880], sp                                 ; $75ac: $08 $80 $28
	ld   bc, $e8e7                                   ; $75af: $01 $e7 $e8
	add  b                                           ; $75b2: $80
	ld   [$2a80], a                                  ; $75b3: $ea $80 $2a
	add  b                                           ; $75b6: $80
	jr   z, jr_08e_753b                              ; $75b7: $28 $82

	ld   a, [hl+]                                    ; $75b9: $2a
	nop                                              ; $75ba: $00
	ld   a, [bc]                                     ; $75bb: $0a
	add  c                                           ; $75bc: $81
	ld   a, [hl+]                                    ; $75bd: $2a
	nop                                              ; $75be: $00
	ldh  [$80], a                                    ; $75bf: $e0 $80
	inc  b                                           ; $75c1: $04
	inc  b                                           ; $75c2: $04
	inc  bc                                          ; $75c3: $03
	rlca                                             ; $75c4: $07
	nop                                              ; $75c5: $00

jr_08e_75c6:
	rlca                                             ; $75c6: $07
	inc  b                                           ; $75c7: $04
	add  d                                           ; $75c8: $82
	rlca                                             ; $75c9: $07
	dec  bc                                          ; $75ca: $0b
	ld   b, $07                                      ; $75cb: $06 $07
	ld   bc, $3f00                                   ; $75cd: $01 $00 $3f
	ld   d, c                                        ; $75d0: $51
	ld   bc, $ffde                                   ; $75d1: $01 $de $ff
	jr   nz, @-$1f                                   ; $75d4: $20 $df

	ld   [hl], c                                     ; $75d6: $71
	add  b                                           ; $75d7: $80
	rst  $38                                         ; $75d8: $ff
	ld   [bc], a                                     ; $75d9: $02
	xor  a                                           ; $75da: $af
	rst  $38                                         ; $75db: $ff
	ld   [hl], b                                     ; $75dc: $70
	add  b                                           ; $75dd: $80
	rst  $38                                         ; $75de: $ff
	add  b                                           ; $75df: $80
	nop                                              ; $75e0: $00
	add  c                                           ; $75e1: $81
	ld   a, a                                        ; $75e2: $7f
	add  h                                           ; $75e3: $84
	rst  $38                                         ; $75e4: $ff
	nop                                              ; $75e5: $00
	ld   a, a                                        ; $75e6: $7f
	add  d                                           ; $75e7: $82
	rst  $38                                         ; $75e8: $ff
	ld   bc, $4900                                   ; $75e9: $01 $00 $49
	add  a                                           ; $75ec: $87
	adc  $06                                         ; $75ed: $ce $06
	ret                                              ; $75ef: $c9


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75f0: $cf
	ret  z                                           ; $75f1: $c8

	adc  $4e                                         ; $75f2: $ce $4e
	adc  $ba                                         ; $75f4: $ce $ba
	add  a                                           ; $75f6: $87
	ld   b, d                                        ; $75f7: $42
	ld   [bc], a                                     ; $75f8: $02
	cp   l                                           ; $75f9: $bd
	rst  $38                                         ; $75fa: $ff
	nop                                              ; $75fb: $00
	add  c                                           ; $75fc: $81
	ld   b, d                                        ; $75fd: $42
	nop                                              ; $75fe: $00
	ld   a, $84                                      ; $75ff: $3e $84
	dec  c                                           ; $7601: $0d
	nop                                              ; $7602: $00
	ld   bc, $0f80                                   ; $7603: $01 $80 $0f
	add  b                                           ; $7606: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7607: $cf

jr_08e_7608:
	nop                                              ; $7608: $00
	inc  c                                           ; $7609: $0c
	add  c                                           ; $760a: $81
	rrca                                             ; $760b: $0f
	nop                                              ; $760c: $00
	jr   c, @-$7b                                    ; $760d: $38 $83

	add  h                                           ; $760f: $84
	add  d                                           ; $7610: $82
	cp   $03                                         ; $7611: $fe $03
	rst  $38                                         ; $7613: $ff
	cp   $7e                                         ; $7614: $fe $7e
	cp   $80                                         ; $7616: $fe $80
	rst  $38                                         ; $7618: $ff
	ld   a, [bc]                                     ; $7619: $0a
	cp   $ff                                         ; $761a: $fe $ff
	cp   b                                           ; $761c: $b8
	sbc  b                                           ; $761d: $98
	jr   jr_08e_763f                                 ; $761e: $18 $1f

	rst  ToBoot                                         ; $7620: $c7
	ret  nz                                          ; $7621: $c0

	rra                                              ; $7622: $1f
	ret  nz                                          ; $7623: $c0

	ld   a, [de]                                     ; $7624: $1a
	add  b                                           ; $7625: $80
	adc  d                                           ; $7626: $8a
	ld   b, $4a                                      ; $7627: $06 $4a
	ld   d, b                                        ; $7629: $50
	db   $10                                         ; $762a: $10
	inc  d                                           ; $762b: $14
	db   $fc                                         ; $762c: $fc
	db   $ec                                         ; $762d: $ec
	call z, $c480                                    ; $762e: $cc $80 $c4
	inc  b                                           ; $7631: $04
	inc  e                                           ; $7632: $1c
	jr   @-$2e                                       ; $7633: $18 $d0

	ld   [$80c4], sp                                 ; $7635: $08 $c4 $80
	adc  b                                           ; $7638: $88
	inc  bc                                          ; $7639: $03
	sub  b                                           ; $763a: $90
	ld   d, h                                        ; $763b: $54
	ld   b, h                                        ; $763c: $44
	ld   a, l                                        ; $763d: $7d
	add  e                                           ; $763e: $83

jr_08e_763f:
	ld   b, d                                        ; $763f: $42
	nop                                              ; $7640: $00
	jr   nc, jr_08e_75c6                             ; $7641: $30 $83

	ld   a, a                                        ; $7643: $7f
	nop                                              ; $7644: $00
	nop                                              ; $7645: $00
	add  c                                           ; $7646: $81
	ccf                                              ; $7647: $3f
	nop                                              ; $7648: $00
	add  a                                           ; $7649: $87
	add  e                                           ; $764a: $83
	di                                               ; $764b: $f3
	add  b                                           ; $764c: $80
	add  b                                           ; $764d: $80
	add  b                                           ; $764e: $80
	cp   c                                           ; $764f: $b9
	add  c                                           ; $7650: $81
	and  c                                           ; $7651: $a1
	inc  bc                                          ; $7652: $03
	cp   c                                           ; $7653: $b9
	and  c                                           ; $7654: $a1
	cp   c                                           ; $7655: $b9
	add  hl, sp                                      ; $7656: $39
	add  e                                           ; $7657: $83
	sbc  h                                           ; $7658: $9c
	add  b                                           ; $7659: $80
	nop                                              ; $765a: $00
	add  b                                           ; $765b: $80
	adc  $81                                         ; $765c: $ce $81
	ld   [$ce03], sp                                 ; $765e: $08 $03 $ce
	ld   [$a1ce], sp                                 ; $7661: $08 $ce $a1
	add  e                                           ; $7664: $83
	ld   a, a                                        ; $7665: $7f
	add  b                                           ; $7666: $80
	nop                                              ; $7667: $00
	ld   [$2f04], sp                                 ; $7668: $08 $04 $2f
	inc  b                                           ; $766b: $04
	ld   h, h                                        ; $766c: $64
	ld   b, h                                        ; $766d: $44
	rrca                                             ; $766e: $0f
	cpl                                              ; $766f: $2f
	ld   [hl], h                                     ; $7670: $74
	and  h                                           ; $7671: $a4
	add  e                                           ; $7672: $83
	rst  $38                                         ; $7673: $ff
	add  b                                           ; $7674: $80
	nop                                              ; $7675: $00
	dec  bc                                          ; $7676: $0b
	sub  d                                           ; $7677: $92
	rst  $38                                         ; $7678: $ff
	sub  l                                           ; $7679: $95
	sub  b                                           ; $767a: $90
	xor  a                                           ; $767b: $af
	ret  nz                                          ; $767c: $c0

	cp   e                                           ; $767d: $bb
	add  b                                           ; $767e: $80
	dec  de                                          ; $767f: $1b
	cpl                                              ; $7680: $2f
	add  hl, bc                                      ; $7681: $09
	ld   bc, $0081                                   ; $7682: $01 $81 $00
	add  b                                           ; $7685: $80
	jr   c, jr_08e_7608                              ; $7686: $38 $80

	inc  b                                           ; $7688: $04
	add  b                                           ; $7689: $80
	ld   [bc], a                                     ; $768a: $02
	add  b                                           ; $768b: $80
	ld   bc, $0001                                   ; $768c: $01 $01 $00
	db   $ed                                         ; $768f: $ed
	add  e                                           ; $7690: $83
	ld   [$780d], a                                  ; $7691: $ea $0d $78
	nop                                              ; $7694: $00
	ld   a, a                                        ; $7695: $7f
	nop                                              ; $7696: $00
	db   $10                                         ; $7697: $10
	rra                                              ; $7698: $1f
	ld   [$0700], sp                                 ; $7699: $08 $00 $07
	adc  a                                           ; $769c: $8f
	ld   l, a                                        ; $769d: $6f
	nop                                              ; $769e: $00
	rlca                                             ; $769f: $07
	nop                                              ; $76a0: $00
	add  [hl]                                        ; $76a1: $86
	rlca                                             ; $76a2: $07
	nop                                              ; $76a3: $00
	nop                                              ; $76a4: $00
	add  c                                           ; $76a5: $81
	rlca                                             ; $76a6: $07
	inc  bc                                          ; $76a7: $03
	ldh  [rP1], a                                    ; $76a8: $e0 $00
	rst  $38                                         ; $76aa: $ff
	nop                                              ; $76ab: $00
	add  [hl]                                        ; $76ac: $86
	rst  $38                                         ; $76ad: $ff
	nop                                              ; $76ae: $00
	nop                                              ; $76af: $00
	add  c                                           ; $76b0: $81
	rst  $38                                         ; $76b1: $ff
	add  b                                           ; $76b2: $80
	nop                                              ; $76b3: $00
	ld   bc, $00ff                                   ; $76b4: $01 $ff $00
	add  [hl]                                        ; $76b7: $86
	rst  $38                                         ; $76b8: $ff
	ld   bc, $ff00                                   ; $76b9: $01 $00 $ff
	add  b                                           ; $76bc: $80
	ld   hl, sp+$03                                  ; $76bd: $f8 $03
	add  hl, bc                                      ; $76bf: $09
	ld   c, $ee                                      ; $76c0: $0e $ee
	ld   c, $82                                      ; $76c2: $0e $82
	xor  $05                                         ; $76c4: $ee $05
	jp   hl                                          ; $76c6: $e9


	rst  $28                                         ; $76c7: $ef
	add  sp, -$12                                    ; $76c8: $e8 $ee
	ld   c, $ee                                      ; $76ca: $0e $ee
	add  b                                           ; $76cc: $80
	ld   c, $00                                      ; $76cd: $0e $00
	cp   d                                           ; $76cf: $ba
	add  l                                           ; $76d0: $85
	ld   b, d                                        ; $76d1: $42
	ld   [bc], a                                     ; $76d2: $02
	cp   l                                           ; $76d3: $bd
	rst  $38                                         ; $76d4: $ff
	nop                                              ; $76d5: $00
	add  e                                           ; $76d6: $83
	ld   b, d                                        ; $76d7: $42
	nop                                              ; $76d8: $00
	inc  sp                                          ; $76d9: $33
	add  l                                           ; $76da: $85
	rrca                                             ; $76db: $0f
	add  b                                           ; $76dc: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76dd: $cf
	add  h                                           ; $76de: $84
	rrca                                             ; $76df: $0f
	nop                                              ; $76e0: $00
	jp   nz, $ff83                                   ; $76e1: $c2 $83 $ff

	nop                                              ; $76e4: $00
	cp   $87                                         ; $76e5: $fe $87
	rst  $38                                         ; $76e7: $ff
	ld   [bc], a                                     ; $76e8: $02
	rst  $28                                         ; $76e9: $ef
	rrca                                             ; $76ea: $0f
	nop                                              ; $76eb: $00
	add  d                                           ; $76ec: $82
	rrca                                             ; $76ed: $0f
	add  b                                           ; $76ee: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76ef: $cf
	add  l                                           ; $76f0: $85
	rst  $28                                         ; $76f1: $ef
	inc  bc                                          ; $76f2: $03
	call z, $3cbc                                    ; $76f3: $cc $bc $3c
	cp   h                                           ; $76f6: $bc
	add  b                                           ; $76f7: $80
	sbc  h                                           ; $76f8: $9c
	ld   bc, $9c84                                   ; $76f9: $01 $84 $9c
	add  [hl]                                        ; $76fc: $86
	cp   h                                           ; $76fd: $bc
	nop                                              ; $76fe: $00
	jr   z, @-$7b                                    ; $76ff: $28 $83

	ccf                                              ; $7701: $3f
	nop                                              ; $7702: $00
	ret  nz                                          ; $7703: $c0

	add  a                                           ; $7704: $87
	rst  $38                                         ; $7705: $ff
	nop                                              ; $7706: $00
	db   $d3                                         ; $7707: $d3
	add  c                                           ; $7708: $81
	cp   c                                           ; $7709: $b9
	nop                                              ; $770a: $00
	sbc  b                                           ; $770b: $98
	add  c                                           ; $770c: $81
	cp   c                                           ; $770d: $b9
	dec  b                                           ; $770e: $05
	add  b                                           ; $770f: $80
	ei                                               ; $7710: $fb
	jp   nz, Jump_08e_7bb9                           ; $7711: $c2 $b9 $7b

	nop                                              ; $7714: $00
	add  b                                           ; $7715: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7716: $cf
	nop                                              ; $7717: $00
	jr   @-$7d                                       ; $7718: $18 $81

	adc  $00                                         ; $771a: $ce $00
	add  $81                                         ; $771c: $c6 $81
	adc  $05                                         ; $771e: $ce $05
	nop                                              ; $7720: $00
	sbc  $10                                         ; $7721: $de $10
	adc  $de                                         ; $7723: $ce $de
	nop                                              ; $7725: $00
	add  b                                           ; $7726: $80
	ld   c, $04                                      ; $7727: $0e $04
	cpl                                              ; $7729: $2f
	ld   [hl], h                                     ; $772a: $74
	inc  h                                           ; $772b: $24
	ld   a, a                                        ; $772c: $7f
	cpl                                              ; $772d: $2f
	add  c                                           ; $772e: $81
	ld   [hl], h                                     ; $772f: $74
	inc  bc                                          ; $7730: $03
	inc  h                                           ; $7731: $24
	ld   a, a                                        ; $7732: $7f
	cpl                                              ; $7733: $2f
	ld   [hl], h                                     ; $7734: $74
	add  b                                           ; $7735: $80
	ld   a, a                                        ; $7736: $7f
	dec  c                                           ; $7737: $0d
	ld   h, h                                        ; $7738: $64
	nop                                              ; $7739: $00
	push hl                                          ; $773a: $e5
	add  e                                           ; $773b: $83
	or   d                                           ; $773c: $b2
	db   $e3                                         ; $773d: $e3
	ld   a, [$9b93]                                  ; $773e: $fa $93 $9b
	sub  e                                           ; $7741: $93
	sub  [hl]                                        ; $7742: $96
	rst  $38                                         ; $7743: $ff
	ld   a, [$8097]                                  ; $7744: $fa $97 $80
	rst  $38                                         ; $7747: $ff
	ld   [bc], a                                     ; $7748: $02
	sub  d                                           ; $7749: $92
	nop                                              ; $774a: $00
	ld   hl, sp-$7b                                  ; $774b: $f8 $85
	rlca                                             ; $774d: $07
	add  c                                           ; $774e: $81
	nop                                              ; $774f: $00
	add  b                                           ; $7750: $80
	ccf                                              ; $7751: $3f
	add  b                                           ; $7752: $80
	nop                                              ; $7753: $00
	add  b                                           ; $7754: $80
	inc  bc                                          ; $7755: $03
	ld   bc, $8f8e                                   ; $7756: $01 $8e $8f
	add  h                                           ; $7759: $84
	adc  h                                           ; $775a: $8c
	add  b                                           ; $775b: $80
	nop                                              ; $775c: $00
	ld   [bc], a                                     ; $775d: $02
	adc  [hl]                                        ; $775e: $8e
	adc  a                                           ; $775f: $8f
	nop                                              ; $7760: $00
	add  b                                           ; $7761: $80
	ld   b, $00                                      ; $7762: $06 $00
	rst  $20                                         ; $7764: $e7
	add  l                                           ; $7765: $85
	rlca                                             ; $7766: $07
	add  b                                           ; $7767: $80
	ld   b, $82                                      ; $7768: $06 $82
	nop                                              ; $776a: $00
	ld   [bc], a                                     ; $776b: $02
	inc  bc                                          ; $776c: $03
	nop                                              ; $776d: $00
	inc  e                                           ; $776e: $1c
	add  c                                           ; $776f: $81
	rst  $38                                         ; $7770: $ff
	add  b                                           ; $7771: $80
	ld   hl, sp-$80                                  ; $7772: $f8 $80
	ret  nz                                          ; $7774: $c0

	ld   [bc], a                                     ; $7775: $02
	ld   [bc], a                                     ; $7776: $02
	ld   bc, $8011                                   ; $7777: $01 $11 $80
	add  hl, bc                                      ; $777a: $09
	inc  b                                           ; $777b: $04
	ld   c, c                                        ; $777c: $49
	ld   e, c                                        ; $777d: $59
	add  hl, bc                                      ; $777e: $09
	set  0, b                                        ; $777f: $cb $c0
	add  b                                           ; $7781: $80
	nop                                              ; $7782: $00
	ld   b, $01                                      ; $7783: $06 $01
	rrca                                             ; $7785: $0f
	ld   b, c                                        ; $7786: $41
	cpl                                              ; $7787: $2f
	ld   hl, $202f                                   ; $7788: $21 $2f $20
	add  e                                           ; $778b: $83
	ld   hl, $6600                                   ; $778c: $21 $00 $66
	add  d                                           ; $778f: $82
	ld   c, $05                                      ; $7790: $0e $05
	cp   $09                                         ; $7792: $fe $09
	rst  $38                                         ; $7794: $ff
	ld   [$00fe], sp                                 ; $7795: $08 $fe $00
	add  e                                           ; $7798: $83
	ld   [$4284], sp                                 ; $7799: $08 $84 $42
	ld   [bc], a                                     ; $779c: $02
	cp   l                                           ; $779d: $bd
	rst  $38                                         ; $779e: $ff
	nop                                              ; $779f: $00
	add  l                                           ; $77a0: $85
	ld   b, d                                        ; $77a1: $42
	nop                                              ; $77a2: $00
	inc  sp                                          ; $77a3: $33
	add  e                                           ; $77a4: $83
	rrca                                             ; $77a5: $0f
	add  b                                           ; $77a6: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77a7: $cf
	add  [hl]                                        ; $77a8: $86
	rrca                                             ; $77a9: $0f
	nop                                              ; $77aa: $00
	jp   $ff8d                                       ; $77ab: $c3 $8d $ff


	inc  b                                           ; $77ae: $04
	rst  $28                                         ; $77af: $ef
	ldh  [$ef], a                                    ; $77b0: $e0 $ef
	ldh  [rIE], a                                    ; $77b2: $e0 $ff
	add  c                                           ; $77b4: $81
	ldh  [rDIV], a                                   ; $77b5: $e0 $04
	rst  $30                                         ; $77b7: $f7
	db   $ec                                         ; $77b8: $ec
	db   $f4                                         ; $77b9: $f4
	ldh  [$ef], a                                    ; $77ba: $e0 $ef
	add  b                                           ; $77bc: $80
	ret  nz                                          ; $77bd: $c0

	dec  b                                           ; $77be: $05
	rst  $28                                         ; $77bf: $ef
	srl  h                                           ; $77c0: $cb $3c
	cp   h                                           ; $77c2: $bc
	inc  a                                           ; $77c3: $3c
	cp   h                                           ; $77c4: $bc
	add  d                                           ; $77c5: $82
	inc  a                                           ; $77c6: $3c
	inc  bc                                          ; $77c7: $03
	ld   e, h                                        ; $77c8: $5c
	cp   h                                           ; $77c9: $bc
	inc  e                                           ; $77ca: $1c
	call c, $1c80                                    ; $77cb: $dc $80 $1c
	ld   bc, $e8dc                                   ; $77ce: $01 $dc $e8
	add  a                                           ; $77d1: $87
	ccf                                              ; $77d2: $3f
	nop                                              ; $77d3: $00
	ret  nz                                          ; $77d4: $c0

	add  h                                           ; $77d5: $84
	rst  $38                                         ; $77d6: $ff
	ld   [bc], a                                     ; $77d7: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77d8: $cf
	ret  nz                                          ; $77d9: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77da: $cf
	add  h                                           ; $77db: $84
	rst  $38                                         ; $77dc: $ff
	nop                                              ; $77dd: $00
	nop                                              ; $77de: $00
	add  e                                           ; $77df: $83
	rst  $38                                         ; $77e0: $ff
	inc  bc                                          ; $77e1: $03
	cp   $0e                                         ; $77e2: $fe $0e
	ld   bc, $840e                                   ; $77e4: $01 $0e $84
	cp   $02                                         ; $77e7: $fe $02
	nop                                              ; $77e9: $00
	cp   $ff                                         ; $77ea: $fe $ff
	add  c                                           ; $77ec: $81
	cp   $01                                         ; $77ed: $fe $01
	ldh  a, [rP1]                                    ; $77ef: $f0 $00
	add  d                                           ; $77f1: $82
	or   b                                           ; $77f2: $b0
	add  b                                           ; $77f3: $80
	cp   a                                           ; $77f4: $bf
	add  b                                           ; $77f5: $80
	add  b                                           ; $77f6: $80
	ld   bc, $a49b                                   ; $77f7: $01 $9b $a4
	add  b                                           ; $77fa: $80
	inc  h                                           ; $77fb: $24
	add  b                                           ; $77fc: $80
	ccf                                              ; $77fd: $3f
	nop                                              ; $77fe: $00
	inc  a                                           ; $77ff: $3c
	add  e                                           ; $7800: $83
	inc  bc                                          ; $7801: $03
	add  b                                           ; $7802: $80
	rst  $38                                         ; $7803: $ff
	add  b                                           ; $7804: $80
	nop                                              ; $7805: $00
	nop                                              ; $7806: $00
	ld   l, l                                        ; $7807: $6d
	add  c                                           ; $7808: $81
	sub  d                                           ; $7809: $92
	add  b                                           ; $780a: $80
	rst  $38                                         ; $780b: $ff
	add  hl, bc                                      ; $780c: $09
	jp   $3e00                                       ; $780d: $c3 $00 $3e


	nop                                              ; $7810: $00
	ld   a, $3c                                      ; $7811: $3e $3c
	ld   a, $02                                      ; $7813: $3e $02
	ccf                                              ; $7815: $3f
	ld   bc, $3980                                   ; $7816: $01 $80 $39
	add  b                                           ; $7819: $80
	ld   bc, $0204                                   ; $781a: $01 $04 $02
	nop                                              ; $781d: $00
	adc  [hl]                                        ; $781e: $8e
	xor  $c0                                         ; $781f: $ee $c0
	add  b                                           ; $7821: $80
	rst  $10                                         ; $7822: $d7
	ld   [bc], a                                     ; $7823: $02
	ret  z                                           ; $7824: $c8

	ret  nz                                          ; $7825: $c0

	jp   $c080                                       ; $7826: $c3 $80 $c0


	add  b                                           ; $7829: $80
	ldh  [rDIV], a                                   ; $782a: $e0 $04
	ret  c                                           ; $782c: $d8

	add  b                                           ; $782d: $80
	cp   e                                           ; $782e: $bb
	add  b                                           ; $782f: $80
	add  sp, -$75                                    ; $7830: $e8 $8b
	inc  bc                                          ; $7832: $03
	add  b                                           ; $7833: $80
	nop                                              ; $7834: $00
	dec  b                                           ; $7835: $05
	add  e                                           ; $7836: $83
	ld   bc, $606d                                   ; $7837: $01 $6d $60
	ld   l, l                                        ; $783a: $6d
	ld   l, h                                        ; $783b: $6c
	adc  b                                           ; $783c: $88
	ld   l, l                                        ; $783d: $6d
	rlca                                             ; $783e: $07
	inc  hl                                          ; $783f: $23
	ld   hl, $2161                                   ; $7840: $21 $61 $21
	xor  [hl]                                        ; $7843: $ae
	rrca                                             ; $7844: $0f
	or   b                                           ; $7845: $b0
	add  c                                           ; $7846: $81
	add  [hl]                                        ; $7847: $86
	or   c                                           ; $7848: $b1
	nop                                              ; $7849: $00
	ld   c, b                                        ; $784a: $48
	add  c                                           ; $784b: $81
	ld   [$f702], sp                                 ; $784c: $08 $02 $f7
	rst  $38                                         ; $784f: $ff
	nop                                              ; $7850: $00
	add  a                                           ; $7851: $87
	ld   [$4282], sp                                 ; $7852: $08 $82 $42
	ld   [bc], a                                     ; $7855: $02
	cp   l                                           ; $7856: $bd
	rst  $38                                         ; $7857: $ff
	nop                                              ; $7858: $00
	add  a                                           ; $7859: $87
	ld   b, d                                        ; $785a: $42
	nop                                              ; $785b: $00
	inc  sp                                          ; $785c: $33
	add  c                                           ; $785d: $81
	rrca                                             ; $785e: $0f
	add  b                                           ; $785f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7860: $cf
	add  h                                           ; $7861: $84
	rrca                                             ; $7862: $0f
	nop                                              ; $7863: $00
	inc  c                                           ; $7864: $0c
	add  c                                           ; $7865: $81
	ld   c, $00                                      ; $7866: $0e $00
	pop  bc                                          ; $7868: $c1
	adc  c                                           ; $7869: $89
	rst  $38                                         ; $786a: $ff
	nop                                              ; $786b: $00
	add  h                                           ; $786c: $84
	add  c                                           ; $786d: $81
	add  l                                           ; $786e: $85
	ld   b, $e1                                      ; $786f: $06 $e1
	rst  $38                                         ; $7871: $ff
	sbc  a                                           ; $7872: $9f
	sbc  [hl]                                        ; $7873: $9e
	sub  b                                           ; $7874: $90
	sbc  [hl]                                        ; $7875: $9e
	rst  $28                                         ; $7876: $ef
	add  b                                           ; $7877: $80
	add  b                                           ; $7878: $80
	ld   bc, $d6ce                                   ; $7879: $01 $ce $d6
	add  c                                           ; $787c: $81
	rst  $38                                         ; $787d: $ff
	ld   [bc], a                                     ; $787e: $02
	rst  $20                                         ; $787f: $e7
	rst  $38                                         ; $7880: $ff
	dec  bc                                          ; $7881: $0b
	add  b                                           ; $7882: $80
	db   $fc                                         ; $7883: $fc
	rlca                                             ; $7884: $07
	ld   a, h                                        ; $7885: $7c
	ld   c, a                                        ; $7886: $4f
	ld   a, a                                        ; $7887: $7f
	cp   a                                           ; $7888: $bf
	ccf                                              ; $7889: $3f
	add  hl, sp                                      ; $788a: $39
	ld   a, a                                        ; $788b: $7f
	cp   a                                           ; $788c: $bf
	add  c                                           ; $788d: $81
	rst  $38                                         ; $788e: $ff
	ld   [bc], a                                     ; $788f: $02
	ccf                                              ; $7890: $3f
	rst  $38                                         ; $7891: $ff
	ld   sp, $ff81                                   ; $7892: $31 $81 $ff
	nop                                              ; $7895: $00
	ret  nz                                          ; $7896: $c0

	add  a                                           ; $7897: $87
	rst  $38                                         ; $7898: $ff
	nop                                              ; $7899: $00
	nop                                              ; $789a: $00
	add  e                                           ; $789b: $83
	rst  $38                                         ; $789c: $ff
	nop                                              ; $789d: $00
	nop                                              ; $789e: $00
	add  a                                           ; $789f: $87
	rst  $38                                         ; $78a0: $ff
	nop                                              ; $78a1: $00
	nop                                              ; $78a2: $00
	add  e                                           ; $78a3: $83
	rst  $38                                         ; $78a4: $ff
	nop                                              ; $78a5: $00
	nop                                              ; $78a6: $00
	add  a                                           ; $78a7: $87
	rst  $38                                         ; $78a8: $ff
	nop                                              ; $78a9: $00
	nop                                              ; $78aa: $00
	add  e                                           ; $78ab: $83
	rst  $38                                         ; $78ac: $ff
	nop                                              ; $78ad: $00
	nop                                              ; $78ae: $00
	add  a                                           ; $78af: $87
	rst  $38                                         ; $78b0: $ff
	nop                                              ; $78b1: $00
	nop                                              ; $78b2: $00
	add  e                                           ; $78b3: $83
	rst  $38                                         ; $78b4: $ff
	nop                                              ; $78b5: $00
	ld   bc, $ff87                                   ; $78b6: $01 $87 $ff
	ld   [bc], a                                     ; $78b9: $02
	nop                                              ; $78ba: $00
	cp   $f0                                         ; $78bb: $fe $f0
	add  c                                           ; $78bd: $81
	nop                                              ; $78be: $00
	adc  d                                           ; $78bf: $8a
	ld   a, $03                                      ; $78c0: $3e $03
	add  b                                           ; $78c2: $80
	add  a                                           ; $78c3: $87
	add  [hl]                                        ; $78c4: $86
	add  c                                           ; $78c5: $81
	add  d                                           ; $78c6: $82
	adc  b                                           ; $78c7: $88
	add  c                                           ; $78c8: $81
	adc  [hl]                                        ; $78c9: $8e
	ld   bc, $c0ee                                   ; $78ca: $01 $ee $c0
	add  b                                           ; $78cd: $80
	rst  $10                                         ; $78ce: $d7
	ld   bc, $88c8                                   ; $78cf: $01 $c8 $88
	add  d                                           ; $78d2: $82
	nop                                              ; $78d3: $00
	add  b                                           ; $78d4: $80
	rra                                              ; $78d5: $1f
	add  b                                           ; $78d6: $80
	db   $10                                         ; $78d7: $10
	add  c                                           ; $78d8: $81
	ld   [de], a                                     ; $78d9: $12
	inc  b                                           ; $78da: $04
	ld   a, [bc]                                     ; $78db: $0a
	ld   [bc], a                                     ; $78dc: $02
	ld   a, [de]                                     ; $78dd: $1a
	ld   [bc], a                                     ; $78de: $02
	ldh  [c], a                                      ; $78df: $e2
	add  c                                           ; $78e0: $81
	nop                                              ; $78e1: $00
	nop                                              ; $78e2: $00
	ld   bc, $ff80                                   ; $78e3: $01 $80 $ff
	add  b                                           ; $78e6: $80
	rra                                              ; $78e7: $1f
	add  c                                           ; $78e8: $81
	sbc  a                                           ; $78e9: $9f
	ld   [bc], a                                     ; $78ea: $02
	and  c                                           ; $78eb: $a1
	add  b                                           ; $78ec: $80
	cp   a                                           ; $78ed: $bf
	add  b                                           ; $78ee: $80
	add  b                                           ; $78ef: $80
	add  c                                           ; $78f0: $81
	nop                                              ; $78f1: $00
	ld   [bc], a                                     ; $78f2: $02
	ldh  [rIE], a                                    ; $78f3: $e0 $ff
	cp   $83                                         ; $78f5: $fe $83
	rst  $38                                         ; $78f7: $ff
	ld   [bc], a                                     ; $78f8: $02
	pop  hl                                          ; $78f9: $e1
	nop                                              ; $78fa: $00
	rst  $38                                         ; $78fb: $ff
	add  h                                           ; $78fc: $84
	nop                                              ; $78fd: $00
	add  b                                           ; $78fe: $80
	rst  $38                                         ; $78ff: $ff

jr_08e_7900:
	add  e                                           ; $7900: $83
	rst  JumpTable                                         ; $7901: $df
	ld   [bc], a                                     ; $7902: $02
	jr   nz, jr_08e_7905                             ; $7903: $20 $00

jr_08e_7905:
	rst  $38                                         ; $7905: $ff
	add  e                                           ; $7906: $83
	nop                                              ; $7907: $00
	nop                                              ; $7908: $00
	ldh  [$83], a                                    ; $7909: $e0 $83
	rst  $38                                         ; $790b: $ff
	ld   b, $e0                                      ; $790c: $06 $e0
	rst  $38                                         ; $790e: $ff
	db   $fc                                         ; $790f: $fc
	nop                                              ; $7910: $00
	ld   a, [$0500]                                  ; $7911: $fa $00 $05
	add  c                                           ; $7914: $81
	ld   [bc], a                                     ; $7915: $02
	nop                                              ; $7916: $00
	ld   b, $82                                      ; $7917: $06 $82
	jp   z, $cb04                                    ; $7919: $ca $04 $cb

	ld   [$00cb], sp                                 ; $791c: $08 $cb $00
	rrca                                             ; $791f: $0f
	add  b                                           ; $7920: $80
	add  b                                           ; $7921: $80
	nop                                              ; $7922: $00
	ld   a, e                                        ; $7923: $7b
	add  l                                           ; $7924: $85
	add  l                                           ; $7925: $85
	dec  b                                           ; $7926: $05
	ld   bc, $00ff                                   ; $7927: $01 $ff $00
	rst  $38                                         ; $792a: $ff
	nop                                              ; $792b: $00
	rst  $38                                         ; $792c: $ff
	add  c                                           ; $792d: $81
	nop                                              ; $792e: $00
	add  c                                           ; $792f: $81
	add  b                                           ; $7930: $80
	nop                                              ; $7931: $00
	rst  $38                                         ; $7932: $ff
	add  d                                           ; $7933: $82
	add  b                                           ; $7934: $80
	add  c                                           ; $7935: $81
	rst  $38                                         ; $7936: $ff
	ld   bc, $bf3f                                   ; $7937: $01 $3f $bf
	add  b                                           ; $793a: $80
	nop                                              ; $793b: $00
	add  b                                           ; $793c: $80
	ld   bc, $0080                                   ; $793d: $01 $80 $00
	nop                                              ; $7940: $00
	rst  $38                                         ; $7941: $ff
	add  d                                           ; $7942: $82
	nop                                              ; $7943: $00
	add  e                                           ; $7944: $83
	rst  $38                                         ; $7945: $ff
	add  h                                           ; $7946: $84
	nop                                              ; $7947: $00
	nop                                              ; $7948: $00
	rst  $38                                         ; $7949: $ff
	add  d                                           ; $794a: $82
	nop                                              ; $794b: $00
	add  e                                           ; $794c: $83
	rst  $38                                         ; $794d: $ff
	add  h                                           ; $794e: $84
	nop                                              ; $794f: $00
	nop                                              ; $7950: $00
	rst  $38                                         ; $7951: $ff
	add  d                                           ; $7952: $82
	nop                                              ; $7953: $00
	add  e                                           ; $7954: $83
	rst  $38                                         ; $7955: $ff
	add  h                                           ; $7956: $84
	nop                                              ; $7957: $00
	nop                                              ; $7958: $00
	rst  $38                                         ; $7959: $ff
	add  d                                           ; $795a: $82
	nop                                              ; $795b: $00
	add  e                                           ; $795c: $83
	rst  $38                                         ; $795d: $ff
	add  h                                           ; $795e: $84
	nop                                              ; $795f: $00
	nop                                              ; $7960: $00
	rst  $38                                         ; $7961: $ff
	add  d                                           ; $7962: $82
	nop                                              ; $7963: $00
	add  e                                           ; $7964: $83
	rst  $38                                         ; $7965: $ff
	add  h                                           ; $7966: $84
	nop                                              ; $7967: $00
	nop                                              ; $7968: $00
	rst  $38                                         ; $7969: $ff
	add  d                                           ; $796a: $82
	nop                                              ; $796b: $00
	add  e                                           ; $796c: $83
	rst  $38                                         ; $796d: $ff
	add  b                                           ; $796e: $80
	nop                                              ; $796f: $00
	add  c                                           ; $7970: $81
	ld   a, $03                                      ; $7971: $3e $03
	ld   c, $3e                                      ; $7973: $0e $3e

jr_08e_7975:
	ld   b, $3c                                      ; $7975: $06 $3c
	add  b                                           ; $7977: $80
	nop                                              ; $7978: $00
	add  b                                           ; $7979: $80
	inc  hl                                          ; $797a: $23
	nop                                              ; $797b: $00
	jr   nz, jr_08e_7900                             ; $797c: $20 $82

	ld   [hl+], a                                    ; $797e: $22
	ld   bc, $c3bc                                   ; $797f: $01 $bc $c3
	add  b                                           ; $7982: $80
	ret  nz                                          ; $7983: $c0

	add  b                                           ; $7984: $80
	ldh  [$0b], a                                    ; $7985: $e0 $0b
	ld   e, b                                        ; $7987: $58
	nop                                              ; $7988: $00
	dec  sp                                          ; $7989: $3b
	add  b                                           ; $798a: $80
	adc  b                                           ; $798b: $88
	add  a                                           ; $798c: $87
	add  [hl]                                        ; $798d: $86
	add  c                                           ; $798e: $81
	ld   [$fc88], sp                                 ; $798f: $08 $88 $fc
	ld   e, $80                                      ; $7992: $1e $80
	ld   c, $01                                      ; $7994: $0e $01
	ld   [de], a                                     ; $7996: $12
	db   $10                                         ; $7997: $10
	add  b                                           ; $7998: $80
	nop                                              ; $7999: $00
	ld   bc, $0010                                   ; $799a: $01 $10 $00
	add  b                                           ; $799d: $80
	rlca                                             ; $799e: $07
	add  b                                           ; $799f: $80
	nop                                              ; $79a0: $00
	inc  bc                                          ; $79a1: $03
	rrca                                             ; $79a2: $0f
	nop                                              ; $79a3: $00
	ret  nz                                          ; $79a4: $c0

	cp   a                                           ; $79a5: $bf
	add  b                                           ; $79a6: $80
	and  b                                           ; $79a7: $a0
	nop                                              ; $79a8: $00
	add  b                                           ; $79a9: $80
	add  b                                           ; $79aa: $80
	rra                                              ; $79ab: $1f
	ld   [bc], a                                     ; $79ac: $02
	nop                                              ; $79ad: $00
	rra                                              ; $79ae: $1f
	nop                                              ; $79af: $00
	add  b                                           ; $79b0: $80
	ret  nz                                          ; $79b1: $c0

	add  b                                           ; $79b2: $80
	nop                                              ; $79b3: $00
	nop                                              ; $79b4: $00
	ldh  [$80], a                                    ; $79b5: $e0 $80
	nop                                              ; $79b7: $00
	nop                                              ; $79b8: $00
	rst  $38                                         ; $79b9: $ff
	add  c                                           ; $79ba: $81
	nop                                              ; $79bb: $00
	add  b                                           ; $79bc: $80
	rst  $38                                         ; $79bd: $ff
	ld   bc, $ff00                                   ; $79be: $01 $00 $ff
	add  l                                           ; $79c1: $85
	nop                                              ; $79c2: $00
	ld   bc, $f51e                                   ; $79c3: $01 $1e $f5
	add  b                                           ; $79c6: $80
	inc  d                                           ; $79c7: $14
	inc  b                                           ; $79c8: $04
	inc  [hl]                                        ; $79c9: $34
	push af                                          ; $79ca: $f5
	push de                                          ; $79cb: $d5
	inc  d                                           ; $79cc: $14
	push af                                          ; $79cd: $f5
	add  c                                           ; $79ce: $81
	nop                                              ; $79cf: $00
	nop                                              ; $79d0: $00
	ld   e, $81                                      ; $79d1: $1e $81
	nop                                              ; $79d3: $00
	ld   bc, $f805                                   ; $79d4: $01 $05 $f8
	add  b                                           ; $79d7: $80
	nop                                              ; $79d8: $00
	inc  b                                           ; $79d9: $04
	inc  b                                           ; $79da: $04
	db   $fd                                         ; $79db: $fd
	ei                                               ; $79dc: $fb
	nop                                              ; $79dd: $00
	rst  $38                                         ; $79de: $ff
	add  l                                           ; $79df: $85
	nop                                              ; $79e0: $00
	ld   bc, $8578                                   ; $79e1: $01 $78 $85
	add  b                                           ; $79e4: $80
	dec  b                                           ; $79e5: $05
	nop                                              ; $79e6: $00
	dec  c                                           ; $79e7: $0d
	add  b                                           ; $79e8: $80
	call $0d01                                       ; $79e9: $cd $01 $0d
	pop  bc                                          ; $79ec: $c1
	add  l                                           ; $79ed: $85
	inc  bc                                          ; $79ee: $03
	nop                                              ; $79ef: $00
	jr   nc, jr_08e_7975                             ; $79f0: $30 $83

	rst  $38                                         ; $79f2: $ff
	ld   a, [bc]                                     ; $79f3: $0a
	di                                               ; $79f4: $f3
	rlca                                             ; $79f5: $07
	ld   [hl], a                                     ; $79f6: $77
	nop                                              ; $79f7: $00
	dec  sp                                          ; $79f8: $3b
	ld   sp, $3805                                   ; $79f9: $31 $05 $38
	ld   a, [hl+]                                    ; $79fc: $2a
	jr   nz, @-$6c                                   ; $79fd: $20 $92

	add  c                                           ; $79ff: $81
	cp   a                                           ; $7a00: $bf
	nop                                              ; $7a01: $00
	add  b                                           ; $7a02: $80
	add  c                                           ; $7a03: $81
	and  e                                           ; $7a04: $a3
	ld   bc, $00bf                                   ; $7a05: $01 $bf $00
	add  b                                           ; $7a08: $80
	rst  $38                                         ; $7a09: $ff
	inc  b                                           ; $7a0a: $04
	nop                                              ; $7a0b: $00
	rst  $38                                         ; $7a0c: $ff
	ld   a, a                                        ; $7a0d: $7f
	nop                                              ; $7a0e: $00

jr_08e_7a0f:
	ld   b, e                                        ; $7a0f: $43
	add  c                                           ; $7a10: $81
	rst  $38                                         ; $7a11: $ff
	nop                                              ; $7a12: $00

jr_08e_7a13:
	nop                                              ; $7a13: $00
	add  c                                           ; $7a14: $81
	jp   $ff01                                       ; $7a15: $c3 $01 $ff


	nop                                              ; $7a18: $00
	add  b                                           ; $7a19: $80
	rst  $38                                         ; $7a1a: $ff
	nop                                              ; $7a1b: $00
	nop                                              ; $7a1c: $00
	add  b                                           ; $7a1d: $80
	rst  $38                                         ; $7a1e: $ff
	ld   bc, $c300                                   ; $7a1f: $01 $00 $c3
	add  c                                           ; $7a22: $81
	rst  $38                                         ; $7a23: $ff
	nop                                              ; $7a24: $00
	nop                                              ; $7a25: $00
	add  c                                           ; $7a26: $81
	jp   $ff00                                       ; $7a27: $c3 $00 $ff


	add  c                                           ; $7a2a: $81
	nop                                              ; $7a2b: $00
	add  b                                           ; $7a2c: $80
	ccf                                              ; $7a2d: $3f
	add  b                                           ; $7a2e: $80
	ld   a, a                                        ; $7a2f: $7f
	nop                                              ; $7a30: $00
	jp   $ff81                                       ; $7a31: $c3 $81 $ff


	nop                                              ; $7a34: $00
	nop                                              ; $7a35: $00
	add  c                                           ; $7a36: $81
	jp   $ff00                                       ; $7a37: $c3 $00 $ff


	add  c                                           ; $7a3a: $81
	nop                                              ; $7a3b: $00
	add  d                                           ; $7a3c: $82
	rst  $38                                         ; $7a3d: $ff
	nop                                              ; $7a3e: $00
	jp   $ff81                                       ; $7a3f: $c3 $81 $ff


	nop                                              ; $7a42: $00
	nop                                              ; $7a43: $00
	add  c                                           ; $7a44: $81
	jp   $ff00                                       ; $7a45: $c3 $00 $ff


	add  c                                           ; $7a48: $81
	nop                                              ; $7a49: $00
	add  d                                           ; $7a4a: $82
	rst  $38                                         ; $7a4b: $ff
	nop                                              ; $7a4c: $00
	jp   $ff81                                       ; $7a4d: $c3 $81 $ff


	nop                                              ; $7a50: $00
	nop                                              ; $7a51: $00
	add  c                                           ; $7a52: $81
	jp   $ff00                                       ; $7a53: $c3 $00 $ff


	add  c                                           ; $7a56: $81
	nop                                              ; $7a57: $00
	add  b                                           ; $7a58: $80
	cp   $80                                         ; $7a59: $fe $80
	rst  $38                                         ; $7a5b: $ff
	nop                                              ; $7a5c: $00
	db   $fc                                         ; $7a5d: $fc
	add  c                                           ; $7a5e: $81
	ret  nz                                          ; $7a5f: $c0

	nop                                              ; $7a60: $00
	nop                                              ; $7a61: $00
	add  d                                           ; $7a62: $82
	ret  nz                                          ; $7a63: $c0

	add  l                                           ; $7a64: $85
	ld   a, h                                        ; $7a65: $7c
	nop                                              ; $7a66: $00
	ld   [hl], a                                     ; $7a67: $77
	add  e                                           ; $7a68: $83
	inc  hl                                          ; $7a69: $23
	dec  b                                           ; $7a6a: $05
	dec  hl                                          ; $7a6b: $2b
	ld   bc, $013f                  ; $7a6c: $01 $3f $01
	dec  d                                           ; $7a6f: $15
	ld   bc, $2180                                   ; $7a70: $01 $80 $21
	inc  bc                                          ; $7a73: $03
	inc  h                                           ; $7a74: $24
	jr   nz, jr_08e_7a0f                             ; $7a75: $20 $98

	adc  b                                           ; $7a77: $88
	add  c                                           ; $7a78: $81
	adc  a                                           ; $7a79: $8f
	ld   bc, $c0ef                                   ; $7a7a: $01 $ef $c0
	add  b                                           ; $7a7d: $80
	rst  $10                                         ; $7a7e: $d7
	ld   [bc], a                                     ; $7a7f: $02
	ret  z                                           ; $7a80: $c8

	ret  nz                                          ; $7a81: $c0

	jp   $c080                                       ; $7a82: $c3 $80 $c0


	add  b                                           ; $7a85: $80
	ld   h, b                                        ; $7a86: $60
	nop                                              ; $7a87: $00
	sub  h                                           ; $7a88: $94
	call $0000                                      ; $7a89: $cd $00 $00
	jr   nc, jr_08e_7a13                             ; $7a8c: $30 $85

	dec  c                                           ; $7a8e: $0d
	nop                                              ; $7a8f: $00
	ld   bc, $0285                                   ; $7a90: $01 $85 $02
	ld   [$2e59], sp                                 ; $7a93: $08 $59 $2e
	ld   c, $bf                                      ; $7a96: $0e $bf
	sbc  h                                           ; $7a98: $9c
	xor  l                                           ; $7a99: $ad
	xor  c                                           ; $7a9a: $a9
	xor  a                                           ; $7a9b: $af
	xor  e                                           ; $7a9c: $ab
	add  l                                           ; $7a9d: $85
	dec  l                                           ; $7a9e: $2d
	inc  c                                           ; $7a9f: $0c
	ld   c, c                                        ; $7aa0: $49
	ccf                                              ; $7aa1: $3f
	and  b                                           ; $7aa2: $a0
	rra                                              ; $7aa3: $1f
	ld   c, a                                        ; $7aa4: $4f
	nop                                              ; $7aa5: $00
	cpl                                              ; $7aa6: $2f
	rst  ToBoot                                         ; $7aa7: $c7
	ret  nc                                          ; $7aa8: $d0

	rst  $20                                         ; $7aa9: $e7
	daa                                              ; $7aaa: $27
	ret  nz                                          ; $7aab: $c0

	ld   b, l                                        ; $7aac: $45
	add  b                                           ; $7aad: $80
	add  a                                           ; $7aae: $87
	inc  bc                                          ; $7aaf: $03
	sbc  a                                           ; $7ab0: $9f
	dec  l                                           ; $7ab1: $2d

jr_08e_7ab2:
	rst  $38                                         ; $7ab2: $ff
	nop                                              ; $7ab3: $00
	add  b                                           ; $7ab4: $80
	rst  $38                                         ; $7ab5: $ff
	nop                                              ; $7ab6: $00
	nop                                              ; $7ab7: $00
	add  b                                           ; $7ab8: $80
	rst  $38                                         ; $7ab9: $ff
	nop                                              ; $7aba: $00
	nop                                              ; $7abb: $00
	add  b                                           ; $7abc: $80
	rst  $38                                         ; $7abd: $ff
	dec  bc                                          ; $7abe: $0b
	nop                                              ; $7abf: $00
	db   $db                                         ; $7ac0: $db
	rst  $38                                         ; $7ac1: $ff
	pop  af                                          ; $7ac2: $f1
	rst  $38                                         ; $7ac3: $ff
	ld   b, b                                        ; $7ac4: $40
	ld   a, a                                        ; $7ac5: $7f
	ld   b, b                                        ; $7ac6: $40
	ld   a, a                                        ; $7ac7: $7f
	ret  nz                                          ; $7ac8: $c0

	rst  $38                                         ; $7ac9: $ff
	push de                                          ; $7aca: $d5
	add  c                                           ; $7acb: $81
	rst  $38                                         ; $7acc: $ff
	add  b                                           ; $7acd: $80
	ld   [$d580], a                                  ; $7ace: $ea $80 $d5
	ld   [$ea6a], sp                                 ; $7ad1: $08 $6a $ea
	dec  d                                           ; $7ad4: $15
	rst  $38                                         ; $7ad5: $ff
	nop                                              ; $7ad6: $00
	rst  $38                                         ; $7ad7: $ff
	nop                                              ; $7ad8: $00
	rst  $38                                         ; $7ad9: $ff
	ld   d, l                                        ; $7ada: $55
	add  c                                           ; $7adb: $81
	rst  $38                                         ; $7adc: $ff
	add  b                                           ; $7add: $80
	xor  d                                           ; $7ade: $aa
	add  b                                           ; $7adf: $80
	ld   d, l                                        ; $7ae0: $55
	add  b                                           ; $7ae1: $80
	xor  d                                           ; $7ae2: $aa
	ld   b, $55                                      ; $7ae3: $06 $55
	rst  $38                                         ; $7ae5: $ff
	nop                                              ; $7ae6: $00
	rst  $38                                         ; $7ae7: $ff
	nop                                              ; $7ae8: $00
	rst  $38                                         ; $7ae9: $ff
	ld   d, l                                        ; $7aea: $55
	add  c                                           ; $7aeb: $81
	rst  $38                                         ; $7aec: $ff
	add  b                                           ; $7aed: $80
	xor  d                                           ; $7aee: $aa
	add  b                                           ; $7aef: $80
	ld   d, l                                        ; $7af0: $55
	add  b                                           ; $7af1: $80
	xor  d                                           ; $7af2: $aa
	ld   b, $55                                      ; $7af3: $06 $55
	rst  $38                                         ; $7af5: $ff
	nop                                              ; $7af6: $00
	rst  $38                                         ; $7af7: $ff
	nop                                              ; $7af8: $00
	rst  $38                                         ; $7af9: $ff
	ld   d, l                                        ; $7afa: $55
	add  c                                           ; $7afb: $81
	rst  $38                                         ; $7afc: $ff
	add  b                                           ; $7afd: $80
	xor  d                                           ; $7afe: $aa
	add  b                                           ; $7aff: $80
	ld   d, l                                        ; $7b00: $55
	add  b                                           ; $7b01: $80
	xor  d                                           ; $7b02: $aa
	nop                                              ; $7b03: $00
	jp   Jump_08e_4086                               ; $7b04: $c3 $86 $40


	add  l                                           ; $7b07: $85
	ld   a, h                                        ; $7b08: $7c
	nop                                              ; $7b09: $00
	ld   [hl], b                                     ; $7b0a: $70
	add  b                                           ; $7b0b: $80
	daa                                              ; $7b0c: $27
	ld   bc, $2420                                   ; $7b0d: $01 $20 $24
	add  a                                           ; $7b10: $87
	jr   nz, jr_08e_7b17                             ; $7b11: $20 $04

	dec  hl                                          ; $7b13: $2b
	ld   bc, $800d                                   ; $7b14: $01 $0d $80

jr_08e_7b17:
	cp   e                                           ; $7b17: $bb
	add  b                                           ; $7b18: $80
	add  b                                           ; $7b19: $80
	inc  b                                           ; $7b1a: $04
	adc  a                                           ; $7b1b: $8f
	add  [hl]                                        ; $7b1c: $86
	add  c                                           ; $7b1d: $81
	nop                                              ; $7b1e: $00
	add  c                                           ; $7b1f: $81
	add  b                                           ; $7b20: $80
	adc  c                                           ; $7b21: $89
	add  b                                           ; $7b22: $80
	adc  l                                           ; $7b23: $8d
	add  b                                           ; $7b24: $80
	add  c                                           ; $7b25: $81
	nop                                              ; $7b26: $00
	cp   $cd                                         ; $7b27: $fe $cd
	nop                                              ; $7b29: $00
	nop                                              ; $7b2a: $00
	jr   nc, jr_08e_7ab2                             ; $7b2b: $30 $85

	dec  c                                           ; $7b2d: $0d
	nop                                              ; $7b2e: $00
	ld   bc, $0285                                   ; $7b2f: $01 $85 $02
	nop                                              ; $7b32: $00
	ld   e, d                                        ; $7b33: $5a
	add  [hl]                                        ; $7b34: $86
	xor  l                                           ; $7b35: $ad
	add  l                                           ; $7b36: $85
	dec  l                                           ; $7b37: $2d
	rlca                                             ; $7b38: $07
	ld   a, [$9e9f]                                  ; $7b39: $fa $9f $9e
	sbc  a                                           ; $7b3c: $9f
	sbc  h                                           ; $7b3d: $9c
	sbc  l                                           ; $7b3e: $9d
	sbc  [hl]                                        ; $7b3f: $9e
	sbc  d                                           ; $7b40: $9a
	add  d                                           ; $7b41: $82
	sbc  [hl]                                        ; $7b42: $9e
	add  b                                           ; $7b43: $80
	sbc  c                                           ; $7b44: $99
	add  b                                           ; $7b45: $80
	sbc  a                                           ; $7b46: $9f
	rlca                                             ; $7b47: $07
	ld   e, c                                        ; $7b48: $59
	rst  $38                                         ; $7b49: $ff
	inc  e                                           ; $7b4a: $1c
	rst  $38                                         ; $7b4b: $ff
	ld   h, c                                        ; $7b4c: $61
	rst  $38                                         ; $7b4d: $ff
	inc  b                                           ; $7b4e: $04
	rst  $30                                         ; $7b4f: $f7
	add  b                                           ; $7b50: $80
	rst  $28                                         ; $7b51: $ef
	add  b                                           ; $7b52: $80
	ld   h, h                                        ; $7b53: $64
	add  b                                           ; $7b54: $80
	ld   bc, $9d80                                   ; $7b55: $01 $80 $9d
	inc  bc                                          ; $7b58: $03
	ld   d, a                                        ; $7b59: $57
	rst  $10                                         ; $7b5a: $d7
	or   b                                           ; $7b5b: $b0
	ldh  a, [$80]                                    ; $7b5c: $f0 $80
	adc  $01                                         ; $7b5e: $ce $01
	ld   [hl], $f6                                   ; $7b60: $36 $f6
	add  b                                           ; $7b62: $80
	adc  a                                           ; $7b63: $8f
	add  b                                           ; $7b64: $80
	rst  JumpTable                                         ; $7b65: $df
	add  b                                           ; $7b66: $80
	ret  nz                                          ; $7b67: $c0

	add  b                                           ; $7b68: $80
	sub  a                                           ; $7b69: $97
	add  b                                           ; $7b6a: $80
	ld   sp, hl                                      ; $7b6b: $f9
	add  b                                           ; $7b6c: $80
	db   $fd                                         ; $7b6d: $fd
	add  b                                           ; $7b6e: $80
	ld   hl, sp-$80                                  ; $7b6f: $f8 $80
	ld   a, [$0680]                                  ; $7b71: $fa $80 $06
	add  b                                           ; $7b74: $80
	ld   e, $80                                      ; $7b75: $1e $80
	ret  nz                                          ; $7b77: $c0

	add  b                                           ; $7b78: $80
	rst  $38                                         ; $7b79: $ff
	add  b                                           ; $7b7a: $80
	rst  JumpTable                                         ; $7b7b: $df
	add  b                                           ; $7b7c: $80
	xor  $80                                         ; $7b7d: $ee $80
	pop  af                                          ; $7b7f: $f1
	add  b                                           ; $7b80: $80
	db   $ed                                         ; $7b81: $ed
	add  b                                           ; $7b82: $80
	db   $dd                                         ; $7b83: $dd
	add  b                                           ; $7b84: $80
	ld   b, b                                        ; $7b85: $40
	add  b                                           ; $7b86: $80
	dec  e                                           ; $7b87: $1d
	add  b                                           ; $7b88: $80
	jp   Jump_08e_7f80                               ; $7b89: $c3 $80 $7f


	add  b                                           ; $7b8c: $80
	ld   d, d                                        ; $7b8d: $52
	add  b                                           ; $7b8e: $80
	call nz, $dd80                                   ; $7b8f: $c4 $80 $dd
	add  b                                           ; $7b92: $80
	sbc  h                                           ; $7b93: $9c
	add  b                                           ; $7b94: $80
	inc  hl                                          ; $7b95: $23
	add  b                                           ; $7b96: $80
	rst  $30                                         ; $7b97: $f7
	add  b                                           ; $7b98: $80
	ei                                               ; $7b99: $fb
	nop                                              ; $7b9a: $00
	jp   Jump_08e_4086                               ; $7b9b: $c3 $86 $40


	add  l                                           ; $7b9e: $85
	ld   a, h                                        ; $7b9f: $7c
	ld   b, $41                                      ; $7ba0: $06 $41
	ld   bc, $3420                                   ; $7ba2: $01 $20 $34
	jr   nz, jr_08e_7bca                             ; $7ba5: $20 $23

	ld   [hl+], a                                    ; $7ba7: $22
	add  a                                           ; $7ba8: $87
	ld   hl, $9801                                   ; $7ba9: $21 $01 $98
	adc  h                                           ; $7bac: $8c
	add  c                                           ; $7bad: $81
	dec  c                                           ; $7bae: $0d
	nop                                              ; $7baf: $00
	adc  l                                           ; $7bb0: $8d
	add  c                                           ; $7bb1: $81
	add  b                                           ; $7bb2: $80
	inc  bc                                          ; $7bb3: $03
	adc  a                                           ; $7bb4: $8f
	add  b                                           ; $7bb5: $80
	adc  a                                           ; $7bb6: $8f
	ld   c, $81                                      ; $7bb7: $0e $81

Jump_08e_7bb9:
	adc  [hl]                                        ; $7bb9: $8e
	nop                                              ; $7bba: $00
	nop                                              ; $7bbb: $00
	nop                                              ; $7bbc: $00
	nop                                              ; $7bbd: $00
	nop                                              ; $7bbe: $00
	nop                                              ; $7bbf: $00
	adc  d                                           ; $7bc0: $8a
	ld   bc, $0082                                   ; $7bc1: $01 $82 $00
	add  b                                           ; $7bc4: $80
	rlca                                             ; $7bc5: $07
	add  b                                           ; $7bc6: $80
	rrca                                             ; $7bc7: $0f
	add  b                                           ; $7bc8: $80
	rra                                              ; $7bc9: $1f

jr_08e_7bca:
	add  b                                           ; $7bca: $80
	ccf                                              ; $7bcb: $3f
	add  b                                           ; $7bcc: $80
	ld   a, a                                        ; $7bcd: $7f
	add  b                                           ; $7bce: $80
	rst  $38                                         ; $7bcf: $ff
	add  d                                           ; $7bd0: $82
	nop                                              ; $7bd1: $00
	adc  d                                           ; $7bd2: $8a
	rst  $38                                         ; $7bd3: $ff
	add  d                                           ; $7bd4: $82
	nop                                              ; $7bd5: $00
	add  b                                           ; $7bd6: $80
	rst  $38                                         ; $7bd7: $ff
	add  b                                           ; $7bd8: $80
	db   $fc                                         ; $7bd9: $fc
	add  b                                           ; $7bda: $80

jr_08e_7bdb:
	ld   hl, sp-$80                                  ; $7bdb: $f8 $80
	ldh  [$80], a                                    ; $7bdd: $e0 $80
	ret  nz                                          ; $7bdf: $c0

	add  b                                           ; $7be0: $80
	add  b                                           ; $7be1: $80
	adc  b                                           ; $7be2: $88
	nop                                              ; $7be3: $00
	add  b                                           ; $7be4: $80
	ld   bc, $0380                                   ; $7be5: $01 $80 $03
	add  b                                           ; $7be8: $80
	ld   a, a                                        ; $7be9: $7f
	add  b                                           ; $7bea: $80
	rrca                                             ; $7beb: $0f
	add  b                                           ; $7bec: $80
	rra                                              ; $7bed: $1f
	add  b                                           ; $7bee: $80
	ccf                                              ; $7bef: $3f
	add  b                                           ; $7bf0: $80
	ld   a, a                                        ; $7bf1: $7f
	adc  [hl]                                        ; $7bf2: $8e
	rst  $38                                         ; $7bf3: $ff
	add  b                                           ; $7bf4: $80
	db   $fc                                         ; $7bf5: $fc
	add  b                                           ; $7bf6: $80
	ld   hl, sp-$80                                  ; $7bf7: $f8 $80
	ldh  [$80], a                                    ; $7bf9: $e0 $80
	ret  nz                                          ; $7bfb: $c0

	add  b                                           ; $7bfc: $80
	ldh  a, [$80]                                    ; $7bfd: $f0 $80
	ldh  [$80], a                                    ; $7bff: $e0 $80
	add  b                                           ; $7c01: $80
	adc  [hl]                                        ; $7c02: $8e
	nop                                              ; $7c03: $00
	add  b                                           ; $7c04: $80
	rlca                                             ; $7c05: $07
	add  d                                           ; $7c06: $82
	ld   a, a                                        ; $7c07: $7f
	add  d                                           ; $7c08: $82
	rst  $38                                         ; $7c09: $ff
	add  b                                           ; $7c0a: $80
	nop                                              ; $7c0b: $00
	add  b                                           ; $7c0c: $80
	ld   bc, $3f80                                   ; $7c0d: $01 $80 $3f
	adc  b                                           ; $7c10: $88
	rst  $38                                         ; $7c11: $ff
	add  b                                           ; $7c12: $80
	rrca                                             ; $7c13: $0f
	sbc  d                                           ; $7c14: $9a
	rst  $38                                         ; $7c15: $ff
	add  b                                           ; $7c16: $80
	nop                                              ; $7c17: $00
	add  b                                           ; $7c18: $80
	rst  $38                                         ; $7c19: $ff
	add  b                                           ; $7c1a: $80
	cp   $80                                         ; $7c1b: $fe $80
	db   $fc                                         ; $7c1d: $fc
	add  b                                           ; $7c1e: $80
	ldh  a, [$80]                                    ; $7c1f: $f0 $80
	ldh  [$80], a                                    ; $7c21: $e0 $80
	add  b                                           ; $7c23: $80
	add  d                                           ; $7c24: $82
	nop                                              ; $7c25: $00
	add  b                                           ; $7c26: $80
	ld   bc, $0380                                   ; $7c27: $01 $80 $03
	add  b                                           ; $7c2a: $80
	rlca                                             ; $7c2b: $07
	add  b                                           ; $7c2c: $80
	rrca                                             ; $7c2d: $0f
	add  b                                           ; $7c2e: $80
	rra                                              ; $7c2f: $1f
	add  b                                           ; $7c30: $80
	ccf                                              ; $7c31: $3f
	add  d                                           ; $7c32: $82
	ld   a, a                                        ; $7c33: $7f
	add  b                                           ; $7c34: $80
	rst  $38                                         ; $7c35: $ff
	add  b                                           ; $7c36: $80
	cp   $80                                         ; $7c37: $fe $80
	db   $fc                                         ; $7c39: $fc
	add  b                                           ; $7c3a: $80

jr_08e_7c3b:
	ld   hl, sp-$80                                  ; $7c3b: $f8 $80
	ldh  [$80], a                                    ; $7c3d: $e0 $80
	ret  nz                                          ; $7c3f: $c0

	add  b                                           ; $7c40: $80
	add  b                                           ; $7c41: $80
	add  d                                           ; $7c42: $82
	nop                                              ; $7c43: $00
	add  b                                           ; $7c44: $80
	ld   bc, $0380                                   ; $7c45: $01 $80 $03
	add  b                                           ; $7c48: $80
	rlca                                             ; $7c49: $07
	add  [hl]                                        ; $7c4a: $86
	nop                                              ; $7c4b: $00

Call_08e_7c4c:
	add  b                                           ; $7c4c: $80
	rst  $38                                         ; $7c4d: $ff
	add  b                                           ; $7c4e: $80
	cp   $80                                         ; $7c4f: $fe $80
	ld   hl, sp-$80                                  ; $7c51: $f8 $80
	ldh  a, [$86]                                    ; $7c53: $f0 $86
	nop                                              ; $7c55: $00
	add  b                                           ; $7c56: $80
	inc  b                                           ; $7c57: $04
	add  b                                           ; $7c58: $80
	jr   jr_08e_7bdb                                 ; $7c59: $18 $80

	ld   [hl], b                                     ; $7c5b: $70
	add  b                                           ; $7c5c: $80
	ldh  [$80], a                                    ; $7c5d: $e0 $80
	ret  nz                                          ; $7c5f: $c0

	add  b                                           ; $7c60: $80
	add  b                                           ; $7c61: $80
	add  d                                           ; $7c62: $82
	nop                                              ; $7c63: $00
	add  b                                           ; $7c64: $80
	ld   bc, $0380                                   ; $7c65: $01 $80 $03
	add  b                                           ; $7c68: $80
	rlca                                             ; $7c69: $07
	add  b                                           ; $7c6a: $80
	rrca                                             ; $7c6b: $0f
	add  b                                           ; $7c6c: $80
	rra                                              ; $7c6d: $1f
	add  b                                           ; $7c6e: $80
	ccf                                              ; $7c6f: $3f
	add  b                                           ; $7c70: $80
	ld   a, a                                        ; $7c71: $7f
	add  b                                           ; $7c72: $80
	rst  $38                                         ; $7c73: $ff
	add  b                                           ; $7c74: $80
	inc  bc                                          ; $7c75: $03
	add  b                                           ; $7c76: $80
	ccf                                              ; $7c77: $3f
	add  b                                           ; $7c78: $80
	ld   a, a                                        ; $7c79: $7f
	add  d                                           ; $7c7a: $82
	rst  $38                                         ; $7c7b: $ff
	add  b                                           ; $7c7c: $80
	cp   $80                                         ; $7c7d: $fe $80

jr_08e_7c7f:
	db   $fc                                         ; $7c7f: $fc
	add  b                                           ; $7c80: $80
	ld   hl, sp-$80                                  ; $7c81: $f8 $80
	inc  bc                                          ; $7c83: $03
	add  b                                           ; $7c84: $80
	rlca                                             ; $7c85: $07
	add  b                                           ; $7c86: $80
	ccf                                              ; $7c87: $3f
	add  b                                           ; $7c88: $80
	cp   $80                                         ; $7c89: $fe $80
	db   $fc                                         ; $7c8b: $fc
	add  b                                           ; $7c8c: $80
	ld   hl, sp-$80                                  ; $7c8d: $f8 $80
	ldh  a, [$80]                                    ; $7c8f: $f0 $80
	ldh  [$80], a                                    ; $7c91: $e0 $80
	ld   bc, $0380                                   ; $7c93: $01 $80 $03
	add  b                                           ; $7c96: $80
	rlca                                             ; $7c97: $07
	add  b                                           ; $7c98: $80
	rrca                                             ; $7c99: $0f
	add  b                                           ; $7c9a: $80
	rra                                              ; $7c9b: $1f
	add  b                                           ; $7c9c: $80
	ld   a, $80                                      ; $7c9d: $3e $80
	ld   [hl], b                                     ; $7c9f: $70
	add  b                                           ; $7ca0: $80
	add  b                                           ; $7ca1: $80
	add  b                                           ; $7ca2: $80
	rst  $38                                         ; $7ca3: $ff
	add  b                                           ; $7ca4: $80
	cp   $80                                         ; $7ca5: $fe $80
	db   $fc                                         ; $7ca7: $fc
	add  b                                           ; $7ca8: $80
	ld   hl, sp-$80                                  ; $7ca9: $f8 $80
	ret  nz                                          ; $7cab: $c0

	add  h                                           ; $7cac: $84
	nop                                              ; $7cad: $00
	add  b                                           ; $7cae: $80
	ldh  a, [$80]                                    ; $7caf: $f0 $80
	ldh  [$80], a                                    ; $7cb1: $e0 $80
	ret  nz                                          ; $7cb3: $c0

	add  b                                           ; $7cb4: $80
	add  b                                           ; $7cb5: $80
	add  [hl]                                        ; $7cb6: $86
	nop                                              ; $7cb7: $00
	add  b                                           ; $7cb8: $80
	jr   c, jr_08e_7c3b                              ; $7cb9: $38 $80

	rrca                                             ; $7cbb: $0f
	add  b                                           ; $7cbc: $80
	inc  bc                                          ; $7cbd: $03
	adc  b                                           ; $7cbe: $88

jr_08e_7cbf:
	nop                                              ; $7cbf: $00
	add  b                                           ; $7cc0: $80
	add  b                                           ; $7cc1: $80
	add  b                                           ; $7cc2: $80
	ldh  a, [$80]                                    ; $7cc3: $f0 $80
	db   $fc                                         ; $7cc5: $fc
	add  d                                           ; $7cc6: $82
	rra                                              ; $7cc7: $1f
	add  b                                           ; $7cc8: $80
	rlca                                             ; $7cc9: $07
	add  b                                           ; $7cca: $80
	ld   bc, $0082                                   ; $7ccb: $01 $82 $00
	add  b                                           ; $7cce: $80
	rlca                                             ; $7ccf: $07
	add  b                                           ; $7cd0: $80
	ccf                                              ; $7cd1: $3f
	add  h                                           ; $7cd2: $84

jr_08e_7cd3:
	rst  $38                                         ; $7cd3: $ff
	add  b                                           ; $7cd4: $80

jr_08e_7cd5:
	cp   $80                                         ; $7cd5: $fe $80

jr_08e_7cd7:
	ldh  a, [$80]                                    ; $7cd7: $f0 $80
	nop                                              ; $7cd9: $00
	add  b                                           ; $7cda: $80
	ld   hl, sp-$7a                                  ; $7cdb: $f8 $86
	rst  $38                                         ; $7cdd: $ff
	add  b                                           ; $7cde: $80
	rlca                                             ; $7cdf: $07
	add  b                                           ; $7ce0: $80
	nop                                              ; $7ce1: $00
	add  b                                           ; $7ce2: $80
	ret  nz                                          ; $7ce3: $c0

	add  b                                           ; $7ce4: $80
	db   $fc                                         ; $7ce5: $fc
	add  [hl]                                        ; $7ce6: $86

jr_08e_7ce7:
	rst  $38                                         ; $7ce7: $ff
	add  b                                           ; $7ce8: $80
	ccf                                              ; $7ce9: $3f
	add  b                                           ; $7cea: $80
	inc  bc                                          ; $7ceb: $03
	add  b                                           ; $7cec: $80
	ldh  a, [$86]                                    ; $7ced: $f0 $86
	rst  $38                                         ; $7cef: $ff
	add  b                                           ; $7cf0: $80
	cp   $80                                         ; $7cf1: $fe $80
	ld   hl, sp-$80                                  ; $7cf3: $f8 $80
	jr   nc, jr_08e_7c7f                             ; $7cf5: $30 $88

	nop                                              ; $7cf7: $00
	add  b                                           ; $7cf8: $80
	rst  $38                                         ; $7cf9: $ff
	add  b                                           ; $7cfa: $80
	ld   hl, sp-$80                                  ; $7cfb: $f8 $80
	ret  nz                                          ; $7cfd: $c0

	adc  d                                           ; $7cfe: $8a
	nop                                              ; $7cff: $00
	add  b                                           ; $7d00: $80
	ld   bc, $0380                                   ; $7d01: $01 $80 $03
	add  h                                           ; $7d04: $84
	nop                                              ; $7d05: $00
	add  b                                           ; $7d06: $80
	inc  bc                                          ; $7d07: $03
	add  b                                           ; $7d08: $80
	ccf                                              ; $7d09: $3f
	add  b                                           ; $7d0a: $80
	rst  $38                                         ; $7d0b: $ff
	add  b                                           ; $7d0c: $80
	db   $fc                                         ; $7d0d: $fc
	add  b                                           ; $7d0e: $80
	ldh  a, [$84]                                    ; $7d0f: $f0 $84
	nop                                              ; $7d11: $00
	add  b                                           ; $7d12: $80
	ldh  a, [$80]                                    ; $7d13: $f0 $80
	cp   $80                                         ; $7d15: $fe $80
	rst  $38                                         ; $7d17: $ff
	add  b                                           ; $7d18: $80
	ccf                                              ; $7d19: $3f
	add  b                                           ; $7d1a: $80
	rlca                                             ; $7d1b: $07
	add  d                                           ; $7d1c: $82
	nop                                              ; $7d1d: $00
	add  b                                           ; $7d1e: $80
	add  b                                           ; $7d1f: $80
	add  d                                           ; $7d20: $82
	nop                                              ; $7d21: $00
	add  b                                           ; $7d22: $80
	ldh  [$80], a                                    ; $7d23: $e0 $80
	add  b                                           ; $7d25: $80
	add  b                                           ; $7d26: $80
	ret  nz                                          ; $7d27: $c0

	add  b                                           ; $7d28: $80
	rlca                                             ; $7d29: $07
	add  d                                           ; $7d2a: $82
	rrca                                             ; $7d2b: $0f
	add  d                                           ; $7d2c: $82
	ld   e, $80                                      ; $7d2d: $1e $80
	inc  e                                           ; $7d2f: $1c
	add  d                                           ; $7d30: $82
	inc  a                                           ; $7d31: $3c
	add  b                                           ; $7d32: $80
	ret  nz                                          ; $7d33: $c0

	add  b                                           ; $7d34: $80
	add  b                                           ; $7d35: $80
	adc  d                                           ; $7d36: $8a
	nop                                              ; $7d37: $00
	add  b                                           ; $7d38: $80
	rrca                                             ; $7d39: $0f
	add  b                                           ; $7d3a: $80

jr_08e_7d3b:
	add  hl, de                                      ; $7d3b: $19
	add  b                                           ; $7d3c: $80
	jr   jr_08e_7cbf                                 ; $7d3d: $18 $80

	db   $10                                         ; $7d3f: $10
	add  b                                           ; $7d40: $80
	nop                                              ; $7d41: $00
	add  b                                           ; $7d42: $80
	ld   [$0082], sp                                 ; $7d43: $08 $82 $00
	add  b                                           ; $7d46: $80
	ldh  [$82], a                                    ; $7d47: $e0 $82
	ldh  a, [$80]                                    ; $7d49: $f0 $80
	ld   a, b                                        ; $7d4b: $78
	add  b                                           ; $7d4c: $80
	jr   c, jr_08e_7cd3                              ; $7d4d: $38 $84

	inc  a                                           ; $7d4f: $3c
	add  h                                           ; $7d50: $84
	jr   c, jr_08e_7cd7                              ; $7d51: $38 $84

	jr   jr_08e_7cd5                                 ; $7d53: $18 $80

	ld   [$0086], sp                                 ; $7d55: $08 $86 $00
	add  d                                           ; $7d58: $82
	ld   b, h                                        ; $7d59: $44
	add  b                                           ; $7d5a: $80
	ld   c, b                                        ; $7d5b: $48
	add  b                                           ; $7d5c: $80
	ld   l, b                                        ; $7d5d: $68
	add  b                                           ; $7d5e: $80
	jr   c, jr_08e_7ce7                              ; $7d5f: $38 $86

	inc  e                                           ; $7d61: $1c
	add  b                                           ; $7d62: $80
	cp   $80                                         ; $7d63: $fe $80
	rra                                              ; $7d65: $1f
	add  b                                           ; $7d66: $80

jr_08e_7d67:
	ld   a, $80                                      ; $7d67: $3e $80
	ld   [hl-], a                                    ; $7d69: $32
	adc  d                                           ; $7d6a: $8a
	nop                                              ; $7d6b: $00
	add  b                                           ; $7d6c: $80
	add  b                                           ; $7d6d: $80
	add  b                                           ; $7d6e: $80
	nop                                              ; $7d6f: $00
	add  b                                           ; $7d70: $80
	rlca                                             ; $7d71: $07
	add  b                                           ; $7d72: $80
	inc  bc                                          ; $7d73: $03
	add  b                                           ; $7d74: $80
	rrca                                             ; $7d75: $0f
	adc  b                                           ; $7d76: $88
	nop                                              ; $7d77: $00
	add  b                                           ; $7d78: $80
	ld   hl, sp-$80                                  ; $7d79: $f8 $80
	ldh  a, [$80]                                    ; $7d7b: $f0 $80
	ldh  [$80], a                                    ; $7d7d: $e0 $80
	ld   hl, sp-$80                                  ; $7d7f: $f8 $80
	ld   a, $80                                      ; $7d81: $3e $80
	rlca                                             ; $7d83: $07
	adc  h                                           ; $7d84: $8c
	nop                                              ; $7d85: $00
	add  b                                           ; $7d86: $80
	ldh  [$82], a                                    ; $7d87: $e0 $82
	nop                                              ; $7d89: $00
	add  b                                           ; $7d8a: $80
	ld   h, b                                        ; $7d8b: $60
	add  b                                           ; $7d8c: $80
	pop  bc                                          ; $7d8d: $c1
	sub  d                                           ; $7d8e: $92
	nop                                              ; $7d8f: $00
	add  b                                           ; $7d90: $80
	ld   bc, $0780                                   ; $7d91: $01 $80 $07
	add  b                                           ; $7d94: $80
	rrca                                             ; $7d95: $0f
	add  b                                           ; $7d96: $80
	rra                                              ; $7d97: $1f
	add  b                                           ; $7d98: $80
	nop                                              ; $7d99: $00
	add  b                                           ; $7d9a: $80
	rlca                                             ; $7d9b: $07
	add  b                                           ; $7d9c: $80
	ccf                                              ; $7d9d: $3f
	add  b                                           ; $7d9e: $80
	rst  $38                                         ; $7d9f: $ff
	add  b                                           ; $7da0: $80
	db   $fc                                         ; $7da1: $fc
	add  b                                           ; $7da2: $80
	ldh  a, [$80]                                    ; $7da3: $f0 $80
	ret  nz                                          ; $7da5: $c0

	add  b                                           ; $7da6: $80
	nop                                              ; $7da7: $00
	add  b                                           ; $7da8: $80
	cp   $80                                         ; $7da9: $fe $80
	ld   sp, hl                                      ; $7dab: $f9
	add  b                                           ; $7dac: $80
	ldh  a, [$88]                                    ; $7dad: $f0 $88
	nop                                              ; $7daf: $00
	add  b                                           ; $7db0: $80
	ldh  [$80], a                                    ; $7db1: $e0 $80
	ld   bc, $008c                                   ; $7db3: $01 $8c $00
	add  b                                           ; $7db6: $80
	add  b                                           ; $7db7: $80
	add  b                                           ; $7db8: $80
	jr   nz, jr_08e_7d3b                             ; $7db9: $20 $80

	ld   de, $0b80                                   ; $7dbb: $11 $80 $0b
	add  d                                           ; $7dbe: $82
	rlca                                             ; $7dbf: $07
	add  b                                           ; $7dc0: $80
	rrca                                             ; $7dc1: $0f
	add  b                                           ; $7dc2: $80
	ld   a, $80                                      ; $7dc3: $3e $80
	ld   a, h                                        ; $7dc5: $7c
	add  b                                           ; $7dc6: $80
	ld   hl, sp-$80                                  ; $7dc7: $f8 $80
	ldh  a, [$80]                                    ; $7dc9: $f0 $80
	ldh  [$82], a                                    ; $7dcb: $e0 $82
	ret  nz                                          ; $7dcd: $c0

	add  b                                           ; $7dce: $80
	add  b                                           ; $7dcf: $80
	add  b                                           ; $7dd0: $80
	rrca                                             ; $7dd1: $0f
	add  d                                           ; $7dd2: $82
	rra                                              ; $7dd3: $1f
	add  d                                           ; $7dd4: $82
	ld   a, $80                                      ; $7dd5: $3e $80
	inc  a                                           ; $7dd7: $3c
	add  d                                           ; $7dd8: $82
	ld   a, h                                        ; $7dd9: $7c
	add  b                                           ; $7dda: $80
	nop                                              ; $7ddb: $00
	add  b                                           ; $7ddc: $80
	ld   [bc], a                                     ; $7ddd: $02
	add  b                                           ; $7dde: $80
	inc  b                                           ; $7ddf: $04
	add  b                                           ; $7de0: $80
	adc  b                                           ; $7de1: $88
	add  d                                           ; $7de2: $82
	ld   [hl], b                                     ; $7de3: $70
	add  b                                           ; $7de4: $80
	jr   c, jr_08e_7d67                              ; $7de5: $38 $80

	ld   e, b                                        ; $7de7: $58
	add  d                                           ; $7de8: $82
	ld   [$0482], sp                                 ; $7de9: $08 $82 $04
	add  [hl]                                        ; $7dec: $86
	nop                                              ; $7ded: $00
	add  b                                           ; $7dee: $80
	ld   a, h                                        ; $7def: $7c
	add  d                                           ; $7df0: $82
	ld   a, b                                        ; $7df1: $78
	adc  [hl]                                        ; $7df2: $8e
	ld   hl, sp-$78                                  ; $7df3: $f8 $88
	db   $fc                                         ; $7df5: $fc
	add  b                                           ; $7df6: $80

jr_08e_7df7:
	cp   $82                                         ; $7df7: $fe $82
	ld   a, [hl]                                     ; $7df9: $7e
	add  b                                           ; $7dfa: $80
	ld   a, a                                        ; $7dfb: $7f
	add  [hl]                                        ; $7dfc: $86
	ccf                                              ; $7dfd: $3f
	add  h                                           ; $7dfe: $84
	rra                                              ; $7dff: $1f
	add  b                                           ; $7e00: $80
	rrca                                             ; $7e01: $0f
	add  b                                           ; $7e02: $80
	rla                                              ; $7e03: $17
	add  b                                           ; $7e04: $80
	daa                                              ; $7e05: $27
	add  b                                           ; $7e06: $80
	ld   b, e                                        ; $7e07: $43
	add  b                                           ; $7e08: $80
	add  c                                           ; $7e09: $81
	add  d                                           ; $7e0a: $82
	add  b                                           ; $7e0b: $80
	add  b                                           ; $7e0c: $80
	ret  nz                                          ; $7e0d: $c0

	add  d                                           ; $7e0e: $82
	ldh  [$80], a                                    ; $7e0f: $e0 $80
	ldh  a, [$80]                                    ; $7e11: $f0 $80
	ld   hl, sp-$80                                  ; $7e13: $f8 $80
	db   $fc                                         ; $7e15: $fc
	adc  b                                           ; $7e16: $88
	nop                                              ; $7e17: $00
	add  b                                           ; $7e18: $80
	add  b                                           ; $7e19: $80
	add  b                                           ; $7e1a: $80
	ret  nz                                          ; $7e1b: $c0

	add  b                                           ; $7e1c: $80
	ldh  a, [$80]                                    ; $7e1d: $f0 $80
	cp   $82                                         ; $7e1f: $fe $82
	rst  $38                                         ; $7e21: $ff
	add  b                                           ; $7e22: $80
	ld   a, a                                        ; $7e23: $7f
	add  b                                           ; $7e24: $80
	ccf                                              ; $7e25: $3f
	add  b                                           ; $7e26: $80
	rra                                              ; $7e27: $1f
	add  b                                           ; $7e28: $80
	rrca                                             ; $7e29: $0f
	add  b                                           ; $7e2a: $80
	inc  bc                                          ; $7e2b: $03
	add  b                                           ; $7e2c: $80
	db   $fc                                         ; $7e2d: $fc
	add  [hl]                                        ; $7e2e: $86
	rst  $38                                         ; $7e2f: $ff
	add  b                                           ; $7e30: $80
	ccf                                              ; $7e31: $3f
	add  b                                           ; $7e32: $80
	rrca                                             ; $7e33: $0f
	add  b                                           ; $7e34: $80

jr_08e_7e35:
	ld   bc, $8080                                   ; $7e35: $01 $80 $80
	add  b                                           ; $7e38: $80
	ld   hl, sp-$78                                  ; $7e39: $f8 $88
	rst  $38                                         ; $7e3b: $ff
	add  b                                           ; $7e3c: $80
	rrca                                             ; $7e3d: $0f
	add  b                                           ; $7e3e: $80
	nop                                              ; $7e3f: $00
	add  b                                           ; $7e40: $80
	ld   [bc], a                                     ; $7e41: $02
	adc  b                                           ; $7e42: $88
	rst  $38                                         ; $7e43: $ff
	add  b                                           ; $7e44: $80
	db   $fc                                         ; $7e45: $fc
	add  d                                           ; $7e46: $82
	nop                                              ; $7e47: $00
	add  b                                           ; $7e48: $80
	add  b                                           ; $7e49: $80
	add  b                                           ; $7e4a: $80
	rst  ToBoot                                         ; $7e4b: $c7
	add  h                                           ; $7e4c: $84
	rst  $38                                         ; $7e4d: $ff
	add  b                                           ; $7e4e: $80
	cp   $80                                         ; $7e4f: $fe $80
	rrca                                             ; $7e51: $0f
	add  b                                           ; $7e52: $80
	ld   a, $80                                      ; $7e53: $3e $80
	db   $fc                                         ; $7e55: $fc
	add  b                                           ; $7e56: $80
	ld   hl, sp-$80                                  ; $7e57: $f8 $80
	ldh  a, [$80]                                    ; $7e59: $f0 $80
	ldh  [$80], a                                    ; $7e5b: $e0 $80
	add  b                                           ; $7e5d: $80
	add  b                                           ; $7e5e: $80
	nop                                              ; $7e5f: $00
	add  b                                           ; $7e60: $80
	ld   hl, sp-$80                                  ; $7e61: $f8 $80
	add  sp, -$80                                    ; $7e63: $e8 $80
	inc  b                                           ; $7e65: $04
	add  b                                           ; $7e66: $80
	nop                                              ; $7e67: $00
	add  b                                           ; $7e68: $80
	ld   [bc], a                                     ; $7e69: $02
	adc  [hl]                                        ; $7e6a: $8e
	nop                                              ; $7e6b: $00
	add  b                                           ; $7e6c: $80
	ld   bc, $0380                                   ; $7e6d: $01 $80 $03
	add  b                                           ; $7e70: $80
	rlca                                             ; $7e71: $07
	add  d                                           ; $7e72: $82
	jr   c, jr_08e_7df7                              ; $7e73: $38 $82

	ld   [hl], b                                     ; $7e75: $70
	add  b                                           ; $7e76: $80
	ldh  [$82], a                                    ; $7e77: $e0 $82
	ret  nz                                          ; $7e79: $c0

	add  b                                           ; $7e7a: $80
	add  b                                           ; $7e7b: $80
	add  b                                           ; $7e7c: $80
	ld   bc, $0380                                   ; $7e7d: $01 $80 $03
	add  h                                           ; $7e80: $84
	ld   [bc], a                                     ; $7e81: $02
	add  b                                           ; $7e82: $80
	ld   b, $82                                      ; $7e83: $06 $82
	inc  b                                           ; $7e85: $04
	add  d                                           ; $7e86: $82
	nop                                              ; $7e87: $00
	adc  d                                           ; $7e88: $8a
	ld   bc, $0282                                   ; $7e89: $01 $82 $02
	add  d                                           ; $7e8c: $82
	inc  bc                                          ; $7e8d: $03
	add  b                                           ; $7e8e: $80
	ld   b, e                                        ; $7e8f: $43
	add  b                                           ; $7e90: $80
	inc  sp                                          ; $7e91: $33
	add  b                                           ; $7e92: $80
	rra                                              ; $7e93: $1f
	add  b                                           ; $7e94: $80
	rrca                                             ; $7e95: $0f
	add  [hl]                                        ; $7e96: $86
	nop                                              ; $7e97: $00
	add  b                                           ; $7e98: $80
	add  [hl]                                        ; $7e99: $86
	add  b                                           ; $7e9a: $80
	cp   h                                           ; $7e9b: $bc
	add  b                                           ; $7e9c: $80
	ld   hl, sp-$80                                  ; $7e9d: $f8 $80
	ldh  a, [$80]                                    ; $7e9f: $f0 $80
	rrca                                             ; $7ea1: $0f
	add  b                                           ; $7ea2: $80
	ccf                                              ; $7ea3: $3f
	add  b                                           ; $7ea4: $80
	rst  $38                                         ; $7ea5: $ff
	add  b                                           ; $7ea6: $80
	rlca                                             ; $7ea7: $07
	add  d                                           ; $7ea8: $82
	ld   b, $82                                      ; $7ea9: $06 $82
	inc  b                                           ; $7eab: $04
	add  b                                           ; $7eac: $80
	ldh  [$82], a                                    ; $7ead: $e0 $82
	ldh  a, [$80]                                    ; $7eaf: $f0 $80
	ld   hl, sp-$80                                  ; $7eb1: $f8 $80
	jr   jr_08e_7e35                                 ; $7eb3: $18 $80

	inc  b                                           ; $7eb5: $04
	adc  b                                           ; $7eb6: $88
	nop                                              ; $7eb7: $00
	add  h                                           ; $7eb8: $84
	ld   [$1c80], sp                                 ; $7eb9: $08 $80 $1c
	add  b                                           ; $7ebc: $80
	rst  $38                                         ; $7ebd: $ff
	add  b                                           ; $7ebe: $80
	ccf                                              ; $7ebf: $3f
	add  b                                           ; $7ec0: $80
	inc  e                                           ; $7ec1: $1c
	add  b                                           ; $7ec2: $80
	ld   a, $80                                      ; $7ec3: $3e $80
	ld   [hl+], a                                    ; $7ec5: $22
	add  b                                           ; $7ec6: $80
	ld   b, c                                        ; $7ec7: $41
	rst  $38                                         ; $7ec8: $ff
	nop                                              ; $7ec9: $00
	rst  $38                                         ; $7eca: $ff
	nop                                              ; $7ecb: $00
	rst  $38                                         ; $7ecc: $ff
	nop                                              ; $7ecd: $00
	rst  $38                                         ; $7ece: $ff
	nop                                              ; $7ecf: $00
	rst  $38                                         ; $7ed0: $ff
	nop                                              ; $7ed1: $00
	rst  $38                                         ; $7ed2: $ff
	nop                                              ; $7ed3: $00
	sbc  [hl]                                        ; $7ed4: $9e
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
	ld   bc, $0201                                   ; $7eec: $01 $01 $02
	inc  bc                                          ; $7eef: $03
	dec  b                                           ; $7ef0: $05
	ld   b, $05                                      ; $7ef1: $06 $05
	ld   b, $04                                      ; $7ef3: $06 $04
	rlca                                             ; $7ef5: $07
	inc  b                                           ; $7ef6: $04
	rlca                                             ; $7ef7: $07
	ld   [bc], a                                     ; $7ef8: $02
	inc  bc                                          ; $7ef9: $03
	ld   bc, $0001                                   ; $7efa: $01 $01 $00
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
	adc  h                                           ; $7f0c: $8c
	adc  h                                           ; $7f0d: $8c
	ld   d, d                                        ; $7f0e: $52
	sbc  $a1                                         ; $7f0f: $de $a1
	ld   a, a                                        ; $7f11: $7f
	ld   bc, $01ff                                   ; $7f12: $01 $ff $01
	rst  $38                                         ; $7f15: $ff
	ld   bc, $02ff                                   ; $7f16: $01 $ff $02
	cp   $04                                         ; $7f19: $fe $04
	db   $fc                                         ; $7f1b: $fc
	adc  b                                           ; $7f1c: $88
	ld   hl, sp+$70                                  ; $7f1d: $f8 $70
	ld   [hl], b                                     ; $7f1f: $70
	ld   l, h                                        ; $7f20: $6c
	ld   l, h                                        ; $7f21: $6c
	jp   nc, $82be                                   ; $7f22: $d2 $be $82

	cp   $82                                         ; $7f25: $fe $82
	cp   $44                                         ; $7f27: $fe $44
	ld   a, h                                        ; $7f29: $7c
	jr   z, jr_08e_7f64                              ; $7f2a: $28 $38

	db   $10                                         ; $7f2c: $10
	stop                                             ; $7f2d: $10 $00
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
	jr   nc, jr_08e_7f82                             ; $7f50: $30 $30

	ld   l, b                                        ; $7f52: $68
	ld   e, b                                        ; $7f53: $58
	ld   c, b                                        ; $7f54: $48
	ld   a, b                                        ; $7f55: $78
	jr   nc, @+$32                                   ; $7f56: $30 $30

	nop                                              ; $7f58: $00
	nop                                              ; $7f59: $00
	nop                                              ; $7f5a: $00
	nop                                              ; $7f5b: $00
	nop                                              ; $7f5c: $00
	nop                                              ; $7f5d: $00
	nop                                              ; $7f5e: $00
	nop                                              ; $7f5f: $00
	ld   bc, $0201                                   ; $7f60: $01 $01 $02
	inc  bc                                          ; $7f63: $03

jr_08e_7f64:
	dec  b                                           ; $7f64: $05
	ld   b, $05                                      ; $7f65: $06 $05
	ld   b, $04                                      ; $7f67: $06 $04
	rlca                                             ; $7f69: $07
	inc  b                                           ; $7f6a: $04
	rlca                                             ; $7f6b: $07
	ld   [bc], a                                     ; $7f6c: $02
	inc  bc                                          ; $7f6d: $03
	ld   bc, $0001                                   ; $7f6e: $01 $01 $00
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

Jump_08e_7f80:
	adc  h                                           ; $7f80: $8c
	adc  h                                           ; $7f81: $8c

jr_08e_7f82:
	ld   d, d                                        ; $7f82: $52
	sbc  $a1                                         ; $7f83: $de $a1
	ld   a, a                                        ; $7f85: $7f
	ld   bc, $01ff                                   ; $7f86: $01 $ff $01
	rst  $38                                         ; $7f89: $ff
	ld   bc, $02ff                                   ; $7f8a: $01 $ff $02
	cp   $04                                         ; $7f8d: $fe $04
	db   $fc                                         ; $7f8f: $fc
	adc  b                                           ; $7f90: $88
	ld   hl, sp+$70                                  ; $7f91: $f8 $70
	ld   [hl], b                                     ; $7f93: $70
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
	ld   l, h                                        ; $7fb0: $6c
	ld   l, h                                        ; $7fb1: $6c
	jp   nc, $82be                                   ; $7fb2: $d2 $be $82

	cp   $82                                         ; $7fb5: $fe $82
	cp   $44                                         ; $7fb7: $fe $44
	ld   a, h                                        ; $7fb9: $7c
	jr   z, jr_08e_7ff4                              ; $7fba: $28 $38

	db   $10                                         ; $7fbc: $10
	stop                                             ; $7fbd: $10 $00
	nop                                              ; $7fbf: $00
	jr   nc, jr_08e_7ff2                             ; $7fc0: $30 $30

	ld   l, b                                        ; $7fc2: $68
	ld   e, b                                        ; $7fc3: $58
	ld   c, b                                        ; $7fc4: $48
	ld   a, b                                        ; $7fc5: $78
	jr   nc, jr_08e_7ff8                             ; $7fc6: $30 $30

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
	rst  $38                                         ; $7fe0: $ff
	ld   a, a                                        ; $7fe1: $7f
	nop                                              ; $7fe2: $00
	nop                                              ; $7fe3: $00
	nop                                              ; $7fe4: $00
	nop                                              ; $7fe5: $00
	and  l                                           ; $7fe6: $a5
	inc  d                                           ; $7fe7: $14
	rst  $38                                         ; $7fe8: $ff
	ld   a, a                                        ; $7fe9: $7f
	add  hl, de                                      ; $7fea: $19
	dec  sp                                          ; $7feb: $3b
	jp   nc, $2a29                                   ; $7fec: $d2 $29 $2a

	dec  [hl]                                        ; $7fef: $35
	rst  $38                                         ; $7ff0: $ff
	ld   a, a                                        ; $7ff1: $7f

jr_08e_7ff2:
	add  hl, de                                      ; $7ff2: $19
	dec  sp                                          ; $7ff3: $3b

jr_08e_7ff4:
	ld   l, [hl]                                     ; $7ff4: $6e
	ld   a, l                                        ; $7ff5: $7d
	ld   a, [hl+]                                    ; $7ff6: $2a
	dec  [hl]                                        ; $7ff7: $35

jr_08e_7ff8:
	rst  $38                                         ; $7ff8: $ff
	ld   a, a                                        ; $7ff9: $7f
	ld   l, [hl]                                     ; $7ffa: $6e
	ld   a, l                                        ; $7ffb: $7d
	sub  d                                           ; $7ffc: $92
	halt                                             ; $7ffd: $76
	ld   a, [hl+]                                    ; $7ffe: $2a
	dec  [hl]                                        ; $7fff: $35
