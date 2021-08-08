; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $081", ROMX[$4000], BANK[$81]

	or   c                                           ; $4000: $b1
	nop                                              ; $4001: $00
	adc  [hl]                                        ; $4002: $8e
	nop                                              ; $4003: $00
	adc  e                                           ; $4004: $8b
	ldh  a, [rDIV]                                   ; $4005: $f0 $04
	ld   [hl], b                                     ; $4007: $70
	ldh  a, [rP1]                                    ; $4008: $f0 $00
	ld   [hl], d                                     ; $400a: $72
	dec  c                                           ; $400b: $0d
	add  b                                           ; $400c: $80
	ld   e, $80                                      ; $400d: $1e $80
	rra                                              ; $400f: $1f
	ld   bc, $0f00                                   ; $4010: $01 $00 $0f
	add  [hl]                                        ; $4013: $86
	nop                                              ; $4014: $00
	rlca                                             ; $4015: $07
	ld   bc, $01ff                                   ; $4016: $01 $ff $01
	nop                                              ; $4019: $00
	cp   $ff                                         ; $401a: $fe $ff
	nop                                              ; $401c: $00
	cp   $86                                         ; $401d: $fe $86
	nop                                              ; $401f: $00
	ld   [bc], a                                     ; $4020: $02
	ret  nz                                          ; $4021: $c0

	ld   h, b                                        ; $4022: $60
	db   $20, $80                                    ; $4023: $20 $80
	ld   b, b                                        ; $4025: $40
	nop                                              ; $4026: $00
	add  b                                           ; $4027: $80
	adc  h                                           ; $4028: $8c
	nop                                              ; $4029: $00
	add  b                                           ; $402a: $80
	ld   bc, $0003                                   ; $402b: $01 $03 $00
	ld   bc, $0100                                   ; $402e: $01 $00 $01
	add  b                                           ; $4031: $80
	dec  b                                           ; $4032: $05
	add  b                                           ; $4033: $80
	ld   [$100b], sp                                 ; $4034: $08 $0b $10
	jr   jr_081_4082                                 ; $4037: $18 $49

	ld   h, e                                        ; $4039: $63
	and  c                                           ; $403a: $a1
	jp   $8948                                       ; $403b: $c3 $48 $89


	sbc  c                                           ; $403e: $99
	add  hl, de                                      ; $403f: $19
	sbc  h                                           ; $4040: $9c
	db   $dd                                         ; $4041: $dd
	add  b                                           ; $4042: $80

jr_081_4043:
	call c, $cc80                                    ; $4043: $dc $80 $cc
	add  b                                           ; $4046: $80
	adc  $03                                         ; $4047: $ce $03
	ld   e, b                                        ; $4049: $58
	db   $18, $8c                                    ; $404a: $18 $8c
	sbc  h                                           ; $404c: $9c
	add  b                                           ; $404d: $80
	sbc  [hl]                                        ; $404e: $9e
	rlca                                             ; $404f: $07
	ld   b, $9f                                      ; $4050: $06 $9f
	ret  z                                           ; $4052: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4053: $cf
	ret  z                                           ; $4054: $c8

	ret                                              ; $4055: $c9


	jr   nz, jr_081_4043                             ; $4056: $20 $eb

	add  b                                           ; $4058: $80
	and  $10                                         ; $4059: $e6 $10
	ld   h, h                                        ; $405b: $64
	ret  nz                                          ; $405c: $c0

	ld   h, b                                        ; $405d: $60
	ret  nz                                          ; $405e: $c0

	inc  bc                                          ; $405f: $03
	cp   a                                           ; $4060: $bf
	inc  c                                           ; $4061: $0c
	ld   [hl], b                                     ; $4062: $70
	ld   b, b                                        ; $4063: $40
	ret  nz                                          ; $4064: $c0

	rra                                              ; $4065: $1f
	cp   $e2                                         ; $4066: $fe $e2
	nop                                              ; $4068: $00
	inc  b                                           ; $4069: $04
	nop                                              ; $406a: $00
	add  hl, bc                                      ; $406b: $09
	add  c                                           ; $406c: $81
	nop                                              ; $406d: $00
	add  b                                           ; $406e: $80
	push af                                          ; $406f: $f5
	add  b                                           ; $4070: $80
	inc  b                                           ; $4071: $04

jr_081_4072:
	inc  bc                                          ; $4072: $03
	ld   [hl], l                                     ; $4073: $75
	inc  b                                           ; $4074: $04
	add  b                                           ; $4075: $80
	nop                                              ; $4076: $00
	add  b                                           ; $4077: $80
	db   $10                                         ; $4078: $10
	add  b                                           ; $4079: $80
	inc  hl                                          ; $407a: $23
	ld   bc, $00ff                                   ; $407b: $01 $ff $00
	add  b                                           ; $407e: $80
	inc  bc                                          ; $407f: $03
	dec  c                                           ; $4080: $0d
	pop  hl                                          ; $4081: $e1

jr_081_4082:
	rst  $38                                         ; $4082: $ff
	add  hl, de                                      ; $4083: $19
	rlca                                             ; $4084: $07
	rst  ToBoot                                         ; $4085: $c7
	rlca                                             ; $4086: $07
	ccf                                              ; $4087: $3f
	nop                                              ; $4088: $00
	ld   b, b                                        ; $4089: $40
	ld   b, e                                        ; $408a: $43
	inc  hl                                          ; $408b: $23
	daa                                              ; $408c: $27
	add  a                                           ; $408d: $87
	ld   a, a                                        ; $408e: $7f
	add  b                                           ; $408f: $80
	rst  $38                                         ; $4090: $ff
	ld   [bc], a                                     ; $4091: $02
	ld   l, l                                        ; $4092: $6d
	sub  [hl]                                        ; $4093: $96
	inc  b                                           ; $4094: $04
	add  c                                           ; $4095: $81
	rst  $38                                         ; $4096: $ff
	ld   [bc], a                                     ; $4097: $02
	sbc  e                                           ; $4098: $9b
	ld   h, l                                        ; $4099: $65
	ld   bc, $ff81                                   ; $409a: $01 $81 $ff
	add  b                                           ; $409d: $80
	ld   hl, sp-$80                                  ; $409e: $f8 $80
	db   $fc                                         ; $40a0: $fc
	inc  bc                                          ; $40a1: $03
	ld   l, c                                        ; $40a2: $69
	sbc  a                                           ; $40a3: $9f
	ld   a, [bc]                                     ; $40a4: $0a
	db   $fc                                         ; $40a5: $fc
	add  b                                           ; $40a6: $80
	cp   $03                                         ; $40a7: $fe $03
	jr   c, jr_081_4072                              ; $40a9: $38 $c7

	ld   bc, $80fe                                   ; $40ab: $01 $fe $80
	db   $fc                                         ; $40ae: $fc
	dec  c                                           ; $40af: $0d
	rrca                                             ; $40b0: $0f
	ldh  a, [$7c]                                    ; $40b1: $f0 $7c
	db   $fc                                         ; $40b3: $fc
	ld   h, b                                        ; $40b4: $60
	ldh  [$87], a                                    ; $40b5: $e0 $87
	ld   a, a                                        ; $40b7: $7f
	ld   a, c                                        ; $40b8: $79
	ld   a, a                                        ; $40b9: $7f
	adc  h                                           ; $40ba: $8c
	ldh  a, [c]                                      ; $40bb: $f2
	nop                                              ; $40bc: $00
	ld   a, a                                        ; $40bd: $7f
	add  b                                           ; $40be: $80
	ccf                                              ; $40bf: $3f
	ld   bc, $08f7                                   ; $40c0: $01 $f7 $08
	add  d                                           ; $40c3: $82
	nop                                              ; $40c4: $00
	add  b                                           ; $40c5: $80
	ldh  a, [$80]                                    ; $40c6: $f0 $80
	rst  $38                                         ; $40c8: $ff
	ld   [bc], a                                     ; $40c9: $02
	jr   nc, jr_081_410a                             ; $40ca: $30 $3e

	ld   [$f981], sp                                 ; $40cc: $08 $81 $f9
	nop                                              ; $40cf: $00
	rst  $38                                         ; $40d0: $ff
	add  c                                           ; $40d1: $81
	nop                                              ; $40d2: $00
	add  d                                           ; $40d3: $82
	inc  b                                           ; $40d4: $04
	add  b                                           ; $40d5: $80
	add  h                                           ; $40d6: $84
	add  b                                           ; $40d7: $80
	nop                                              ; $40d8: $00
	ld   [bc], a                                     ; $40d9: $02
	ccf                                              ; $40da: $3f
	rst  $38                                         ; $40db: $ff
	ret  nz                                          ; $40dc: $c0

	add  b                                           ; $40dd: $80
	rst  $38                                         ; $40de: $ff
	add  l                                           ; $40df: $85
	nop                                              ; $40e0: $00
	add  b                                           ; $40e1: $80
	ld   d, l                                        ; $40e2: $55
	add  b                                           ; $40e3: $80
	xor  d                                           ; $40e4: $aa
	add  d                                           ; $40e5: $82
	nop                                              ; $40e6: $00
	add  [hl]                                        ; $40e7: $86
	rlca                                             ; $40e8: $07
	add  b                                           ; $40e9: $80
	ld   bc, $8680                                   ; $40ea: $01 $80 $86
	add  b                                           ; $40ed: $80
	rrca                                             ; $40ee: $0f
	add  b                                           ; $40ef: $80
	rlca                                             ; $40f0: $07
	nop                                              ; $40f1: $00
	rst  $30                                         ; $40f2: $f7
	add  e                                           ; $40f3: $83
	call z, $ec80                                    ; $40f4: $cc $80 $ec
	add  b                                           ; $40f7: $80
	db   $fc                                         ; $40f8: $fc
	add  b                                           ; $40f9: $80
	ld   a, h                                        ; $40fa: $7c
	inc  b                                           ; $40fb: $04
	sbc  h                                           ; $40fc: $9c
	cp   h                                           ; $40fd: $bc
	db   $e4                                         ; $40fe: $e4
	call c, $8b5c                                    ; $40ff: $dc $5c $8b
	ld   h, b                                        ; $4102: $60
	add  c                                           ; $4103: $81
	ldh  [$83], a                                    ; $4104: $e0 $83
	nop                                              ; $4106: $00
	add  b                                           ; $4107: $80
	inc  bc                                          ; $4108: $03
	add  b                                           ; $4109: $80

jr_081_410a:
	ld   b, $11                                      ; $410a: $06 $11
	jr   jr_081_412a                                 ; $410c: $18 $1c

	inc  [hl]                                        ; $410e: $34
	jr   c, jr_081_4179                              ; $410f: $38 $68

	ld   [hl], b                                     ; $4111: $70
	jr   nc, jr_081_4148                             ; $4112: $30 $34

	sub  $e6                                         ; $4114: $d6 $e6
	ld   h, a                                        ; $4116: $67
	rst  $10                                         ; $4117: $d7
	sub  a                                           ; $4118: $97
	ld   d, e                                        ; $4119: $53
	ld   d, c                                        ; $411a: $51
	ld   sp, $1838                                   ; $411b: $31 $38 $18
	add  b                                           ; $411e: $80
	inc  e                                           ; $411f: $1c
	inc  bc                                          ; $4120: $03
	rla                                              ; $4121: $17
	rrca                                             ; $4122: $0f
	ld   b, [hl]                                     ; $4123: $46
	ld   c, [hl]                                     ; $4124: $4e
	add  b                                           ; $4125: $80
	ld   c, $80                                      ; $4126: $0e $80
	rlca                                             ; $4128: $07
	add  b                                           ; $4129: $80

jr_081_412a:
	add  a                                           ; $412a: $87
	add  d                                           ; $412b: $82
	rst  $20                                         ; $412c: $e7
	add  b                                           ; $412d: $80
	ld   h, e                                        ; $412e: $63
	ld   a, [bc]                                     ; $412f: $0a
	ld   [bc], a                                     ; $4130: $02
	inc  bc                                          ; $4131: $03
	ld   sp, $5777                                   ; $4132: $31 $77 $57
	ld   a, b                                        ; $4135: $78
	inc  [hl]                                        ; $4136: $34
	ld   l, h                                        ; $4137: $6c
	ld   h, h                                        ; $4138: $64
	ld   l, a                                        ; $4139: $6f
	add  h                                           ; $413a: $84
	add  b                                           ; $413b: $80
	sbc  a                                           ; $413c: $9f
	add  b                                           ; $413d: $80
	rst  JumpTable                                         ; $413e: $df
	ld   [de], a                                     ; $413f: $12
	rst  $38                                         ; $4140: $ff
	jr   c, @+$01                                    ; $4141: $38 $ff

	ld   a, b                                        ; $4143: $78
	ld   hl, sp+$09                                  ; $4144: $f8 $09
	nop                                              ; $4146: $00
	rrca                                             ; $4147: $0f

jr_081_4148:
	inc  e                                           ; $4148: $1c
	dec  de                                          ; $4149: $1b
	add  hl, sp                                      ; $414a: $39
	or   c                                           ; $414b: $b1
	db   $fd                                         ; $414c: $fd
	ld   [hl], b                                     ; $414d: $70
	db   $fc                                         ; $414e: $fc
	ldh  [$f0], a                                    ; $414f: $e0 $f0
	add  sp, -$08                                    ; $4151: $e8 $f8
	add  b                                           ; $4153: $80
	ld   b, b                                        ; $4154: $40
	dec  bc                                          ; $4155: $0b
	ld   b, a                                        ; $4156: $47
	ld   c, a                                        ; $4157: $4f
	add  a                                           ; $4158: $87
	sbc  a                                           ; $4159: $9f
	stop                                             ; $415a: $10 $00
	inc  e                                           ; $415c: $1c
	ccf                                              ; $415d: $3f

jr_081_415e:
	dec  e                                           ; $415e: $1d
	ccf                                              ; $415f: $3f
	ld   a, [hl]                                     ; $4160: $7e
	ld   a, a                                        ; $4161: $7f
	add  b                                           ; $4162: $80
	rst  $38                                         ; $4163: $ff
	add  b                                           ; $4164: $80
	ld   de, $9007                                   ; $4165: $11 $07 $90
	sub  a                                           ; $4168: $97
	adc  a                                           ; $4169: $8f
	bit  0, a                                        ; $416a: $cb $47

jr_081_416c:
	inc  b                                           ; $416c: $04
	ld   [bc], a                                     ; $416d: $02
	ldh  [c], a                                      ; $416e: $e2
	add  b                                           ; $416f: $80
	ldh  [rSB], a                                    ; $4170: $e0 $01
	jr   jr_081_416c                                 ; $4172: $18 $f8

	add  b                                           ; $4174: $80
	rst  $38                                         ; $4175: $ff
	add  b                                           ; $4176: $80
	ld   [hl], h                                     ; $4177: $74
	nop                                              ; $4178: $00

jr_081_4179:
	nop                                              ; $4179: $00
	add  c                                           ; $417a: $81
	rst  $38                                         ; $417b: $ff
	ld   [bc], a                                     ; $417c: $02
	ld   [$0217], a                                  ; $417d: $ea $17 $02
	add  d                                           ; $4180: $82
	ld   a, a                                        ; $4181: $7f
	ld   b, $ff                                      ; $4182: $06 $ff
	ld   a, a                                        ; $4184: $7f
	rst  $38                                         ; $4185: $ff
	ldh  a, [$cf]                                    ; $4186: $f0 $cf
	ld   b, c                                        ; $4188: $41
	cp   $80                                         ; $4189: $fe $80
	db   $fc                                         ; $418b: $fc
	inc  bc                                          ; $418c: $03
	jr   nc, jr_081_415e                             ; $418d: $30 $cf

	ld   bc, $80fe                                   ; $418f: $01 $fe $80
	rst  $38                                         ; $4192: $ff
	add  b                                           ; $4193: $80
	cp   $80                                         ; $4194: $fe $80
	rst  $38                                         ; $4196: $ff
	inc  bc                                          ; $4197: $03
	adc  d                                           ; $4198: $8a
	push af                                          ; $4199: $f5
	nop                                              ; $419a: $00
	ld   a, a                                        ; $419b: $7f
	add  b                                           ; $419c: $80
	ccf                                              ; $419d: $3f
	inc  bc                                          ; $419e: $03
	add  a                                           ; $419f: $87
	ld   hl, sp+$40                                  ; $41a0: $f8 $40
	ccf                                              ; $41a2: $3f
	add  b                                           ; $41a3: $80
	rrca                                             ; $41a4: $0f
	add  d                                           ; $41a5: $82
	rra                                              ; $41a6: $1f
	inc  bc                                          ; $41a7: $03
	and  $1f                                         ; $41a8: $e6 $1f
	ld   bc, $80f8                                   ; $41aa: $01 $f8 $80
	db   $fc                                         ; $41ad: $fc
	inc  bc                                          ; $41ae: $03
	or   e                                           ; $41af: $b3
	ld   c, a                                        ; $41b0: $4f
	nop                                              ; $41b1: $00
	db   $fc                                         ; $41b2: $fc
	add  h                                           ; $41b3: $84
	cp   $03                                         ; $41b4: $fe $03
	cp   [hl]                                        ; $41b6: $be
	pop  bc                                          ; $41b7: $c1
	add  b                                           ; $41b8: $80

jr_081_41b9:
	rst  $38                                         ; $41b9: $ff
	add  b                                           ; $41ba: $80
	ld   a, a                                        ; $41bb: $7f
	inc  bc                                          ; $41bc: $03
	rra                                              ; $41bd: $1f
	ldh  [rP1], a                                    ; $41be: $e0 $00
	rst  $38                                         ; $41c0: $ff
	add  d                                           ; $41c1: $82
	ld   a, a                                        ; $41c2: $7f
	add  b                                           ; $41c3: $80
	ccf                                              ; $41c4: $3f
	nop                                              ; $41c5: $00
	rst  $38                                         ; $41c6: $ff
	adc  c                                           ; $41c7: $89
	nop                                              ; $41c8: $00
	add  b                                           ; $41c9: $80
	rst  $38                                         ; $41ca: $ff
	inc  bc                                          ; $41cb: $03
	ld   a, a                                        ; $41cc: $7f

jr_081_41cd:
	rst  $38                                         ; $41cd: $ff
	adc  e                                           ; $41ce: $8b
	dec  bc                                          ; $41cf: $0b
	add  b                                           ; $41d0: $80
	inc  c                                           ; $41d1: $0c
	add  b                                           ; $41d2: $80
	ld   b, a                                        ; $41d3: $47
	add  b                                           ; $41d4: $80
	ld   b, c                                        ; $41d5: $41
	add  b                                           ; $41d6: $80
	ld   c, h                                        ; $41d7: $4c
	add  b                                           ; $41d8: $80
	nop                                              ; $41d9: $00
	add  d                                           ; $41da: $82
	rst  $38                                         ; $41db: $ff
	nop                                              ; $41dc: $00
	rst  JumpTable                                         ; $41dd: $df
	add  b                                           ; $41de: $80
	db   $e4                                         ; $41df: $e4
	ld   de, $50e0                                   ; $41e0: $11 $e0 $50
	ld   [hl], b                                     ; $41e3: $70
	adc  b                                           ; $41e4: $88
	sbc  b                                           ; $41e5: $98
	db   $e4                                         ; $41e6: $e4
	db   $ec                                         ; $41e7: $ec
	ld   h, $32                                      ; $41e8: $26 $32
	add  e                                           ; $41ea: $83
	sbc  h                                           ; $41eb: $9c
	db   $ec                                         ; $41ec: $ec
	rst  $20                                         ; $41ed: $e7
	adc  b                                           ; $41ee: $88

jr_081_41ef:
	ldh  a, [$b0]                                    ; $41ef: $f0 $b0
	ldh  a, [$c0]                                    ; $41f1: $f0 $c0
	add  b                                           ; $41f3: $80
	ld   [hl], b                                     ; $41f4: $70
	add  b                                           ; $41f5: $80
	db   $10                                         ; $41f6: $10
	add  c                                           ; $41f7: $81
	nop                                              ; $41f8: $00
	add  b                                           ; $41f9: $80
	add  b                                           ; $41fa: $80
	inc  bc                                          ; $41fb: $03
	ret  nz                                          ; $41fc: $c0

	nop                                              ; $41fd: $00
	inc  [hl]                                        ; $41fe: $34
	dec  bc                                          ; $41ff: $0b
	add  b                                           ; $4200: $80
	inc  bc                                          ; $4201: $03
	add  b                                           ; $4202: $80
	inc  d                                           ; $4203: $14
	ld   de, $4340                                   ; $4204: $11 $40 $43
	ld   bc, $140e                                   ; $4207: $01 $0e $14
	ld   a, b                                        ; $420a: $78
	jr   nz, jr_081_41cd                             ; $420b: $20 $c0

	add  b                                           ; $420d: $80
	nop                                              ; $420e: $00
	sub  c                                           ; $420f: $91
	or   c                                           ; $4210: $b1
	ld   [bc], a                                     ; $4211: $02
	ld   h, d                                        ; $4212: $62
	inc  bc                                          ; $4213: $03
	jp   $8303                                       ; $4214: $c3 $03 $83


	add  [hl]                                        ; $4217: $86
	rlca                                             ; $4218: $07
	rlca                                             ; $4219: $07
	ld   hl, sp-$78                                  ; $421a: $f8 $88
	ld   c, a                                        ; $421c: $4f
	jr   nz, jr_081_41ef                             ; $421d: $20 $d0

	ret  z                                           ; $421f: $c8

	db   $f4                                         ; $4220: $f4
	ldh  a, [$80]                                    ; $4221: $f0 $80
	db   $fc                                         ; $4223: $fc
	ld   bc, $dce4                                   ; $4224: $01 $e4 $dc
	add  d                                           ; $4227: $82
	call z, $9102                                    ; $4228: $cc $02 $91
	xor  d                                           ; $422b: $aa
	nop                                              ; $422c: $00
	add  c                                           ; $422d: $81
	rst  $38                                         ; $422e: $ff
	ld   [bc], a                                     ; $422f: $02
	inc  hl                                          ; $4230: $23
	db   $fc                                         ; $4231: $fc
	jr   nz, jr_081_41b9                             ; $4232: $20 $85

	rst  $38                                         ; $4234: $ff
	ld   [bc], a                                     ; $4235: $02
	pop  af                                          ; $4236: $f1
	ld   c, $00                                      ; $4237: $0e $00
	add  c                                           ; $4239: $81
	rst  $38                                         ; $423a: $ff
	ld   [bc], a                                     ; $423b: $02
	adc  c                                           ; $423c: $89
	ld   a, [hl]                                     ; $423d: $7e
	ld   [$ff86], sp                                 ; $423e: $08 $86 $ff
	add  b                                           ; $4241: $80
	ld   bc, $fe80                                   ; $4242: $01 $80 $fe
	inc  bc                                          ; $4245: $03
	rst  $38                                         ; $4246: $ff
	db   $db                                         ; $4247: $db
	inc  h                                           ; $4248: $24
	nop                                              ; $4249: $00
	add  l                                           ; $424a: $85
	rst  $38                                         ; $424b: $ff
	ld   a, [bc]                                     ; $424c: $0a

jr_081_424d:
	ldh  [$d0], a                                    ; $424d: $e0 $d0
	ret  nz                                          ; $424f: $c0

	ld   h, b                                        ; $4250: $60
	ldh  [$b0], a                                    ; $4251: $e0 $b0
	jr   nc, jr_081_4255                             ; $4253: $30 $00

jr_081_4255:
	db   $10                                         ; $4255: $10
	ldh  a, [$e0]                                    ; $4256: $f0 $e0
	add  e                                           ; $4258: $83
	ldh  a, [rIE]                                    ; $4259: $f0 $ff
	nop                                              ; $425b: $00
	rst  $38                                         ; $425c: $ff
	nop                                              ; $425d: $00
	rst  $38                                         ; $425e: $ff
	nop                                              ; $425f: $00
	rst  $38                                         ; $4260: $ff
	nop                                              ; $4261: $00
	rst  $38                                         ; $4262: $ff
	nop                                              ; $4263: $00
	rst  $38                                         ; $4264: $ff
	nop                                              ; $4265: $00
	rst  $38                                         ; $4266: $ff
	nop                                              ; $4267: $00
	rst  $38                                         ; $4268: $ff
	nop                                              ; $4269: $00
	rst  $38                                         ; $426a: $ff
	nop                                              ; $426b: $00
	rst  $38                                         ; $426c: $ff
	nop                                              ; $426d: $00
	call nz, $9b00                                   ; $426e: $c4 $00 $9b
	nop                                              ; $4271: $00
	add  [hl]                                        ; $4272: $86
	nop                                              ; $4273: $00
	ld   [$08b0], sp                                 ; $4274: $08 $b0 $08
	adc  c                                           ; $4277: $89
	ld   c, $91                                      ; $4278: $0e $91
	ld   bc, $0105                                   ; $427a: $01 $05 $01
	xor  e                                           ; $427d: $ab
	add  l                                           ; $427e: $85
	nop                                              ; $427f: $00
	ld   [$6380], sp                                 ; $4280: $08 $80 $63
	ld   h, l                                        ; $4283: $65
	ld   h, c                                        ; $4284: $61
	ld   [de], a                                     ; $4285: $12
	nop                                              ; $4286: $00
	and  c                                           ; $4287: $a1
	add  b                                           ; $4288: $80
	call nc, $0085                                   ; $4289: $d4 $85 $00
	ld   bc, $4788                                   ; $428c: $01 $88 $47
	add  b                                           ; $428f: $80
	ld   b, [hl]                                     ; $4290: $46
	ld   bc, $6e5e                                   ; $4291: $01 $5e $6e
	add  b                                           ; $4294: $80
	ld   [bc], a                                     ; $4295: $02
	nop                                              ; $4296: $00
	rst  $38                                         ; $4297: $ff
	add  l                                           ; $4298: $85
	nop                                              ; $4299: $00
	add  b                                           ; $429a: $80
	ld   d, b                                        ; $429b: $50
	add  b                                           ; $429c: $80
	or   b                                           ; $429d: $b0
	nop                                              ; $429e: $00
	ldh  a, [$80]                                    ; $429f: $f0 $80
	db   $10                                         ; $42a1: $10
	inc  bc                                          ; $42a2: $03
	ld   b, b                                        ; $42a3: $40
	cp   a                                           ; $42a4: $bf
	rrca                                             ; $42a5: $0f
	nop                                              ; $42a6: $00
	add  d                                           ; $42a7: $82
	rrca                                             ; $42a8: $0f
	ld   bc, $0f00                                   ; $42a9: $01 $00 $0f
	add  l                                           ; $42ac: $85
	nop                                              ; $42ad: $00
	ld   [bc], a                                     ; $42ae: $02
	ldh  a, [rIE]                                    ; $42af: $f0 $ff
	nop                                              ; $42b1: $00
	add  d                                           ; $42b2: $82
	rst  $38                                         ; $42b3: $ff
	ld   bc, $ff00                                   ; $42b4: $01 $00 $ff
	add  a                                           ; $42b7: $87
	nop                                              ; $42b8: $00
	nop                                              ; $42b9: $00
	rrca                                             ; $42ba: $0f
	add  a                                           ; $42bb: $87
	nop                                              ; $42bc: $00
	add  b                                           ; $42bd: $80
	dec  b                                           ; $42be: $05
	add  b                                           ; $42bf: $80
	dec  bc                                          ; $42c0: $0b
	ld   [bc], a                                     ; $42c1: $02
	rrca                                             ; $42c2: $0f
	nop                                              ; $42c3: $00
	rst  $38                                         ; $42c4: $ff
	adc  e                                           ; $42c5: $8b
	nop                                              ; $42c6: $00
	inc  bc                                          ; $42c7: $03
	rst  $38                                         ; $42c8: $ff
	nop                                              ; $42c9: $00
	ret  nz                                          ; $42ca: $c0

	jr   nc, jr_081_424d                             ; $42cb: $30 $80

	ld   d, b                                        ; $42cd: $50
	nop                                              ; $42ce: $00
	rst  $30                                         ; $42cf: $f7
	add  a                                           ; $42d0: $87
	di                                               ; $42d1: $f3
	nop                                              ; $42d2: $00
	db   $f4                                         ; $42d3: $f4
	add  b                                           ; $42d4: $80
	nop                                              ; $42d5: $00
	adc  c                                           ; $42d6: $89
	rrca                                             ; $42d7: $0f
	inc  e                                           ; $42d8: $1c
	ld   c, $0f                                      ; $42d9: $0e $0f
	ld   c, $00                                      ; $42db: $0e $00
	ld   bc, $feff                                   ; $42dd: $01 $ff $fe
	rst  $38                                         ; $42e0: $ff
	cp   $ff                                         ; $42e1: $fe $ff
	db   $f4                                         ; $42e3: $f4
	rst  $38                                         ; $42e4: $ff
	and  b                                           ; $42e5: $a0
	rst  $38                                         ; $42e6: $ff
	ld   de, $1bff                                   ; $42e7: $11 $ff $1b
	rst  $38                                         ; $42ea: $ff
	and  b                                           ; $42eb: $a0
	nop                                              ; $42ec: $00
	ld   [hl], b                                     ; $42ed: $70
	ldh  a, [rSVBK]                                  ; $42ee: $f0 $70
	ldh  a, [rPCM34]                                 ; $42f0: $f0 $77
	di                                               ; $42f2: $f3

jr_081_42f3:
	inc  sp                                          ; $42f3: $33
	di                                               ; $42f4: $f3
	or   e                                           ; $42f5: $b3
	add  e                                           ; $42f6: $83
	di                                               ; $42f7: $f3
	ld   [bc], a                                     ; $42f8: $02
	inc  b                                           ; $42f9: $04
	nop                                              ; $42fa: $00
	ldh  a, [$81]                                    ; $42fb: $f0 $81
	nop                                              ; $42fd: $00
	nop                                              ; $42fe: $00
	rlca                                             ; $42ff: $07
	add  e                                           ; $4300: $83
	inc  bc                                          ; $4301: $03
	add  b                                           ; $4302: $80
	and  e                                           ; $4303: $a3
	add  b                                           ; $4304: $80
	db   $d3                                         ; $4305: $d3

Jump_081_4306:
	ld   [bc], a                                     ; $4306: $02
	db   $f4                                         ; $4307: $f4
	nop                                              ; $4308: $00
	rrca                                             ; $4309: $0f
	adc  e                                           ; $430a: $8b
	nop                                              ; $430b: $00
	nop                                              ; $430c: $00
	ldh  a, [$9d]                                    ; $430d: $f0 $9d
	nop                                              ; $430f: $00
	jr   nc, @-$44                                   ; $4310: $30 $ba

	ld   bc, $0111                                   ; $4312: $01 $11 $01
	adc  a                                           ; $4315: $8f
	inc  bc                                          ; $4316: $03
	db   $db                                         ; $4317: $db
	inc  bc                                          ; $4318: $03
	ld   d, e                                        ; $4319: $53
	inc  bc                                          ; $431a: $03
	ld   d, e                                        ; $431b: $53
	inc  bc                                          ; $431c: $03
	rst  $30                                         ; $431d: $f7
	rlca                                             ; $431e: $07
	add  $06                                         ; $431f: $c6 $06
	sub  a                                           ; $4321: $97
	add  b                                           ; $4322: $80
	and  b                                           ; $4323: $a0
	add  b                                           ; $4324: $80
	or   c                                           ; $4325: $b1
	add  b                                           ; $4326: $80
	jr   c, jr_081_4329                              ; $4327: $38 $00

jr_081_4329:
	ld   b, b                                        ; $4329: $40
	nop                                              ; $432a: $00
	ld   b, d                                        ; $432b: $42
	nop                                              ; $432c: $00
	ld   d, c                                        ; $432d: $51
	nop                                              ; $432e: $00
	add  b                                           ; $432f: $80
	nop                                              ; $4330: $00
	add  l                                           ; $4331: $85
	nop                                              ; $4332: $00
	jr   jr_081_4335                                 ; $4333: $18 $00

jr_081_4335:
	sbc  h                                           ; $4335: $9c
	nop                                              ; $4336: $00
	call c, $8b03                                    ; $4337: $dc $03 $8b
	ld   b, $8a                                      ; $433a: $06 $8a
	dec  hl                                          ; $433c: $2b
	dec  h                                           ; $433d: $25
	dec  [hl]                                        ; $433e: $35
	rra                                              ; $433f: $1f
	rst  JumpTable                                         ; $4340: $df
	ldh  a, [$80]                                    ; $4341: $f0 $80
	or   b                                           ; $4343: $b0
	rlca                                             ; $4344: $07
	ld   [hl], b                                     ; $4345: $70
	jr   nz, @-$5e                                   ; $4346: $20 $a0

	ret  nc                                          ; $4348: $d0

	ld   d, b                                        ; $4349: $50
	jr   nc, @-$4e                                   ; $434a: $30 $b0

	ldh  a, [$80]                                    ; $434c: $f0 $80
	ld   d, b                                        ; $434e: $50
	add  b                                           ; $434f: $80
	add  b                                           ; $4350: $80
	ld   bc, $a050                                   ; $4351: $01 $50 $a0
	rst  $38                                         ; $4354: $ff
	nop                                              ; $4355: $00
	cp   h                                           ; $4356: $bc
	nop                                              ; $4357: $00
	ld   b, $89                                      ; $4358: $06 $89
	ld   b, $7e                                      ; $435a: $06 $7e
	adc  [hl]                                        ; $435c: $8e
	add  [hl]                                        ; $435d: $86
	add  $c0                                         ; $435e: $c6 $c0
	add  d                                           ; $4360: $82
	nop                                              ; $4361: $00
	ld   bc, $bf80                                   ; $4362: $01 $80 $bf
	add  b                                           ; $4365: $80
	add  b                                           ; $4366: $80
	rlca                                             ; $4367: $07
	nop                                              ; $4368: $00
	push hl                                          ; $4369: $e5
	nop                                              ; $436a: $00
	ldh  [c], a                                      ; $436b: $e2
	nop                                              ; $436c: $00
	jr   nz, jr_081_436f                             ; $436d: $20 $00

jr_081_436f:
	jr   jr_081_42f3                                 ; $436f: $18 $82

	nop                                              ; $4371: $00
	rrca                                             ; $4372: $0f
	rlca                                             ; $4373: $07
	rst  $20                                         ; $4374: $e7
	ld   a, [bc]                                     ; $4375: $0a
	dec  de                                          ; $4376: $1b
	nop                                              ; $4377: $00

jr_081_4378:
	or   c                                           ; $4378: $b1
	cp   a                                           ; $4379: $bf
	rst  $38                                         ; $437a: $ff
	ld   a, a                                        ; $437b: $7f
	dec  hl                                          ; $437c: $2b
	xor  e                                           ; $437d: $ab
	rst  JumpTable                                         ; $437e: $df
	ld   e, a                                        ; $437f: $5f
	ccf                                              ; $4380: $3f
	cp   a                                           ; $4381: $bf
	rst  $38                                         ; $4382: $ff
	add  b                                           ; $4383: $80
	ld   e, a                                        ; $4384: $5f
	add  b                                           ; $4385: $80
	adc  a                                           ; $4386: $8f
	ld   bc, $505f                                   ; $4387: $01 $5f $50
	add  h                                           ; $438a: $84
	ldh  a, [$03]                                    ; $438b: $f0 $03
	ldh  [$c0], a                                    ; $438d: $e0 $c0
	ret  nc                                          ; $438f: $d0

	ldh  a, [$80]                                    ; $4390: $f0 $80
	ldh  [$80], a                                    ; $4392: $e0 $80
	ldh  a, [rSB]                                    ; $4394: $f0 $01
	ldh  [rAUD1SWEEP], a                             ; $4396: $e0 $10
	rst  $38                                         ; $4398: $ff
	nop                                              ; $4399: $00
	cp   h                                           ; $439a: $bc
	nop                                              ; $439b: $00
	dec  b                                           ; $439c: $05
	inc  bc                                          ; $439d: $03
	nop                                              ; $439e: $00
	db   $fc                                         ; $439f: $fc
	inc  bc                                          ; $43a0: $03
	ld   [bc], a                                     ; $43a1: $02
	adc  $80                                         ; $43a2: $ce $80
	call z, $fe03                                    ; $43a4: $cc $03 $fe
	add  $75                                         ; $43a7: $c6 $75
	ld   b, l                                        ; $43a9: $45
	add  b                                           ; $43aa: $80
	ld   [bc], a                                     ; $43ab: $02
	ld   d, $37                                      ; $43ac: $16 $37
	rlca                                             ; $43ae: $07
	ld   [hl], a                                     ; $43af: $77
	add  b                                           ; $43b0: $80
	cp   $00                                         ; $43b1: $fe $00
	ld   [bc], a                                     ; $43b3: $02
	nop                                              ; $43b4: $00
	ld   c, $00                                      ; $43b5: $0e $00
	ld   a, [de]                                     ; $43b7: $1a
	inc  d                                           ; $43b8: $14
	inc  a                                           ; $43b9: $3c
	ld   a, [bc]                                     ; $43ba: $0a
	ld   a, [hl+]                                    ; $43bb: $2a
	ld   bc, $011d                                   ; $43bc: $01 $1d $01
	db   $fd                                         ; $43bf: $fd
	dec  sp                                          ; $43c0: $3b
	ld   a, e                                        ; $43c1: $7b
	or   a                                           ; $43c2: $b7
	rst  $30                                         ; $43c3: $f7
	add  b                                           ; $43c4: $80
	ei                                               ; $43c5: $fb
	inc  bc                                          ; $43c6: $03
	sub  $f6                                         ; $43c7: $d6 $f6
	inc  de                                          ; $43c9: $13
	inc  sp                                          ; $43ca: $33
	add  b                                           ; $43cb: $80
	or   e                                           ; $43cc: $b3
	inc  bc                                          ; $43cd: $03
	jp   hl                                          ; $43ce: $e9


	db   $ed                                         ; $43cf: $ed
	sub  c                                           ; $43d0: $91
	sbc  d                                           ; $43d1: $9a
	add  b                                           ; $43d2: $80
	ld   [hl], b                                     ; $43d3: $70
	add  b                                           ; $43d4: $80
	and  b                                           ; $43d5: $a0
	add  b                                           ; $43d6: $80
	ld   d, b                                        ; $43d7: $50
	add  b                                           ; $43d8: $80
	nop                                              ; $43d9: $00
	add  b                                           ; $43da: $80
	db   $10                                         ; $43db: $10
	add  b                                           ; $43dc: $80
	add  b                                           ; $43dd: $80
	add  b                                           ; $43de: $80
	ld   d, b                                        ; $43df: $50
	ld   bc, $30c0                                   ; $43e0: $01 $c0 $30
	rst  $38                                         ; $43e3: $ff
	nop                                              ; $43e4: $00
	cp   h                                           ; $43e5: $bc
	nop                                              ; $43e6: $00
	ld   bc, $060e                                   ; $43e7: $01 $0e $06
	add  b                                           ; $43ea: $80
	inc  b                                           ; $43eb: $04
	ld   [bc], a                                     ; $43ec: $02
	jr   nc, jr_081_43ef                             ; $43ed: $30 $00

jr_081_43ef:
	jr   c, jr_081_4378                              ; $43ef: $38 $87

	nop                                              ; $43f1: $00
	ld   b, $67                                      ; $43f2: $06 $67

jr_081_43f4:
	inc  bc                                          ; $43f4: $03
	ld   c, e                                        ; $43f5: $4b
	inc  c                                           ; $43f6: $0c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43f7: $cf
	nop                                              ; $43f8: $00
	inc  c                                           ; $43f9: $0c
	add  e                                           ; $43fa: $83
	nop                                              ; $43fb: $00
	ld   d, $80                                      ; $43fc: $16 $80
	nop                                              ; $43fe: $00
	jr   nz, jr_081_4401                             ; $43ff: $20 $00

jr_081_4401:
	sbc  l                                           ; $4401: $9d
	add  c                                           ; $4402: $81
	db   $db                                         ; $4403: $db
	inc  bc                                          ; $4404: $03
	add  e                                           ; $4405: $83
	ld   b, $0e                                      ; $4406: $06 $0e
	inc  b                                           ; $4408: $04
	rla                                              ; $4409: $17
	nop                                              ; $440a: $00
	inc  bc                                          ; $440b: $03
	nop                                              ; $440c: $00
	ei                                               ; $440d: $fb
	nop                                              ; $440e: $00
	ld   h, $00                                      ; $440f: $26 $00
	ld   [hl+], a                                    ; $4411: $22
	ret  nz                                          ; $4412: $c0

jr_081_4413:
	and  b                                           ; $4413: $a0
	add  c                                           ; $4414: $81
	nop                                              ; $4415: $00
	inc  b                                           ; $4416: $04
	add  b                                           ; $4417: $80
	nop                                              ; $4418: $00
	ldh  a, [rP1]                                    ; $4419: $f0 $00
	ldh  a, [rIE]                                    ; $441b: $f0 $ff
	nop                                              ; $441d: $00
	jp   nz, $0300                                   ; $441e: $c2 $00 $03

	rst  $38                                         ; $4421: $ff
	nop                                              ; $4422: $00
	inc  bc                                          ; $4423: $03
	inc  c                                           ; $4424: $0c
	add  b                                           ; $4425: $80
	ld   a, [bc]                                     ; $4426: $0a
	adc  b                                           ; $4427: $88
	rrca                                             ; $4428: $0f
	rla                                              ; $4429: $17
	or   b                                           ; $442a: $b0
	ld   bc, $0559                                   ; $442b: $01 $59 $05
	ld   hl, $4d27                                   ; $442e: $21 $27 $4d
	ld   b, e                                        ; $4431: $43
	and  b                                           ; $4432: $a0
	and  e                                           ; $4433: $a3
	ld   l, c                                        ; $4434: $69
	ld   h, e                                        ; $4435: $63
	xor  d                                           ; $4436: $aa
	and  d                                           ; $4437: $a2
	inc  b                                           ; $4438: $04
	ld   bc, $00c3                                   ; $4439: $01 $c3 $00
	call z, $c1c0                                    ; $443c: $cc $c0 $c1
	ret  nz                                          ; $443f: $c0

	ld   hl, sp-$40                                  ; $4440: $f8 $c0
	add  b                                           ; $4442: $80
	jp   Jump_081_4306                               ; $4443: $c3 $06 $43


	jp   $c303                                       ; $4446: $c3 $03 $c3


	ld   e, c                                        ; $4449: $59
	pop  bc                                          ; $444a: $c1
	ccf                                              ; $444b: $3f
	add  e                                           ; $444c: $83
	nop                                              ; $444d: $00
	inc  bc                                          ; $444e: $03
	ldh  [rP1], a                                    ; $444f: $e0 $00
	stop                                             ; $4451: $10 $00
	add  b                                           ; $4453: $80
	ret  nz                                          ; $4454: $c0

	add  b                                           ; $4455: $80
	ldh  a, [$80]                                    ; $4456: $f0 $80
	ld   b, b                                        ; $4458: $40
	nop                                              ; $4459: $00
	ldh  a, [rIE]                                    ; $445a: $f0 $ff
	nop                                              ; $445c: $00
	cp   h                                           ; $445d: $bc
	nop                                              ; $445e: $00
	inc  c                                           ; $445f: $0c
	rst  $38                                         ; $4460: $ff
	nop                                              ; $4461: $00
	ld   a, [$f8ff]                                  ; $4462: $fa $ff $f8
	rst  $38                                         ; $4465: $ff
	db   $fc                                         ; $4466: $fc
	rst  $38                                         ; $4467: $ff
	cp   $ff                                         ; $4468: $fe $ff
	cp   $ff                                         ; $446a: $fe $ff
	cp   $81                                         ; $446c: $fe $81
	rst  $38                                         ; $446e: $ff
	ld   [bc], a                                     ; $446f: $02
	rst  $20                                         ; $4470: $e7
	nop                                              ; $4471: $00
	jr   jr_081_43f4                                 ; $4472: $18 $80

	add  b                                           ; $4474: $80
	add  b                                           ; $4475: $80
	ret  nz                                          ; $4476: $c0

	add  b                                           ; $4477: $80
	ldh  a, [$80]                                    ; $4478: $f0 $80
	call nc, $e080                                   ; $447a: $d4 $80 $e0
	add  c                                           ; $447d: $81
	nop                                              ; $447e: $00
	ld   de, $b0bf                                   ; $447f: $11 $bf $b0
	ld   d, b                                        ; $4482: $50
	ld   e, b                                        ; $4483: $58
	jr   c, jr_081_44b7                              ; $4484: $38 $31

	ld   de, $3818                                   ; $4486: $11 $18 $38
	inc  a                                           ; $4489: $3c
	ld   a, h                                        ; $448a: $7c
	ld   [hl], b                                     ; $448b: $70
	jr   nc, jr_081_448e                             ; $448c: $30 $00

jr_081_448e:
	ld   b, b                                        ; $448e: $40
	ld   l, b                                        ; $448f: $68
	rst  ToBoot                                         ; $4490: $c7
	jr   nz, jr_081_4413                             ; $4491: $20 $80

jr_081_4493:
	ld   b, b                                        ; $4493: $40
	add  a                                           ; $4494: $87
	nop                                              ; $4495: $00
	add  b                                           ; $4496: $80
	db   $10                                         ; $4497: $10
	ld   bc, $40b0                                   ; $4498: $01 $b0 $40
	rst  $38                                         ; $449b: $ff
	nop                                              ; $449c: $00
	cp   h                                           ; $449d: $bc
	nop                                              ; $449e: $00
	nop                                              ; $449f: $00
	rrca                                             ; $44a0: $0f
	add  e                                           ; $44a1: $83
	nop                                              ; $44a2: $00
	nop                                              ; $44a3: $00
	rlca                                             ; $44a4: $07
	add  a                                           ; $44a5: $87
	inc  bc                                          ; $44a6: $03
	ld   bc, $000b                                   ; $44a7: $01 $0b $00
	add  b                                           ; $44aa: $80
	dec  b                                           ; $44ab: $05
	add  b                                           ; $44ac: $80
	dec  bc                                          ; $44ad: $0b
	add  b                                           ; $44ae: $80
	ld   d, l                                        ; $44af: $55
	add  b                                           ; $44b0: $80
	cp   e                                           ; $44b1: $bb
	add  b                                           ; $44b2: $80
	ld   de, $2380                                   ; $44b3: $11 $80 $23
	nop                                              ; $44b6: $00

jr_081_44b7:
	rst  $38                                         ; $44b7: $ff
	add  b                                           ; $44b8: $80
	nop                                              ; $44b9: $00
	add  b                                           ; $44ba: $80
	rst  $38                                         ; $44bb: $ff
	dec  b                                           ; $44bc: $05
	rst  ToBoot                                         ; $44bd: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44be: $cf
	rst  ToBoot                                         ; $44bf: $c7
	add  $e6                                         ; $44c0: $c6 $e6
	rst  $28                                         ; $44c2: $ef
	add  b                                           ; $44c3: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44c4: $cf
	add  d                                           ; $44c5: $82
	rst  ToBoot                                         ; $44c6: $c7
	dec  c                                           ; $44c7: $0d
	nop                                              ; $44c8: $00
	rrca                                             ; $44c9: $0f
	ldh  a, [$d0]                                    ; $44ca: $f0 $d0
	ret  nz                                          ; $44cc: $c0

	stop                                             ; $44cd: $10 $00
	ret  nz                                          ; $44cf: $c0

	nop                                              ; $44d0: $00
	jr   nc, jr_081_4493                             ; $44d1: $30 $c0

	ldh  [$c0], a                                    ; $44d3: $e0 $c0
	ldh  [$80], a                                    ; $44d5: $e0 $80
	ret  nz                                          ; $44d7: $c0

	ld   bc, $f000                                   ; $44d8: $01 $00 $f0
	rst  $38                                         ; $44db: $ff
	nop                                              ; $44dc: $00
	cp   h                                           ; $44dd: $bc
	nop                                              ; $44de: $00
	or   l                                           ; $44df: $b5
	nop                                              ; $44e0: $00
	nop                                              ; $44e1: $00
	ld   sp, hl                                      ; $44e2: $f9
	add  b                                           ; $44e3: $80
	ret  z                                           ; $44e4: $c8

	add  b                                           ; $44e5: $80
	db   $e3                                         ; $44e6: $e3
	add  b                                           ; $44e7: $80
	pop  hl                                          ; $44e8: $e1
	add  hl, bc                                      ; $44e9: $09
	bit  0, e                                        ; $44ea: $cb $43
	add  c                                           ; $44ec: $81
	di                                               ; $44ed: $f3
	cp   c                                           ; $44ee: $b9
	dec  l                                           ; $44ef: $2d
	dec  b                                           ; $44f0: $05
	ld   c, l                                        ; $44f1: $4d
	ld   bc, $8115                                   ; $44f2: $01 $15 $81
	or   l                                           ; $44f5: $b5
	nop                                              ; $44f6: $00
	and  l                                           ; $44f7: $a5
	add  c                                           ; $44f8: $81
	or   l                                           ; $44f9: $b5
	nop                                              ; $44fa: $00
	sub  l                                           ; $44fb: $95
	add  l                                           ; $44fc: $85
	or   l                                           ; $44fd: $b5
	ld   a, [bc]                                     ; $44fe: $0a
	sub  b                                           ; $44ff: $90
	xor  a                                           ; $4500: $af
	adc  a                                           ; $4501: $8f
	sbc  a                                           ; $4502: $9f
	sbc  [hl]                                        ; $4503: $9e
	add  b                                           ; $4504: $80
	add  d                                           ; $4505: $82
	rst  $38                                         ; $4506: $ff
	ld   hl, sp-$01                                  ; $4507: $f8 $ff
	ld   a, [$8081]                                  ; $4509: $fa $81 $80
	add  b                                           ; $450c: $80
	xor  a                                           ; $450d: $af
	ld   bc, $0080                                   ; $450e: $01 $80 $00
	add  b                                           ; $4511: $80
	cp   $80                                         ; $4512: $fe $80
	rlca                                             ; $4514: $07
	add  b                                           ; $4515: $80
	ret  nz                                          ; $4516: $c0

	add  b                                           ; $4517: $80
	rst  $38                                         ; $4518: $ff
	inc  bc                                          ; $4519: $03
	ld   a, [hl]                                     ; $451a: $7e
	ld   a, a                                        ; $451b: $7f
	ld   bc, $8000                                   ; $451c: $01 $00 $80
	rst  $38                                         ; $451f: $ff
	nop                                              ; $4520: $00
	add  h                                           ; $4521: $84
	add  c                                           ; $4522: $81
	or   l                                           ; $4523: $b5
	add  e                                           ; $4524: $83
	dec  [hl]                                        ; $4525: $35
	add  d                                           ; $4526: $82
	push af                                          ; $4527: $f5
	add  c                                           ; $4528: $81
	dec  [hl]                                        ; $4529: $35
	ld   [bc], a                                     ; $452a: $02
	ld   b, c                                        ; $452b: $41
	add  c                                           ; $452c: $81
	add  b                                           ; $452d: $80
	adc  e                                           ; $452e: $8b
	add  c                                           ; $452f: $81
	ld   bc, $b747                                   ; $4530: $01 $47 $b7
	add  b                                           ; $4533: $80
	cp   b                                           ; $4534: $b8
	add  h                                           ; $4535: $84
	cp   e                                           ; $4536: $bb
	add  b                                           ; $4537: $80
	dec  sp                                          ; $4538: $3b
	add  b                                           ; $4539: $80
	cp   e                                           ; $453a: $bb
	inc  bc                                          ; $453b: $03
	dec  sp                                          ; $453c: $3b
	cp   e                                           ; $453d: $bb
	ld   a, [hl]                                     ; $453e: $7e
	cp   $80                                         ; $453f: $fe $80
	ld   bc, $f980                                   ; $4541: $01 $80 $f9
	ld   a, [bc]                                     ; $4544: $0a
	ldh  a, [$f9]                                    ; $4545: $f0 $f9
	pop  hl                                          ; $4547: $e1
	ld   sp, hl                                      ; $4548: $f9
	pop  bc                                          ; $4549: $c1
	ld   sp, hl                                      ; $454a: $f9
	adc  c                                           ; $454b: $89
	ld   sp, hl                                      ; $454c: $f9
	sbc  c                                           ; $454d: $99
	ld   sp, hl                                      ; $454e: $f9
	cp   c                                           ; $454f: $b9
	add  c                                           ; $4550: $81
	or   c                                           ; $4551: $b1
	nop                                              ; $4552: $00
	ld   sp, $b183                                   ; $4553: $31 $83 $b1
	ld   [bc], a                                     ; $4556: $02
	and  c                                           ; $4557: $a1
	or   c                                           ; $4558: $b1
	sub  c                                           ; $4559: $91
	add  c                                           ; $455a: $81
	or   c                                           ; $455b: $b1
	inc  b                                           ; $455c: $04
	adc  c                                           ; $455d: $89
	inc  l                                           ; $455e: $2c
	ld   l, h                                        ; $455f: $6c
	db   $ec                                         ; $4560: $ec
	xor  h                                           ; $4561: $ac
	add  c                                           ; $4562: $81
	inc  l                                           ; $4563: $2c
	add  [hl]                                        ; $4564: $86
	db   $ec                                         ; $4565: $ec
	ld   bc, $a174                                   ; $4566: $01 $74 $a1
	add  b                                           ; $4569: $80
	pop  de                                          ; $456a: $d1
	add  b                                           ; $456b: $80
	and  c                                           ; $456c: $a1
	add  b                                           ; $456d: $80
	pop  de                                          ; $456e: $d1
	add  b                                           ; $456f: $80
	and  c                                           ; $4570: $a1
	add  b                                           ; $4571: $80
	pop  de                                          ; $4572: $d1
	add  b                                           ; $4573: $80
	and  c                                           ; $4574: $a1
	add  b                                           ; $4575: $80
	pop  af                                          ; $4576: $f1
	inc  bc                                          ; $4577: $03
	pop  bc                                          ; $4578: $c1
	add  b                                           ; $4579: $80
	ld   c, b                                        ; $457a: $48
	rlca                                             ; $457b: $07
	add  b                                           ; $457c: $80
	ld   l, a                                        ; $457d: $6f
	nop                                              ; $457e: $00
	ld   c, a                                        ; $457f: $4f
	add  b                                           ; $4580: $80
	scf                                              ; $4581: $37
	inc  bc                                          ; $4582: $03
	nop                                              ; $4583: $00
	ld   a, b                                        ; $4584: $78
	rlca                                             ; $4585: $07
	sbc  a                                           ; $4586: $9f
	add  c                                           ; $4587: $81
	xor  a                                           ; $4588: $af
	ld   b, $ff                                      ; $4589: $06 $ff
	ld   bc, $fe81                                   ; $458b: $01 $81 $fe
	ld   a, l                                        ; $458e: $7d
	rst  $38                                         ; $458f: $ff
	db   $fc                                         ; $4590: $fc
	add  b                                           ; $4591: $80
	ld   hl, sp+$07                                  ; $4592: $f8 $07
	nop                                              ; $4594: $00
	rra                                              ; $4595: $1f
	rst  $38                                         ; $4596: $ff
	rst  JumpTable                                         ; $4597: $df
	rst  $38                                         ; $4598: $ff
	cp   a                                           ; $4599: $bf
	rst  $38                                         ; $459a: $ff
	jr   nc, @-$7d                                   ; $459b: $30 $81

	or   c                                           ; $459d: $b1
	add  h                                           ; $459e: $84
	ld   sp, $f180                                   ; $459f: $31 $80 $f1
	add  d                                           ; $45a2: $82
	push af                                          ; $45a3: $f5
	nop                                              ; $45a4: $00
	ld   bc, $f18d                                   ; $45a5: $01 $8d $f1
	ld   [bc], a                                     ; $45a8: $02
	and  c                                           ; $45a9: $a1
	add  b                                           ; $45aa: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45ab: $cf
	add  c                                           ; $45ac: $81
	sbc  a                                           ; $45ad: $9f
	add  b                                           ; $45ae: $80
	xor  a                                           ; $45af: $af
	add  b                                           ; $45b0: $80
	or   b                                           ; $45b1: $b0
	nop                                              ; $45b2: $00
	cp   b                                           ; $45b3: $b8
	add  e                                           ; $45b4: $83
	cp   e                                           ; $45b5: $bb
	ld   bc, $0083                                   ; $45b6: $01 $83 $00
	add  b                                           ; $45b9: $80
	cp   $82                                         ; $45ba: $fe $82
	db   $fd                                         ; $45bc: $fd
	add  b                                           ; $45bd: $80
	ld   bc, $1507                                   ; $45be: $01 $07 $15
	db   $fd                                         ; $45c1: $fd
	push bc                                          ; $45c2: $c5
	db   $fd                                         ; $45c3: $fd
	adc  l                                           ; $45c4: $8d
	db   $fd                                         ; $45c5: $fd
	sub  h                                           ; $45c6: $94
	dec  [hl]                                        ; $45c7: $35
	adc  b                                           ; $45c8: $88
	or   l                                           ; $45c9: $b5
	add  d                                           ; $45ca: $82
	or   c                                           ; $45cb: $b1
	ld   [$bb39], sp                                 ; $45cc: $08 $39 $bb
	cp   d                                           ; $45cf: $ba
	cp   e                                           ; $45d0: $bb
	cp   b                                           ; $45d1: $b8
	cp   e                                           ; $45d2: $bb
	cp   b                                           ; $45d3: $b8
	cp   e                                           ; $45d4: $bb
	cp   c                                           ; $45d5: $b9
	add  c                                           ; $45d6: $81
	cp   e                                           ; $45d7: $bb
	add  b                                           ; $45d8: $80
	cp   b                                           ; $45d9: $b8
	ld   b, $b1                                      ; $45da: $06 $b1
	or   a                                           ; $45dc: $b7
	dec  sp                                          ; $45dd: $3b
	db   $fd                                         ; $45de: $fd
	dec  a                                           ; $45df: $3d
	db   $fd                                         ; $45e0: $fd
	ld   a, l                                        ; $45e1: $7d
	add  c                                           ; $45e2: $81
	db   $fd                                         ; $45e3: $fd
	add  b                                           ; $45e4: $80
	pop  af                                          ; $45e5: $f1
	add  b                                           ; $45e6: $80
	nop                                              ; $45e7: $00
	add  d                                           ; $45e8: $82
	rst  $38                                         ; $45e9: $ff
	nop                                              ; $45ea: $00
	or   b                                           ; $45eb: $b0
	adc  c                                           ; $45ec: $89
	or   c                                           ; $45ed: $b1
	add  b                                           ; $45ee: $80
	ld   sp, $b180                                   ; $45ef: $31 $80 $b1
	nop                                              ; $45f2: $00
	ld   bc, $f185                                   ; $45f3: $01 $85 $f1
	ld   bc, $f101                                   ; $45f6: $01 $01 $f1
	add  b                                           ; $45f9: $80
	ld   bc, $0015                                   ; $45fa: $01 $15 $00
	or   c                                           ; $45fd: $b1
	or   b                                           ; $45fe: $b0
	ld   [hl], b                                     ; $45ff: $70
	ld   d, e                                        ; $4600: $53
	xor  a                                           ; $4601: $af
	adc  d                                           ; $4602: $8a
	sbc  [hl]                                        ; $4603: $9e
	sbc  c                                           ; $4604: $99
	add  c                                           ; $4605: $81
	xor  a                                           ; $4606: $af
	rst  $38                                         ; $4607: $ff
	adc  a                                           ; $4608: $8f
	rst  $38                                         ; $4609: $ff
	rra                                              ; $460a: $1f
	rst  $38                                         ; $460b: $ff
	and  b                                           ; $460c: $a0
	ldh  [rP1], a                                    ; $460d: $e0 $00
	rra                                              ; $460f: $1f
	rst  $28                                         ; $4610: $ef
	ldh  a, [$80]                                    ; $4611: $f0 $80
	rrca                                             ; $4613: $0f
	add  d                                           ; $4614: $82
	rst  $38                                         ; $4615: $ff
	add  b                                           ; $4616: $80
	ldh  a, [rTAC]                                   ; $4617: $f0 $07
	add  b                                           ; $4619: $80
	adc  a                                           ; $461a: $8f
	rrca                                             ; $461b: $0f
	ldh  a, [$f3]                                    ; $461c: $f0 $f3
	inc  bc                                          ; $461e: $03
	jr   nc, jr_081_4652                             ; $461f: $30 $31

	add  d                                           ; $4621: $82
	pop  af                                          ; $4622: $f1
	add  c                                           ; $4623: $81
	ld   bc, $f180                                   ; $4624: $01 $80 $f1
	ld   de, $ee80                                   ; $4627: $11 $80 $ee
	ld   l, a                                        ; $462a: $6f
	db   $f4                                         ; $462b: $f4
	rst  $30                                         ; $462c: $f7
	ld   b, e                                        ; $462d: $43
	rst  $38                                         ; $462e: $ff
	inc  e                                           ; $462f: $1c
	rst  $38                                         ; $4630: $ff
	add  hl, de                                      ; $4631: $19
	rst  $38                                         ; $4632: $ff
	inc  de                                          ; $4633: $13
	rst  $38                                         ; $4634: $ff
	rlca                                             ; $4635: $07
	rst  $38                                         ; $4636: $ff
	ld   c, a                                        ; $4637: $4f
	rst  $38                                         ; $4638: $ff
	rra                                              ; $4639: $1f
	add  b                                           ; $463a: $80
	ld   a, a                                        ; $463b: $7f
	add  b                                           ; $463c: $80
	rst  $38                                         ; $463d: $ff
	add  b                                           ; $463e: $80
	pop  af                                          ; $463f: $f1
	nop                                              ; $4640: $00
	ldh  a, [$80]                                    ; $4641: $f0 $80
	pop  af                                          ; $4643: $f1
	nop                                              ; $4644: $00
	di                                               ; $4645: $f3
	add  c                                           ; $4646: $81
	ei                                               ; $4647: $fb
	add  hl, bc                                      ; $4648: $09
	rst  $38                                         ; $4649: $ff
	rst  $30                                         ; $464a: $f7
	db   $fd                                         ; $464b: $fd
	rst  $38                                         ; $464c: $ff
	add  sp, -$01                                    ; $464d: $e8 $ff
	push hl                                          ; $464f: $e5
	ldh  [$fb], a                                    ; $4650: $e0 $fb

jr_081_4652:
	dec  de                                          ; $4652: $1b
	add  d                                           ; $4653: $82
	ei                                               ; $4654: $fb
	ld   [$fbf9], sp                                 ; $4655: $08 $f9 $fb
	db   $fc                                         ; $4658: $fc
	rst  $38                                         ; $4659: $ff
	ld   d, h                                        ; $465a: $54
	rst  $38                                         ; $465b: $ff
	ld   b, $ff                                      ; $465c: $06 $ff
	and  h                                           ; $465e: $a4
	add  c                                           ; $465f: $81
	rst  $30                                         ; $4660: $f7
	add  b                                           ; $4661: $80
	ei                                               ; $4662: $fb
	inc  e                                           ; $4663: $1c
	ld   a, [$50fb]                                  ; $4664: $fa $fb $50
	ei                                               ; $4667: $fb
	nop                                              ; $4668: $00
	rst  $38                                         ; $4669: $ff
	rlca                                             ; $466a: $07
	rst  $38                                         ; $466b: $ff
	xor  a                                           ; $466c: $af
	rst  $38                                         ; $466d: $ff
	dec  bc                                          ; $466e: $0b
	rst  $30                                         ; $466f: $f7
	ld   hl, sp-$05                                  ; $4670: $f8 $fb
	sub  $fd                                         ; $4672: $d6 $fd
	adc  c                                           ; $4674: $89
	cp   $14                                         ; $4675: $fe $14
	rst  $38                                         ; $4677: $ff
	jr   nz, @+$01                                   ; $4678: $20 $ff

	ld   b, b                                        ; $467a: $40
	rst  $38                                         ; $467b: $ff
	add  b                                           ; $467c: $80
	rst  $38                                         ; $467d: $ff
	xor  b                                           ; $467e: $a8
	cp   $fd                                         ; $467f: $fe $fd
	add  b                                           ; $4681: $80
	cp   a                                           ; $4682: $bf
	ld   [bc], a                                     ; $4683: $02
	add  a                                           ; $4684: $87
	sub  [hl]                                        ; $4685: $96
	sub  b                                           ; $4686: $90
	add  b                                           ; $4687: $80
	xor  a                                           ; $4688: $af

jr_081_4689:
	add  b                                           ; $4689: $80
	or   a                                           ; $468a: $b7
	add  b                                           ; $468b: $80
	cp   e                                           ; $468c: $bb
	add  b                                           ; $468d: $80
	cp   b                                           ; $468e: $b8
	ld   bc, $39b9                                   ; $468f: $01 $b9 $39
	add  b                                           ; $4692: $80
	rst  ToBoot                                         ; $4693: $c7
	add  b                                           ; $4694: $80
	ld   hl, sp-$80                                  ; $4695: $f8 $80
	rst  $38                                         ; $4697: $ff
	add  b                                           ; $4698: $80
	rra                                              ; $4699: $1f
	add  b                                           ; $469a: $80
	pop  hl                                          ; $469b: $e1
	add  b                                           ; $469c: $80
	cp   $02                                         ; $469d: $fe $02
	rlca                                             ; $469f: $07
	ccf                                              ; $46a0: $3f
	add  c                                           ; $46a1: $81
	add  e                                           ; $46a2: $83
	cp   b                                           ; $46a3: $b8
	nop                                              ; $46a4: $00
	cp   c                                           ; $46a5: $b9
	add  d                                           ; $46a6: $82
	cp   e                                           ; $46a7: $bb
	add  c                                           ; $46a8: $81
	cp   c                                           ; $46a9: $b9
	rra                                              ; $46aa: $1f
	or   l                                           ; $46ab: $b5
	or   h                                           ; $46ac: $b4
	call nz, $3b38                                   ; $46ad: $c4 $38 $3b
	add  hl, sp                                      ; $46b0: $39
	ld   sp, $cb09                                   ; $46b1: $31 $09 $cb
	adc  a                                           ; $46b4: $8f
	adc  e                                           ; $46b5: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46b6: $cf
	rst  $38                                         ; $46b7: $ff
	rst  ToBoot                                         ; $46b8: $c7
	add  e                                           ; $46b9: $83
	add  c                                           ; $46ba: $81
	push bc                                          ; $46bb: $c5
	ld   bc, $063e                                   ; $46bc: $01 $3e $06
	ld   e, a                                        ; $46bf: $5f
	rlca                                             ; $46c0: $07
	rst  $28                                         ; $46c1: $ef
	inc  bc                                          ; $46c2: $03
	add  b                                           ; $46c3: $80
	inc  b                                           ; $46c4: $04
	ei                                               ; $46c5: $fb
	inc  bc                                          ; $46c6: $03
	inc  de                                          ; $46c7: $13
	add  e                                           ; $46c8: $83
	ret  c                                           ; $46c9: $d8

	add  b                                           ; $46ca: $80
	add  b                                           ; $46cb: $80
	rst  $38                                         ; $46cc: $ff
	dec  b                                           ; $46cd: $05
	ld   hl, sp+$28                                  ; $46ce: $f8 $28
	cpl                                              ; $46d0: $2f
	ld   a, a                                        ; $46d1: $7f
	or   a                                           ; $46d2: $b7
	rlca                                             ; $46d3: $07
	add  b                                           ; $46d4: $80
	rrca                                             ; $46d5: $0f
	rlca                                             ; $46d6: $07
	cp   b                                           ; $46d7: $b8
	nop                                              ; $46d8: $00
	ld   a, a                                        ; $46d9: $7f

jr_081_46da:
	daa                                              ; $46da: $27
	or   a                                           ; $46db: $b7
	rlca                                             ; $46dc: $07
	rst  $30                                         ; $46dd: $f7
	rlca                                             ; $46de: $07
	add  b                                           ; $46df: $80
	sub  b                                           ; $46e0: $90
	add  d                                           ; $46e1: $82
	sub  a                                           ; $46e2: $97
	ld   bc, $a7b7                                   ; $46e3: $01 $b7 $a7
	add  c                                           ; $46e6: $81
	cp   b                                           ; $46e7: $b8

jr_081_46e8:
	add  e                                           ; $46e8: $83
	cp   e                                           ; $46e9: $bb
	ld   bc, $39ba                                   ; $46ea: $01 $ba $39
	add  b                                           ; $46ed: $80
	rst  ToBoot                                         ; $46ee: $c7
	add  b                                           ; $46ef: $80
	ld   hl, sp-$80                                  ; $46f0: $f8 $80
	rst  $38                                         ; $46f2: $ff
	add  b                                           ; $46f3: $80
	rra                                              ; $46f4: $1f
	add  b                                           ; $46f5: $80
	pop  hl                                          ; $46f6: $e1
	add  b                                           ; $46f7: $80

jr_081_46f8:
	cp   $80                                         ; $46f8: $fe $80
	rra                                              ; $46fa: $1f
	nop                                              ; $46fb: $00
	jr   c, jr_081_4689                              ; $46fc: $38 $8b

	cp   e                                           ; $46fe: $bb
	ld   [bc], a                                     ; $46ff: $02
	or   a                                           ; $4700: $b7
	or   h                                           ; $4701: $b4
	add  b                                           ; $4702: $80
	add  b                                           ; $4703: $80
	jr   nc, @-$73                                   ; $4704: $30 $8b

	ld   [hl], $01                                   ; $4706: $36 $01
	ld   h, a                                        ; $4708: $67
	and  c                                           ; $4709: $a1
	add  b                                           ; $470a: $80
	ret  nc                                          ; $470b: $d0

	inc  bc                                          ; $470c: $03
	and  b                                           ; $470d: $a0
	and  c                                           ; $470e: $a1
	pop  de                                          ; $470f: $d1
	db   $d3                                         ; $4710: $d3
	add  b                                           ; $4711: $80
	and  e                                           ; $4712: $a3
	rlca                                             ; $4713: $07
	db   $d3                                         ; $4714: $d3
	ret  nc                                          ; $4715: $d0

	and  b                                           ; $4716: $a0
	and  c                                           ; $4717: $a1
	pop  af                                          ; $4718: $f1
	ldh  a, [$28]                                    ; $4719: $f0 $28
	ret  c                                           ; $471b: $d8

	add  b                                           ; $471c: $80
	rla                                              ; $471d: $17
	inc  b                                           ; $471e: $04
	rrca                                             ; $471f: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4720: $cf
	sbc  $df                                         ; $4721: $de $df
	pop  bc                                          ; $4723: $c1
	add  b                                           ; $4724: $80
	ret  nz                                          ; $4725: $c0

	add  b                                           ; $4726: $80
	ld   e, a                                        ; $4727: $5f
	add  b                                           ; $4728: $80
	rst  JumpTable                                         ; $4729: $df
	ld   bc, $e01f                                   ; $472a: $01 $1f $e0
	rst  $38                                         ; $472d: $ff
	nop                                              ; $472e: $00
	rst  $38                                         ; $472f: $ff
	nop                                              ; $4730: $00
	rst  $38                                         ; $4731: $ff
	nop                                              ; $4732: $00
	rst  $38                                         ; $4733: $ff
	nop                                              ; $4734: $00
	rst  $38                                         ; $4735: $ff
	nop                                              ; $4736: $00
	rst  $38                                         ; $4737: $ff
	nop                                              ; $4738: $00
	rst  $38                                         ; $4739: $ff
	nop                                              ; $473a: $00
	rst  $38                                         ; $473b: $ff
	nop                                              ; $473c: $00
	rst  $38                                         ; $473d: $ff
	nop                                              ; $473e: $00
	rst  $38                                         ; $473f: $ff
	nop                                              ; $4740: $00
	db   $d3                                         ; $4741: $d3
	nop                                              ; $4742: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4743: $cf
	nop                                              ; $4744: $00
	nop                                              ; $4745: $00
	ld   a, [bc]                                     ; $4746: $0a
	adc  e                                           ; $4747: $8b
	dec  b                                           ; $4748: $05
	add  b                                           ; $4749: $80
	inc  b                                           ; $474a: $04
	nop                                              ; $474b: $00
	nop                                              ; $474c: $00
	adc  c                                           ; $474d: $89
	ldh  a, [$80]                                    ; $474e: $f0 $80
	ret  nz                                          ; $4750: $c0

	add  b                                           ; $4751: $80
	jr   nc, jr_081_46da                             ; $4752: $30 $86

	add  b                                           ; $4754: $80
	add  b                                           ; $4755: $80
	add  [hl]                                        ; $4756: $86
	add  b                                           ; $4757: $80
	add  b                                           ; $4758: $80
	add  b                                           ; $4759: $80
	add  e                                           ; $475a: $83
	add  b                                           ; $475b: $80
	add  b                                           ; $475c: $80
	add  b                                           ; $475d: $80
	nop                                              ; $475e: $00
	add  b                                           ; $475f: $80
	ld   [$0080], sp                                 ; $4760: $08 $80 $00
	add  b                                           ; $4763: $80
	ret  nz                                          ; $4764: $c0

	add  b                                           ; $4765: $80
	jr   jr_081_46e8                                 ; $4766: $18 $80

	ldh  a, [$80]                                    ; $4768: $f0 $80
	add  b                                           ; $476a: $80
	add  b                                           ; $476b: $80
	rrca                                             ; $476c: $0f
	add  b                                           ; $476d: $80
	ld   a, [hl]                                     ; $476e: $7e
	add  d                                           ; $476f: $82
	nop                                              ; $4770: $00
	add  [hl]                                        ; $4771: $86
	ld   a, [hl]                                     ; $4772: $7e
	add  b                                           ; $4773: $80
	cp   $86                                         ; $4774: $fe $86
	jr   nz, jr_081_46f8                             ; $4776: $20 $80

	ld   hl, $2380                                   ; $4778: $21 $80 $23
	add  b                                           ; $477b: $80
	daa                                              ; $477c: $27
	add  b                                           ; $477d: $80
	cpl                                              ; $477e: $2f

jr_081_477f:
	add  h                                           ; $477f: $84
	nop                                              ; $4780: $00
	add  d                                           ; $4781: $82
	sub  e                                           ; $4782: $93
	nop                                              ; $4783: $00
	sub  b                                           ; $4784: $90
	add  e                                           ; $4785: $83
	sub  e                                           ; $4786: $93
	nop                                              ; $4787: $00
	inc  bc                                          ; $4788: $03
	add  e                                           ; $4789: $83
	nop                                              ; $478a: $00
	add  d                                           ; $478b: $82
	rst  $38                                         ; $478c: $ff
	nop                                              ; $478d: $00
	nop                                              ; $478e: $00
	add  h                                           ; $478f: $84
	rst  $38                                         ; $4790: $ff
	add  b                                           ; $4791: $80
	and  b                                           ; $4792: $a0
	add  d                                           ; $4793: $82
	daa                                              ; $4794: $27
	add  h                                           ; $4795: $84
	rlca                                             ; $4796: $07
	add  d                                           ; $4797: $82
	daa                                              ; $4798: $27
	add  b                                           ; $4799: $80
	pop  hl                                          ; $479a: $e1
	adc  h                                           ; $479b: $8c
	rst  $38                                         ; $479c: $ff
	add  b                                           ; $479d: $80
	pop  bc                                          ; $479e: $c1
	add  d                                           ; $479f: $82
	cp   $87                                         ; $47a0: $fe $87
	rst  $38                                         ; $47a2: $ff
	ld   bc, $7fb6                                   ; $47a3: $01 $b6 $7f
	add  b                                           ; $47a6: $80
	rst  $38                                         ; $47a7: $ff
	ld   b, $e7                                      ; $47a8: $06 $e7
	rst  $38                                         ; $47aa: $ff
	ld   a, [hl]                                     ; $47ab: $7e
	ld   a, a                                        ; $47ac: $7f

jr_081_47ad:
	rra                                              ; $47ad: $1f
	cp   a                                           ; $47ae: $bf
	cp   l                                           ; $47af: $bd
	add  c                                           ; $47b0: $81
	rst  $38                                         ; $47b1: $ff
	ld   [bc], a                                     ; $47b2: $02
	db   $db                                         ; $47b3: $db
	rst  $30                                         ; $47b4: $f7
	jp   nc, $ff81                                   ; $47b5: $d2 $81 $ff

	nop                                              ; $47b8: $00
	cp   $81                                         ; $47b9: $fe $81
	rst  $38                                         ; $47bb: $ff
	jr   jr_081_47ad                                 ; $47bc: $18 $ef

	rst  $38                                         ; $47be: $ff
	cp   a                                           ; $47bf: $bf
	rst  $38                                         ; $47c0: $ff
	ld   sp, hl                                      ; $47c1: $f9
	rst  $38                                         ; $47c2: $ff
	rst  JumpTable                                         ; $47c3: $df
	rst  $38                                         ; $47c4: $ff
	dec  sp                                          ; $47c5: $3b
	rst  $38                                         ; $47c6: $ff
	ld   a, a                                        ; $47c7: $7f
	rst  $38                                         ; $47c8: $ff
	rst  JumpTable                                         ; $47c9: $df
	rst  $38                                         ; $47ca: $ff
	xor  a                                           ; $47cb: $af
	rst  $38                                         ; $47cc: $ff
	rst  $30                                         ; $47cd: $f7
	rst  $38                                         ; $47ce: $ff
	pop  af                                          ; $47cf: $f1
	rst  $38                                         ; $47d0: $ff
	ld   a, [$7fff]                                  ; $47d1: $fa $ff $7f
	rst  $38                                         ; $47d4: $ff
	inc  c                                           ; $47d5: $0c
	adc  c                                           ; $47d6: $89
	rst  $38                                         ; $47d7: $ff
	ld   [$ff80], sp                                 ; $47d8: $08 $80 $ff
	or   e                                           ; $47db: $b3
	rst  $38                                         ; $47dc: $ff
	call z, $f8ff                                    ; $47dd: $cc $ff $f8
	rst  $38                                         ; $47e0: $ff
	ld   hl, sp-$7b                                  ; $47e1: $f8 $85
	rst  $38                                         ; $47e3: $ff
	dec  b                                           ; $47e4: $05
	call nz, $9dff                                   ; $47e5: $c4 $ff $9d
	rst  $38                                         ; $47e8: $ff
	ld   d, a                                        ; $47e9: $57
	ld   bc, $0780                                   ; $47ea: $01 $80 $07
	add  b                                           ; $47ed: $80
	nop                                              ; $47ee: $00
	add  b                                           ; $47ef: $80
	ld   bc, $0f82                                   ; $47f0: $01 $82 $0f
	add  b                                           ; $47f3: $80
	ld   [$0080], sp                                 ; $47f4: $08 $80 $00
	ld   bc, $e010                                   ; $47f7: $01 $10 $e0
	add  b                                           ; $47fa: $80
	nop                                              ; $47fb: $00
	add  b                                           ; $47fc: $80
	jr   nc, jr_081_477f                             ; $47fd: $30 $80

	ldh  a, [$80]                                    ; $47ff: $f0 $80
	ldh  [$84], a                                    ; $4801: $e0 $84
	nop                                              ; $4803: $00
	add  b                                           ; $4804: $80
	add  b                                           ; $4805: $80
	add  b                                           ; $4806: $80
	add  e                                           ; $4807: $83
	add  b                                           ; $4808: $80
	sbc  a                                           ; $4809: $9f
	add  d                                           ; $480a: $82
	nop                                              ; $480b: $00
	add  b                                           ; $480c: $80
	add  c                                           ; $480d: $81
	add  b                                           ; $480e: $80
	add  a                                           ; $480f: $87
	add  b                                           ; $4810: $80
	sbc  a                                           ; $4811: $9f
	add  b                                           ; $4812: $80
	ld   a, a                                        ; $4813: $7f
	add  b                                           ; $4814: $80
	rst  $38                                         ; $4815: $ff
	ld   [bc], a                                     ; $4816: $02
	ret  nz                                          ; $4817: $c0

	rst  $38                                         ; $4818: $ff
	ccf                                              ; $4819: $3f
	add  c                                           ; $481a: $81
	nop                                              ; $481b: $00
	add  h                                           ; $481c: $84
	rst  $38                                         ; $481d: $ff
	add  d                                           ; $481e: $82
	cp   $00                                         ; $481f: $fe $00
	nop                                              ; $4821: $00
	add  b                                           ; $4822: $80
	cp   $81                                         ; $4823: $fe $81
	nop                                              ; $4825: $00
	add  h                                           ; $4826: $84
	cp   $84                                         ; $4827: $fe $84

jr_081_4829:
	cpl                                              ; $4829: $2f
	ld   a, [bc]                                     ; $482a: $0a
	ld   l, $2f                                      ; $482b: $2e $2f
	ld   l, $2f                                      ; $482d: $2e $2f
	daa                                              ; $482f: $27
	cpl                                              ; $4830: $2f
	add  hl, hl                                      ; $4831: $29
	cpl                                              ; $4832: $2f
	ld   l, $2f                                      ; $4833: $2e $2f
	sbc  h                                           ; $4835: $9c
	add  c                                           ; $4836: $81
	sub  e                                           ; $4837: $93
	nop                                              ; $4838: $00
	rra                                              ; $4839: $1f
	add  c                                           ; $483a: $81
	sbc  a                                           ; $483b: $9f
	ld   [bc], a                                     ; $483c: $02
	rra                                              ; $483d: $1f
	sbc  a                                           ; $483e: $9f
	add  b                                           ; $483f: $80
	add  c                                           ; $4840: $81
	sbc  a                                           ; $4841: $9f
	ld   [bc], a                                     ; $4842: $02
	rra                                              ; $4843: $1f
	rst  $38                                         ; $4844: $ff
	nop                                              ; $4845: $00
	add  a                                           ; $4846: $87
	rst  $38                                         ; $4847: $ff
	nop                                              ; $4848: $00
	nop                                              ; $4849: $00
	add  h                                           ; $484a: $84
	rst  $38                                         ; $484b: $ff
	rlca                                             ; $484c: $07
	daa                                              ; $484d: $27
	rlca                                             ; $484e: $07
	daa                                              ; $484f: $27
	scf                                              ; $4850: $37
	ccf                                              ; $4851: $3f
	cpl                                              ; $4852: $2f
	ccf                                              ; $4853: $3f
	rra                                              ; $4854: $1f
	add  h                                           ; $4855: $84
	ccf                                              ; $4856: $3f
	sbc  a                                           ; $4857: $9f
	rst  $38                                         ; $4858: $ff
	ld   [bc], a                                     ; $4859: $02
	ld   sp, hl                                      ; $485a: $f9
	rst  $38                                         ; $485b: $ff
	db   $fd                                         ; $485c: $fd
	add  c                                           ; $485d: $81
	rst  $38                                         ; $485e: $ff
	nop                                              ; $485f: $00
	ei                                               ; $4860: $fb
	add  b                                           ; $4861: $80
	db   $fd                                         ; $4862: $fd
	add  b                                           ; $4863: $80
	db   $fc                                         ; $4864: $fc
	add  e                                           ; $4865: $83
	rst  $38                                         ; $4866: $ff
	inc  d                                           ; $4867: $14
	cp   a                                           ; $4868: $bf
	rst  $38                                         ; $4869: $ff
	rst  $30                                         ; $486a: $f7
	rst  $38                                         ; $486b: $ff
	ld   a, $ff                                      ; $486c: $3e $ff
	rst  $20                                         ; $486e: $e7
	rst  $38                                         ; $486f: $ff
	db   $dd                                         ; $4870: $dd
	rst  $38                                         ; $4871: $ff
	xor  a                                           ; $4872: $af
	rst  $38                                         ; $4873: $ff
	cp   e                                           ; $4874: $bb
	cp   a                                           ; $4875: $bf
	rlca                                             ; $4876: $07
	sbc  a                                           ; $4877: $9f
	inc  sp                                          ; $4878: $33
	rst  $38                                         ; $4879: $ff
	ld   a, l                                        ; $487a: $7d
	rst  $38                                         ; $487b: $ff
	rst  $28                                         ; $487c: $ef
	add  c                                           ; $487d: $81
	rst  $38                                         ; $487e: $ff
	nop                                              ; $487f: $00
	cp   $83                                         ; $4880: $fe $83
	rst  $38                                         ; $4882: $ff
	ld   [bc], a                                     ; $4883: $02
	rst  JumpTable                                         ; $4884: $df
	rst  $38                                         ; $4885: $ff
	sbc  $83                                         ; $4886: $de $83
	rst  $38                                         ; $4888: $ff
	inc  b                                           ; $4889: $04
	rst  JumpTable                                         ; $488a: $df
	rst  $38                                         ; $488b: $ff
	db   $fd                                         ; $488c: $fd
	rst  $38                                         ; $488d: $ff
	cp   $81                                         ; $488e: $fe $81
	rst  $38                                         ; $4890: $ff
	ld   b, $fb                                      ; $4891: $06 $fb
	rst  $38                                         ; $4893: $ff
	and  b                                           ; $4894: $a0
	rst  $38                                         ; $4895: $ff
	cp   a                                           ; $4896: $bf
	rst  $38                                         ; $4897: $ff
	cp   $81                                         ; $4898: $fe $81
	rst  $38                                         ; $489a: $ff
	nop                                              ; $489b: $00
	rst  $30                                         ; $489c: $f7
	add  e                                           ; $489d: $83
	rst  $38                                         ; $489e: $ff
	ld   [bc], a                                     ; $489f: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48a0: $cf
	rst  $38                                         ; $48a1: $ff
	jr   nz, jr_081_4829                             ; $48a2: $20 $85

	nop                                              ; $48a4: $00
	nop                                              ; $48a5: $00
	rst  $38                                         ; $48a6: $ff
	add  b                                           ; $48a7: $80
	nop                                              ; $48a8: $00
	add  b                                           ; $48a9: $80
	inc  bc                                          ; $48aa: $03
	add  b                                           ; $48ab: $80
	rrca                                             ; $48ac: $0f
	ld   bc, $c03f                                   ; $48ad: $01 $3f $c0
	add  l                                           ; $48b0: $85
	nop                                              ; $48b1: $00
	add  [hl]                                        ; $48b2: $86
	rst  $38                                         ; $48b3: $ff
	add  [hl]                                        ; $48b4: $86
	nop                                              ; $48b5: $00
	add  [hl]                                        ; $48b6: $86
	rst  $38                                         ; $48b7: $ff
	add  [hl]                                        ; $48b8: $86
	nop                                              ; $48b9: $00
	add  [hl]                                        ; $48ba: $86
	ldh  a, [$ae]                                    ; $48bb: $f0 $ae
	rst  $38                                         ; $48bd: $ff
	adc  [hl]                                        ; $48be: $8e
	ldh  a, [$ae]                                    ; $48bf: $f0 $ae
	rst  $38                                         ; $48c1: $ff
	adc  [hl]                                        ; $48c2: $8e
	ldh  a, [$80]                                    ; $48c3: $f0 $80
	nop                                              ; $48c5: $00
	inc  b                                           ; $48c6: $04
	ldh  [rP1], a                                    ; $48c7: $e0 $00
	inc  e                                           ; $48c9: $1c
	nop                                              ; $48ca: $00
	inc  bc                                          ; $48cb: $03
	add  c                                           ; $48cc: $81
	nop                                              ; $48cd: $00
	ld   b, $90                                      ; $48ce: $06 $90
	db   $fc                                         ; $48d0: $fc
	dec  h                                           ; $48d1: $25
	rst  $38                                         ; $48d2: $ff
	sub  d                                           ; $48d3: $92
	rst  $38                                         ; $48d4: $ff
	inc  h                                           ; $48d5: $24
	add  e                                           ; $48d6: $83
	nop                                              ; $48d7: $00
	dec  b                                           ; $48d8: $05
	add  b                                           ; $48d9: $80
	nop                                              ; $48da: $00
	ld   a, b                                        ; $48db: $78
	nop                                              ; $48dc: $00
	rla                                              ; $48dd: $17
	db   $10                                         ; $48de: $10
	add  b                                           ; $48df: $80
	ld   b, $80                                      ; $48e0: $06 $80
	ld   [hl], c                                     ; $48e2: $71
	nop                                              ; $48e3: $00
	rst  $38                                         ; $48e4: $ff
	adc  c                                           ; $48e5: $89
	nop                                              ; $48e6: $00
	inc  b                                           ; $48e7: $04
	ldh  a, [rP1]                                    ; $48e8: $f0 $00
	adc  a                                           ; $48ea: $8f
	add  b                                           ; $48eb: $80
	rrca                                             ; $48ec: $0f
	adc  l                                           ; $48ed: $8d
	ldh  a, [$ae]                                    ; $48ee: $f0 $ae
	rst  $38                                         ; $48f0: $ff
	adc  [hl]                                        ; $48f1: $8e
	ldh  a, [$ae]                                    ; $48f2: $f0 $ae
	rst  $38                                         ; $48f4: $ff
	adc  [hl]                                        ; $48f5: $8e
	ldh  a, [$ae]                                    ; $48f6: $f0 $ae
	rst  $38                                         ; $48f8: $ff
	adc  [hl]                                        ; $48f9: $8e
	ldh  a, [rAUD2LOW]                               ; $48fa: $f0 $18
	ld   l, l                                        ; $48fc: $6d
	rst  $38                                         ; $48fd: $ff
	ld   [hl-], a                                    ; $48fe: $32
	rst  $38                                         ; $48ff: $ff
	ld   b, b                                        ; $4900: $40
	db   $ed                                         ; $4901: $ed
	dec  c                                           ; $4902: $0d
	xor  b                                           ; $4903: $a8
	xor  a                                           ; $4904: $af
	rlca                                             ; $4905: $07
	db   $fc                                         ; $4906: $fc
	rst  $38                                         ; $4907: $ff
	dec  bc                                          ; $4908: $0b
	rst  $38                                         ; $4909: $ff
	rst  ToBoot                                         ; $490a: $c7
	rst  $38                                         ; $490b: $ff
	ld   [hl], c                                     ; $490c: $71
	cp   [hl]                                        ; $490d: $be
	inc  bc                                          ; $490e: $03
	add  e                                           ; $490f: $83

jr_081_4910:
	add  b                                           ; $4910: $80
	or   b                                           ; $4911: $b0
	jr   nc, jr_081_4910                             ; $4912: $30 $fc

	ld   a, h                                        ; $4914: $7c
	add  l                                           ; $4915: $85
	rst  $38                                         ; $4916: $ff
	ld   bc, $38c7                                   ; $4917: $01 $c7 $38
	add  b                                           ; $491a: $80
	add  a                                           ; $491b: $87
	add  b                                           ; $491c: $80
	ldh  a, [$80]                                    ; $491d: $f0 $80
	rra                                              ; $491f: $1f
	inc  b                                           ; $4920: $04
	rrca                                             ; $4921: $0f
	adc  a                                           ; $4922: $8f
	adc  h                                           ; $4923: $8c
	db   $fc                                         ; $4924: $fc
	ldh  a, [$80]                                    ; $4925: $f0 $80
	cp   $01                                         ; $4927: $fe $01
	rst  $38                                         ; $4929: $ff
	ldh  a, [$81]                                    ; $492a: $f0 $81
	nop                                              ; $492c: $00
	add  b                                           ; $492d: $80
	ldh  [$80], a                                    ; $492e: $e0 $80
	db   $10                                         ; $4930: $10
	add  b                                           ; $4931: $80
	ldh  [$80], a                                    ; $4932: $e0 $80
	ld   [hl], b                                     ; $4934: $70
	add  b                                           ; $4935: $80
	db   $10                                         ; $4936: $10
	ld   b, $00                                      ; $4937: $06 $00
	add  b                                           ; $4939: $80
	ld   l, a                                        ; $493a: $6f
	rst  $38                                         ; $493b: $ff
	sbc  a                                           ; $493c: $9f
	rst  $38                                         ; $493d: $ff
	ld   a, a                                        ; $493e: $7f
	add  e                                           ; $493f: $83
	rst  $38                                         ; $4940: $ff
	ld   b, $8f                                      ; $4941: $06 $8f
	rst  $38                                         ; $4943: $ff
	ld   [hl], d                                     ; $4944: $72
	rst  $38                                         ; $4945: $ff
	inc  hl                                          ; $4946: $23
	rst  $38                                         ; $4947: $ff
	sbc  $87                                         ; $4948: $de $87
	rst  $38                                         ; $494a: $ff
	ld   b, $fb                                      ; $494b: $06 $fb
	rst  $38                                         ; $494d: $ff
	ld   b, $ff                                      ; $494e: $06 $ff
	sbc  d                                           ; $4950: $9a
	rst  $38                                         ; $4951: $ff
	ld   h, a                                        ; $4952: $67
	add  l                                           ; $4953: $85
	rst  $38                                         ; $4954: $ff
	inc  b                                           ; $4955: $04
	rst  $30                                         ; $4956: $f7
	rst  $38                                         ; $4957: $ff
	ret  z                                           ; $4958: $c8

	rst  $38                                         ; $4959: $ff
	dec  c                                           ; $495a: $0d
	add  c                                           ; $495b: $81
	rst  $38                                         ; $495c: $ff
	nop                                              ; $495d: $00
	dec  a                                           ; $495e: $3d
	add  a                                           ; $495f: $87
	ldh  a, [rSC]                                    ; $4960: $f0 $02
	ld   d, b                                        ; $4962: $50
	ldh  a, [$60]                                    ; $4963: $f0 $60
	add  c                                           ; $4965: $81
	ldh  a, [rP1]                                    ; $4966: $f0 $00
	xor  $83                                         ; $4968: $ee $83
	rst  $38                                         ; $496a: $ff
	ld   [bc], a                                     ; $496b: $02
	cp   $ff                                         ; $496c: $fe $ff
	cp   a                                           ; $496e: $bf
	add  c                                           ; $496f: $81
	rst  $38                                         ; $4970: $ff
	nop                                              ; $4971: $00
	rst  JumpTable                                         ; $4972: $df
	add  c                                           ; $4973: $81
	rst  $38                                         ; $4974: $ff
	nop                                              ; $4975: $00
	daa                                              ; $4976: $27
	add  c                                           ; $4977: $81
	rst  $38                                         ; $4978: $ff
	nop                                              ; $4979: $00
	rst  $28                                         ; $497a: $ef
	add  e                                           ; $497b: $83
	rst  $38                                         ; $497c: $ff
	nop                                              ; $497d: $00
	rst  $30                                         ; $497e: $f7
	add  e                                           ; $497f: $83
	rst  $38                                         ; $4980: $ff
	ld   b, $b2                                      ; $4981: $06 $b2
	rst  $38                                         ; $4983: $ff
	cp   $ff                                         ; $4984: $fe $ff
	rst  $30                                         ; $4986: $f7
	rst  $38                                         ; $4987: $ff
	ld   a, a                                        ; $4988: $7f
	add  l                                           ; $4989: $85
	rst  $38                                         ; $498a: $ff
	inc  b                                           ; $498b: $04
	ei                                               ; $498c: $fb
	rst  $38                                         ; $498d: $ff
	add  b                                           ; $498e: $80
	ldh  a, [$e0]                                    ; $498f: $f0 $e0
	adc  c                                           ; $4991: $89
	ldh  a, [rSB]                                    ; $4992: $f0 $01
	ret  nc                                          ; $4994: $d0

	ldh  a, [rIE]                                    ; $4995: $f0 $ff
	nop                                              ; $4997: $00
	rst  $38                                         ; $4998: $ff
	nop                                              ; $4999: $00
	rst  $38                                         ; $499a: $ff
	nop                                              ; $499b: $00
	rst  $38                                         ; $499c: $ff
	nop                                              ; $499d: $00
	rst  $38                                         ; $499e: $ff
	nop                                              ; $499f: $00
	rst  $38                                         ; $49a0: $ff
	nop                                              ; $49a1: $00
	ld   hl, sp+$00                                  ; $49a2: $f8 $00
	jp   c, $8a00                                    ; $49a4: $da $00 $8a

	rst  $38                                         ; $49a7: $ff
	add  b                                           ; $49a8: $80
	rst  $30                                         ; $49a9: $f7
	add  b                                           ; $49aa: $80
	rst  $38                                         ; $49ab: $ff
	add  b                                           ; $49ac: $80
	cp   $8c                                         ; $49ad: $fe $8c
	rst  $38                                         ; $49af: $ff
	add  b                                           ; $49b0: $80
	rst  $28                                         ; $49b1: $ef
	add  b                                           ; $49b2: $80
	ld   a, a                                        ; $49b3: $7f
	adc  d                                           ; $49b4: $8a
	rst  $38                                         ; $49b5: $ff
	add  [hl]                                        ; $49b6: $86
	nop                                              ; $49b7: $00
	nop                                              ; $49b8: $00
	ldh  a, [$85]                                    ; $49b9: $f0 $85
	nop                                              ; $49bb: $00
	nop                                              ; $49bc: $00
	ldh  a, [$8b]                                    ; $49bd: $f0 $8b
	nop                                              ; $49bf: $00
	add  b                                           ; $49c0: $80
	dec  b                                           ; $49c1: $05
	adc  b                                           ; $49c2: $88
	nop                                              ; $49c3: $00
	add  b                                           ; $49c4: $80
	dec  d                                           ; $49c5: $15
	add  b                                           ; $49c6: $80
	xor  [hl]                                        ; $49c7: $ae
	add  b                                           ; $49c8: $80
	rra                                              ; $49c9: $1f
	add  h                                           ; $49ca: $84
	nop                                              ; $49cb: $00
	add  b                                           ; $49cc: $80
	dec  b                                           ; $49cd: $05
	add  b                                           ; $49ce: $80
	ld   a, [bc]                                     ; $49cf: $0a
	add  b                                           ; $49d0: $80
	ld   d, c                                        ; $49d1: $51
	add  b                                           ; $49d2: $80
	db   $eb                                         ; $49d3: $eb
	add  b                                           ; $49d4: $80
	ld   a, a                                        ; $49d5: $7f
	add  [hl]                                        ; $49d6: $86
	nop                                              ; $49d7: $00
	add  b                                           ; $49d8: $80
	xor  b                                           ; $49d9: $a8
	add  b                                           ; $49da: $80
	push de                                          ; $49db: $d5
	add  b                                           ; $49dc: $80
	cp   $80                                         ; $49dd: $fe $80
	db   $fd                                         ; $49df: $fd
	add  b                                           ; $49e0: $80
	ld   d, a                                        ; $49e1: $57
	add  b                                           ; $49e2: $80
	cp   a                                           ; $49e3: $bf
	inc  b                                           ; $49e4: $04
	rla                                              ; $49e5: $17
	rra                                              ; $49e6: $1f
	ld   [bc], a                                     ; $49e7: $02
	rra                                              ; $49e8: $1f
	dec  d                                           ; $49e9: $15
	add  b                                           ; $49ea: $80
	cpl                                              ; $49eb: $2f
	add  b                                           ; $49ec: $80
	rlca                                             ; $49ed: $07
	add  b                                           ; $49ee: $80
	ld   a, [bc]                                     ; $49ef: $0a
	ld   bc, $ba45                                   ; $49f0: $01 $45 $ba
	add  c                                           ; $49f3: $81
	rst  $38                                         ; $49f4: $ff
	dec  e                                           ; $49f5: $1d
	ld   l, a                                        ; $49f6: $6f
	rst  $38                                         ; $49f7: $ff
	push bc                                          ; $49f8: $c5
	rst  $38                                         ; $49f9: $ff
	sub  c                                           ; $49fa: $91
	rst  $38                                         ; $49fb: $ff
	db   $d3                                         ; $49fc: $d3
	rst  $38                                         ; $49fd: $ff
	jp   nz, $d0ff                                   ; $49fe: $c2 $ff $d0

	rst  $38                                         ; $4a01: $ff
	ld   a, [$57ff]                                  ; $4a02: $fa $ff $57
	rst  $38                                         ; $4a05: $ff
	add  a                                           ; $4a06: $87
	rst  $38                                         ; $4a07: $ff
	xor  a                                           ; $4a08: $af
	rst  $38                                         ; $4a09: $ff
	xor  e                                           ; $4a0a: $ab
	rst  $38                                         ; $4a0b: $ff
	pop  bc                                          ; $4a0c: $c1
	rst  $38                                         ; $4a0d: $ff
	ldh  [c], a                                      ; $4a0e: $e2
	rst  $38                                         ; $4a0f: $ff
	or   $ff                                         ; $4a10: $f6 $ff
	nop                                              ; $4a12: $00
	cp   $80                                         ; $4a13: $fe $80
	db   $fd                                         ; $4a15: $fd
	add  b                                           ; $4a16: $80
	add  sp, -$80                                    ; $4a17: $e8 $80
	ret  nc                                          ; $4a19: $d0

	add  b                                           ; $4a1a: $80
	rst  $38                                         ; $4a1b: $ff
	inc  bc                                          ; $4a1c: $03
	ld   a, a                                        ; $4a1d: $7f
	rst  $38                                         ; $4a1e: $ff
	ld   a, a                                        ; $4a1f: $7f
	rst  $38                                         ; $4a20: $ff
	add  b                                           ; $4a21: $80
	db   $fd                                         ; $4a22: $fd
	add  b                                           ; $4a23: $80
	ld   a, [$4080]                                  ; $4a24: $fa $80 $40
	add  d                                           ; $4a27: $82
	nop                                              ; $4a28: $00
	add  b                                           ; $4a29: $80
	push af                                          ; $4a2a: $f5
	add  b                                           ; $4a2b: $80
	ldh  [$80], a                                    ; $4a2c: $e0 $80
	ldh  a, [$80]                                    ; $4a2e: $f0 $80
	ld   [$8080], sp                                 ; $4a30: $08 $80 $80
	adc  h                                           ; $4a33: $8c
	nop                                              ; $4a34: $00
	add  b                                           ; $4a35: $80
	ld   [bc], a                                     ; $4a36: $02
	add  b                                           ; $4a37: $80
	nop                                              ; $4a38: $00
	add  b                                           ; $4a39: $80
	dec  a                                           ; $4a3a: $3d
	add  b                                           ; $4a3b: $80
	nop                                              ; $4a3c: $00
	add  b                                           ; $4a3d: $80
	ld   bc, $0080                                   ; $4a3e: $01 $80 $00
	add  b                                           ; $4a41: $80
	dec  b                                           ; $4a42: $05
	add  b                                           ; $4a43: $80
	ld   [$0580], sp                                 ; $4a44: $08 $80 $05
	add  b                                           ; $4a47: $80
	cp   a                                           ; $4a48: $bf
	add  b                                           ; $4a49: $80
	rst  JumpTable                                         ; $4a4a: $df
	add  b                                           ; $4a4b: $80
	xor  a                                           ; $4a4c: $af
	ld   [$5f5d], sp                                 ; $4a4d: $08 $5d $5f
	ld   a, [$faff]                                  ; $4a50: $fa $ff $fa
	rst  $38                                         ; $4a53: $ff
	cp   b                                           ; $4a54: $b8
	cp   a                                           ; $4a55: $bf
	dec  b                                           ; $4a56: $05
	add  e                                           ; $4a57: $83
	nop                                              ; $4a58: $00
	adc  b                                           ; $4a59: $88
	rst  $38                                         ; $4a5a: $ff
	add  h                                           ; $4a5b: $84
	nop                                              ; $4a5c: $00
	add  b                                           ; $4a5d: $80
	add  b                                           ; $4a5e: $80
	add  b                                           ; $4a5f: $80
	db   $fc                                         ; $4a60: $fc
	add  b                                           ; $4a61: $80
	rst  $38                                         ; $4a62: $ff
	inc  b                                           ; $4a63: $04
	ei                                               ; $4a64: $fb
	db   $fc                                         ; $4a65: $fc
	cp   b                                           ; $4a66: $b8
	ret  nz                                          ; $4a67: $c0

	ld   a, a                                        ; $4a68: $7f
	add  a                                           ; $4a69: $87
	nop                                              ; $4a6a: $00
	add  b                                           ; $4a6b: $80
	add  b                                           ; $4a6c: $80
	inc  b                                           ; $4a6d: $04
	ld   d, b                                        ; $4a6e: $50
	or   b                                           ; $4a6f: $b0
	ld   h, d                                        ; $4a70: $62
	ld   a, [hl]                                     ; $4a71: $7e
	di                                               ; $4a72: $f3
	adc  l                                           ; $4a73: $8d
	nop                                              ; $4a74: $00
	ld   bc, $0afa                                   ; $4a75: $01 $fa $0a
	add  b                                           ; $4a78: $80
	dec  c                                           ; $4a79: $0d
	adc  d                                           ; $4a7a: $8a
	rrca                                             ; $4a7b: $0f
	add  b                                           ; $4a7c: $80
	xor  e                                           ; $4a7d: $ab
	add  b                                           ; $4a7e: $80
	db   $dd                                         ; $4a7f: $dd
	add  b                                           ; $4a80: $80
	ld   [$fd80], a                                  ; $4a81: $ea $80 $fd
	adc  [hl]                                        ; $4a84: $8e
	rst  $38                                         ; $4a85: $ff
	add  b                                           ; $4a86: $80
	cp   a                                           ; $4a87: $bf
	add  b                                           ; $4a88: $80
	rst  $38                                         ; $4a89: $ff
	add  b                                           ; $4a8a: $80
	cp   $80                                         ; $4a8b: $fe $80
	rst  $30                                         ; $4a8d: $f7
	add  b                                           ; $4a8e: $80
	cp   $86                                         ; $4a8f: $fe $86
	rst  $38                                         ; $4a91: $ff
	add  b                                           ; $4a92: $80
	db   $fd                                         ; $4a93: $fd
	add  d                                           ; $4a94: $82
	rst  $38                                         ; $4a95: $ff
	add  b                                           ; $4a96: $80
	add  d                                           ; $4a97: $82
	add  b                                           ; $4a98: $80
	pop  de                                          ; $4a99: $d1
	add  b                                           ; $4a9a: $80
	xor  e                                           ; $4a9b: $ab
	add  b                                           ; $4a9c: $80
	rst  JumpTable                                         ; $4a9d: $df
	sub  [hl]                                        ; $4a9e: $96
	rst  $38                                         ; $4a9f: $ff
	ld   hl, $ffaf                                   ; $4aa0: $21 $af $ff
	rlca                                             ; $4aa3: $07
	rst  $38                                         ; $4aa4: $ff
	rlca                                             ; $4aa5: $07
	rst  $38                                         ; $4aa6: $ff
	dec  c                                           ; $4aa7: $0d
	rst  $38                                         ; $4aa8: $ff
	ld   c, c                                        ; $4aa9: $49
	rst  $38                                         ; $4aaa: $ff
	ld   d, l                                        ; $4aab: $55
	rst  $38                                         ; $4aac: $ff
	or   l                                           ; $4aad: $b5
	rst  $38                                         ; $4aae: $ff
	pop  hl                                          ; $4aaf: $e1
	rst  $38                                         ; $4ab0: $ff
	cp   d                                           ; $4ab1: $ba
	rst  $38                                         ; $4ab2: $ff
	ld   b, a                                        ; $4ab3: $47
	rst  $38                                         ; $4ab4: $ff
	ld   b, d                                        ; $4ab5: $42
	rst  $38                                         ; $4ab6: $ff
	ld   [bc], a                                     ; $4ab7: $02
	rst  $38                                         ; $4ab8: $ff
	and  d                                           ; $4ab9: $a2
	rst  $38                                         ; $4aba: $ff
	jp   hl                                          ; $4abb: $e9


	rst  $38                                         ; $4abc: $ff
	db   $eb                                         ; $4abd: $eb
	rst  $38                                         ; $4abe: $ff
	or   $ff                                         ; $4abf: $f6 $ff
	dec  bc                                          ; $4ac1: $0b
	push af                                          ; $4ac2: $f5
	add  d                                           ; $4ac3: $82
	rst  $38                                         ; $4ac4: $ff
	add  b                                           ; $4ac5: $80
	cp   $08                                         ; $4ac6: $fe $08
	cp   a                                           ; $4ac8: $bf
	rst  $38                                         ; $4ac9: $ff
	rra                                              ; $4aca: $1f
	rst  $38                                         ; $4acb: $ff
	ld   e, a                                        ; $4acc: $5f
	rst  $38                                         ; $4acd: $ff
	ld   d, l                                        ; $4ace: $55
	rst  $38                                         ; $4acf: $ff
	ld   d, l                                        ; $4ad0: $55
	add  l                                           ; $4ad1: $85
	nop                                              ; $4ad2: $00
	nop                                              ; $4ad3: $00
	rst  $38                                         ; $4ad4: $ff
	add  l                                           ; $4ad5: $85
	nop                                              ; $4ad6: $00
	adc  [hl]                                        ; $4ad7: $8e
	rst  $38                                         ; $4ad8: $ff
	ld   bc, $00f0                                   ; $4ad9: $01 $f0 $00
	add  b                                           ; $4adc: $80
	ld   bc, $008a                                   ; $4add: $01 $8a $00
	dec  b                                           ; $4ae0: $05
	dec  c                                           ; $4ae1: $0d
	cp   $ec                                         ; $4ae2: $fe $ec
	ldh  a, [$60]                                    ; $4ae4: $f0 $60
	add  b                                           ; $4ae6: $80
	add  d                                           ; $4ae7: $82
	nop                                              ; $4ae8: $00
	add  b                                           ; $4ae9: $80
	db   $10                                         ; $4aea: $10
	add  b                                           ; $4aeb: $80
	ld   a, [hl+]                                    ; $4aec: $2a
	add  b                                           ; $4aed: $80
	rst  $38                                         ; $4aee: $ff
	add  b                                           ; $4aef: $80
	nop                                              ; $4af0: $00
	add  b                                           ; $4af1: $80
	ld   bc, $8a80                                   ; $4af2: $01 $80 $8a
	add  b                                           ; $4af5: $80
	ld   d, a                                        ; $4af6: $57
	add  b                                           ; $4af7: $80
	ccf                                              ; $4af8: $3f
	add  b                                           ; $4af9: $80
	rra                                              ; $4afa: $1f
	add  b                                           ; $4afb: $80
	adc  d                                           ; $4afc: $8a
	add  b                                           ; $4afd: $80
	ld   d, c                                        ; $4afe: $51
	add  b                                           ; $4aff: $80
	ccf                                              ; $4b00: $3f
	add  b                                           ; $4b01: $80
	ld   a, a                                        ; $4b02: $7f
	add  b                                           ; $4b03: $80
	cp   a                                           ; $4b04: $bf
	add  b                                           ; $4b05: $80
	ld   a, a                                        ; $4b06: $7f
	add  d                                           ; $4b07: $82
	rst  $38                                         ; $4b08: $ff
	add  b                                           ; $4b09: $80
	xor  a                                           ; $4b0a: $af
	add  b                                           ; $4b0b: $80
	ld   [hl], l                                     ; $4b0c: $75
	nop                                              ; $4b0d: $00
	ldh  a, [$80]                                    ; $4b0e: $f0 $80
	add  b                                           ; $4b10: $80
	add  b                                           ; $4b11: $80
	ldh  [$89], a                                    ; $4b12: $e0 $89
	ldh  a, [rP1]                                    ; $4b14: $f0 $00
	rst  $38                                         ; $4b16: $ff
	adc  l                                           ; $4b17: $8d
	nop                                              ; $4b18: $00
	nop                                              ; $4b19: $00
	rst  $38                                         ; $4b1a: $ff
	rst  $38                                         ; $4b1b: $ff
	nop                                              ; $4b1c: $00
	xor  h                                           ; $4b1d: $ac
	nop                                              ; $4b1e: $00
	adc  b                                           ; $4b1f: $88
	rst  $38                                         ; $4b20: $ff
	add  b                                           ; $4b21: $80
	db   $eb                                         ; $4b22: $eb
	add  b                                           ; $4b23: $80
	ld   b, c                                        ; $4b24: $41
	add  b                                           ; $4b25: $80
	ld   [bc], a                                     ; $4b26: $02
	add  b                                           ; $4b27: $80
	ld   a, [$ff8a]                                  ; $4b28: $fa $8a $ff
	add  b                                           ; $4b2b: $80
	cp   a                                           ; $4b2c: $bf
	adc  [hl]                                        ; $4b2d: $8e
	rst  $38                                         ; $4b2e: $ff
	adc  h                                           ; $4b2f: $8c
	ldh  a, [$80]                                    ; $4b30: $f0 $80
	and  b                                           ; $4b32: $a0
	rst  $38                                         ; $4b33: $ff
	nop                                              ; $4b34: $00
	cp   l                                           ; $4b35: $bd
	nop                                              ; $4b36: $00
	add  b                                           ; $4b37: $80
	ld   bc, $2a80                                   ; $4b38: $01 $80 $2a
	add  b                                           ; $4b3b: $80
	dec  e                                           ; $4b3c: $1d
	add  b                                           ; $4b3d: $80
	xor  a                                           ; $4b3e: $af
	add  b                                           ; $4b3f: $80
	rst  $38                                         ; $4b40: $ff
	add  b                                           ; $4b41: $80
	cp   a                                           ; $4b42: $bf
	add  b                                           ; $4b43: $80
	ld   d, l                                        ; $4b44: $55
	add  b                                           ; $4b45: $80
	adc  b                                           ; $4b46: $88
	add  b                                           ; $4b47: $80
	ld   [hl], a                                     ; $4b48: $77
	add  b                                           ; $4b49: $80
	xor  d                                           ; $4b4a: $aa
	add  h                                           ; $4b4b: $84
	rst  $38                                         ; $4b4c: $ff
	add  b                                           ; $4b4d: $80
	rst  $28                                         ; $4b4e: $ef
	add  b                                           ; $4b4f: $80
	ld   b, l                                        ; $4b50: $45
	add  b                                           ; $4b51: $80
	xor  b                                           ; $4b52: $a8
	add  b                                           ; $4b53: $80
	push af                                          ; $4b54: $f5
	add  b                                           ; $4b55: $80
	add  d                                           ; $4b56: $82
	add  b                                           ; $4b57: $80
	nop                                              ; $4b58: $00
	add  b                                           ; $4b59: $80
	and  b                                           ; $4b5a: $a0
	add  b                                           ; $4b5b: $80
	call nc, $fe80                                   ; $4b5c: $d4 $80 $fe
	add  b                                           ; $4b5f: $80
	ld   a, h                                        ; $4b60: $7c
	add  b                                           ; $4b61: $80
	xor  d                                           ; $4b62: $aa
	add  b                                           ; $4b63: $80
	ret  nc                                          ; $4b64: $d0

	add  b                                           ; $4b65: $80
	add  b                                           ; $4b66: $80
	rst  $38                                         ; $4b67: $ff
	nop                                              ; $4b68: $00
	jp   nc, $0000                                  ; $4b69: $d2 $00 $00

jr_081_4b6c:
	ret  nz                                          ; $4b6c: $c0

	add  b                                           ; $4b6d: $80
	ldh  [$80], a                                    ; $4b6e: $e0 $80
	ld   hl, sp-$80                                  ; $4b70: $f8 $80
	cp   $00                                         ; $4b72: $fe $00
	ret  nz                                          ; $4b74: $c0

	add  a                                           ; $4b75: $87
	nop                                              ; $4b76: $00
	add  h                                           ; $4b77: $84
	ld   hl, sp-$78                                  ; $4b78: $f8 $88
	nop                                              ; $4b7a: $00
	add  h                                           ; $4b7b: $84
	rlca                                             ; $4b7c: $07
	rst  $38                                         ; $4b7d: $ff
	nop                                              ; $4b7e: $00
	call $0800                                       ; $4b7f: $cd $00 $08
	ccf                                              ; $4b82: $3f
	rst  $38                                         ; $4b83: $ff
	db   $eb                                         ; $4b84: $eb
	rst  $38                                         ; $4b85: $ff
	pop  de                                          ; $4b86: $d1
	rst  $38                                         ; $4b87: $ff
	ldh  a, [rIE]                                    ; $4b88: $f0 $ff
	push af                                          ; $4b8a: $f5
	add  e                                           ; $4b8b: $83
	rst  $38                                         ; $4b8c: $ff
	inc  c                                           ; $4b8d: $0c
	xor  d                                           ; $4b8e: $aa
	rst  $38                                         ; $4b8f: $ff
	ld   d, l                                        ; $4b90: $55
	rst  $38                                         ; $4b91: $ff
	xor  e                                           ; $4b92: $ab
	rst  $38                                         ; $4b93: $ff
	ld   de, $b8ff                                   ; $4b94: $11 $ff $b8
	rst  $38                                         ; $4b97: $ff
	add  sp, -$01                                    ; $4b98: $e8 $ff
	ld   [$ff83], a                                  ; $4b9a: $ea $83 $ff
	ld   bc, $7788                                   ; $4b9d: $01 $88 $77
	add  d                                           ; $4ba0: $82
	ld   a, a                                        ; $4ba1: $7f

jr_081_4ba2:
	ld   a, [bc]                                     ; $4ba2: $0a
	rst  $28                                         ; $4ba3: $ef
	rst  $38                                         ; $4ba4: $ff
	ld   b, l                                        ; $4ba5: $45

jr_081_4ba6:
	rst  $38                                         ; $4ba6: $ff
	jr   nz, @+$01                                   ; $4ba7: $20 $ff

	ld   [hl], l                                     ; $4ba9: $75
	rst  $38                                         ; $4baa: $ff
	ei                                               ; $4bab: $fb
	rst  $38                                         ; $4bac: $ff
	ei                                               ; $4bad: $fb
	add  c                                           ; $4bae: $81
	nop                                              ; $4baf: $00
	add  b                                           ; $4bb0: $80
	ret  nz                                          ; $4bb1: $c0

	add  b                                           ; $4bb2: $80
	ldh  a, [$08]                                    ; $4bb3: $f0 $08
	ld   [hl], b                                     ; $4bb5: $70
	ldh  a, [hScriptOpcodeParams]                                    ; $4bb6: $f0 $a0
	ldh  a, [$d0]                                    ; $4bb8: $f0 $d0
	ldh  a, [$e0]                                    ; $4bba: $f0 $e0
	ldh  a, [$e0]                                    ; $4bbc: $f0 $e0

jr_081_4bbe:
	rst  $38                                         ; $4bbe: $ff
	nop                                              ; $4bbf: $00
	cp   h                                           ; $4bc0: $bc
	nop                                              ; $4bc1: $00
	dec  b                                           ; $4bc2: $05
	xor  $ff                                         ; $4bc3: $ee $ff
	db   $ec                                         ; $4bc5: $ec
	rst  $38                                         ; $4bc6: $ff
	xor  l                                           ; $4bc7: $ad
	xor  a                                           ; $4bc8: $af
	add  b                                           ; $4bc9: $80
	push de                                          ; $4bca: $d5
	add  b                                           ; $4bcb: $80
	and  b                                           ; $4bcc: $a0
	add  h                                           ; $4bcd: $84

jr_081_4bce:
	nop                                              ; $4bce: $00
	dec  b                                           ; $4bcf: $05
	ld   [hl+], a                                    ; $4bd0: $22
	rst  $38                                         ; $4bd1: $ff
	adc  b                                           ; $4bd2: $88
	rst  $38                                         ; $4bd3: $ff
	ld   d, l                                        ; $4bd4: $55
	rst  $38                                         ; $4bd5: $ff
	add  b                                           ; $4bd6: $80
	ld   e, l                                        ; $4bd7: $5d
	add  b                                           ; $4bd8: $80
	ld   a, [hl+]                                    ; $4bd9: $2a
	add  h                                           ; $4bda: $84
	nop                                              ; $4bdb: $00
	dec  b                                           ; $4bdc: $05
	xor  d                                           ; $4bdd: $aa
	rst  $38                                         ; $4bde: $ff
	ld   a, [bc]                                     ; $4bdf: $0a
	rst  $38                                         ; $4be0: $ff
	ld   c, e                                        ; $4be1: $4b
	db   $eb                                         ; $4be2: $eb
	add  b                                           ; $4be3: $80
	ld   d, l                                        ; $4be4: $55
	add  b                                           ; $4be5: $80
	jr   nz, jr_081_4b6c                             ; $4be6: $20 $84

	nop                                              ; $4be8: $00
	ld   [bc], a                                     ; $4be9: $02
	and  b                                           ; $4bea: $a0
	ldh  a, [hScriptOpcodeParams]                                    ; $4beb: $f0 $a0
	add  c                                           ; $4bed: $81
	ldh  a, [$80]                                    ; $4bee: $f0 $80
	ld   d, b                                        ; $4bf0: $50
	add  b                                           ; $4bf1: $80
	jr   nz, @+$01                                   ; $4bf2: $20 $ff

	nop                                              ; $4bf4: $00
	jp   $c800                                       ; $4bf5: $c3 $00 $c8


	nop                                              ; $4bf8: $00
	rlca                                             ; $4bf9: $07
	inc  a                                           ; $4bfa: $3c
	call nz, Call_081_6367                           ; $4bfb: $c4 $67 $63
	dec  sp                                          ; $4bfe: $3b
	add  hl, sp                                      ; $4bff: $39
	sbc  l                                           ; $4c00: $9d
	sbc  h                                           ; $4c01: $9c
	add  b                                           ; $4c02: $80
	xor  $80                                         ; $4c03: $ee $80
	ld   [hl], e                                     ; $4c05: $73
	add  b                                           ; $4c06: $80
	add  hl, sp                                      ; $4c07: $39
	add  b                                           ; $4c08: $80
	inc  e                                           ; $4c09: $1c
	nop                                              ; $4c0a: $00
	rst  $38                                         ; $4c0b: $ff
	add  c                                           ; $4c0c: $81
	nop                                              ; $4c0d: $00
	add  b                                           ; $4c0e: $80
	add  b                                           ; $4c0f: $80
	dec  bc                                          ; $4c10: $0b
	ret  nz                                          ; $4c11: $c0

	ld   b, b                                        ; $4c12: $40
	ld   h, b                                        ; $4c13: $60
	jr   nz, jr_081_4bce                             ; $4c14: $20 $b8

	sbc  b                                           ; $4c16: $98
	sbc  $c6                                         ; $4c17: $de $c6
	ld   h, a                                        ; $4c19: $67
	ld   h, e                                        ; $4c1a: $63
	call c, $8020                                    ; $4c1b: $dc $20 $80
	db   $10                                         ; $4c1e: $10
	add  b                                           ; $4c1f: $80
	jr   nz, jr_081_4ba2                             ; $4c20: $20 $80

	db   $10                                         ; $4c22: $10
	add  b                                           ; $4c23: $80
	jr   nz, jr_081_4ba6                             ; $4c24: $20 $80

	db   $10                                         ; $4c26: $10
	add  b                                           ; $4c27: $80
	nop                                              ; $4c28: $00
	add  b                                           ; $4c29: $80
	db   $10                                         ; $4c2a: $10
	add  [hl]                                        ; $4c2b: $86
	nop                                              ; $4c2c: $00
	add  [hl]                                        ; $4c2d: $86
	rst  $38                                         ; $4c2e: $ff
	add  [hl]                                        ; $4c2f: $86
	nop                                              ; $4c30: $00
	sub  [hl]                                        ; $4c31: $96
	ldh  a, [rP1]                                    ; $4c32: $f0 $00
	rst  $38                                         ; $4c34: $ff
	add  e                                           ; $4c35: $83
	nop                                              ; $4c36: $00
	inc  b                                           ; $4c37: $04
	add  b                                           ; $4c38: $80
	nop                                              ; $4c39: $00
	ld   b, b                                        ; $4c3a: $40
	nop                                              ; $4c3b: $00
	jr   nz, jr_081_4bbe                             ; $4c3c: $20 $80

	nop                                              ; $4c3e: $00
	add  b                                           ; $4c3f: $80
	db   $10                                         ; $4c40: $10
	ld   bc, $041b                                   ; $4c41: $01 $1b $04
	add  l                                           ; $4c44: $85
	nop                                              ; $4c45: $00
	ld   [bc], a                                     ; $4c46: $02
	rrca                                             ; $4c47: $0f
	nop                                              ; $4c48: $00
	ldh  a, [$85]                                    ; $4c49: $f0 $85
	nop                                              ; $4c4b: $00
	ld   [bc], a                                     ; $4c4c: $02
	ld   [hl], b                                     ; $4c4d: $70
	nop                                              ; $4c4e: $00
	adc  b                                           ; $4c4f: $88
	add  c                                           ; $4c50: $81
	nop                                              ; $4c51: $00
	ld   [bc], a                                     ; $4c52: $02
	adc  b                                           ; $4c53: $88
	nop                                              ; $4c54: $00
	ld   [hl], b                                     ; $4c55: $70
	add  d                                           ; $4c56: $82
	nop                                              ; $4c57: $00
	ld   [bc], a                                     ; $4c58: $02
	rst  $38                                         ; $4c59: $ff
	rra                                              ; $4c5a: $1f
	dec  de                                          ; $4c5b: $1b
	adc  d                                           ; $4c5c: $8a
	dec  sp                                          ; $4c5d: $3b
	add  b                                           ; $4c5e: $80
	ld   a, a                                        ; $4c5f: $7f
	nop                                              ; $4c60: $00
	di                                               ; $4c61: $f3
	add  [hl]                                        ; $4c62: $86
	ei                                               ; $4c63: $fb
	rlca                                             ; $4c64: $07
	ld   sp, hl                                      ; $4c65: $f9
	pop  af                                          ; $4c66: $f1
	di                                               ; $4c67: $f3
	rst  $10                                         ; $4c68: $d7
	or   a                                           ; $4c69: $b7
	sub  a                                           ; $4c6a: $97
	daa                                              ; $4c6b: $27
	inc  hl                                          ; $4c6c: $23
	add  c                                           ; $4c6d: $81
	rst  $38                                         ; $4c6e: $ff
	nop                                              ; $4c6f: $00
	nop                                              ; $4c70: $00
	add  c                                           ; $4c71: $81
	rst  $38                                         ; $4c72: $ff
	add  h                                           ; $4c73: $84
	call nz, Call_081_7f02                           ; $4c74: $c4 $02 $7f
	rst  $38                                         ; $4c77: $ff
	add  b                                           ; $4c78: $80
	add  c                                           ; $4c79: $81
	rst  $38                                         ; $4c7a: $ff
	nop                                              ; $4c7b: $00
	nop                                              ; $4c7c: $00
	add  c                                           ; $4c7d: $81
	rst  $38                                         ; $4c7e: $ff
	add  h                                           ; $4c7f: $84
	inc  hl                                          ; $4c80: $23
	add  b                                           ; $4c81: $80
	rst  $38                                         ; $4c82: $ff
	nop                                              ; $4c83: $00
	add  h                                           ; $4c84: $84
	add  b                                           ; $4c85: $80
	ld   a, a                                        ; $4c86: $7f
	add  b                                           ; $4c87: $80
	ld   a, [hl]                                     ; $4c88: $7e
	inc  bc                                          ; $4c89: $03
	ld   b, $00                                      ; $4c8a: $06 $00
	ld   h, d                                        ; $4c8c: $62
	ld   h, b                                        ; $4c8d: $60
	add  b                                           ; $4c8e: $80

jr_081_4c8f:
	ld   [hl], b                                     ; $4c8f: $70
	nop                                              ; $4c90: $00
	ld   a, b                                        ; $4c91: $78
	add  b                                           ; $4c92: $80
	ld   a, h                                        ; $4c93: $7c
	ld   [de], a                                     ; $4c94: $12
	ld   l, b                                        ; $4c95: $68
	ld   e, b                                        ; $4c96: $58
	ret  z                                           ; $4c97: $c8

	ld   h, b                                        ; $4c98: $60
	ld   [hl+], a                                    ; $4c99: $22
	ld   h, e                                        ; $4c9a: $63
	rst  $20                                         ; $4c9b: $e7
	and  $e4                                         ; $4c9c: $e6 $e4
	push hl                                          ; $4c9e: $e5
	ld   hl, $a323                                   ; $4c9f: $21 $23 $a3
	and  d                                           ; $4ca2: $a2
	daa                                              ; $4ca3: $27
	dec  h                                           ; $4ca4: $25
	jr   nz, jr_081_4cc8                             ; $4ca5: $20 $21

	ld   h, l                                        ; $4ca7: $65
	add  b                                           ; $4ca8: $80
	ld   b, h                                        ; $4ca9: $44
	add  b                                           ; $4caa: $80
	call nz, $4480                                   ; $4cab: $c4 $80 $44
	ld   [bc], a                                     ; $4cae: $02
	call nz, Call_081_7fff                           ; $4caf: $c4 $ff $7f
	add  e                                           ; $4cb2: $83
	ld   b, h                                        ; $4cb3: $44
	ld   bc, $a3c4                                   ; $4cb4: $01 $c4 $a3

jr_081_4cb7:
	add  l                                           ; $4cb7: $85
	inc  hl                                          ; $4cb8: $23
	add  b                                           ; $4cb9: $80
	rst  $38                                         ; $4cba: $ff
	add  h                                           ; $4cbb: $84
	inc  hl                                          ; $4cbc: $23
	inc  b                                           ; $4cbd: $04
	ccf                                              ; $4cbe: $3f
	rst  $38                                         ; $4cbf: $ff
	and  h                                           ; $4cc0: $a4
	db   $e4                                         ; $4cc1: $e4
	call nz, $4481                                   ; $4cc2: $c4 $81 $44
	inc  bc                                          ; $4cc5: $03
	inc  b                                           ; $4cc6: $04
	ld   b, h                                        ; $4cc7: $44

jr_081_4cc8:
	ccf                                              ; $4cc8: $3f
	ld   a, a                                        ; $4cc9: $7f
	add  b                                           ; $4cca: $80
	ld   b, h                                        ; $4ccb: $44
	inc  bc                                          ; $4ccc: $03
	inc  b                                           ; $4ccd: $04
	ld   b, h                                        ; $4cce: $44
	cp   a                                           ; $4ccf: $bf
	rst  $38                                         ; $4cd0: $ff
	add  [hl]                                        ; $4cd1: $86
	inc  hl                                          ; $4cd2: $23
	add  b                                           ; $4cd3: $80
	rst  $38                                         ; $4cd4: $ff
	add  d                                           ; $4cd5: $82
	inc  hl                                          ; $4cd6: $23
	ld   b, $44                                      ; $4cd7: $06 $44
	call nz, $ff7f                                   ; $4cd9: $c4 $7f $ff
	ld   b, h                                        ; $4cdc: $44
	call nz, $8184                                   ; $4cdd: $c4 $84 $81
	call nz, $8405                                   ; $4ce0: $c4 $05 $84
	ld   b, h                                        ; $4ce3: $44
	ld   a, a                                        ; $4ce4: $7f
	rst  $38                                         ; $4ce5: $ff
	add  b                                           ; $4ce6: $80
	nop                                              ; $4ce7: $00
	add  b                                           ; $4ce8: $80
	inc  hl                                          ; $4ce9: $23
	add  b                                           ; $4cea: $80
	rst  $38                                         ; $4ceb: $ff
	add  [hl]                                        ; $4cec: $86
	inc  hl                                          ; $4ced: $23
	add  b                                           ; $4cee: $80
	rst  $38                                         ; $4cef: $ff
	add  [hl]                                        ; $4cf0: $86
	nop                                              ; $4cf1: $00
	add  b                                           ; $4cf2: $80
	dec  d                                           ; $4cf3: $15
	add  d                                           ; $4cf4: $82
	nop                                              ; $4cf5: $00
	add  b                                           ; $4cf6: $80
	rlca                                             ; $4cf7: $07
	add  [hl]                                        ; $4cf8: $86
	nop                                              ; $4cf9: $00
	add  b                                           ; $4cfa: $80
	ld   hl, sp-$7e                                  ; $4cfb: $f8 $82
	nop                                              ; $4cfd: $00
	add  b                                           ; $4cfe: $80
	ld   hl, sp-$80                                  ; $4cff: $f8 $80
	db   $10                                         ; $4d01: $10
	add  b                                           ; $4d02: $80
	dec  b                                           ; $4d03: $05
	add  b                                           ; $4d04: $80
	ld   a, [hl+]                                    ; $4d05: $2a
	add  b                                           ; $4d06: $80
	ld   d, b                                        ; $4d07: $50
	add  b                                           ; $4d08: $80
	add  d                                           ; $4d09: $82
	add  b                                           ; $4d0a: $80
	ld   d, $80                                      ; $4d0b: $16 $80
	jr   c, jr_081_4c8f                              ; $4d0d: $38 $80

	ret  nz                                          ; $4d0f: $c0

	add  b                                           ; $4d10: $80
	xor  b                                           ; $4d11: $a8
	add  b                                           ; $4d12: $80
	rrca                                             ; $4d13: $0f
	add  b                                           ; $4d14: $80
	ld   a, h                                        ; $4d15: $7c
	add  b                                           ; $4d16: $80
	ld   l, c                                        ; $4d17: $69
	add  b                                           ; $4d18: $80
	adc  c                                           ; $4d19: $89
	add  [hl]                                        ; $4d1a: $86
	add  hl, bc                                      ; $4d1b: $09
	ld   [$9998], sp                                 ; $4d1c: $08 $98 $99
	ld   [hl], c                                     ; $4d1f: $71
	ld   [hl], e                                     ; $4d20: $73
	db   $e3                                         ; $4d21: $e3
	rst  $28                                         ; $4d22: $ef
	adc  a                                           ; $4d23: $8f
	sbc  a                                           ; $4d24: $9f
	rra                                              ; $4d25: $1f
	add  b                                           ; $4d26: $80
	ccf                                              ; $4d27: $3f
	add  b                                           ; $4d28: $80
	ld   a, a                                        ; $4d29: $7f
	add  d                                           ; $4d2a: $82
	rst  $38                                         ; $4d2b: $ff
	adc  l                                           ; $4d2c: $8d
	nop                                              ; $4d2d: $00
	add  b                                           ; $4d2e: $80
	jr   @-$7e                                       ; $4d2f: $18 $80

	db   $10                                         ; $4d31: $10
	add  b                                           ; $4d32: $80

jr_081_4d33:
	jr   jr_081_4cb7                                 ; $4d33: $18 $82

	db   $10                                         ; $4d35: $10
	add  h                                           ; $4d36: $84
	nop                                              ; $4d37: $00
	add  b                                           ; $4d38: $80
	ld   b, b                                        ; $4d39: $40
	add  b                                           ; $4d3a: $80
	xor  b                                           ; $4d3b: $a8
	add  b                                           ; $4d3c: $80
	ld   b, c                                        ; $4d3d: $41
	add  b                                           ; $4d3e: $80
	xor  d                                           ; $4d3f: $aa
	add  b                                           ; $4d40: $80
	ld   b, c                                        ; $4d41: $41
	add  b                                           ; $4d42: $80
	xor  d                                           ; $4d43: $aa
	add  b                                           ; $4d44: $80
	ld   b, c                                        ; $4d45: $41
	add  b                                           ; $4d46: $80
	ld   [$0980], a                                  ; $4d47: $ea $80 $09
	add  b                                           ; $4d4a: $80
	adc  c                                           ; $4d4b: $89
	add  b                                           ; $4d4c: $80
	add  hl, bc                                      ; $4d4d: $09
	add  h                                           ; $4d4e: $84
	adc  c                                           ; $4d4f: $89
	add  b                                           ; $4d50: $80
	add  hl, bc                                      ; $4d51: $09
	add  b                                           ; $4d52: $80
	adc  c                                           ; $4d53: $89
	adc  [hl]                                        ; $4d54: $8e
	nop                                              ; $4d55: $00
	add  b                                           ; $4d56: $80
	ld   b, c                                        ; $4d57: $41
	add  b                                           ; $4d58: $80
	xor  d                                           ; $4d59: $aa
	add  b                                           ; $4d5a: $80
	ld   b, e                                        ; $4d5b: $43
	add  b                                           ; $4d5c: $80
	xor  d                                           ; $4d5d: $aa
	add  b                                           ; $4d5e: $80
	ld   b, b                                        ; $4d5f: $40
	add  b                                           ; $4d60: $80
	xor  e                                           ; $4d61: $ab
	add  b                                           ; $4d62: $80
	ld   b, b                                        ; $4d63: $40
	add  b                                           ; $4d64: $80
	and  b                                           ; $4d65: $a0
	add  b                                           ; $4d66: $80
	add  hl, bc                                      ; $4d67: $09
	add  b                                           ; $4d68: $80
	adc  b                                           ; $4d69: $88
	add  b                                           ; $4d6a: $80
	add  hl, bc                                      ; $4d6b: $09
	add  b                                           ; $4d6c: $80
	ld   c, a                                        ; $4d6d: $4f
	add  b                                           ; $4d6e: $80
	adc  $80                                         ; $4d6f: $ce $80
	cp   b                                           ; $4d71: $b8
	add  b                                           ; $4d72: $80
	ld   d, e                                        ; $4d73: $53
	add  b                                           ; $4d74: $80
	adc  a                                           ; $4d75: $8f
	inc  bc                                          ; $4d76: $03
	scf                                              ; $4d77: $37
	or   a                                           ; $4d78: $b7
	sbc  e                                           ; $4d79: $9b
	db   $db                                         ; $4d7a: $db
	add  b                                           ; $4d7b: $80
	reti                                             ; $4d7c: $d9


	add  b                                           ; $4d7d: $80
	ret  c                                           ; $4d7e: $d8

	ld   bc, $e4c4                                   ; $4d7f: $01 $c4 $e4
	add  b                                           ; $4d82: $80
	ld   [$ec80], a                                  ; $4d83: $ea $80 $ec
	ld   [bc], a                                     ; $4d86: $02
	ldh  [c], a                                      ; $4d87: $e2
	ldh  a, [c]                                      ; $4d88: $f2
	and  e                                           ; $4d89: $a3
	add  c                                           ; $4d8a: $81
	ld   d, e                                        ; $4d8b: $53
	add  b                                           ; $4d8c: $80
	sub  e                                           ; $4d8d: $93
	add  b                                           ; $4d8e: $80
	add  d                                           ; $4d8f: $82
	add  b                                           ; $4d90: $80
	ld   d, c                                        ; $4d91: $51
	add  b                                           ; $4d92: $80
	and  d                                           ; $4d93: $a2
	add  b                                           ; $4d94: $80
	ld   b, c                                        ; $4d95: $41
	add  b                                           ; $4d96: $80
	ld   [hl+], a                                    ; $4d97: $22
	add  b                                           ; $4d98: $80
	ld   [hl-], a                                    ; $4d99: $32
	add  d                                           ; $4d9a: $82
	ld   a, [hl-]                                    ; $4d9b: $3a
	add  b                                           ; $4d9c: $80
	ld   a, [hl+]                                    ; $4d9d: $2a
	add  b                                           ; $4d9e: $80
	db   $10                                         ; $4d9f: $10
	add  b                                           ; $4da0: $80
	ld   a, [hl+]                                    ; $4da1: $2a
	add  b                                           ; $4da2: $80
	db   $10                                         ; $4da3: $10
	add  b                                           ; $4da4: $80
	ld   a, [hl+]                                    ; $4da5: $2a
	add  b                                           ; $4da6: $80
	ld   a, b                                        ; $4da7: $78
	add  b                                           ; $4da8: $80
	ld   l, [hl]                                     ; $4da9: $6e
	add  b                                           ; $4daa: $80
	ld   h, a                                        ; $4dab: $67
	add  b                                           ; $4dac: $80
	ld   [hl+], a                                    ; $4dad: $22
	add  b                                           ; $4dae: $80
	ld   b, b                                        ; $4daf: $40
	add  b                                           ; $4db0: $80
	jr   nz, jr_081_4d33                             ; $4db1: $20 $80

	ld   b, b                                        ; $4db3: $40
	add  b                                           ; $4db4: $80
	jr   nz, @+$09                                   ; $4db5: $20 $07

	jp   Jump_081_67c4                               ; $4db7: $c3 $c4 $67


	ld   h, e                                        ; $4dba: $63
	inc  sp                                          ; $4dbb: $33
	ld   sp, $9899                                   ; $4dbc: $31 $99 $98
	add  b                                           ; $4dbf: $80
	ld   b, h                                        ; $4dc0: $44
	add  b                                           ; $4dc1: $80
	ld   [hl+], a                                    ; $4dc2: $22
	add  b                                           ; $4dc3: $80
	ld   de, $0880                                   ; $4dc4: $11 $80 $08
	nop                                              ; $4dc7: $00
	rst  $38                                         ; $4dc8: $ff
	add  c                                           ; $4dc9: $81
	nop                                              ; $4dca: $00
	add  b                                           ; $4dcb: $80
	add  b                                           ; $4dcc: $80
	ld   a, [bc]                                     ; $4dcd: $0a
	ret  nz                                          ; $4dce: $c0

	ld   b, b                                        ; $4dcf: $40
	ld   h, b                                        ; $4dd0: $60
	jr   nz, jr_081_4e0b                             ; $4dd1: $20 $38

	jr   jr_081_4e33                                 ; $4dd3: $18 $5e

	ld   b, [hl]                                     ; $4dd5: $46
	daa                                              ; $4dd6: $27
	inc  hl                                          ; $4dd7: $23
	add  hl, bc                                      ; $4dd8: $09
	add  c                                           ; $4dd9: $81
	ld   a, [$f880]                                  ; $4dda: $fa $80 $f8
	add  d                                           ; $4ddd: $82
	db   $f4                                         ; $4dde: $f4
	nop                                              ; $4ddf: $00
	ldh  a, [c]                                      ; $4de0: $f2
	add  c                                           ; $4de1: $81
	ld   a, [$fb80]                                  ; $4de2: $fa $80 $fb
	nop                                              ; $4de5: $00
	rlca                                             ; $4de6: $07
	rst  $38                                         ; $4de7: $ff
	nop                                              ; $4de8: $00
	rst  $38                                         ; $4de9: $ff
	nop                                              ; $4dea: $00
	rst  $38                                         ; $4deb: $ff
	nop                                              ; $4dec: $00
	rst  $38                                         ; $4ded: $ff
	nop                                              ; $4dee: $00
	rst  $38                                         ; $4def: $ff
	nop                                              ; $4df0: $00
	rst  $38                                         ; $4df1: $ff
	nop                                              ; $4df2: $00
	rst  $38                                         ; $4df3: $ff
	nop                                              ; $4df4: $00
	rst  $38                                         ; $4df5: $ff
	nop                                              ; $4df6: $00
	rst  $38                                         ; $4df7: $ff
	nop                                              ; $4df8: $00
	rst  $38                                         ; $4df9: $ff
	nop                                              ; $4dfa: $00
	di                                               ; $4dfb: $f3
	nop                                              ; $4dfc: $00
	nop                                              ; $4dfd: $00
	ld   bc, $0302                                   ; $4dfe: $01 $02 $03
	inc  b                                           ; $4e01: $04
	dec  b                                           ; $4e02: $05
	ld   b, $07                                      ; $4e03: $06 $07
	ld   [$0a09], sp                                 ; $4e05: $08 $09 $0a
	dec  bc                                          ; $4e08: $0b
	inc  c                                           ; $4e09: $0c
	dec  c                                           ; $4e0a: $0d

jr_081_4e0b:
	ld   c, $0f                                      ; $4e0b: $0e $0f
	jr   nz, jr_081_4e30                             ; $4e0d: $20 $21

	ld   [hl+], a                                    ; $4e0f: $22
	inc  hl                                          ; $4e10: $23
	db   $10                                         ; $4e11: $10
	ld   de, $1312                                   ; $4e12: $11 $12 $13
	inc  d                                           ; $4e15: $14
	dec  d                                           ; $4e16: $15
	ld   d, $17                                      ; $4e17: $16 $17
	jr   @+$1b                                       ; $4e19: $18 $19

	ld   a, [de]                                     ; $4e1b: $1a
	dec  de                                          ; $4e1c: $1b
	inc  e                                           ; $4e1d: $1c
	dec  e                                           ; $4e1e: $1d
	ld   e, $1f                                      ; $4e1f: $1e $1f
	jr   nc, jr_081_4e54                             ; $4e21: $30 $31

	ld   [hl-], a                                    ; $4e23: $32
	inc  sp                                          ; $4e24: $33
	jr   nz, @+$23                                   ; $4e25: $20 $21

	ld   [hl+], a                                    ; $4e27: $22
	inc  hl                                          ; $4e28: $23
	inc  h                                           ; $4e29: $24
	dec  h                                           ; $4e2a: $25
	ld   h, $27                                      ; $4e2b: $26 $27
	jr   z, jr_081_4e58                              ; $4e2d: $28 $29

	ld   a, [hl+]                                    ; $4e2f: $2a

jr_081_4e30:
	dec  hl                                          ; $4e30: $2b
	inc  l                                           ; $4e31: $2c
	dec  l                                           ; $4e32: $2d

jr_081_4e33:
	ld   l, $2f                                      ; $4e33: $2e $2f
	inc  h                                           ; $4e35: $24
	dec  h                                           ; $4e36: $25
	ld   h, $27                                      ; $4e37: $26 $27
	jr   nc, jr_081_4e6c                             ; $4e39: $30 $31

	ld   [hl-], a                                    ; $4e3b: $32
	inc  sp                                          ; $4e3c: $33
	inc  [hl]                                        ; $4e3d: $34
	dec  [hl]                                        ; $4e3e: $35
	ld   [hl], $37                                   ; $4e3f: $36 $37
	jr   c, jr_081_4e7c                              ; $4e41: $38 $39

	ld   a, [hl-]                                    ; $4e43: $3a
	dec  sp                                          ; $4e44: $3b
	inc  a                                           ; $4e45: $3c
	dec  a                                           ; $4e46: $3d
	ld   a, $3f                                      ; $4e47: $3e $3f
	inc  [hl]                                        ; $4e49: $34
	dec  [hl]                                        ; $4e4a: $35
	ld   [hl], $37                                   ; $4e4b: $36 $37
	ld   b, b                                        ; $4e4d: $40
	ld   b, c                                        ; $4e4e: $41
	ld   b, d                                        ; $4e4f: $42
	ld   b, e                                        ; $4e50: $43
	ld   b, h                                        ; $4e51: $44
	ld   b, l                                        ; $4e52: $45
	ld   b, [hl]                                     ; $4e53: $46

jr_081_4e54:
	ld   b, a                                        ; $4e54: $47
	ld   c, b                                        ; $4e55: $48
	ld   c, c                                        ; $4e56: $49
	ld   c, d                                        ; $4e57: $4a

jr_081_4e58:
	ld   c, e                                        ; $4e58: $4b
	ld   c, h                                        ; $4e59: $4c
	ld   c, l                                        ; $4e5a: $4d
	ld   c, [hl]                                     ; $4e5b: $4e
	ld   c, a                                        ; $4e5c: $4f
	jr   z, @+$2b                                    ; $4e5d: $28 $29

	ld   a, [hl+]                                    ; $4e5f: $2a
	dec  hl                                          ; $4e60: $2b
	ld   d, b                                        ; $4e61: $50
	ld   d, c                                        ; $4e62: $51
	ld   d, d                                        ; $4e63: $52
	ld   d, e                                        ; $4e64: $53
	ld   d, h                                        ; $4e65: $54
	ld   b, l                                        ; $4e66: $45
	ld   d, [hl]                                     ; $4e67: $56
	ld   d, a                                        ; $4e68: $57
	ld   e, b                                        ; $4e69: $58
	ld   e, c                                        ; $4e6a: $59
	ld   e, d                                        ; $4e6b: $5a

jr_081_4e6c:
	ld   e, e                                        ; $4e6c: $5b
	ld   e, h                                        ; $4e6d: $5c
	ld   e, l                                        ; $4e6e: $5d
	ld   e, [hl]                                     ; $4e6f: $5e
	ld   e, a                                        ; $4e70: $5f
	jr   c, @+$3b                                    ; $4e71: $38 $39

	ld   a, [hl-]                                    ; $4e73: $3a
	dec  sp                                          ; $4e74: $3b
	ld   h, b                                        ; $4e75: $60
	ld   h, c                                        ; $4e76: $61
	ld   h, d                                        ; $4e77: $62
	ld   h, e                                        ; $4e78: $63
	ld   h, h                                        ; $4e79: $64
	ld   b, l                                        ; $4e7a: $45
	ld   h, [hl]                                     ; $4e7b: $66

jr_081_4e7c:
	ld   h, a                                        ; $4e7c: $67
	ld   l, b                                        ; $4e7d: $68
	ld   l, c                                        ; $4e7e: $69
	ld   l, d                                        ; $4e7f: $6a
	ld   l, e                                        ; $4e80: $6b
	ld   l, h                                        ; $4e81: $6c
	ld   l, l                                        ; $4e82: $6d
	ld   l, [hl]                                     ; $4e83: $6e
	ld   l, a                                        ; $4e84: $6f
	inc  l                                           ; $4e85: $2c
	dec  l                                           ; $4e86: $2d
	ld   l, $2f                                      ; $4e87: $2e $2f
	ld   [hl], b                                     ; $4e89: $70
	ld   [hl], c                                     ; $4e8a: $71
	ld   [hl], d                                     ; $4e8b: $72
	ld   [hl], e                                     ; $4e8c: $73
	ld   [hl], h                                     ; $4e8d: $74
	ld   [hl], l                                     ; $4e8e: $75
	halt                                             ; $4e8f: $76
	ld   [hl], a                                     ; $4e90: $77
	ld   a, b                                        ; $4e91: $78
	ld   a, c                                        ; $4e92: $79
	ld   a, d                                        ; $4e93: $7a
	ld   a, e                                        ; $4e94: $7b
	ld   a, h                                        ; $4e95: $7c
	ld   a, l                                        ; $4e96: $7d
	ld   a, [hl]                                     ; $4e97: $7e
	ld   a, a                                        ; $4e98: $7f
	inc  a                                           ; $4e99: $3c
	dec  a                                           ; $4e9a: $3d
	ld   a, $3f                                      ; $4e9b: $3e $3f
	nop                                              ; $4e9d: $00
	ld   bc, $0302                                   ; $4e9e: $01 $02 $03
	inc  b                                           ; $4ea1: $04
	dec  b                                           ; $4ea2: $05
	ld   b, $07                                      ; $4ea3: $06 $07
	ld   [$0a09], sp                                 ; $4ea5: $08 $09 $0a
	dec  bc                                          ; $4ea8: $0b
	inc  c                                           ; $4ea9: $0c
	dec  c                                           ; $4eaa: $0d
	ld   c, $0f                                      ; $4eab: $0e $0f
	ld   b, b                                        ; $4ead: $40
	ld   b, c                                        ; $4eae: $41
	ld   b, d                                        ; $4eaf: $42
	ld   b, e                                        ; $4eb0: $43
	db   $10                                         ; $4eb1: $10
	ld   de, $1312                                   ; $4eb2: $11 $12 $13
	inc  d                                           ; $4eb5: $14
	dec  d                                           ; $4eb6: $15
	ld   d, $17                                      ; $4eb7: $16 $17
	jr   jr_081_4ed4                                 ; $4eb9: $18 $19

	ld   a, [de]                                     ; $4ebb: $1a
	dec  de                                          ; $4ebc: $1b
	inc  e                                           ; $4ebd: $1c
	dec  e                                           ; $4ebe: $1d
	ld   e, $1f                                      ; $4ebf: $1e $1f
	ld   b, h                                        ; $4ec1: $44
	ld   b, l                                        ; $4ec2: $45
	ld   b, [hl]                                     ; $4ec3: $46
	ld   b, a                                        ; $4ec4: $47
	inc  bc                                          ; $4ec5: $03
	inc  bc                                          ; $4ec6: $03
	inc  bc                                          ; $4ec7: $03
	inc  bc                                          ; $4ec8: $03
	inc  bc                                          ; $4ec9: $03
	inc  bc                                          ; $4eca: $03
	inc  bc                                          ; $4ecb: $03
	inc  bc                                          ; $4ecc: $03
	inc  bc                                          ; $4ecd: $03
	inc  bc                                          ; $4ece: $03
	inc  bc                                          ; $4ecf: $03
	inc  bc                                          ; $4ed0: $03
	inc  bc                                          ; $4ed1: $03
	inc  bc                                          ; $4ed2: $03
	inc  bc                                          ; $4ed3: $03

jr_081_4ed4:
	inc  bc                                          ; $4ed4: $03
	dec  bc                                          ; $4ed5: $0b
	dec  bc                                          ; $4ed6: $0b
	dec  bc                                          ; $4ed7: $0b
	dec  bc                                          ; $4ed8: $0b
	inc  bc                                          ; $4ed9: $03
	inc  bc                                          ; $4eda: $03
	inc  bc                                          ; $4edb: $03
	inc  bc                                          ; $4edc: $03
	inc  bc                                          ; $4edd: $03
	inc  bc                                          ; $4ede: $03
	inc  bc                                          ; $4edf: $03
	inc  bc                                          ; $4ee0: $03
	inc  bc                                          ; $4ee1: $03
	inc  bc                                          ; $4ee2: $03
	inc  bc                                          ; $4ee3: $03
	inc  bc                                          ; $4ee4: $03
	inc  bc                                          ; $4ee5: $03
	inc  bc                                          ; $4ee6: $03
	inc  bc                                          ; $4ee7: $03
	inc  bc                                          ; $4ee8: $03
	dec  bc                                          ; $4ee9: $0b
	dec  bc                                          ; $4eea: $0b
	dec  bc                                          ; $4eeb: $0b
	dec  bc                                          ; $4eec: $0b
	inc  bc                                          ; $4eed: $03
	inc  bc                                          ; $4eee: $03
	inc  bc                                          ; $4eef: $03
	inc  bc                                          ; $4ef0: $03
	inc  bc                                          ; $4ef1: $03
	inc  bc                                          ; $4ef2: $03
	inc  bc                                          ; $4ef3: $03
	inc  bc                                          ; $4ef4: $03
	inc  bc                                          ; $4ef5: $03
	inc  bc                                          ; $4ef6: $03
	inc  bc                                          ; $4ef7: $03
	inc  bc                                          ; $4ef8: $03
	inc  bc                                          ; $4ef9: $03
	inc  bc                                          ; $4efa: $03
	inc  bc                                          ; $4efb: $03
	inc  bc                                          ; $4efc: $03
	dec  bc                                          ; $4efd: $0b
	dec  bc                                          ; $4efe: $0b
	dec  bc                                          ; $4eff: $0b
	dec  bc                                          ; $4f00: $0b
	inc  bc                                          ; $4f01: $03
	inc  bc                                          ; $4f02: $03
	inc  bc                                          ; $4f03: $03
	inc  bc                                          ; $4f04: $03
	inc  bc                                          ; $4f05: $03
	inc  b                                           ; $4f06: $04
	inc  bc                                          ; $4f07: $03
	inc  bc                                          ; $4f08: $03
	inc  bc                                          ; $4f09: $03
	inc  bc                                          ; $4f0a: $03
	inc  bc                                          ; $4f0b: $03
	inc  bc                                          ; $4f0c: $03
	inc  bc                                          ; $4f0d: $03
	inc  bc                                          ; $4f0e: $03
	inc  bc                                          ; $4f0f: $03
	inc  bc                                          ; $4f10: $03
	dec  bc                                          ; $4f11: $0b
	dec  bc                                          ; $4f12: $0b
	dec  bc                                          ; $4f13: $0b
	dec  bc                                          ; $4f14: $0b
	inc  bc                                          ; $4f15: $03
	inc  bc                                          ; $4f16: $03
	inc  b                                           ; $4f17: $04
	inc  b                                           ; $4f18: $04
	inc  b                                           ; $4f19: $04
	inc  b                                           ; $4f1a: $04
	inc  bc                                          ; $4f1b: $03
	inc  bc                                          ; $4f1c: $03
	inc  bc                                          ; $4f1d: $03
	inc  bc                                          ; $4f1e: $03
	inc  bc                                          ; $4f1f: $03
	inc  bc                                          ; $4f20: $03
	inc  bc                                          ; $4f21: $03
	inc  bc                                          ; $4f22: $03
	inc  bc                                          ; $4f23: $03
	inc  bc                                          ; $4f24: $03
	dec  bc                                          ; $4f25: $0b
	dec  bc                                          ; $4f26: $0b
	dec  bc                                          ; $4f27: $0b
	dec  bc                                          ; $4f28: $0b
	inc  bc                                          ; $4f29: $03
	inc  bc                                          ; $4f2a: $03
	inc  b                                           ; $4f2b: $04
	inc  b                                           ; $4f2c: $04
	inc  b                                           ; $4f2d: $04
	inc  b                                           ; $4f2e: $04
	inc  bc                                          ; $4f2f: $03
	dec  b                                           ; $4f30: $05
	inc  b                                           ; $4f31: $04
	inc  b                                           ; $4f32: $04
	inc  b                                           ; $4f33: $04
	inc  b                                           ; $4f34: $04
	inc  bc                                          ; $4f35: $03
	dec  b                                           ; $4f36: $05
	inc  b                                           ; $4f37: $04
	inc  b                                           ; $4f38: $04
	inc  c                                           ; $4f39: $0c
	inc  c                                           ; $4f3a: $0c
	dec  bc                                          ; $4f3b: $0b
	dec  bc                                          ; $4f3c: $0b
	inc  bc                                          ; $4f3d: $03
	inc  bc                                          ; $4f3e: $03
	inc  b                                           ; $4f3f: $04
	inc  b                                           ; $4f40: $04
	inc  b                                           ; $4f41: $04
	inc  b                                           ; $4f42: $04
	inc  bc                                          ; $4f43: $03
	dec  b                                           ; $4f44: $05
	inc  b                                           ; $4f45: $04
	inc  b                                           ; $4f46: $04
	inc  b                                           ; $4f47: $04
	inc  b                                           ; $4f48: $04
	inc  bc                                          ; $4f49: $03
	dec  b                                           ; $4f4a: $05
	inc  b                                           ; $4f4b: $04
	inc  b                                           ; $4f4c: $04
	inc  c                                           ; $4f4d: $0c
	inc  c                                           ; $4f4e: $0c
	dec  bc                                          ; $4f4f: $0b
	dec  bc                                          ; $4f50: $0b
	inc  bc                                          ; $4f51: $03
	inc  bc                                          ; $4f52: $03
	inc  b                                           ; $4f53: $04
	inc  b                                           ; $4f54: $04
	inc  b                                           ; $4f55: $04
	inc  b                                           ; $4f56: $04
	inc  bc                                          ; $4f57: $03
	inc  b                                           ; $4f58: $04
	inc  b                                           ; $4f59: $04
	inc  b                                           ; $4f5a: $04
	inc  b                                           ; $4f5b: $04
	inc  b                                           ; $4f5c: $04
	inc  b                                           ; $4f5d: $04
	inc  b                                           ; $4f5e: $04
	inc  b                                           ; $4f5f: $04
	inc  b                                           ; $4f60: $04
	inc  c                                           ; $4f61: $0c
	inc  c                                           ; $4f62: $0c
	dec  bc                                          ; $4f63: $0b
	dec  bc                                          ; $4f64: $0b
	dec  bc                                          ; $4f65: $0b
	dec  bc                                          ; $4f66: $0b
	inc  c                                           ; $4f67: $0c
	dec  c                                           ; $4f68: $0d
	dec  c                                           ; $4f69: $0d
	dec  c                                           ; $4f6a: $0d
	dec  c                                           ; $4f6b: $0d
	dec  c                                           ; $4f6c: $0d
	dec  c                                           ; $4f6d: $0d
	dec  c                                           ; $4f6e: $0d
	dec  c                                           ; $4f6f: $0d
	dec  c                                           ; $4f70: $0d
	dec  c                                           ; $4f71: $0d
	dec  c                                           ; $4f72: $0d
	dec  c                                           ; $4f73: $0d
	dec  c                                           ; $4f74: $0d
	dec  c                                           ; $4f75: $0d
	dec  c                                           ; $4f76: $0d
	dec  c                                           ; $4f77: $0d
	dec  bc                                          ; $4f78: $0b
	dec  c                                           ; $4f79: $0d
	dec  c                                           ; $4f7a: $0d
	dec  c                                           ; $4f7b: $0d
	dec  c                                           ; $4f7c: $0d
	dec  c                                           ; $4f7d: $0d
	dec  c                                           ; $4f7e: $0d
	dec  c                                           ; $4f7f: $0d
	dec  c                                           ; $4f80: $0d
	dec  c                                           ; $4f81: $0d
	dec  c                                           ; $4f82: $0d
	dec  c                                           ; $4f83: $0d
	dec  c                                           ; $4f84: $0d
	dec  c                                           ; $4f85: $0d
	dec  c                                           ; $4f86: $0d
	dec  c                                           ; $4f87: $0d
	dec  c                                           ; $4f88: $0d
	dec  c                                           ; $4f89: $0d
	dec  c                                           ; $4f8a: $0d
	dec  c                                           ; $4f8b: $0d
	dec  c                                           ; $4f8c: $0d
	nop                                              ; $4f8d: $00
	ld   bc, $0302                                   ; $4f8e: $01 $02 $03
	inc  b                                           ; $4f91: $04
	dec  b                                           ; $4f92: $05
	ld   b, $07                                      ; $4f93: $06 $07
	ld   [$0a09], sp                                 ; $4f95: $08 $09 $0a
	dec  bc                                          ; $4f98: $0b
	inc  c                                           ; $4f99: $0c
	dec  c                                           ; $4f9a: $0d
	ld   c, $0f                                      ; $4f9b: $0e $0f
	jr   nz, jr_081_4fc0                             ; $4f9d: $20 $21

	ld   [hl+], a                                    ; $4f9f: $22
	inc  hl                                          ; $4fa0: $23
	db   $10                                         ; $4fa1: $10
	ld   de, $1312                                   ; $4fa2: $11 $12 $13
	inc  d                                           ; $4fa5: $14
	dec  d                                           ; $4fa6: $15
	ld   d, $17                                      ; $4fa7: $16 $17
	jr   @+$1b                                       ; $4fa9: $18 $19

	ld   a, [de]                                     ; $4fab: $1a
	dec  de                                          ; $4fac: $1b
	inc  e                                           ; $4fad: $1c
	dec  e                                           ; $4fae: $1d
	ld   e, $1f                                      ; $4faf: $1e $1f
	jr   nc, jr_081_4fe4                             ; $4fb1: $30 $31

	ld   [hl-], a                                    ; $4fb3: $32
	inc  sp                                          ; $4fb4: $33
	jr   nz, @+$23                                   ; $4fb5: $20 $21

	ld   [hl+], a                                    ; $4fb7: $22
	inc  hl                                          ; $4fb8: $23
	inc  h                                           ; $4fb9: $24
	dec  h                                           ; $4fba: $25
	ld   h, $27                                      ; $4fbb: $26 $27
	jr   z, jr_081_4fe8                              ; $4fbd: $28 $29

	ld   a, [hl+]                                    ; $4fbf: $2a

jr_081_4fc0:
	dec  hl                                          ; $4fc0: $2b
	inc  l                                           ; $4fc1: $2c
	dec  l                                           ; $4fc2: $2d
	ld   l, $2f                                      ; $4fc3: $2e $2f
	inc  h                                           ; $4fc5: $24
	dec  h                                           ; $4fc6: $25
	ld   h, $27                                      ; $4fc7: $26 $27
	jr   nc, jr_081_4ffc                             ; $4fc9: $30 $31

	ld   [hl-], a                                    ; $4fcb: $32
	inc  sp                                          ; $4fcc: $33
	inc  [hl]                                        ; $4fcd: $34
	dec  [hl]                                        ; $4fce: $35
	ld   [hl], $37                                   ; $4fcf: $36 $37
	jr   c, jr_081_500c                              ; $4fd1: $38 $39

	ld   a, [hl-]                                    ; $4fd3: $3a
	dec  sp                                          ; $4fd4: $3b
	inc  a                                           ; $4fd5: $3c
	dec  a                                           ; $4fd6: $3d
	ld   a, $3f                                      ; $4fd7: $3e $3f
	inc  [hl]                                        ; $4fd9: $34
	dec  [hl]                                        ; $4fda: $35
	ld   [hl], $37                                   ; $4fdb: $36 $37
	ld   b, b                                        ; $4fdd: $40
	ld   b, c                                        ; $4fde: $41
	ld   b, d                                        ; $4fdf: $42
	ld   b, e                                        ; $4fe0: $43
	ld   b, h                                        ; $4fe1: $44
	ld   b, l                                        ; $4fe2: $45
	ld   b, [hl]                                     ; $4fe3: $46

jr_081_4fe4:
	ld   b, a                                        ; $4fe4: $47
	ld   c, b                                        ; $4fe5: $48
	ld   c, c                                        ; $4fe6: $49
	ld   c, d                                        ; $4fe7: $4a

jr_081_4fe8:
	ld   c, e                                        ; $4fe8: $4b
	ld   c, h                                        ; $4fe9: $4c
	ld   c, l                                        ; $4fea: $4d
	ld   c, [hl]                                     ; $4feb: $4e
	ld   c, a                                        ; $4fec: $4f
	jr   z, @+$2b                                    ; $4fed: $28 $29

	ld   a, [hl+]                                    ; $4fef: $2a
	dec  hl                                          ; $4ff0: $2b
	ld   d, b                                        ; $4ff1: $50
	ld   d, c                                        ; $4ff2: $51
	ld   d, d                                        ; $4ff3: $52
	ld   d, e                                        ; $4ff4: $53
	ld   d, h                                        ; $4ff5: $54
	ld   b, l                                        ; $4ff6: $45
	ld   d, b                                        ; $4ff7: $50
	ld   d, a                                        ; $4ff8: $57
	ld   d, c                                        ; $4ff9: $51
	ld   e, c                                        ; $4ffa: $59
	ld   c, a                                        ; $4ffb: $4f

jr_081_4ffc:
	ld   e, e                                        ; $4ffc: $5b
	ld   h, [hl]                                     ; $4ffd: $66
	ld   h, a                                        ; $4ffe: $67
	ld   l, b                                        ; $4fff: $68
	ld   l, c                                        ; $5000: $69
	ld   l, d                                        ; $5001: $6a
	add  hl, sp                                      ; $5002: $39
	ld   a, [hl-]                                    ; $5003: $3a
	dec  sp                                          ; $5004: $3b
	ld   h, b                                        ; $5005: $60
	ld   h, c                                        ; $5006: $61
	ld   h, d                                        ; $5007: $62
	ld   h, e                                        ; $5008: $63
	ld   h, h                                        ; $5009: $64
	ld   c, b                                        ; $500a: $48
	ld   c, c                                        ; $500b: $49

jr_081_500c:
	ld   c, d                                        ; $500c: $4a
	ld   c, e                                        ; $500d: $4b
	ld   c, h                                        ; $500e: $4c
	ld   c, l                                        ; $500f: $4d
	ld   c, [hl]                                     ; $5010: $4e
	ld   l, e                                        ; $5011: $6b
	ld   l, h                                        ; $5012: $6c
	ld   l, l                                        ; $5013: $6d
	ld   l, [hl]                                     ; $5014: $6e
	ld   l, a                                        ; $5015: $6f
	dec  l                                           ; $5016: $2d
	ld   l, $2f                                      ; $5017: $2e $2f
	ld   [hl], b                                     ; $5019: $70
	ld   [hl], c                                     ; $501a: $71
	ld   [hl], d                                     ; $501b: $72
	ld   h, l                                        ; $501c: $65
	ld   [hl], h                                     ; $501d: $74
	ld   d, d                                        ; $501e: $52
	ld   d, e                                        ; $501f: $53
	ld   d, h                                        ; $5020: $54
	ld   d, l                                        ; $5021: $55
	ld   d, [hl]                                     ; $5022: $56
	ld   d, a                                        ; $5023: $57
	ld   e, b                                        ; $5024: $58
	ld   [hl], b                                     ; $5025: $70
	ld   [hl], c                                     ; $5026: $71
	ld   [hl], d                                     ; $5027: $72
	ld   [hl], e                                     ; $5028: $73
	ld   [hl], h                                     ; $5029: $74
	dec  a                                           ; $502a: $3d
	ld   a, $3f                                      ; $502b: $3e $3f
	nop                                              ; $502d: $00
	ld   bc, $5902                                   ; $502e: $01 $02 $59
	ld   e, d                                        ; $5031: $5a
	ld   e, e                                        ; $5032: $5b
	ld   e, h                                        ; $5033: $5c
	ld   e, l                                        ; $5034: $5d
	ld   e, [hl]                                     ; $5035: $5e
	ld   e, a                                        ; $5036: $5f
	ld   h, b                                        ; $5037: $60
	dec  bc                                          ; $5038: $0b
	ld   [hl], l                                     ; $5039: $75
	halt                                             ; $503a: $76
	ld   [hl], a                                     ; $503b: $77
	ld   a, b                                        ; $503c: $78
	ld   a, c                                        ; $503d: $79
	ld   b, c                                        ; $503e: $41
	ld   b, d                                        ; $503f: $42
	ld   b, e                                        ; $5040: $43
	db   $10                                         ; $5041: $10
	ld   de, $1312                                   ; $5042: $11 $12 $13
	inc  d                                           ; $5045: $14
	dec  d                                           ; $5046: $15
	ld   h, c                                        ; $5047: $61
	ld   h, d                                        ; $5048: $62
	ld   h, e                                        ; $5049: $63
	ld   h, h                                        ; $504a: $64
	ld   a, [de]                                     ; $504b: $1a
	dec  de                                          ; $504c: $1b
	ld   a, d                                        ; $504d: $7a
	ld   a, e                                        ; $504e: $7b
	ld   a, h                                        ; $504f: $7c
	ld   d, l                                        ; $5050: $55
	ld   h, l                                        ; $5051: $65
	ld   b, l                                        ; $5052: $45
	ld   b, [hl]                                     ; $5053: $46
	ld   b, a                                        ; $5054: $47
	inc  bc                                          ; $5055: $03
	inc  bc                                          ; $5056: $03
	inc  bc                                          ; $5057: $03
	inc  bc                                          ; $5058: $03
	inc  bc                                          ; $5059: $03
	inc  bc                                          ; $505a: $03
	inc  bc                                          ; $505b: $03
	inc  bc                                          ; $505c: $03
	inc  bc                                          ; $505d: $03
	inc  bc                                          ; $505e: $03
	inc  bc                                          ; $505f: $03
	inc  bc                                          ; $5060: $03
	inc  bc                                          ; $5061: $03
	inc  bc                                          ; $5062: $03
	inc  bc                                          ; $5063: $03
	inc  bc                                          ; $5064: $03
	dec  bc                                          ; $5065: $0b
	dec  bc                                          ; $5066: $0b
	dec  bc                                          ; $5067: $0b
	dec  bc                                          ; $5068: $0b
	inc  bc                                          ; $5069: $03
	inc  bc                                          ; $506a: $03
	inc  bc                                          ; $506b: $03
	inc  bc                                          ; $506c: $03
	inc  bc                                          ; $506d: $03
	inc  bc                                          ; $506e: $03
	inc  bc                                          ; $506f: $03
	inc  bc                                          ; $5070: $03
	inc  bc                                          ; $5071: $03
	inc  bc                                          ; $5072: $03
	inc  bc                                          ; $5073: $03
	inc  bc                                          ; $5074: $03
	inc  bc                                          ; $5075: $03
	inc  bc                                          ; $5076: $03
	inc  bc                                          ; $5077: $03
	inc  bc                                          ; $5078: $03
	dec  bc                                          ; $5079: $0b
	dec  bc                                          ; $507a: $0b
	dec  bc                                          ; $507b: $0b
	dec  bc                                          ; $507c: $0b
	inc  bc                                          ; $507d: $03
	inc  bc                                          ; $507e: $03
	inc  bc                                          ; $507f: $03
	inc  bc                                          ; $5080: $03
	inc  bc                                          ; $5081: $03
	inc  bc                                          ; $5082: $03
	inc  bc                                          ; $5083: $03
	inc  bc                                          ; $5084: $03
	inc  bc                                          ; $5085: $03
	inc  bc                                          ; $5086: $03
	inc  bc                                          ; $5087: $03
	inc  bc                                          ; $5088: $03
	inc  bc                                          ; $5089: $03
	inc  bc                                          ; $508a: $03
	inc  bc                                          ; $508b: $03
	inc  bc                                          ; $508c: $03
	dec  bc                                          ; $508d: $0b
	dec  bc                                          ; $508e: $0b
	dec  bc                                          ; $508f: $0b
	dec  bc                                          ; $5090: $0b
	inc  bc                                          ; $5091: $03
	inc  bc                                          ; $5092: $03
	inc  bc                                          ; $5093: $03
	inc  bc                                          ; $5094: $03
	inc  bc                                          ; $5095: $03
	inc  b                                           ; $5096: $04
	inc  bc                                          ; $5097: $03
	inc  bc                                          ; $5098: $03
	inc  bc                                          ; $5099: $03
	inc  bc                                          ; $509a: $03
	inc  bc                                          ; $509b: $03
	inc  bc                                          ; $509c: $03
	inc  bc                                          ; $509d: $03
	inc  bc                                          ; $509e: $03
	inc  bc                                          ; $509f: $03
	inc  bc                                          ; $50a0: $03
	dec  bc                                          ; $50a1: $0b
	dec  bc                                          ; $50a2: $0b
	dec  bc                                          ; $50a3: $0b
	dec  bc                                          ; $50a4: $0b
	inc  bc                                          ; $50a5: $03
	inc  bc                                          ; $50a6: $03
	inc  b                                           ; $50a7: $04
	inc  b                                           ; $50a8: $04
	inc  b                                           ; $50a9: $04
	inc  b                                           ; $50aa: $04
	inc  bc                                          ; $50ab: $03
	inc  bc                                          ; $50ac: $03
	inc  bc                                          ; $50ad: $03
	inc  bc                                          ; $50ae: $03
	inc  bc                                          ; $50af: $03
	inc  bc                                          ; $50b0: $03
	inc  bc                                          ; $50b1: $03
	inc  bc                                          ; $50b2: $03
	inc  bc                                          ; $50b3: $03
	inc  bc                                          ; $50b4: $03
	dec  bc                                          ; $50b5: $0b
	dec  bc                                          ; $50b6: $0b
	dec  bc                                          ; $50b7: $0b
	dec  bc                                          ; $50b8: $0b
	inc  bc                                          ; $50b9: $03
	inc  bc                                          ; $50ba: $03
	inc  b                                           ; $50bb: $04
	inc  b                                           ; $50bc: $04
	inc  b                                           ; $50bd: $04
	inc  b                                           ; $50be: $04
	dec  bc                                          ; $50bf: $0b
	dec  b                                           ; $50c0: $05
	dec  bc                                          ; $50c1: $0b
	inc  b                                           ; $50c2: $04
	inc  c                                           ; $50c3: $0c
	inc  b                                           ; $50c4: $04
	dec  bc                                          ; $50c5: $0b
	dec  bc                                          ; $50c6: $0b
	dec  bc                                          ; $50c7: $0b
	inc  c                                           ; $50c8: $0c
	inc  c                                           ; $50c9: $0c
	inc  c                                           ; $50ca: $0c
	dec  bc                                          ; $50cb: $0b
	dec  bc                                          ; $50cc: $0b
	inc  bc                                          ; $50cd: $03
	inc  bc                                          ; $50ce: $03
	inc  b                                           ; $50cf: $04
	inc  b                                           ; $50d0: $04
	inc  b                                           ; $50d1: $04
	inc  c                                           ; $50d2: $0c
	dec  bc                                          ; $50d3: $0b
	dec  c                                           ; $50d4: $0d
	dec  bc                                          ; $50d5: $0b
	inc  c                                           ; $50d6: $0c
	inc  c                                           ; $50d7: $0c
	inc  c                                           ; $50d8: $0c
	dec  bc                                          ; $50d9: $0b
	dec  bc                                          ; $50da: $0b
	dec  bc                                          ; $50db: $0b
	inc  c                                           ; $50dc: $0c
	inc  c                                           ; $50dd: $0c
	inc  c                                           ; $50de: $0c
	dec  bc                                          ; $50df: $0b
	dec  bc                                          ; $50e0: $0b
	inc  bc                                          ; $50e1: $03
	inc  bc                                          ; $50e2: $03
	inc  b                                           ; $50e3: $04
	inc  c                                           ; $50e4: $0c
	inc  b                                           ; $50e5: $04
	inc  c                                           ; $50e6: $0c
	dec  bc                                          ; $50e7: $0b
	dec  bc                                          ; $50e8: $0b
	dec  bc                                          ; $50e9: $0b
	inc  c                                           ; $50ea: $0c
	inc  c                                           ; $50eb: $0c
	inc  c                                           ; $50ec: $0c
	dec  bc                                          ; $50ed: $0b
	dec  bc                                          ; $50ee: $0b
	dec  bc                                          ; $50ef: $0b
	inc  c                                           ; $50f0: $0c
	inc  c                                           ; $50f1: $0c
	inc  c                                           ; $50f2: $0c
	dec  bc                                          ; $50f3: $0b
	dec  bc                                          ; $50f4: $0b
	dec  bc                                          ; $50f5: $0b
	dec  bc                                          ; $50f6: $0b
	inc  c                                           ; $50f7: $0c
	dec  c                                           ; $50f8: $0d
	dec  c                                           ; $50f9: $0d
	dec  c                                           ; $50fa: $0d
	dec  c                                           ; $50fb: $0d
	dec  c                                           ; $50fc: $0d
	dec  c                                           ; $50fd: $0d
	dec  c                                           ; $50fe: $0d
	dec  c                                           ; $50ff: $0d
	dec  c                                           ; $5100: $0d
	dec  c                                           ; $5101: $0d
	dec  bc                                          ; $5102: $0b
	dec  bc                                          ; $5103: $0b
	dec  c                                           ; $5104: $0d
	dec  c                                           ; $5105: $0d
	dec  c                                           ; $5106: $0d
	dec  c                                           ; $5107: $0d
	dec  bc                                          ; $5108: $0b
	dec  c                                           ; $5109: $0d
	dec  c                                           ; $510a: $0d
	dec  c                                           ; $510b: $0d
	dec  c                                           ; $510c: $0d
	dec  c                                           ; $510d: $0d
	dec  c                                           ; $510e: $0d
	dec  c                                           ; $510f: $0d
	dec  c                                           ; $5110: $0d
	dec  c                                           ; $5111: $0d
	dec  c                                           ; $5112: $0d
	dec  c                                           ; $5113: $0d
	dec  c                                           ; $5114: $0d
	dec  c                                           ; $5115: $0d
	dec  bc                                          ; $5116: $0b
	dec  bc                                          ; $5117: $0b
	dec  b                                           ; $5118: $05
	dec  b                                           ; $5119: $05
	dec  c                                           ; $511a: $0d
	dec  c                                           ; $511b: $0d
	dec  c                                           ; $511c: $0d
	nop                                              ; $511d: $00
	ld   bc, $0302                                   ; $511e: $01 $02 $03
	inc  b                                           ; $5121: $04
	dec  b                                           ; $5122: $05
	ld   b, $07                                      ; $5123: $06 $07
	ld   [$0a09], sp                                 ; $5125: $08 $09 $0a
	dec  bc                                          ; $5128: $0b
	inc  c                                           ; $5129: $0c
	dec  c                                           ; $512a: $0d
	ld   c, $0f                                      ; $512b: $0e $0f
	jr   nz, jr_081_5150                             ; $512d: $20 $21

	ld   [hl+], a                                    ; $512f: $22
	inc  hl                                          ; $5130: $23
	db   $10                                         ; $5131: $10
	ld   de, $1312                                   ; $5132: $11 $12 $13
	inc  d                                           ; $5135: $14
	dec  d                                           ; $5136: $15
	ld   d, $17                                      ; $5137: $16 $17
	jr   @+$1b                                       ; $5139: $18 $19

	ld   a, [de]                                     ; $513b: $1a
	dec  de                                          ; $513c: $1b
	inc  e                                           ; $513d: $1c
	dec  e                                           ; $513e: $1d
	ld   e, $1f                                      ; $513f: $1e $1f
	jr   nc, jr_081_5174                             ; $5141: $30 $31

	ld   [hl-], a                                    ; $5143: $32
	inc  sp                                          ; $5144: $33
	jr   nz, @+$23                                   ; $5145: $20 $21

	ld   [hl+], a                                    ; $5147: $22
	inc  hl                                          ; $5148: $23
	inc  h                                           ; $5149: $24
	dec  h                                           ; $514a: $25
	ld   h, $27                                      ; $514b: $26 $27
	jr   z, jr_081_5178                              ; $514d: $28 $29

	ld   a, [hl+]                                    ; $514f: $2a

jr_081_5150:
	dec  hl                                          ; $5150: $2b
	inc  l                                           ; $5151: $2c
	dec  l                                           ; $5152: $2d
	ld   l, $2f                                      ; $5153: $2e $2f
	inc  h                                           ; $5155: $24
	dec  h                                           ; $5156: $25
	ld   h, $27                                      ; $5157: $26 $27
	jr   nc, jr_081_518c                             ; $5159: $30 $31

	ld   [hl-], a                                    ; $515b: $32
	inc  sp                                          ; $515c: $33
	inc  [hl]                                        ; $515d: $34
	dec  [hl]                                        ; $515e: $35
	ld   [hl], $37                                   ; $515f: $36 $37
	jr   c, jr_081_519c                              ; $5161: $38 $39

	ld   a, [hl-]                                    ; $5163: $3a
	dec  sp                                          ; $5164: $3b
	inc  a                                           ; $5165: $3c
	dec  a                                           ; $5166: $3d
	ld   a, $3f                                      ; $5167: $3e $3f
	inc  [hl]                                        ; $5169: $34
	dec  [hl]                                        ; $516a: $35
	ld   [hl], $37                                   ; $516b: $36 $37
	ld   b, b                                        ; $516d: $40
	ld   b, c                                        ; $516e: $41
	ld   b, d                                        ; $516f: $42
	ld   b, e                                        ; $5170: $43
	ld   b, h                                        ; $5171: $44
	ld   b, l                                        ; $5172: $45
	ld   b, [hl]                                     ; $5173: $46

jr_081_5174:
	ld   b, a                                        ; $5174: $47
	ld   c, b                                        ; $5175: $48
	ld   c, c                                        ; $5176: $49
	ld   c, d                                        ; $5177: $4a

jr_081_5178:
	ld   c, e                                        ; $5178: $4b
	ld   c, h                                        ; $5179: $4c
	ld   c, l                                        ; $517a: $4d
	ld   c, [hl]                                     ; $517b: $4e
	ld   c, a                                        ; $517c: $4f
	jr   z, @+$2b                                    ; $517d: $28 $29

	ld   a, [hl+]                                    ; $517f: $2a
	dec  hl                                          ; $5180: $2b
	ld   d, b                                        ; $5181: $50
	ld   d, c                                        ; $5182: $51
	ld   d, d                                        ; $5183: $52
	ld   d, e                                        ; $5184: $53
	ld   d, h                                        ; $5185: $54
	ld   b, l                                        ; $5186: $45
	ld   d, [hl]                                     ; $5187: $56
	ld   d, a                                        ; $5188: $57
	ld   e, b                                        ; $5189: $58
	ld   e, c                                        ; $518a: $59
	ld   e, d                                        ; $518b: $5a

jr_081_518c:
	ld   e, e                                        ; $518c: $5b
	ld   e, h                                        ; $518d: $5c
	ld   e, l                                        ; $518e: $5d
	ld   e, [hl]                                     ; $518f: $5e
	ld   e, a                                        ; $5190: $5f
	jr   c, @+$3b                                    ; $5191: $38 $39

	ld   a, [hl-]                                    ; $5193: $3a
	dec  sp                                          ; $5194: $3b
	ld   h, b                                        ; $5195: $60
	ld   h, c                                        ; $5196: $61
	ld   h, d                                        ; $5197: $62
	ld   h, e                                        ; $5198: $63
	ld   h, h                                        ; $5199: $64
	ld   b, l                                        ; $519a: $45
	ld   h, [hl]                                     ; $519b: $66

jr_081_519c:
	ld   h, a                                        ; $519c: $67
	ld   l, b                                        ; $519d: $68
	ld   l, c                                        ; $519e: $69
	ld   l, d                                        ; $519f: $6a
	ld   l, e                                        ; $51a0: $6b
	ld   l, h                                        ; $51a1: $6c
	ld   l, l                                        ; $51a2: $6d
	ld   l, [hl]                                     ; $51a3: $6e
	ld   l, a                                        ; $51a4: $6f
	inc  l                                           ; $51a5: $2c
	dec  l                                           ; $51a6: $2d
	ld   l, $2f                                      ; $51a7: $2e $2f
	ld   [hl], b                                     ; $51a9: $70
	ld   [hl], c                                     ; $51aa: $71
	ld   [hl], d                                     ; $51ab: $72
	ld   [hl], e                                     ; $51ac: $73
	ld   [hl], h                                     ; $51ad: $74
	ld   [hl], l                                     ; $51ae: $75
	halt                                             ; $51af: $76
	ld   [hl], a                                     ; $51b0: $77
	ld   a, b                                        ; $51b1: $78
	ld   a, c                                        ; $51b2: $79
	ld   a, d                                        ; $51b3: $7a
	ld   a, e                                        ; $51b4: $7b
	ld   a, h                                        ; $51b5: $7c
	ld   a, l                                        ; $51b6: $7d
	ld   a, [hl]                                     ; $51b7: $7e
	ld   a, a                                        ; $51b8: $7f
	inc  a                                           ; $51b9: $3c
	dec  a                                           ; $51ba: $3d
	ld   a, $3f                                      ; $51bb: $3e $3f
	nop                                              ; $51bd: $00
	ld   bc, $0302                                   ; $51be: $01 $02 $03
	inc  b                                           ; $51c1: $04
	dec  b                                           ; $51c2: $05
	ld   b, $07                                      ; $51c3: $06 $07
	ld   [$0a09], sp                                 ; $51c5: $08 $09 $0a
	dec  bc                                          ; $51c8: $0b
	inc  c                                           ; $51c9: $0c
	dec  c                                           ; $51ca: $0d
	ld   c, $0f                                      ; $51cb: $0e $0f
	ld   b, b                                        ; $51cd: $40
	ld   b, c                                        ; $51ce: $41
	ld   b, d                                        ; $51cf: $42
	ld   b, e                                        ; $51d0: $43
	db   $10                                         ; $51d1: $10
	ld   de, $1312                                   ; $51d2: $11 $12 $13
	inc  d                                           ; $51d5: $14
	dec  d                                           ; $51d6: $15
	ld   d, $17                                      ; $51d7: $16 $17
	jr   jr_081_51f4                                 ; $51d9: $18 $19

	ld   a, [de]                                     ; $51db: $1a
	dec  de                                          ; $51dc: $1b
	inc  e                                           ; $51dd: $1c
	dec  e                                           ; $51de: $1d
	ld   e, $1f                                      ; $51df: $1e $1f
	ld   b, h                                        ; $51e1: $44
	ld   b, l                                        ; $51e2: $45
	ld   d, l                                        ; $51e3: $55
	ld   h, l                                        ; $51e4: $65
	inc  bc                                          ; $51e5: $03
	inc  bc                                          ; $51e6: $03
	inc  bc                                          ; $51e7: $03
	inc  bc                                          ; $51e8: $03
	inc  bc                                          ; $51e9: $03
	inc  bc                                          ; $51ea: $03
	inc  bc                                          ; $51eb: $03
	inc  bc                                          ; $51ec: $03
	inc  bc                                          ; $51ed: $03
	inc  bc                                          ; $51ee: $03
	inc  bc                                          ; $51ef: $03
	inc  bc                                          ; $51f0: $03
	inc  bc                                          ; $51f1: $03
	inc  bc                                          ; $51f2: $03
	inc  bc                                          ; $51f3: $03

jr_081_51f4:
	inc  bc                                          ; $51f4: $03
	dec  bc                                          ; $51f5: $0b
	dec  bc                                          ; $51f6: $0b
	dec  bc                                          ; $51f7: $0b
	dec  bc                                          ; $51f8: $0b
	inc  bc                                          ; $51f9: $03
	inc  bc                                          ; $51fa: $03
	inc  bc                                          ; $51fb: $03
	inc  bc                                          ; $51fc: $03
	inc  bc                                          ; $51fd: $03
	inc  bc                                          ; $51fe: $03
	inc  bc                                          ; $51ff: $03
	inc  bc                                          ; $5200: $03
	inc  bc                                          ; $5201: $03
	inc  bc                                          ; $5202: $03
	inc  bc                                          ; $5203: $03
	inc  bc                                          ; $5204: $03
	inc  bc                                          ; $5205: $03
	inc  bc                                          ; $5206: $03
	inc  bc                                          ; $5207: $03
	inc  bc                                          ; $5208: $03
	dec  bc                                          ; $5209: $0b
	dec  bc                                          ; $520a: $0b
	dec  bc                                          ; $520b: $0b
	dec  bc                                          ; $520c: $0b
	inc  bc                                          ; $520d: $03
	inc  bc                                          ; $520e: $03
	inc  bc                                          ; $520f: $03
	inc  bc                                          ; $5210: $03
	inc  bc                                          ; $5211: $03
	inc  bc                                          ; $5212: $03
	inc  bc                                          ; $5213: $03
	inc  bc                                          ; $5214: $03
	inc  bc                                          ; $5215: $03
	inc  bc                                          ; $5216: $03
	inc  bc                                          ; $5217: $03
	inc  bc                                          ; $5218: $03
	inc  bc                                          ; $5219: $03
	inc  bc                                          ; $521a: $03
	inc  bc                                          ; $521b: $03
	inc  bc                                          ; $521c: $03
	dec  bc                                          ; $521d: $0b
	dec  bc                                          ; $521e: $0b
	dec  bc                                          ; $521f: $0b
	dec  bc                                          ; $5220: $0b
	inc  bc                                          ; $5221: $03
	inc  bc                                          ; $5222: $03
	inc  bc                                          ; $5223: $03
	inc  bc                                          ; $5224: $03
	inc  bc                                          ; $5225: $03
	inc  b                                           ; $5226: $04
	inc  bc                                          ; $5227: $03
	inc  bc                                          ; $5228: $03
	inc  bc                                          ; $5229: $03
	inc  bc                                          ; $522a: $03
	inc  bc                                          ; $522b: $03
	inc  bc                                          ; $522c: $03
	inc  bc                                          ; $522d: $03
	inc  bc                                          ; $522e: $03
	inc  bc                                          ; $522f: $03
	inc  bc                                          ; $5230: $03
	dec  bc                                          ; $5231: $0b
	dec  bc                                          ; $5232: $0b
	dec  bc                                          ; $5233: $0b
	dec  bc                                          ; $5234: $0b
	inc  bc                                          ; $5235: $03
	inc  bc                                          ; $5236: $03
	inc  b                                           ; $5237: $04
	inc  b                                           ; $5238: $04
	inc  b                                           ; $5239: $04
	inc  b                                           ; $523a: $04
	inc  bc                                          ; $523b: $03
	inc  bc                                          ; $523c: $03
	inc  bc                                          ; $523d: $03
	inc  bc                                          ; $523e: $03
	inc  bc                                          ; $523f: $03
	inc  bc                                          ; $5240: $03
	inc  bc                                          ; $5241: $03
	inc  bc                                          ; $5242: $03
	inc  bc                                          ; $5243: $03
	inc  bc                                          ; $5244: $03
	dec  bc                                          ; $5245: $0b
	dec  bc                                          ; $5246: $0b
	dec  bc                                          ; $5247: $0b
	dec  bc                                          ; $5248: $0b
	inc  bc                                          ; $5249: $03
	inc  bc                                          ; $524a: $03
	inc  b                                           ; $524b: $04
	inc  b                                           ; $524c: $04
	inc  b                                           ; $524d: $04
	inc  b                                           ; $524e: $04
	inc  bc                                          ; $524f: $03
	dec  b                                           ; $5250: $05
	inc  b                                           ; $5251: $04
	inc  b                                           ; $5252: $04
	inc  b                                           ; $5253: $04
	inc  b                                           ; $5254: $04
	inc  bc                                          ; $5255: $03
	dec  b                                           ; $5256: $05
	inc  b                                           ; $5257: $04
	inc  b                                           ; $5258: $04
	inc  c                                           ; $5259: $0c
	inc  c                                           ; $525a: $0c
	dec  bc                                          ; $525b: $0b
	dec  bc                                          ; $525c: $0b
	inc  bc                                          ; $525d: $03
	inc  bc                                          ; $525e: $03
	inc  b                                           ; $525f: $04
	inc  b                                           ; $5260: $04
	inc  b                                           ; $5261: $04
	inc  b                                           ; $5262: $04
	inc  bc                                          ; $5263: $03
	dec  b                                           ; $5264: $05
	inc  b                                           ; $5265: $04
	inc  b                                           ; $5266: $04
	inc  b                                           ; $5267: $04
	inc  b                                           ; $5268: $04
	inc  bc                                          ; $5269: $03
	dec  b                                           ; $526a: $05
	inc  b                                           ; $526b: $04
	inc  b                                           ; $526c: $04
	inc  c                                           ; $526d: $0c
	inc  c                                           ; $526e: $0c
	dec  bc                                          ; $526f: $0b
	dec  bc                                          ; $5270: $0b
	inc  bc                                          ; $5271: $03
	inc  bc                                          ; $5272: $03
	inc  b                                           ; $5273: $04
	inc  b                                           ; $5274: $04
	inc  b                                           ; $5275: $04
	inc  b                                           ; $5276: $04
	inc  bc                                          ; $5277: $03
	inc  b                                           ; $5278: $04
	inc  b                                           ; $5279: $04
	inc  b                                           ; $527a: $04
	inc  b                                           ; $527b: $04
	inc  b                                           ; $527c: $04
	inc  b                                           ; $527d: $04
	inc  b                                           ; $527e: $04
	inc  b                                           ; $527f: $04
	inc  b                                           ; $5280: $04
	inc  c                                           ; $5281: $0c
	inc  c                                           ; $5282: $0c
	dec  bc                                          ; $5283: $0b
	dec  bc                                          ; $5284: $0b
	dec  bc                                          ; $5285: $0b
	dec  bc                                          ; $5286: $0b
	inc  c                                           ; $5287: $0c
	dec  c                                           ; $5288: $0d
	dec  c                                           ; $5289: $0d
	dec  c                                           ; $528a: $0d
	dec  c                                           ; $528b: $0d
	dec  c                                           ; $528c: $0d
	dec  c                                           ; $528d: $0d
	dec  c                                           ; $528e: $0d
	dec  c                                           ; $528f: $0d
	dec  c                                           ; $5290: $0d
	dec  c                                           ; $5291: $0d
	dec  c                                           ; $5292: $0d
	dec  c                                           ; $5293: $0d
	dec  c                                           ; $5294: $0d
	dec  c                                           ; $5295: $0d
	dec  c                                           ; $5296: $0d
	dec  c                                           ; $5297: $0d
	dec  bc                                          ; $5298: $0b
	dec  c                                           ; $5299: $0d
	dec  c                                           ; $529a: $0d
	dec  c                                           ; $529b: $0d
	dec  c                                           ; $529c: $0d
	dec  c                                           ; $529d: $0d
	dec  c                                           ; $529e: $0d
	dec  c                                           ; $529f: $0d
	dec  c                                           ; $52a0: $0d
	dec  c                                           ; $52a1: $0d
	dec  c                                           ; $52a2: $0d
	dec  c                                           ; $52a3: $0d
	dec  c                                           ; $52a4: $0d
	dec  c                                           ; $52a5: $0d
	dec  c                                           ; $52a6: $0d
	dec  c                                           ; $52a7: $0d
	dec  c                                           ; $52a8: $0d
	dec  c                                           ; $52a9: $0d
	dec  c                                           ; $52aa: $0d
	dec  b                                           ; $52ab: $05
	dec  b                                           ; $52ac: $05
	nop                                              ; $52ad: $00
	ld   bc, $0302                                   ; $52ae: $01 $02 $03
	inc  bc                                          ; $52b1: $03
	dec  b                                           ; $52b2: $05
	ld   b, $07                                      ; $52b3: $06 $07
	ld   [$0a09], sp                                 ; $52b5: $08 $09 $0a
	dec  bc                                          ; $52b8: $0b
	inc  c                                           ; $52b9: $0c
	dec  c                                           ; $52ba: $0d
	ld   c, $0f                                      ; $52bb: $0e $0f
	jr   nz, jr_081_52e0                             ; $52bd: $20 $21

	ld   [hl+], a                                    ; $52bf: $22
	inc  hl                                          ; $52c0: $23
	db   $10                                         ; $52c1: $10
	ld   de, $1312                                   ; $52c2: $11 $12 $13
	inc  de                                          ; $52c5: $13
	dec  d                                           ; $52c6: $15
	ld   d, $17                                      ; $52c7: $16 $17
	jr   @+$1b                                       ; $52c9: $18 $19

	ld   a, [de]                                     ; $52cb: $1a
	dec  de                                          ; $52cc: $1b
	inc  e                                           ; $52cd: $1c
	dec  e                                           ; $52ce: $1d
	ld   e, $1f                                      ; $52cf: $1e $1f
	jr   nc, jr_081_5304                             ; $52d1: $30 $31

	ld   [hl-], a                                    ; $52d3: $32
	inc  sp                                          ; $52d4: $33
	jr   nz, @+$23                                   ; $52d5: $20 $21

	ld   [hl+], a                                    ; $52d7: $22
	inc  hl                                          ; $52d8: $23
	inc  h                                           ; $52d9: $24
	dec  h                                           ; $52da: $25
	ld   h, $27                                      ; $52db: $26 $27
	jr   z, jr_081_5308                              ; $52dd: $28 $29

	ld   a, [hl+]                                    ; $52df: $2a

jr_081_52e0:
	dec  hl                                          ; $52e0: $2b
	inc  l                                           ; $52e1: $2c
	dec  l                                           ; $52e2: $2d
	ld   l, $2f                                      ; $52e3: $2e $2f
	inc  h                                           ; $52e5: $24
	dec  h                                           ; $52e6: $25
	ld   h, $27                                      ; $52e7: $26 $27
	jr   nc, jr_081_531c                             ; $52e9: $30 $31

	ld   [hl-], a                                    ; $52eb: $32
	inc  sp                                          ; $52ec: $33
	inc  [hl]                                        ; $52ed: $34
	dec  [hl]                                        ; $52ee: $35
	ld   [hl], $37                                   ; $52ef: $36 $37
	jr   c, jr_081_532c                              ; $52f1: $38 $39

	ld   a, [hl-]                                    ; $52f3: $3a
	dec  sp                                          ; $52f4: $3b
	inc  a                                           ; $52f5: $3c
	dec  a                                           ; $52f6: $3d
	ld   a, $3f                                      ; $52f7: $3e $3f
	inc  [hl]                                        ; $52f9: $34
	dec  [hl]                                        ; $52fa: $35
	ld   [hl], $37                                   ; $52fb: $36 $37
	ld   b, b                                        ; $52fd: $40
	ld   b, c                                        ; $52fe: $41
	ld   b, d                                        ; $52ff: $42
	ld   b, e                                        ; $5300: $43
	ld   b, h                                        ; $5301: $44
	ld   b, l                                        ; $5302: $45
	ld   b, [hl]                                     ; $5303: $46

jr_081_5304:
	ld   b, a                                        ; $5304: $47
	ld   c, b                                        ; $5305: $48
	ld   c, c                                        ; $5306: $49
	ld   c, d                                        ; $5307: $4a

jr_081_5308:
	ld   c, e                                        ; $5308: $4b
	ld   c, h                                        ; $5309: $4c
	ld   c, l                                        ; $530a: $4d
	ld   c, [hl]                                     ; $530b: $4e
	ld   c, a                                        ; $530c: $4f
	jr   z, @+$2b                                    ; $530d: $28 $29

	ld   a, [hl+]                                    ; $530f: $2a
	dec  hl                                          ; $5310: $2b
	ld   d, b                                        ; $5311: $50
	ld   d, c                                        ; $5312: $51
	ld   d, d                                        ; $5313: $52
	ld   d, e                                        ; $5314: $53
	ld   d, h                                        ; $5315: $54
	ld   d, l                                        ; $5316: $55
	ld   d, [hl]                                     ; $5317: $56
	ld   d, a                                        ; $5318: $57
	ld   e, b                                        ; $5319: $58
	ld   e, c                                        ; $531a: $59
	ld   e, d                                        ; $531b: $5a

jr_081_531c:
	ld   e, e                                        ; $531c: $5b
	ld   e, h                                        ; $531d: $5c
	ld   e, l                                        ; $531e: $5d
	ld   e, [hl]                                     ; $531f: $5e
	ld   e, a                                        ; $5320: $5f
	jr   c, @+$3b                                    ; $5321: $38 $39

	ld   a, [hl-]                                    ; $5323: $3a
	dec  sp                                          ; $5324: $3b
	ld   h, b                                        ; $5325: $60
	ld   h, c                                        ; $5326: $61
	ld   h, d                                        ; $5327: $62
	ld   h, e                                        ; $5328: $63
	ld   h, h                                        ; $5329: $64
	ld   h, l                                        ; $532a: $65
	ld   h, [hl]                                     ; $532b: $66

jr_081_532c:
	ld   h, a                                        ; $532c: $67
	ld   l, b                                        ; $532d: $68
	ld   l, c                                        ; $532e: $69
	ld   l, d                                        ; $532f: $6a
	ld   l, e                                        ; $5330: $6b
	ld   l, h                                        ; $5331: $6c
	ld   l, l                                        ; $5332: $6d
	ld   l, [hl]                                     ; $5333: $6e
	ld   l, a                                        ; $5334: $6f
	inc  l                                           ; $5335: $2c
	dec  l                                           ; $5336: $2d
	ld   l, $2f                                      ; $5337: $2e $2f
	ld   [hl], b                                     ; $5339: $70
	ld   [hl], c                                     ; $533a: $71
	ld   [hl], d                                     ; $533b: $72
	ld   [hl], e                                     ; $533c: $73
	ld   [hl], h                                     ; $533d: $74
	ld   [hl], l                                     ; $533e: $75
	halt                                             ; $533f: $76
	ld   [hl], a                                     ; $5340: $77
	ld   a, b                                        ; $5341: $78
	ld   a, c                                        ; $5342: $79
	ld   a, d                                        ; $5343: $7a
	ld   a, e                                        ; $5344: $7b
	ld   a, h                                        ; $5345: $7c
	ld   a, l                                        ; $5346: $7d
	ld   a, [hl]                                     ; $5347: $7e
	ld   a, a                                        ; $5348: $7f
	inc  a                                           ; $5349: $3c
	dec  a                                           ; $534a: $3d
	ld   a, $3f                                      ; $534b: $3e $3f
	nop                                              ; $534d: $00
	ld   bc, $1102                                   ; $534e: $01 $02 $11
	inc  b                                           ; $5351: $04
	dec  b                                           ; $5352: $05
	ld   b, $07                                      ; $5353: $06 $07
	ld   [$0a09], sp                                 ; $5355: $08 $09 $0a
	dec  bc                                          ; $5358: $0b
	inc  c                                           ; $5359: $0c
	dec  c                                           ; $535a: $0d
	ld   c, $0f                                      ; $535b: $0e $0f
	ld   b, b                                        ; $535d: $40
	ld   b, c                                        ; $535e: $41
	ld   b, d                                        ; $535f: $42
	ld   b, e                                        ; $5360: $43
	db   $10                                         ; $5361: $10
	ld   de, $1312                                   ; $5362: $11 $12 $13
	inc  d                                           ; $5365: $14
	dec  d                                           ; $5366: $15
	ld   d, $17                                      ; $5367: $16 $17
	jr   jr_081_5384                                 ; $5369: $18 $19

	ld   a, [de]                                     ; $536b: $1a
	dec  de                                          ; $536c: $1b
	inc  e                                           ; $536d: $1c
	dec  e                                           ; $536e: $1d
	ld   e, $1f                                      ; $536f: $1e $1f
	ld   b, h                                        ; $5371: $44
	inc  b                                           ; $5372: $04
	inc  d                                           ; $5373: $14
	inc  bc                                          ; $5374: $03
	inc  bc                                          ; $5375: $03
	inc  bc                                          ; $5376: $03
	inc  bc                                          ; $5377: $03
	inc  bc                                          ; $5378: $03
	inc  bc                                          ; $5379: $03
	inc  bc                                          ; $537a: $03
	inc  bc                                          ; $537b: $03
	inc  bc                                          ; $537c: $03
	inc  bc                                          ; $537d: $03
	inc  bc                                          ; $537e: $03
	inc  bc                                          ; $537f: $03
	inc  bc                                          ; $5380: $03
	inc  bc                                          ; $5381: $03
	inc  bc                                          ; $5382: $03
	inc  bc                                          ; $5383: $03

jr_081_5384:
	inc  bc                                          ; $5384: $03
	dec  bc                                          ; $5385: $0b
	dec  bc                                          ; $5386: $0b
	dec  bc                                          ; $5387: $0b
	dec  bc                                          ; $5388: $0b
	inc  bc                                          ; $5389: $03
	inc  bc                                          ; $538a: $03
	inc  bc                                          ; $538b: $03
	inc  bc                                          ; $538c: $03
	inc  bc                                          ; $538d: $03
	inc  bc                                          ; $538e: $03
	inc  bc                                          ; $538f: $03
	inc  bc                                          ; $5390: $03
	inc  bc                                          ; $5391: $03
	inc  bc                                          ; $5392: $03
	inc  bc                                          ; $5393: $03
	inc  bc                                          ; $5394: $03
	inc  bc                                          ; $5395: $03
	inc  bc                                          ; $5396: $03
	inc  bc                                          ; $5397: $03
	inc  bc                                          ; $5398: $03
	dec  bc                                          ; $5399: $0b
	dec  bc                                          ; $539a: $0b
	dec  bc                                          ; $539b: $0b
	dec  bc                                          ; $539c: $0b
	inc  bc                                          ; $539d: $03
	inc  bc                                          ; $539e: $03
	inc  bc                                          ; $539f: $03
	inc  bc                                          ; $53a0: $03
	inc  bc                                          ; $53a1: $03
	inc  bc                                          ; $53a2: $03
	inc  bc                                          ; $53a3: $03
	inc  bc                                          ; $53a4: $03
	inc  bc                                          ; $53a5: $03
	inc  bc                                          ; $53a6: $03
	inc  bc                                          ; $53a7: $03
	inc  bc                                          ; $53a8: $03
	inc  bc                                          ; $53a9: $03
	inc  bc                                          ; $53aa: $03
	inc  bc                                          ; $53ab: $03
	inc  bc                                          ; $53ac: $03
	dec  bc                                          ; $53ad: $0b
	dec  bc                                          ; $53ae: $0b
	dec  bc                                          ; $53af: $0b
	dec  bc                                          ; $53b0: $0b
	inc  bc                                          ; $53b1: $03
	inc  bc                                          ; $53b2: $03
	inc  bc                                          ; $53b3: $03
	inc  bc                                          ; $53b4: $03
	inc  bc                                          ; $53b5: $03
	inc  bc                                          ; $53b6: $03
	inc  bc                                          ; $53b7: $03
	inc  bc                                          ; $53b8: $03
	inc  bc                                          ; $53b9: $03
	inc  bc                                          ; $53ba: $03
	inc  bc                                          ; $53bb: $03
	inc  bc                                          ; $53bc: $03
	inc  bc                                          ; $53bd: $03
	inc  bc                                          ; $53be: $03
	inc  bc                                          ; $53bf: $03
	inc  bc                                          ; $53c0: $03
	dec  bc                                          ; $53c1: $0b
	dec  bc                                          ; $53c2: $0b
	dec  bc                                          ; $53c3: $0b
	dec  bc                                          ; $53c4: $0b
	inc  bc                                          ; $53c5: $03
	inc  bc                                          ; $53c6: $03
	inc  bc                                          ; $53c7: $03
	inc  bc                                          ; $53c8: $03
	inc  bc                                          ; $53c9: $03
	inc  bc                                          ; $53ca: $03
	inc  bc                                          ; $53cb: $03
	inc  bc                                          ; $53cc: $03
	dec  b                                           ; $53cd: $05
	dec  b                                           ; $53ce: $05
	dec  b                                           ; $53cf: $05
	dec  b                                           ; $53d0: $05
	dec  b                                           ; $53d1: $05
	dec  b                                           ; $53d2: $05
	inc  bc                                          ; $53d3: $03
	inc  bc                                          ; $53d4: $03
	dec  bc                                          ; $53d5: $0b
	dec  c                                           ; $53d6: $0d
	dec  c                                           ; $53d7: $0d
	dec  bc                                          ; $53d8: $0b
	inc  bc                                          ; $53d9: $03
	inc  bc                                          ; $53da: $03
	inc  bc                                          ; $53db: $03
	inc  bc                                          ; $53dc: $03
	inc  bc                                          ; $53dd: $03
	inc  b                                           ; $53de: $04
	inc  bc                                          ; $53df: $03
	inc  bc                                          ; $53e0: $03
	dec  b                                           ; $53e1: $05
	dec  b                                           ; $53e2: $05
	dec  b                                           ; $53e3: $05
	dec  b                                           ; $53e4: $05
	dec  b                                           ; $53e5: $05
	dec  b                                           ; $53e6: $05
	inc  bc                                          ; $53e7: $03
	inc  bc                                          ; $53e8: $03
	dec  bc                                          ; $53e9: $0b
	dec  c                                           ; $53ea: $0d
	dec  c                                           ; $53eb: $0d
	dec  bc                                          ; $53ec: $0b
	inc  bc                                          ; $53ed: $03
	inc  b                                           ; $53ee: $04
	inc  bc                                          ; $53ef: $03
	inc  bc                                          ; $53f0: $03
	inc  bc                                          ; $53f1: $03
	inc  b                                           ; $53f2: $04
	inc  b                                           ; $53f3: $04
	inc  b                                           ; $53f4: $04
	dec  b                                           ; $53f5: $05
	dec  b                                           ; $53f6: $05
	dec  b                                           ; $53f7: $05
	dec  b                                           ; $53f8: $05
	dec  b                                           ; $53f9: $05
	dec  b                                           ; $53fa: $05
	inc  b                                           ; $53fb: $04
	inc  b                                           ; $53fc: $04
	inc  c                                           ; $53fd: $0c
	dec  c                                           ; $53fe: $0d
	dec  c                                           ; $53ff: $0d
	dec  bc                                          ; $5400: $0b
	dec  b                                           ; $5401: $05
	dec  b                                           ; $5402: $05
	inc  bc                                          ; $5403: $03
	inc  bc                                          ; $5404: $03
	inc  bc                                          ; $5405: $03
	inc  b                                           ; $5406: $04
	inc  b                                           ; $5407: $04
	inc  b                                           ; $5408: $04
	inc  b                                           ; $5409: $04
	inc  b                                           ; $540a: $04
	inc  b                                           ; $540b: $04
	inc  b                                           ; $540c: $04
	inc  b                                           ; $540d: $04
	inc  b                                           ; $540e: $04
	inc  b                                           ; $540f: $04
	inc  b                                           ; $5410: $04
	inc  c                                           ; $5411: $0c
	dec  c                                           ; $5412: $0d
	dec  c                                           ; $5413: $0d
	dec  c                                           ; $5414: $0d
	dec  c                                           ; $5415: $0d
	dec  c                                           ; $5416: $0d
	dec  c                                           ; $5417: $0d
	dec  c                                           ; $5418: $0d
	dec  c                                           ; $5419: $0d
	dec  c                                           ; $541a: $0d
	dec  c                                           ; $541b: $0d
	inc  c                                           ; $541c: $0c
	inc  c                                           ; $541d: $0c
	inc  c                                           ; $541e: $0c
	inc  c                                           ; $541f: $0c
	inc  c                                           ; $5420: $0c
	inc  c                                           ; $5421: $0c
	inc  c                                           ; $5422: $0c
	inc  c                                           ; $5423: $0c
	inc  c                                           ; $5424: $0c
	dec  c                                           ; $5425: $0d
	dec  c                                           ; $5426: $0d
	dec  c                                           ; $5427: $0d
	dec  c                                           ; $5428: $0d
	dec  c                                           ; $5429: $0d
	dec  c                                           ; $542a: $0d
	dec  c                                           ; $542b: $0d
	dec  c                                           ; $542c: $0d
	dec  c                                           ; $542d: $0d
	dec  c                                           ; $542e: $0d
	dec  c                                           ; $542f: $0d
	dec  c                                           ; $5430: $0d
	dec  c                                           ; $5431: $0d
	dec  c                                           ; $5432: $0d
	dec  c                                           ; $5433: $0d
	dec  c                                           ; $5434: $0d
	dec  c                                           ; $5435: $0d
	dec  c                                           ; $5436: $0d
	dec  c                                           ; $5437: $0d
	dec  c                                           ; $5438: $0d
	dec  c                                           ; $5439: $0d
	dec  b                                           ; $543a: $05
	dec  b                                           ; $543b: $05
	dec  c                                           ; $543c: $0d
	nop                                              ; $543d: $00
	ld   bc, $0302                                   ; $543e: $01 $02 $03
	inc  bc                                          ; $5441: $03
	dec  b                                           ; $5442: $05
	ld   b, $07                                      ; $5443: $06 $07
	ld   [$0a09], sp                                 ; $5445: $08 $09 $0a
	dec  bc                                          ; $5448: $0b
	inc  c                                           ; $5449: $0c
	dec  c                                           ; $544a: $0d
	ld   c, $0f                                      ; $544b: $0e $0f
	jr   nz, jr_081_5470                             ; $544d: $20 $21

	ld   [hl+], a                                    ; $544f: $22
	inc  hl                                          ; $5450: $23
	db   $10                                         ; $5451: $10
	ld   de, $1312                                   ; $5452: $11 $12 $13
	inc  de                                          ; $5455: $13
	dec  d                                           ; $5456: $15
	ld   d, $17                                      ; $5457: $16 $17
	jr   @+$1b                                       ; $5459: $18 $19

	ld   a, [de]                                     ; $545b: $1a
	dec  de                                          ; $545c: $1b
	inc  e                                           ; $545d: $1c
	dec  e                                           ; $545e: $1d
	ld   e, $1f                                      ; $545f: $1e $1f
	jr   nc, jr_081_5494                             ; $5461: $30 $31

	ld   [hl-], a                                    ; $5463: $32
	inc  sp                                          ; $5464: $33
	jr   nz, @+$23                                   ; $5465: $20 $21

	ld   [hl+], a                                    ; $5467: $22
	inc  hl                                          ; $5468: $23
	inc  h                                           ; $5469: $24
	dec  h                                           ; $546a: $25
	ld   h, $27                                      ; $546b: $26 $27
	jr   z, jr_081_5498                              ; $546d: $28 $29

	ld   a, [hl+]                                    ; $546f: $2a

jr_081_5470:
	dec  hl                                          ; $5470: $2b
	inc  l                                           ; $5471: $2c
	dec  l                                           ; $5472: $2d
	ld   l, $2f                                      ; $5473: $2e $2f
	inc  h                                           ; $5475: $24
	dec  h                                           ; $5476: $25
	ld   h, $27                                      ; $5477: $26 $27
	jr   nc, jr_081_54ac                             ; $5479: $30 $31

	ld   [hl-], a                                    ; $547b: $32
	inc  sp                                          ; $547c: $33
	inc  [hl]                                        ; $547d: $34
	dec  [hl]                                        ; $547e: $35
	ld   [hl], $37                                   ; $547f: $36 $37
	jr   c, jr_081_54bc                              ; $5481: $38 $39

	ld   a, [hl-]                                    ; $5483: $3a
	dec  sp                                          ; $5484: $3b
	inc  a                                           ; $5485: $3c
	dec  a                                           ; $5486: $3d
	ld   a, $3f                                      ; $5487: $3e $3f
	inc  [hl]                                        ; $5489: $34
	dec  [hl]                                        ; $548a: $35
	ld   [hl], $37                                   ; $548b: $36 $37
	ld   b, b                                        ; $548d: $40
	ld   e, d                                        ; $548e: $5a
	ld   b, d                                        ; $548f: $42
	ld   e, e                                        ; $5490: $5b
	ld   b, h                                        ; $5491: $44
	ld   b, l                                        ; $5492: $45
	ld   b, [hl]                                     ; $5493: $46

jr_081_5494:
	ld   h, d                                        ; $5494: $62
	ld   c, b                                        ; $5495: $48
	ld   c, c                                        ; $5496: $49
	ld   c, d                                        ; $5497: $4a

jr_081_5498:
	ld   c, e                                        ; $5498: $4b
	ld   c, h                                        ; $5499: $4c
	ld   b, l                                        ; $549a: $45
	ld   c, [hl]                                     ; $549b: $4e
	ld   c, a                                        ; $549c: $4f
	jr   z, jr_081_5513                              ; $549d: $28 $74

	ld   [hl], l                                     ; $549f: $75
	dec  hl                                          ; $54a0: $2b
	ld   c, b                                        ; $54a1: $48
	ld   c, c                                        ; $54a2: $49
	ld   c, d                                        ; $54a3: $4a
	ld   c, e                                        ; $54a4: $4b
	ld   d, h                                        ; $54a5: $54
	ld   d, l                                        ; $54a6: $55
	ld   d, [hl]                                     ; $54a7: $56
	ld   e, h                                        ; $54a8: $5c
	ld   e, l                                        ; $54a9: $5d
	ld   e, c                                        ; $54aa: $59
	ld   h, h                                        ; $54ab: $64

jr_081_54ac:
	ld   h, l                                        ; $54ac: $65
	ld   e, h                                        ; $54ad: $5c
	ld   l, d                                        ; $54ae: $6a
	ld   l, e                                        ; $54af: $6b
	ld   e, a                                        ; $54b0: $5f
	jr   c, jr_081_5529                              ; $54b1: $38 $76

	ld   [hl], a                                     ; $54b3: $77
	dec  sp                                          ; $54b4: $3b
	ld   c, h                                        ; $54b5: $4c
	ld   c, l                                        ; $54b6: $4d
	ld   c, [hl]                                     ; $54b7: $4e
	ld   c, a                                        ; $54b8: $4f
	ld   h, h                                        ; $54b9: $64
	ld   h, l                                        ; $54ba: $65
	ld   h, [hl]                                     ; $54bb: $66

jr_081_54bc:
	ld   e, [hl]                                     ; $54bc: $5e
	ld   e, a                                        ; $54bd: $5f
	ld   l, c                                        ; $54be: $69
	ld   h, [hl]                                     ; $54bf: $66
	ld   h, a                                        ; $54c0: $67
	ld   l, h                                        ; $54c1: $6c
	ld   l, h                                        ; $54c2: $6c
	ld   l, l                                        ; $54c3: $6d
	ld   l, a                                        ; $54c4: $6f
	inc  l                                           ; $54c5: $2c
	ld   a, b                                        ; $54c6: $78
	ld   a, c                                        ; $54c7: $79
	ld   b, [hl]                                     ; $54c8: $46
	ld   d, b                                        ; $54c9: $50
	ld   d, c                                        ; $54ca: $51
	ld   d, d                                        ; $54cb: $52
	ld   d, e                                        ; $54cc: $53
	ld   [hl], h                                     ; $54cd: $74
	ld   [hl], l                                     ; $54ce: $75
	halt                                             ; $54cf: $76
	ld   h, b                                        ; $54d0: $60
	ld   h, c                                        ; $54d1: $61
	ld   a, c                                        ; $54d2: $79
	ld   l, b                                        ; $54d3: $68
	ld   l, c                                        ; $54d4: $69
	ld   a, h                                        ; $54d5: $7c
	ld   l, [hl]                                     ; $54d6: $6e
	ld   l, a                                        ; $54d7: $6f
	ld   a, a                                        ; $54d8: $7f
	inc  a                                           ; $54d9: $3c
	ld   a, d                                        ; $54da: $7a
	ld   a, e                                        ; $54db: $7b
	ld   b, a                                        ; $54dc: $47
	nop                                              ; $54dd: $00
	ld   d, h                                        ; $54de: $54
	ld   d, l                                        ; $54df: $55
	ld   d, [hl]                                     ; $54e0: $56
	inc  b                                           ; $54e1: $04
	dec  b                                           ; $54e2: $05
	ld   b, $63                                      ; $54e3: $06 $63
	ld   [$0a09], sp                                 ; $54e5: $08 $09 $0a
	dec  bc                                          ; $54e8: $0b
	inc  c                                           ; $54e9: $0c
	ld   [hl], b                                     ; $54ea: $70
	ld   [hl], c                                     ; $54eb: $71
	rrca                                             ; $54ec: $0f
	ld   b, b                                        ; $54ed: $40
	ld   a, h                                        ; $54ee: $7c
	ld   a, l                                        ; $54ef: $7d
	ld   b, e                                        ; $54f0: $43
	db   $10                                         ; $54f1: $10
	ld   d, a                                        ; $54f2: $57
	ld   e, b                                        ; $54f3: $58
	ld   e, c                                        ; $54f4: $59
	inc  d                                           ; $54f5: $14
	dec  d                                           ; $54f6: $15
	ld   d, $17                                      ; $54f7: $16 $17
	jr   jr_081_5514                                 ; $54f9: $18 $19

	ld   a, [de]                                     ; $54fb: $1a
	dec  de                                          ; $54fc: $1b
	inc  e                                           ; $54fd: $1c
	ld   [hl], d                                     ; $54fe: $72
	ld   [hl], e                                     ; $54ff: $73
	rra                                              ; $5500: $1f
	ld   b, h                                        ; $5501: $44
	ld   a, [hl]                                     ; $5502: $7e
	ld   a, a                                        ; $5503: $7f
	inc  bc                                          ; $5504: $03
	inc  bc                                          ; $5505: $03
	inc  bc                                          ; $5506: $03
	inc  bc                                          ; $5507: $03
	inc  bc                                          ; $5508: $03
	inc  bc                                          ; $5509: $03
	inc  bc                                          ; $550a: $03
	inc  bc                                          ; $550b: $03
	inc  bc                                          ; $550c: $03
	inc  bc                                          ; $550d: $03
	inc  bc                                          ; $550e: $03
	inc  bc                                          ; $550f: $03
	inc  bc                                          ; $5510: $03
	inc  bc                                          ; $5511: $03
	inc  bc                                          ; $5512: $03

jr_081_5513:
	inc  bc                                          ; $5513: $03

jr_081_5514:
	inc  bc                                          ; $5514: $03
	dec  bc                                          ; $5515: $0b
	dec  bc                                          ; $5516: $0b
	dec  bc                                          ; $5517: $0b
	dec  bc                                          ; $5518: $0b
	inc  bc                                          ; $5519: $03
	inc  bc                                          ; $551a: $03
	inc  bc                                          ; $551b: $03
	inc  bc                                          ; $551c: $03
	inc  bc                                          ; $551d: $03
	inc  bc                                          ; $551e: $03
	inc  bc                                          ; $551f: $03
	inc  bc                                          ; $5520: $03
	inc  bc                                          ; $5521: $03
	inc  bc                                          ; $5522: $03
	inc  bc                                          ; $5523: $03
	inc  bc                                          ; $5524: $03
	inc  bc                                          ; $5525: $03
	inc  bc                                          ; $5526: $03
	inc  bc                                          ; $5527: $03
	inc  bc                                          ; $5528: $03

jr_081_5529:
	dec  bc                                          ; $5529: $0b
	dec  bc                                          ; $552a: $0b
	dec  bc                                          ; $552b: $0b
	dec  bc                                          ; $552c: $0b
	inc  bc                                          ; $552d: $03
	inc  bc                                          ; $552e: $03
	inc  bc                                          ; $552f: $03
	inc  bc                                          ; $5530: $03
	inc  bc                                          ; $5531: $03
	inc  bc                                          ; $5532: $03
	inc  bc                                          ; $5533: $03
	inc  bc                                          ; $5534: $03
	inc  bc                                          ; $5535: $03
	inc  bc                                          ; $5536: $03
	inc  bc                                          ; $5537: $03
	inc  bc                                          ; $5538: $03
	inc  bc                                          ; $5539: $03
	inc  bc                                          ; $553a: $03
	inc  bc                                          ; $553b: $03
	inc  bc                                          ; $553c: $03
	dec  bc                                          ; $553d: $0b
	dec  bc                                          ; $553e: $0b
	dec  bc                                          ; $553f: $0b
	dec  bc                                          ; $5540: $0b
	inc  bc                                          ; $5541: $03
	inc  bc                                          ; $5542: $03
	inc  bc                                          ; $5543: $03
	inc  bc                                          ; $5544: $03
	inc  bc                                          ; $5545: $03
	inc  bc                                          ; $5546: $03
	inc  bc                                          ; $5547: $03
	inc  bc                                          ; $5548: $03
	inc  bc                                          ; $5549: $03
	inc  bc                                          ; $554a: $03
	inc  bc                                          ; $554b: $03
	inc  bc                                          ; $554c: $03
	inc  bc                                          ; $554d: $03
	inc  bc                                          ; $554e: $03
	inc  bc                                          ; $554f: $03
	inc  bc                                          ; $5550: $03
	dec  bc                                          ; $5551: $0b
	dec  bc                                          ; $5552: $0b
	dec  bc                                          ; $5553: $0b
	dec  bc                                          ; $5554: $0b
	inc  bc                                          ; $5555: $03
	dec  bc                                          ; $5556: $0b
	inc  bc                                          ; $5557: $03
	dec  bc                                          ; $5558: $0b
	inc  bc                                          ; $5559: $03
	inc  bc                                          ; $555a: $03
	inc  bc                                          ; $555b: $03
	dec  bc                                          ; $555c: $0b
	dec  b                                           ; $555d: $05
	dec  b                                           ; $555e: $05
	dec  b                                           ; $555f: $05
	dec  b                                           ; $5560: $05
	dec  b                                           ; $5561: $05
	dec  c                                           ; $5562: $0d
	inc  bc                                          ; $5563: $03
	inc  bc                                          ; $5564: $03
	dec  bc                                          ; $5565: $0b
	dec  c                                           ; $5566: $0d
	dec  c                                           ; $5567: $0d
	dec  bc                                          ; $5568: $0b
	dec  bc                                          ; $5569: $0b
	inc  c                                           ; $556a: $0c
	dec  bc                                          ; $556b: $0b
	dec  bc                                          ; $556c: $0b
	inc  bc                                          ; $556d: $03
	inc  b                                           ; $556e: $04
	inc  bc                                          ; $556f: $03
	dec  bc                                          ; $5570: $0b
	inc  c                                           ; $5571: $0c
	dec  b                                           ; $5572: $05
	inc  c                                           ; $5573: $0c
	inc  c                                           ; $5574: $0c
	dec  b                                           ; $5575: $05
	dec  c                                           ; $5576: $0d
	dec  bc                                          ; $5577: $0b
	inc  bc                                          ; $5578: $03
	dec  bc                                          ; $5579: $0b
	dec  c                                           ; $557a: $0d
	dec  c                                           ; $557b: $0d
	dec  bc                                          ; $557c: $0b
	dec  bc                                          ; $557d: $0b
	inc  c                                           ; $557e: $0c
	inc  c                                           ; $557f: $0c
	dec  bc                                          ; $5580: $0b
	inc  bc                                          ; $5581: $03
	inc  b                                           ; $5582: $04
	inc  b                                           ; $5583: $04
	dec  bc                                          ; $5584: $0b
	inc  c                                           ; $5585: $0c
	dec  b                                           ; $5586: $05
	inc  c                                           ; $5587: $0c
	inc  c                                           ; $5588: $0c
	dec  b                                           ; $5589: $05
	inc  c                                           ; $558a: $0c
	inc  c                                           ; $558b: $0c
	inc  b                                           ; $558c: $04
	inc  c                                           ; $558d: $0c
	dec  c                                           ; $558e: $0d
	dec  c                                           ; $558f: $0d
	dec  bc                                          ; $5590: $0b
	dec  c                                           ; $5591: $0d
	inc  c                                           ; $5592: $0c
	dec  bc                                          ; $5593: $0b
	dec  bc                                          ; $5594: $0b
	inc  bc                                          ; $5595: $03
	inc  b                                           ; $5596: $04
	inc  b                                           ; $5597: $04
	dec  bc                                          ; $5598: $0b
	inc  c                                           ; $5599: $0c
	inc  b                                           ; $559a: $04
	inc  c                                           ; $559b: $0c
	inc  c                                           ; $559c: $0c
	inc  b                                           ; $559d: $04
	inc  c                                           ; $559e: $0c
	inc  c                                           ; $559f: $0c
	inc  b                                           ; $55a0: $04
	inc  c                                           ; $55a1: $0c
	dec  c                                           ; $55a2: $0d
	dec  c                                           ; $55a3: $0d
	dec  c                                           ; $55a4: $0d
	dec  c                                           ; $55a5: $0d
	dec  c                                           ; $55a6: $0d
	dec  c                                           ; $55a7: $0d
	dec  c                                           ; $55a8: $0d
	dec  c                                           ; $55a9: $0d
	dec  c                                           ; $55aa: $0d
	dec  c                                           ; $55ab: $0d
	dec  c                                           ; $55ac: $0d
	inc  c                                           ; $55ad: $0c
	inc  c                                           ; $55ae: $0c
	inc  c                                           ; $55af: $0c
	inc  c                                           ; $55b0: $0c
	inc  c                                           ; $55b1: $0c
	inc  c                                           ; $55b2: $0c
	inc  c                                           ; $55b3: $0c
	inc  c                                           ; $55b4: $0c
	dec  c                                           ; $55b5: $0d
	dec  c                                           ; $55b6: $0d
	dec  c                                           ; $55b7: $0d
	dec  c                                           ; $55b8: $0d
	dec  c                                           ; $55b9: $0d
	dec  c                                           ; $55ba: $0d
	dec  c                                           ; $55bb: $0d
	dec  c                                           ; $55bc: $0d
	dec  c                                           ; $55bd: $0d
	dec  c                                           ; $55be: $0d
	dec  c                                           ; $55bf: $0d
	dec  c                                           ; $55c0: $0d
	dec  c                                           ; $55c1: $0d
	dec  c                                           ; $55c2: $0d
	dec  c                                           ; $55c3: $0d
	dec  c                                           ; $55c4: $0d
	dec  c                                           ; $55c5: $0d
	dec  c                                           ; $55c6: $0d
	dec  c                                           ; $55c7: $0d
	dec  c                                           ; $55c8: $0d
	dec  c                                           ; $55c9: $0d
	dec  c                                           ; $55ca: $0d
	dec  c                                           ; $55cb: $0d
	dec  c                                           ; $55cc: $0d
	nop                                              ; $55cd: $00
	ld   bc, $0301                                   ; $55ce: $01 $01 $03
	inc  b                                           ; $55d1: $04
	dec  b                                           ; $55d2: $05
	ld   b, $07                                      ; $55d3: $06 $07
	ld   [$0a09], sp                                 ; $55d5: $08 $09 $0a
	dec  bc                                          ; $55d8: $0b
	inc  c                                           ; $55d9: $0c
	dec  c                                           ; $55da: $0d
	ld   c, $0f                                      ; $55db: $0e $0f
	jr   nz, jr_081_5600                             ; $55dd: $20 $21

	ld   [hl+], a                                    ; $55df: $22
	inc  hl                                          ; $55e0: $23
	db   $10                                         ; $55e1: $10
	ld   de, $1111                                   ; $55e2: $11 $11 $11
	inc  d                                           ; $55e5: $14
	dec  d                                           ; $55e6: $15
	ld   d, $17                                      ; $55e7: $16 $17
	jr   @+$1b                                       ; $55e9: $18 $19

	ld   a, [de]                                     ; $55eb: $1a
	dec  de                                          ; $55ec: $1b
	inc  e                                           ; $55ed: $1c
	dec  e                                           ; $55ee: $1d
	ld   e, $1f                                      ; $55ef: $1e $1f
	jr   nc, jr_081_5624                             ; $55f1: $30 $31

	ld   [hl-], a                                    ; $55f3: $32
	inc  sp                                          ; $55f4: $33
	jr   nz, @+$23                                   ; $55f5: $20 $21

	ld   [hl+], a                                    ; $55f7: $22
	inc  hl                                          ; $55f8: $23
	inc  h                                           ; $55f9: $24
	dec  h                                           ; $55fa: $25
	ld   h, $27                                      ; $55fb: $26 $27
	jr   z, jr_081_5628                              ; $55fd: $28 $29

	ld   a, [hl+]                                    ; $55ff: $2a

jr_081_5600:
	dec  hl                                          ; $5600: $2b
	inc  l                                           ; $5601: $2c
	dec  l                                           ; $5602: $2d
	ld   l, $2f                                      ; $5603: $2e $2f
	inc  h                                           ; $5605: $24
	dec  h                                           ; $5606: $25
	ld   h, $27                                      ; $5607: $26 $27
	jr   nc, jr_081_563c                             ; $5609: $30 $31

	ld   [hl-], a                                    ; $560b: $32
	inc  sp                                          ; $560c: $33
	inc  [hl]                                        ; $560d: $34
	dec  [hl]                                        ; $560e: $35
	ld   [hl], $37                                   ; $560f: $36 $37
	jr   c, jr_081_564c                              ; $5611: $38 $39

	ld   a, [hl-]                                    ; $5613: $3a
	dec  sp                                          ; $5614: $3b
	inc  a                                           ; $5615: $3c
	dec  a                                           ; $5616: $3d
	ld   a, $3f                                      ; $5617: $3e $3f
	inc  [hl]                                        ; $5619: $34
	dec  [hl]                                        ; $561a: $35
	ld   [hl], $37                                   ; $561b: $36 $37
	ld   b, b                                        ; $561d: $40
	ld   b, c                                        ; $561e: $41
	ld   b, d                                        ; $561f: $42
	ld   b, e                                        ; $5620: $43
	ld   b, h                                        ; $5621: $44
	ld   b, l                                        ; $5622: $45
	ld   b, [hl]                                     ; $5623: $46

jr_081_5624:
	ld   b, a                                        ; $5624: $47
	ld   c, b                                        ; $5625: $48
	ld   c, c                                        ; $5626: $49
	ld   c, d                                        ; $5627: $4a

jr_081_5628:
	ld   c, e                                        ; $5628: $4b
	ld   c, h                                        ; $5629: $4c
	ld   c, l                                        ; $562a: $4d
	ld   c, [hl]                                     ; $562b: $4e
	ld   c, a                                        ; $562c: $4f
	jr   z, @+$2b                                    ; $562d: $28 $29

	ld   a, [hl+]                                    ; $562f: $2a
	dec  hl                                          ; $5630: $2b
	ld   d, b                                        ; $5631: $50
	ld   d, c                                        ; $5632: $51
	ld   d, d                                        ; $5633: $52
	ld   d, e                                        ; $5634: $53
	ld   d, h                                        ; $5635: $54
	ld   d, l                                        ; $5636: $55
	ld   d, [hl]                                     ; $5637: $56
	ld   d, a                                        ; $5638: $57
	ld   e, b                                        ; $5639: $58
	ld   e, c                                        ; $563a: $59
	ld   e, d                                        ; $563b: $5a

jr_081_563c:
	ld   e, e                                        ; $563c: $5b
	ld   e, h                                        ; $563d: $5c
	ld   e, l                                        ; $563e: $5d
	ld   e, [hl]                                     ; $563f: $5e
	ld   e, a                                        ; $5640: $5f
	jr   c, @+$3b                                    ; $5641: $38 $39

	ld   a, [hl-]                                    ; $5643: $3a
	dec  sp                                          ; $5644: $3b
	ld   h, b                                        ; $5645: $60
	ld   h, c                                        ; $5646: $61
	ld   h, d                                        ; $5647: $62
	ld   h, e                                        ; $5648: $63
	ld   h, h                                        ; $5649: $64
	ld   h, l                                        ; $564a: $65
	ld   h, [hl]                                     ; $564b: $66

jr_081_564c:
	ld   h, a                                        ; $564c: $67
	ld   l, b                                        ; $564d: $68
	ld   l, c                                        ; $564e: $69
	ld   l, d                                        ; $564f: $6a
	ld   l, e                                        ; $5650: $6b
	ld   l, h                                        ; $5651: $6c
	ld   l, l                                        ; $5652: $6d
	ld   l, [hl]                                     ; $5653: $6e
	ld   l, a                                        ; $5654: $6f
	inc  l                                           ; $5655: $2c
	dec  l                                           ; $5656: $2d
	ld   l, $2f                                      ; $5657: $2e $2f
	ld   [hl], b                                     ; $5659: $70
	ld   [hl], c                                     ; $565a: $71
	ld   [hl], d                                     ; $565b: $72
	ld   [hl], e                                     ; $565c: $73
	ld   [hl], h                                     ; $565d: $74
	ld   [hl], l                                     ; $565e: $75
	halt                                             ; $565f: $76
	ld   [hl], a                                     ; $5660: $77
	ld   a, b                                        ; $5661: $78
	ld   a, c                                        ; $5662: $79
	ld   a, d                                        ; $5663: $7a
	ld   a, e                                        ; $5664: $7b
	ld   a, h                                        ; $5665: $7c
	ld   a, l                                        ; $5666: $7d
	ld   a, [hl]                                     ; $5667: $7e
	ld   a, a                                        ; $5668: $7f
	inc  a                                           ; $5669: $3c
	dec  a                                           ; $566a: $3d
	ld   a, $3f                                      ; $566b: $3e $3f
	nop                                              ; $566d: $00
	ld   bc, $0302                                   ; $566e: $01 $02 $03
	inc  b                                           ; $5671: $04
	dec  b                                           ; $5672: $05
	ld   b, $07                                      ; $5673: $06 $07
	ld   [$0a09], sp                                 ; $5675: $08 $09 $0a
	dec  bc                                          ; $5678: $0b
	inc  c                                           ; $5679: $0c
	dec  c                                           ; $567a: $0d
	ld   c, $0f                                      ; $567b: $0e $0f
	ld   de, $0303                                   ; $567d: $11 $03 $03
	db   $10                                         ; $5680: $10
	db   $10                                         ; $5681: $10
	inc  bc                                          ; $5682: $03
	ld   [de], a                                     ; $5683: $12
	inc  de                                          ; $5684: $13
	inc  d                                           ; $5685: $14
	dec  d                                           ; $5686: $15
	ld   d, $17                                      ; $5687: $16 $17
	jr   jr_081_56a4                                 ; $5689: $18 $19

	ld   a, [de]                                     ; $568b: $1a
	dec  de                                          ; $568c: $1b
	inc  e                                           ; $568d: $1c
	dec  e                                           ; $568e: $1d
	ld   e, $1f                                      ; $568f: $1e $1f
	ld   [bc], a                                     ; $5691: $02
	ld   [de], a                                     ; $5692: $12
	inc  de                                          ; $5693: $13
	db   $10                                         ; $5694: $10
	inc  bc                                          ; $5695: $03
	inc  bc                                          ; $5696: $03
	inc  bc                                          ; $5697: $03
	inc  bc                                          ; $5698: $03
	inc  bc                                          ; $5699: $03
	inc  bc                                          ; $569a: $03
	inc  bc                                          ; $569b: $03
	inc  bc                                          ; $569c: $03
	inc  bc                                          ; $569d: $03
	inc  bc                                          ; $569e: $03
	inc  bc                                          ; $569f: $03
	inc  bc                                          ; $56a0: $03
	inc  bc                                          ; $56a1: $03
	inc  bc                                          ; $56a2: $03
	inc  bc                                          ; $56a3: $03

jr_081_56a4:
	inc  bc                                          ; $56a4: $03
	dec  bc                                          ; $56a5: $0b
	dec  bc                                          ; $56a6: $0b
	dec  bc                                          ; $56a7: $0b
	dec  bc                                          ; $56a8: $0b
	inc  bc                                          ; $56a9: $03
	inc  bc                                          ; $56aa: $03
	inc  bc                                          ; $56ab: $03
	inc  bc                                          ; $56ac: $03
	inc  bc                                          ; $56ad: $03
	inc  bc                                          ; $56ae: $03
	inc  bc                                          ; $56af: $03
	inc  bc                                          ; $56b0: $03
	inc  bc                                          ; $56b1: $03
	inc  bc                                          ; $56b2: $03
	inc  bc                                          ; $56b3: $03
	inc  bc                                          ; $56b4: $03
	inc  bc                                          ; $56b5: $03
	inc  bc                                          ; $56b6: $03
	inc  bc                                          ; $56b7: $03
	inc  bc                                          ; $56b8: $03
	dec  bc                                          ; $56b9: $0b
	dec  bc                                          ; $56ba: $0b
	dec  bc                                          ; $56bb: $0b
	dec  bc                                          ; $56bc: $0b
	inc  bc                                          ; $56bd: $03
	inc  bc                                          ; $56be: $03
	inc  bc                                          ; $56bf: $03
	inc  bc                                          ; $56c0: $03
	inc  bc                                          ; $56c1: $03
	inc  bc                                          ; $56c2: $03
	inc  bc                                          ; $56c3: $03
	inc  bc                                          ; $56c4: $03
	inc  bc                                          ; $56c5: $03
	inc  bc                                          ; $56c6: $03
	inc  bc                                          ; $56c7: $03
	inc  bc                                          ; $56c8: $03
	inc  bc                                          ; $56c9: $03
	inc  bc                                          ; $56ca: $03
	inc  bc                                          ; $56cb: $03
	inc  bc                                          ; $56cc: $03
	dec  bc                                          ; $56cd: $0b
	dec  bc                                          ; $56ce: $0b
	dec  bc                                          ; $56cf: $0b
	dec  bc                                          ; $56d0: $0b
	inc  bc                                          ; $56d1: $03
	inc  bc                                          ; $56d2: $03
	inc  bc                                          ; $56d3: $03
	inc  bc                                          ; $56d4: $03
	inc  bc                                          ; $56d5: $03
	inc  bc                                          ; $56d6: $03
	inc  bc                                          ; $56d7: $03
	inc  bc                                          ; $56d8: $03
	inc  bc                                          ; $56d9: $03
	inc  bc                                          ; $56da: $03
	inc  bc                                          ; $56db: $03
	inc  bc                                          ; $56dc: $03
	inc  bc                                          ; $56dd: $03
	inc  bc                                          ; $56de: $03
	inc  bc                                          ; $56df: $03
	inc  bc                                          ; $56e0: $03
	dec  bc                                          ; $56e1: $0b
	dec  bc                                          ; $56e2: $0b
	dec  bc                                          ; $56e3: $0b
	dec  bc                                          ; $56e4: $0b
	inc  bc                                          ; $56e5: $03
	inc  bc                                          ; $56e6: $03
	inc  bc                                          ; $56e7: $03
	inc  bc                                          ; $56e8: $03
	inc  bc                                          ; $56e9: $03
	inc  bc                                          ; $56ea: $03
	inc  bc                                          ; $56eb: $03
	inc  bc                                          ; $56ec: $03
	dec  b                                           ; $56ed: $05
	dec  b                                           ; $56ee: $05
	dec  b                                           ; $56ef: $05
	dec  b                                           ; $56f0: $05
	dec  b                                           ; $56f1: $05
	dec  b                                           ; $56f2: $05
	inc  bc                                          ; $56f3: $03
	inc  bc                                          ; $56f4: $03
	dec  bc                                          ; $56f5: $0b
	dec  c                                           ; $56f6: $0d
	dec  c                                           ; $56f7: $0d
	dec  bc                                          ; $56f8: $0b
	inc  bc                                          ; $56f9: $03
	inc  bc                                          ; $56fa: $03
	inc  bc                                          ; $56fb: $03
	inc  bc                                          ; $56fc: $03
	inc  bc                                          ; $56fd: $03
	inc  b                                           ; $56fe: $04
	inc  bc                                          ; $56ff: $03
	inc  bc                                          ; $5700: $03
	dec  b                                           ; $5701: $05
	dec  b                                           ; $5702: $05
	dec  b                                           ; $5703: $05
	dec  b                                           ; $5704: $05
	dec  b                                           ; $5705: $05
	dec  b                                           ; $5706: $05
	inc  bc                                          ; $5707: $03
	inc  bc                                          ; $5708: $03
	dec  bc                                          ; $5709: $0b
	dec  c                                           ; $570a: $0d
	dec  c                                           ; $570b: $0d
	dec  bc                                          ; $570c: $0b
	inc  bc                                          ; $570d: $03
	inc  b                                           ; $570e: $04
	inc  bc                                          ; $570f: $03
	inc  bc                                          ; $5710: $03
	inc  bc                                          ; $5711: $03
	inc  b                                           ; $5712: $04
	inc  b                                           ; $5713: $04
	inc  b                                           ; $5714: $04
	dec  b                                           ; $5715: $05
	dec  b                                           ; $5716: $05
	dec  b                                           ; $5717: $05
	dec  b                                           ; $5718: $05
	dec  b                                           ; $5719: $05
	dec  b                                           ; $571a: $05
	inc  b                                           ; $571b: $04
	inc  b                                           ; $571c: $04
	inc  c                                           ; $571d: $0c
	dec  c                                           ; $571e: $0d
	dec  c                                           ; $571f: $0d
	dec  bc                                          ; $5720: $0b
	dec  b                                           ; $5721: $05
	inc  b                                           ; $5722: $04
	inc  bc                                          ; $5723: $03
	inc  bc                                          ; $5724: $03
	inc  bc                                          ; $5725: $03
	inc  b                                           ; $5726: $04
	inc  b                                           ; $5727: $04
	inc  b                                           ; $5728: $04
	inc  b                                           ; $5729: $04
	inc  b                                           ; $572a: $04
	inc  b                                           ; $572b: $04
	inc  b                                           ; $572c: $04
	inc  b                                           ; $572d: $04
	inc  b                                           ; $572e: $04
	inc  b                                           ; $572f: $04
	inc  b                                           ; $5730: $04
	inc  c                                           ; $5731: $0c
	dec  c                                           ; $5732: $0d
	dec  c                                           ; $5733: $0d
	dec  c                                           ; $5734: $0d
	dec  c                                           ; $5735: $0d
	dec  c                                           ; $5736: $0d
	dec  c                                           ; $5737: $0d
	inc  c                                           ; $5738: $0c
	inc  c                                           ; $5739: $0c
	inc  c                                           ; $573a: $0c
	inc  c                                           ; $573b: $0c
	inc  c                                           ; $573c: $0c
	inc  c                                           ; $573d: $0c
	inc  c                                           ; $573e: $0c
	inc  c                                           ; $573f: $0c
	inc  c                                           ; $5740: $0c
	inc  c                                           ; $5741: $0c
	inc  c                                           ; $5742: $0c
	inc  c                                           ; $5743: $0c
	inc  c                                           ; $5744: $0c
	dec  c                                           ; $5745: $0d
	dec  c                                           ; $5746: $0d
	dec  c                                           ; $5747: $0d
	dec  l                                           ; $5748: $2d
	dec  c                                           ; $5749: $0d
	dec  c                                           ; $574a: $0d
	dec  c                                           ; $574b: $0d
	dec  c                                           ; $574c: $0d
	dec  c                                           ; $574d: $0d
	dec  c                                           ; $574e: $0d
	dec  c                                           ; $574f: $0d
	dec  c                                           ; $5750: $0d
	dec  c                                           ; $5751: $0d
	dec  c                                           ; $5752: $0d
	dec  c                                           ; $5753: $0d
	dec  c                                           ; $5754: $0d
	dec  c                                           ; $5755: $0d
	dec  c                                           ; $5756: $0d
	dec  c                                           ; $5757: $0d
	dec  c                                           ; $5758: $0d
	dec  b                                           ; $5759: $05
	dec  b                                           ; $575a: $05
	dec  b                                           ; $575b: $05
	dec  l                                           ; $575c: $2d
	nop                                              ; $575d: $00
	ld   bc, $0302                                   ; $575e: $01 $02 $03
	inc  b                                           ; $5761: $04
	inc  b                                           ; $5762: $04
	inc  b                                           ; $5763: $04
	dec  b                                           ; $5764: $05
	ld   b, $06                                      ; $5765: $06 $06
	ld   b, $06                                      ; $5767: $06 $06
	rlca                                             ; $5769: $07
	inc  b                                           ; $576a: $04
	inc  b                                           ; $576b: $04
	inc  b                                           ; $576c: $04
	inc  bc                                          ; $576d: $03
	ld   [bc], a                                     ; $576e: $02
	ld   bc, $0800                                   ; $576f: $01 $00 $08
	add  hl, bc                                      ; $5772: $09
	ld   a, [bc]                                     ; $5773: $0a
	inc  b                                           ; $5774: $04
	inc  b                                           ; $5775: $04
	inc  b                                           ; $5776: $04
	inc  b                                           ; $5777: $04
	dec  bc                                          ; $5778: $0b
	inc  c                                           ; $5779: $0c
	dec  c                                           ; $577a: $0d
	ld   c, $0f                                      ; $577b: $0e $0f
	db   $10                                         ; $577d: $10
	inc  b                                           ; $577e: $04
	inc  b                                           ; $577f: $04
	inc  b                                           ; $5780: $04
	inc  b                                           ; $5781: $04
	ld   a, [bc]                                     ; $5782: $0a
	add  hl, bc                                      ; $5783: $09
	ld   [$1211], sp                                 ; $5784: $08 $11 $12
	inc  b                                           ; $5787: $04
	inc  b                                           ; $5788: $04
	inc  b                                           ; $5789: $04
	inc  b                                           ; $578a: $04
	inc  b                                           ; $578b: $04
	inc  de                                          ; $578c: $13
	inc  d                                           ; $578d: $14
	dec  d                                           ; $578e: $15
	ld   d, $17                                      ; $578f: $16 $17
	db   $10                                         ; $5791: $10
	inc  b                                           ; $5792: $04
	inc  b                                           ; $5793: $04
	inc  b                                           ; $5794: $04
	inc  b                                           ; $5795: $04
	inc  b                                           ; $5796: $04
	ld   [de], a                                     ; $5797: $12
	ld   de, $0418                                   ; $5798: $11 $18 $04
	inc  b                                           ; $579b: $04
	inc  b                                           ; $579c: $04
	inc  b                                           ; $579d: $04
	inc  b                                           ; $579e: $04
	inc  b                                           ; $579f: $04
	inc  de                                          ; $57a0: $13
	add  hl, de                                      ; $57a1: $19
	ld   a, [de]                                     ; $57a2: $1a
	dec  de                                          ; $57a3: $1b
	inc  e                                           ; $57a4: $1c
	db   $10                                         ; $57a5: $10
	inc  b                                           ; $57a6: $04
	inc  b                                           ; $57a7: $04
	inc  b                                           ; $57a8: $04
	inc  b                                           ; $57a9: $04
	inc  b                                           ; $57aa: $04
	inc  b                                           ; $57ab: $04
	jr   @+$1f                                       ; $57ac: $18 $1d

	ld   e, $1e                                      ; $57ae: $1e $1e
	ld   e, $1e                                      ; $57b0: $1e $1e
	ld   e, $1e                                      ; $57b2: $1e $1e
	rra                                              ; $57b4: $1f
	jr   nz, jr_081_57d8                             ; $57b5: $20 $21

	ld   [hl+], a                                    ; $57b7: $22
	inc  hl                                          ; $57b8: $23
	inc  h                                           ; $57b9: $24
	ld   e, $1e                                      ; $57ba: $1e $1e
	ld   e, $1e                                      ; $57bc: $1e $1e
	ld   e, $1e                                      ; $57be: $1e $1e
	dec  e                                           ; $57c0: $1d
	dec  h                                           ; $57c1: $25
	ld   h, $27                                      ; $57c2: $26 $27
	jr   z, jr_081_57ef                              ; $57c4: $28 $29

	ld   a, [hl+]                                    ; $57c6: $2a
	dec  hl                                          ; $57c7: $2b
	inc  l                                           ; $57c8: $2c
	dec  l                                           ; $57c9: $2d
	ld   l, $2f                                      ; $57ca: $2e $2f
	jr   nc, jr_081_57ff                             ; $57cc: $30 $31

	ld   [hl-], a                                    ; $57ce: $32
	inc  sp                                          ; $57cf: $33
	inc  [hl]                                        ; $57d0: $34
	dec  [hl]                                        ; $57d1: $35
	ld   [hl], $37                                   ; $57d2: $36 $37
	jr   c, jr_081_580f                              ; $57d4: $38 $39

	ld   a, [hl-]                                    ; $57d6: $3a
	dec  sp                                          ; $57d7: $3b

jr_081_57d8:
	inc  a                                           ; $57d8: $3c
	dec  a                                           ; $57d9: $3d
	ld   a, $3f                                      ; $57da: $3e $3f
	ld   b, b                                        ; $57dc: $40
	ld   b, c                                        ; $57dd: $41
	ld   b, d                                        ; $57de: $42
	ld   b, e                                        ; $57df: $43
	ld   b, h                                        ; $57e0: $44
	ld   b, l                                        ; $57e1: $45
	ld   b, [hl]                                     ; $57e2: $46
	ld   b, a                                        ; $57e3: $47
	ld   c, b                                        ; $57e4: $48
	ld   c, c                                        ; $57e5: $49
	ld   c, d                                        ; $57e6: $4a
	ld   c, e                                        ; $57e7: $4b
	ld   c, h                                        ; $57e8: $4c
	ld   c, l                                        ; $57e9: $4d
	ld   c, [hl]                                     ; $57ea: $4e
	ld   c, a                                        ; $57eb: $4f
	ld   d, b                                        ; $57ec: $50
	ld   d, c                                        ; $57ed: $51
	ld   d, d                                        ; $57ee: $52

jr_081_57ef:
	ld   d, e                                        ; $57ef: $53
	ld   d, h                                        ; $57f0: $54
	ld   d, l                                        ; $57f1: $55
	ld   d, [hl]                                     ; $57f2: $56
	ld   d, a                                        ; $57f3: $57
	ld   e, b                                        ; $57f4: $58
	ld   e, c                                        ; $57f5: $59
	ld   e, d                                        ; $57f6: $5a
	ld   e, e                                        ; $57f7: $5b
	ld   e, h                                        ; $57f8: $5c
	ld   e, l                                        ; $57f9: $5d
	ld   e, [hl]                                     ; $57fa: $5e
	ld   e, a                                        ; $57fb: $5f
	ld   h, b                                        ; $57fc: $60
	ld   h, c                                        ; $57fd: $61
	ld   h, d                                        ; $57fe: $62

jr_081_57ff:
	ld   h, e                                        ; $57ff: $63
	ld   h, d                                        ; $5800: $62
	ld   h, d                                        ; $5801: $62
	ld   h, d                                        ; $5802: $62
	ld   h, d                                        ; $5803: $62
	ld   h, h                                        ; $5804: $64
	ld   h, l                                        ; $5805: $65
	ld   h, [hl]                                     ; $5806: $66
	ld   h, [hl]                                     ; $5807: $66
	ld   h, a                                        ; $5808: $67
	ld   l, b                                        ; $5809: $68
	ld   l, c                                        ; $580a: $69
	ld   l, e                                        ; $580b: $6b
	ld   h, d                                        ; $580c: $62
	ld   h, d                                        ; $580d: $62
	ld   l, d                                        ; $580e: $6a

jr_081_580f:
	ld   l, e                                        ; $580f: $6b
	ld   l, h                                        ; $5810: $6c
	ld   l, l                                        ; $5811: $6d
	ld   l, [hl]                                     ; $5812: $6e
	ld   l, [hl]                                     ; $5813: $6e
	ld   l, [hl]                                     ; $5814: $6e
	ld   l, [hl]                                     ; $5815: $6e
	ld   l, [hl]                                     ; $5816: $6e
	ld   l, [hl]                                     ; $5817: $6e
	ld   l, [hl]                                     ; $5818: $6e
	ld   l, [hl]                                     ; $5819: $6e
	ld   l, [hl]                                     ; $581a: $6e
	ld   l, [hl]                                     ; $581b: $6e
	ld   l, [hl]                                     ; $581c: $6e
	ld   l, [hl]                                     ; $581d: $6e
	ld   l, [hl]                                     ; $581e: $6e
	ld   l, [hl]                                     ; $581f: $6e
	ld   l, [hl]                                     ; $5820: $6e
	ld   l, [hl]                                     ; $5821: $6e
	ld   l, [hl]                                     ; $5822: $6e
	ld   l, [hl]                                     ; $5823: $6e
	ld   l, l                                        ; $5824: $6d
	dec  b                                           ; $5825: $05
	dec  b                                           ; $5826: $05
	dec  b                                           ; $5827: $05
	dec  b                                           ; $5828: $05
	dec  b                                           ; $5829: $05
	dec  b                                           ; $582a: $05
	dec  b                                           ; $582b: $05
	inc  bc                                          ; $582c: $03
	inc  bc                                          ; $582d: $03
	inc  bc                                          ; $582e: $03
	inc  bc                                          ; $582f: $03
	inc  bc                                          ; $5830: $03
	inc  bc                                          ; $5831: $03
	dec  b                                           ; $5832: $05
	dec  b                                           ; $5833: $05
	dec  b                                           ; $5834: $05
	dec  h                                           ; $5835: $25
	dec  h                                           ; $5836: $25
	dec  h                                           ; $5837: $25
	dec  h                                           ; $5838: $25
	dec  b                                           ; $5839: $05
	dec  b                                           ; $583a: $05
	dec  b                                           ; $583b: $05
	dec  b                                           ; $583c: $05
	dec  b                                           ; $583d: $05
	dec  b                                           ; $583e: $05
	dec  b                                           ; $583f: $05
	inc  bc                                          ; $5840: $03
	inc  bc                                          ; $5841: $03
	inc  bc                                          ; $5842: $03
	inc  bc                                          ; $5843: $03
	inc  bc                                          ; $5844: $03
	inc  bc                                          ; $5845: $03
	dec  b                                           ; $5846: $05
	dec  b                                           ; $5847: $05
	dec  b                                           ; $5848: $05
	dec  b                                           ; $5849: $05
	dec  h                                           ; $584a: $25
	dec  h                                           ; $584b: $25
	dec  h                                           ; $584c: $25
	dec  b                                           ; $584d: $05
	dec  b                                           ; $584e: $05
	dec  b                                           ; $584f: $05
	dec  b                                           ; $5850: $05
	dec  b                                           ; $5851: $05
	dec  b                                           ; $5852: $05
	dec  b                                           ; $5853: $05
	inc  bc                                          ; $5854: $03
	inc  bc                                          ; $5855: $03
	inc  bc                                          ; $5856: $03
	inc  bc                                          ; $5857: $03
	inc  bc                                          ; $5858: $03
	inc  bc                                          ; $5859: $03
	dec  b                                           ; $585a: $05
	dec  b                                           ; $585b: $05
	dec  b                                           ; $585c: $05
	dec  b                                           ; $585d: $05
	dec  b                                           ; $585e: $05
	dec  h                                           ; $585f: $25
	dec  h                                           ; $5860: $25
	dec  b                                           ; $5861: $05
	dec  b                                           ; $5862: $05
	dec  b                                           ; $5863: $05
	dec  b                                           ; $5864: $05
	dec  b                                           ; $5865: $05
	dec  b                                           ; $5866: $05
	dec  b                                           ; $5867: $05
	inc  bc                                          ; $5868: $03
	inc  bc                                          ; $5869: $03
	inc  bc                                          ; $586a: $03
	inc  bc                                          ; $586b: $03
	inc  bc                                          ; $586c: $03
	inc  bc                                          ; $586d: $03
	dec  b                                           ; $586e: $05
	dec  b                                           ; $586f: $05
	dec  b                                           ; $5870: $05
	dec  b                                           ; $5871: $05
	dec  b                                           ; $5872: $05
	dec  h                                           ; $5873: $25
	dec  h                                           ; $5874: $25
	dec  b                                           ; $5875: $05
	dec  b                                           ; $5876: $05
	dec  b                                           ; $5877: $05
	dec  b                                           ; $5878: $05
	dec  b                                           ; $5879: $05
	dec  b                                           ; $587a: $05
	dec  b                                           ; $587b: $05
	inc  bc                                          ; $587c: $03
	inc  bc                                          ; $587d: $03
	inc  bc                                          ; $587e: $03
	inc  bc                                          ; $587f: $03
	inc  bc                                          ; $5880: $03
	inc  bc                                          ; $5881: $03
	dec  b                                           ; $5882: $05
	dec  b                                           ; $5883: $05
	dec  b                                           ; $5884: $05
	dec  b                                           ; $5885: $05
	dec  b                                           ; $5886: $05
	dec  h                                           ; $5887: $25
	dec  h                                           ; $5888: $25
	inc  bc                                          ; $5889: $03
	inc  bc                                          ; $588a: $03
	inc  bc                                          ; $588b: $03
	inc  bc                                          ; $588c: $03
	inc  bc                                          ; $588d: $03
	inc  bc                                          ; $588e: $03
	inc  bc                                          ; $588f: $03
	inc  bc                                          ; $5890: $03
	inc  bc                                          ; $5891: $03
	inc  bc                                          ; $5892: $03
	inc  bc                                          ; $5893: $03
	inc  bc                                          ; $5894: $03
	inc  bc                                          ; $5895: $03
	inc  bc                                          ; $5896: $03
	inc  bc                                          ; $5897: $03
	inc  bc                                          ; $5898: $03
	inc  bc                                          ; $5899: $03
	inc  bc                                          ; $589a: $03
	inc  bc                                          ; $589b: $03
	inc  bc                                          ; $589c: $03
	inc  bc                                          ; $589d: $03
	inc  bc                                          ; $589e: $03
	inc  bc                                          ; $589f: $03
	inc  bc                                          ; $58a0: $03
	inc  bc                                          ; $58a1: $03
	inc  bc                                          ; $58a2: $03
	inc  bc                                          ; $58a3: $03
	inc  bc                                          ; $58a4: $03
	inc  bc                                          ; $58a5: $03
	inc  bc                                          ; $58a6: $03
	inc  bc                                          ; $58a7: $03
	inc  bc                                          ; $58a8: $03
	inc  bc                                          ; $58a9: $03
	inc  bc                                          ; $58aa: $03
	inc  bc                                          ; $58ab: $03
	inc  bc                                          ; $58ac: $03
	inc  bc                                          ; $58ad: $03
	inc  bc                                          ; $58ae: $03
	inc  bc                                          ; $58af: $03
	inc  bc                                          ; $58b0: $03
	inc  bc                                          ; $58b1: $03
	inc  bc                                          ; $58b2: $03
	inc  bc                                          ; $58b3: $03
	inc  bc                                          ; $58b4: $03
	inc  bc                                          ; $58b5: $03
	inc  bc                                          ; $58b6: $03
	inc  bc                                          ; $58b7: $03
	inc  bc                                          ; $58b8: $03
	inc  bc                                          ; $58b9: $03
	inc  bc                                          ; $58ba: $03
	inc  bc                                          ; $58bb: $03
	inc  bc                                          ; $58bc: $03
	inc  bc                                          ; $58bd: $03
	inc  bc                                          ; $58be: $03
	inc  bc                                          ; $58bf: $03
	inc  bc                                          ; $58c0: $03
	inc  bc                                          ; $58c1: $03
	inc  bc                                          ; $58c2: $03
	inc  bc                                          ; $58c3: $03
	inc  bc                                          ; $58c4: $03
	inc  b                                           ; $58c5: $04
	inc  b                                           ; $58c6: $04
	inc  b                                           ; $58c7: $04
	inc  b                                           ; $58c8: $04
	inc  b                                           ; $58c9: $04
	inc  b                                           ; $58ca: $04
	inc  b                                           ; $58cb: $04
	inc  b                                           ; $58cc: $04
	inc  b                                           ; $58cd: $04
	inc  b                                           ; $58ce: $04
	inc  b                                           ; $58cf: $04
	inc  b                                           ; $58d0: $04
	inc  b                                           ; $58d1: $04
	inc  b                                           ; $58d2: $04
	inc  b                                           ; $58d3: $04
	inc  b                                           ; $58d4: $04
	inc  b                                           ; $58d5: $04
	inc  b                                           ; $58d6: $04
	inc  b                                           ; $58d7: $04
	inc  b                                           ; $58d8: $04
	inc  b                                           ; $58d9: $04
	inc  b                                           ; $58da: $04
	inc  b                                           ; $58db: $04
	inc  b                                           ; $58dc: $04
	inc  b                                           ; $58dd: $04
	inc  b                                           ; $58de: $04
	inc  b                                           ; $58df: $04
	inc  b                                           ; $58e0: $04
	inc  b                                           ; $58e1: $04
	inc  b                                           ; $58e2: $04
	inc  b                                           ; $58e3: $04
	inc  b                                           ; $58e4: $04
	inc  b                                           ; $58e5: $04
	inc  b                                           ; $58e6: $04
	inc  b                                           ; $58e7: $04
	inc  b                                           ; $58e8: $04
	inc  b                                           ; $58e9: $04
	inc  b                                           ; $58ea: $04
	inc  b                                           ; $58eb: $04
	inc  h                                           ; $58ec: $24
	nop                                              ; $58ed: $00
	ld   bc, $0302                                   ; $58ee: $01 $02 $03
	inc  b                                           ; $58f1: $04
	inc  b                                           ; $58f2: $04
	inc  b                                           ; $58f3: $04
	dec  b                                           ; $58f4: $05
	ld   l, a                                        ; $58f5: $6f
	ld   [hl], b                                     ; $58f6: $70
	ld   [hl], c                                     ; $58f7: $71
	ld   [hl], d                                     ; $58f8: $72
	rlca                                             ; $58f9: $07
	inc  b                                           ; $58fa: $04
	inc  b                                           ; $58fb: $04
	inc  b                                           ; $58fc: $04
	inc  bc                                          ; $58fd: $03
	ld   [bc], a                                     ; $58fe: $02
	ld   bc, $0800                                   ; $58ff: $01 $00 $08
	add  hl, bc                                      ; $5902: $09
	ld   a, [bc]                                     ; $5903: $0a
	inc  b                                           ; $5904: $04
	inc  b                                           ; $5905: $04
	inc  b                                           ; $5906: $04
	inc  b                                           ; $5907: $04
	ld   [hl], e                                     ; $5908: $73
	ld   [hl], h                                     ; $5909: $74
	ld   [hl], l                                     ; $590a: $75
	halt                                             ; $590b: $76
	ld   [hl], a                                     ; $590c: $77
	db   $10                                         ; $590d: $10
	inc  b                                           ; $590e: $04
	inc  b                                           ; $590f: $04
	inc  b                                           ; $5910: $04
	inc  b                                           ; $5911: $04
	ld   a, [bc]                                     ; $5912: $0a
	add  hl, bc                                      ; $5913: $09
	ld   [$1211], sp                                 ; $5914: $08 $11 $12
	inc  b                                           ; $5917: $04
	inc  b                                           ; $5918: $04
	inc  b                                           ; $5919: $04
	inc  b                                           ; $591a: $04
	inc  b                                           ; $591b: $04
	ld   a, b                                        ; $591c: $78
	ld   a, c                                        ; $591d: $79
	ld   a, d                                        ; $591e: $7a
	ld   a, e                                        ; $591f: $7b
	ld   a, h                                        ; $5920: $7c
	db   $10                                         ; $5921: $10
	inc  b                                           ; $5922: $04
	inc  b                                           ; $5923: $04
	inc  b                                           ; $5924: $04
	inc  b                                           ; $5925: $04
	inc  b                                           ; $5926: $04
	ld   [de], a                                     ; $5927: $12
	ld   de, $0418                                   ; $5928: $11 $18 $04
	inc  b                                           ; $592b: $04
	inc  b                                           ; $592c: $04
	inc  b                                           ; $592d: $04
	inc  b                                           ; $592e: $04
	inc  b                                           ; $592f: $04
	ld   a, b                                        ; $5930: $78
	ld   a, l                                        ; $5931: $7d
	ld   a, [hl]                                     ; $5932: $7e
	ld   a, a                                        ; $5933: $7f
	nop                                              ; $5934: $00
	db   $10                                         ; $5935: $10
	inc  b                                           ; $5936: $04
	inc  b                                           ; $5937: $04
	inc  b                                           ; $5938: $04
	inc  b                                           ; $5939: $04
	inc  b                                           ; $593a: $04
	inc  b                                           ; $593b: $04
	jr   @+$1f                                       ; $593c: $18 $1d

	ld   e, $1e                                      ; $593e: $1e $1e
	ld   e, $1e                                      ; $5940: $1e $1e
	ld   e, $1e                                      ; $5942: $1e $1e
	ld   bc, $0302                                   ; $5944: $01 $02 $03
	inc  b                                           ; $5947: $04
	dec  b                                           ; $5948: $05
	inc  h                                           ; $5949: $24
	ld   e, $1e                                      ; $594a: $1e $1e
	ld   e, $1e                                      ; $594c: $1e $1e
	ld   e, $1e                                      ; $594e: $1e $1e
	dec  e                                           ; $5950: $1d
	dec  h                                           ; $5951: $25
	ld   h, $27                                      ; $5952: $26 $27
	jr   z, jr_081_597f                              ; $5954: $28 $29

	ld   a, [hl+]                                    ; $5956: $2a
	dec  hl                                          ; $5957: $2b
	ld   b, $07                                      ; $5958: $06 $07
	ld   [$0a09], sp                                 ; $595a: $08 $09 $0a
	ld   sp, $3332                                   ; $595d: $31 $32 $33
	inc  [hl]                                        ; $5960: $34
	dec  [hl]                                        ; $5961: $35
	ld   [hl], $37                                   ; $5962: $36 $37
	jr   c, jr_081_599f                              ; $5964: $38 $39

	ld   a, [hl-]                                    ; $5966: $3a
	dec  sp                                          ; $5967: $3b
	inc  a                                           ; $5968: $3c
	dec  a                                           ; $5969: $3d
	ld   a, $3f                                      ; $596a: $3e $3f
	dec  bc                                          ; $596c: $0b
	inc  c                                           ; $596d: $0c
	dec  c                                           ; $596e: $0d
	ld   c, $0f                                      ; $596f: $0e $0f
	ld   b, l                                        ; $5971: $45
	ld   b, [hl]                                     ; $5972: $46
	ld   b, a                                        ; $5973: $47
	ld   c, b                                        ; $5974: $48
	ld   c, c                                        ; $5975: $49
	ld   c, d                                        ; $5976: $4a
	ld   c, e                                        ; $5977: $4b
	ld   c, h                                        ; $5978: $4c
	ld   c, l                                        ; $5979: $4d
	ld   c, [hl]                                     ; $597a: $4e
	ld   c, a                                        ; $597b: $4f
	ld   d, b                                        ; $597c: $50
	ld   d, c                                        ; $597d: $51
	ld   d, d                                        ; $597e: $52

jr_081_597f:
	ld   d, e                                        ; $597f: $53
	dec  bc                                          ; $5980: $0b
	inc  c                                           ; $5981: $0c
	db   $10                                         ; $5982: $10
	ld   de, $5912                                   ; $5983: $11 $12 $59
	ld   e, d                                        ; $5986: $5a
	ld   e, e                                        ; $5987: $5b
	ld   e, h                                        ; $5988: $5c
	ld   e, l                                        ; $5989: $5d
	ld   e, [hl]                                     ; $598a: $5e
	ld   e, a                                        ; $598b: $5f
	ld   h, b                                        ; $598c: $60
	ld   h, c                                        ; $598d: $61
	ld   h, d                                        ; $598e: $62
	ld   h, e                                        ; $598f: $63
	ld   h, d                                        ; $5990: $62
	ld   h, d                                        ; $5991: $62
	ld   h, d                                        ; $5992: $62
	ld   h, d                                        ; $5993: $62
	inc  de                                          ; $5994: $13
	inc  d                                           ; $5995: $14
	dec  d                                           ; $5996: $15
	ld   d, $17                                      ; $5997: $16 $17
	ld   l, b                                        ; $5999: $68
	ld   l, c                                        ; $599a: $69
	ld   l, e                                        ; $599b: $6b
	ld   h, d                                        ; $599c: $62
	ld   h, d                                        ; $599d: $62
	ld   l, d                                        ; $599e: $6a

jr_081_599f:
	ld   l, e                                        ; $599f: $6b
	ld   l, h                                        ; $59a0: $6c
	ld   l, l                                        ; $59a1: $6d
	ld   l, [hl]                                     ; $59a2: $6e
	ld   l, [hl]                                     ; $59a3: $6e
	ld   l, [hl]                                     ; $59a4: $6e
	ld   l, [hl]                                     ; $59a5: $6e
	ld   l, [hl]                                     ; $59a6: $6e
	ld   l, [hl]                                     ; $59a7: $6e
	ld   l, [hl]                                     ; $59a8: $6e
	jr   jr_081_59c4                                 ; $59a9: $18 $19

	ld   l, [hl]                                     ; $59ab: $6e
	ld   l, [hl]                                     ; $59ac: $6e
	ld   l, [hl]                                     ; $59ad: $6e
	ld   l, [hl]                                     ; $59ae: $6e
	ld   l, [hl]                                     ; $59af: $6e
	ld   l, [hl]                                     ; $59b0: $6e
	ld   l, [hl]                                     ; $59b1: $6e
	ld   l, [hl]                                     ; $59b2: $6e
	ld   l, [hl]                                     ; $59b3: $6e
	ld   l, l                                        ; $59b4: $6d
	dec  b                                           ; $59b5: $05
	dec  b                                           ; $59b6: $05
	dec  b                                           ; $59b7: $05
	dec  b                                           ; $59b8: $05
	dec  b                                           ; $59b9: $05
	dec  b                                           ; $59ba: $05
	dec  b                                           ; $59bb: $05
	inc  bc                                          ; $59bc: $03
	inc  bc                                          ; $59bd: $03
	inc  bc                                          ; $59be: $03
	inc  bc                                          ; $59bf: $03
	inc  bc                                          ; $59c0: $03
	inc  bc                                          ; $59c1: $03
	dec  b                                           ; $59c2: $05
	dec  b                                           ; $59c3: $05

jr_081_59c4:
	dec  b                                           ; $59c4: $05
	dec  h                                           ; $59c5: $25
	dec  h                                           ; $59c6: $25
	dec  h                                           ; $59c7: $25
	dec  h                                           ; $59c8: $25
	dec  b                                           ; $59c9: $05
	dec  b                                           ; $59ca: $05
	dec  b                                           ; $59cb: $05
	dec  b                                           ; $59cc: $05
	dec  b                                           ; $59cd: $05
	dec  b                                           ; $59ce: $05
	dec  b                                           ; $59cf: $05
	inc  bc                                          ; $59d0: $03
	inc  bc                                          ; $59d1: $03
	inc  bc                                          ; $59d2: $03
	inc  bc                                          ; $59d3: $03
	inc  bc                                          ; $59d4: $03
	inc  bc                                          ; $59d5: $03
	dec  b                                           ; $59d6: $05
	dec  b                                           ; $59d7: $05
	dec  b                                           ; $59d8: $05
	dec  b                                           ; $59d9: $05
	dec  h                                           ; $59da: $25
	dec  h                                           ; $59db: $25
	dec  h                                           ; $59dc: $25
	dec  b                                           ; $59dd: $05
	dec  b                                           ; $59de: $05
	dec  b                                           ; $59df: $05
	dec  b                                           ; $59e0: $05
	dec  b                                           ; $59e1: $05
	dec  b                                           ; $59e2: $05
	dec  b                                           ; $59e3: $05
	inc  bc                                          ; $59e4: $03
	inc  bc                                          ; $59e5: $03
	inc  bc                                          ; $59e6: $03
	inc  bc                                          ; $59e7: $03
	inc  bc                                          ; $59e8: $03
	inc  bc                                          ; $59e9: $03
	dec  b                                           ; $59ea: $05
	dec  b                                           ; $59eb: $05
	dec  b                                           ; $59ec: $05
	dec  b                                           ; $59ed: $05
	dec  b                                           ; $59ee: $05
	dec  h                                           ; $59ef: $25
	dec  h                                           ; $59f0: $25
	dec  b                                           ; $59f1: $05
	dec  b                                           ; $59f2: $05
	dec  b                                           ; $59f3: $05
	dec  b                                           ; $59f4: $05
	dec  b                                           ; $59f5: $05
	dec  b                                           ; $59f6: $05
	dec  b                                           ; $59f7: $05
	inc  bc                                          ; $59f8: $03
	inc  bc                                          ; $59f9: $03
	inc  bc                                          ; $59fa: $03
	inc  bc                                          ; $59fb: $03
	dec  bc                                          ; $59fc: $0b
	inc  bc                                          ; $59fd: $03
	dec  b                                           ; $59fe: $05
	dec  b                                           ; $59ff: $05
	dec  b                                           ; $5a00: $05
	dec  b                                           ; $5a01: $05
	dec  b                                           ; $5a02: $05
	dec  h                                           ; $5a03: $25
	dec  h                                           ; $5a04: $25
	dec  b                                           ; $5a05: $05
	dec  b                                           ; $5a06: $05
	dec  b                                           ; $5a07: $05
	dec  b                                           ; $5a08: $05
	dec  b                                           ; $5a09: $05
	dec  b                                           ; $5a0a: $05
	dec  b                                           ; $5a0b: $05
	dec  bc                                          ; $5a0c: $0b
	dec  bc                                          ; $5a0d: $0b
	dec  bc                                          ; $5a0e: $0b
	dec  bc                                          ; $5a0f: $0b
	dec  bc                                          ; $5a10: $0b
	inc  bc                                          ; $5a11: $03
	dec  b                                           ; $5a12: $05
	dec  b                                           ; $5a13: $05
	dec  b                                           ; $5a14: $05
	dec  b                                           ; $5a15: $05
	dec  b                                           ; $5a16: $05
	dec  h                                           ; $5a17: $25
	dec  h                                           ; $5a18: $25
	inc  bc                                          ; $5a19: $03
	inc  bc                                          ; $5a1a: $03
	inc  bc                                          ; $5a1b: $03
	inc  bc                                          ; $5a1c: $03
	inc  bc                                          ; $5a1d: $03
	inc  bc                                          ; $5a1e: $03
	inc  bc                                          ; $5a1f: $03
	dec  bc                                          ; $5a20: $0b
	dec  c                                           ; $5a21: $0d
	dec  bc                                          ; $5a22: $0b
	dec  bc                                          ; $5a23: $0b
	dec  bc                                          ; $5a24: $0b
	inc  bc                                          ; $5a25: $03
	inc  bc                                          ; $5a26: $03
	inc  bc                                          ; $5a27: $03
	inc  bc                                          ; $5a28: $03
	inc  bc                                          ; $5a29: $03
	inc  bc                                          ; $5a2a: $03
	inc  bc                                          ; $5a2b: $03
	inc  bc                                          ; $5a2c: $03
	inc  bc                                          ; $5a2d: $03
	inc  bc                                          ; $5a2e: $03
	inc  bc                                          ; $5a2f: $03
	inc  bc                                          ; $5a30: $03
	inc  bc                                          ; $5a31: $03
	inc  bc                                          ; $5a32: $03
	inc  bc                                          ; $5a33: $03
	dec  bc                                          ; $5a34: $0b
	dec  c                                           ; $5a35: $0d
	dec  bc                                          ; $5a36: $0b
	dec  bc                                          ; $5a37: $0b
	dec  bc                                          ; $5a38: $0b
	inc  bc                                          ; $5a39: $03
	inc  bc                                          ; $5a3a: $03
	inc  bc                                          ; $5a3b: $03
	inc  bc                                          ; $5a3c: $03
	inc  bc                                          ; $5a3d: $03
	inc  bc                                          ; $5a3e: $03
	inc  bc                                          ; $5a3f: $03
	inc  bc                                          ; $5a40: $03
	inc  bc                                          ; $5a41: $03
	inc  bc                                          ; $5a42: $03
	inc  bc                                          ; $5a43: $03
	inc  bc                                          ; $5a44: $03
	inc  bc                                          ; $5a45: $03
	inc  bc                                          ; $5a46: $03
	inc  bc                                          ; $5a47: $03
	dec  bc                                          ; $5a48: $0b
	dec  c                                           ; $5a49: $0d
	dec  bc                                          ; $5a4a: $0b
	dec  bc                                          ; $5a4b: $0b
	dec  bc                                          ; $5a4c: $0b
	inc  bc                                          ; $5a4d: $03
	inc  bc                                          ; $5a4e: $03
	inc  bc                                          ; $5a4f: $03
	inc  bc                                          ; $5a50: $03
	inc  bc                                          ; $5a51: $03
	inc  bc                                          ; $5a52: $03
	inc  bc                                          ; $5a53: $03
	inc  bc                                          ; $5a54: $03
	inc  b                                           ; $5a55: $04
	inc  b                                           ; $5a56: $04
	inc  b                                           ; $5a57: $04
	inc  b                                           ; $5a58: $04
	inc  b                                           ; $5a59: $04
	inc  b                                           ; $5a5a: $04
	inc  b                                           ; $5a5b: $04
	dec  c                                           ; $5a5c: $0d
	dec  c                                           ; $5a5d: $0d
	inc  c                                           ; $5a5e: $0c
	inc  c                                           ; $5a5f: $0c
	inc  c                                           ; $5a60: $0c
	inc  b                                           ; $5a61: $04
	inc  b                                           ; $5a62: $04
	inc  b                                           ; $5a63: $04
	inc  b                                           ; $5a64: $04
	inc  b                                           ; $5a65: $04
	inc  b                                           ; $5a66: $04
	inc  b                                           ; $5a67: $04
	inc  b                                           ; $5a68: $04
	inc  b                                           ; $5a69: $04
	inc  b                                           ; $5a6a: $04
	inc  b                                           ; $5a6b: $04
	inc  b                                           ; $5a6c: $04
	inc  b                                           ; $5a6d: $04
	inc  b                                           ; $5a6e: $04
	inc  b                                           ; $5a6f: $04
	inc  b                                           ; $5a70: $04
	inc  c                                           ; $5a71: $0c
	inc  c                                           ; $5a72: $0c
	inc  b                                           ; $5a73: $04
	inc  b                                           ; $5a74: $04
	inc  b                                           ; $5a75: $04
	inc  b                                           ; $5a76: $04
	inc  b                                           ; $5a77: $04
	inc  b                                           ; $5a78: $04
	inc  b                                           ; $5a79: $04
	inc  b                                           ; $5a7a: $04
	inc  b                                           ; $5a7b: $04
	inc  h                                           ; $5a7c: $24
	nop                                              ; $5a7d: $00
	ld   bc, $0302                                   ; $5a7e: $01 $02 $03
	inc  b                                           ; $5a81: $04
	dec  b                                           ; $5a82: $05
	ld   b, $07                                      ; $5a83: $06 $07
	ld   [$0a09], sp                                 ; $5a85: $08 $09 $0a
	dec  bc                                          ; $5a88: $0b
	inc  c                                           ; $5a89: $0c
	dec  c                                           ; $5a8a: $0d
	ld   c, $0f                                      ; $5a8b: $0e $0f
	jr   nz, jr_081_5ab0                             ; $5a8d: $20 $21

	ld   [hl+], a                                    ; $5a8f: $22
	inc  hl                                          ; $5a90: $23
	db   $10                                         ; $5a91: $10
	ld   de, $1312                                   ; $5a92: $11 $12 $13
	inc  d                                           ; $5a95: $14
	dec  d                                           ; $5a96: $15
	ld   d, $17                                      ; $5a97: $16 $17
	jr   jr_081_5ab4                                 ; $5a99: $18 $19

	ld   a, [de]                                     ; $5a9b: $1a
	dec  de                                          ; $5a9c: $1b
	inc  e                                           ; $5a9d: $1c
	dec  e                                           ; $5a9e: $1d
	dec  d                                           ; $5a9f: $15
	rra                                              ; $5aa0: $1f
	jr   nc, jr_081_5ad4                             ; $5aa1: $30 $31

	ld   [hl-], a                                    ; $5aa3: $32
	inc  sp                                          ; $5aa4: $33
	jr   nz, @+$23                                   ; $5aa5: $20 $21

	ld   [hl+], a                                    ; $5aa7: $22
	inc  hl                                          ; $5aa8: $23
	inc  h                                           ; $5aa9: $24
	dec  h                                           ; $5aaa: $25
	ld   h, $27                                      ; $5aab: $26 $27
	jr   z, jr_081_5ad8                              ; $5aad: $28 $29

	ld   a, [hl+]                                    ; $5aaf: $2a

jr_081_5ab0:
	dec  hl                                          ; $5ab0: $2b
	inc  l                                           ; $5ab1: $2c
	dec  l                                           ; $5ab2: $2d
	dec  h                                           ; $5ab3: $25

jr_081_5ab4:
	cpl                                              ; $5ab4: $2f
	inc  h                                           ; $5ab5: $24
	dec  h                                           ; $5ab6: $25
	ld   h, $27                                      ; $5ab7: $26 $27
	jr   nc, jr_081_5aec                             ; $5ab9: $30 $31

	ld   [hl-], a                                    ; $5abb: $32
	inc  sp                                          ; $5abc: $33
	inc  [hl]                                        ; $5abd: $34
	dec  [hl]                                        ; $5abe: $35
	ld   [hl], $37                                   ; $5abf: $36 $37
	jr   c, jr_081_5afc                              ; $5ac1: $38 $39

	ld   a, [hl-]                                    ; $5ac3: $3a
	dec  sp                                          ; $5ac4: $3b
	inc  a                                           ; $5ac5: $3c
	dec  a                                           ; $5ac6: $3d
	ld   a, $3f                                      ; $5ac7: $3e $3f
	inc  [hl]                                        ; $5ac9: $34
	dec  [hl]                                        ; $5aca: $35
	ld   [hl], $37                                   ; $5acb: $36 $37
	ld   b, b                                        ; $5acd: $40
	ld   b, c                                        ; $5ace: $41
	ld   [hl-], a                                    ; $5acf: $32
	ld   b, e                                        ; $5ad0: $43
	ld   b, h                                        ; $5ad1: $44
	ld   b, l                                        ; $5ad2: $45
	ld   b, [hl]                                     ; $5ad3: $46

jr_081_5ad4:
	ld   b, a                                        ; $5ad4: $47
	ld   c, b                                        ; $5ad5: $48
	ld   c, b                                        ; $5ad6: $48
	ld   c, d                                        ; $5ad7: $4a

jr_081_5ad8:
	ld   c, b                                        ; $5ad8: $48
	ld   c, h                                        ; $5ad9: $4c
	ld   b, [hl]                                     ; $5ada: $46
	ld   b, [hl]                                     ; $5adb: $46
	ld   c, a                                        ; $5adc: $4f
	jr   z, jr_081_5b08                              ; $5add: $28 $29

	ld   a, [hl+]                                    ; $5adf: $2a
	scf                                              ; $5ae0: $37
	ld   d, b                                        ; $5ae1: $50
	ld   d, c                                        ; $5ae2: $51
	ld   d, d                                        ; $5ae3: $52
	ld   d, e                                        ; $5ae4: $53
	ld   d, h                                        ; $5ae5: $54
	ld   d, l                                        ; $5ae6: $55
	ld   d, [hl]                                     ; $5ae7: $56
	ld   d, a                                        ; $5ae8: $57
	ld   e, b                                        ; $5ae9: $58
	ld   e, c                                        ; $5aea: $59
	ld   e, d                                        ; $5aeb: $5a

jr_081_5aec:
	ld   e, e                                        ; $5aec: $5b
	ld   e, h                                        ; $5aed: $5c
	ld   e, l                                        ; $5aee: $5d
	ld   e, [hl]                                     ; $5aef: $5e
	ld   e, a                                        ; $5af0: $5f
	rla                                              ; $5af1: $17
	jr   jr_081_5b0d                                 ; $5af2: $18 $19

	scf                                              ; $5af4: $37
	ld   h, b                                        ; $5af5: $60
	ld   h, c                                        ; $5af6: $61
	ld   h, d                                        ; $5af7: $62
	ld   h, e                                        ; $5af8: $63
	ld   h, h                                        ; $5af9: $64
	ld   h, l                                        ; $5afa: $65
	ld   h, [hl]                                     ; $5afb: $66

jr_081_5afc:
	ld   h, a                                        ; $5afc: $67
	ld   l, b                                        ; $5afd: $68
	ld   l, c                                        ; $5afe: $69
	ld   l, d                                        ; $5aff: $6a
	ld   l, e                                        ; $5b00: $6b
	ld   l, h                                        ; $5b01: $6c
	ld   l, l                                        ; $5b02: $6d
	ld   l, [hl]                                     ; $5b03: $6e
	ld   l, a                                        ; $5b04: $6f
	dec  hl                                          ; $5b05: $2b
	inc  l                                           ; $5b06: $2c
	dec  l                                           ; $5b07: $2d

jr_081_5b08:
	scf                                              ; $5b08: $37
	ld   [hl], b                                     ; $5b09: $70
	ld   [hl], c                                     ; $5b0a: $71
	ld   h, d                                        ; $5b0b: $62
	ld   [hl], e                                     ; $5b0c: $73

jr_081_5b0d:
	ld   [hl], h                                     ; $5b0d: $74
	ld   [hl], l                                     ; $5b0e: $75
	halt                                             ; $5b0f: $76
	ld   [hl], a                                     ; $5b10: $77
	ld   a, b                                        ; $5b11: $78
	ld   a, c                                        ; $5b12: $79
	ld   a, d                                        ; $5b13: $7a
	ld   a, b                                        ; $5b14: $78
	ld   a, h                                        ; $5b15: $7c
	ld   a, l                                        ; $5b16: $7d
	ld   a, [hl]                                     ; $5b17: $7e
	ld   a, a                                        ; $5b18: $7f
	ld   a, [de]                                     ; $5b19: $1a
	dec  de                                          ; $5b1a: $1b
	inc  e                                           ; $5b1b: $1c
	scf                                              ; $5b1c: $37
	nop                                              ; $5b1d: $00
	ld   bc, $0302                                   ; $5b1e: $01 $02 $03
	inc  b                                           ; $5b21: $04
	dec  b                                           ; $5b22: $05
	ld   b, $07                                      ; $5b23: $06 $07
	ld   [$0a09], sp                                 ; $5b25: $08 $09 $0a
	ld   [$0d0c], sp                                 ; $5b28: $08 $0c $0d
	ld   c, $0f                                      ; $5b2b: $0e $0f
	ld   l, $2f                                      ; $5b2d: $2e $2f
	ld   [hl], d                                     ; $5b2f: $72
	scf                                              ; $5b30: $37
	db   $10                                         ; $5b31: $10
	ld   de, $1312                                   ; $5b32: $11 $12 $13
	inc  d                                           ; $5b35: $14
	dec  d                                           ; $5b36: $15
	ld   d, $46                                      ; $5b37: $16 $46
	ld   b, [hl]                                     ; $5b39: $46
	ld   b, [hl]                                     ; $5b3a: $46
	ld   b, [hl]                                     ; $5b3b: $46
	ld   b, [hl]                                     ; $5b3c: $46
	ld   b, [hl]                                     ; $5b3d: $46
	dec  e                                           ; $5b3e: $1d
	ld   e, $1f                                      ; $5b3f: $1e $1f
	dec  bc                                          ; $5b41: $0b
	ld   a, e                                        ; $5b42: $7b
	ld   c, [hl]                                     ; $5b43: $4e
	scf                                              ; $5b44: $37
	dec  b                                           ; $5b45: $05
	dec  b                                           ; $5b46: $05
	dec  b                                           ; $5b47: $05
	inc  bc                                          ; $5b48: $03
	inc  bc                                          ; $5b49: $03
	inc  bc                                          ; $5b4a: $03
	inc  bc                                          ; $5b4b: $03
	inc  bc                                          ; $5b4c: $03
	inc  bc                                          ; $5b4d: $03
	inc  bc                                          ; $5b4e: $03
	inc  bc                                          ; $5b4f: $03
	inc  bc                                          ; $5b50: $03
	inc  bc                                          ; $5b51: $03
	inc  bc                                          ; $5b52: $03
	inc  bc                                          ; $5b53: $03
	inc  bc                                          ; $5b54: $03
	dec  bc                                          ; $5b55: $0b
	dec  bc                                          ; $5b56: $0b
	dec  c                                           ; $5b57: $0d
	dec  c                                           ; $5b58: $0d
	dec  b                                           ; $5b59: $05
	dec  b                                           ; $5b5a: $05
	dec  b                                           ; $5b5b: $05
	dec  b                                           ; $5b5c: $05
	inc  bc                                          ; $5b5d: $03
	inc  bc                                          ; $5b5e: $03
	inc  bc                                          ; $5b5f: $03
	inc  bc                                          ; $5b60: $03
	inc  bc                                          ; $5b61: $03
	inc  bc                                          ; $5b62: $03
	inc  bc                                          ; $5b63: $03
	inc  bc                                          ; $5b64: $03
	inc  bc                                          ; $5b65: $03
	inc  bc                                          ; $5b66: $03
	inc  bc                                          ; $5b67: $03
	inc  bc                                          ; $5b68: $03
	dec  c                                           ; $5b69: $0d
	dec  c                                           ; $5b6a: $0d
	dec  c                                           ; $5b6b: $0d
	dec  bc                                          ; $5b6c: $0b
	dec  b                                           ; $5b6d: $05
	dec  b                                           ; $5b6e: $05
	dec  b                                           ; $5b6f: $05
	dec  b                                           ; $5b70: $05
	dec  b                                           ; $5b71: $05
	dec  b                                           ; $5b72: $05
	dec  b                                           ; $5b73: $05
	inc  bc                                          ; $5b74: $03
	inc  bc                                          ; $5b75: $03
	inc  bc                                          ; $5b76: $03
	inc  bc                                          ; $5b77: $03
	inc  bc                                          ; $5b78: $03
	inc  bc                                          ; $5b79: $03
	dec  b                                           ; $5b7a: $05
	dec  b                                           ; $5b7b: $05
	dec  b                                           ; $5b7c: $05
	dec  c                                           ; $5b7d: $0d
	dec  bc                                          ; $5b7e: $0b
	dec  bc                                          ; $5b7f: $0b
	dec  bc                                          ; $5b80: $0b
	dec  b                                           ; $5b81: $05
	dec  b                                           ; $5b82: $05
	dec  b                                           ; $5b83: $05
	dec  b                                           ; $5b84: $05
	dec  b                                           ; $5b85: $05
	dec  b                                           ; $5b86: $05
	dec  b                                           ; $5b87: $05
	inc  bc                                          ; $5b88: $03
	inc  bc                                          ; $5b89: $03
	inc  bc                                          ; $5b8a: $03
	inc  bc                                          ; $5b8b: $03
	inc  bc                                          ; $5b8c: $03
	inc  bc                                          ; $5b8d: $03
	dec  b                                           ; $5b8e: $05
	dec  b                                           ; $5b8f: $05
	inc  bc                                          ; $5b90: $03
	dec  bc                                          ; $5b91: $0b
	dec  bc                                          ; $5b92: $0b
	dec  bc                                          ; $5b93: $0b
	dec  bc                                          ; $5b94: $0b
	inc  bc                                          ; $5b95: $03
	dec  b                                           ; $5b96: $05
	dec  b                                           ; $5b97: $05
	inc  bc                                          ; $5b98: $03
	inc  bc                                          ; $5b99: $03
	inc  bc                                          ; $5b9a: $03
	inc  bc                                          ; $5b9b: $03
	dec  b                                           ; $5b9c: $05
	inc  bc                                          ; $5b9d: $03
	inc  bc                                          ; $5b9e: $03
	dec  b                                           ; $5b9f: $05
	inc  hl                                          ; $5ba0: $23
	dec  b                                           ; $5ba1: $05
	inc  bc                                          ; $5ba2: $03
	inc  bc                                          ; $5ba3: $03
	inc  bc                                          ; $5ba4: $03
	dec  bc                                          ; $5ba5: $0b
	dec  bc                                          ; $5ba6: $0b
	dec  bc                                          ; $5ba7: $0b
	dec  bc                                          ; $5ba8: $0b
	inc  bc                                          ; $5ba9: $03
	inc  bc                                          ; $5baa: $03
	inc  bc                                          ; $5bab: $03
	inc  bc                                          ; $5bac: $03
	inc  bc                                          ; $5bad: $03
	inc  bc                                          ; $5bae: $03
	inc  bc                                          ; $5baf: $03
	inc  bc                                          ; $5bb0: $03
	inc  bc                                          ; $5bb1: $03
	inc  bc                                          ; $5bb2: $03
	inc  bc                                          ; $5bb3: $03
	inc  bc                                          ; $5bb4: $03
	inc  bc                                          ; $5bb5: $03
	inc  bc                                          ; $5bb6: $03
	inc  bc                                          ; $5bb7: $03
	inc  bc                                          ; $5bb8: $03
	dec  bc                                          ; $5bb9: $0b
	dec  bc                                          ; $5bba: $0b
	dec  bc                                          ; $5bbb: $0b
	dec  bc                                          ; $5bbc: $0b
	inc  bc                                          ; $5bbd: $03
	inc  bc                                          ; $5bbe: $03
	inc  bc                                          ; $5bbf: $03
	inc  bc                                          ; $5bc0: $03
	inc  bc                                          ; $5bc1: $03
	inc  bc                                          ; $5bc2: $03
	inc  bc                                          ; $5bc3: $03
	inc  bc                                          ; $5bc4: $03
	inc  bc                                          ; $5bc5: $03
	inc  bc                                          ; $5bc6: $03
	inc  bc                                          ; $5bc7: $03
	inc  bc                                          ; $5bc8: $03
	inc  bc                                          ; $5bc9: $03
	inc  bc                                          ; $5bca: $03
	inc  bc                                          ; $5bcb: $03
	inc  bc                                          ; $5bcc: $03
	dec  bc                                          ; $5bcd: $0b
	dec  bc                                          ; $5bce: $0b
	dec  bc                                          ; $5bcf: $0b
	dec  bc                                          ; $5bd0: $0b
	inc  bc                                          ; $5bd1: $03
	inc  bc                                          ; $5bd2: $03
	inc  bc                                          ; $5bd3: $03
	inc  bc                                          ; $5bd4: $03
	inc  bc                                          ; $5bd5: $03
	inc  bc                                          ; $5bd6: $03
	inc  bc                                          ; $5bd7: $03
	inc  bc                                          ; $5bd8: $03
	inc  bc                                          ; $5bd9: $03
	inc  bc                                          ; $5bda: $03
	inc  bc                                          ; $5bdb: $03
	inc  bc                                          ; $5bdc: $03
	inc  bc                                          ; $5bdd: $03
	inc  bc                                          ; $5bde: $03
	inc  bc                                          ; $5bdf: $03
	dec  b                                           ; $5be0: $05
	dec  c                                           ; $5be1: $0d
	dec  bc                                          ; $5be2: $0b
	dec  bc                                          ; $5be3: $0b
	dec  bc                                          ; $5be4: $0b
	dec  bc                                          ; $5be5: $0b
	dec  bc                                          ; $5be6: $0b
	dec  bc                                          ; $5be7: $0b
	dec  bc                                          ; $5be8: $0b
	inc  c                                           ; $5be9: $0c
	inc  c                                           ; $5bea: $0c
	inc  c                                           ; $5beb: $0c
	dec  bc                                          ; $5bec: $0b
	dec  bc                                          ; $5bed: $0b
	dec  bc                                          ; $5bee: $0b
	dec  bc                                          ; $5bef: $0b
	dec  bc                                          ; $5bf0: $0b
	dec  bc                                          ; $5bf1: $0b
	inc  c                                           ; $5bf2: $0c
	inc  c                                           ; $5bf3: $0c
	dec  c                                           ; $5bf4: $0d
	dec  c                                           ; $5bf5: $0d
	dec  bc                                          ; $5bf6: $0b
	inc  bc                                          ; $5bf7: $03
	dec  bc                                          ; $5bf8: $0b
	dec  bc                                          ; $5bf9: $0b
	dec  bc                                          ; $5bfa: $0b
	inc  c                                           ; $5bfb: $0c
	inc  c                                           ; $5bfc: $0c
	inc  c                                           ; $5bfd: $0c
	inc  c                                           ; $5bfe: $0c
	inc  c                                           ; $5bff: $0c
	inc  bc                                          ; $5c00: $03
	inc  bc                                          ; $5c01: $03
	inc  bc                                          ; $5c02: $03
	inc  bc                                          ; $5c03: $03
	inc  bc                                          ; $5c04: $03
	inc  bc                                          ; $5c05: $03
	inc  c                                           ; $5c06: $0c
	inc  c                                           ; $5c07: $0c
	inc  c                                           ; $5c08: $0c
	dec  bc                                          ; $5c09: $0b
	inc  bc                                          ; $5c0a: $03
	inc  bc                                          ; $5c0b: $03
	dec  bc                                          ; $5c0c: $0b
	nop                                              ; $5c0d: $00
	ld   bc, $0302                                   ; $5c0e: $01 $02 $03
	inc  b                                           ; $5c11: $04
	dec  b                                           ; $5c12: $05
	ld   b, $07                                      ; $5c13: $06 $07
	ld   [$0a09], sp                                 ; $5c15: $08 $09 $0a
	dec  bc                                          ; $5c18: $0b
	inc  c                                           ; $5c19: $0c
	dec  c                                           ; $5c1a: $0d
	ld   c, $0f                                      ; $5c1b: $0e $0f
	jr   nz, jr_081_5c40                             ; $5c1d: $20 $21

	ld   [hl+], a                                    ; $5c1f: $22
	inc  hl                                          ; $5c20: $23
	db   $10                                         ; $5c21: $10
	ld   de, $1312                                   ; $5c22: $11 $12 $13
	inc  d                                           ; $5c25: $14
	dec  d                                           ; $5c26: $15
	ld   d, $17                                      ; $5c27: $16 $17
	jr   jr_081_5c44                                 ; $5c29: $18 $19

	ld   a, [de]                                     ; $5c2b: $1a
	dec  de                                          ; $5c2c: $1b
	inc  e                                           ; $5c2d: $1c
	dec  e                                           ; $5c2e: $1d
	dec  d                                           ; $5c2f: $15
	rra                                              ; $5c30: $1f
	jr   nc, jr_081_5c64                             ; $5c31: $30 $31

	ld   [hl-], a                                    ; $5c33: $32
	inc  sp                                          ; $5c34: $33
	jr   nz, @+$23                                   ; $5c35: $20 $21

	ld   [hl+], a                                    ; $5c37: $22
	inc  hl                                          ; $5c38: $23
	inc  h                                           ; $5c39: $24
	dec  h                                           ; $5c3a: $25
	ld   h, $27                                      ; $5c3b: $26 $27
	jr   z, jr_081_5c68                              ; $5c3d: $28 $29

	ld   a, [hl+]                                    ; $5c3f: $2a

jr_081_5c40:
	dec  hl                                          ; $5c40: $2b
	inc  l                                           ; $5c41: $2c
	dec  l                                           ; $5c42: $2d
	dec  h                                           ; $5c43: $25

jr_081_5c44:
	cpl                                              ; $5c44: $2f
	inc  h                                           ; $5c45: $24
	dec  h                                           ; $5c46: $25
	ld   h, $27                                      ; $5c47: $26 $27
	jr   nc, jr_081_5c7c                             ; $5c49: $30 $31

	ld   [hl-], a                                    ; $5c4b: $32
	inc  sp                                          ; $5c4c: $33
	inc  [hl]                                        ; $5c4d: $34
	dec  [hl]                                        ; $5c4e: $35
	ld   [hl], $37                                   ; $5c4f: $36 $37
	jr   c, jr_081_5c8c                              ; $5c51: $38 $39

	ld   a, [hl-]                                    ; $5c53: $3a
	dec  sp                                          ; $5c54: $3b
	inc  a                                           ; $5c55: $3c
	dec  a                                           ; $5c56: $3d
	ld   a, $3f                                      ; $5c57: $3e $3f
	inc  [hl]                                        ; $5c59: $34
	dec  [hl]                                        ; $5c5a: $35
	ld   [hl], $37                                   ; $5c5b: $36 $37
	ld   b, b                                        ; $5c5d: $40
	ld   b, c                                        ; $5c5e: $41
	ld   [hl-], a                                    ; $5c5f: $32
	ld   b, e                                        ; $5c60: $43
	ld   b, h                                        ; $5c61: $44
	ld   b, l                                        ; $5c62: $45
	ld   b, [hl]                                     ; $5c63: $46

jr_081_5c64:
	ld   b, a                                        ; $5c64: $47
	ld   c, b                                        ; $5c65: $48
	ld   c, b                                        ; $5c66: $48
	ld   c, d                                        ; $5c67: $4a

jr_081_5c68:
	ld   c, b                                        ; $5c68: $48
	ld   c, h                                        ; $5c69: $4c
	ld   b, [hl]                                     ; $5c6a: $46
	ld   b, [hl]                                     ; $5c6b: $46
	ld   c, a                                        ; $5c6c: $4f
	jr   z, jr_081_5c98                              ; $5c6d: $28 $29

	ld   a, [hl+]                                    ; $5c6f: $2a
	scf                                              ; $5c70: $37
	ld   d, b                                        ; $5c71: $50
	ld   d, c                                        ; $5c72: $51
	ld   d, d                                        ; $5c73: $52
	ld   d, e                                        ; $5c74: $53
	ld   d, h                                        ; $5c75: $54
	ld   d, l                                        ; $5c76: $55
	ld   d, [hl]                                     ; $5c77: $56
	ld   d, a                                        ; $5c78: $57
	ld   e, b                                        ; $5c79: $58
	ld   c, l                                        ; $5c7a: $4d
	ld   c, e                                        ; $5c7b: $4b

jr_081_5c7c:
	ld   e, e                                        ; $5c7c: $5b
	ld   e, h                                        ; $5c7d: $5c
	ld   e, l                                        ; $5c7e: $5d
	ld   e, [hl]                                     ; $5c7f: $5e
	ld   e, a                                        ; $5c80: $5f
	rla                                              ; $5c81: $17
	jr   jr_081_5c9d                                 ; $5c82: $18 $19

	scf                                              ; $5c84: $37
	ld   h, b                                        ; $5c85: $60
	ld   h, c                                        ; $5c86: $61
	ld   h, d                                        ; $5c87: $62
	ld   h, e                                        ; $5c88: $63
	ld   h, h                                        ; $5c89: $64
	ld   h, l                                        ; $5c8a: $65
	ld   h, [hl]                                     ; $5c8b: $66

jr_081_5c8c:
	ld   h, a                                        ; $5c8c: $67
	ld   c, c                                        ; $5c8d: $49
	ld   b, d                                        ; $5c8e: $42
	ld   l, $1e                                      ; $5c8f: $2e $1e
	ld   l, h                                        ; $5c91: $6c
	ld   l, l                                        ; $5c92: $6d
	ld   l, [hl]                                     ; $5c93: $6e
	ld   l, a                                        ; $5c94: $6f
	dec  hl                                          ; $5c95: $2b
	inc  l                                           ; $5c96: $2c
	dec  l                                           ; $5c97: $2d

jr_081_5c98:
	scf                                              ; $5c98: $37
	ld   [hl], b                                     ; $5c99: $70
	ld   [hl], c                                     ; $5c9a: $71
	ld   h, d                                        ; $5c9b: $62
	ld   [hl], e                                     ; $5c9c: $73

jr_081_5c9d:
	ld   [hl], h                                     ; $5c9d: $74
	ld   [hl], l                                     ; $5c9e: $75
	halt                                             ; $5c9f: $76
	ld   [hl], a                                     ; $5ca0: $77
	ld   a, b                                        ; $5ca1: $78
	ld   a, c                                        ; $5ca2: $79
	ld   a, d                                        ; $5ca3: $7a
	ld   a, b                                        ; $5ca4: $78
	ld   a, h                                        ; $5ca5: $7c
	ld   a, l                                        ; $5ca6: $7d
	ld   a, [hl]                                     ; $5ca7: $7e
	ld   a, a                                        ; $5ca8: $7f
	ld   a, [de]                                     ; $5ca9: $1a
	dec  de                                          ; $5caa: $1b
	inc  e                                           ; $5cab: $1c
	scf                                              ; $5cac: $37
	nop                                              ; $5cad: $00
	ld   bc, $0302                                   ; $5cae: $01 $02 $03
	inc  b                                           ; $5cb1: $04
	dec  b                                           ; $5cb2: $05
	ld   b, $07                                      ; $5cb3: $06 $07
	ld   [$0a09], sp                                 ; $5cb5: $08 $09 $0a
	ld   [$0d0c], sp                                 ; $5cb8: $08 $0c $0d
	ld   c, $0f                                      ; $5cbb: $0e $0f
	ld   l, $2f                                      ; $5cbd: $2e $2f
	ld   [hl], d                                     ; $5cbf: $72
	scf                                              ; $5cc0: $37
	db   $10                                         ; $5cc1: $10
	ld   de, $1312                                   ; $5cc2: $11 $12 $13
	inc  d                                           ; $5cc5: $14
	dec  d                                           ; $5cc6: $15
	ld   d, $46                                      ; $5cc7: $16 $46
	ld   b, [hl]                                     ; $5cc9: $46
	ld   b, [hl]                                     ; $5cca: $46
	ld   b, [hl]                                     ; $5ccb: $46
	ld   b, [hl]                                     ; $5ccc: $46
	ld   b, [hl]                                     ; $5ccd: $46
	dec  e                                           ; $5cce: $1d
	ld   e, $1f                                      ; $5ccf: $1e $1f
	dec  bc                                          ; $5cd1: $0b
	ld   a, e                                        ; $5cd2: $7b
	ld   c, [hl]                                     ; $5cd3: $4e
	scf                                              ; $5cd4: $37
	dec  b                                           ; $5cd5: $05
	dec  b                                           ; $5cd6: $05
	dec  b                                           ; $5cd7: $05
	inc  bc                                          ; $5cd8: $03
	inc  bc                                          ; $5cd9: $03
	inc  bc                                          ; $5cda: $03
	inc  bc                                          ; $5cdb: $03
	inc  bc                                          ; $5cdc: $03
	inc  bc                                          ; $5cdd: $03
	inc  bc                                          ; $5cde: $03
	inc  bc                                          ; $5cdf: $03
	inc  bc                                          ; $5ce0: $03
	inc  bc                                          ; $5ce1: $03
	inc  bc                                          ; $5ce2: $03
	inc  bc                                          ; $5ce3: $03
	inc  bc                                          ; $5ce4: $03
	dec  bc                                          ; $5ce5: $0b
	dec  bc                                          ; $5ce6: $0b
	dec  c                                           ; $5ce7: $0d
	dec  c                                           ; $5ce8: $0d
	dec  b                                           ; $5ce9: $05
	dec  b                                           ; $5cea: $05
	dec  b                                           ; $5ceb: $05
	dec  b                                           ; $5cec: $05
	inc  bc                                          ; $5ced: $03
	inc  bc                                          ; $5cee: $03
	inc  bc                                          ; $5cef: $03
	inc  bc                                          ; $5cf0: $03
	inc  bc                                          ; $5cf1: $03
	inc  bc                                          ; $5cf2: $03
	inc  bc                                          ; $5cf3: $03
	inc  bc                                          ; $5cf4: $03
	inc  bc                                          ; $5cf5: $03
	inc  bc                                          ; $5cf6: $03
	inc  bc                                          ; $5cf7: $03
	inc  bc                                          ; $5cf8: $03
	dec  c                                           ; $5cf9: $0d
	dec  c                                           ; $5cfa: $0d
	dec  c                                           ; $5cfb: $0d
	dec  bc                                          ; $5cfc: $0b
	dec  b                                           ; $5cfd: $05
	dec  b                                           ; $5cfe: $05
	dec  b                                           ; $5cff: $05
	dec  b                                           ; $5d00: $05
	dec  b                                           ; $5d01: $05
	dec  b                                           ; $5d02: $05
	dec  b                                           ; $5d03: $05
	inc  bc                                          ; $5d04: $03
	inc  bc                                          ; $5d05: $03
	inc  bc                                          ; $5d06: $03
	inc  bc                                          ; $5d07: $03
	inc  bc                                          ; $5d08: $03
	inc  bc                                          ; $5d09: $03
	dec  b                                           ; $5d0a: $05
	dec  b                                           ; $5d0b: $05
	dec  b                                           ; $5d0c: $05
	dec  c                                           ; $5d0d: $0d
	dec  bc                                          ; $5d0e: $0b
	dec  bc                                          ; $5d0f: $0b
	dec  bc                                          ; $5d10: $0b
	dec  b                                           ; $5d11: $05
	dec  b                                           ; $5d12: $05
	dec  b                                           ; $5d13: $05
	dec  b                                           ; $5d14: $05
	dec  b                                           ; $5d15: $05
	dec  b                                           ; $5d16: $05
	dec  b                                           ; $5d17: $05
	inc  bc                                          ; $5d18: $03
	inc  bc                                          ; $5d19: $03
	inc  bc                                          ; $5d1a: $03
	inc  bc                                          ; $5d1b: $03
	inc  bc                                          ; $5d1c: $03
	inc  bc                                          ; $5d1d: $03
	dec  b                                           ; $5d1e: $05
	dec  b                                           ; $5d1f: $05
	inc  bc                                          ; $5d20: $03
	dec  bc                                          ; $5d21: $0b
	dec  bc                                          ; $5d22: $0b
	dec  bc                                          ; $5d23: $0b
	dec  bc                                          ; $5d24: $0b
	inc  bc                                          ; $5d25: $03
	dec  b                                           ; $5d26: $05
	dec  b                                           ; $5d27: $05
	inc  bc                                          ; $5d28: $03
	inc  bc                                          ; $5d29: $03
	inc  bc                                          ; $5d2a: $03
	inc  bc                                          ; $5d2b: $03
	dec  b                                           ; $5d2c: $05
	inc  bc                                          ; $5d2d: $03
	inc  bc                                          ; $5d2e: $03
	dec  b                                           ; $5d2f: $05
	inc  hl                                          ; $5d30: $23
	dec  b                                           ; $5d31: $05
	inc  bc                                          ; $5d32: $03
	inc  bc                                          ; $5d33: $03
	inc  bc                                          ; $5d34: $03
	dec  bc                                          ; $5d35: $0b
	dec  bc                                          ; $5d36: $0b
	dec  bc                                          ; $5d37: $0b
	dec  bc                                          ; $5d38: $0b
	inc  bc                                          ; $5d39: $03
	inc  bc                                          ; $5d3a: $03
	inc  bc                                          ; $5d3b: $03
	inc  bc                                          ; $5d3c: $03
	inc  bc                                          ; $5d3d: $03
	inc  bc                                          ; $5d3e: $03
	inc  bc                                          ; $5d3f: $03
	inc  bc                                          ; $5d40: $03
	inc  bc                                          ; $5d41: $03
	inc  bc                                          ; $5d42: $03
	inc  bc                                          ; $5d43: $03
	inc  bc                                          ; $5d44: $03
	inc  bc                                          ; $5d45: $03
	inc  bc                                          ; $5d46: $03
	inc  bc                                          ; $5d47: $03
	inc  bc                                          ; $5d48: $03
	dec  bc                                          ; $5d49: $0b
	dec  bc                                          ; $5d4a: $0b
	dec  bc                                          ; $5d4b: $0b
	dec  bc                                          ; $5d4c: $0b
	inc  bc                                          ; $5d4d: $03
	inc  bc                                          ; $5d4e: $03
	inc  bc                                          ; $5d4f: $03
	inc  bc                                          ; $5d50: $03
	inc  bc                                          ; $5d51: $03
	inc  bc                                          ; $5d52: $03
	inc  bc                                          ; $5d53: $03
	inc  bc                                          ; $5d54: $03
	inc  bc                                          ; $5d55: $03
	inc  bc                                          ; $5d56: $03
	inc  bc                                          ; $5d57: $03
	inc  bc                                          ; $5d58: $03
	inc  bc                                          ; $5d59: $03
	inc  bc                                          ; $5d5a: $03
	inc  bc                                          ; $5d5b: $03
	inc  bc                                          ; $5d5c: $03
	dec  bc                                          ; $5d5d: $0b
	dec  bc                                          ; $5d5e: $0b
	dec  bc                                          ; $5d5f: $0b
	dec  bc                                          ; $5d60: $0b
	inc  bc                                          ; $5d61: $03
	inc  bc                                          ; $5d62: $03
	inc  bc                                          ; $5d63: $03
	inc  bc                                          ; $5d64: $03
	inc  bc                                          ; $5d65: $03
	inc  bc                                          ; $5d66: $03
	inc  bc                                          ; $5d67: $03
	inc  bc                                          ; $5d68: $03
	inc  bc                                          ; $5d69: $03
	inc  bc                                          ; $5d6a: $03
	inc  bc                                          ; $5d6b: $03
	inc  bc                                          ; $5d6c: $03
	inc  bc                                          ; $5d6d: $03
	inc  bc                                          ; $5d6e: $03
	inc  bc                                          ; $5d6f: $03
	dec  b                                           ; $5d70: $05
	dec  c                                           ; $5d71: $0d
	dec  bc                                          ; $5d72: $0b
	dec  bc                                          ; $5d73: $0b
	dec  bc                                          ; $5d74: $0b
	dec  bc                                          ; $5d75: $0b
	dec  bc                                          ; $5d76: $0b
	dec  bc                                          ; $5d77: $0b
	dec  bc                                          ; $5d78: $0b
	inc  c                                           ; $5d79: $0c
	inc  c                                           ; $5d7a: $0c
	inc  c                                           ; $5d7b: $0c
	dec  bc                                          ; $5d7c: $0b
	dec  bc                                          ; $5d7d: $0b
	dec  bc                                          ; $5d7e: $0b
	dec  bc                                          ; $5d7f: $0b
	dec  bc                                          ; $5d80: $0b
	dec  bc                                          ; $5d81: $0b
	inc  c                                           ; $5d82: $0c
	inc  c                                           ; $5d83: $0c
	dec  c                                           ; $5d84: $0d
	dec  c                                           ; $5d85: $0d
	dec  bc                                          ; $5d86: $0b
	inc  bc                                          ; $5d87: $03
	dec  bc                                          ; $5d88: $0b
	dec  bc                                          ; $5d89: $0b
	dec  bc                                          ; $5d8a: $0b
	inc  c                                           ; $5d8b: $0c
	inc  c                                           ; $5d8c: $0c
	inc  c                                           ; $5d8d: $0c
	inc  c                                           ; $5d8e: $0c
	inc  c                                           ; $5d8f: $0c
	inc  bc                                          ; $5d90: $03
	inc  bc                                          ; $5d91: $03
	inc  bc                                          ; $5d92: $03
	inc  bc                                          ; $5d93: $03
	inc  bc                                          ; $5d94: $03
	inc  bc                                          ; $5d95: $03
	inc  c                                           ; $5d96: $0c
	inc  c                                           ; $5d97: $0c
	inc  c                                           ; $5d98: $0c
	dec  bc                                          ; $5d99: $0b
	inc  bc                                          ; $5d9a: $03
	inc  bc                                          ; $5d9b: $03
	dec  bc                                          ; $5d9c: $0b
	nop                                              ; $5d9d: $00
	ld   bc, $0302                                   ; $5d9e: $01 $02 $03
	inc  b                                           ; $5da1: $04
	dec  b                                           ; $5da2: $05
	ld   b, $07                                      ; $5da3: $06 $07
	ld   [$0a09], sp                                 ; $5da5: $08 $09 $0a
	dec  bc                                          ; $5da8: $0b
	inc  c                                           ; $5da9: $0c
	dec  c                                           ; $5daa: $0d
	ld   c, $0f                                      ; $5dab: $0e $0f
	jr   nz, jr_081_5dd0                             ; $5dad: $20 $21

	ld   [hl+], a                                    ; $5daf: $22
	inc  hl                                          ; $5db0: $23
	db   $10                                         ; $5db1: $10
	ld   de, $1312                                   ; $5db2: $11 $12 $13
	inc  d                                           ; $5db5: $14
	dec  d                                           ; $5db6: $15
	ld   d, $17                                      ; $5db7: $16 $17
	jr   @+$1b                                       ; $5db9: $18 $19

	ld   a, [de]                                     ; $5dbb: $1a
	dec  de                                          ; $5dbc: $1b
	inc  e                                           ; $5dbd: $1c
	dec  e                                           ; $5dbe: $1d
	dec  d                                           ; $5dbf: $15
	rra                                              ; $5dc0: $1f
	jr   nc, jr_081_5df4                             ; $5dc1: $30 $31

	ld   [hl-], a                                    ; $5dc3: $32
	inc  sp                                          ; $5dc4: $33
	jr   nz, @+$23                                   ; $5dc5: $20 $21

	ld   [hl+], a                                    ; $5dc7: $22
	inc  hl                                          ; $5dc8: $23
	inc  h                                           ; $5dc9: $24
	dec  h                                           ; $5dca: $25
	ld   h, $27                                      ; $5dcb: $26 $27
	jr   z, jr_081_5df8                              ; $5dcd: $28 $29

	ld   a, [hl+]                                    ; $5dcf: $2a

jr_081_5dd0:
	dec  hl                                          ; $5dd0: $2b
	inc  l                                           ; $5dd1: $2c
	dec  l                                           ; $5dd2: $2d
	ld   l, $2f                                      ; $5dd3: $2e $2f
	inc  h                                           ; $5dd5: $24
	dec  h                                           ; $5dd6: $25
	ld   h, $27                                      ; $5dd7: $26 $27
	jr   nc, jr_081_5e0c                             ; $5dd9: $30 $31

	ld   [hl-], a                                    ; $5ddb: $32
	inc  sp                                          ; $5ddc: $33
	inc  [hl]                                        ; $5ddd: $34
	dec  [hl]                                        ; $5dde: $35
	ld   [hl], $37                                   ; $5ddf: $36 $37
	jr   c, jr_081_5e1c                              ; $5de1: $38 $39

	ld   a, [hl-]                                    ; $5de3: $3a
	dec  sp                                          ; $5de4: $3b
	inc  a                                           ; $5de5: $3c
	dec  a                                           ; $5de6: $3d
	ld   a, $3f                                      ; $5de7: $3e $3f
	inc  [hl]                                        ; $5de9: $34
	dec  [hl]                                        ; $5dea: $35
	ld   [hl], $37                                   ; $5deb: $36 $37
	ld   b, b                                        ; $5ded: $40
	ld   b, c                                        ; $5dee: $41
	ld   [hl-], a                                    ; $5def: $32
	ld   b, e                                        ; $5df0: $43
	ld   b, h                                        ; $5df1: $44
	ld   b, l                                        ; $5df2: $45
	ld   b, [hl]                                     ; $5df3: $46

jr_081_5df4:
	ld   b, a                                        ; $5df4: $47
	ld   c, b                                        ; $5df5: $48
	ld   c, b                                        ; $5df6: $48
	ld   c, d                                        ; $5df7: $4a

jr_081_5df8:
	ld   c, b                                        ; $5df8: $48
	ld   c, h                                        ; $5df9: $4c
	ld   c, l                                        ; $5dfa: $4d
	ld   c, [hl]                                     ; $5dfb: $4e
	ld   c, a                                        ; $5dfc: $4f
	jr   z, jr_081_5e28                              ; $5dfd: $28 $29

	ld   a, [hl+]                                    ; $5dff: $2a
	scf                                              ; $5e00: $37
	ld   d, b                                        ; $5e01: $50
	ld   d, c                                        ; $5e02: $51
	ld   [hl-], a                                    ; $5e03: $32
	ld   d, e                                        ; $5e04: $53
	ld   d, h                                        ; $5e05: $54
	ld   d, l                                        ; $5e06: $55
	ld   d, [hl]                                     ; $5e07: $56
	ld   d, a                                        ; $5e08: $57
	ld   e, b                                        ; $5e09: $58
	ld   e, c                                        ; $5e0a: $59
	ld   e, d                                        ; $5e0b: $5a

jr_081_5e0c:
	ld   e, e                                        ; $5e0c: $5b
	ld   e, h                                        ; $5e0d: $5c
	ld   e, l                                        ; $5e0e: $5d
	ld   e, [hl]                                     ; $5e0f: $5e
	ld   e, a                                        ; $5e10: $5f
	jr   c, @+$3b                                    ; $5e11: $38 $39

	ld   a, [hl-]                                    ; $5e13: $3a
	scf                                              ; $5e14: $37
	ld   h, b                                        ; $5e15: $60
	ld   h, c                                        ; $5e16: $61
	ld   [hl-], a                                    ; $5e17: $32
	ld   h, e                                        ; $5e18: $63
	ld   h, h                                        ; $5e19: $64
	ld   h, l                                        ; $5e1a: $65
	ld   h, [hl]                                     ; $5e1b: $66

jr_081_5e1c:
	ld   h, a                                        ; $5e1c: $67
	ld   l, b                                        ; $5e1d: $68
	ld   l, c                                        ; $5e1e: $69
	ld   l, d                                        ; $5e1f: $6a
	ld   l, e                                        ; $5e20: $6b
	ld   l, h                                        ; $5e21: $6c
	ld   l, l                                        ; $5e22: $6d
	ld   l, [hl]                                     ; $5e23: $6e
	ld   l, a                                        ; $5e24: $6f
	dec  hl                                          ; $5e25: $2b
	inc  l                                           ; $5e26: $2c
	dec  l                                           ; $5e27: $2d

jr_081_5e28:
	scf                                              ; $5e28: $37
	ld   [hl], b                                     ; $5e29: $70
	ld   [hl], c                                     ; $5e2a: $71
	ld   [hl-], a                                    ; $5e2b: $32
	ld   [hl], e                                     ; $5e2c: $73
	ld   [hl], h                                     ; $5e2d: $74
	ld   [hl], l                                     ; $5e2e: $75
	halt                                             ; $5e2f: $76
	ld   [hl], a                                     ; $5e30: $77
	ld   a, b                                        ; $5e31: $78
	ld   a, c                                        ; $5e32: $79
	ld   a, d                                        ; $5e33: $7a
	ld   a, b                                        ; $5e34: $78
	ld   a, h                                        ; $5e35: $7c
	ld   a, l                                        ; $5e36: $7d
	ld   a, [hl]                                     ; $5e37: $7e
	ld   a, a                                        ; $5e38: $7f
	dec  sp                                          ; $5e39: $3b
	inc  a                                           ; $5e3a: $3c
	dec  a                                           ; $5e3b: $3d
	scf                                              ; $5e3c: $37
	nop                                              ; $5e3d: $00
	ld   bc, $0302                                   ; $5e3e: $01 $02 $03
	inc  b                                           ; $5e41: $04
	dec  b                                           ; $5e42: $05
	ld   b, $07                                      ; $5e43: $06 $07
	ld   [$0a09], sp                                 ; $5e45: $08 $09 $0a
	ld   [$0d0c], sp                                 ; $5e48: $08 $0c $0d
	ld   c, $0f                                      ; $5e4b: $0e $0f
	ld   l, $2f                                      ; $5e4d: $2e $2f
	ld   a, e                                        ; $5e4f: $7b
	scf                                              ; $5e50: $37
	db   $10                                         ; $5e51: $10
	ld   de, $1312                                   ; $5e52: $11 $12 $13
	inc  d                                           ; $5e55: $14
	dec  d                                           ; $5e56: $15
	ld   d, $17                                      ; $5e57: $16 $17
	jr   jr_081_5e74                                 ; $5e59: $18 $19

	ld   a, [de]                                     ; $5e5b: $1a
	dec  de                                          ; $5e5c: $1b
	inc  e                                           ; $5e5d: $1c
	dec  e                                           ; $5e5e: $1d
	ld   e, $1f                                      ; $5e5f: $1e $1f
	ld   a, $0b                                      ; $5e61: $3e $0b
	ld   [hl], d                                     ; $5e63: $72
	scf                                              ; $5e64: $37
	inc  bc                                          ; $5e65: $03
	inc  bc                                          ; $5e66: $03
	inc  bc                                          ; $5e67: $03
	inc  bc                                          ; $5e68: $03
	inc  bc                                          ; $5e69: $03
	inc  bc                                          ; $5e6a: $03
	inc  bc                                          ; $5e6b: $03
	inc  bc                                          ; $5e6c: $03
	inc  bc                                          ; $5e6d: $03
	inc  bc                                          ; $5e6e: $03
	inc  bc                                          ; $5e6f: $03
	inc  bc                                          ; $5e70: $03
	inc  bc                                          ; $5e71: $03
	inc  bc                                          ; $5e72: $03
	inc  bc                                          ; $5e73: $03

jr_081_5e74:
	inc  bc                                          ; $5e74: $03
	dec  bc                                          ; $5e75: $0b
	dec  bc                                          ; $5e76: $0b
	dec  bc                                          ; $5e77: $0b
	dec  bc                                          ; $5e78: $0b
	inc  bc                                          ; $5e79: $03
	inc  bc                                          ; $5e7a: $03
	inc  bc                                          ; $5e7b: $03
	inc  bc                                          ; $5e7c: $03
	inc  bc                                          ; $5e7d: $03
	inc  bc                                          ; $5e7e: $03
	inc  bc                                          ; $5e7f: $03
	inc  bc                                          ; $5e80: $03
	inc  bc                                          ; $5e81: $03
	inc  bc                                          ; $5e82: $03
	inc  bc                                          ; $5e83: $03
	inc  bc                                          ; $5e84: $03
	inc  bc                                          ; $5e85: $03
	inc  bc                                          ; $5e86: $03
	inc  bc                                          ; $5e87: $03
	inc  bc                                          ; $5e88: $03
	dec  bc                                          ; $5e89: $0b
	dec  bc                                          ; $5e8a: $0b
	dec  bc                                          ; $5e8b: $0b
	dec  bc                                          ; $5e8c: $0b
	inc  bc                                          ; $5e8d: $03
	inc  bc                                          ; $5e8e: $03
	inc  bc                                          ; $5e8f: $03
	inc  bc                                          ; $5e90: $03
	inc  bc                                          ; $5e91: $03
	inc  bc                                          ; $5e92: $03
	inc  bc                                          ; $5e93: $03
	inc  bc                                          ; $5e94: $03
	dec  b                                           ; $5e95: $05
	inc  bc                                          ; $5e96: $03
	inc  bc                                          ; $5e97: $03
	dec  b                                           ; $5e98: $05
	inc  bc                                          ; $5e99: $03
	inc  bc                                          ; $5e9a: $03
	inc  bc                                          ; $5e9b: $03
	inc  bc                                          ; $5e9c: $03
	dec  bc                                          ; $5e9d: $0b
	dec  bc                                          ; $5e9e: $0b
	dec  bc                                          ; $5e9f: $0b
	dec  bc                                          ; $5ea0: $0b
	inc  bc                                          ; $5ea1: $03
	inc  bc                                          ; $5ea2: $03
	inc  bc                                          ; $5ea3: $03
	inc  bc                                          ; $5ea4: $03
	inc  bc                                          ; $5ea5: $03
	inc  bc                                          ; $5ea6: $03
	inc  bc                                          ; $5ea7: $03
	inc  bc                                          ; $5ea8: $03
	inc  bc                                          ; $5ea9: $03
	inc  bc                                          ; $5eaa: $03
	inc  bc                                          ; $5eab: $03
	inc  bc                                          ; $5eac: $03
	inc  bc                                          ; $5ead: $03
	inc  bc                                          ; $5eae: $03
	inc  bc                                          ; $5eaf: $03
	inc  bc                                          ; $5eb0: $03
	dec  bc                                          ; $5eb1: $0b
	dec  bc                                          ; $5eb2: $0b
	dec  bc                                          ; $5eb3: $0b
	dec  bc                                          ; $5eb4: $0b
	inc  bc                                          ; $5eb5: $03
	inc  bc                                          ; $5eb6: $03
	inc  bc                                          ; $5eb7: $03
	inc  bc                                          ; $5eb8: $03
	inc  b                                           ; $5eb9: $04
	inc  bc                                          ; $5eba: $03
	inc  bc                                          ; $5ebb: $03
	dec  b                                           ; $5ebc: $05
	dec  b                                           ; $5ebd: $05
	dec  b                                           ; $5ebe: $05
	dec  b                                           ; $5ebf: $05
	dec  h                                           ; $5ec0: $25
	dec  b                                           ; $5ec1: $05
	inc  bc                                          ; $5ec2: $03
	inc  bc                                          ; $5ec3: $03
	inc  bc                                          ; $5ec4: $03
	dec  bc                                          ; $5ec5: $0b
	dec  bc                                          ; $5ec6: $0b
	dec  bc                                          ; $5ec7: $0b
	dec  bc                                          ; $5ec8: $0b
	inc  bc                                          ; $5ec9: $03
	inc  bc                                          ; $5eca: $03
	inc  bc                                          ; $5ecb: $03
	inc  bc                                          ; $5ecc: $03
	inc  b                                           ; $5ecd: $04
	inc  bc                                          ; $5ece: $03
	inc  bc                                          ; $5ecf: $03
	inc  bc                                          ; $5ed0: $03
	dec  b                                           ; $5ed1: $05
	dec  b                                           ; $5ed2: $05
	dec  b                                           ; $5ed3: $05
	dec  b                                           ; $5ed4: $05
	inc  bc                                          ; $5ed5: $03
	inc  bc                                          ; $5ed6: $03
	inc  bc                                          ; $5ed7: $03
	inc  bc                                          ; $5ed8: $03
	dec  bc                                          ; $5ed9: $0b
	dec  bc                                          ; $5eda: $0b
	dec  bc                                          ; $5edb: $0b
	dec  bc                                          ; $5edc: $0b
	inc  bc                                          ; $5edd: $03
	inc  bc                                          ; $5ede: $03
	inc  bc                                          ; $5edf: $03
	inc  bc                                          ; $5ee0: $03
	inc  b                                           ; $5ee1: $04
	inc  bc                                          ; $5ee2: $03
	inc  bc                                          ; $5ee3: $03
	inc  bc                                          ; $5ee4: $03
	inc  bc                                          ; $5ee5: $03
	inc  bc                                          ; $5ee6: $03
	inc  bc                                          ; $5ee7: $03
	inc  bc                                          ; $5ee8: $03
	inc  bc                                          ; $5ee9: $03
	inc  bc                                          ; $5eea: $03
	inc  bc                                          ; $5eeb: $03
	inc  bc                                          ; $5eec: $03
	dec  bc                                          ; $5eed: $0b
	dec  bc                                          ; $5eee: $0b
	dec  bc                                          ; $5eef: $0b
	dec  bc                                          ; $5ef0: $0b
	inc  bc                                          ; $5ef1: $03
	inc  bc                                          ; $5ef2: $03
	inc  bc                                          ; $5ef3: $03
	inc  bc                                          ; $5ef4: $03
	inc  b                                           ; $5ef5: $04
	inc  bc                                          ; $5ef6: $03
	inc  bc                                          ; $5ef7: $03
	inc  bc                                          ; $5ef8: $03
	inc  bc                                          ; $5ef9: $03
	inc  bc                                          ; $5efa: $03
	inc  bc                                          ; $5efb: $03
	inc  bc                                          ; $5efc: $03
	inc  bc                                          ; $5efd: $03
	inc  bc                                          ; $5efe: $03
	inc  bc                                          ; $5eff: $03
	dec  b                                           ; $5f00: $05
	dec  c                                           ; $5f01: $0d
	dec  bc                                          ; $5f02: $0b
	dec  bc                                          ; $5f03: $0b
	dec  bc                                          ; $5f04: $0b
	dec  bc                                          ; $5f05: $0b
	dec  bc                                          ; $5f06: $0b
	dec  bc                                          ; $5f07: $0b
	dec  bc                                          ; $5f08: $0b
	inc  c                                           ; $5f09: $0c
	inc  c                                           ; $5f0a: $0c
	inc  c                                           ; $5f0b: $0c
	dec  bc                                          ; $5f0c: $0b
	dec  bc                                          ; $5f0d: $0b
	dec  bc                                          ; $5f0e: $0b
	dec  bc                                          ; $5f0f: $0b
	dec  bc                                          ; $5f10: $0b
	dec  bc                                          ; $5f11: $0b
	inc  c                                           ; $5f12: $0c
	inc  c                                           ; $5f13: $0c
	dec  c                                           ; $5f14: $0d
	dec  c                                           ; $5f15: $0d
	dec  bc                                          ; $5f16: $0b
	inc  bc                                          ; $5f17: $03
	dec  bc                                          ; $5f18: $0b
	dec  bc                                          ; $5f19: $0b
	dec  bc                                          ; $5f1a: $0b
	inc  c                                           ; $5f1b: $0c
	inc  c                                           ; $5f1c: $0c
	inc  c                                           ; $5f1d: $0c
	inc  c                                           ; $5f1e: $0c
	inc  c                                           ; $5f1f: $0c
	inc  c                                           ; $5f20: $0c
	inc  c                                           ; $5f21: $0c
	inc  c                                           ; $5f22: $0c
	inc  c                                           ; $5f23: $0c
	inc  c                                           ; $5f24: $0c
	inc  c                                           ; $5f25: $0c
	inc  c                                           ; $5f26: $0c
	inc  c                                           ; $5f27: $0c
	inc  c                                           ; $5f28: $0c
	inc  c                                           ; $5f29: $0c
	dec  bc                                          ; $5f2a: $0b
	inc  bc                                          ; $5f2b: $03
	dec  bc                                          ; $5f2c: $0b
	nop                                              ; $5f2d: $00
	ld   bc, $0302                                   ; $5f2e: $01 $02 $03
	inc  b                                           ; $5f31: $04
	dec  b                                           ; $5f32: $05
	ld   b, $07                                      ; $5f33: $06 $07
	ld   [$0a09], sp                                 ; $5f35: $08 $09 $0a
	dec  bc                                          ; $5f38: $0b
	inc  c                                           ; $5f39: $0c
	dec  c                                           ; $5f3a: $0d
	ld   c, $0f                                      ; $5f3b: $0e $0f
	jr   nz, jr_081_5f60                             ; $5f3d: $20 $21

	ld   [hl+], a                                    ; $5f3f: $22
	inc  hl                                          ; $5f40: $23
	db   $10                                         ; $5f41: $10
	ld   de, $1312                                   ; $5f42: $11 $12 $13
	inc  d                                           ; $5f45: $14
	dec  d                                           ; $5f46: $15
	ld   d, $17                                      ; $5f47: $16 $17
	jr   @+$1b                                       ; $5f49: $18 $19

	ld   a, [de]                                     ; $5f4b: $1a
	dec  de                                          ; $5f4c: $1b
	inc  e                                           ; $5f4d: $1c
	dec  e                                           ; $5f4e: $1d
	dec  d                                           ; $5f4f: $15
	rra                                              ; $5f50: $1f
	jr   nc, jr_081_5f84                             ; $5f51: $30 $31

	ld   [hl-], a                                    ; $5f53: $32
	inc  sp                                          ; $5f54: $33
	jr   nz, @+$23                                   ; $5f55: $20 $21

	ld   [hl+], a                                    ; $5f57: $22
	inc  hl                                          ; $5f58: $23
	inc  h                                           ; $5f59: $24
	dec  h                                           ; $5f5a: $25
	ld   h, $27                                      ; $5f5b: $26 $27
	jr   z, jr_081_5f88                              ; $5f5d: $28 $29

	ld   a, [hl+]                                    ; $5f5f: $2a

jr_081_5f60:
	dec  hl                                          ; $5f60: $2b
	inc  l                                           ; $5f61: $2c
	dec  l                                           ; $5f62: $2d
	ld   l, $2f                                      ; $5f63: $2e $2f
	inc  h                                           ; $5f65: $24
	dec  h                                           ; $5f66: $25
	ld   h, $27                                      ; $5f67: $26 $27
	jr   nc, jr_081_5f9c                             ; $5f69: $30 $31

	ld   [hl-], a                                    ; $5f6b: $32
	inc  sp                                          ; $5f6c: $33
	inc  [hl]                                        ; $5f6d: $34
	dec  [hl]                                        ; $5f6e: $35
	ld   [hl], $37                                   ; $5f6f: $36 $37
	jr   c, jr_081_5fac                              ; $5f71: $38 $39

	ld   a, [hl-]                                    ; $5f73: $3a
	dec  sp                                          ; $5f74: $3b
	inc  a                                           ; $5f75: $3c
	dec  a                                           ; $5f76: $3d
	ld   a, $3f                                      ; $5f77: $3e $3f
	inc  [hl]                                        ; $5f79: $34
	dec  [hl]                                        ; $5f7a: $35
	ld   [hl], $37                                   ; $5f7b: $36 $37
	ld   b, b                                        ; $5f7d: $40
	ld   b, c                                        ; $5f7e: $41
	ld   [hl-], a                                    ; $5f7f: $32
	ld   b, e                                        ; $5f80: $43
	ld   b, h                                        ; $5f81: $44
	ld   b, l                                        ; $5f82: $45
	ld   b, [hl]                                     ; $5f83: $46

jr_081_5f84:
	ld   b, a                                        ; $5f84: $47
	ld   c, b                                        ; $5f85: $48
	ld   c, b                                        ; $5f86: $48
	ld   c, d                                        ; $5f87: $4a

jr_081_5f88:
	ld   c, b                                        ; $5f88: $48
	ld   c, h                                        ; $5f89: $4c
	ld   c, l                                        ; $5f8a: $4d
	ld   c, [hl]                                     ; $5f8b: $4e
	ld   c, a                                        ; $5f8c: $4f
	jr   z, jr_081_5fb8                              ; $5f8d: $28 $29

	ld   a, [hl+]                                    ; $5f8f: $2a
	scf                                              ; $5f90: $37
	ld   d, b                                        ; $5f91: $50
	ld   d, c                                        ; $5f92: $51
	ld   [hl-], a                                    ; $5f93: $32
	ld   d, e                                        ; $5f94: $53
	ld   d, h                                        ; $5f95: $54
	ld   d, l                                        ; $5f96: $55
	ld   d, [hl]                                     ; $5f97: $56
	ld   d, a                                        ; $5f98: $57
	ld   e, b                                        ; $5f99: $58
	ld   h, d                                        ; $5f9a: $62
	ld   d, d                                        ; $5f9b: $52

jr_081_5f9c:
	ld   e, e                                        ; $5f9c: $5b
	ld   e, h                                        ; $5f9d: $5c
	ld   e, l                                        ; $5f9e: $5d
	ld   e, [hl]                                     ; $5f9f: $5e
	ld   e, a                                        ; $5fa0: $5f
	jr   c, @+$3b                                    ; $5fa1: $38 $39

	ld   a, [hl-]                                    ; $5fa3: $3a
	scf                                              ; $5fa4: $37
	ld   h, b                                        ; $5fa5: $60
	ld   h, c                                        ; $5fa6: $61
	ld   [hl-], a                                    ; $5fa7: $32
	ld   h, e                                        ; $5fa8: $63
	ld   h, h                                        ; $5fa9: $64
	ld   h, l                                        ; $5faa: $65
	ld   h, [hl]                                     ; $5fab: $66

jr_081_5fac:
	ld   h, a                                        ; $5fac: $67
	ld   c, e                                        ; $5fad: $4b
	ld   c, c                                        ; $5fae: $49
	ld   b, d                                        ; $5faf: $42
	ld   e, $6c                                      ; $5fb0: $1e $6c
	ld   l, l                                        ; $5fb2: $6d
	ld   l, [hl]                                     ; $5fb3: $6e
	ld   l, a                                        ; $5fb4: $6f
	dec  hl                                          ; $5fb5: $2b
	inc  l                                           ; $5fb6: $2c
	dec  l                                           ; $5fb7: $2d

jr_081_5fb8:
	scf                                              ; $5fb8: $37
	ld   [hl], b                                     ; $5fb9: $70
	ld   [hl], c                                     ; $5fba: $71
	ld   [hl-], a                                    ; $5fbb: $32
	ld   [hl], e                                     ; $5fbc: $73
	ld   [hl], h                                     ; $5fbd: $74
	ld   [hl], l                                     ; $5fbe: $75
	halt                                             ; $5fbf: $76
	ld   [hl], a                                     ; $5fc0: $77
	ld   a, b                                        ; $5fc1: $78
	ld   a, c                                        ; $5fc2: $79
	ld   a, d                                        ; $5fc3: $7a
	ld   a, b                                        ; $5fc4: $78
	ld   a, h                                        ; $5fc5: $7c
	ld   a, l                                        ; $5fc6: $7d
	ld   a, [hl]                                     ; $5fc7: $7e
	ld   a, a                                        ; $5fc8: $7f
	dec  sp                                          ; $5fc9: $3b
	inc  a                                           ; $5fca: $3c
	dec  a                                           ; $5fcb: $3d
	scf                                              ; $5fcc: $37
	nop                                              ; $5fcd: $00
	ld   bc, $0302                                   ; $5fce: $01 $02 $03
	inc  b                                           ; $5fd1: $04
	dec  b                                           ; $5fd2: $05
	ld   b, $07                                      ; $5fd3: $06 $07
	ld   [$0a09], sp                                 ; $5fd5: $08 $09 $0a
	ld   [$0d0c], sp                                 ; $5fd8: $08 $0c $0d
	ld   c, $0f                                      ; $5fdb: $0e $0f
	ld   l, $2f                                      ; $5fdd: $2e $2f
	ld   a, e                                        ; $5fdf: $7b
	scf                                              ; $5fe0: $37
	db   $10                                         ; $5fe1: $10
	ld   de, $1312                                   ; $5fe2: $11 $12 $13
	inc  d                                           ; $5fe5: $14
	dec  d                                           ; $5fe6: $15
	ld   d, $17                                      ; $5fe7: $16 $17
	jr   jr_081_6004                                 ; $5fe9: $18 $19

	ld   a, [de]                                     ; $5feb: $1a
	dec  de                                          ; $5fec: $1b
	inc  e                                           ; $5fed: $1c
	dec  e                                           ; $5fee: $1d
	ld   e, $1f                                      ; $5fef: $1e $1f
	ld   a, $0b                                      ; $5ff1: $3e $0b
	ld   [hl], d                                     ; $5ff3: $72
	scf                                              ; $5ff4: $37
	inc  bc                                          ; $5ff5: $03
	inc  bc                                          ; $5ff6: $03
	inc  bc                                          ; $5ff7: $03
	inc  bc                                          ; $5ff8: $03
	inc  bc                                          ; $5ff9: $03
	inc  bc                                          ; $5ffa: $03
	inc  bc                                          ; $5ffb: $03
	inc  bc                                          ; $5ffc: $03
	inc  bc                                          ; $5ffd: $03
	inc  bc                                          ; $5ffe: $03
	inc  bc                                          ; $5fff: $03
	inc  bc                                          ; $6000: $03
	inc  bc                                          ; $6001: $03
	inc  bc                                          ; $6002: $03
	inc  bc                                          ; $6003: $03

jr_081_6004:
	inc  bc                                          ; $6004: $03
	dec  bc                                          ; $6005: $0b
	dec  bc                                          ; $6006: $0b
	dec  bc                                          ; $6007: $0b
	dec  bc                                          ; $6008: $0b
	inc  bc                                          ; $6009: $03
	inc  bc                                          ; $600a: $03
	inc  bc                                          ; $600b: $03
	inc  bc                                          ; $600c: $03
	inc  bc                                          ; $600d: $03
	inc  bc                                          ; $600e: $03
	inc  bc                                          ; $600f: $03
	inc  bc                                          ; $6010: $03
	inc  bc                                          ; $6011: $03
	inc  bc                                          ; $6012: $03
	inc  bc                                          ; $6013: $03
	inc  bc                                          ; $6014: $03
	inc  bc                                          ; $6015: $03
	inc  bc                                          ; $6016: $03
	inc  bc                                          ; $6017: $03
	inc  bc                                          ; $6018: $03
	dec  bc                                          ; $6019: $0b
	dec  bc                                          ; $601a: $0b
	dec  bc                                          ; $601b: $0b
	dec  bc                                          ; $601c: $0b
	inc  bc                                          ; $601d: $03
	inc  bc                                          ; $601e: $03
	inc  bc                                          ; $601f: $03
	inc  bc                                          ; $6020: $03
	inc  bc                                          ; $6021: $03
	inc  bc                                          ; $6022: $03
	inc  bc                                          ; $6023: $03
	inc  bc                                          ; $6024: $03
	dec  b                                           ; $6025: $05
	inc  bc                                          ; $6026: $03
	inc  bc                                          ; $6027: $03
	dec  b                                           ; $6028: $05
	inc  bc                                          ; $6029: $03
	inc  bc                                          ; $602a: $03
	inc  bc                                          ; $602b: $03
	inc  bc                                          ; $602c: $03
	dec  bc                                          ; $602d: $0b
	dec  bc                                          ; $602e: $0b
	dec  bc                                          ; $602f: $0b
	dec  bc                                          ; $6030: $0b
	inc  bc                                          ; $6031: $03
	inc  bc                                          ; $6032: $03
	inc  bc                                          ; $6033: $03
	inc  bc                                          ; $6034: $03
	inc  bc                                          ; $6035: $03
	inc  bc                                          ; $6036: $03
	inc  bc                                          ; $6037: $03
	inc  bc                                          ; $6038: $03
	inc  bc                                          ; $6039: $03
	inc  bc                                          ; $603a: $03
	inc  bc                                          ; $603b: $03
	inc  bc                                          ; $603c: $03
	inc  bc                                          ; $603d: $03
	inc  bc                                          ; $603e: $03
	inc  bc                                          ; $603f: $03
	inc  bc                                          ; $6040: $03
	dec  bc                                          ; $6041: $0b
	dec  bc                                          ; $6042: $0b
	dec  bc                                          ; $6043: $0b
	dec  bc                                          ; $6044: $0b
	inc  bc                                          ; $6045: $03
	inc  bc                                          ; $6046: $03
	inc  bc                                          ; $6047: $03
	inc  bc                                          ; $6048: $03
	inc  b                                           ; $6049: $04
	inc  bc                                          ; $604a: $03
	inc  bc                                          ; $604b: $03
	dec  b                                           ; $604c: $05
	dec  b                                           ; $604d: $05
	dec  b                                           ; $604e: $05
	dec  b                                           ; $604f: $05
	dec  h                                           ; $6050: $25
	dec  b                                           ; $6051: $05
	inc  bc                                          ; $6052: $03
	inc  bc                                          ; $6053: $03
	inc  bc                                          ; $6054: $03
	dec  bc                                          ; $6055: $0b
	dec  bc                                          ; $6056: $0b
	dec  bc                                          ; $6057: $0b
	dec  bc                                          ; $6058: $0b
	inc  bc                                          ; $6059: $03
	inc  bc                                          ; $605a: $03
	inc  bc                                          ; $605b: $03
	inc  bc                                          ; $605c: $03
	inc  b                                           ; $605d: $04
	inc  bc                                          ; $605e: $03
	inc  bc                                          ; $605f: $03
	inc  bc                                          ; $6060: $03
	dec  b                                           ; $6061: $05
	inc  bc                                          ; $6062: $03
	inc  bc                                          ; $6063: $03
	dec  b                                           ; $6064: $05
	inc  bc                                          ; $6065: $03
	inc  bc                                          ; $6066: $03
	inc  bc                                          ; $6067: $03
	inc  bc                                          ; $6068: $03
	dec  bc                                          ; $6069: $0b
	dec  bc                                          ; $606a: $0b
	dec  bc                                          ; $606b: $0b
	dec  bc                                          ; $606c: $0b
	inc  bc                                          ; $606d: $03
	inc  bc                                          ; $606e: $03
	inc  bc                                          ; $606f: $03
	inc  bc                                          ; $6070: $03
	inc  b                                           ; $6071: $04
	inc  bc                                          ; $6072: $03
	inc  bc                                          ; $6073: $03
	inc  bc                                          ; $6074: $03
	inc  bc                                          ; $6075: $03
	inc  bc                                          ; $6076: $03
	inc  bc                                          ; $6077: $03
	inc  bc                                          ; $6078: $03
	inc  bc                                          ; $6079: $03
	inc  bc                                          ; $607a: $03
	inc  bc                                          ; $607b: $03
	inc  bc                                          ; $607c: $03
	dec  bc                                          ; $607d: $0b
	dec  bc                                          ; $607e: $0b
	dec  bc                                          ; $607f: $0b
	dec  bc                                          ; $6080: $0b
	inc  bc                                          ; $6081: $03
	inc  bc                                          ; $6082: $03
	inc  bc                                          ; $6083: $03
	inc  bc                                          ; $6084: $03
	inc  b                                           ; $6085: $04
	inc  bc                                          ; $6086: $03
	inc  bc                                          ; $6087: $03
	inc  bc                                          ; $6088: $03
	inc  bc                                          ; $6089: $03
	inc  bc                                          ; $608a: $03
	inc  bc                                          ; $608b: $03
	inc  bc                                          ; $608c: $03
	inc  bc                                          ; $608d: $03
	inc  bc                                          ; $608e: $03
	inc  bc                                          ; $608f: $03
	dec  b                                           ; $6090: $05
	dec  c                                           ; $6091: $0d
	dec  bc                                          ; $6092: $0b
	dec  bc                                          ; $6093: $0b
	dec  bc                                          ; $6094: $0b
	dec  bc                                          ; $6095: $0b
	dec  bc                                          ; $6096: $0b
	dec  bc                                          ; $6097: $0b
	dec  bc                                          ; $6098: $0b
	inc  c                                           ; $6099: $0c
	inc  c                                           ; $609a: $0c
	inc  c                                           ; $609b: $0c
	dec  bc                                          ; $609c: $0b
	dec  bc                                          ; $609d: $0b
	dec  bc                                          ; $609e: $0b
	dec  bc                                          ; $609f: $0b
	dec  bc                                          ; $60a0: $0b
	dec  bc                                          ; $60a1: $0b
	inc  c                                           ; $60a2: $0c
	inc  c                                           ; $60a3: $0c
	dec  c                                           ; $60a4: $0d
	dec  c                                           ; $60a5: $0d
	dec  bc                                          ; $60a6: $0b
	inc  bc                                          ; $60a7: $03
	dec  bc                                          ; $60a8: $0b
	dec  bc                                          ; $60a9: $0b
	dec  bc                                          ; $60aa: $0b
	inc  c                                           ; $60ab: $0c
	inc  c                                           ; $60ac: $0c
	inc  c                                           ; $60ad: $0c
	inc  c                                           ; $60ae: $0c
	inc  c                                           ; $60af: $0c
	inc  c                                           ; $60b0: $0c
	inc  c                                           ; $60b1: $0c
	inc  c                                           ; $60b2: $0c
	inc  c                                           ; $60b3: $0c
	inc  c                                           ; $60b4: $0c
	inc  c                                           ; $60b5: $0c
	inc  c                                           ; $60b6: $0c
	inc  c                                           ; $60b7: $0c
	inc  c                                           ; $60b8: $0c
	inc  c                                           ; $60b9: $0c
	dec  bc                                          ; $60ba: $0b
	inc  bc                                          ; $60bb: $03
	dec  bc                                          ; $60bc: $0b
	nop                                              ; $60bd: $00
	ld   bc, $0302                                   ; $60be: $01 $02 $03
	inc  b                                           ; $60c1: $04
	inc  b                                           ; $60c2: $04
	inc  bc                                          ; $60c3: $03
	inc  b                                           ; $60c4: $04
	inc  bc                                          ; $60c5: $03
	add  hl, bc                                      ; $60c6: $09
	ld   a, [bc]                                     ; $60c7: $0a
	dec  bc                                          ; $60c8: $0b
	inc  c                                           ; $60c9: $0c
	dec  c                                           ; $60ca: $0d
	ld   c, $0f                                      ; $60cb: $0e $0f
	jr   nz, jr_081_60f0                             ; $60cd: $20 $21

	ld   [hl+], a                                    ; $60cf: $22
	inc  hl                                          ; $60d0: $23
	db   $10                                         ; $60d1: $10
	ld   de, $1312                                   ; $60d2: $11 $12 $13
	inc  d                                           ; $60d5: $14
	dec  d                                           ; $60d6: $15
	ld   d, $17                                      ; $60d7: $16 $17
	jr   @+$1b                                       ; $60d9: $18 $19

	ld   a, [de]                                     ; $60db: $1a
	dec  de                                          ; $60dc: $1b
	inc  e                                           ; $60dd: $1c
	dec  e                                           ; $60de: $1d
	ld   e, $1f                                      ; $60df: $1e $1f
	jr   nc, jr_081_6114                             ; $60e1: $30 $31

	ld   h, $27                                      ; $60e3: $26 $27
	jr   nz, @+$23                                   ; $60e5: $20 $21

	ld   [hl+], a                                    ; $60e7: $22
	inc  hl                                          ; $60e8: $23
	inc  h                                           ; $60e9: $24
	dec  h                                           ; $60ea: $25
	ld   h, $27                                      ; $60eb: $26 $27
	jr   z, jr_081_6118                              ; $60ed: $28 $29

	ld   a, [hl+]                                    ; $60ef: $2a

jr_081_60f0:
	dec  hl                                          ; $60f0: $2b
	inc  l                                           ; $60f1: $2c
	dec  l                                           ; $60f2: $2d
	ld   l, $2f                                      ; $60f3: $2e $2f
	inc  h                                           ; $60f5: $24
	dec  h                                           ; $60f6: $25
	ld   h, $27                                      ; $60f7: $26 $27
	jr   nc, jr_081_612c                             ; $60f9: $30 $31

	ld   [hl-], a                                    ; $60fb: $32
	inc  sp                                          ; $60fc: $33
	inc  [hl]                                        ; $60fd: $34
	dec  [hl]                                        ; $60fe: $35
	ld   [hl], $37                                   ; $60ff: $36 $37
	jr   c, jr_081_613c                              ; $6101: $38 $39

	ld   a, [hl-]                                    ; $6103: $3a
	dec  sp                                          ; $6104: $3b
	inc  a                                           ; $6105: $3c
	dec  a                                           ; $6106: $3d
	ld   a, $3f                                      ; $6107: $3e $3f
	inc  [hl]                                        ; $6109: $34
	dec  [hl]                                        ; $610a: $35
	ld   h, $27                                      ; $610b: $26 $27
	ld   b, b                                        ; $610d: $40
	ld   b, c                                        ; $610e: $41
	ld   b, c                                        ; $610f: $41
	ld   b, c                                        ; $6110: $41
	ld   b, h                                        ; $6111: $44
	ld   b, l                                        ; $6112: $45
	ld   b, [hl]                                     ; $6113: $46

jr_081_6114:
	ld   b, a                                        ; $6114: $47
	ld   c, b                                        ; $6115: $48
	ld   c, c                                        ; $6116: $49
	ld   c, b                                        ; $6117: $48

jr_081_6118:
	ld   c, e                                        ; $6118: $4b
	ld   c, h                                        ; $6119: $4c
	ld   c, l                                        ; $611a: $4d
	ld   c, [hl]                                     ; $611b: $4e
	ld   c, a                                        ; $611c: $4f
	jr   z, @+$2b                                    ; $611d: $28 $29

	ld   h, $27                                      ; $611f: $26 $27
	ld   d, b                                        ; $6121: $50
	ld   d, c                                        ; $6122: $51
	ld   d, c                                        ; $6123: $51
	ld   d, e                                        ; $6124: $53
	ld   d, h                                        ; $6125: $54
	ld   d, l                                        ; $6126: $55
	ld   d, [hl]                                     ; $6127: $56
	ld   d, a                                        ; $6128: $57
	ld   e, b                                        ; $6129: $58
	ld   e, c                                        ; $612a: $59
	ld   e, d                                        ; $612b: $5a

jr_081_612c:
	ld   e, e                                        ; $612c: $5b
	ld   e, h                                        ; $612d: $5c
	ld   e, l                                        ; $612e: $5d
	ld   e, [hl]                                     ; $612f: $5e
	ld   e, a                                        ; $6130: $5f
	jr   c, @+$3b                                    ; $6131: $38 $39

	ld   h, $27                                      ; $6133: $26 $27
	ld   h, b                                        ; $6135: $60
	ld   h, c                                        ; $6136: $61
	ld   h, c                                        ; $6137: $61
	ld   h, e                                        ; $6138: $63
	ld   h, h                                        ; $6139: $64
	ld   h, l                                        ; $613a: $65
	ld   h, [hl]                                     ; $613b: $66

jr_081_613c:
	ld   h, a                                        ; $613c: $67
	ld   l, b                                        ; $613d: $68
	ld   l, c                                        ; $613e: $69
	ld   l, d                                        ; $613f: $6a
	ld   l, e                                        ; $6140: $6b
	ld   l, h                                        ; $6141: $6c
	ld   l, l                                        ; $6142: $6d
	ld   l, [hl]                                     ; $6143: $6e
	ld   l, a                                        ; $6144: $6f
	inc  l                                           ; $6145: $2c
	dec  l                                           ; $6146: $2d
	ld   h, $27                                      ; $6147: $26 $27
	ld   [hl], b                                     ; $6149: $70
	ld   [hl], c                                     ; $614a: $71
	ld   [hl], d                                     ; $614b: $72
	ld   [hl], e                                     ; $614c: $73
	ld   [hl], h                                     ; $614d: $74
	ld   [hl], l                                     ; $614e: $75
	halt                                             ; $614f: $76
	ld   [hl], a                                     ; $6150: $77
	ld   a, b                                        ; $6151: $78
	ld   a, c                                        ; $6152: $79
	ld   a, d                                        ; $6153: $7a
	ld   a, e                                        ; $6154: $7b
	ld   a, h                                        ; $6155: $7c
	ld   a, l                                        ; $6156: $7d
	ld   a, [hl]                                     ; $6157: $7e
	ld   a, a                                        ; $6158: $7f
	ld   h, c                                        ; $6159: $61
	dec  a                                           ; $615a: $3d
	ld   a, $3f                                      ; $615b: $3e $3f
	nop                                              ; $615d: $00
	ld   bc, $0302                                   ; $615e: $01 $02 $03
	inc  b                                           ; $6161: $04
	dec  b                                           ; $6162: $05
	ld   b, $07                                      ; $6163: $06 $07
	ld   [$0a09], sp                                 ; $6165: $08 $09 $0a
	dec  bc                                          ; $6168: $0b
	inc  c                                           ; $6169: $0c
	dec  c                                           ; $616a: $0d
	ld   c, $0f                                      ; $616b: $0e $0f
	ld   b, b                                        ; $616d: $40
	ld   h, c                                        ; $616e: $61
	ld   h, c                                        ; $616f: $61
	ld   h, b                                        ; $6170: $60
	db   $10                                         ; $6171: $10
	ld   de, $1312                                   ; $6172: $11 $12 $13
	inc  d                                           ; $6175: $14
	dec  d                                           ; $6176: $15
	ld   d, $17                                      ; $6177: $16 $17
	jr   jr_081_6194                                 ; $6179: $18 $19

	ld   a, [de]                                     ; $617b: $1a
	dec  de                                          ; $617c: $1b
	inc  e                                           ; $617d: $1c
	dec  e                                           ; $617e: $1d
	ld   e, $1f                                      ; $617f: $1e $1f
	ld   b, h                                        ; $6181: $44
	ld   b, l                                        ; $6182: $45
	ld   h, c                                        ; $6183: $61
	ld   h, b                                        ; $6184: $60
	dec  b                                           ; $6185: $05
	dec  b                                           ; $6186: $05
	dec  b                                           ; $6187: $05
	dec  b                                           ; $6188: $05
	dec  b                                           ; $6189: $05
	dec  b                                           ; $618a: $05
	dec  b                                           ; $618b: $05
	dec  b                                           ; $618c: $05
	dec  b                                           ; $618d: $05
	dec  b                                           ; $618e: $05
	dec  b                                           ; $618f: $05
	dec  b                                           ; $6190: $05
	inc  b                                           ; $6191: $04
	inc  b                                           ; $6192: $04
	dec  b                                           ; $6193: $05

jr_081_6194:
	dec  b                                           ; $6194: $05
	dec  c                                           ; $6195: $0d
	dec  c                                           ; $6196: $0d
	inc  c                                           ; $6197: $0c
	inc  c                                           ; $6198: $0c
	dec  b                                           ; $6199: $05
	dec  b                                           ; $619a: $05
	dec  b                                           ; $619b: $05
	dec  b                                           ; $619c: $05
	dec  b                                           ; $619d: $05
	dec  b                                           ; $619e: $05
	dec  b                                           ; $619f: $05
	dec  b                                           ; $61a0: $05
	dec  b                                           ; $61a1: $05
	dec  b                                           ; $61a2: $05
	dec  b                                           ; $61a3: $05
	dec  b                                           ; $61a4: $05
	inc  b                                           ; $61a5: $04
	inc  b                                           ; $61a6: $04
	dec  b                                           ; $61a7: $05
	dec  b                                           ; $61a8: $05
	dec  c                                           ; $61a9: $0d
	dec  c                                           ; $61aa: $0d
	inc  c                                           ; $61ab: $0c
	inc  c                                           ; $61ac: $0c
	dec  b                                           ; $61ad: $05
	dec  b                                           ; $61ae: $05
	dec  b                                           ; $61af: $05
	dec  b                                           ; $61b0: $05
	dec  b                                           ; $61b1: $05
	dec  b                                           ; $61b2: $05
	dec  b                                           ; $61b3: $05
	dec  b                                           ; $61b4: $05
	dec  b                                           ; $61b5: $05
	dec  b                                           ; $61b6: $05
	dec  b                                           ; $61b7: $05
	dec  b                                           ; $61b8: $05
	inc  b                                           ; $61b9: $04
	inc  b                                           ; $61ba: $04
	dec  b                                           ; $61bb: $05
	dec  b                                           ; $61bc: $05
	dec  c                                           ; $61bd: $0d
	dec  c                                           ; $61be: $0d
	inc  c                                           ; $61bf: $0c
	inc  c                                           ; $61c0: $0c
	dec  b                                           ; $61c1: $05
	dec  b                                           ; $61c2: $05
	dec  b                                           ; $61c3: $05
	dec  b                                           ; $61c4: $05
	dec  b                                           ; $61c5: $05
	dec  b                                           ; $61c6: $05
	dec  b                                           ; $61c7: $05
	dec  b                                           ; $61c8: $05
	dec  b                                           ; $61c9: $05
	dec  b                                           ; $61ca: $05
	dec  b                                           ; $61cb: $05
	dec  b                                           ; $61cc: $05
	dec  b                                           ; $61cd: $05
	dec  b                                           ; $61ce: $05
	dec  b                                           ; $61cf: $05
	dec  b                                           ; $61d0: $05
	dec  c                                           ; $61d1: $0d
	dec  c                                           ; $61d2: $0d
	inc  c                                           ; $61d3: $0c
	inc  c                                           ; $61d4: $0c
	dec  b                                           ; $61d5: $05
	dec  b                                           ; $61d6: $05
	dec  b                                           ; $61d7: $05
	dec  b                                           ; $61d8: $05
	dec  b                                           ; $61d9: $05
	dec  b                                           ; $61da: $05
	dec  b                                           ; $61db: $05
	dec  b                                           ; $61dc: $05
	inc  b                                           ; $61dd: $04
	dec  b                                           ; $61de: $05
	inc  b                                           ; $61df: $04
	dec  b                                           ; $61e0: $05
	dec  b                                           ; $61e1: $05
	dec  b                                           ; $61e2: $05
	dec  b                                           ; $61e3: $05
	dec  b                                           ; $61e4: $05
	dec  c                                           ; $61e5: $0d
	dec  c                                           ; $61e6: $0d
	inc  c                                           ; $61e7: $0c
	inc  c                                           ; $61e8: $0c
	inc  b                                           ; $61e9: $04
	inc  b                                           ; $61ea: $04
	inc  b                                           ; $61eb: $04
	inc  b                                           ; $61ec: $04
	inc  b                                           ; $61ed: $04
	dec  b                                           ; $61ee: $05
	dec  b                                           ; $61ef: $05
	inc  bc                                          ; $61f0: $03
	inc  bc                                          ; $61f1: $03
	inc  bc                                          ; $61f2: $03
	inc  bc                                          ; $61f3: $03
	inc  bc                                          ; $61f4: $03
	dec  b                                           ; $61f5: $05
	dec  b                                           ; $61f6: $05
	dec  b                                           ; $61f7: $05
	dec  b                                           ; $61f8: $05
	dec  c                                           ; $61f9: $0d
	dec  c                                           ; $61fa: $0d
	inc  c                                           ; $61fb: $0c
	inc  c                                           ; $61fc: $0c
	inc  b                                           ; $61fd: $04
	inc  b                                           ; $61fe: $04
	inc  b                                           ; $61ff: $04
	inc  b                                           ; $6200: $04
	inc  b                                           ; $6201: $04
	inc  b                                           ; $6202: $04
	inc  b                                           ; $6203: $04
	inc  b                                           ; $6204: $04
	inc  b                                           ; $6205: $04
	inc  b                                           ; $6206: $04
	inc  b                                           ; $6207: $04
	inc  b                                           ; $6208: $04
	inc  b                                           ; $6209: $04
	inc  b                                           ; $620a: $04
	inc  b                                           ; $620b: $04
	inc  b                                           ; $620c: $04
	inc  c                                           ; $620d: $0c
	dec  c                                           ; $620e: $0d
	inc  c                                           ; $620f: $0c
	inc  c                                           ; $6210: $0c
	inc  b                                           ; $6211: $04
	inc  b                                           ; $6212: $04
	inc  b                                           ; $6213: $04
	inc  b                                           ; $6214: $04
	inc  b                                           ; $6215: $04
	inc  b                                           ; $6216: $04
	inc  b                                           ; $6217: $04
	inc  b                                           ; $6218: $04
	inc  b                                           ; $6219: $04
	inc  b                                           ; $621a: $04
	inc  b                                           ; $621b: $04
	inc  b                                           ; $621c: $04
	inc  b                                           ; $621d: $04
	inc  b                                           ; $621e: $04
	inc  b                                           ; $621f: $04
	inc  b                                           ; $6220: $04
	inc  b                                           ; $6221: $04
	inc  c                                           ; $6222: $0c
	inc  c                                           ; $6223: $0c
	inc  c                                           ; $6224: $0c
	inc  c                                           ; $6225: $0c
	inc  c                                           ; $6226: $0c
	inc  c                                           ; $6227: $0c
	inc  c                                           ; $6228: $0c
	inc  c                                           ; $6229: $0c
	inc  c                                           ; $622a: $0c
	inc  c                                           ; $622b: $0c
	inc  c                                           ; $622c: $0c
	inc  c                                           ; $622d: $0c
	inc  c                                           ; $622e: $0c
	inc  c                                           ; $622f: $0c
	inc  c                                           ; $6230: $0c
	inc  c                                           ; $6231: $0c
	inc  c                                           ; $6232: $0c
	inc  c                                           ; $6233: $0c
	inc  c                                           ; $6234: $0c
	inc  c                                           ; $6235: $0c
	inc  b                                           ; $6236: $04
	inc  b                                           ; $6237: $04
	inc  h                                           ; $6238: $24
	inc  c                                           ; $6239: $0c
	dec  bc                                          ; $623a: $0b
	dec  bc                                          ; $623b: $0b
	dec  bc                                          ; $623c: $0b
	dec  bc                                          ; $623d: $0b
	dec  bc                                          ; $623e: $0b
	dec  bc                                          ; $623f: $0b
	dec  bc                                          ; $6240: $0b
	dec  bc                                          ; $6241: $0b
	dec  bc                                          ; $6242: $0b
	dec  bc                                          ; $6243: $0b
	dec  bc                                          ; $6244: $0b
	dec  bc                                          ; $6245: $0b
	dec  bc                                          ; $6246: $0b
	dec  bc                                          ; $6247: $0b
	dec  bc                                          ; $6248: $0b
	dec  bc                                          ; $6249: $0b
	inc  c                                           ; $624a: $0c
	inc  b                                           ; $624b: $04
	inc  h                                           ; $624c: $24
	nop                                              ; $624d: $00
	ld   bc, $0302                                   ; $624e: $01 $02 $03
	inc  b                                           ; $6251: $04
	inc  b                                           ; $6252: $04
	inc  bc                                          ; $6253: $03
	inc  b                                           ; $6254: $04
	inc  bc                                          ; $6255: $03
	add  hl, bc                                      ; $6256: $09
	ld   a, [bc]                                     ; $6257: $0a
	dec  bc                                          ; $6258: $0b
	inc  c                                           ; $6259: $0c
	dec  c                                           ; $625a: $0d
	ld   c, $0f                                      ; $625b: $0e $0f
	jr   nz, jr_081_6280                             ; $625d: $20 $21

	ld   [hl+], a                                    ; $625f: $22
	inc  hl                                          ; $6260: $23
	db   $10                                         ; $6261: $10
	ld   de, $1312                                   ; $6262: $11 $12 $13
	inc  d                                           ; $6265: $14
	dec  d                                           ; $6266: $15
	ld   d, $17                                      ; $6267: $16 $17
	jr   jr_081_6284                                 ; $6269: $18 $19

	ld   a, [de]                                     ; $626b: $1a
	dec  de                                          ; $626c: $1b
	inc  e                                           ; $626d: $1c
	dec  e                                           ; $626e: $1d
	ld   e, $1f                                      ; $626f: $1e $1f
	jr   nc, jr_081_62a4                             ; $6271: $30 $31

	ld   h, $27                                      ; $6273: $26 $27
	ld   b, d                                        ; $6275: $42
	ld   b, e                                        ; $6276: $43
	ld   [hl+], a                                    ; $6277: $22
	inc  hl                                          ; $6278: $23
	inc  h                                           ; $6279: $24
	dec  h                                           ; $627a: $25
	ld   h, $27                                      ; $627b: $26 $27
	jr   z, jr_081_62a8                              ; $627d: $28 $29

	ld   a, [hl+]                                    ; $627f: $2a

jr_081_6280:
	dec  hl                                          ; $6280: $2b
	inc  l                                           ; $6281: $2c
	dec  l                                           ; $6282: $2d
	inc  a                                           ; $6283: $3c

jr_081_6284:
	ld   b, c                                        ; $6284: $41
	inc  h                                           ; $6285: $24
	dec  h                                           ; $6286: $25
	ld   h, $27                                      ; $6287: $26 $27
	ld   a, [hl+]                                    ; $6289: $2a
	dec  hl                                          ; $628a: $2b
	ld   [hl-], a                                    ; $628b: $32
	inc  sp                                          ; $628c: $33
	inc  [hl]                                        ; $628d: $34
	dec  [hl]                                        ; $628e: $35
	ld   [hl], $37                                   ; $628f: $36 $37
	jr   c, jr_081_62cc                              ; $6291: $38 $39

	ld   a, [hl-]                                    ; $6293: $3a
	dec  sp                                          ; $6294: $3b
	inc  a                                           ; $6295: $3c
	dec  a                                           ; $6296: $3d
	ld   a, $42                                      ; $6297: $3e $42
	ld   b, e                                        ; $6299: $43
	dec  [hl]                                        ; $629a: $35
	ld   h, $27                                      ; $629b: $26 $27
	ld   l, $2f                                      ; $629d: $2e $2f
	ld   b, c                                        ; $629f: $41
	ld   b, c                                        ; $62a0: $41
	ld   b, h                                        ; $62a1: $44
	ld   b, l                                        ; $62a2: $45
	ld   b, [hl]                                     ; $62a3: $46

jr_081_62a4:
	ld   b, a                                        ; $62a4: $47
	ld   c, b                                        ; $62a5: $48
	ld   c, c                                        ; $62a6: $49
	ld   c, b                                        ; $62a7: $48

jr_081_62a8:
	ld   c, e                                        ; $62a8: $4b
	ld   c, h                                        ; $62a9: $4c
	ld   c, l                                        ; $62aa: $4d
	ld   b, [hl]                                     ; $62ab: $46
	ld   b, a                                        ; $62ac: $47
	ld   c, b                                        ; $62ad: $48
	add  hl, hl                                      ; $62ae: $29
	ld   h, $27                                      ; $62af: $26 $27
	ld   [hl-], a                                    ; $62b1: $32
	inc  sp                                          ; $62b2: $33
	ld   d, c                                        ; $62b3: $51
	ld   d, e                                        ; $62b4: $53
	ld   d, h                                        ; $62b5: $54
	ld   d, l                                        ; $62b6: $55
	ld   d, [hl]                                     ; $62b7: $56
	ld   d, a                                        ; $62b8: $57
	ld   e, b                                        ; $62b9: $58
	ld   e, c                                        ; $62ba: $59
	ld   e, d                                        ; $62bb: $5a
	ld   e, e                                        ; $62bc: $5b
	ld   e, h                                        ; $62bd: $5c
	ld   e, l                                        ; $62be: $5d
	ld   c, c                                        ; $62bf: $49
	ld   c, d                                        ; $62c0: $4a
	ld   d, d                                        ; $62c1: $52
	add  hl, sp                                      ; $62c2: $39
	ld   h, $27                                      ; $62c3: $26 $27
	ld   [hl], $37                                   ; $62c5: $36 $37
	ld   h, c                                        ; $62c7: $61
	ld   h, e                                        ; $62c8: $63
	ld   h, h                                        ; $62c9: $64
	ld   h, l                                        ; $62ca: $65
	ld   h, [hl]                                     ; $62cb: $66

jr_081_62cc:
	ld   h, a                                        ; $62cc: $67
	ld   l, b                                        ; $62cd: $68
	ld   l, c                                        ; $62ce: $69
	ld   l, d                                        ; $62cf: $6a
	ld   l, e                                        ; $62d0: $6b
	ld   l, h                                        ; $62d1: $6c
	ld   l, l                                        ; $62d2: $6d
	ld   l, [hl]                                     ; $62d3: $6e
	ld   h, d                                        ; $62d4: $62
	ld   c, d                                        ; $62d5: $4a
	dec  l                                           ; $62d6: $2d
	ld   h, $27                                      ; $62d7: $26 $27
	ld   a, [hl-]                                    ; $62d9: $3a
	dec  sp                                          ; $62da: $3b
	ld   [hl], d                                     ; $62db: $72
	ld   [hl], e                                     ; $62dc: $73
	ld   [hl], h                                     ; $62dd: $74
	ld   [hl], l                                     ; $62de: $75
	halt                                             ; $62df: $76
	ld   [hl], a                                     ; $62e0: $77
	ld   a, b                                        ; $62e1: $78
	ld   a, c                                        ; $62e2: $79
	ld   a, d                                        ; $62e3: $7a
	ld   a, e                                        ; $62e4: $7b
	ld   a, h                                        ; $62e5: $7c
	ld   a, l                                        ; $62e6: $7d
	ld   [$0507], sp                                 ; $62e7: $08 $07 $05
	dec  a                                           ; $62ea: $3d
	ld   a, $3f                                      ; $62eb: $3e $3f
	nop                                              ; $62ed: $00
	ld   bc, $0302                                   ; $62ee: $01 $02 $03
	inc  b                                           ; $62f1: $04
	dec  b                                           ; $62f2: $05
	ld   b, $07                                      ; $62f3: $06 $07
	ld   [$0a09], sp                                 ; $62f5: $08 $09 $0a
	dec  bc                                          ; $62f8: $0b
	inc  c                                           ; $62f9: $0c
	dec  c                                           ; $62fa: $0d
	ld   c, $0f                                      ; $62fb: $0e $0f
	ld   b, b                                        ; $62fd: $40
	ld   h, c                                        ; $62fe: $61
	ld   h, c                                        ; $62ff: $61
	ld   h, b                                        ; $6300: $60
	db   $10                                         ; $6301: $10
	ld   de, $1312                                   ; $6302: $11 $12 $13
	inc  d                                           ; $6305: $14
	dec  d                                           ; $6306: $15
	ld   d, $17                                      ; $6307: $16 $17
	jr   jr_081_6324                                 ; $6309: $18 $19

	ld   a, [de]                                     ; $630b: $1a
	dec  de                                          ; $630c: $1b
	inc  e                                           ; $630d: $1c
	dec  e                                           ; $630e: $1d
	ld   e, $1f                                      ; $630f: $1e $1f
	ld   b, h                                        ; $6311: $44
	ld   b, l                                        ; $6312: $45
	ld   h, c                                        ; $6313: $61
	ld   h, b                                        ; $6314: $60
	dec  b                                           ; $6315: $05
	dec  b                                           ; $6316: $05
	dec  b                                           ; $6317: $05
	dec  b                                           ; $6318: $05
	dec  b                                           ; $6319: $05
	dec  b                                           ; $631a: $05
	dec  b                                           ; $631b: $05
	dec  b                                           ; $631c: $05
	dec  b                                           ; $631d: $05
	dec  b                                           ; $631e: $05
	dec  b                                           ; $631f: $05
	dec  b                                           ; $6320: $05
	inc  b                                           ; $6321: $04
	inc  b                                           ; $6322: $04
	dec  b                                           ; $6323: $05

jr_081_6324:
	dec  b                                           ; $6324: $05
	dec  c                                           ; $6325: $0d
	dec  c                                           ; $6326: $0d
	inc  c                                           ; $6327: $0c
	inc  c                                           ; $6328: $0c
	dec  b                                           ; $6329: $05
	dec  b                                           ; $632a: $05
	dec  b                                           ; $632b: $05
	dec  b                                           ; $632c: $05
	dec  b                                           ; $632d: $05
	dec  b                                           ; $632e: $05
	dec  b                                           ; $632f: $05
	dec  b                                           ; $6330: $05
	dec  b                                           ; $6331: $05
	dec  b                                           ; $6332: $05
	dec  b                                           ; $6333: $05
	dec  b                                           ; $6334: $05
	inc  b                                           ; $6335: $04
	inc  b                                           ; $6336: $04
	dec  b                                           ; $6337: $05
	dec  b                                           ; $6338: $05
	dec  c                                           ; $6339: $0d
	dec  c                                           ; $633a: $0d
	inc  c                                           ; $633b: $0c
	inc  c                                           ; $633c: $0c
	dec  b                                           ; $633d: $05
	dec  b                                           ; $633e: $05
	dec  b                                           ; $633f: $05
	dec  b                                           ; $6340: $05
	dec  b                                           ; $6341: $05
	dec  b                                           ; $6342: $05
	dec  b                                           ; $6343: $05
	dec  b                                           ; $6344: $05
	dec  b                                           ; $6345: $05
	dec  b                                           ; $6346: $05
	dec  b                                           ; $6347: $05
	dec  b                                           ; $6348: $05
	inc  b                                           ; $6349: $04
	inc  b                                           ; $634a: $04
	dec  c                                           ; $634b: $0d
	dec  c                                           ; $634c: $0d
	dec  c                                           ; $634d: $0d
	dec  c                                           ; $634e: $0d
	inc  c                                           ; $634f: $0c
	inc  c                                           ; $6350: $0c
	dec  c                                           ; $6351: $0d
	dec  c                                           ; $6352: $0d
	dec  b                                           ; $6353: $05
	dec  b                                           ; $6354: $05
	dec  b                                           ; $6355: $05
	dec  b                                           ; $6356: $05
	dec  b                                           ; $6357: $05
	dec  b                                           ; $6358: $05
	dec  b                                           ; $6359: $05
	dec  b                                           ; $635a: $05
	dec  b                                           ; $635b: $05
	dec  b                                           ; $635c: $05
	dec  b                                           ; $635d: $05
	dec  b                                           ; $635e: $05
	dec  b                                           ; $635f: $05
	inc  c                                           ; $6360: $0c
	dec  c                                           ; $6361: $0d
	dec  c                                           ; $6362: $0d
	inc  c                                           ; $6363: $0c
	inc  c                                           ; $6364: $0c
	dec  c                                           ; $6365: $0d
	dec  c                                           ; $6366: $0d

Call_081_6367:
	dec  b                                           ; $6367: $05
	dec  b                                           ; $6368: $05
	dec  b                                           ; $6369: $05
	dec  b                                           ; $636a: $05
	dec  b                                           ; $636b: $05
	dec  b                                           ; $636c: $05
	inc  b                                           ; $636d: $04
	dec  b                                           ; $636e: $05
	inc  b                                           ; $636f: $04
	dec  b                                           ; $6370: $05
	dec  b                                           ; $6371: $05
	dec  b                                           ; $6372: $05
	dec  c                                           ; $6373: $0d
	inc  c                                           ; $6374: $0c
	dec  c                                           ; $6375: $0d
	dec  c                                           ; $6376: $0d
	inc  c                                           ; $6377: $0c
	inc  c                                           ; $6378: $0c
	dec  c                                           ; $6379: $0d
	inc  c                                           ; $637a: $0c
	inc  b                                           ; $637b: $04
	inc  b                                           ; $637c: $04
	inc  b                                           ; $637d: $04
	dec  b                                           ; $637e: $05
	dec  b                                           ; $637f: $05
	inc  bc                                          ; $6380: $03
	inc  bc                                          ; $6381: $03
	inc  bc                                          ; $6382: $03
	inc  bc                                          ; $6383: $03
	inc  bc                                          ; $6384: $03
	dec  b                                           ; $6385: $05
	dec  b                                           ; $6386: $05
	dec  c                                           ; $6387: $0d
	inc  c                                           ; $6388: $0c
	dec  b                                           ; $6389: $05
	dec  c                                           ; $638a: $0d
	inc  c                                           ; $638b: $0c
	inc  c                                           ; $638c: $0c
	inc  c                                           ; $638d: $0c
	inc  c                                           ; $638e: $0c
	inc  b                                           ; $638f: $04
	inc  b                                           ; $6390: $04
	inc  b                                           ; $6391: $04
	inc  b                                           ; $6392: $04
	inc  b                                           ; $6393: $04
	inc  b                                           ; $6394: $04
	inc  b                                           ; $6395: $04
	inc  b                                           ; $6396: $04
	inc  b                                           ; $6397: $04
	inc  b                                           ; $6398: $04
	inc  b                                           ; $6399: $04
	inc  b                                           ; $639a: $04
	inc  b                                           ; $639b: $04
	inc  b                                           ; $639c: $04
	inc  b                                           ; $639d: $04
	dec  c                                           ; $639e: $0d
	inc  c                                           ; $639f: $0c
	inc  c                                           ; $63a0: $0c
	inc  c                                           ; $63a1: $0c
	inc  c                                           ; $63a2: $0c
	inc  b                                           ; $63a3: $04
	inc  b                                           ; $63a4: $04
	inc  b                                           ; $63a5: $04
	inc  b                                           ; $63a6: $04
	inc  b                                           ; $63a7: $04
	inc  b                                           ; $63a8: $04
	inc  b                                           ; $63a9: $04
	inc  b                                           ; $63aa: $04
	inc  b                                           ; $63ab: $04
	inc  b                                           ; $63ac: $04
	inc  b                                           ; $63ad: $04
	inc  b                                           ; $63ae: $04
	inc  b                                           ; $63af: $04
	inc  b                                           ; $63b0: $04
	inc  b                                           ; $63b1: $04
	inc  c                                           ; $63b2: $0c
	inc  c                                           ; $63b3: $0c
	inc  c                                           ; $63b4: $0c
	inc  c                                           ; $63b5: $0c
	inc  c                                           ; $63b6: $0c
	inc  c                                           ; $63b7: $0c
	inc  c                                           ; $63b8: $0c
	inc  c                                           ; $63b9: $0c
	inc  c                                           ; $63ba: $0c
	inc  c                                           ; $63bb: $0c
	inc  c                                           ; $63bc: $0c
	inc  c                                           ; $63bd: $0c
	inc  c                                           ; $63be: $0c
	inc  c                                           ; $63bf: $0c
	inc  c                                           ; $63c0: $0c
	inc  c                                           ; $63c1: $0c
	inc  c                                           ; $63c2: $0c
	inc  c                                           ; $63c3: $0c
	inc  c                                           ; $63c4: $0c
	inc  c                                           ; $63c5: $0c
	inc  b                                           ; $63c6: $04
	inc  b                                           ; $63c7: $04
	inc  h                                           ; $63c8: $24
	inc  c                                           ; $63c9: $0c
	dec  bc                                          ; $63ca: $0b
	dec  bc                                          ; $63cb: $0b
	dec  bc                                          ; $63cc: $0b
	dec  bc                                          ; $63cd: $0b
	dec  bc                                          ; $63ce: $0b
	dec  bc                                          ; $63cf: $0b
	dec  bc                                          ; $63d0: $0b
	dec  bc                                          ; $63d1: $0b
	dec  bc                                          ; $63d2: $0b
	dec  bc                                          ; $63d3: $0b
	dec  bc                                          ; $63d4: $0b
	dec  bc                                          ; $63d5: $0b
	dec  bc                                          ; $63d6: $0b
	dec  bc                                          ; $63d7: $0b
	dec  bc                                          ; $63d8: $0b
	dec  bc                                          ; $63d9: $0b
	inc  c                                           ; $63da: $0c
	inc  b                                           ; $63db: $04
	inc  h                                           ; $63dc: $24
	nop                                              ; $63dd: $00
	ld   bc, $0302                                   ; $63de: $01 $02 $03
	inc  b                                           ; $63e1: $04
	inc  b                                           ; $63e2: $04
	ld   b, $04                                      ; $63e3: $06 $04
	inc  bc                                          ; $63e5: $03
	add  hl, bc                                      ; $63e6: $09
	ld   a, [bc]                                     ; $63e7: $0a
	dec  bc                                          ; $63e8: $0b
	inc  c                                           ; $63e9: $0c
	dec  c                                           ; $63ea: $0d
	ld   c, $0f                                      ; $63eb: $0e $0f
	jr   nz, jr_081_6410                             ; $63ed: $20 $21

	ld   [hl+], a                                    ; $63ef: $22
	inc  hl                                          ; $63f0: $23
	db   $10                                         ; $63f1: $10
	ld   de, $1312                                   ; $63f2: $11 $12 $13
	inc  d                                           ; $63f5: $14
	dec  d                                           ; $63f6: $15
	ld   d, $17                                      ; $63f7: $16 $17
	jr   @+$1b                                       ; $63f9: $18 $19

	ld   a, [de]                                     ; $63fb: $1a
	dec  de                                          ; $63fc: $1b
	inc  e                                           ; $63fd: $1c
	dec  e                                           ; $63fe: $1d
	ld   e, $1f                                      ; $63ff: $1e $1f
	jr   nc, jr_081_642e                             ; $6401: $30 $2b

	ld   l, a                                        ; $6403: $6f
	ld   l, [hl]                                     ; $6404: $6e
	jr   nz, @+$23                                   ; $6405: $20 $21

	ld   [hl+], a                                    ; $6407: $22
	inc  hl                                          ; $6408: $23
	inc  h                                           ; $6409: $24
	dec  h                                           ; $640a: $25
	ld   h, $27                                      ; $640b: $26 $27
	jr   z, jr_081_6438                              ; $640d: $28 $29

	ld   a, [hl+]                                    ; $640f: $2a

jr_081_6410:
	dec  hl                                          ; $6410: $2b
	inc  l                                           ; $6411: $2c
	dec  l                                           ; $6412: $2d
	ld   l, $2f                                      ; $6413: $2e $2f
	inc  h                                           ; $6415: $24
	dec  h                                           ; $6416: $25
	ld   h, $27                                      ; $6417: $26 $27
	jr   nc, jr_081_644c                             ; $6419: $30 $31

	ld   [hl-], a                                    ; $641b: $32
	inc  sp                                          ; $641c: $33
	inc  [hl]                                        ; $641d: $34
	dec  [hl]                                        ; $641e: $35
	ld   [hl], $37                                   ; $641f: $36 $37
	jr   c, jr_081_645c                              ; $6421: $38 $39

	ld   a, [hl-]                                    ; $6423: $3a
	dec  sp                                          ; $6424: $3b
	inc  a                                           ; $6425: $3c
	dec  a                                           ; $6426: $3d
	ld   a, $3f                                      ; $6427: $3e $3f
	ld   l, l                                        ; $6429: $6d
	ld   h, e                                        ; $642a: $63
	ld   h, d                                        ; $642b: $62
	ld   h, c                                        ; $642c: $61
	ld   b, b                                        ; $642d: $40

jr_081_642e:
	ld   b, c                                        ; $642e: $41
	ld   b, d                                        ; $642f: $42
	ld   b, e                                        ; $6430: $43
	ld   b, h                                        ; $6431: $44
	ld   b, l                                        ; $6432: $45
	ld   b, [hl]                                     ; $6433: $46
	ld   b, a                                        ; $6434: $47
	ld   c, b                                        ; $6435: $48
	ld   c, c                                        ; $6436: $49
	ld   c, d                                        ; $6437: $4a

jr_081_6438:
	ld   c, e                                        ; $6438: $4b
	ld   c, h                                        ; $6439: $4c
	ld   c, l                                        ; $643a: $4d
	ld   c, [hl]                                     ; $643b: $4e
	ld   c, a                                        ; $643c: $4f
	jr   z, @+$2b                                    ; $643d: $28 $29

	ld   a, [hl+]                                    ; $643f: $2a
	daa                                              ; $6440: $27
	ld   d, b                                        ; $6441: $50
	ld   d, c                                        ; $6442: $51
	ld   d, c                                        ; $6443: $51
	ld   d, c                                        ; $6444: $51
	ld   d, h                                        ; $6445: $54
	ld   d, l                                        ; $6446: $55
	ld   d, [hl]                                     ; $6447: $56
	ld   d, a                                        ; $6448: $57
	ld   e, b                                        ; $6449: $58
	ld   e, c                                        ; $644a: $59
	ld   e, d                                        ; $644b: $5a

jr_081_644c:
	ld   e, e                                        ; $644c: $5b
	ld   e, h                                        ; $644d: $5c
	ld   e, l                                        ; $644e: $5d
	ld   e, [hl]                                     ; $644f: $5e
	ld   e, a                                        ; $6450: $5f
	ld   h, b                                        ; $6451: $60
	ld   d, e                                        ; $6452: $53
	ld   a, [hl+]                                    ; $6453: $2a
	daa                                              ; $6454: $27
	ld   d, b                                        ; $6455: $50
	ld   d, c                                        ; $6456: $51
	ld   d, c                                        ; $6457: $51
	ld   d, c                                        ; $6458: $51
	ld   h, h                                        ; $6459: $64
	ld   h, l                                        ; $645a: $65
	ld   h, [hl]                                     ; $645b: $66

jr_081_645c:
	ld   h, a                                        ; $645c: $67
	ld   l, b                                        ; $645d: $68
	ld   l, c                                        ; $645e: $69
	ld   l, d                                        ; $645f: $6a
	ld   l, e                                        ; $6460: $6b
	ld   l, h                                        ; $6461: $6c
	ld   d, c                                        ; $6462: $51
	ld   d, c                                        ; $6463: $51
	ld   d, c                                        ; $6464: $51
	inc  l                                           ; $6465: $2c
	dec  l                                           ; $6466: $2d
	ld   l, $2f                                      ; $6467: $2e $2f
	ld   [hl], b                                     ; $6469: $70
	ld   [hl], c                                     ; $646a: $71
	ld   [hl], d                                     ; $646b: $72
	ld   [hl], e                                     ; $646c: $73
	ld   [hl], h                                     ; $646d: $74
	ld   [hl], l                                     ; $646e: $75
	halt                                             ; $646f: $76
	ld   [hl], a                                     ; $6470: $77
	ld   a, b                                        ; $6471: $78
	ld   a, c                                        ; $6472: $79
	ld   a, d                                        ; $6473: $7a
	ld   a, e                                        ; $6474: $7b
	ld   a, h                                        ; $6475: $7c
	ld   a, l                                        ; $6476: $7d
	ld   a, [hl]                                     ; $6477: $7e
	ld   a, a                                        ; $6478: $7f
	ld   d, c                                        ; $6479: $51
	ld   d, c                                        ; $647a: $51
	ld   d, c                                        ; $647b: $51
	ld   d, d                                        ; $647c: $52
	nop                                              ; $647d: $00
	ld   bc, $0302                                   ; $647e: $01 $02 $03
	inc  b                                           ; $6481: $04
	dec  b                                           ; $6482: $05
	ld   b, $07                                      ; $6483: $06 $07
	ld   [$0a09], sp                                 ; $6485: $08 $09 $0a
	dec  bc                                          ; $6488: $0b
	inc  c                                           ; $6489: $0c
	dec  c                                           ; $648a: $0d
	ld   c, $0f                                      ; $648b: $0e $0f
	ld   [$5151], sp                                 ; $648d: $08 $51 $51
	ld   d, b                                        ; $6490: $50
	db   $10                                         ; $6491: $10
	ld   de, $1312                                   ; $6492: $11 $12 $13
	inc  d                                           ; $6495: $14
	dec  d                                           ; $6496: $15
	ld   d, $17                                      ; $6497: $16 $17
	jr   jr_081_64b4                                 ; $6499: $18 $19

	ld   a, [de]                                     ; $649b: $1a
	dec  de                                          ; $649c: $1b
	inc  e                                           ; $649d: $1c
	dec  e                                           ; $649e: $1d
	ld   e, $1f                                      ; $649f: $1e $1f
	rlca                                             ; $64a1: $07
	dec  b                                           ; $64a2: $05
	ld   d, c                                        ; $64a3: $51
	ld   d, b                                        ; $64a4: $50
	dec  b                                           ; $64a5: $05
	dec  b                                           ; $64a6: $05
	dec  b                                           ; $64a7: $05
	dec  b                                           ; $64a8: $05
	dec  b                                           ; $64a9: $05
	dec  b                                           ; $64aa: $05
	dec  b                                           ; $64ab: $05
	dec  b                                           ; $64ac: $05
	dec  b                                           ; $64ad: $05
	dec  b                                           ; $64ae: $05
	dec  b                                           ; $64af: $05
	dec  b                                           ; $64b0: $05
	inc  b                                           ; $64b1: $04
	inc  b                                           ; $64b2: $04
	inc  b                                           ; $64b3: $04

jr_081_64b4:
	dec  b                                           ; $64b4: $05
	dec  c                                           ; $64b5: $0d
	dec  c                                           ; $64b6: $0d
	inc  c                                           ; $64b7: $0c
	inc  c                                           ; $64b8: $0c
	dec  b                                           ; $64b9: $05
	dec  b                                           ; $64ba: $05
	dec  b                                           ; $64bb: $05
	dec  b                                           ; $64bc: $05
	dec  b                                           ; $64bd: $05
	dec  b                                           ; $64be: $05
	dec  b                                           ; $64bf: $05
	dec  b                                           ; $64c0: $05
	dec  b                                           ; $64c1: $05
	dec  b                                           ; $64c2: $05
	dec  b                                           ; $64c3: $05
	dec  b                                           ; $64c4: $05
	inc  b                                           ; $64c5: $04
	inc  b                                           ; $64c6: $04
	inc  b                                           ; $64c7: $04
	dec  b                                           ; $64c8: $05
	dec  c                                           ; $64c9: $0d
	dec  c                                           ; $64ca: $0d
	inc  b                                           ; $64cb: $04
	inc  b                                           ; $64cc: $04
	dec  b                                           ; $64cd: $05
	dec  b                                           ; $64ce: $05
	dec  b                                           ; $64cf: $05
	dec  b                                           ; $64d0: $05
	dec  b                                           ; $64d1: $05
	dec  b                                           ; $64d2: $05
	dec  b                                           ; $64d3: $05
	dec  b                                           ; $64d4: $05
	dec  b                                           ; $64d5: $05
	dec  b                                           ; $64d6: $05
	dec  b                                           ; $64d7: $05
	dec  b                                           ; $64d8: $05
	inc  b                                           ; $64d9: $04
	inc  b                                           ; $64da: $04
	inc  b                                           ; $64db: $04
	dec  b                                           ; $64dc: $05
	dec  c                                           ; $64dd: $0d
	dec  c                                           ; $64de: $0d
	inc  c                                           ; $64df: $0c
	inc  c                                           ; $64e0: $0c
	dec  b                                           ; $64e1: $05
	dec  b                                           ; $64e2: $05
	dec  b                                           ; $64e3: $05
	dec  b                                           ; $64e4: $05
	dec  b                                           ; $64e5: $05
	dec  b                                           ; $64e6: $05
	dec  b                                           ; $64e7: $05
	dec  b                                           ; $64e8: $05
	dec  b                                           ; $64e9: $05
	dec  b                                           ; $64ea: $05
	dec  b                                           ; $64eb: $05
	dec  b                                           ; $64ec: $05
	dec  b                                           ; $64ed: $05
	dec  b                                           ; $64ee: $05
	dec  b                                           ; $64ef: $05
	dec  b                                           ; $64f0: $05
	dec  b                                           ; $64f1: $05
	dec  b                                           ; $64f2: $05
	inc  b                                           ; $64f3: $04
	inc  b                                           ; $64f4: $04
	dec  b                                           ; $64f5: $05
	dec  b                                           ; $64f6: $05
	dec  b                                           ; $64f7: $05
	dec  b                                           ; $64f8: $05
	dec  b                                           ; $64f9: $05
	dec  b                                           ; $64fa: $05
	dec  b                                           ; $64fb: $05
	dec  b                                           ; $64fc: $05
	inc  b                                           ; $64fd: $04
	dec  b                                           ; $64fe: $05
	inc  b                                           ; $64ff: $04
	dec  b                                           ; $6500: $05
	dec  b                                           ; $6501: $05
	dec  b                                           ; $6502: $05
	dec  b                                           ; $6503: $05
	dec  b                                           ; $6504: $05
	dec  c                                           ; $6505: $0d
	dec  c                                           ; $6506: $0d
	inc  c                                           ; $6507: $0c
	inc  c                                           ; $6508: $0c
	inc  b                                           ; $6509: $04
	inc  b                                           ; $650a: $04
	inc  b                                           ; $650b: $04
	inc  b                                           ; $650c: $04
	inc  b                                           ; $650d: $04
	inc  b                                           ; $650e: $04
	dec  b                                           ; $650f: $05
	inc  bc                                          ; $6510: $03
	inc  bc                                          ; $6511: $03
	inc  bc                                          ; $6512: $03
	inc  bc                                          ; $6513: $03
	inc  bc                                          ; $6514: $03
	dec  b                                           ; $6515: $05
	dec  b                                           ; $6516: $05
	dec  b                                           ; $6517: $05
	dec  b                                           ; $6518: $05
	dec  b                                           ; $6519: $05
	dec  b                                           ; $651a: $05
	inc  c                                           ; $651b: $0c
	inc  c                                           ; $651c: $0c
	inc  b                                           ; $651d: $04
	inc  b                                           ; $651e: $04
	inc  b                                           ; $651f: $04
	inc  b                                           ; $6520: $04
	inc  b                                           ; $6521: $04
	inc  b                                           ; $6522: $04
	inc  b                                           ; $6523: $04
	inc  b                                           ; $6524: $04
	inc  b                                           ; $6525: $04
	inc  b                                           ; $6526: $04
	inc  b                                           ; $6527: $04
	inc  b                                           ; $6528: $04
	inc  b                                           ; $6529: $04
	inc  b                                           ; $652a: $04
	inc  b                                           ; $652b: $04
	inc  b                                           ; $652c: $04
	inc  c                                           ; $652d: $0c
	inc  c                                           ; $652e: $0c
	inc  c                                           ; $652f: $0c
	inc  c                                           ; $6530: $0c
	inc  b                                           ; $6531: $04
	inc  b                                           ; $6532: $04
	inc  b                                           ; $6533: $04
	inc  b                                           ; $6534: $04
	inc  b                                           ; $6535: $04
	inc  b                                           ; $6536: $04
	inc  b                                           ; $6537: $04
	inc  b                                           ; $6538: $04
	inc  b                                           ; $6539: $04
	inc  b                                           ; $653a: $04
	inc  b                                           ; $653b: $04
	inc  b                                           ; $653c: $04
	inc  b                                           ; $653d: $04
	inc  b                                           ; $653e: $04
	inc  b                                           ; $653f: $04
	inc  b                                           ; $6540: $04
	inc  b                                           ; $6541: $04
	inc  b                                           ; $6542: $04
	inc  b                                           ; $6543: $04
	inc  b                                           ; $6544: $04
	inc  c                                           ; $6545: $0c
	inc  c                                           ; $6546: $0c
	inc  c                                           ; $6547: $0c
	inc  c                                           ; $6548: $0c
	inc  c                                           ; $6549: $0c
	inc  c                                           ; $654a: $0c
	inc  c                                           ; $654b: $0c
	inc  c                                           ; $654c: $0c
	inc  c                                           ; $654d: $0c
	inc  c                                           ; $654e: $0c
	inc  c                                           ; $654f: $0c
	inc  c                                           ; $6550: $0c
	inc  c                                           ; $6551: $0c
	inc  c                                           ; $6552: $0c
	inc  c                                           ; $6553: $0c
	inc  c                                           ; $6554: $0c
	inc  b                                           ; $6555: $04
	inc  b                                           ; $6556: $04
	inc  b                                           ; $6557: $04
	inc  h                                           ; $6558: $24
	inc  c                                           ; $6559: $0c
	dec  bc                                          ; $655a: $0b
	dec  bc                                          ; $655b: $0b
	dec  bc                                          ; $655c: $0b
	dec  bc                                          ; $655d: $0b
	dec  bc                                          ; $655e: $0b
	dec  bc                                          ; $655f: $0b
	dec  bc                                          ; $6560: $0b
	dec  bc                                          ; $6561: $0b
	dec  bc                                          ; $6562: $0b
	dec  bc                                          ; $6563: $0b
	dec  bc                                          ; $6564: $0b
	dec  bc                                          ; $6565: $0b
	dec  bc                                          ; $6566: $0b
	dec  bc                                          ; $6567: $0b
	dec  bc                                          ; $6568: $0b
	inc  bc                                          ; $6569: $03
	inc  b                                           ; $656a: $04
	inc  b                                           ; $656b: $04
	inc  h                                           ; $656c: $24
	nop                                              ; $656d: $00
	ld   bc, $0302                                   ; $656e: $01 $02 $03
	inc  b                                           ; $6571: $04
	dec  b                                           ; $6572: $05
	ld   b, $07                                      ; $6573: $06 $07
	ld   [$0a09], sp                                 ; $6575: $08 $09 $0a
	dec  bc                                          ; $6578: $0b
	inc  c                                           ; $6579: $0c
	dec  c                                           ; $657a: $0d
	ld   c, $0f                                      ; $657b: $0e $0f
	jr   nz, jr_081_65a0                             ; $657d: $20 $21

	ld   [bc], a                                     ; $657f: $02
	inc  hl                                          ; $6580: $23
	db   $10                                         ; $6581: $10
	ld   de, $1312                                   ; $6582: $11 $12 $13
	inc  d                                           ; $6585: $14
	dec  d                                           ; $6586: $15
	ld   d, $17                                      ; $6587: $16 $17
	jr   @+$1b                                       ; $6589: $18 $19

	ld   a, [de]                                     ; $658b: $1a
	dec  de                                          ; $658c: $1b
	inc  e                                           ; $658d: $1c
	dec  e                                           ; $658e: $1d
	ld   e, $1f                                      ; $658f: $1e $1f
	jr   nc, @+$27                                   ; $6591: $30 $25

	ld   [hl-], a                                    ; $6593: $32
	inc  sp                                          ; $6594: $33
	jr   nz, @+$23                                   ; $6595: $20 $21

	ld   [hl+], a                                    ; $6597: $22
	inc  hl                                          ; $6598: $23
	inc  h                                           ; $6599: $24
	dec  h                                           ; $659a: $25
	ld   h, $27                                      ; $659b: $26 $27
	jr   z, jr_081_65c8                              ; $659d: $28 $29

	ld   a, [hl+]                                    ; $659f: $2a

jr_081_65a0:
	dec  hl                                          ; $65a0: $2b
	inc  e                                           ; $65a1: $1c
	dec  l                                           ; $65a2: $2d
	ld   l, $2f                                      ; $65a3: $2e $2f
	inc  h                                           ; $65a5: $24
	dec  h                                           ; $65a6: $25
	ld   h, $27                                      ; $65a7: $26 $27
	jr   nc, jr_081_65dc                             ; $65a9: $30 $31

	ld   [hl-], a                                    ; $65ab: $32
	inc  sp                                          ; $65ac: $33
	inc  [hl]                                        ; $65ad: $34
	dec  [hl]                                        ; $65ae: $35
	ld   [hl], $37                                   ; $65af: $36 $37
	jr   c, jr_081_65ec                              ; $65b1: $38 $39

	ld   a, [hl-]                                    ; $65b3: $3a
	dec  sp                                          ; $65b4: $3b
	inc  a                                           ; $65b5: $3c
	dec  a                                           ; $65b6: $3d
	ld   a, $3f                                      ; $65b7: $3e $3f
	inc  [hl]                                        ; $65b9: $34
	dec  h                                           ; $65ba: $25
	ld   [hl], $37                                   ; $65bb: $36 $37
	ld   b, b                                        ; $65bd: $40
	ld   b, c                                        ; $65be: $41
	ld   [hl-], a                                    ; $65bf: $32
	ld   b, e                                        ; $65c0: $43
	ld   b, h                                        ; $65c1: $44
	ld   b, l                                        ; $65c2: $45
	ld   b, [hl]                                     ; $65c3: $46
	ld   b, a                                        ; $65c4: $47
	ld   c, b                                        ; $65c5: $48
	ld   c, c                                        ; $65c6: $49
	ld   c, d                                        ; $65c7: $4a

jr_081_65c8:
	ld   c, e                                        ; $65c8: $4b
	ld   c, h                                        ; $65c9: $4c
	ld   c, l                                        ; $65ca: $4d
	ld   c, [hl]                                     ; $65cb: $4e
	ld   c, a                                        ; $65cc: $4f
	jr   z, @+$2b                                    ; $65cd: $28 $29

	ld   a, [hl+]                                    ; $65cf: $2a
	dec  hl                                          ; $65d0: $2b
	ld   d, b                                        ; $65d1: $50
	ld   d, c                                        ; $65d2: $51
	ld   d, d                                        ; $65d3: $52
	ld   d, e                                        ; $65d4: $53
	ld   d, h                                        ; $65d5: $54
	ld   d, l                                        ; $65d6: $55
	ld   d, [hl]                                     ; $65d7: $56
	ld   d, a                                        ; $65d8: $57
	ld   e, b                                        ; $65d9: $58
	ld   e, c                                        ; $65da: $59
	ld   e, d                                        ; $65db: $5a

jr_081_65dc:
	ld   e, e                                        ; $65dc: $5b
	ld   e, h                                        ; $65dd: $5c
	ld   e, l                                        ; $65de: $5d
	ld   e, [hl]                                     ; $65df: $5e
	ld   e, a                                        ; $65e0: $5f
	jr   c, @+$3b                                    ; $65e1: $38 $39

	ld   a, [hl-]                                    ; $65e3: $3a
	dec  sp                                          ; $65e4: $3b
	ld   h, b                                        ; $65e5: $60
	ld   h, c                                        ; $65e6: $61
	ld   h, d                                        ; $65e7: $62
	ld   h, e                                        ; $65e8: $63
	ld   h, h                                        ; $65e9: $64
	ld   h, l                                        ; $65ea: $65
	ld   h, [hl]                                     ; $65eb: $66

jr_081_65ec:
	ld   h, a                                        ; $65ec: $67
	ld   l, b                                        ; $65ed: $68
	ld   l, c                                        ; $65ee: $69
	ld   l, d                                        ; $65ef: $6a
	ld   l, e                                        ; $65f0: $6b
	ld   l, h                                        ; $65f1: $6c
	ld   l, l                                        ; $65f2: $6d
	ld   l, [hl]                                     ; $65f3: $6e
	ld   l, a                                        ; $65f4: $6f
	inc  l                                           ; $65f5: $2c
	dec  l                                           ; $65f6: $2d
	ld   l, $2f                                      ; $65f7: $2e $2f
	ld   [hl], b                                     ; $65f9: $70
	ld   [hl], c                                     ; $65fa: $71
	ld   [hl], d                                     ; $65fb: $72
	ld   [hl], e                                     ; $65fc: $73
	ld   [hl], h                                     ; $65fd: $74
	ld   [hl], l                                     ; $65fe: $75
	halt                                             ; $65ff: $76
	ld   [hl], a                                     ; $6600: $77
	ld   a, b                                        ; $6601: $78
	ld   a, c                                        ; $6602: $79
	ld   a, d                                        ; $6603: $7a
	ld   a, e                                        ; $6604: $7b
	ld   a, h                                        ; $6605: $7c
	ld   a, l                                        ; $6606: $7d
	ld   a, [hl]                                     ; $6607: $7e
	ld   a, a                                        ; $6608: $7f
	inc  a                                           ; $6609: $3c
	dec  a                                           ; $660a: $3d
	ld   a, $3f                                      ; $660b: $3e $3f
	nop                                              ; $660d: $00
	ld   bc, $0302                                   ; $660e: $01 $02 $03
	inc  b                                           ; $6611: $04
	dec  b                                           ; $6612: $05
	ld   b, $07                                      ; $6613: $06 $07
	ld   [$0a09], sp                                 ; $6615: $08 $09 $0a
	dec  bc                                          ; $6618: $0b
	inc  c                                           ; $6619: $0c
	dec  c                                           ; $661a: $0d
	ld   c, $0f                                      ; $661b: $0e $0f
	ld   b, b                                        ; $661d: $40
	ld   b, c                                        ; $661e: $41
	ld   b, d                                        ; $661f: $42
	ld   b, e                                        ; $6620: $43
	db   $10                                         ; $6621: $10
	ld   de, $1312                                   ; $6622: $11 $12 $13
	inc  d                                           ; $6625: $14
	dec  d                                           ; $6626: $15
	ld   d, $17                                      ; $6627: $16 $17
	jr   jr_081_6644                                 ; $6629: $18 $19

	ld   a, [de]                                     ; $662b: $1a
	dec  de                                          ; $662c: $1b
	inc  e                                           ; $662d: $1c
	dec  e                                           ; $662e: $1d
	ld   e, $1f                                      ; $662f: $1e $1f
	ld   b, h                                        ; $6631: $44
	ld   b, l                                        ; $6632: $45
	ld   b, [hl]                                     ; $6633: $46
	ld   b, a                                        ; $6634: $47
	dec  b                                           ; $6635: $05
	dec  b                                           ; $6636: $05
	dec  b                                           ; $6637: $05
	dec  b                                           ; $6638: $05
	dec  b                                           ; $6639: $05
	dec  b                                           ; $663a: $05
	dec  b                                           ; $663b: $05
	dec  b                                           ; $663c: $05
	dec  b                                           ; $663d: $05
	dec  b                                           ; $663e: $05
	dec  b                                           ; $663f: $05
	inc  b                                           ; $6640: $04
	inc  b                                           ; $6641: $04
	inc  bc                                          ; $6642: $03
	inc  bc                                          ; $6643: $03

jr_081_6644:
	inc  bc                                          ; $6644: $03
	dec  bc                                          ; $6645: $0b
	inc  c                                           ; $6646: $0c
	dec  b                                           ; $6647: $05
	dec  c                                           ; $6648: $0d
	inc  b                                           ; $6649: $04
	dec  b                                           ; $664a: $05
	inc  b                                           ; $664b: $04
	dec  b                                           ; $664c: $05
	dec  b                                           ; $664d: $05
	dec  b                                           ; $664e: $05
	dec  b                                           ; $664f: $05
	dec  b                                           ; $6650: $05
	dec  b                                           ; $6651: $05
	dec  b                                           ; $6652: $05
	dec  b                                           ; $6653: $05
	inc  bc                                          ; $6654: $03
	inc  b                                           ; $6655: $04
	inc  bc                                          ; $6656: $03
	inc  bc                                          ; $6657: $03
	inc  bc                                          ; $6658: $03
	dec  bc                                          ; $6659: $0b
	inc  c                                           ; $665a: $0c
	dec  c                                           ; $665b: $0d
	dec  c                                           ; $665c: $0d
	inc  b                                           ; $665d: $04
	inc  b                                           ; $665e: $04
	inc  b                                           ; $665f: $04
	dec  b                                           ; $6660: $05
	dec  b                                           ; $6661: $05
	dec  b                                           ; $6662: $05
	dec  b                                           ; $6663: $05
	dec  b                                           ; $6664: $05
	dec  b                                           ; $6665: $05
	dec  b                                           ; $6666: $05
	inc  bc                                          ; $6667: $03
	inc  bc                                          ; $6668: $03
	inc  b                                           ; $6669: $04
	inc  bc                                          ; $666a: $03
	inc  bc                                          ; $666b: $03
	inc  bc                                          ; $666c: $03
	dec  bc                                          ; $666d: $0b
	inc  c                                           ; $666e: $0c
	dec  bc                                          ; $666f: $0b
	dec  bc                                          ; $6670: $0b
	inc  bc                                          ; $6671: $03
	inc  bc                                          ; $6672: $03
	inc  bc                                          ; $6673: $03
	dec  b                                           ; $6674: $05
	dec  b                                           ; $6675: $05
	dec  b                                           ; $6676: $05
	dec  b                                           ; $6677: $05
	dec  b                                           ; $6678: $05
	dec  b                                           ; $6679: $05
	dec  b                                           ; $667a: $05
	inc  bc                                          ; $667b: $03
	dec  b                                           ; $667c: $05
	inc  b                                           ; $667d: $04
	inc  b                                           ; $667e: $04
	inc  b                                           ; $667f: $04
	inc  b                                           ; $6680: $04
	inc  c                                           ; $6681: $0c
	inc  c                                           ; $6682: $0c
	dec  bc                                          ; $6683: $0b
	dec  bc                                          ; $6684: $0b
	inc  bc                                          ; $6685: $03
	inc  bc                                          ; $6686: $03
	inc  bc                                          ; $6687: $03
	dec  b                                           ; $6688: $05
	dec  b                                           ; $6689: $05
	dec  b                                           ; $668a: $05
	dec  b                                           ; $668b: $05
	dec  b                                           ; $668c: $05
	dec  b                                           ; $668d: $05
	dec  b                                           ; $668e: $05
	dec  b                                           ; $668f: $05
	inc  b                                           ; $6690: $04
	inc  b                                           ; $6691: $04
	inc  bc                                          ; $6692: $03
	dec  b                                           ; $6693: $05
	dec  b                                           ; $6694: $05
	dec  c                                           ; $6695: $0d
	dec  bc                                          ; $6696: $0b
	inc  c                                           ; $6697: $0c
	dec  bc                                          ; $6698: $0b
	dec  b                                           ; $6699: $05
	inc  bc                                          ; $669a: $03
	inc  bc                                          ; $669b: $03
	inc  bc                                          ; $669c: $03
	inc  bc                                          ; $669d: $03
	inc  bc                                          ; $669e: $03
	inc  bc                                          ; $669f: $03
	inc  bc                                          ; $66a0: $03
	inc  bc                                          ; $66a1: $03
	inc  b                                           ; $66a2: $04
	inc  b                                           ; $66a3: $04
	inc  b                                           ; $66a4: $04
	inc  b                                           ; $66a5: $04
	inc  bc                                          ; $66a6: $03
	dec  b                                           ; $66a7: $05
	dec  b                                           ; $66a8: $05
	dec  c                                           ; $66a9: $0d
	dec  bc                                          ; $66aa: $0b
	inc  c                                           ; $66ab: $0c
	inc  c                                           ; $66ac: $0c
	inc  b                                           ; $66ad: $04
	inc  bc                                          ; $66ae: $03
	inc  bc                                          ; $66af: $03
	inc  bc                                          ; $66b0: $03
	inc  bc                                          ; $66b1: $03
	inc  bc                                          ; $66b2: $03
	inc  bc                                          ; $66b3: $03
	inc  bc                                          ; $66b4: $03
	inc  bc                                          ; $66b5: $03
	inc  b                                           ; $66b6: $04
	inc  b                                           ; $66b7: $04
	inc  b                                           ; $66b8: $04
	inc  b                                           ; $66b9: $04
	inc  bc                                          ; $66ba: $03
	inc  bc                                          ; $66bb: $03
	inc  bc                                          ; $66bc: $03
	dec  bc                                          ; $66bd: $0b
	dec  bc                                          ; $66be: $0b
	inc  c                                           ; $66bf: $0c
	inc  c                                           ; $66c0: $0c
	inc  bc                                          ; $66c1: $03
	inc  bc                                          ; $66c2: $03
	inc  bc                                          ; $66c3: $03
	inc  bc                                          ; $66c4: $03
	dec  b                                           ; $66c5: $05
	dec  b                                           ; $66c6: $05
	dec  b                                           ; $66c7: $05
	dec  b                                           ; $66c8: $05
	dec  b                                           ; $66c9: $05
	dec  b                                           ; $66ca: $05
	dec  b                                           ; $66cb: $05
	dec  b                                           ; $66cc: $05
	dec  b                                           ; $66cd: $05
	inc  bc                                          ; $66ce: $03
	inc  bc                                          ; $66cf: $03
	inc  bc                                          ; $66d0: $03
	dec  bc                                          ; $66d1: $0b
	dec  c                                           ; $66d2: $0d
	dec  c                                           ; $66d3: $0d
	dec  c                                           ; $66d4: $0d
	dec  c                                           ; $66d5: $0d
	dec  c                                           ; $66d6: $0d
	dec  c                                           ; $66d7: $0d
	inc  c                                           ; $66d8: $0c
	inc  c                                           ; $66d9: $0c
	dec  c                                           ; $66da: $0d
	dec  c                                           ; $66db: $0d
	inc  c                                           ; $66dc: $0c
	inc  c                                           ; $66dd: $0c
	inc  c                                           ; $66de: $0c
	inc  c                                           ; $66df: $0c
	inc  c                                           ; $66e0: $0c
	inc  c                                           ; $66e1: $0c
	inc  c                                           ; $66e2: $0c
	inc  c                                           ; $66e3: $0c
	inc  c                                           ; $66e4: $0c
	inc  c                                           ; $66e5: $0c
	dec  c                                           ; $66e6: $0d
	dec  c                                           ; $66e7: $0d
	dec  c                                           ; $66e8: $0d
	dec  c                                           ; $66e9: $0d
	dec  c                                           ; $66ea: $0d
	dec  c                                           ; $66eb: $0d
	inc  c                                           ; $66ec: $0c
	inc  c                                           ; $66ed: $0c
	inc  c                                           ; $66ee: $0c
	inc  c                                           ; $66ef: $0c
	inc  c                                           ; $66f0: $0c
	inc  c                                           ; $66f1: $0c
	inc  c                                           ; $66f2: $0c
	inc  c                                           ; $66f3: $0c
	inc  c                                           ; $66f4: $0c
	inc  c                                           ; $66f5: $0c
	inc  c                                           ; $66f6: $0c
	inc  c                                           ; $66f7: $0c
	inc  c                                           ; $66f8: $0c
	inc  c                                           ; $66f9: $0c
	inc  c                                           ; $66fa: $0c
	inc  c                                           ; $66fb: $0c
	inc  c                                           ; $66fc: $0c
	ld   c, b                                        ; $66fd: $48
	ld   c, c                                        ; $66fe: $49
	ld   c, d                                        ; $66ff: $4a
	ld   c, e                                        ; $6700: $4b
	inc  b                                           ; $6701: $04
	dec  b                                           ; $6702: $05
	ld   b, $07                                      ; $6703: $06 $07
	ld   [$0a09], sp                                 ; $6705: $08 $09 $0a
	dec  bc                                          ; $6708: $0b
	inc  c                                           ; $6709: $0c
	dec  c                                           ; $670a: $0d
	ld   c, $0f                                      ; $670b: $0e $0f
	jr   nz, jr_081_6730                             ; $670d: $20 $21

	ld   [bc], a                                     ; $670f: $02
	inc  hl                                          ; $6710: $23
	ld   c, h                                        ; $6711: $4c
	ld   c, l                                        ; $6712: $4d
	ld   c, [hl]                                     ; $6713: $4e
	ld   c, a                                        ; $6714: $4f
	inc  d                                           ; $6715: $14
	dec  d                                           ; $6716: $15
	ld   d, $17                                      ; $6717: $16 $17
	jr   @+$1b                                       ; $6719: $18 $19

	ld   a, [de]                                     ; $671b: $1a
	dec  de                                          ; $671c: $1b
	inc  e                                           ; $671d: $1c
	dec  e                                           ; $671e: $1d
	ld   e, $1f                                      ; $671f: $1e $1f
	jr   nc, @+$27                                   ; $6721: $30 $25

	ld   [hl-], a                                    ; $6723: $32
	inc  sp                                          ; $6724: $33
	jr   nz, @+$23                                   ; $6725: $20 $21

	ld   [hl+], a                                    ; $6727: $22
	ld   d, l                                        ; $6728: $55
	inc  h                                           ; $6729: $24
	dec  h                                           ; $672a: $25
	ld   h, $27                                      ; $672b: $26 $27
	jr   z, jr_081_6758                              ; $672d: $28 $29

	ld   a, [hl+]                                    ; $672f: $2a

jr_081_6730:
	dec  hl                                          ; $6730: $2b
	inc  e                                           ; $6731: $1c
	dec  l                                           ; $6732: $2d
	ld   l, $2f                                      ; $6733: $2e $2f
	inc  h                                           ; $6735: $24
	dec  h                                           ; $6736: $25
	ld   h, $27                                      ; $6737: $26 $27
	ld   sp, $3222                                   ; $6739: $31 $22 $32
	ld   d, [hl]                                     ; $673c: $56
	dec  [hl]                                        ; $673d: $35
	dec  [hl]                                        ; $673e: $35
	ld   [hl], $37                                   ; $673f: $36 $37
	jr   c, jr_081_677c                              ; $6741: $38 $39

	ld   a, [hl-]                                    ; $6743: $3a
	dec  sp                                          ; $6744: $3b
	inc  a                                           ; $6745: $3c
	dec  a                                           ; $6746: $3d
	ld   a, $3f                                      ; $6747: $3e $3f
	inc  [hl]                                        ; $6749: $34
	dec  h                                           ; $674a: $25
	ld   [hl], $37                                   ; $674b: $36 $37
	ld   b, d                                        ; $674d: $42
	inc  l                                           ; $674e: $2c
	ld   [hl-], a                                    ; $674f: $32
	ld   d, b                                        ; $6750: $50
	ld   d, c                                        ; $6751: $51
	ld   d, d                                        ; $6752: $52
	ld   d, e                                        ; $6753: $53
	ld   d, h                                        ; $6754: $54
	ld   c, b                                        ; $6755: $48
	ld   c, c                                        ; $6756: $49
	ld   c, d                                        ; $6757: $4a

jr_081_6758:
	ld   c, e                                        ; $6758: $4b
	ld   c, h                                        ; $6759: $4c
	ld   c, l                                        ; $675a: $4d
	ld   c, [hl]                                     ; $675b: $4e
	ld   c, a                                        ; $675c: $4f
	jr   z, @+$2b                                    ; $675d: $28 $29

	ld   a, [hl+]                                    ; $675f: $2a
	dec  hl                                          ; $6760: $2b
	ld   d, b                                        ; $6761: $50
	ld   d, c                                        ; $6762: $51
	ld   d, d                                        ; $6763: $52
	ld   d, e                                        ; $6764: $53
	ld   d, h                                        ; $6765: $54
	ld   d, l                                        ; $6766: $55
	ld   d, [hl]                                     ; $6767: $56
	ld   d, a                                        ; $6768: $57
	ld   e, b                                        ; $6769: $58
	ld   e, c                                        ; $676a: $59
	ld   e, d                                        ; $676b: $5a
	ld   e, e                                        ; $676c: $5b
	ld   e, h                                        ; $676d: $5c
	ld   e, l                                        ; $676e: $5d
	ld   e, [hl]                                     ; $676f: $5e
	ld   e, a                                        ; $6770: $5f
	jr   c, @+$3b                                    ; $6771: $38 $39

	ld   a, [hl-]                                    ; $6773: $3a
	dec  sp                                          ; $6774: $3b
	ld   h, b                                        ; $6775: $60
	ld   h, c                                        ; $6776: $61
	ld   h, d                                        ; $6777: $62
	ld   h, e                                        ; $6778: $63
	ld   h, h                                        ; $6779: $64
	ld   h, l                                        ; $677a: $65
	ld   h, [hl]                                     ; $677b: $66

jr_081_677c:
	ld   h, a                                        ; $677c: $67
	ld   l, b                                        ; $677d: $68
	ld   l, c                                        ; $677e: $69
	ld   l, d                                        ; $677f: $6a
	ld   l, e                                        ; $6780: $6b
	ld   l, h                                        ; $6781: $6c
	ld   l, l                                        ; $6782: $6d
	ld   l, [hl]                                     ; $6783: $6e
	ld   l, a                                        ; $6784: $6f
	inc  l                                           ; $6785: $2c
	dec  l                                           ; $6786: $2d
	ld   l, $2f                                      ; $6787: $2e $2f
	ld   [hl], b                                     ; $6789: $70
	ld   [hl], c                                     ; $678a: $71
	ld   [hl], d                                     ; $678b: $72
	ld   [hl], e                                     ; $678c: $73
	ld   [hl], h                                     ; $678d: $74
	ld   [hl], l                                     ; $678e: $75
	halt                                             ; $678f: $76
	ld   [hl], a                                     ; $6790: $77
	ld   a, b                                        ; $6791: $78
	ld   a, c                                        ; $6792: $79
	ld   a, d                                        ; $6793: $7a
	ld   a, e                                        ; $6794: $7b
	ld   a, h                                        ; $6795: $7c
	ld   a, l                                        ; $6796: $7d
	ld   a, [hl]                                     ; $6797: $7e
	ld   a, a                                        ; $6798: $7f
	inc  a                                           ; $6799: $3c
	dec  a                                           ; $679a: $3d
	ld   a, $3f                                      ; $679b: $3e $3f
	nop                                              ; $679d: $00
	ld   bc, $0302                                   ; $679e: $01 $02 $03
	inc  b                                           ; $67a1: $04
	dec  b                                           ; $67a2: $05
	ld   b, $07                                      ; $67a3: $06 $07
	ld   [$0a09], sp                                 ; $67a5: $08 $09 $0a
	dec  bc                                          ; $67a8: $0b
	inc  c                                           ; $67a9: $0c
	dec  c                                           ; $67aa: $0d
	ld   c, $0f                                      ; $67ab: $0e $0f
	ld   b, b                                        ; $67ad: $40
	ld   b, c                                        ; $67ae: $41
	ld   b, d                                        ; $67af: $42
	ld   b, e                                        ; $67b0: $43
	db   $10                                         ; $67b1: $10
	ld   de, $1312                                   ; $67b2: $11 $12 $13
	inc  d                                           ; $67b5: $14
	dec  d                                           ; $67b6: $15
	ld   d, $17                                      ; $67b7: $16 $17
	jr   jr_081_67d4                                 ; $67b9: $18 $19

	ld   a, [de]                                     ; $67bb: $1a
	dec  de                                          ; $67bc: $1b
	inc  e                                           ; $67bd: $1c
	dec  e                                           ; $67be: $1d
	ld   e, $1f                                      ; $67bf: $1e $1f
	ld   b, h                                        ; $67c1: $44
	ld   b, l                                        ; $67c2: $45
	ld   b, [hl]                                     ; $67c3: $46

Jump_081_67c4:
	ld   b, a                                        ; $67c4: $47
	dec  c                                           ; $67c5: $0d
	dec  c                                           ; $67c6: $0d
	dec  c                                           ; $67c7: $0d
	dec  c                                           ; $67c8: $0d
	dec  b                                           ; $67c9: $05
	dec  b                                           ; $67ca: $05
	dec  b                                           ; $67cb: $05
	dec  b                                           ; $67cc: $05
	dec  b                                           ; $67cd: $05
	dec  b                                           ; $67ce: $05
	dec  b                                           ; $67cf: $05
	inc  b                                           ; $67d0: $04
	inc  b                                           ; $67d1: $04
	inc  bc                                          ; $67d2: $03
	inc  bc                                          ; $67d3: $03

jr_081_67d4:
	inc  bc                                          ; $67d4: $03
	dec  bc                                          ; $67d5: $0b
	inc  c                                           ; $67d6: $0c
	dec  b                                           ; $67d7: $05
	dec  c                                           ; $67d8: $0d
	inc  c                                           ; $67d9: $0c
	dec  c                                           ; $67da: $0d
	inc  c                                           ; $67db: $0c
	dec  c                                           ; $67dc: $0d
	dec  b                                           ; $67dd: $05
	dec  b                                           ; $67de: $05
	dec  b                                           ; $67df: $05
	dec  b                                           ; $67e0: $05
	dec  b                                           ; $67e1: $05
	dec  b                                           ; $67e2: $05
	dec  b                                           ; $67e3: $05
	inc  bc                                          ; $67e4: $03
	inc  b                                           ; $67e5: $04
	inc  bc                                          ; $67e6: $03
	inc  bc                                          ; $67e7: $03
	inc  bc                                          ; $67e8: $03
	dec  bc                                          ; $67e9: $0b
	inc  c                                           ; $67ea: $0c
	dec  c                                           ; $67eb: $0d
	dec  c                                           ; $67ec: $0d
	inc  b                                           ; $67ed: $04
	inc  b                                           ; $67ee: $04
	inc  b                                           ; $67ef: $04
	dec  c                                           ; $67f0: $0d
	dec  b                                           ; $67f1: $05
	dec  b                                           ; $67f2: $05
	dec  b                                           ; $67f3: $05
	dec  b                                           ; $67f4: $05
	dec  b                                           ; $67f5: $05
	dec  b                                           ; $67f6: $05
	inc  bc                                          ; $67f7: $03
	inc  bc                                          ; $67f8: $03
	inc  b                                           ; $67f9: $04
	inc  bc                                          ; $67fa: $03
	inc  bc                                          ; $67fb: $03
	inc  bc                                          ; $67fc: $03
	dec  bc                                          ; $67fd: $0b
	inc  c                                           ; $67fe: $0c
	dec  bc                                          ; $67ff: $0b
	dec  bc                                          ; $6800: $0b
	dec  bc                                          ; $6801: $0b
	dec  bc                                          ; $6802: $0b
	inc  bc                                          ; $6803: $03
	dec  c                                           ; $6804: $0d
	dec  c                                           ; $6805: $0d
	dec  b                                           ; $6806: $05
	dec  b                                           ; $6807: $05
	dec  b                                           ; $6808: $05
	dec  b                                           ; $6809: $05
	dec  b                                           ; $680a: $05
	inc  bc                                          ; $680b: $03
	dec  b                                           ; $680c: $05
	inc  b                                           ; $680d: $04
	inc  b                                           ; $680e: $04
	inc  b                                           ; $680f: $04
	inc  b                                           ; $6810: $04
	inc  c                                           ; $6811: $0c
	inc  c                                           ; $6812: $0c
	dec  bc                                          ; $6813: $0b
	dec  bc                                          ; $6814: $0b
	inc  bc                                          ; $6815: $03
	inc  bc                                          ; $6816: $03
	inc  bc                                          ; $6817: $03
	dec  c                                           ; $6818: $0d
	dec  c                                           ; $6819: $0d
	dec  c                                           ; $681a: $0d
	dec  c                                           ; $681b: $0d
	dec  c                                           ; $681c: $0d
	dec  b                                           ; $681d: $05
	dec  b                                           ; $681e: $05
	dec  b                                           ; $681f: $05
	inc  b                                           ; $6820: $04
	inc  b                                           ; $6821: $04
	inc  bc                                          ; $6822: $03
	dec  b                                           ; $6823: $05
	dec  b                                           ; $6824: $05
	dec  c                                           ; $6825: $0d
	dec  bc                                          ; $6826: $0b
	inc  c                                           ; $6827: $0c
	dec  bc                                          ; $6828: $0b
	dec  b                                           ; $6829: $05
	inc  bc                                          ; $682a: $03
	inc  bc                                          ; $682b: $03
	inc  bc                                          ; $682c: $03
	inc  bc                                          ; $682d: $03
	inc  bc                                          ; $682e: $03
	inc  bc                                          ; $682f: $03
	inc  bc                                          ; $6830: $03
	inc  bc                                          ; $6831: $03
	inc  b                                           ; $6832: $04
	inc  b                                           ; $6833: $04
	inc  b                                           ; $6834: $04
	inc  b                                           ; $6835: $04
	inc  bc                                          ; $6836: $03
	dec  b                                           ; $6837: $05
	dec  b                                           ; $6838: $05
	dec  c                                           ; $6839: $0d
	dec  bc                                          ; $683a: $0b
	inc  c                                           ; $683b: $0c
	inc  c                                           ; $683c: $0c
	inc  b                                           ; $683d: $04
	inc  bc                                          ; $683e: $03
	inc  bc                                          ; $683f: $03
	inc  bc                                          ; $6840: $03
	inc  bc                                          ; $6841: $03
	inc  bc                                          ; $6842: $03
	inc  bc                                          ; $6843: $03
	inc  bc                                          ; $6844: $03
	inc  bc                                          ; $6845: $03
	inc  b                                           ; $6846: $04
	inc  b                                           ; $6847: $04
	inc  b                                           ; $6848: $04
	inc  b                                           ; $6849: $04
	inc  bc                                          ; $684a: $03
	inc  bc                                          ; $684b: $03
	inc  bc                                          ; $684c: $03
	dec  bc                                          ; $684d: $0b
	dec  bc                                          ; $684e: $0b
	inc  c                                           ; $684f: $0c
	inc  c                                           ; $6850: $0c
	inc  bc                                          ; $6851: $03
	inc  bc                                          ; $6852: $03
	inc  bc                                          ; $6853: $03
	inc  bc                                          ; $6854: $03
	dec  b                                           ; $6855: $05
	dec  b                                           ; $6856: $05
	dec  b                                           ; $6857: $05
	dec  b                                           ; $6858: $05
	dec  b                                           ; $6859: $05
	dec  b                                           ; $685a: $05
	dec  b                                           ; $685b: $05
	dec  b                                           ; $685c: $05
	dec  b                                           ; $685d: $05
	inc  bc                                          ; $685e: $03
	inc  bc                                          ; $685f: $03
	inc  bc                                          ; $6860: $03
	dec  bc                                          ; $6861: $0b
	dec  c                                           ; $6862: $0d
	dec  c                                           ; $6863: $0d
	dec  c                                           ; $6864: $0d
	dec  c                                           ; $6865: $0d
	dec  c                                           ; $6866: $0d
	dec  c                                           ; $6867: $0d
	inc  c                                           ; $6868: $0c
	inc  c                                           ; $6869: $0c
	dec  c                                           ; $686a: $0d
	dec  c                                           ; $686b: $0d
	inc  c                                           ; $686c: $0c
	inc  c                                           ; $686d: $0c
	inc  c                                           ; $686e: $0c
	inc  c                                           ; $686f: $0c
	inc  c                                           ; $6870: $0c
	inc  c                                           ; $6871: $0c
	inc  c                                           ; $6872: $0c
	inc  c                                           ; $6873: $0c
	inc  c                                           ; $6874: $0c
	inc  c                                           ; $6875: $0c
	dec  c                                           ; $6876: $0d
	dec  c                                           ; $6877: $0d
	dec  c                                           ; $6878: $0d
	dec  c                                           ; $6879: $0d
	dec  c                                           ; $687a: $0d
	dec  c                                           ; $687b: $0d
	inc  c                                           ; $687c: $0c
	inc  c                                           ; $687d: $0c
	inc  c                                           ; $687e: $0c
	inc  c                                           ; $687f: $0c
	inc  c                                           ; $6880: $0c
	inc  c                                           ; $6881: $0c
	inc  c                                           ; $6882: $0c
	inc  c                                           ; $6883: $0c
	inc  c                                           ; $6884: $0c
	inc  c                                           ; $6885: $0c
	inc  c                                           ; $6886: $0c
	inc  c                                           ; $6887: $0c
	inc  c                                           ; $6888: $0c
	inc  c                                           ; $6889: $0c
	inc  c                                           ; $688a: $0c
	inc  c                                           ; $688b: $0c
	inc  c                                           ; $688c: $0c
	nop                                              ; $688d: $00
	ld   bc, $0101                                   ; $688e: $01 $01 $01
	inc  b                                           ; $6891: $04
	dec  b                                           ; $6892: $05
	ld   b, $07                                      ; $6893: $06 $07
	ld   [$0a09], sp                                 ; $6895: $08 $09 $0a
	dec  bc                                          ; $6898: $0b
	inc  c                                           ; $6899: $0c
	dec  c                                           ; $689a: $0d
	ld   c, $0f                                      ; $689b: $0e $0f
	jr   nz, jr_081_68c0                             ; $689d: $20 $21

	ld   b, b                                        ; $689f: $40
	ld   b, c                                        ; $68a0: $41
	db   $10                                         ; $68a1: $10
	ld   de, $1312                                   ; $68a2: $11 $12 $13
	inc  d                                           ; $68a5: $14
	dec  d                                           ; $68a6: $15
	ld   d, $17                                      ; $68a7: $16 $17
	jr   @+$1b                                       ; $68a9: $18 $19

	ld   a, [de]                                     ; $68ab: $1a
	dec  de                                          ; $68ac: $1b
	inc  e                                           ; $68ad: $1c
	dec  e                                           ; $68ae: $1d
	ld   e, $1f                                      ; $68af: $1e $1f
	jr   nc, jr_081_68e4                             ; $68b1: $30 $31

	ld   d, b                                        ; $68b3: $50
	ld   d, c                                        ; $68b4: $51
	db   $10                                         ; $68b5: $10
	ld   de, $2322                                   ; $68b6: $11 $22 $23
	inc  h                                           ; $68b9: $24
	dec  h                                           ; $68ba: $25
	ld   h, $27                                      ; $68bb: $26 $27
	jr   z, @+$1b                                    ; $68bd: $28 $19

	ld   a, [hl+]                                    ; $68bf: $2a

jr_081_68c0:
	dec  hl                                          ; $68c0: $2b
	inc  l                                           ; $68c1: $2c
	dec  l                                           ; $68c2: $2d
	ld   l, $2f                                      ; $68c3: $2e $2f
	ld   h, b                                        ; $68c5: $60
	ld   h, c                                        ; $68c6: $61
	ld   c, $0f                                      ; $68c7: $0e $0f
	db   $10                                         ; $68c9: $10
	ld   de, $3332                                   ; $68ca: $11 $32 $33
	inc  [hl]                                        ; $68cd: $34
	dec  [hl]                                        ; $68ce: $35
	ld   [hl], $37                                   ; $68cf: $36 $37
	jr   c, jr_081_690c                              ; $68d1: $38 $39

	ld   a, [hl+]                                    ; $68d3: $2a
	dec  sp                                          ; $68d4: $3b
	inc  a                                           ; $68d5: $3c
	dec  a                                           ; $68d6: $3d
	ld   a, $3f                                      ; $68d7: $3e $3f
	ld   [hl], b                                     ; $68d9: $70
	ld   [hl], c                                     ; $68da: $71
	ld   e, $1f                                      ; $68db: $1e $1f
	db   $10                                         ; $68dd: $10
	ld   de, $4342                                   ; $68de: $11 $42 $43
	ld   b, h                                        ; $68e1: $44
	ld   b, l                                        ; $68e2: $45
	ld   b, [hl]                                     ; $68e3: $46

jr_081_68e4:
	ld   b, a                                        ; $68e4: $47
	ld   c, b                                        ; $68e5: $48
	ld   c, c                                        ; $68e6: $49
	ld   c, d                                        ; $68e7: $4a
	ld   c, e                                        ; $68e8: $4b
	ld   c, h                                        ; $68e9: $4c
	ld   c, l                                        ; $68ea: $4d
	ld   c, [hl]                                     ; $68eb: $4e
	ld   c, a                                        ; $68ec: $4f
	ld   [bc], a                                     ; $68ed: $02
	ld   [hl], c                                     ; $68ee: $71
	ld   e, $1f                                      ; $68ef: $1e $1f
	db   $10                                         ; $68f1: $10
	ld   de, $5352                                   ; $68f2: $11 $52 $53
	ld   d, h                                        ; $68f5: $54
	ld   d, l                                        ; $68f6: $55
	ld   d, [hl]                                     ; $68f7: $56
	ld   d, a                                        ; $68f8: $57
	ld   e, b                                        ; $68f9: $58
	ld   e, c                                        ; $68fa: $59
	ld   e, d                                        ; $68fb: $5a
	ld   e, e                                        ; $68fc: $5b
	ld   e, h                                        ; $68fd: $5c
	ld   e, l                                        ; $68fe: $5d
	ld   e, [hl]                                     ; $68ff: $5e
	ld   c, a                                        ; $6900: $4f
	inc  bc                                          ; $6901: $03
	ld   [hl], c                                     ; $6902: $71
	ld   e, $1f                                      ; $6903: $1e $1f
	db   $10                                         ; $6905: $10
	ld   de, $6362                                   ; $6906: $11 $62 $63
	ld   h, h                                        ; $6909: $64
	ld   h, l                                        ; $690a: $65
	ld   h, [hl]                                     ; $690b: $66

jr_081_690c:
	ld   h, a                                        ; $690c: $67
	ld   l, b                                        ; $690d: $68
	ld   l, c                                        ; $690e: $69
	ld   l, d                                        ; $690f: $6a
	ld   l, e                                        ; $6910: $6b
	ld   l, h                                        ; $6911: $6c
	ld   l, l                                        ; $6912: $6d
	ld   l, [hl]                                     ; $6913: $6e
	ld   l, a                                        ; $6914: $6f
	add  hl, hl                                      ; $6915: $29
	ld   [hl], c                                     ; $6916: $71
	ld   a, [hl-]                                    ; $6917: $3a
	ld   e, a                                        ; $6918: $5f
	db   $10                                         ; $6919: $10
	ld   de, $7372                                   ; $691a: $11 $72 $73
	ld   [hl], h                                     ; $691d: $74
	ld   [hl], l                                     ; $691e: $75
	halt                                             ; $691f: $76
	ld   [hl], a                                     ; $6920: $77
	ld   a, b                                        ; $6921: $78
	ld   a, c                                        ; $6922: $79
	ld   a, d                                        ; $6923: $7a
	ld   a, e                                        ; $6924: $7b
	ld   a, h                                        ; $6925: $7c
	ld   a, l                                        ; $6926: $7d
	ld   a, [hl]                                     ; $6927: $7e
	ld   a, a                                        ; $6928: $7f
	jr   nz, @+$23                                   ; $6929: $20 $21

	ld   [hl+], a                                    ; $692b: $22
	inc  hl                                          ; $692c: $23
	db   $10                                         ; $692d: $10
	ld   de, $0100                                   ; $692e: $11 $00 $01
	ld   [bc], a                                     ; $6931: $02
	inc  bc                                          ; $6932: $03
	inc  b                                           ; $6933: $04
	dec  b                                           ; $6934: $05
	ld   b, $07                                      ; $6935: $06 $07
	ld   [$0a09], sp                                 ; $6937: $08 $09 $0a
	dec  bc                                          ; $693a: $0b
	inc  c                                           ; $693b: $0c
	dec  c                                           ; $693c: $0d
	inc  h                                           ; $693d: $24
	dec  h                                           ; $693e: $25
	ld   h, $27                                      ; $693f: $26 $27
	db   $10                                         ; $6941: $10
	ld   de, $1110                                   ; $6942: $11 $10 $11
	ld   [de], a                                     ; $6945: $12
	inc  de                                          ; $6946: $13
	inc  d                                           ; $6947: $14
	dec  d                                           ; $6948: $15
	ld   d, $17                                      ; $6949: $16 $17
	jr   jr_081_6966                                 ; $694b: $18 $19

	ld   a, [de]                                     ; $694d: $1a
	dec  de                                          ; $694e: $1b
	inc  e                                           ; $694f: $1c
	dec  e                                           ; $6950: $1d
	jr   z, jr_081_697c                              ; $6951: $28 $29

	ld   a, [hl+]                                    ; $6953: $2a
	dec  hl                                          ; $6954: $2b
	dec  b                                           ; $6955: $05
	dec  b                                           ; $6956: $05
	dec  b                                           ; $6957: $05
	dec  b                                           ; $6958: $05
	inc  bc                                          ; $6959: $03
	inc  bc                                          ; $695a: $03
	inc  bc                                          ; $695b: $03
	inc  bc                                          ; $695c: $03
	inc  bc                                          ; $695d: $03
	inc  bc                                          ; $695e: $03
	inc  bc                                          ; $695f: $03
	inc  bc                                          ; $6960: $03
	inc  bc                                          ; $6961: $03
	inc  bc                                          ; $6962: $03
	inc  bc                                          ; $6963: $03
	inc  bc                                          ; $6964: $03
	inc  bc                                          ; $6965: $03

jr_081_6966:
	inc  bc                                          ; $6966: $03
	inc  bc                                          ; $6967: $03
	inc  bc                                          ; $6968: $03
	dec  b                                           ; $6969: $05
	dec  b                                           ; $696a: $05
	dec  b                                           ; $696b: $05
	dec  b                                           ; $696c: $05
	dec  b                                           ; $696d: $05
	inc  b                                           ; $696e: $04
	inc  b                                           ; $696f: $04
	inc  b                                           ; $6970: $04
	inc  bc                                          ; $6971: $03
	inc  bc                                          ; $6972: $03
	inc  bc                                          ; $6973: $03
	inc  bc                                          ; $6974: $03
	inc  bc                                          ; $6975: $03
	inc  bc                                          ; $6976: $03
	inc  bc                                          ; $6977: $03
	inc  bc                                          ; $6978: $03
	inc  bc                                          ; $6979: $03
	inc  bc                                          ; $697a: $03
	inc  bc                                          ; $697b: $03

jr_081_697c:
	inc  bc                                          ; $697c: $03
	dec  b                                           ; $697d: $05
	dec  b                                           ; $697e: $05
	dec  b                                           ; $697f: $05
	dec  b                                           ; $6980: $05
	dec  b                                           ; $6981: $05
	dec  b                                           ; $6982: $05
	dec  b                                           ; $6983: $05
	inc  b                                           ; $6984: $04
	inc  b                                           ; $6985: $04
	inc  bc                                          ; $6986: $03
	inc  bc                                          ; $6987: $03
	inc  bc                                          ; $6988: $03
	inc  bc                                          ; $6989: $03
	inc  bc                                          ; $698a: $03
	inc  bc                                          ; $698b: $03
	inc  bc                                          ; $698c: $03
	inc  bc                                          ; $698d: $03
	inc  bc                                          ; $698e: $03
	dec  bc                                          ; $698f: $0b
	dec  bc                                          ; $6990: $0b
	dec  b                                           ; $6991: $05
	dec  b                                           ; $6992: $05
	dec  b                                           ; $6993: $05
	dec  b                                           ; $6994: $05
	dec  b                                           ; $6995: $05
	dec  b                                           ; $6996: $05
	dec  b                                           ; $6997: $05
	dec  b                                           ; $6998: $05
	inc  b                                           ; $6999: $04
	inc  b                                           ; $699a: $04
	inc  bc                                          ; $699b: $03
	inc  bc                                          ; $699c: $03
	inc  bc                                          ; $699d: $03
	inc  bc                                          ; $699e: $03
	inc  bc                                          ; $699f: $03
	inc  bc                                          ; $69a0: $03
	inc  bc                                          ; $69a1: $03
	inc  bc                                          ; $69a2: $03
	dec  bc                                          ; $69a3: $0b
	dec  bc                                          ; $69a4: $0b
	dec  b                                           ; $69a5: $05
	dec  b                                           ; $69a6: $05
	dec  b                                           ; $69a7: $05
	dec  b                                           ; $69a8: $05
	dec  b                                           ; $69a9: $05
	dec  b                                           ; $69aa: $05
	dec  b                                           ; $69ab: $05
	dec  b                                           ; $69ac: $05
	dec  b                                           ; $69ad: $05
	inc  b                                           ; $69ae: $04
	inc  b                                           ; $69af: $04
	inc  b                                           ; $69b0: $04
	inc  bc                                          ; $69b1: $03
	inc  bc                                          ; $69b2: $03
	inc  bc                                          ; $69b3: $03
	inc  bc                                          ; $69b4: $03
	inc  bc                                          ; $69b5: $03
	inc  bc                                          ; $69b6: $03
	dec  bc                                          ; $69b7: $0b
	dec  bc                                          ; $69b8: $0b
	dec  b                                           ; $69b9: $05
	dec  b                                           ; $69ba: $05
	dec  b                                           ; $69bb: $05
	dec  b                                           ; $69bc: $05
	dec  b                                           ; $69bd: $05
	dec  b                                           ; $69be: $05
	dec  b                                           ; $69bf: $05
	dec  b                                           ; $69c0: $05
	dec  b                                           ; $69c1: $05
	dec  b                                           ; $69c2: $05
	inc  b                                           ; $69c3: $04
	inc  b                                           ; $69c4: $04
	inc  b                                           ; $69c5: $04
	inc  bc                                          ; $69c6: $03
	inc  bc                                          ; $69c7: $03
	inc  bc                                          ; $69c8: $03
	inc  bc                                          ; $69c9: $03
	inc  bc                                          ; $69ca: $03
	dec  bc                                          ; $69cb: $0b
	dec  bc                                          ; $69cc: $0b
	dec  b                                           ; $69cd: $05
	dec  b                                           ; $69ce: $05
	dec  b                                           ; $69cf: $05
	dec  b                                           ; $69d0: $05
	dec  b                                           ; $69d1: $05
	dec  b                                           ; $69d2: $05
	dec  b                                           ; $69d3: $05
	dec  b                                           ; $69d4: $05
	dec  b                                           ; $69d5: $05
	dec  b                                           ; $69d6: $05
	dec  b                                           ; $69d7: $05
	dec  b                                           ; $69d8: $05
	inc  b                                           ; $69d9: $04
	inc  b                                           ; $69da: $04
	inc  b                                           ; $69db: $04
	inc  bc                                          ; $69dc: $03
	inc  bc                                          ; $69dd: $03
	inc  bc                                          ; $69de: $03
	inc  bc                                          ; $69df: $03
	inc  bc                                          ; $69e0: $03
	dec  b                                           ; $69e1: $05
	dec  b                                           ; $69e2: $05
	dec  b                                           ; $69e3: $05
	dec  b                                           ; $69e4: $05
	dec  b                                           ; $69e5: $05
	dec  b                                           ; $69e6: $05
	dec  b                                           ; $69e7: $05
	dec  b                                           ; $69e8: $05
	dec  b                                           ; $69e9: $05
	dec  b                                           ; $69ea: $05
	dec  b                                           ; $69eb: $05
	dec  b                                           ; $69ec: $05
	dec  b                                           ; $69ed: $05
	dec  b                                           ; $69ee: $05
	inc  b                                           ; $69ef: $04
	inc  b                                           ; $69f0: $04
	dec  bc                                          ; $69f1: $0b
	dec  bc                                          ; $69f2: $0b
	dec  bc                                          ; $69f3: $0b
	dec  bc                                          ; $69f4: $0b
	dec  b                                           ; $69f5: $05
	dec  b                                           ; $69f6: $05
	dec  c                                           ; $69f7: $0d
	dec  c                                           ; $69f8: $0d
	dec  c                                           ; $69f9: $0d
	dec  c                                           ; $69fa: $0d
	dec  c                                           ; $69fb: $0d
	dec  c                                           ; $69fc: $0d
	dec  c                                           ; $69fd: $0d
	dec  c                                           ; $69fe: $0d
	dec  c                                           ; $69ff: $0d
	dec  c                                           ; $6a00: $0d
	dec  c                                           ; $6a01: $0d
	dec  c                                           ; $6a02: $0d
	dec  c                                           ; $6a03: $0d
	inc  c                                           ; $6a04: $0c
	inc  c                                           ; $6a05: $0c
	dec  bc                                          ; $6a06: $0b
	dec  bc                                          ; $6a07: $0b
	dec  bc                                          ; $6a08: $0b
	dec  b                                           ; $6a09: $05
	dec  b                                           ; $6a0a: $05
	dec  c                                           ; $6a0b: $0d
	dec  c                                           ; $6a0c: $0d
	dec  c                                           ; $6a0d: $0d
	dec  c                                           ; $6a0e: $0d
	dec  c                                           ; $6a0f: $0d
	dec  c                                           ; $6a10: $0d
	dec  c                                           ; $6a11: $0d
	dec  c                                           ; $6a12: $0d
	dec  c                                           ; $6a13: $0d
	dec  c                                           ; $6a14: $0d
	dec  c                                           ; $6a15: $0d
	dec  c                                           ; $6a16: $0d
	dec  c                                           ; $6a17: $0d
	dec  c                                           ; $6a18: $0d
	inc  c                                           ; $6a19: $0c
	inc  c                                           ; $6a1a: $0c
	inc  c                                           ; $6a1b: $0c
	dec  bc                                          ; $6a1c: $0b
	nop                                              ; $6a1d: $00
	ld   bc, $0302                                   ; $6a1e: $01 $02 $03
	inc  b                                           ; $6a21: $04
	dec  b                                           ; $6a22: $05
	ld   b, $07                                      ; $6a23: $06 $07
	ld   [$0a09], sp                                 ; $6a25: $08 $09 $0a
	dec  bc                                          ; $6a28: $0b
	inc  c                                           ; $6a29: $0c
	dec  c                                           ; $6a2a: $0d
	ld   c, $0f                                      ; $6a2b: $0e $0f
	ld   [$0808], sp                                 ; $6a2d: $08 $08 $08
	add  hl, bc                                      ; $6a30: $09
	db   $10                                         ; $6a31: $10
	ld   de, $1322                                   ; $6a32: $11 $22 $13
	inc  d                                           ; $6a35: $14
	dec  d                                           ; $6a36: $15
	ld   d, $17                                      ; $6a37: $16 $17
	jr   @+$1b                                       ; $6a39: $18 $19

	ld   a, [de]                                     ; $6a3b: $1a
	dec  de                                          ; $6a3c: $1b
	inc  e                                           ; $6a3d: $1c
	dec  e                                           ; $6a3e: $1d
	ld   e, $1f                                      ; $6a3f: $1e $1f
	jr   @+$1a                                       ; $6a41: $18 $18

	jr   jr_081_6a5e                                 ; $6a43: $18 $19

	db   $10                                         ; $6a45: $10
	ld   de, $2322                                   ; $6a46: $11 $22 $23
	inc  h                                           ; $6a49: $24
	dec  h                                           ; $6a4a: $25
	ld   h, $27                                      ; $6a4b: $26 $27
	jr   z, jr_081_6a78                              ; $6a4d: $28 $29

	ld   a, [hl+]                                    ; $6a4f: $2a
	dec  hl                                          ; $6a50: $2b
	inc  l                                           ; $6a51: $2c
	dec  l                                           ; $6a52: $2d
	ld   l, $2f                                      ; $6a53: $2e $2f
	ld   a, [bc]                                     ; $6a55: $0a
	dec  bc                                          ; $6a56: $0b
	inc  c                                           ; $6a57: $0c
	add  hl, de                                      ; $6a58: $19
	db   $10                                         ; $6a59: $10
	ld   de, $3332                                   ; $6a5a: $11 $32 $33
	inc  [hl]                                        ; $6a5d: $34

jr_081_6a5e:
	dec  [hl]                                        ; $6a5e: $35
	ld   [hl], $37                                   ; $6a5f: $36 $37
	jr   c, jr_081_6a9c                              ; $6a61: $38 $39

	ld   a, [hl-]                                    ; $6a63: $3a
	dec  sp                                          ; $6a64: $3b
	inc  a                                           ; $6a65: $3c
	dec  a                                           ; $6a66: $3d
	ld   a, $3f                                      ; $6a67: $3e $3f
	ld   a, [de]                                     ; $6a69: $1a
	dec  de                                          ; $6a6a: $1b
	inc  e                                           ; $6a6b: $1c
	dec  e                                           ; $6a6c: $1d
	db   $10                                         ; $6a6d: $10
	ld   de, $4342                                   ; $6a6e: $11 $42 $43
	ld   b, h                                        ; $6a71: $44
	ld   b, l                                        ; $6a72: $45
	ld   b, [hl]                                     ; $6a73: $46
	ld   b, a                                        ; $6a74: $47
	ld   c, b                                        ; $6a75: $48
	ld   c, c                                        ; $6a76: $49
	ld   c, d                                        ; $6a77: $4a

jr_081_6a78:
	ld   c, e                                        ; $6a78: $4b
	ld   c, h                                        ; $6a79: $4c
	ld   c, l                                        ; $6a7a: $4d
	ld   c, [hl]                                     ; $6a7b: $4e
	ld   c, a                                        ; $6a7c: $4f
	ld   c, $0f                                      ; $6a7d: $0e $0f
	jr   nz, jr_081_6aa2                             ; $6a7f: $20 $21

	db   $10                                         ; $6a81: $10
	ld   de, $5352                                   ; $6a82: $11 $52 $53
	ld   d, h                                        ; $6a85: $54
	ld   d, l                                        ; $6a86: $55
	ld   d, [hl]                                     ; $6a87: $56
	ld   d, a                                        ; $6a88: $57
	ld   e, b                                        ; $6a89: $58
	ld   e, c                                        ; $6a8a: $59
	ld   e, d                                        ; $6a8b: $5a
	ld   e, e                                        ; $6a8c: $5b
	ld   e, h                                        ; $6a8d: $5c
	ld   e, l                                        ; $6a8e: $5d
	ld   e, [hl]                                     ; $6a8f: $5e
	ld   e, a                                        ; $6a90: $5f
	ld   e, $1f                                      ; $6a91: $1e $1f
	jr   z, jr_081_6ab6                              ; $6a93: $28 $21

	db   $10                                         ; $6a95: $10
	ld   de, $6362                                   ; $6a96: $11 $62 $63
	ld   h, h                                        ; $6a99: $64
	ld   h, l                                        ; $6a9a: $65
	ld   h, [hl]                                     ; $6a9b: $66

jr_081_6a9c:
	ld   h, a                                        ; $6a9c: $67
	ld   l, b                                        ; $6a9d: $68
	ld   l, c                                        ; $6a9e: $69
	ld   l, d                                        ; $6a9f: $6a
	ld   l, e                                        ; $6aa0: $6b
	ld   l, h                                        ; $6aa1: $6c

jr_081_6aa2:
	ld   l, l                                        ; $6aa2: $6d
	ld   l, l                                        ; $6aa3: $6d
	ld   l, a                                        ; $6aa4: $6f
	ld   [hl+], a                                    ; $6aa5: $22
	inc  hl                                          ; $6aa6: $23
	inc  h                                           ; $6aa7: $24
	dec  h                                           ; $6aa8: $25
	db   $10                                         ; $6aa9: $10
	ld   de, $7372                                   ; $6aaa: $11 $72 $73
	ld   [hl], h                                     ; $6aad: $74
	ld   [hl], l                                     ; $6aae: $75
	halt                                             ; $6aaf: $76
	ld   [hl], a                                     ; $6ab0: $77
	ld   a, b                                        ; $6ab1: $78
	ld   a, c                                        ; $6ab2: $79
	ld   a, d                                        ; $6ab3: $7a
	ld   a, e                                        ; $6ab4: $7b
	ld   a, h                                        ; $6ab5: $7c

jr_081_6ab6:
	ld   a, l                                        ; $6ab6: $7d
	ld   a, [hl]                                     ; $6ab7: $7e
	ld   l, l                                        ; $6ab8: $6d
	ld   l, l                                        ; $6ab9: $6d
	daa                                              ; $6aba: $27
	dec  c                                           ; $6abb: $0d
	ld   a, a                                        ; $6abc: $7f
	db   $10                                         ; $6abd: $10
	ld   de, $2120                                   ; $6abe: $11 $20 $21
	ld   b, b                                        ; $6ac1: $40
	ld   b, c                                        ; $6ac2: $41
	ld   h, b                                        ; $6ac3: $60
	ld   h, c                                        ; $6ac4: $61
	nop                                              ; $6ac5: $00
	ld   bc, $0302                                   ; $6ac6: $01 $02 $03
	inc  b                                           ; $6ac9: $04
	dec  b                                           ; $6aca: $05
	ld   b, $07                                      ; $6acb: $06 $07
	ld   h, $6d                                      ; $6acd: $26 $6d
	ld   l, l                                        ; $6acf: $6d
	add  hl, hl                                      ; $6ad0: $29
	db   $10                                         ; $6ad1: $10
	ld   de, $3130                                   ; $6ad2: $11 $30 $31
	ld   d, b                                        ; $6ad5: $50
	ld   d, c                                        ; $6ad6: $51
	ld   [hl], b                                     ; $6ad7: $70
	ld   [hl], c                                     ; $6ad8: $71
	db   $10                                         ; $6ad9: $10
	ld   de, $1312                                   ; $6ada: $11 $12 $13
	inc  d                                           ; $6add: $14
	dec  d                                           ; $6ade: $15
	ld   d, $17                                      ; $6adf: $16 $17
	ld   l, [hl]                                     ; $6ae1: $6e
	ld   [de], a                                     ; $6ae2: $12
	ld   l, l                                        ; $6ae3: $6d
	add  hl, hl                                      ; $6ae4: $29
	dec  b                                           ; $6ae5: $05
	dec  b                                           ; $6ae6: $05
	dec  b                                           ; $6ae7: $05
	inc  bc                                          ; $6ae8: $03
	inc  bc                                          ; $6ae9: $03
	inc  bc                                          ; $6aea: $03
	inc  bc                                          ; $6aeb: $03
	inc  bc                                          ; $6aec: $03
	inc  bc                                          ; $6aed: $03
	inc  bc                                          ; $6aee: $03
	inc  bc                                          ; $6aef: $03
	inc  bc                                          ; $6af0: $03
	inc  bc                                          ; $6af1: $03
	inc  bc                                          ; $6af2: $03
	inc  bc                                          ; $6af3: $03
	inc  bc                                          ; $6af4: $03
	dec  bc                                          ; $6af5: $0b
	dec  bc                                          ; $6af6: $0b
	dec  bc                                          ; $6af7: $0b
	dec  bc                                          ; $6af8: $0b
	dec  b                                           ; $6af9: $05
	inc  b                                           ; $6afa: $04
	inc  b                                           ; $6afb: $04
	inc  bc                                          ; $6afc: $03
	inc  bc                                          ; $6afd: $03
	inc  bc                                          ; $6afe: $03
	inc  bc                                          ; $6aff: $03
	inc  bc                                          ; $6b00: $03
	inc  bc                                          ; $6b01: $03
	inc  bc                                          ; $6b02: $03
	inc  bc                                          ; $6b03: $03
	inc  bc                                          ; $6b04: $03
	inc  bc                                          ; $6b05: $03
	inc  bc                                          ; $6b06: $03
	inc  bc                                          ; $6b07: $03
	inc  bc                                          ; $6b08: $03
	dec  bc                                          ; $6b09: $0b
	dec  bc                                          ; $6b0a: $0b
	dec  bc                                          ; $6b0b: $0b
	dec  bc                                          ; $6b0c: $0b
	dec  b                                           ; $6b0d: $05
	inc  b                                           ; $6b0e: $04
	inc  b                                           ; $6b0f: $04
	inc  bc                                          ; $6b10: $03
	inc  bc                                          ; $6b11: $03
	inc  bc                                          ; $6b12: $03
	inc  bc                                          ; $6b13: $03
	inc  bc                                          ; $6b14: $03
	inc  b                                           ; $6b15: $04
	inc  b                                           ; $6b16: $04
	inc  b                                           ; $6b17: $04
	inc  b                                           ; $6b18: $04
	inc  b                                           ; $6b19: $04
	inc  b                                           ; $6b1a: $04
	inc  b                                           ; $6b1b: $04
	inc  b                                           ; $6b1c: $04
	inc  c                                           ; $6b1d: $0c
	inc  c                                           ; $6b1e: $0c
	inc  c                                           ; $6b1f: $0c
	dec  bc                                          ; $6b20: $0b
	dec  b                                           ; $6b21: $05
	inc  b                                           ; $6b22: $04
	inc  b                                           ; $6b23: $04
	inc  b                                           ; $6b24: $04
	inc  b                                           ; $6b25: $04
	inc  b                                           ; $6b26: $04
	inc  b                                           ; $6b27: $04
	inc  b                                           ; $6b28: $04
	inc  b                                           ; $6b29: $04
	inc  b                                           ; $6b2a: $04
	dec  b                                           ; $6b2b: $05
	inc  b                                           ; $6b2c: $04
	inc  b                                           ; $6b2d: $04
	inc  b                                           ; $6b2e: $04
	inc  b                                           ; $6b2f: $04
	inc  b                                           ; $6b30: $04
	inc  c                                           ; $6b31: $0c
	inc  c                                           ; $6b32: $0c
	inc  c                                           ; $6b33: $0c
	dec  bc                                          ; $6b34: $0b
	dec  b                                           ; $6b35: $05
	inc  b                                           ; $6b36: $04
	inc  b                                           ; $6b37: $04
	inc  b                                           ; $6b38: $04
	inc  b                                           ; $6b39: $04
	inc  b                                           ; $6b3a: $04
	inc  b                                           ; $6b3b: $04
	inc  b                                           ; $6b3c: $04
	inc  b                                           ; $6b3d: $04
	inc  b                                           ; $6b3e: $04
	dec  b                                           ; $6b3f: $05
	inc  b                                           ; $6b40: $04
	dec  b                                           ; $6b41: $05
	inc  b                                           ; $6b42: $04
	dec  b                                           ; $6b43: $05
	inc  b                                           ; $6b44: $04
	dec  c                                           ; $6b45: $0d
	inc  c                                           ; $6b46: $0c
	inc  c                                           ; $6b47: $0c
	dec  bc                                          ; $6b48: $0b
	dec  b                                           ; $6b49: $05
	inc  b                                           ; $6b4a: $04
	inc  b                                           ; $6b4b: $04
	inc  b                                           ; $6b4c: $04
	inc  b                                           ; $6b4d: $04
	inc  b                                           ; $6b4e: $04
	inc  b                                           ; $6b4f: $04
	inc  b                                           ; $6b50: $04
	inc  b                                           ; $6b51: $04
	inc  b                                           ; $6b52: $04
	inc  b                                           ; $6b53: $04
	inc  b                                           ; $6b54: $04
	inc  b                                           ; $6b55: $04
	dec  b                                           ; $6b56: $05
	dec  b                                           ; $6b57: $05
	inc  b                                           ; $6b58: $04
	inc  c                                           ; $6b59: $0c
	dec  c                                           ; $6b5a: $0d
	dec  c                                           ; $6b5b: $0d
	dec  bc                                          ; $6b5c: $0b
	dec  b                                           ; $6b5d: $05
	inc  b                                           ; $6b5e: $04
	inc  b                                           ; $6b5f: $04
	inc  b                                           ; $6b60: $04
	inc  b                                           ; $6b61: $04
	inc  b                                           ; $6b62: $04
	inc  b                                           ; $6b63: $04
	inc  b                                           ; $6b64: $04
	inc  b                                           ; $6b65: $04
	inc  b                                           ; $6b66: $04
	inc  b                                           ; $6b67: $04
	inc  b                                           ; $6b68: $04
	inc  b                                           ; $6b69: $04
	inc  b                                           ; $6b6a: $04
	inc  b                                           ; $6b6b: $04
	inc  b                                           ; $6b6c: $04
	inc  c                                           ; $6b6d: $0c
	dec  c                                           ; $6b6e: $0d
	dec  c                                           ; $6b6f: $0d
	dec  bc                                          ; $6b70: $0b
	dec  b                                           ; $6b71: $05
	inc  b                                           ; $6b72: $04
	inc  b                                           ; $6b73: $04
	inc  b                                           ; $6b74: $04
	inc  b                                           ; $6b75: $04
	inc  b                                           ; $6b76: $04
	inc  b                                           ; $6b77: $04
	inc  b                                           ; $6b78: $04
	inc  b                                           ; $6b79: $04
	inc  b                                           ; $6b7a: $04
	inc  b                                           ; $6b7b: $04
	inc  b                                           ; $6b7c: $04
	inc  b                                           ; $6b7d: $04
	inc  b                                           ; $6b7e: $04
	inc  b                                           ; $6b7f: $04
	inc  b                                           ; $6b80: $04
	inc  b                                           ; $6b81: $04
	inc  c                                           ; $6b82: $0c
	dec  c                                           ; $6b83: $0d
	inc  bc                                          ; $6b84: $03
	dec  b                                           ; $6b85: $05
	inc  b                                           ; $6b86: $04
	inc  b                                           ; $6b87: $04
	inc  b                                           ; $6b88: $04
	inc  b                                           ; $6b89: $04
	inc  b                                           ; $6b8a: $04
	inc  b                                           ; $6b8b: $04
	inc  b                                           ; $6b8c: $04
	inc  c                                           ; $6b8d: $0c
	inc  c                                           ; $6b8e: $0c
	inc  c                                           ; $6b8f: $0c
	inc  c                                           ; $6b90: $0c
	inc  c                                           ; $6b91: $0c
	inc  c                                           ; $6b92: $0c
	inc  c                                           ; $6b93: $0c
	inc  c                                           ; $6b94: $0c
	inc  c                                           ; $6b95: $0c
	inc  b                                           ; $6b96: $04
	inc  b                                           ; $6b97: $04
	dec  c                                           ; $6b98: $0d
	dec  b                                           ; $6b99: $05
	inc  b                                           ; $6b9a: $04
	inc  b                                           ; $6b9b: $04
	inc  b                                           ; $6b9c: $04
	inc  b                                           ; $6b9d: $04
	inc  b                                           ; $6b9e: $04
	inc  b                                           ; $6b9f: $04
	inc  b                                           ; $6ba0: $04
	inc  c                                           ; $6ba1: $0c
	inc  c                                           ; $6ba2: $0c
	inc  c                                           ; $6ba3: $0c
	inc  c                                           ; $6ba4: $0c
	inc  c                                           ; $6ba5: $0c
	inc  c                                           ; $6ba6: $0c
	inc  c                                           ; $6ba7: $0c
	inc  c                                           ; $6ba8: $0c
	inc  b                                           ; $6ba9: $04
	inc  b                                           ; $6baa: $04
	inc  b                                           ; $6bab: $04
	dec  c                                           ; $6bac: $0d
	nop                                              ; $6bad: $00
	ld   bc, $0302                                   ; $6bae: $01 $02 $03
	inc  b                                           ; $6bb1: $04
	dec  b                                           ; $6bb2: $05
	ld   b, $07                                      ; $6bb3: $06 $07
	ld   [$0a09], sp                                 ; $6bb5: $08 $09 $0a
	dec  bc                                          ; $6bb8: $0b
	inc  c                                           ; $6bb9: $0c
	dec  c                                           ; $6bba: $0d
	ld   c, $0f                                      ; $6bbb: $0e $0f
	ld   [$0808], sp                                 ; $6bbd: $08 $08 $08
	add  hl, bc                                      ; $6bc0: $09
	db   $10                                         ; $6bc1: $10
	ld   de, $1322                                   ; $6bc2: $11 $22 $13
	inc  d                                           ; $6bc5: $14
	dec  d                                           ; $6bc6: $15
	ld   d, $17                                      ; $6bc7: $16 $17
	jr   @+$1b                                       ; $6bc9: $18 $19

	ld   a, [de]                                     ; $6bcb: $1a
	dec  de                                          ; $6bcc: $1b
	inc  e                                           ; $6bcd: $1c
	dec  e                                           ; $6bce: $1d
	ld   e, $1f                                      ; $6bcf: $1e $1f
	jr   @+$1a                                       ; $6bd1: $18 $18

	jr   jr_081_6bee                                 ; $6bd3: $18 $19

	db   $10                                         ; $6bd5: $10
	ld   de, $2322                                   ; $6bd6: $11 $22 $23
	inc  h                                           ; $6bd9: $24
	dec  h                                           ; $6bda: $25
	ld   h, $27                                      ; $6bdb: $26 $27
	jr   nc, jr_081_6c10                             ; $6bdd: $30 $31

	ld   [hl-], a                                    ; $6bdf: $32
	inc  sp                                          ; $6be0: $33
	inc  [hl]                                        ; $6be1: $34
	dec  [hl]                                        ; $6be2: $35
	ld   [hl], $37                                   ; $6be3: $36 $37
	jr   c, jr_081_6c20                              ; $6be5: $38 $39

	ld   a, [hl-]                                    ; $6be7: $3a
	add  hl, de                                      ; $6be8: $19
	db   $10                                         ; $6be9: $10
	ld   de, $3332                                   ; $6bea: $11 $32 $33
	inc  [hl]                                        ; $6bed: $34

jr_081_6bee:
	dec  [hl]                                        ; $6bee: $35
	ld   [hl], $37                                   ; $6bef: $36 $37
	jr   c, jr_081_6c34                              ; $6bf1: $38 $41

	ld   b, d                                        ; $6bf3: $42
	ld   b, e                                        ; $6bf4: $43
	ld   b, h                                        ; $6bf5: $44
	ld   b, l                                        ; $6bf6: $45
	ld   b, [hl]                                     ; $6bf7: $46
	ld   b, a                                        ; $6bf8: $47
	ld   c, b                                        ; $6bf9: $48
	ld   c, c                                        ; $6bfa: $49
	ld   c, d                                        ; $6bfb: $4a
	dec  e                                           ; $6bfc: $1d
	db   $10                                         ; $6bfd: $10
	ld   de, $4342                                   ; $6bfe: $11 $42 $43
	ld   b, h                                        ; $6c01: $44
	ld   b, l                                        ; $6c02: $45
	ld   b, [hl]                                     ; $6c03: $46
	ld   b, a                                        ; $6c04: $47
	ld   c, b                                        ; $6c05: $48
	ld   c, c                                        ; $6c06: $49
	dec  sp                                          ; $6c07: $3b
	inc  a                                           ; $6c08: $3c
	dec  a                                           ; $6c09: $3d
	ld   a, $3f                                      ; $6c0a: $3e $3f
	ld   d, b                                        ; $6c0c: $50
	ld   d, c                                        ; $6c0d: $51
	ld   d, d                                        ; $6c0e: $52
	ld   b, b                                        ; $6c0f: $40

jr_081_6c10:
	ld   hl, $1110                                   ; $6c10: $21 $10 $11
	ld   d, d                                        ; $6c13: $52
	ld   d, e                                        ; $6c14: $53
	ld   d, h                                        ; $6c15: $54
	ld   d, l                                        ; $6c16: $55
	ld   d, [hl]                                     ; $6c17: $56
	ld   d, a                                        ; $6c18: $57
	ld   e, b                                        ; $6c19: $58
	ld   e, c                                        ; $6c1a: $59
	ld   e, d                                        ; $6c1b: $5a
	ld   e, e                                        ; $6c1c: $5b
	ld   e, h                                        ; $6c1d: $5c
	ld   c, [hl]                                     ; $6c1e: $4e
	ld   c, a                                        ; $6c1f: $4f

jr_081_6c20:
	cpl                                              ; $6c20: $2f
	ld   c, e                                        ; $6c21: $4b
	ld   c, h                                        ; $6c22: $4c
	ld   c, l                                        ; $6c23: $4d
	ld   hl, $1110                                   ; $6c24: $21 $10 $11
	ld   h, d                                        ; $6c27: $62
	ld   h, e                                        ; $6c28: $63
	ld   h, h                                        ; $6c29: $64
	ld   h, l                                        ; $6c2a: $65
	ld   h, [hl]                                     ; $6c2b: $66
	ld   h, a                                        ; $6c2c: $67
	ld   l, b                                        ; $6c2d: $68
	ld   l, c                                        ; $6c2e: $69
	ld   l, d                                        ; $6c2f: $6a
	ld   l, e                                        ; $6c30: $6b
	ld   l, h                                        ; $6c31: $6c
	ld   l, l                                        ; $6c32: $6d
	ld   l, l                                        ; $6c33: $6d

jr_081_6c34:
	ld   l, a                                        ; $6c34: $6f
	ld   a, [hl+]                                    ; $6c35: $2a
	dec  hl                                          ; $6c36: $2b
	inc  l                                           ; $6c37: $2c
	dec  h                                           ; $6c38: $25
	db   $10                                         ; $6c39: $10
	ld   de, $7372                                   ; $6c3a: $11 $72 $73
	ld   [hl], h                                     ; $6c3d: $74
	ld   [hl], l                                     ; $6c3e: $75
	halt                                             ; $6c3f: $76
	ld   [hl], a                                     ; $6c40: $77
	ld   a, b                                        ; $6c41: $78
	ld   a, c                                        ; $6c42: $79
	ld   a, d                                        ; $6c43: $7a
	ld   a, e                                        ; $6c44: $7b
	ld   a, h                                        ; $6c45: $7c
	ld   a, l                                        ; $6c46: $7d
	ld   a, [hl]                                     ; $6c47: $7e
	ld   l, l                                        ; $6c48: $6d
	ld   l, l                                        ; $6c49: $6d
	dec  l                                           ; $6c4a: $2d
	ld   l, $7f                                      ; $6c4b: $2e $7f
	db   $10                                         ; $6c4d: $10
	ld   de, $2120                                   ; $6c4e: $11 $20 $21
	ld   b, b                                        ; $6c51: $40
	ld   b, c                                        ; $6c52: $41
	ld   h, b                                        ; $6c53: $60
	ld   h, c                                        ; $6c54: $61
	nop                                              ; $6c55: $00
	ld   bc, $0302                                   ; $6c56: $01 $02 $03
	inc  b                                           ; $6c59: $04
	dec  b                                           ; $6c5a: $05
	ld   b, $07                                      ; $6c5b: $06 $07
	ld   h, $6d                                      ; $6c5d: $26 $6d
	ld   l, l                                        ; $6c5f: $6d
	add  hl, hl                                      ; $6c60: $29
	db   $10                                         ; $6c61: $10
	ld   de, $3130                                   ; $6c62: $11 $30 $31
	ld   d, b                                        ; $6c65: $50
	ld   d, c                                        ; $6c66: $51
	ld   [hl], b                                     ; $6c67: $70
	ld   [hl], c                                     ; $6c68: $71
	db   $10                                         ; $6c69: $10
	ld   de, $1312                                   ; $6c6a: $11 $12 $13
	inc  d                                           ; $6c6d: $14
	dec  d                                           ; $6c6e: $15
	ld   d, $17                                      ; $6c6f: $16 $17
	ld   l, [hl]                                     ; $6c71: $6e
	ld   [de], a                                     ; $6c72: $12
	ld   l, l                                        ; $6c73: $6d
	add  hl, hl                                      ; $6c74: $29
	dec  b                                           ; $6c75: $05
	dec  b                                           ; $6c76: $05
	dec  b                                           ; $6c77: $05
	inc  bc                                          ; $6c78: $03
	inc  bc                                          ; $6c79: $03
	inc  bc                                          ; $6c7a: $03
	inc  bc                                          ; $6c7b: $03
	inc  bc                                          ; $6c7c: $03
	inc  bc                                          ; $6c7d: $03
	inc  bc                                          ; $6c7e: $03
	inc  bc                                          ; $6c7f: $03
	inc  bc                                          ; $6c80: $03
	inc  bc                                          ; $6c81: $03
	inc  bc                                          ; $6c82: $03
	inc  bc                                          ; $6c83: $03
	inc  bc                                          ; $6c84: $03
	dec  bc                                          ; $6c85: $0b
	dec  bc                                          ; $6c86: $0b
	dec  bc                                          ; $6c87: $0b
	dec  bc                                          ; $6c88: $0b
	dec  b                                           ; $6c89: $05
	inc  b                                           ; $6c8a: $04
	inc  b                                           ; $6c8b: $04
	inc  bc                                          ; $6c8c: $03
	inc  bc                                          ; $6c8d: $03
	inc  bc                                          ; $6c8e: $03
	inc  bc                                          ; $6c8f: $03
	inc  bc                                          ; $6c90: $03
	inc  bc                                          ; $6c91: $03
	inc  bc                                          ; $6c92: $03
	inc  bc                                          ; $6c93: $03
	inc  bc                                          ; $6c94: $03
	inc  bc                                          ; $6c95: $03
	inc  bc                                          ; $6c96: $03
	inc  bc                                          ; $6c97: $03
	inc  bc                                          ; $6c98: $03
	dec  bc                                          ; $6c99: $0b
	dec  bc                                          ; $6c9a: $0b
	dec  bc                                          ; $6c9b: $0b
	dec  bc                                          ; $6c9c: $0b
	dec  b                                           ; $6c9d: $05
	inc  b                                           ; $6c9e: $04
	inc  b                                           ; $6c9f: $04
	inc  bc                                          ; $6ca0: $03
	inc  bc                                          ; $6ca1: $03
	inc  bc                                          ; $6ca2: $03
	inc  bc                                          ; $6ca3: $03
	inc  bc                                          ; $6ca4: $03
	inc  c                                           ; $6ca5: $0c
	inc  c                                           ; $6ca6: $0c
	inc  c                                           ; $6ca7: $0c
	inc  c                                           ; $6ca8: $0c
	inc  c                                           ; $6ca9: $0c
	inc  c                                           ; $6caa: $0c
	inc  c                                           ; $6cab: $0c
	inc  c                                           ; $6cac: $0c
	inc  c                                           ; $6cad: $0c
	inc  c                                           ; $6cae: $0c
	inc  c                                           ; $6caf: $0c
	dec  bc                                          ; $6cb0: $0b
	dec  b                                           ; $6cb1: $05
	inc  b                                           ; $6cb2: $04
	inc  b                                           ; $6cb3: $04
	inc  b                                           ; $6cb4: $04
	inc  b                                           ; $6cb5: $04
	inc  b                                           ; $6cb6: $04
	inc  b                                           ; $6cb7: $04
	inc  b                                           ; $6cb8: $04
	inc  b                                           ; $6cb9: $04
	inc  c                                           ; $6cba: $0c
	inc  c                                           ; $6cbb: $0c
	inc  c                                           ; $6cbc: $0c
	inc  c                                           ; $6cbd: $0c
	inc  c                                           ; $6cbe: $0c
	inc  c                                           ; $6cbf: $0c
	inc  c                                           ; $6cc0: $0c
	inc  c                                           ; $6cc1: $0c
	inc  c                                           ; $6cc2: $0c
	inc  c                                           ; $6cc3: $0c
	dec  bc                                          ; $6cc4: $0b
	dec  b                                           ; $6cc5: $05
	inc  b                                           ; $6cc6: $04
	inc  b                                           ; $6cc7: $04
	inc  b                                           ; $6cc8: $04
	inc  b                                           ; $6cc9: $04
	inc  b                                           ; $6cca: $04
	inc  b                                           ; $6ccb: $04
	inc  b                                           ; $6ccc: $04
	inc  b                                           ; $6ccd: $04
	inc  b                                           ; $6cce: $04
	inc  c                                           ; $6ccf: $0c
	inc  c                                           ; $6cd0: $0c
	inc  c                                           ; $6cd1: $0c
	inc  c                                           ; $6cd2: $0c
	inc  c                                           ; $6cd3: $0c
	inc  c                                           ; $6cd4: $0c
	inc  c                                           ; $6cd5: $0c
	inc  c                                           ; $6cd6: $0c
	inc  c                                           ; $6cd7: $0c
	dec  bc                                          ; $6cd8: $0b
	dec  b                                           ; $6cd9: $05
	inc  b                                           ; $6cda: $04
	inc  b                                           ; $6cdb: $04
	inc  b                                           ; $6cdc: $04
	inc  b                                           ; $6cdd: $04
	inc  b                                           ; $6cde: $04
	inc  b                                           ; $6cdf: $04
	inc  b                                           ; $6ce0: $04
	inc  b                                           ; $6ce1: $04
	inc  b                                           ; $6ce2: $04
	inc  b                                           ; $6ce3: $04
	inc  b                                           ; $6ce4: $04
	inc  b                                           ; $6ce5: $04
	inc  c                                           ; $6ce6: $0c
	inc  c                                           ; $6ce7: $0c
	inc  c                                           ; $6ce8: $0c
	inc  c                                           ; $6ce9: $0c
	inc  c                                           ; $6cea: $0c
	inc  c                                           ; $6ceb: $0c
	dec  bc                                          ; $6cec: $0b
	dec  b                                           ; $6ced: $05
	inc  b                                           ; $6cee: $04
	inc  b                                           ; $6cef: $04
	inc  b                                           ; $6cf0: $04
	inc  b                                           ; $6cf1: $04
	inc  b                                           ; $6cf2: $04
	inc  b                                           ; $6cf3: $04
	inc  b                                           ; $6cf4: $04
	inc  b                                           ; $6cf5: $04
	inc  b                                           ; $6cf6: $04
	inc  b                                           ; $6cf7: $04
	inc  b                                           ; $6cf8: $04
	inc  b                                           ; $6cf9: $04
	inc  b                                           ; $6cfa: $04
	inc  b                                           ; $6cfb: $04
	inc  b                                           ; $6cfc: $04
	inc  c                                           ; $6cfd: $0c
	inc  c                                           ; $6cfe: $0c
	inc  c                                           ; $6cff: $0c
	dec  bc                                          ; $6d00: $0b
	dec  b                                           ; $6d01: $05
	inc  b                                           ; $6d02: $04
	inc  b                                           ; $6d03: $04
	inc  b                                           ; $6d04: $04
	inc  b                                           ; $6d05: $04
	inc  b                                           ; $6d06: $04
	inc  b                                           ; $6d07: $04
	inc  b                                           ; $6d08: $04
	inc  b                                           ; $6d09: $04
	inc  b                                           ; $6d0a: $04
	inc  b                                           ; $6d0b: $04
	inc  b                                           ; $6d0c: $04
	inc  b                                           ; $6d0d: $04
	inc  b                                           ; $6d0e: $04
	inc  b                                           ; $6d0f: $04
	inc  b                                           ; $6d10: $04
	inc  b                                           ; $6d11: $04
	inc  c                                           ; $6d12: $0c
	inc  c                                           ; $6d13: $0c
	inc  bc                                          ; $6d14: $03
	dec  b                                           ; $6d15: $05
	inc  b                                           ; $6d16: $04
	inc  b                                           ; $6d17: $04
	inc  b                                           ; $6d18: $04
	inc  b                                           ; $6d19: $04
	inc  b                                           ; $6d1a: $04
	inc  b                                           ; $6d1b: $04
	inc  b                                           ; $6d1c: $04
	inc  c                                           ; $6d1d: $0c
	inc  c                                           ; $6d1e: $0c
	inc  c                                           ; $6d1f: $0c
	inc  c                                           ; $6d20: $0c
	inc  c                                           ; $6d21: $0c
	inc  c                                           ; $6d22: $0c
	inc  c                                           ; $6d23: $0c
	inc  c                                           ; $6d24: $0c
	inc  c                                           ; $6d25: $0c
	inc  b                                           ; $6d26: $04
	inc  b                                           ; $6d27: $04
	dec  c                                           ; $6d28: $0d
	dec  b                                           ; $6d29: $05
	inc  b                                           ; $6d2a: $04
	inc  b                                           ; $6d2b: $04
	inc  b                                           ; $6d2c: $04
	inc  b                                           ; $6d2d: $04
	inc  b                                           ; $6d2e: $04
	inc  b                                           ; $6d2f: $04
	inc  b                                           ; $6d30: $04
	inc  c                                           ; $6d31: $0c
	inc  c                                           ; $6d32: $0c
	inc  c                                           ; $6d33: $0c
	inc  c                                           ; $6d34: $0c
	inc  c                                           ; $6d35: $0c
	inc  c                                           ; $6d36: $0c
	inc  c                                           ; $6d37: $0c
	inc  c                                           ; $6d38: $0c
	inc  b                                           ; $6d39: $04
	inc  b                                           ; $6d3a: $04
	inc  b                                           ; $6d3b: $04
	dec  c                                           ; $6d3c: $0d
	nop                                              ; $6d3d: $00
	ld   bc, $0302                                   ; $6d3e: $01 $02 $03
	inc  b                                           ; $6d41: $04
	ld   bc, $0101                                   ; $6d42: $01 $01 $01
	ld   bc, $0101                                   ; $6d45: $01 $01 $01
	dec  bc                                          ; $6d48: $0b
	ld   bc, $0101                                   ; $6d49: $01 $01 $01
	rrca                                             ; $6d4c: $0f
	inc  l                                           ; $6d4d: $2c
	ld   a, [hl+]                                    ; $6d4e: $2a
	add  hl, hl                                      ; $6d4f: $29
	ld   e, $10                                      ; $6d50: $1e $10
	ld   de, $1312                                   ; $6d52: $11 $12 $13
	inc  d                                           ; $6d55: $14
	ld   de, $1111                                   ; $6d56: $11 $11 $11
	ld   de, $1111                                   ; $6d59: $11 $11 $11
	dec  de                                          ; $6d5c: $1b
	ld   de, $111d                                   ; $6d5d: $11 $1d $11
	rra                                              ; $6d60: $1f
	inc  e                                           ; $6d61: $1c
	ld   c, $0d                                      ; $6d62: $0e $0d
	inc  c                                           ; $6d64: $0c
	jr   nz, @+$23                                   ; $6d65: $20 $21

	ld   [hl+], a                                    ; $6d67: $22
	inc  hl                                          ; $6d68: $23
	inc  h                                           ; $6d69: $24
	ld   de, $1111                                   ; $6d6a: $11 $11 $11
	ld   de, $1111                                   ; $6d6d: $11 $11 $11
	dec  hl                                          ; $6d70: $2b
	ld   de, $112d                                   ; $6d71: $11 $2d $11
	cpl                                              ; $6d74: $2f
	ld   b, l                                        ; $6d75: $45
	ld   b, [hl]                                     ; $6d76: $46
	ld   b, a                                        ; $6d77: $47
	ld   c, b                                        ; $6d78: $48
	jr   nc, jr_081_6dac                             ; $6d79: $30 $31

	ld   [hl-], a                                    ; $6d7b: $32
	inc  sp                                          ; $6d7c: $33
	inc  [hl]                                        ; $6d7d: $34
	ld   de, $1111                                   ; $6d7e: $11 $11 $11
	ld   de, $1111                                   ; $6d81: $11 $11 $11
	dec  hl                                          ; $6d84: $2b
	inc  a                                           ; $6d85: $3c
	dec  a                                           ; $6d86: $3d
	ld   de, $553f                                   ; $6d87: $11 $3f $55
	ld   d, [hl]                                     ; $6d8a: $56
	ld   d, a                                        ; $6d8b: $57
	ld   e, b                                        ; $6d8c: $58
	ld   b, b                                        ; $6d8d: $40
	ld   b, c                                        ; $6d8e: $41
	ld   b, d                                        ; $6d8f: $42
	ld   b, e                                        ; $6d90: $43
	ld   b, h                                        ; $6d91: $44
	ld   de, $1111                                   ; $6d92: $11 $11 $11
	ld   de, $4a11                                   ; $6d95: $11 $11 $4a
	ld   c, e                                        ; $6d98: $4b
	ld   c, h                                        ; $6d99: $4c
	dec  a                                           ; $6d9a: $3d
	ld   c, [hl]                                     ; $6d9b: $4e
	ccf                                              ; $6d9c: $3f
	dec  h                                           ; $6d9d: $25
	ld   h, $27                                      ; $6d9e: $26 $27
	jr   z, jr_081_6df2                              ; $6da0: $28 $50

	ld   d, c                                        ; $6da2: $51
	ld   d, d                                        ; $6da3: $52
	ld   d, e                                        ; $6da4: $53
	ld   de, $1111                                   ; $6da5: $11 $11 $11
	ld   de, $5911                                   ; $6da8: $11 $11 $59
	ld   e, d                                        ; $6dab: $5a

jr_081_6dac:
	ld   e, e                                        ; $6dac: $5b
	ld   e, h                                        ; $6dad: $5c
	ld   e, l                                        ; $6dae: $5d
	ld   e, [hl]                                     ; $6daf: $5e
	ccf                                              ; $6db0: $3f
	dec  h                                           ; $6db1: $25
	ld   [hl], $37                                   ; $6db2: $36 $37
	jr   c, jr_081_6e16                              ; $6db4: $38 $60

	ld   h, c                                        ; $6db6: $61
	ld   h, d                                        ; $6db7: $62
	ld   h, e                                        ; $6db8: $63
	ld   de, $1111                                   ; $6db9: $11 $11 $11
	ld   de, $6911                                   ; $6dbc: $11 $11 $69
	ld   l, d                                        ; $6dbf: $6a
	ld   l, e                                        ; $6dc0: $6b
	ld   l, h                                        ; $6dc1: $6c
	ld   l, l                                        ; $6dc2: $6d
	ld   l, [hl]                                     ; $6dc3: $6e
	ccf                                              ; $6dc4: $3f
	dec  h                                           ; $6dc5: $25
	ld   [$0a09], sp                                 ; $6dc6: $08 $09 $0a
	ld   h, b                                        ; $6dc9: $60
	ld   [hl], c                                     ; $6dca: $71
	ld   [hl], d                                     ; $6dcb: $72
	ld   [hl], e                                     ; $6dcc: $73
	ld   [hl], h                                     ; $6dcd: $74
	ld   [hl], l                                     ; $6dce: $75
	halt                                             ; $6dcf: $76
	ld   [hl], a                                     ; $6dd0: $77
	ld   a, b                                        ; $6dd1: $78
	ld   a, c                                        ; $6dd2: $79
	ld   l, d                                        ; $6dd3: $6a
	ld   l, e                                        ; $6dd4: $6b
	ld   a, h                                        ; $6dd5: $7c
	ld   l, l                                        ; $6dd6: $6d
	ld   l, [hl]                                     ; $6dd7: $6e
	ccf                                              ; $6dd8: $3f
	dec  h                                           ; $6dd9: $25
	jr   jr_081_6df5                                 ; $6dda: $18 $19

	ld   a, [de]                                     ; $6ddc: $1a
	ld   h, b                                        ; $6ddd: $60
	ld   bc, $0302                                   ; $6dde: $01 $02 $03
	inc  b                                           ; $6de1: $04
	dec  b                                           ; $6de2: $05
	ld   b, $00                                      ; $6de3: $06 $00
	ld   a, a                                        ; $6de5: $7f
	ld   a, [hl]                                     ; $6de6: $7e
	ld   a, l                                        ; $6de7: $7d
	ld   a, e                                        ; $6de8: $7b
	ld   a, d                                        ; $6de9: $7a
	ld   [hl], b                                     ; $6dea: $70
	ld   l, a                                        ; $6deb: $6f
	ld   l, b                                        ; $6dec: $68
	dec  [hl]                                        ; $6ded: $35
	dec  b                                           ; $6dee: $05
	ld   b, $07                                      ; $6def: $06 $07
	ld   h, a                                        ; $6df1: $67

jr_081_6df2:
	ld   h, [hl]                                     ; $6df2: $66
	ld   h, l                                        ; $6df3: $65
	ld   h, h                                        ; $6df4: $64

jr_081_6df5:
	ld   e, a                                        ; $6df5: $5f
	ld   d, h                                        ; $6df6: $54
	ld   c, a                                        ; $6df7: $4f
	ld   c, l                                        ; $6df8: $4d
	ld   c, l                                        ; $6df9: $4d
	ld   c, l                                        ; $6dfa: $4d
	ld   c, c                                        ; $6dfb: $49
	ld   a, $3b                                      ; $6dfc: $3e $3b
	ld   a, [hl-]                                    ; $6dfe: $3a
	add  hl, sp                                      ; $6dff: $39
	ld   l, $2e                                      ; $6e00: $2e $2e
	dec  d                                           ; $6e02: $15
	ld   d, $17                                      ; $6e03: $16 $17
	inc  bc                                          ; $6e05: $03
	inc  bc                                          ; $6e06: $03
	inc  b                                           ; $6e07: $04
	inc  b                                           ; $6e08: $04
	inc  b                                           ; $6e09: $04
	inc  bc                                          ; $6e0a: $03
	inc  bc                                          ; $6e0b: $03
	inc  bc                                          ; $6e0c: $03
	inc  bc                                          ; $6e0d: $03
	inc  bc                                          ; $6e0e: $03
	inc  bc                                          ; $6e0f: $03
	inc  bc                                          ; $6e10: $03
	inc  bc                                          ; $6e11: $03
	inc  bc                                          ; $6e12: $03
	inc  bc                                          ; $6e13: $03
	inc  bc                                          ; $6e14: $03
	inc  bc                                          ; $6e15: $03

jr_081_6e16:
	inc  bc                                          ; $6e16: $03
	inc  bc                                          ; $6e17: $03
	inc  bc                                          ; $6e18: $03
	inc  bc                                          ; $6e19: $03
	inc  bc                                          ; $6e1a: $03
	inc  b                                           ; $6e1b: $04
	inc  b                                           ; $6e1c: $04
	inc  b                                           ; $6e1d: $04
	inc  bc                                          ; $6e1e: $03
	inc  bc                                          ; $6e1f: $03
	inc  bc                                          ; $6e20: $03
	inc  bc                                          ; $6e21: $03
	inc  bc                                          ; $6e22: $03
	inc  bc                                          ; $6e23: $03
	inc  bc                                          ; $6e24: $03
	inc  bc                                          ; $6e25: $03
	inc  bc                                          ; $6e26: $03
	inc  bc                                          ; $6e27: $03
	inc  bc                                          ; $6e28: $03
	inc  bc                                          ; $6e29: $03
	inc  bc                                          ; $6e2a: $03
	inc  bc                                          ; $6e2b: $03
	inc  bc                                          ; $6e2c: $03
	inc  bc                                          ; $6e2d: $03
	inc  b                                           ; $6e2e: $04
	inc  b                                           ; $6e2f: $04
	inc  b                                           ; $6e30: $04
	inc  b                                           ; $6e31: $04
	inc  bc                                          ; $6e32: $03
	inc  bc                                          ; $6e33: $03
	inc  bc                                          ; $6e34: $03
	inc  bc                                          ; $6e35: $03
	inc  bc                                          ; $6e36: $03
	inc  bc                                          ; $6e37: $03
	inc  bc                                          ; $6e38: $03
	inc  bc                                          ; $6e39: $03
	inc  bc                                          ; $6e3a: $03
	inc  bc                                          ; $6e3b: $03
	inc  bc                                          ; $6e3c: $03
	inc  bc                                          ; $6e3d: $03
	inc  bc                                          ; $6e3e: $03
	inc  bc                                          ; $6e3f: $03
	inc  bc                                          ; $6e40: $03
	inc  bc                                          ; $6e41: $03
	inc  b                                           ; $6e42: $04
	inc  b                                           ; $6e43: $04
	inc  b                                           ; $6e44: $04
	inc  b                                           ; $6e45: $04
	inc  bc                                          ; $6e46: $03
	inc  bc                                          ; $6e47: $03
	inc  bc                                          ; $6e48: $03
	inc  bc                                          ; $6e49: $03
	inc  bc                                          ; $6e4a: $03
	inc  bc                                          ; $6e4b: $03
	inc  bc                                          ; $6e4c: $03
	inc  bc                                          ; $6e4d: $03
	inc  bc                                          ; $6e4e: $03
	inc  bc                                          ; $6e4f: $03
	inc  bc                                          ; $6e50: $03
	inc  bc                                          ; $6e51: $03
	inc  bc                                          ; $6e52: $03
	inc  bc                                          ; $6e53: $03
	inc  bc                                          ; $6e54: $03
	inc  bc                                          ; $6e55: $03
	inc  b                                           ; $6e56: $04
	inc  b                                           ; $6e57: $04
	inc  b                                           ; $6e58: $04
	inc  b                                           ; $6e59: $04
	inc  bc                                          ; $6e5a: $03
	inc  bc                                          ; $6e5b: $03
	inc  bc                                          ; $6e5c: $03
	inc  bc                                          ; $6e5d: $03
	inc  bc                                          ; $6e5e: $03
	inc  bc                                          ; $6e5f: $03
	inc  bc                                          ; $6e60: $03
	inc  bc                                          ; $6e61: $03
	inc  bc                                          ; $6e62: $03
	inc  bc                                          ; $6e63: $03
	inc  bc                                          ; $6e64: $03
	inc  bc                                          ; $6e65: $03
	inc  bc                                          ; $6e66: $03
	inc  bc                                          ; $6e67: $03
	dec  b                                           ; $6e68: $05
	inc  bc                                          ; $6e69: $03
	inc  b                                           ; $6e6a: $04
	inc  b                                           ; $6e6b: $04
	inc  b                                           ; $6e6c: $04
	inc  bc                                          ; $6e6d: $03
	inc  bc                                          ; $6e6e: $03
	inc  bc                                          ; $6e6f: $03
	inc  bc                                          ; $6e70: $03
	inc  bc                                          ; $6e71: $03
	inc  bc                                          ; $6e72: $03
	inc  bc                                          ; $6e73: $03
	inc  bc                                          ; $6e74: $03
	inc  bc                                          ; $6e75: $03
	inc  bc                                          ; $6e76: $03
	inc  bc                                          ; $6e77: $03
	inc  bc                                          ; $6e78: $03
	inc  bc                                          ; $6e79: $03
	dec  b                                           ; $6e7a: $05
	dec  b                                           ; $6e7b: $05
	inc  b                                           ; $6e7c: $04
	inc  bc                                          ; $6e7d: $03
	inc  b                                           ; $6e7e: $04
	inc  b                                           ; $6e7f: $04
	inc  b                                           ; $6e80: $04
	inc  bc                                          ; $6e81: $03
	inc  bc                                          ; $6e82: $03
	inc  bc                                          ; $6e83: $03
	inc  bc                                          ; $6e84: $03
	inc  bc                                          ; $6e85: $03
	inc  bc                                          ; $6e86: $03
	inc  bc                                          ; $6e87: $03
	inc  bc                                          ; $6e88: $03
	inc  bc                                          ; $6e89: $03
	inc  bc                                          ; $6e8a: $03
	inc  bc                                          ; $6e8b: $03
	inc  bc                                          ; $6e8c: $03
	inc  bc                                          ; $6e8d: $03
	dec  b                                           ; $6e8e: $05
	dec  b                                           ; $6e8f: $05
	inc  bc                                          ; $6e90: $03
	inc  bc                                          ; $6e91: $03
	inc  b                                           ; $6e92: $04
	inc  b                                           ; $6e93: $04
	inc  b                                           ; $6e94: $04
	inc  bc                                          ; $6e95: $03
	dec  b                                           ; $6e96: $05
	inc  bc                                          ; $6e97: $03
	inc  bc                                          ; $6e98: $03
	inc  bc                                          ; $6e99: $03
	inc  bc                                          ; $6e9a: $03
	inc  bc                                          ; $6e9b: $03
	inc  bc                                          ; $6e9c: $03
	inc  bc                                          ; $6e9d: $03
	inc  bc                                          ; $6e9e: $03
	inc  bc                                          ; $6e9f: $03
	inc  bc                                          ; $6ea0: $03
	inc  bc                                          ; $6ea1: $03
	dec  b                                           ; $6ea2: $05
	dec  b                                           ; $6ea3: $05
	inc  bc                                          ; $6ea4: $03
	inc  bc                                          ; $6ea5: $03
	inc  c                                           ; $6ea6: $0c
	inc  c                                           ; $6ea7: $0c
	inc  c                                           ; $6ea8: $0c
	dec  bc                                          ; $6ea9: $0b
	dec  c                                           ; $6eaa: $0d
	dec  bc                                          ; $6eab: $0b
	dec  bc                                          ; $6eac: $0b
	inc  bc                                          ; $6ead: $03
	inc  bc                                          ; $6eae: $03
	inc  bc                                          ; $6eaf: $03
	inc  bc                                          ; $6eb0: $03
	inc  bc                                          ; $6eb1: $03
	inc  bc                                          ; $6eb2: $03
	inc  bc                                          ; $6eb3: $03
	inc  bc                                          ; $6eb4: $03
	inc  bc                                          ; $6eb5: $03
	dec  b                                           ; $6eb6: $05
	dec  b                                           ; $6eb7: $05
	inc  bc                                          ; $6eb8: $03
	inc  b                                           ; $6eb9: $04
	inc  b                                           ; $6eba: $04
	inc  b                                           ; $6ebb: $04
	dec  b                                           ; $6ebc: $05
	dec  b                                           ; $6ebd: $05
	dec  b                                           ; $6ebe: $05
	dec  b                                           ; $6ebf: $05
	dec  b                                           ; $6ec0: $05
	dec  b                                           ; $6ec1: $05
	dec  b                                           ; $6ec2: $05
	dec  b                                           ; $6ec3: $05
	dec  b                                           ; $6ec4: $05
	dec  b                                           ; $6ec5: $05
	dec  b                                           ; $6ec6: $05
	dec  b                                           ; $6ec7: $05
	dec  b                                           ; $6ec8: $05
	dec  b                                           ; $6ec9: $05
	dec  b                                           ; $6eca: $05
	dec  b                                           ; $6ecb: $05
	dec  b                                           ; $6ecc: $05
	nop                                              ; $6ecd: $00
	ld   bc, $0302                                   ; $6ece: $01 $02 $03
	inc  b                                           ; $6ed1: $04
	ld   bc, $0101                                   ; $6ed2: $01 $01 $01
	ld   bc, $0101                                   ; $6ed5: $01 $01 $01
	dec  bc                                          ; $6ed8: $0b
	ld   bc, $0101                                   ; $6ed9: $01 $01 $01
	rrca                                             ; $6edc: $0f
	inc  l                                           ; $6edd: $2c
	ld   bc, $0807                                   ; $6ede: $01 $07 $08
	db   $10                                         ; $6ee1: $10
	ld   de, $1312                                   ; $6ee2: $11 $12 $13
	inc  d                                           ; $6ee5: $14
	ld   de, $1111                                   ; $6ee6: $11 $11 $11
	ld   de, $1111                                   ; $6ee9: $11 $11 $11
	dec  de                                          ; $6eec: $1b
	ld   de, $111d                                   ; $6eed: $11 $1d $11
	rra                                              ; $6ef0: $1f
	inc  e                                           ; $6ef1: $1c
	ld   de, $0a09                                   ; $6ef2: $11 $09 $0a
	jr   nz, @+$23                                   ; $6ef5: $20 $21

	ld   [hl+], a                                    ; $6ef7: $22
	inc  hl                                          ; $6ef8: $23
	inc  h                                           ; $6ef9: $24
	ld   de, $1111                                   ; $6efa: $11 $11 $11
	ld   de, $1111                                   ; $6efd: $11 $11 $11
	dec  hl                                          ; $6f00: $2b
	ld   de, $112d                                   ; $6f01: $11 $2d $11
	cpl                                              ; $6f04: $2f
	ld   b, l                                        ; $6f05: $45
	ld   de, $0a0b                                   ; $6f06: $11 $0b $0a
	jr   nc, jr_081_6f3c                             ; $6f09: $30 $31

	ld   [hl-], a                                    ; $6f0b: $32
	inc  sp                                          ; $6f0c: $33
	inc  [hl]                                        ; $6f0d: $34
	ld   de, $1111                                   ; $6f0e: $11 $11 $11
	ld   de, $1111                                   ; $6f11: $11 $11 $11
	dec  hl                                          ; $6f14: $2b
	inc  a                                           ; $6f15: $3c
	dec  a                                           ; $6f16: $3d
	ld   de, $553f                                   ; $6f17: $11 $3f $55
	ld   de, $0a0c                                   ; $6f1a: $11 $0c $0a
	ld   b, b                                        ; $6f1d: $40
	ld   b, c                                        ; $6f1e: $41
	ld   b, d                                        ; $6f1f: $42
	ld   b, e                                        ; $6f20: $43
	ld   b, h                                        ; $6f21: $44
	ld   de, $1111                                   ; $6f22: $11 $11 $11
	ld   de, $4a11                                   ; $6f25: $11 $11 $4a
	ld   c, e                                        ; $6f28: $4b
	ld   c, h                                        ; $6f29: $4c
	dec  a                                           ; $6f2a: $3d
	ld   c, [hl]                                     ; $6f2b: $4e
	ccf                                              ; $6f2c: $3f
	dec  h                                           ; $6f2d: $25
	ld   de, $0e0d                                   ; $6f2e: $11 $0d $0e
	ld   d, b                                        ; $6f31: $50
	ld   d, c                                        ; $6f32: $51
	ld   d, d                                        ; $6f33: $52
	ld   d, e                                        ; $6f34: $53
	ld   de, $1111                                   ; $6f35: $11 $11 $11
	ld   de, $5911                                   ; $6f38: $11 $11 $59
	ld   e, d                                        ; $6f3b: $5a

jr_081_6f3c:
	ld   e, e                                        ; $6f3c: $5b
	ld   e, h                                        ; $6f3d: $5c
	ld   e, l                                        ; $6f3e: $5d
	ld   e, [hl]                                     ; $6f3f: $5e
	ccf                                              ; $6f40: $3f
	dec  h                                           ; $6f41: $25
	rrca                                             ; $6f42: $0f
	db   $10                                         ; $6f43: $10
	ld   de, $6160                                   ; $6f44: $11 $60 $61
	ld   h, d                                        ; $6f47: $62
	ld   h, e                                        ; $6f48: $63
	ld   de, $1111                                   ; $6f49: $11 $11 $11
	ld   de, $6911                                   ; $6f4c: $11 $11 $69
	ld   l, d                                        ; $6f4f: $6a
	ld   l, e                                        ; $6f50: $6b
	ld   l, h                                        ; $6f51: $6c
	ld   l, l                                        ; $6f52: $6d
	ld   l, [hl]                                     ; $6f53: $6e
	ccf                                              ; $6f54: $3f
	dec  h                                           ; $6f55: $25
	ld   [de], a                                     ; $6f56: $12
	inc  de                                          ; $6f57: $13
	inc  d                                           ; $6f58: $14
	ld   h, b                                        ; $6f59: $60
	ld   [hl], c                                     ; $6f5a: $71
	ld   [hl], d                                     ; $6f5b: $72
	ld   [hl], e                                     ; $6f5c: $73
	ld   [hl], h                                     ; $6f5d: $74
	ld   [hl], l                                     ; $6f5e: $75
	halt                                             ; $6f5f: $76
	ld   [hl], a                                     ; $6f60: $77
	ld   a, b                                        ; $6f61: $78
	ld   a, c                                        ; $6f62: $79
	ld   l, d                                        ; $6f63: $6a
	ld   l, e                                        ; $6f64: $6b
	ld   a, h                                        ; $6f65: $7c
	ld   l, l                                        ; $6f66: $6d
	ld   l, [hl]                                     ; $6f67: $6e
	ccf                                              ; $6f68: $3f
	dec  h                                           ; $6f69: $25
	dec  d                                           ; $6f6a: $15
	ld   d, $17                                      ; $6f6b: $16 $17
	ld   h, b                                        ; $6f6d: $60
	ld   bc, $0302                                   ; $6f6e: $01 $02 $03
	inc  b                                           ; $6f71: $04
	dec  b                                           ; $6f72: $05
	ld   b, $00                                      ; $6f73: $06 $00
	ld   a, a                                        ; $6f75: $7f
	ld   a, [hl]                                     ; $6f76: $7e
	ld   a, l                                        ; $6f77: $7d
	ld   a, e                                        ; $6f78: $7b
	ld   a, d                                        ; $6f79: $7a
	ld   [hl], b                                     ; $6f7a: $70
	ld   l, a                                        ; $6f7b: $6f
	ld   l, b                                        ; $6f7c: $68
	dec  [hl]                                        ; $6f7d: $35
	jr   jr_081_6f99                                 ; $6f7e: $18 $19

	ld   a, [de]                                     ; $6f80: $1a
	ld   h, a                                        ; $6f81: $67
	ld   h, [hl]                                     ; $6f82: $66
	ld   h, l                                        ; $6f83: $65
	ld   h, h                                        ; $6f84: $64
	ld   e, a                                        ; $6f85: $5f
	ld   d, h                                        ; $6f86: $54
	ld   c, a                                        ; $6f87: $4f
	ld   c, l                                        ; $6f88: $4d
	ld   c, l                                        ; $6f89: $4d
	ld   c, l                                        ; $6f8a: $4d
	ld   c, c                                        ; $6f8b: $49
	ld   a, $3b                                      ; $6f8c: $3e $3b
	ld   a, [hl-]                                    ; $6f8e: $3a
	add  hl, sp                                      ; $6f8f: $39
	ld   l, $2e                                      ; $6f90: $2e $2e
	dec  de                                          ; $6f92: $1b
	inc  e                                           ; $6f93: $1c
	dec  e                                           ; $6f94: $1d
	inc  bc                                          ; $6f95: $03
	inc  bc                                          ; $6f96: $03
	inc  b                                           ; $6f97: $04
	inc  b                                           ; $6f98: $04

jr_081_6f99:
	inc  b                                           ; $6f99: $04
	inc  bc                                          ; $6f9a: $03
	inc  bc                                          ; $6f9b: $03
	inc  bc                                          ; $6f9c: $03
	inc  bc                                          ; $6f9d: $03
	inc  bc                                          ; $6f9e: $03
	inc  bc                                          ; $6f9f: $03
	inc  bc                                          ; $6fa0: $03
	inc  bc                                          ; $6fa1: $03
	inc  bc                                          ; $6fa2: $03
	inc  bc                                          ; $6fa3: $03
	inc  bc                                          ; $6fa4: $03
	inc  bc                                          ; $6fa5: $03
	inc  bc                                          ; $6fa6: $03
	dec  bc                                          ; $6fa7: $0b
	dec  bc                                          ; $6fa8: $0b
	inc  bc                                          ; $6fa9: $03
	inc  bc                                          ; $6faa: $03
	inc  b                                           ; $6fab: $04
	inc  b                                           ; $6fac: $04
	inc  b                                           ; $6fad: $04
	inc  bc                                          ; $6fae: $03
	inc  bc                                          ; $6faf: $03
	inc  bc                                          ; $6fb0: $03
	inc  bc                                          ; $6fb1: $03
	inc  bc                                          ; $6fb2: $03
	inc  bc                                          ; $6fb3: $03
	inc  bc                                          ; $6fb4: $03
	inc  bc                                          ; $6fb5: $03
	inc  bc                                          ; $6fb6: $03
	inc  bc                                          ; $6fb7: $03
	inc  bc                                          ; $6fb8: $03
	inc  bc                                          ; $6fb9: $03
	inc  bc                                          ; $6fba: $03
	dec  bc                                          ; $6fbb: $0b
	dec  bc                                          ; $6fbc: $0b
	inc  bc                                          ; $6fbd: $03
	inc  b                                           ; $6fbe: $04
	inc  b                                           ; $6fbf: $04
	inc  b                                           ; $6fc0: $04
	inc  b                                           ; $6fc1: $04
	inc  bc                                          ; $6fc2: $03
	inc  bc                                          ; $6fc3: $03
	inc  bc                                          ; $6fc4: $03
	inc  bc                                          ; $6fc5: $03
	inc  bc                                          ; $6fc6: $03
	inc  bc                                          ; $6fc7: $03
	inc  bc                                          ; $6fc8: $03
	inc  bc                                          ; $6fc9: $03
	inc  bc                                          ; $6fca: $03
	inc  bc                                          ; $6fcb: $03
	inc  bc                                          ; $6fcc: $03
	inc  bc                                          ; $6fcd: $03
	inc  bc                                          ; $6fce: $03
	dec  bc                                          ; $6fcf: $0b
	dec  bc                                          ; $6fd0: $0b
	inc  bc                                          ; $6fd1: $03
	inc  b                                           ; $6fd2: $04
	inc  b                                           ; $6fd3: $04
	inc  b                                           ; $6fd4: $04
	inc  b                                           ; $6fd5: $04
	inc  bc                                          ; $6fd6: $03
	inc  bc                                          ; $6fd7: $03
	inc  bc                                          ; $6fd8: $03
	inc  bc                                          ; $6fd9: $03
	inc  bc                                          ; $6fda: $03
	inc  bc                                          ; $6fdb: $03
	inc  bc                                          ; $6fdc: $03
	inc  bc                                          ; $6fdd: $03
	inc  bc                                          ; $6fde: $03
	inc  bc                                          ; $6fdf: $03
	inc  bc                                          ; $6fe0: $03
	inc  bc                                          ; $6fe1: $03
	inc  bc                                          ; $6fe2: $03
	dec  bc                                          ; $6fe3: $0b
	dec  bc                                          ; $6fe4: $0b
	inc  bc                                          ; $6fe5: $03
	inc  b                                           ; $6fe6: $04
	inc  b                                           ; $6fe7: $04
	inc  b                                           ; $6fe8: $04
	inc  b                                           ; $6fe9: $04
	inc  bc                                          ; $6fea: $03
	inc  bc                                          ; $6feb: $03
	inc  bc                                          ; $6fec: $03
	inc  bc                                          ; $6fed: $03
	inc  bc                                          ; $6fee: $03
	inc  bc                                          ; $6fef: $03
	inc  bc                                          ; $6ff0: $03
	inc  bc                                          ; $6ff1: $03
	inc  bc                                          ; $6ff2: $03
	inc  bc                                          ; $6ff3: $03
	inc  bc                                          ; $6ff4: $03
	inc  bc                                          ; $6ff5: $03
	inc  bc                                          ; $6ff6: $03
	dec  bc                                          ; $6ff7: $0b
	dec  bc                                          ; $6ff8: $0b
	inc  bc                                          ; $6ff9: $03
	inc  b                                           ; $6ffa: $04
	inc  b                                           ; $6ffb: $04
	inc  b                                           ; $6ffc: $04
	inc  bc                                          ; $6ffd: $03
	inc  bc                                          ; $6ffe: $03
	inc  bc                                          ; $6fff: $03
	inc  bc                                          ; $7000: $03
	inc  bc                                          ; $7001: $03
	inc  bc                                          ; $7002: $03
	inc  bc                                          ; $7003: $03
	inc  bc                                          ; $7004: $03
	inc  bc                                          ; $7005: $03
	inc  bc                                          ; $7006: $03
	inc  bc                                          ; $7007: $03
	inc  bc                                          ; $7008: $03
	inc  bc                                          ; $7009: $03
	dec  c                                           ; $700a: $0d
	dec  c                                           ; $700b: $0d
	dec  bc                                          ; $700c: $0b
	inc  bc                                          ; $700d: $03
	inc  b                                           ; $700e: $04
	inc  b                                           ; $700f: $04
	inc  b                                           ; $7010: $04
	inc  bc                                          ; $7011: $03
	inc  bc                                          ; $7012: $03
	inc  bc                                          ; $7013: $03
	inc  bc                                          ; $7014: $03
	inc  bc                                          ; $7015: $03
	inc  bc                                          ; $7016: $03
	inc  bc                                          ; $7017: $03
	inc  bc                                          ; $7018: $03
	inc  bc                                          ; $7019: $03
	inc  bc                                          ; $701a: $03
	inc  bc                                          ; $701b: $03
	inc  bc                                          ; $701c: $03
	inc  bc                                          ; $701d: $03
	dec  c                                           ; $701e: $0d
	dec  c                                           ; $701f: $0d
	dec  c                                           ; $7020: $0d
	inc  bc                                          ; $7021: $03
	inc  b                                           ; $7022: $04
	inc  b                                           ; $7023: $04
	inc  b                                           ; $7024: $04
	inc  bc                                          ; $7025: $03
	dec  b                                           ; $7026: $05
	inc  bc                                          ; $7027: $03
	inc  bc                                          ; $7028: $03
	inc  bc                                          ; $7029: $03
	inc  bc                                          ; $702a: $03
	inc  bc                                          ; $702b: $03
	inc  bc                                          ; $702c: $03
	inc  bc                                          ; $702d: $03
	inc  bc                                          ; $702e: $03
	inc  bc                                          ; $702f: $03
	inc  bc                                          ; $7030: $03
	inc  bc                                          ; $7031: $03
	dec  c                                           ; $7032: $0d
	dec  c                                           ; $7033: $0d
	dec  c                                           ; $7034: $0d
	inc  bc                                          ; $7035: $03
	inc  c                                           ; $7036: $0c
	inc  c                                           ; $7037: $0c
	inc  c                                           ; $7038: $0c
	dec  bc                                          ; $7039: $0b
	dec  c                                           ; $703a: $0d
	dec  bc                                          ; $703b: $0b
	dec  bc                                          ; $703c: $0b
	inc  bc                                          ; $703d: $03
	inc  bc                                          ; $703e: $03
	inc  bc                                          ; $703f: $03
	inc  bc                                          ; $7040: $03
	inc  bc                                          ; $7041: $03
	inc  bc                                          ; $7042: $03
	inc  bc                                          ; $7043: $03
	inc  bc                                          ; $7044: $03
	inc  bc                                          ; $7045: $03
	dec  c                                           ; $7046: $0d
	dec  c                                           ; $7047: $0d
	dec  c                                           ; $7048: $0d
	inc  b                                           ; $7049: $04
	inc  b                                           ; $704a: $04
	inc  b                                           ; $704b: $04
	dec  b                                           ; $704c: $05
	dec  b                                           ; $704d: $05
	dec  b                                           ; $704e: $05
	dec  b                                           ; $704f: $05
	dec  b                                           ; $7050: $05
	dec  b                                           ; $7051: $05
	dec  b                                           ; $7052: $05
	dec  b                                           ; $7053: $05
	dec  b                                           ; $7054: $05
	dec  b                                           ; $7055: $05
	dec  b                                           ; $7056: $05
	dec  b                                           ; $7057: $05
	dec  b                                           ; $7058: $05
	dec  b                                           ; $7059: $05
	dec  c                                           ; $705a: $0d
	dec  c                                           ; $705b: $0d
	dec  c                                           ; $705c: $0d
	nop                                              ; $705d: $00
	ld   bc, $0302                                   ; $705e: $01 $02 $03
	inc  b                                           ; $7061: $04
	dec  b                                           ; $7062: $05
	ld   b, $07                                      ; $7063: $06 $07
	ld   [$0a09], sp                                 ; $7065: $08 $09 $0a
	dec  bc                                          ; $7068: $0b
	inc  c                                           ; $7069: $0c
	dec  c                                           ; $706a: $0d
	ld   c, $04                                      ; $706b: $0e $04
	inc  bc                                          ; $706d: $03
	ld   [bc], a                                     ; $706e: $02
	ld   bc, $1000                                   ; $706f: $01 $00 $10
	ld   de, $1312                                   ; $7072: $11 $12 $13
	inc  d                                           ; $7075: $14
	dec  d                                           ; $7076: $15
	ld   d, $17                                      ; $7077: $16 $17
	jr   @+$1b                                       ; $7079: $18 $19

	ld   a, [de]                                     ; $707b: $1a
	dec  de                                          ; $707c: $1b
	inc  e                                           ; $707d: $1c
	dec  e                                           ; $707e: $1d
	ld   e, $14                                      ; $707f: $1e $14
	inc  de                                          ; $7081: $13
	ld   [de], a                                     ; $7082: $12
	ld   de, $2010                                   ; $7083: $11 $10 $20
	ld   hl, $2322                                   ; $7086: $21 $22 $23
	inc  h                                           ; $7089: $24
	dec  h                                           ; $708a: $25
	ld   h, $27                                      ; $708b: $26 $27
	jr   z, jr_081_70b8                              ; $708d: $28 $29

	ld   a, [hl+]                                    ; $708f: $2a
	dec  hl                                          ; $7090: $2b
	inc  l                                           ; $7091: $2c
	dec  l                                           ; $7092: $2d
	ld   l, $24                                      ; $7093: $2e $24
	inc  hl                                          ; $7095: $23
	ld   [hl+], a                                    ; $7096: $22
	ld   hl, $3020                                   ; $7097: $21 $20 $30
	ld   sp, $3332                                   ; $709a: $31 $32 $33
	inc  [hl]                                        ; $709d: $34
	dec  [hl]                                        ; $709e: $35
	ld   [hl], $37                                   ; $709f: $36 $37
	jr   c, jr_081_70dc                              ; $70a1: $38 $39

	ld   a, [hl-]                                    ; $70a3: $3a
	dec  sp                                          ; $70a4: $3b
	inc  a                                           ; $70a5: $3c
	dec  a                                           ; $70a6: $3d
	ld   a, $34                                      ; $70a7: $3e $34
	inc  sp                                          ; $70a9: $33
	ld   [hl-], a                                    ; $70aa: $32
	ld   sp, $4030                                   ; $70ab: $31 $30 $40
	ld   b, c                                        ; $70ae: $41
	ld   b, d                                        ; $70af: $42
	ld   b, e                                        ; $70b0: $43
	ld   b, h                                        ; $70b1: $44
	ld   b, l                                        ; $70b2: $45
	ld   b, [hl]                                     ; $70b3: $46
	ld   b, a                                        ; $70b4: $47
	ld   c, b                                        ; $70b5: $48
	ld   c, c                                        ; $70b6: $49
	ld   c, d                                        ; $70b7: $4a

jr_081_70b8:
	ld   c, e                                        ; $70b8: $4b
	ld   c, h                                        ; $70b9: $4c
	ld   c, l                                        ; $70ba: $4d
	ld   c, [hl]                                     ; $70bb: $4e
	ld   b, h                                        ; $70bc: $44
	ld   b, e                                        ; $70bd: $43
	ld   b, d                                        ; $70be: $42
	ld   b, c                                        ; $70bf: $41
	ld   b, b                                        ; $70c0: $40
	ld   d, b                                        ; $70c1: $50
	ld   d, c                                        ; $70c2: $51
	ld   d, d                                        ; $70c3: $52
	ld   d, e                                        ; $70c4: $53
	ld   d, h                                        ; $70c5: $54
	ld   d, l                                        ; $70c6: $55
	ld   d, [hl]                                     ; $70c7: $56
	ld   d, a                                        ; $70c8: $57
	ld   e, b                                        ; $70c9: $58
	ld   e, c                                        ; $70ca: $59
	ld   e, d                                        ; $70cb: $5a
	ld   e, e                                        ; $70cc: $5b
	ld   e, h                                        ; $70cd: $5c
	ld   e, l                                        ; $70ce: $5d
	ld   e, [hl]                                     ; $70cf: $5e
	ld   d, h                                        ; $70d0: $54
	ld   d, e                                        ; $70d1: $53
	ld   d, d                                        ; $70d2: $52
	ld   d, c                                        ; $70d3: $51
	ld   d, b                                        ; $70d4: $50
	ld   h, b                                        ; $70d5: $60
	ld   h, c                                        ; $70d6: $61
	ld   h, d                                        ; $70d7: $62
	ld   h, e                                        ; $70d8: $63
	ld   h, h                                        ; $70d9: $64
	ld   h, l                                        ; $70da: $65
	ld   h, [hl]                                     ; $70db: $66

jr_081_70dc:
	ld   h, a                                        ; $70dc: $67
	ld   l, b                                        ; $70dd: $68
	ld   l, c                                        ; $70de: $69
	ld   l, d                                        ; $70df: $6a
	ld   l, e                                        ; $70e0: $6b
	ld   l, h                                        ; $70e1: $6c
	ld   l, l                                        ; $70e2: $6d
	ld   l, [hl]                                     ; $70e3: $6e
	ld   h, h                                        ; $70e4: $64
	ld   h, e                                        ; $70e5: $63
	ld   h, d                                        ; $70e6: $62
	ld   h, c                                        ; $70e7: $61
	ld   h, b                                        ; $70e8: $60
	ld   [hl], b                                     ; $70e9: $70
	ld   [hl], c                                     ; $70ea: $71
	ld   [hl], d                                     ; $70eb: $72
	ld   [hl], e                                     ; $70ec: $73
	ld   [hl], h                                     ; $70ed: $74
	ld   [hl], l                                     ; $70ee: $75
	halt                                             ; $70ef: $76
	ld   [hl], a                                     ; $70f0: $77
	ld   a, b                                        ; $70f1: $78
	ld   a, c                                        ; $70f2: $79
	ld   a, d                                        ; $70f3: $7a
	ld   a, b                                        ; $70f4: $78
	ld   [hl], a                                     ; $70f5: $77
	halt                                             ; $70f6: $76
	ld   [hl], l                                     ; $70f7: $75
	ld   [hl], h                                     ; $70f8: $74
	ld   [hl], e                                     ; $70f9: $73
	ld   [hl], d                                     ; $70fa: $72
	ld   [hl], c                                     ; $70fb: $71
	ld   [hl], b                                     ; $70fc: $70
	ld   a, e                                        ; $70fd: $7b
	ld   a, h                                        ; $70fe: $7c
	ld   a, l                                        ; $70ff: $7d
	ld   a, [hl]                                     ; $7100: $7e
	rrca                                             ; $7101: $0f
	rra                                              ; $7102: $1f
	cpl                                              ; $7103: $2f
	ccf                                              ; $7104: $3f
	ld   c, a                                        ; $7105: $4f
	ld   e, a                                        ; $7106: $5f
	ld   l, a                                        ; $7107: $6f
	ld   a, a                                        ; $7108: $7f
	ccf                                              ; $7109: $3f
	cpl                                              ; $710a: $2f
	rra                                              ; $710b: $1f
	rrca                                             ; $710c: $0f
	ld   a, [hl]                                     ; $710d: $7e
	ld   a, l                                        ; $710e: $7d
	ld   a, h                                        ; $710f: $7c
	ld   a, e                                        ; $7110: $7b
	nop                                              ; $7111: $00
	ld   bc, $0302                                   ; $7112: $01 $02 $03
	inc  b                                           ; $7115: $04
	dec  b                                           ; $7116: $05
	ld   b, $07                                      ; $7117: $06 $07
	ld   [TurnOnLCD], sp                                 ; $7119: $08 $09 $09
	ld   [$0607], sp                                 ; $711c: $08 $07 $06
	dec  b                                           ; $711f: $05
	inc  b                                           ; $7120: $04
	inc  bc                                          ; $7121: $03
	ld   [bc], a                                     ; $7122: $02
	ld   bc, $0300                                   ; $7123: $01 $00 $03
	inc  bc                                          ; $7126: $03
	inc  bc                                          ; $7127: $03
	inc  bc                                          ; $7128: $03
	inc  bc                                          ; $7129: $03
	inc  bc                                          ; $712a: $03
	inc  bc                                          ; $712b: $03
	inc  bc                                          ; $712c: $03
	inc  bc                                          ; $712d: $03
	inc  bc                                          ; $712e: $03
	inc  bc                                          ; $712f: $03
	inc  bc                                          ; $7130: $03
	inc  bc                                          ; $7131: $03
	inc  bc                                          ; $7132: $03
	inc  bc                                          ; $7133: $03
	inc  hl                                          ; $7134: $23
	inc  hl                                          ; $7135: $23
	inc  hl                                          ; $7136: $23
	inc  hl                                          ; $7137: $23
	inc  hl                                          ; $7138: $23
	inc  bc                                          ; $7139: $03
	inc  bc                                          ; $713a: $03
	inc  bc                                          ; $713b: $03
	inc  bc                                          ; $713c: $03
	inc  bc                                          ; $713d: $03
	inc  bc                                          ; $713e: $03
	inc  bc                                          ; $713f: $03
	inc  bc                                          ; $7140: $03
	inc  bc                                          ; $7141: $03
	inc  bc                                          ; $7142: $03
	inc  bc                                          ; $7143: $03
	inc  bc                                          ; $7144: $03
	inc  bc                                          ; $7145: $03
	inc  bc                                          ; $7146: $03
	inc  bc                                          ; $7147: $03
	inc  hl                                          ; $7148: $23
	inc  hl                                          ; $7149: $23
	inc  hl                                          ; $714a: $23
	inc  hl                                          ; $714b: $23
	inc  hl                                          ; $714c: $23
	inc  bc                                          ; $714d: $03
	inc  bc                                          ; $714e: $03
	inc  bc                                          ; $714f: $03
	inc  bc                                          ; $7150: $03
	inc  bc                                          ; $7151: $03
	inc  b                                           ; $7152: $04
	inc  b                                           ; $7153: $04
	inc  b                                           ; $7154: $04
	inc  b                                           ; $7155: $04
	inc  b                                           ; $7156: $04
	inc  b                                           ; $7157: $04
	inc  b                                           ; $7158: $04
	inc  b                                           ; $7159: $04
	inc  b                                           ; $715a: $04
	inc  b                                           ; $715b: $04
	inc  hl                                          ; $715c: $23
	inc  hl                                          ; $715d: $23
	inc  hl                                          ; $715e: $23
	inc  hl                                          ; $715f: $23
	inc  hl                                          ; $7160: $23
	inc  bc                                          ; $7161: $03
	inc  bc                                          ; $7162: $03
	inc  bc                                          ; $7163: $03
	inc  bc                                          ; $7164: $03
	inc  bc                                          ; $7165: $03
	inc  b                                           ; $7166: $04
	inc  b                                           ; $7167: $04
	inc  b                                           ; $7168: $04
	inc  b                                           ; $7169: $04
	inc  b                                           ; $716a: $04
	inc  b                                           ; $716b: $04
	inc  b                                           ; $716c: $04
	inc  b                                           ; $716d: $04
	inc  b                                           ; $716e: $04
	inc  b                                           ; $716f: $04
	inc  hl                                          ; $7170: $23
	inc  hl                                          ; $7171: $23
	inc  hl                                          ; $7172: $23
	inc  hl                                          ; $7173: $23
	inc  hl                                          ; $7174: $23
	inc  bc                                          ; $7175: $03
	inc  bc                                          ; $7176: $03
	inc  bc                                          ; $7177: $03
	inc  bc                                          ; $7178: $03
	inc  bc                                          ; $7179: $03
	inc  b                                           ; $717a: $04
	inc  b                                           ; $717b: $04
	inc  b                                           ; $717c: $04
	inc  b                                           ; $717d: $04
	inc  b                                           ; $717e: $04
	inc  b                                           ; $717f: $04
	inc  b                                           ; $7180: $04
	inc  b                                           ; $7181: $04
	inc  b                                           ; $7182: $04
	inc  b                                           ; $7183: $04
	inc  hl                                          ; $7184: $23
	inc  hl                                          ; $7185: $23
	inc  hl                                          ; $7186: $23
	inc  hl                                          ; $7187: $23
	inc  hl                                          ; $7188: $23
	inc  bc                                          ; $7189: $03
	inc  bc                                          ; $718a: $03
	inc  bc                                          ; $718b: $03
	inc  bc                                          ; $718c: $03
	inc  bc                                          ; $718d: $03
	inc  b                                           ; $718e: $04
	inc  b                                           ; $718f: $04
	inc  b                                           ; $7190: $04
	inc  b                                           ; $7191: $04
	inc  b                                           ; $7192: $04
	inc  b                                           ; $7193: $04
	inc  b                                           ; $7194: $04
	inc  b                                           ; $7195: $04
	inc  b                                           ; $7196: $04
	inc  b                                           ; $7197: $04
	inc  hl                                          ; $7198: $23
	inc  hl                                          ; $7199: $23
	inc  hl                                          ; $719a: $23
	inc  hl                                          ; $719b: $23
	inc  hl                                          ; $719c: $23
	inc  bc                                          ; $719d: $03
	inc  bc                                          ; $719e: $03
	inc  bc                                          ; $719f: $03
	inc  bc                                          ; $71a0: $03
	inc  bc                                          ; $71a1: $03
	inc  b                                           ; $71a2: $04
	inc  b                                           ; $71a3: $04
	inc  b                                           ; $71a4: $04
	inc  b                                           ; $71a5: $04
	inc  b                                           ; $71a6: $04
	inc  b                                           ; $71a7: $04
	inc  b                                           ; $71a8: $04
	inc  b                                           ; $71a9: $04
	inc  b                                           ; $71aa: $04
	inc  b                                           ; $71ab: $04
	inc  hl                                          ; $71ac: $23
	inc  hl                                          ; $71ad: $23
	inc  hl                                          ; $71ae: $23
	inc  hl                                          ; $71af: $23
	inc  hl                                          ; $71b0: $23
	dec  b                                           ; $71b1: $05
	dec  b                                           ; $71b2: $05
	dec  b                                           ; $71b3: $05
	dec  b                                           ; $71b4: $05
	dec  b                                           ; $71b5: $05
	dec  b                                           ; $71b6: $05
	dec  b                                           ; $71b7: $05
	dec  b                                           ; $71b8: $05
	dec  b                                           ; $71b9: $05
	dec  b                                           ; $71ba: $05
	dec  b                                           ; $71bb: $05
	dec  h                                           ; $71bc: $25
	dec  h                                           ; $71bd: $25
	dec  h                                           ; $71be: $25
	dec  h                                           ; $71bf: $25
	dec  h                                           ; $71c0: $25
	dec  h                                           ; $71c1: $25
	dec  h                                           ; $71c2: $25
	dec  h                                           ; $71c3: $25
	dec  h                                           ; $71c4: $25
	dec  b                                           ; $71c5: $05
	dec  b                                           ; $71c6: $05
	dec  b                                           ; $71c7: $05
	dec  b                                           ; $71c8: $05
	dec  b                                           ; $71c9: $05
	dec  b                                           ; $71ca: $05
	dec  b                                           ; $71cb: $05
	dec  b                                           ; $71cc: $05
	dec  b                                           ; $71cd: $05
	dec  b                                           ; $71ce: $05
	dec  b                                           ; $71cf: $05
	dec  b                                           ; $71d0: $05
	dec  h                                           ; $71d1: $25
	dec  h                                           ; $71d2: $25
	dec  h                                           ; $71d3: $25
	dec  h                                           ; $71d4: $25
	dec  h                                           ; $71d5: $25
	dec  h                                           ; $71d6: $25
	dec  h                                           ; $71d7: $25
	dec  h                                           ; $71d8: $25
	dec  c                                           ; $71d9: $0d
	dec  c                                           ; $71da: $0d
	dec  c                                           ; $71db: $0d
	dec  c                                           ; $71dc: $0d
	dec  c                                           ; $71dd: $0d
	dec  c                                           ; $71de: $0d
	dec  c                                           ; $71df: $0d
	dec  c                                           ; $71e0: $0d
	dec  c                                           ; $71e1: $0d
	dec  c                                           ; $71e2: $0d
	dec  l                                           ; $71e3: $2d
	dec  l                                           ; $71e4: $2d
	dec  l                                           ; $71e5: $2d
	dec  l                                           ; $71e6: $2d
	dec  l                                           ; $71e7: $2d
	dec  l                                           ; $71e8: $2d
	dec  l                                           ; $71e9: $2d
	dec  l                                           ; $71ea: $2d
	dec  l                                           ; $71eb: $2d
	dec  l                                           ; $71ec: $2d
	nop                                              ; $71ed: $00
	ld   bc, $0302                                   ; $71ee: $01 $02 $03
	inc  b                                           ; $71f1: $04
	dec  b                                           ; $71f2: $05
	ld   b, $07                                      ; $71f3: $06 $07
	ld   [$0a09], sp                                 ; $71f5: $08 $09 $0a
	dec  bc                                          ; $71f8: $0b
	inc  c                                           ; $71f9: $0c
	dec  c                                           ; $71fa: $0d
	ld   c, $04                                      ; $71fb: $0e $04
	inc  bc                                          ; $71fd: $03
	ld   [bc], a                                     ; $71fe: $02
	ld   bc, $1000                                   ; $71ff: $01 $00 $10
	ld   de, $1312                                   ; $7202: $11 $12 $13
	inc  d                                           ; $7205: $14
	dec  d                                           ; $7206: $15
	ld   d, $17                                      ; $7207: $16 $17
	jr   @+$1b                                       ; $7209: $18 $19

	ld   a, [de]                                     ; $720b: $1a
	dec  de                                          ; $720c: $1b
	inc  e                                           ; $720d: $1c
	dec  e                                           ; $720e: $1d
	ld   e, $14                                      ; $720f: $1e $14
	inc  de                                          ; $7211: $13
	ld   [de], a                                     ; $7212: $12
	ld   de, $2010                                   ; $7213: $11 $10 $20
	ld   hl, $2322                                   ; $7216: $21 $22 $23
	inc  h                                           ; $7219: $24
	dec  h                                           ; $721a: $25
	ld   h, $27                                      ; $721b: $26 $27
	jr   z, jr_081_7248                              ; $721d: $28 $29

	ld   a, [hl+]                                    ; $721f: $2a
	dec  hl                                          ; $7220: $2b
	inc  l                                           ; $7221: $2c
	dec  l                                           ; $7222: $2d
	ld   l, $24                                      ; $7223: $2e $24
	inc  hl                                          ; $7225: $23
	ld   [hl+], a                                    ; $7226: $22
	ld   hl, $3020                                   ; $7227: $21 $20 $30
	ld   sp, $3332                                   ; $722a: $31 $32 $33
	inc  [hl]                                        ; $722d: $34
	dec  [hl]                                        ; $722e: $35
	ld   [hl], $37                                   ; $722f: $36 $37
	jr   c, jr_081_726c                              ; $7231: $38 $39

	ld   a, [hl-]                                    ; $7233: $3a
	dec  sp                                          ; $7234: $3b
	inc  a                                           ; $7235: $3c
	dec  a                                           ; $7236: $3d
	ld   a, $34                                      ; $7237: $3e $34
	inc  sp                                          ; $7239: $33
	ld   [hl-], a                                    ; $723a: $32
	ld   sp, $4030                                   ; $723b: $31 $30 $40
	ld   b, c                                        ; $723e: $41
	ld   b, d                                        ; $723f: $42
	ld   b, e                                        ; $7240: $43
	ld   b, h                                        ; $7241: $44
	ld   b, l                                        ; $7242: $45
	ld   b, [hl]                                     ; $7243: $46
	ld   b, a                                        ; $7244: $47
	ld   c, b                                        ; $7245: $48
	ld   c, c                                        ; $7246: $49
	ld   c, d                                        ; $7247: $4a

jr_081_7248:
	ld   c, e                                        ; $7248: $4b
	ld   c, h                                        ; $7249: $4c
	ld   c, l                                        ; $724a: $4d
	ld   c, [hl]                                     ; $724b: $4e
	ld   b, h                                        ; $724c: $44
	ld   b, e                                        ; $724d: $43
	ld   b, d                                        ; $724e: $42
	ld   b, c                                        ; $724f: $41
	ld   b, b                                        ; $7250: $40
	ld   d, b                                        ; $7251: $50
	ld   d, c                                        ; $7252: $51
	ld   d, d                                        ; $7253: $52
	ld   d, e                                        ; $7254: $53
	ld   d, h                                        ; $7255: $54
	ld   d, l                                        ; $7256: $55
	ld   d, [hl]                                     ; $7257: $56
	ld   d, a                                        ; $7258: $57
	ld   e, b                                        ; $7259: $58
	ld   e, c                                        ; $725a: $59
	ld   e, d                                        ; $725b: $5a
	ld   e, e                                        ; $725c: $5b
	ld   e, h                                        ; $725d: $5c
	ld   e, l                                        ; $725e: $5d
	ld   e, [hl]                                     ; $725f: $5e
	ld   d, h                                        ; $7260: $54
	ld   d, e                                        ; $7261: $53
	ld   d, d                                        ; $7262: $52
	ld   d, c                                        ; $7263: $51
	ld   d, b                                        ; $7264: $50
	ld   h, b                                        ; $7265: $60
	ld   h, c                                        ; $7266: $61
	ld   h, d                                        ; $7267: $62
	ld   h, e                                        ; $7268: $63
	ld   h, h                                        ; $7269: $64
	ld   h, l                                        ; $726a: $65
	ld   h, [hl]                                     ; $726b: $66

jr_081_726c:
	ld   h, a                                        ; $726c: $67
	ld   l, b                                        ; $726d: $68
	ld   l, c                                        ; $726e: $69
	ld   l, d                                        ; $726f: $6a
	ld   l, e                                        ; $7270: $6b
	ld   l, h                                        ; $7271: $6c
	ld   l, l                                        ; $7272: $6d
	ld   l, [hl]                                     ; $7273: $6e
	ld   h, h                                        ; $7274: $64
	ld   h, e                                        ; $7275: $63
	ld   h, d                                        ; $7276: $62
	ld   h, c                                        ; $7277: $61
	ld   h, b                                        ; $7278: $60
	ld   a, [bc]                                     ; $7279: $0a
	dec  bc                                          ; $727a: $0b
	inc  c                                           ; $727b: $0c
	dec  c                                           ; $727c: $0d
	ld   c, $0f                                      ; $727d: $0e $0f
	db   $10                                         ; $727f: $10
	ld   de, $7912                                   ; $7280: $11 $12 $79
	ld   a, d                                        ; $7283: $7a
	inc  de                                          ; $7284: $13
	inc  d                                           ; $7285: $14
	dec  d                                           ; $7286: $15
	ld   d, $17                                      ; $7287: $16 $17
	jr   jr_081_72a4                                 ; $7289: $18 $19

	ld   a, [de]                                     ; $728b: $1a
	dec  de                                          ; $728c: $1b
	inc  e                                           ; $728d: $1c
	dec  e                                           ; $728e: $1d
	ld   e, $1f                                      ; $728f: $1e $1f
	jr   nz, jr_081_72b4                             ; $7291: $20 $21

	ld   [hl+], a                                    ; $7293: $22
	inc  hl                                          ; $7294: $23
	inc  h                                           ; $7295: $24
	ld   e, a                                        ; $7296: $5f
	ld   l, a                                        ; $7297: $6f
	inc  h                                           ; $7298: $24
	dec  h                                           ; $7299: $25
	ld   h, $27                                      ; $729a: $26 $27
	jr   z, jr_081_72c7                              ; $729c: $28 $29

	ld   a, [hl+]                                    ; $729e: $2a
	dec  hl                                          ; $729f: $2b
	inc  l                                           ; $72a0: $2c
	dec  l                                           ; $72a1: $2d
	ld   l, $2f                                      ; $72a2: $2e $2f

jr_081_72a4:
	jr   nc, jr_081_72d7                             ; $72a4: $30 $31

	ld   [hl-], a                                    ; $72a6: $32
	inc  sp                                          ; $72a7: $33
	inc  [hl]                                        ; $72a8: $34
	ld   [TurnOnLCD], sp                                 ; $72a9: $08 $09 $09
	ld   [$3635], sp                                 ; $72ac: $08 $35 $36
	scf                                              ; $72af: $37
	jr   c, jr_081_72eb                              ; $72b0: $38 $39

	ld   a, [hl-]                                    ; $72b2: $3a
	dec  sp                                          ; $72b3: $3b

jr_081_72b4:
	inc  a                                           ; $72b4: $3c
	inc  bc                                          ; $72b5: $03
	inc  bc                                          ; $72b6: $03
	inc  bc                                          ; $72b7: $03
	inc  bc                                          ; $72b8: $03
	inc  bc                                          ; $72b9: $03
	inc  bc                                          ; $72ba: $03
	inc  bc                                          ; $72bb: $03
	inc  bc                                          ; $72bc: $03
	inc  bc                                          ; $72bd: $03
	inc  bc                                          ; $72be: $03
	inc  bc                                          ; $72bf: $03
	inc  bc                                          ; $72c0: $03
	inc  bc                                          ; $72c1: $03
	inc  bc                                          ; $72c2: $03
	inc  bc                                          ; $72c3: $03
	inc  hl                                          ; $72c4: $23
	inc  hl                                          ; $72c5: $23
	inc  hl                                          ; $72c6: $23

jr_081_72c7:
	inc  hl                                          ; $72c7: $23
	inc  hl                                          ; $72c8: $23
	inc  bc                                          ; $72c9: $03
	inc  bc                                          ; $72ca: $03
	inc  bc                                          ; $72cb: $03
	inc  bc                                          ; $72cc: $03
	inc  bc                                          ; $72cd: $03
	inc  bc                                          ; $72ce: $03
	inc  bc                                          ; $72cf: $03
	inc  bc                                          ; $72d0: $03
	inc  bc                                          ; $72d1: $03
	inc  bc                                          ; $72d2: $03
	inc  bc                                          ; $72d3: $03
	inc  bc                                          ; $72d4: $03
	inc  bc                                          ; $72d5: $03
	inc  bc                                          ; $72d6: $03

jr_081_72d7:
	inc  bc                                          ; $72d7: $03
	inc  hl                                          ; $72d8: $23
	inc  hl                                          ; $72d9: $23
	inc  hl                                          ; $72da: $23
	inc  hl                                          ; $72db: $23
	inc  hl                                          ; $72dc: $23
	inc  bc                                          ; $72dd: $03
	inc  bc                                          ; $72de: $03
	inc  bc                                          ; $72df: $03
	inc  bc                                          ; $72e0: $03
	inc  bc                                          ; $72e1: $03
	inc  b                                           ; $72e2: $04
	inc  b                                           ; $72e3: $04
	inc  b                                           ; $72e4: $04
	inc  b                                           ; $72e5: $04
	inc  b                                           ; $72e6: $04
	inc  b                                           ; $72e7: $04
	inc  b                                           ; $72e8: $04
	inc  b                                           ; $72e9: $04
	inc  b                                           ; $72ea: $04

jr_081_72eb:
	inc  b                                           ; $72eb: $04
	inc  hl                                          ; $72ec: $23
	inc  hl                                          ; $72ed: $23
	inc  hl                                          ; $72ee: $23
	inc  hl                                          ; $72ef: $23
	inc  hl                                          ; $72f0: $23
	inc  bc                                          ; $72f1: $03
	inc  bc                                          ; $72f2: $03
	inc  bc                                          ; $72f3: $03
	inc  bc                                          ; $72f4: $03
	inc  bc                                          ; $72f5: $03
	inc  b                                           ; $72f6: $04
	inc  b                                           ; $72f7: $04
	inc  b                                           ; $72f8: $04
	inc  b                                           ; $72f9: $04
	inc  b                                           ; $72fa: $04
	inc  b                                           ; $72fb: $04
	inc  b                                           ; $72fc: $04
	inc  b                                           ; $72fd: $04
	inc  b                                           ; $72fe: $04
	inc  b                                           ; $72ff: $04
	inc  hl                                          ; $7300: $23
	inc  hl                                          ; $7301: $23
	inc  hl                                          ; $7302: $23
	inc  hl                                          ; $7303: $23
	inc  hl                                          ; $7304: $23
	inc  bc                                          ; $7305: $03
	inc  bc                                          ; $7306: $03
	inc  bc                                          ; $7307: $03
	inc  bc                                          ; $7308: $03
	inc  bc                                          ; $7309: $03
	inc  b                                           ; $730a: $04
	inc  b                                           ; $730b: $04
	inc  b                                           ; $730c: $04
	inc  b                                           ; $730d: $04
	inc  b                                           ; $730e: $04
	inc  b                                           ; $730f: $04
	inc  b                                           ; $7310: $04
	inc  b                                           ; $7311: $04
	inc  b                                           ; $7312: $04
	inc  b                                           ; $7313: $04
	inc  hl                                          ; $7314: $23
	inc  hl                                          ; $7315: $23
	inc  hl                                          ; $7316: $23
	inc  hl                                          ; $7317: $23
	inc  hl                                          ; $7318: $23
	inc  bc                                          ; $7319: $03
	inc  bc                                          ; $731a: $03
	inc  bc                                          ; $731b: $03
	inc  bc                                          ; $731c: $03
	inc  bc                                          ; $731d: $03
	inc  b                                           ; $731e: $04
	inc  b                                           ; $731f: $04
	inc  b                                           ; $7320: $04
	inc  b                                           ; $7321: $04
	inc  b                                           ; $7322: $04
	inc  b                                           ; $7323: $04
	inc  b                                           ; $7324: $04
	inc  b                                           ; $7325: $04
	inc  b                                           ; $7326: $04
	inc  b                                           ; $7327: $04
	inc  hl                                          ; $7328: $23
	inc  hl                                          ; $7329: $23
	inc  hl                                          ; $732a: $23
	inc  hl                                          ; $732b: $23
	inc  hl                                          ; $732c: $23
	inc  bc                                          ; $732d: $03
	inc  bc                                          ; $732e: $03
	inc  bc                                          ; $732f: $03
	inc  bc                                          ; $7330: $03
	inc  bc                                          ; $7331: $03
	inc  b                                           ; $7332: $04
	inc  b                                           ; $7333: $04
	inc  b                                           ; $7334: $04
	inc  b                                           ; $7335: $04
	inc  b                                           ; $7336: $04
	inc  b                                           ; $7337: $04
	inc  b                                           ; $7338: $04
	inc  b                                           ; $7339: $04
	inc  b                                           ; $733a: $04
	inc  b                                           ; $733b: $04
	inc  hl                                          ; $733c: $23
	inc  hl                                          ; $733d: $23
	inc  hl                                          ; $733e: $23
	inc  hl                                          ; $733f: $23
	inc  hl                                          ; $7340: $23
	dec  bc                                          ; $7341: $0b
	dec  bc                                          ; $7342: $0b
	dec  bc                                          ; $7343: $0b
	dec  bc                                          ; $7344: $0b
	dec  bc                                          ; $7345: $0b
	dec  bc                                          ; $7346: $0b
	dec  bc                                          ; $7347: $0b
	dec  bc                                          ; $7348: $0b
	dec  bc                                          ; $7349: $0b
	dec  b                                           ; $734a: $05
	dec  b                                           ; $734b: $05
	dec  bc                                          ; $734c: $0b
	dec  bc                                          ; $734d: $0b
	dec  bc                                          ; $734e: $0b
	dec  bc                                          ; $734f: $0b
	dec  bc                                          ; $7350: $0b
	dec  bc                                          ; $7351: $0b
	dec  bc                                          ; $7352: $0b
	dec  bc                                          ; $7353: $0b
	dec  bc                                          ; $7354: $0b
	dec  c                                           ; $7355: $0d
	inc  c                                           ; $7356: $0c
	dec  c                                           ; $7357: $0d
	inc  c                                           ; $7358: $0c
	inc  c                                           ; $7359: $0c
	inc  c                                           ; $735a: $0c
	dec  c                                           ; $735b: $0d
	dec  bc                                          ; $735c: $0b
	dec  l                                           ; $735d: $2d
	dec  b                                           ; $735e: $05
	dec  b                                           ; $735f: $05
	dec  c                                           ; $7360: $0d
	inc  c                                           ; $7361: $0c
	dec  c                                           ; $7362: $0d
	inc  c                                           ; $7363: $0c
	dec  c                                           ; $7364: $0d
	inc  c                                           ; $7365: $0c
	dec  c                                           ; $7366: $0d
	inc  c                                           ; $7367: $0c
	dec  c                                           ; $7368: $0d
	dec  c                                           ; $7369: $0d
	dec  c                                           ; $736a: $0d
	dec  c                                           ; $736b: $0d
	dec  c                                           ; $736c: $0d
	inc  c                                           ; $736d: $0c
	inc  c                                           ; $736e: $0c
	dec  c                                           ; $736f: $0d
	dec  c                                           ; $7370: $0d
	dec  c                                           ; $7371: $0d
	dec  c                                           ; $7372: $0d
	dec  l                                           ; $7373: $2d
	dec  l                                           ; $7374: $2d
	inc  c                                           ; $7375: $0c
	inc  c                                           ; $7376: $0c
	dec  c                                           ; $7377: $0d
	dec  c                                           ; $7378: $0d
	dec  c                                           ; $7379: $0d
	dec  c                                           ; $737a: $0d
	dec  c                                           ; $737b: $0d
	dec  c                                           ; $737c: $0d
	nop                                              ; $737d: $00
	ld   bc, $0302                                   ; $737e: $01 $02 $03
	inc  b                                           ; $7381: $04
	dec  b                                           ; $7382: $05
	ld   b, $07                                      ; $7383: $06 $07
	ld   [$0a09], sp                                 ; $7385: $08 $09 $0a
	dec  bc                                          ; $7388: $0b
	inc  c                                           ; $7389: $0c
	dec  c                                           ; $738a: $0d
	ld   c, $04                                      ; $738b: $0e $04
	inc  bc                                          ; $738d: $03
	ld   [bc], a                                     ; $738e: $02
	ld   bc, $1000                                   ; $738f: $01 $00 $10
	ld   de, $1312                                   ; $7392: $11 $12 $13
	inc  d                                           ; $7395: $14
	dec  d                                           ; $7396: $15
	ld   d, $17                                      ; $7397: $16 $17
	jr   @+$1b                                       ; $7399: $18 $19

	ld   a, [de]                                     ; $739b: $1a
	dec  de                                          ; $739c: $1b
	inc  e                                           ; $739d: $1c
	dec  e                                           ; $739e: $1d
	ld   e, $14                                      ; $739f: $1e $14
	inc  de                                          ; $73a1: $13
	ld   [de], a                                     ; $73a2: $12
	ld   de, $2010                                   ; $73a3: $11 $10 $20
	ld   hl, $2322                                   ; $73a6: $21 $22 $23
	inc  h                                           ; $73a9: $24
	dec  h                                           ; $73aa: $25
	ld   h, $27                                      ; $73ab: $26 $27
	jr   z, jr_081_73d8                              ; $73ad: $28 $29

	ld   a, [hl+]                                    ; $73af: $2a
	dec  hl                                          ; $73b0: $2b
	inc  l                                           ; $73b1: $2c
	dec  l                                           ; $73b2: $2d
	ld   l, $24                                      ; $73b3: $2e $24
	inc  hl                                          ; $73b5: $23
	ld   [hl+], a                                    ; $73b6: $22
	ld   hl, $3020                                   ; $73b7: $21 $20 $30
	ld   hl, $3332                                   ; $73ba: $21 $32 $33
	inc  [hl]                                        ; $73bd: $34
	dec  [hl]                                        ; $73be: $35
	ld   [hl], $37                                   ; $73bf: $36 $37
	jr   c, jr_081_73fc                              ; $73c1: $38 $39

	ld   a, [hl-]                                    ; $73c3: $3a
	dec  sp                                          ; $73c4: $3b
	inc  a                                           ; $73c5: $3c
	dec  a                                           ; $73c6: $3d
	ld   a, $34                                      ; $73c7: $3e $34
	inc  sp                                          ; $73c9: $33
	ld   [hl-], a                                    ; $73ca: $32
	ld   hl, $4030                                   ; $73cb: $21 $30 $40
	ld   hl, $3332                                   ; $73ce: $21 $32 $33
	ld   b, h                                        ; $73d1: $44
	ld   b, l                                        ; $73d2: $45
	ld   b, [hl]                                     ; $73d3: $46
	ld   b, a                                        ; $73d4: $47
	ld   c, b                                        ; $73d5: $48
	ld   c, c                                        ; $73d6: $49
	ld   c, d                                        ; $73d7: $4a

jr_081_73d8:
	ld   c, e                                        ; $73d8: $4b
	ld   c, h                                        ; $73d9: $4c
	ld   c, l                                        ; $73da: $4d
	ld   c, [hl]                                     ; $73db: $4e
	ld   b, h                                        ; $73dc: $44
	inc  sp                                          ; $73dd: $33
	ld   [hl-], a                                    ; $73de: $32
	ld   hl, $5040                                   ; $73df: $21 $40 $50
	ld   d, c                                        ; $73e2: $51
	ld   d, d                                        ; $73e3: $52
	inc  sp                                          ; $73e4: $33
	ld   b, h                                        ; $73e5: $44
	ld   d, l                                        ; $73e6: $55
	ld   d, [hl]                                     ; $73e7: $56
	ld   d, a                                        ; $73e8: $57
	ld   e, b                                        ; $73e9: $58
	ld   e, c                                        ; $73ea: $59
	ld   e, d                                        ; $73eb: $5a
	ld   e, e                                        ; $73ec: $5b
	ld   e, h                                        ; $73ed: $5c
	ld   e, l                                        ; $73ee: $5d
	ld   e, [hl]                                     ; $73ef: $5e
	ld   b, h                                        ; $73f0: $44
	inc  sp                                          ; $73f1: $33
	ld   d, d                                        ; $73f2: $52
	ld   d, c                                        ; $73f3: $51
	ld   d, b                                        ; $73f4: $50
	ld   h, b                                        ; $73f5: $60
	ld   h, c                                        ; $73f6: $61
	ld   h, d                                        ; $73f7: $62
	ld   h, e                                        ; $73f8: $63
	ld   h, h                                        ; $73f9: $64
	ld   h, l                                        ; $73fa: $65
	ld   h, [hl]                                     ; $73fb: $66

jr_081_73fc:
	ld   h, a                                        ; $73fc: $67
	ld   l, b                                        ; $73fd: $68
	ld   l, c                                        ; $73fe: $69
	ld   l, d                                        ; $73ff: $6a
	ld   l, e                                        ; $7400: $6b
	ld   l, h                                        ; $7401: $6c
	ld   l, l                                        ; $7402: $6d
	ld   l, [hl]                                     ; $7403: $6e
	ld   h, h                                        ; $7404: $64
	ld   h, e                                        ; $7405: $63
	ld   h, d                                        ; $7406: $62
	ld   h, c                                        ; $7407: $61
	ld   h, b                                        ; $7408: $60
	ld   [hl], b                                     ; $7409: $70
	ld   [hl], c                                     ; $740a: $71
	ld   [hl], d                                     ; $740b: $72
	ld   [hl], e                                     ; $740c: $73
	ld   [hl], h                                     ; $740d: $74
	ld   [hl], l                                     ; $740e: $75
	halt                                             ; $740f: $76
	ld   [hl], a                                     ; $7410: $77
	ld   a, b                                        ; $7411: $78
	ld   a, c                                        ; $7412: $79
	ld   a, d                                        ; $7413: $7a
	ld   a, b                                        ; $7414: $78
	ld   [hl], a                                     ; $7415: $77
	halt                                             ; $7416: $76
	ld   [hl], l                                     ; $7417: $75
	ld   [hl], h                                     ; $7418: $74
	ld   [hl], e                                     ; $7419: $73
	ld   [hl], d                                     ; $741a: $72
	ld   [hl], c                                     ; $741b: $71
	ld   [hl], b                                     ; $741c: $70
	ld   a, e                                        ; $741d: $7b
	ld   a, h                                        ; $741e: $7c
	ld   a, l                                        ; $741f: $7d
	ld   a, [hl]                                     ; $7420: $7e
	rrca                                             ; $7421: $0f
	rra                                              ; $7422: $1f
	cpl                                              ; $7423: $2f
	ccf                                              ; $7424: $3f
	ld   c, a                                        ; $7425: $4f
	ld   e, a                                        ; $7426: $5f
	ld   l, a                                        ; $7427: $6f
	ld   a, a                                        ; $7428: $7f
	ccf                                              ; $7429: $3f
	cpl                                              ; $742a: $2f
	rra                                              ; $742b: $1f
	rrca                                             ; $742c: $0f
	ld   a, [hl]                                     ; $742d: $7e
	ld   a, l                                        ; $742e: $7d
	ld   a, h                                        ; $742f: $7c
	ld   a, e                                        ; $7430: $7b
	nop                                              ; $7431: $00
	ld   bc, $3102                                   ; $7432: $01 $02 $31
	ld   b, c                                        ; $7435: $41
	ld   b, d                                        ; $7436: $42
	ld   b, e                                        ; $7437: $43
	ld   d, e                                        ; $7438: $53
	ld   d, h                                        ; $7439: $54
	ld   b, h                                        ; $743a: $44
	ld   b, h                                        ; $743b: $44
	ld   d, h                                        ; $743c: $54
	ld   d, e                                        ; $743d: $53
	ld   b, e                                        ; $743e: $43
	ld   b, d                                        ; $743f: $42
	ld   b, c                                        ; $7440: $41
	ld   sp, $0102                                   ; $7441: $31 $02 $01
	nop                                              ; $7444: $00
	inc  bc                                          ; $7445: $03
	inc  bc                                          ; $7446: $03
	inc  bc                                          ; $7447: $03
	inc  bc                                          ; $7448: $03
	inc  bc                                          ; $7449: $03
	inc  bc                                          ; $744a: $03
	inc  bc                                          ; $744b: $03
	inc  bc                                          ; $744c: $03
	inc  bc                                          ; $744d: $03
	inc  bc                                          ; $744e: $03
	inc  bc                                          ; $744f: $03
	inc  bc                                          ; $7450: $03
	inc  bc                                          ; $7451: $03
	inc  bc                                          ; $7452: $03
	inc  bc                                          ; $7453: $03
	inc  hl                                          ; $7454: $23
	inc  hl                                          ; $7455: $23
	inc  hl                                          ; $7456: $23
	inc  hl                                          ; $7457: $23
	inc  hl                                          ; $7458: $23
	inc  bc                                          ; $7459: $03
	inc  bc                                          ; $745a: $03
	inc  bc                                          ; $745b: $03
	inc  bc                                          ; $745c: $03
	inc  bc                                          ; $745d: $03
	inc  bc                                          ; $745e: $03
	inc  bc                                          ; $745f: $03
	inc  bc                                          ; $7460: $03
	inc  bc                                          ; $7461: $03
	inc  bc                                          ; $7462: $03
	inc  bc                                          ; $7463: $03
	inc  bc                                          ; $7464: $03
	inc  bc                                          ; $7465: $03
	inc  bc                                          ; $7466: $03
	inc  bc                                          ; $7467: $03
	inc  hl                                          ; $7468: $23
	inc  hl                                          ; $7469: $23
	inc  hl                                          ; $746a: $23
	inc  hl                                          ; $746b: $23
	inc  hl                                          ; $746c: $23
	inc  bc                                          ; $746d: $03
	inc  bc                                          ; $746e: $03
	inc  bc                                          ; $746f: $03
	inc  bc                                          ; $7470: $03
	inc  bc                                          ; $7471: $03
	inc  b                                           ; $7472: $04
	inc  b                                           ; $7473: $04
	inc  b                                           ; $7474: $04
	inc  b                                           ; $7475: $04
	inc  b                                           ; $7476: $04
	inc  b                                           ; $7477: $04
	inc  b                                           ; $7478: $04
	inc  b                                           ; $7479: $04
	inc  b                                           ; $747a: $04
	inc  b                                           ; $747b: $04
	inc  hl                                          ; $747c: $23
	inc  hl                                          ; $747d: $23
	inc  hl                                          ; $747e: $23
	inc  hl                                          ; $747f: $23
	inc  hl                                          ; $7480: $23
	inc  bc                                          ; $7481: $03
	inc  bc                                          ; $7482: $03
	inc  bc                                          ; $7483: $03
	inc  bc                                          ; $7484: $03
	inc  bc                                          ; $7485: $03
	inc  b                                           ; $7486: $04
	inc  b                                           ; $7487: $04
	inc  b                                           ; $7488: $04
	inc  b                                           ; $7489: $04
	inc  b                                           ; $748a: $04
	inc  b                                           ; $748b: $04
	inc  b                                           ; $748c: $04
	inc  b                                           ; $748d: $04
	inc  b                                           ; $748e: $04
	inc  b                                           ; $748f: $04
	inc  hl                                          ; $7490: $23
	inc  hl                                          ; $7491: $23
	inc  hl                                          ; $7492: $23
	inc  hl                                          ; $7493: $23
	inc  hl                                          ; $7494: $23
	inc  bc                                          ; $7495: $03
	inc  bc                                          ; $7496: $03
	inc  bc                                          ; $7497: $03
	inc  bc                                          ; $7498: $03
	inc  bc                                          ; $7499: $03
	inc  b                                           ; $749a: $04
	inc  b                                           ; $749b: $04
	inc  b                                           ; $749c: $04
	inc  b                                           ; $749d: $04
	inc  b                                           ; $749e: $04
	inc  b                                           ; $749f: $04
	inc  b                                           ; $74a0: $04
	inc  b                                           ; $74a1: $04
	inc  b                                           ; $74a2: $04
	inc  b                                           ; $74a3: $04
	inc  hl                                          ; $74a4: $23
	inc  hl                                          ; $74a5: $23
	inc  hl                                          ; $74a6: $23
	inc  hl                                          ; $74a7: $23
	inc  hl                                          ; $74a8: $23
	inc  bc                                          ; $74a9: $03
	inc  bc                                          ; $74aa: $03
	inc  bc                                          ; $74ab: $03
	inc  bc                                          ; $74ac: $03
	inc  bc                                          ; $74ad: $03
	inc  b                                           ; $74ae: $04
	inc  b                                           ; $74af: $04
	inc  b                                           ; $74b0: $04
	inc  b                                           ; $74b1: $04
	inc  b                                           ; $74b2: $04
	inc  b                                           ; $74b3: $04
	inc  b                                           ; $74b4: $04
	inc  b                                           ; $74b5: $04
	inc  b                                           ; $74b6: $04
	inc  b                                           ; $74b7: $04
	inc  hl                                          ; $74b8: $23
	inc  hl                                          ; $74b9: $23
	inc  hl                                          ; $74ba: $23
	inc  hl                                          ; $74bb: $23
	inc  hl                                          ; $74bc: $23
	inc  bc                                          ; $74bd: $03
	inc  bc                                          ; $74be: $03
	inc  bc                                          ; $74bf: $03
	inc  bc                                          ; $74c0: $03
	inc  bc                                          ; $74c1: $03
	inc  b                                           ; $74c2: $04
	inc  b                                           ; $74c3: $04
	inc  b                                           ; $74c4: $04
	inc  b                                           ; $74c5: $04
	inc  b                                           ; $74c6: $04
	inc  b                                           ; $74c7: $04
	inc  b                                           ; $74c8: $04
	inc  b                                           ; $74c9: $04
	inc  b                                           ; $74ca: $04
	inc  b                                           ; $74cb: $04
	inc  hl                                          ; $74cc: $23
	inc  hl                                          ; $74cd: $23
	inc  hl                                          ; $74ce: $23
	inc  hl                                          ; $74cf: $23
	inc  hl                                          ; $74d0: $23
	dec  b                                           ; $74d1: $05
	dec  b                                           ; $74d2: $05
	dec  b                                           ; $74d3: $05
	dec  b                                           ; $74d4: $05
	dec  b                                           ; $74d5: $05
	dec  b                                           ; $74d6: $05
	dec  b                                           ; $74d7: $05
	dec  b                                           ; $74d8: $05
	dec  b                                           ; $74d9: $05
	dec  b                                           ; $74da: $05
	dec  b                                           ; $74db: $05
	dec  h                                           ; $74dc: $25
	dec  h                                           ; $74dd: $25
	dec  h                                           ; $74de: $25
	dec  h                                           ; $74df: $25
	dec  h                                           ; $74e0: $25
	dec  h                                           ; $74e1: $25
	dec  h                                           ; $74e2: $25
	dec  h                                           ; $74e3: $25
	dec  h                                           ; $74e4: $25
	dec  b                                           ; $74e5: $05
	dec  b                                           ; $74e6: $05
	dec  b                                           ; $74e7: $05
	dec  b                                           ; $74e8: $05
	dec  b                                           ; $74e9: $05
	dec  b                                           ; $74ea: $05
	dec  b                                           ; $74eb: $05
	dec  b                                           ; $74ec: $05
	dec  b                                           ; $74ed: $05
	dec  b                                           ; $74ee: $05
	dec  b                                           ; $74ef: $05
	dec  b                                           ; $74f0: $05
	dec  h                                           ; $74f1: $25
	dec  h                                           ; $74f2: $25
	dec  h                                           ; $74f3: $25
	dec  h                                           ; $74f4: $25
	dec  h                                           ; $74f5: $25
	dec  h                                           ; $74f6: $25
	dec  h                                           ; $74f7: $25
	dec  h                                           ; $74f8: $25
	dec  c                                           ; $74f9: $0d
	dec  c                                           ; $74fa: $0d
	dec  c                                           ; $74fb: $0d
	dec  b                                           ; $74fc: $05
	dec  b                                           ; $74fd: $05
	dec  b                                           ; $74fe: $05
	dec  b                                           ; $74ff: $05
	dec  b                                           ; $7500: $05
	dec  b                                           ; $7501: $05
	dec  b                                           ; $7502: $05
	dec  b                                           ; $7503: $05
	dec  h                                           ; $7504: $25
	dec  h                                           ; $7505: $25
	dec  h                                           ; $7506: $25
	dec  h                                           ; $7507: $25
	dec  h                                           ; $7508: $25
	dec  h                                           ; $7509: $25
	dec  l                                           ; $750a: $2d
	dec  l                                           ; $750b: $2d
	dec  l                                           ; $750c: $2d
	nop                                              ; $750d: $00
	ld   bc, $0302                                   ; $750e: $01 $02 $03
	inc  b                                           ; $7511: $04
	dec  b                                           ; $7512: $05
	ld   b, $07                                      ; $7513: $06 $07
	ld   [$0a09], sp                                 ; $7515: $08 $09 $0a
	dec  bc                                          ; $7518: $0b
	dec  bc                                          ; $7519: $0b
	dec  bc                                          ; $751a: $0b
	dec  bc                                          ; $751b: $0b
	rrca                                             ; $751c: $0f
	jr   nz, jr_081_7540                             ; $751d: $20 $21

	ld   [hl+], a                                    ; $751f: $22
	inc  hl                                          ; $7520: $23
	db   $10                                         ; $7521: $10
	ld   de, $2112                                   ; $7522: $11 $12 $21
	inc  d                                           ; $7525: $14
	dec  d                                           ; $7526: $15
	ld   d, $17                                      ; $7527: $16 $17
	jr   @+$1b                                       ; $7529: $18 $19

	ld   a, [de]                                     ; $752b: $1a
	dec  de                                          ; $752c: $1b
	inc  e                                           ; $752d: $1c
	dec  de                                          ; $752e: $1b
	dec  de                                          ; $752f: $1b
	rra                                              ; $7530: $1f
	jr   nc, jr_081_7564                             ; $7531: $30 $31

	ld   [hl-], a                                    ; $7533: $32
	inc  sp                                          ; $7534: $33
	db   $10                                         ; $7535: $10
	ld   hl, $2122                                   ; $7536: $21 $22 $21
	inc  h                                           ; $7539: $24
	dec  d                                           ; $753a: $15
	ld   h, $27                                      ; $753b: $26 $27
	jr   z, jr_081_7568                              ; $753d: $28 $29

	ld   a, [hl+]                                    ; $753f: $2a

jr_081_7540:
	dec  de                                          ; $7540: $1b
	inc  l                                           ; $7541: $2c
	dec  de                                          ; $7542: $1b
	ld   l, $2f                                      ; $7543: $2e $2f
	inc  h                                           ; $7545: $24
	dec  h                                           ; $7546: $25
	ld   h, $27                                      ; $7547: $26 $27
	db   $10                                         ; $7549: $10
	ld   sp, $3332                                   ; $754a: $31 $32 $33
	inc  [hl]                                        ; $754d: $34
	dec  d                                           ; $754e: $15
	ld   [hl], $37                                   ; $754f: $36 $37
	jr   c, jr_081_758c                              ; $7551: $38 $39

	ld   a, [hl-]                                    ; $7553: $3a
	dec  sp                                          ; $7554: $3b
	inc  a                                           ; $7555: $3c
	dec  a                                           ; $7556: $3d
	ld   a, $3f                                      ; $7557: $3e $3f
	inc  [hl]                                        ; $7559: $34
	dec  [hl]                                        ; $755a: $35
	ld   [hl], $37                                   ; $755b: $36 $37
	ld   b, b                                        ; $755d: $40
	ld   b, c                                        ; $755e: $41
	ld   b, d                                        ; $755f: $42
	ld   b, e                                        ; $7560: $43
	ld   b, h                                        ; $7561: $44
	ld   b, l                                        ; $7562: $45
	ld   b, [hl]                                     ; $7563: $46

jr_081_7564:
	scf                                              ; $7564: $37
	ld   c, b                                        ; $7565: $48
	ld   c, c                                        ; $7566: $49
	ld   c, d                                        ; $7567: $4a

jr_081_7568:
	ld   c, e                                        ; $7568: $4b
	ld   c, h                                        ; $7569: $4c
	ld   c, l                                        ; $756a: $4d
	ld   c, [hl]                                     ; $756b: $4e
	ld   c, a                                        ; $756c: $4f
	jr   z, jr_081_75e0                              ; $756d: $28 $71

	ld   [hl], $37                                   ; $756f: $36 $37
	ld   d, b                                        ; $7571: $50
	ld   d, c                                        ; $7572: $51
	ld   b, d                                        ; $7573: $42
	ld   d, e                                        ; $7574: $53
	ld   d, h                                        ; $7575: $54
	ld   d, l                                        ; $7576: $55
	ld   b, [hl]                                     ; $7577: $46
	scf                                              ; $7578: $37
	ld   e, b                                        ; $7579: $58
	ld   e, c                                        ; $757a: $59
	ld   e, d                                        ; $757b: $5a
	ld   e, e                                        ; $757c: $5b
	ld   e, h                                        ; $757d: $5c
	ld   e, l                                        ; $757e: $5d
	ld   e, [hl]                                     ; $757f: $5e
	ld   e, a                                        ; $7580: $5f
	ld   [hl], b                                     ; $7581: $70
	ld   [hl], c                                     ; $7582: $71
	ld   d, a                                        ; $7583: $57
	ld   d, [hl]                                     ; $7584: $56
	ld   h, b                                        ; $7585: $60
	ld   h, c                                        ; $7586: $61
	ld   h, d                                        ; $7587: $62
	ld   h, e                                        ; $7588: $63
	ld   h, h                                        ; $7589: $64
	ld   h, l                                        ; $758a: $65
	ld   h, [hl]                                     ; $758b: $66

jr_081_758c:
	ld   h, a                                        ; $758c: $67
	ld   l, b                                        ; $758d: $68
	ld   l, c                                        ; $758e: $69
	ld   l, d                                        ; $758f: $6a
	ld   l, e                                        ; $7590: $6b
	ld   l, h                                        ; $7591: $6c
	ld   l, l                                        ; $7592: $6d
	ld   l, [hl]                                     ; $7593: $6e
	ld   l, a                                        ; $7594: $6f
	ld   d, d                                        ; $7595: $52
	ld   [hl], c                                     ; $7596: $71
	ld   b, a                                        ; $7597: $47
	jr   nc, jr_081_75fa                             ; $7598: $30 $60

	dec  de                                          ; $759a: $1b
	ld   [hl], d                                     ; $759b: $72
	ld   [hl], e                                     ; $759c: $73
	ld   [hl], h                                     ; $759d: $74
	ld   [hl], l                                     ; $759e: $75
	halt                                             ; $759f: $76
	ld   [hl], a                                     ; $75a0: $77
	ld   a, b                                        ; $75a1: $78
	ld   a, c                                        ; $75a2: $79
	ld   a, d                                        ; $75a3: $7a
	ld   a, e                                        ; $75a4: $7b
	ld   a, h                                        ; $75a5: $7c
	ld   a, l                                        ; $75a6: $7d
	ld   a, [hl]                                     ; $75a7: $7e
	ld   a, a                                        ; $75a8: $7f
	ld   d, d                                        ; $75a9: $52
	ld   [hl], c                                     ; $75aa: $71
	dec  l                                           ; $75ab: $2d
	dec  hl                                          ; $75ac: $2b
	nop                                              ; $75ad: $00
	ld   bc, $0302                                   ; $75ae: $01 $02 $03
	inc  b                                           ; $75b1: $04
	dec  b                                           ; $75b2: $05
	ld   b, $07                                      ; $75b3: $06 $07
	ld   [$0a09], sp                                 ; $75b5: $08 $09 $0a
	dec  bc                                          ; $75b8: $0b
	inc  c                                           ; $75b9: $0c
	dec  c                                           ; $75ba: $0d
	ld   c, $0f                                      ; $75bb: $0e $0f
	inc  hl                                          ; $75bd: $23
	jr   nz, jr_081_75de                             ; $75be: $20 $1e

	dec  e                                           ; $75c0: $1d
	db   $10                                         ; $75c1: $10
	ld   de, $1312                                   ; $75c2: $11 $12 $13
	inc  d                                           ; $75c5: $14
	dec  d                                           ; $75c6: $15
	ld   d, $17                                      ; $75c7: $16 $17
	jr   jr_081_75e4                                 ; $75c9: $18 $19

	ld   a, [de]                                     ; $75cb: $1a
	dec  de                                          ; $75cc: $1b
	inc  e                                           ; $75cd: $1c
	dec  e                                           ; $75ce: $1d
	ld   e, $1f                                      ; $75cf: $1e $1f
	inc  de                                          ; $75d1: $13
	ld   c, $0d                                      ; $75d2: $0e $0d
	inc  c                                           ; $75d4: $0c
	inc  bc                                          ; $75d5: $03
	inc  bc                                          ; $75d6: $03
	inc  bc                                          ; $75d7: $03
	inc  bc                                          ; $75d8: $03
	inc  bc                                          ; $75d9: $03
	inc  bc                                          ; $75da: $03
	inc  bc                                          ; $75db: $03
	inc  bc                                          ; $75dc: $03
	inc  bc                                          ; $75dd: $03

jr_081_75de:
	inc  bc                                          ; $75de: $03
	inc  bc                                          ; $75df: $03

jr_081_75e0:
	inc  bc                                          ; $75e0: $03
	inc  bc                                          ; $75e1: $03
	inc  bc                                          ; $75e2: $03
	inc  bc                                          ; $75e3: $03

jr_081_75e4:
	inc  bc                                          ; $75e4: $03
	dec  bc                                          ; $75e5: $0b
	inc  c                                           ; $75e6: $0c
	inc  c                                           ; $75e7: $0c
	inc  c                                           ; $75e8: $0c
	inc  bc                                          ; $75e9: $03
	inc  bc                                          ; $75ea: $03
	inc  bc                                          ; $75eb: $03
	inc  bc                                          ; $75ec: $03
	inc  bc                                          ; $75ed: $03
	inc  bc                                          ; $75ee: $03
	inc  bc                                          ; $75ef: $03
	inc  bc                                          ; $75f0: $03
	inc  bc                                          ; $75f1: $03
	inc  bc                                          ; $75f2: $03
	inc  bc                                          ; $75f3: $03
	inc  bc                                          ; $75f4: $03
	inc  bc                                          ; $75f5: $03
	inc  bc                                          ; $75f6: $03
	inc  bc                                          ; $75f7: $03
	inc  bc                                          ; $75f8: $03
	dec  bc                                          ; $75f9: $0b

jr_081_75fa:
	inc  c                                           ; $75fa: $0c
	inc  c                                           ; $75fb: $0c
	inc  c                                           ; $75fc: $0c
	inc  bc                                          ; $75fd: $03
	inc  bc                                          ; $75fe: $03
	inc  bc                                          ; $75ff: $03
	inc  bc                                          ; $7600: $03
	inc  bc                                          ; $7601: $03
	inc  bc                                          ; $7602: $03
	inc  bc                                          ; $7603: $03
	inc  bc                                          ; $7604: $03
	inc  bc                                          ; $7605: $03
	inc  bc                                          ; $7606: $03
	inc  bc                                          ; $7607: $03
	inc  bc                                          ; $7608: $03
	inc  bc                                          ; $7609: $03
	inc  bc                                          ; $760a: $03
	inc  bc                                          ; $760b: $03
	inc  bc                                          ; $760c: $03
	dec  bc                                          ; $760d: $0b
	inc  c                                           ; $760e: $0c
	inc  c                                           ; $760f: $0c
	inc  c                                           ; $7610: $0c
	inc  bc                                          ; $7611: $03
	inc  bc                                          ; $7612: $03
	inc  bc                                          ; $7613: $03
	inc  bc                                          ; $7614: $03
	inc  bc                                          ; $7615: $03
	inc  bc                                          ; $7616: $03
	inc  bc                                          ; $7617: $03
	inc  bc                                          ; $7618: $03
	inc  b                                           ; $7619: $04
	dec  b                                           ; $761a: $05
	dec  b                                           ; $761b: $05
	dec  b                                           ; $761c: $05
	dec  b                                           ; $761d: $05
	dec  b                                           ; $761e: $05
	inc  bc                                          ; $761f: $03
	inc  bc                                          ; $7620: $03
	inc  c                                           ; $7621: $0c
	inc  c                                           ; $7622: $0c
	inc  c                                           ; $7623: $0c
	inc  c                                           ; $7624: $0c
	inc  bc                                          ; $7625: $03
	inc  bc                                          ; $7626: $03
	inc  bc                                          ; $7627: $03
	inc  bc                                          ; $7628: $03
	inc  bc                                          ; $7629: $03
	inc  bc                                          ; $762a: $03
	inc  bc                                          ; $762b: $03
	inc  bc                                          ; $762c: $03
	inc  b                                           ; $762d: $04
	dec  b                                           ; $762e: $05
	dec  b                                           ; $762f: $05
	dec  b                                           ; $7630: $05
	dec  b                                           ; $7631: $05
	dec  b                                           ; $7632: $05
	inc  bc                                          ; $7633: $03
	inc  bc                                          ; $7634: $03
	inc  c                                           ; $7635: $0c
	inc  b                                           ; $7636: $04
	inc  c                                           ; $7637: $0c
	inc  c                                           ; $7638: $0c
	inc  bc                                          ; $7639: $03
	inc  bc                                          ; $763a: $03
	inc  bc                                          ; $763b: $03
	inc  bc                                          ; $763c: $03
	inc  bc                                          ; $763d: $03
	inc  bc                                          ; $763e: $03
	inc  bc                                          ; $763f: $03
	inc  bc                                          ; $7640: $03
	inc  b                                           ; $7641: $04
	dec  b                                           ; $7642: $05
	dec  b                                           ; $7643: $05
	dec  b                                           ; $7644: $05
	dec  b                                           ; $7645: $05
	inc  bc                                          ; $7646: $03
	inc  bc                                          ; $7647: $03
	inc  bc                                          ; $7648: $03
	inc  b                                           ; $7649: $04
	inc  b                                           ; $764a: $04
	inc  b                                           ; $764b: $04
	inc  b                                           ; $764c: $04
	inc  bc                                          ; $764d: $03
	inc  bc                                          ; $764e: $03
	inc  bc                                          ; $764f: $03
	inc  bc                                          ; $7650: $03
	inc  bc                                          ; $7651: $03
	inc  bc                                          ; $7652: $03
	inc  bc                                          ; $7653: $03
	dec  b                                           ; $7654: $05
	dec  b                                           ; $7655: $05
	dec  b                                           ; $7656: $05
	dec  b                                           ; $7657: $05
	dec  b                                           ; $7658: $05
	dec  b                                           ; $7659: $05
	inc  bc                                          ; $765a: $03
	inc  bc                                          ; $765b: $03
	inc  bc                                          ; $765c: $03
	inc  b                                           ; $765d: $04
	inc  b                                           ; $765e: $04
	inc  b                                           ; $765f: $04
	inc  b                                           ; $7660: $04
	inc  b                                           ; $7661: $04
	inc  b                                           ; $7662: $04
	inc  b                                           ; $7663: $04
	inc  b                                           ; $7664: $04
	inc  b                                           ; $7665: $04
	inc  b                                           ; $7666: $04
	dec  b                                           ; $7667: $05
	dec  b                                           ; $7668: $05
	dec  b                                           ; $7669: $05
	dec  b                                           ; $766a: $05
	dec  b                                           ; $766b: $05
	dec  b                                           ; $766c: $05
	inc  bc                                          ; $766d: $03
	inc  bc                                          ; $766e: $03
	inc  bc                                          ; $766f: $03
	inc  bc                                          ; $7670: $03
	inc  b                                           ; $7671: $04
	inc  b                                           ; $7672: $04
	inc  b                                           ; $7673: $04
	inc  b                                           ; $7674: $04
	inc  c                                           ; $7675: $0c
	inc  c                                           ; $7676: $0c
	inc  c                                           ; $7677: $0c
	inc  c                                           ; $7678: $0c
	inc  c                                           ; $7679: $0c
	inc  c                                           ; $767a: $0c
	inc  c                                           ; $767b: $0c
	inc  c                                           ; $767c: $0c
	inc  c                                           ; $767d: $0c
	inc  c                                           ; $767e: $0c
	inc  c                                           ; $767f: $0c
	inc  c                                           ; $7680: $0c
	inc  c                                           ; $7681: $0c
	inc  c                                           ; $7682: $0c
	inc  c                                           ; $7683: $0c
	inc  c                                           ; $7684: $0c
	inc  b                                           ; $7685: $04
	inc  b                                           ; $7686: $04
	inc  b                                           ; $7687: $04
	inc  b                                           ; $7688: $04
	inc  c                                           ; $7689: $0c
	inc  c                                           ; $768a: $0c
	inc  c                                           ; $768b: $0c
	inc  c                                           ; $768c: $0c
	inc  c                                           ; $768d: $0c
	inc  c                                           ; $768e: $0c
	inc  c                                           ; $768f: $0c
	inc  c                                           ; $7690: $0c
	inc  c                                           ; $7691: $0c
	inc  c                                           ; $7692: $0c
	inc  c                                           ; $7693: $0c
	inc  c                                           ; $7694: $0c
	inc  c                                           ; $7695: $0c
	inc  c                                           ; $7696: $0c
	inc  c                                           ; $7697: $0c
	inc  c                                           ; $7698: $0c
	inc  b                                           ; $7699: $04
	inc  b                                           ; $769a: $04
	inc  b                                           ; $769b: $04
	inc  b                                           ; $769c: $04
	nop                                              ; $769d: $00
	ld   bc, $0302                                   ; $769e: $01 $02 $03
	inc  b                                           ; $76a1: $04
	dec  b                                           ; $76a2: $05
	ld   b, $07                                      ; $76a3: $06 $07
	ld   [$0a09], sp                                 ; $76a5: $08 $09 $0a
	dec  bc                                          ; $76a8: $0b
	dec  bc                                          ; $76a9: $0b
	dec  bc                                          ; $76aa: $0b
	dec  bc                                          ; $76ab: $0b
	rrca                                             ; $76ac: $0f
	jr   nz, jr_081_76d0                             ; $76ad: $20 $21

	ld   [hl+], a                                    ; $76af: $22
	inc  hl                                          ; $76b0: $23
	db   $10                                         ; $76b1: $10
	ld   de, $2112                                   ; $76b2: $11 $12 $21
	inc  d                                           ; $76b5: $14
	dec  d                                           ; $76b6: $15
	ld   d, $17                                      ; $76b7: $16 $17
	jr   @+$1b                                       ; $76b9: $18 $19

	ld   a, [de]                                     ; $76bb: $1a
	dec  de                                          ; $76bc: $1b
	inc  e                                           ; $76bd: $1c
	dec  de                                          ; $76be: $1b
	dec  de                                          ; $76bf: $1b
	rra                                              ; $76c0: $1f
	jr   nc, jr_081_76f4                             ; $76c1: $30 $31

	ld   [hl-], a                                    ; $76c3: $32
	inc  sp                                          ; $76c4: $33
	db   $10                                         ; $76c5: $10
	ld   hl, $2122                                   ; $76c6: $21 $22 $21
	inc  h                                           ; $76c9: $24
	dec  d                                           ; $76ca: $15
	ld   h, $27                                      ; $76cb: $26 $27
	jr   z, jr_081_76f8                              ; $76cd: $28 $29

	ld   a, [hl+]                                    ; $76cf: $2a

jr_081_76d0:
	dec  de                                          ; $76d0: $1b
	inc  l                                           ; $76d1: $2c
	dec  de                                          ; $76d2: $1b
	ld   l, $2f                                      ; $76d3: $2e $2f
	inc  h                                           ; $76d5: $24
	add  hl, hl                                      ; $76d6: $29
	ld   a, [hl+]                                    ; $76d7: $2a
	daa                                              ; $76d8: $27
	db   $10                                         ; $76d9: $10
	ld   sp, $3332                                   ; $76da: $31 $32 $33
	inc  [hl]                                        ; $76dd: $34
	dec  d                                           ; $76de: $15
	ld   [hl], $37                                   ; $76df: $36 $37
	jr   c, jr_081_771c                              ; $76e1: $38 $39

	ld   a, [hl-]                                    ; $76e3: $3a
	dec  sp                                          ; $76e4: $3b
	inc  a                                           ; $76e5: $3c
	dec  a                                           ; $76e6: $3d
	ld   a, $3f                                      ; $76e7: $3e $3f
	inc  [hl]                                        ; $76e9: $34
	dec  hl                                          ; $76ea: $2b
	inc  l                                           ; $76eb: $2c
	scf                                              ; $76ec: $37
	ld   b, b                                        ; $76ed: $40
	ld   b, c                                        ; $76ee: $41
	ld   b, d                                        ; $76ef: $42
	ld   b, e                                        ; $76f0: $43
	ld   b, h                                        ; $76f1: $44
	ld   b, l                                        ; $76f2: $45
	ld   b, [hl]                                     ; $76f3: $46

jr_081_76f4:
	scf                                              ; $76f4: $37
	ld   c, b                                        ; $76f5: $48
	ld   c, c                                        ; $76f6: $49
	ld   c, d                                        ; $76f7: $4a

jr_081_76f8:
	ld   c, e                                        ; $76f8: $4b
	ld   c, h                                        ; $76f9: $4c
	ld   c, l                                        ; $76fa: $4d
	ld   c, [hl]                                     ; $76fb: $4e
	ld   c, a                                        ; $76fc: $4f
	jr   z, jr_081_772c                              ; $76fd: $28 $2d

	ld   l, $37                                      ; $76ff: $2e $37
	ld   d, b                                        ; $7701: $50
	ld   d, c                                        ; $7702: $51
	ld   b, d                                        ; $7703: $42
	ld   d, e                                        ; $7704: $53
	ld   d, h                                        ; $7705: $54
	ld   d, l                                        ; $7706: $55
	ld   b, [hl]                                     ; $7707: $46
	scf                                              ; $7708: $37
	ld   e, b                                        ; $7709: $58
	ld   e, c                                        ; $770a: $59
	ld   e, d                                        ; $770b: $5a
	ld   e, e                                        ; $770c: $5b
	ld   e, h                                        ; $770d: $5c
	ld   e, l                                        ; $770e: $5d
	ld   e, [hl]                                     ; $770f: $5e
	ld   e, a                                        ; $7710: $5f
	ld   [hl], b                                     ; $7711: $70
	dec  l                                           ; $7712: $2d
	cpl                                              ; $7713: $2f
	ld   d, [hl]                                     ; $7714: $56
	ld   h, b                                        ; $7715: $60
	ld   h, c                                        ; $7716: $61
	ld   h, d                                        ; $7717: $62
	ld   h, e                                        ; $7718: $63
	ld   h, h                                        ; $7719: $64
	ld   h, l                                        ; $771a: $65
	ld   h, [hl]                                     ; $771b: $66

jr_081_771c:
	ld   h, a                                        ; $771c: $67
	ld   l, b                                        ; $771d: $68
	ld   l, c                                        ; $771e: $69
	ld   l, d                                        ; $771f: $6a
	ld   l, e                                        ; $7720: $6b
	ld   l, h                                        ; $7721: $6c
	ld   l, l                                        ; $7722: $6d
	ld   l, [hl]                                     ; $7723: $6e
	ld   l, a                                        ; $7724: $6f
	ld   d, d                                        ; $7725: $52
	dec  l                                           ; $7726: $2d
	jr   c, jr_081_7759                              ; $7727: $38 $30

	ld   h, b                                        ; $7729: $60
	dec  de                                          ; $772a: $1b
	ld   [hl], d                                     ; $772b: $72

jr_081_772c:
	ld   [hl], e                                     ; $772c: $73
	ld   [hl], h                                     ; $772d: $74
	ld   [hl], l                                     ; $772e: $75
	halt                                             ; $772f: $76
	ld   [hl], a                                     ; $7730: $77
	ld   a, b                                        ; $7731: $78
	ld   a, c                                        ; $7732: $79
	ld   a, d                                        ; $7733: $7a
	ld   a, e                                        ; $7734: $7b
	ld   a, h                                        ; $7735: $7c
	ld   a, l                                        ; $7736: $7d
	ld   a, [hl]                                     ; $7737: $7e
	ld   a, a                                        ; $7738: $7f
	ld   d, d                                        ; $7739: $52
	add  hl, sp                                      ; $773a: $39
	ld   a, [hl-]                                    ; $773b: $3a
	dec  hl                                          ; $773c: $2b
	nop                                              ; $773d: $00
	ld   bc, $0302                                   ; $773e: $01 $02 $03
	inc  b                                           ; $7741: $04
	dec  b                                           ; $7742: $05
	ld   b, $07                                      ; $7743: $06 $07
	ld   [$0a09], sp                                 ; $7745: $08 $09 $0a
	dec  bc                                          ; $7748: $0b
	inc  c                                           ; $7749: $0c
	dec  c                                           ; $774a: $0d
	ld   c, $0f                                      ; $774b: $0e $0f
	inc  hl                                          ; $774d: $23
	dec  [hl]                                        ; $774e: $35
	dec  h                                           ; $774f: $25
	dec  e                                           ; $7750: $1d
	db   $10                                         ; $7751: $10
	ld   de, $1312                                   ; $7752: $11 $12 $13
	inc  d                                           ; $7755: $14
	dec  d                                           ; $7756: $15
	ld   d, $17                                      ; $7757: $16 $17

jr_081_7759:
	jr   jr_081_7774                                 ; $7759: $18 $19

	ld   a, [de]                                     ; $775b: $1a
	dec  de                                          ; $775c: $1b
	inc  e                                           ; $775d: $1c
	dec  e                                           ; $775e: $1d
	ld   e, $1f                                      ; $775f: $1e $1f
	inc  de                                          ; $7761: $13
	ld   c, $0d                                      ; $7762: $0e $0d
	inc  c                                           ; $7764: $0c
	inc  bc                                          ; $7765: $03
	inc  bc                                          ; $7766: $03
	inc  bc                                          ; $7767: $03
	inc  bc                                          ; $7768: $03
	inc  bc                                          ; $7769: $03
	inc  bc                                          ; $776a: $03
	inc  bc                                          ; $776b: $03
	inc  bc                                          ; $776c: $03
	inc  bc                                          ; $776d: $03
	inc  bc                                          ; $776e: $03
	inc  bc                                          ; $776f: $03
	inc  bc                                          ; $7770: $03
	inc  bc                                          ; $7771: $03
	inc  bc                                          ; $7772: $03
	inc  bc                                          ; $7773: $03

jr_081_7774:
	inc  bc                                          ; $7774: $03
	dec  bc                                          ; $7775: $0b
	inc  c                                           ; $7776: $0c
	inc  c                                           ; $7777: $0c
	inc  c                                           ; $7778: $0c
	inc  bc                                          ; $7779: $03
	inc  bc                                          ; $777a: $03
	inc  bc                                          ; $777b: $03
	inc  bc                                          ; $777c: $03
	inc  bc                                          ; $777d: $03
	inc  bc                                          ; $777e: $03
	inc  bc                                          ; $777f: $03
	inc  bc                                          ; $7780: $03
	inc  bc                                          ; $7781: $03
	inc  bc                                          ; $7782: $03
	inc  bc                                          ; $7783: $03
	inc  bc                                          ; $7784: $03
	inc  bc                                          ; $7785: $03
	inc  bc                                          ; $7786: $03
	inc  bc                                          ; $7787: $03
	inc  bc                                          ; $7788: $03
	dec  bc                                          ; $7789: $0b
	inc  c                                           ; $778a: $0c
	inc  c                                           ; $778b: $0c
	inc  c                                           ; $778c: $0c
	inc  bc                                          ; $778d: $03
	inc  bc                                          ; $778e: $03
	inc  bc                                          ; $778f: $03
	inc  bc                                          ; $7790: $03
	inc  bc                                          ; $7791: $03
	inc  bc                                          ; $7792: $03
	inc  bc                                          ; $7793: $03
	inc  bc                                          ; $7794: $03
	inc  bc                                          ; $7795: $03
	inc  bc                                          ; $7796: $03
	inc  bc                                          ; $7797: $03
	inc  bc                                          ; $7798: $03
	inc  bc                                          ; $7799: $03
	inc  bc                                          ; $779a: $03
	inc  bc                                          ; $779b: $03
	inc  bc                                          ; $779c: $03
	dec  bc                                          ; $779d: $0b
	inc  c                                           ; $779e: $0c
	inc  c                                           ; $779f: $0c
	inc  c                                           ; $77a0: $0c
	inc  bc                                          ; $77a1: $03
	inc  bc                                          ; $77a2: $03
	inc  bc                                          ; $77a3: $03
	inc  bc                                          ; $77a4: $03
	inc  bc                                          ; $77a5: $03
	inc  bc                                          ; $77a6: $03
	inc  bc                                          ; $77a7: $03
	inc  bc                                          ; $77a8: $03
	inc  b                                           ; $77a9: $04
	dec  b                                           ; $77aa: $05
	dec  b                                           ; $77ab: $05
	dec  b                                           ; $77ac: $05
	dec  b                                           ; $77ad: $05
	dec  b                                           ; $77ae: $05
	inc  bc                                          ; $77af: $03
	inc  bc                                          ; $77b0: $03
	inc  c                                           ; $77b1: $0c
	inc  c                                           ; $77b2: $0c
	inc  c                                           ; $77b3: $0c
	inc  c                                           ; $77b4: $0c
	inc  bc                                          ; $77b5: $03
	inc  bc                                          ; $77b6: $03
	inc  bc                                          ; $77b7: $03
	inc  bc                                          ; $77b8: $03
	inc  bc                                          ; $77b9: $03
	inc  bc                                          ; $77ba: $03
	inc  bc                                          ; $77bb: $03
	inc  bc                                          ; $77bc: $03
	inc  b                                           ; $77bd: $04
	dec  b                                           ; $77be: $05
	dec  b                                           ; $77bf: $05
	dec  b                                           ; $77c0: $05
	dec  b                                           ; $77c1: $05
	dec  b                                           ; $77c2: $05
	inc  bc                                          ; $77c3: $03
	inc  bc                                          ; $77c4: $03
	inc  c                                           ; $77c5: $0c
	inc  c                                           ; $77c6: $0c
	inc  c                                           ; $77c7: $0c
	inc  c                                           ; $77c8: $0c
	inc  bc                                          ; $77c9: $03
	inc  bc                                          ; $77ca: $03
	inc  bc                                          ; $77cb: $03
	inc  bc                                          ; $77cc: $03
	inc  bc                                          ; $77cd: $03
	inc  bc                                          ; $77ce: $03
	inc  bc                                          ; $77cf: $03
	inc  bc                                          ; $77d0: $03
	inc  b                                           ; $77d1: $04
	dec  b                                           ; $77d2: $05
	dec  b                                           ; $77d3: $05
	dec  b                                           ; $77d4: $05
	dec  b                                           ; $77d5: $05
	inc  bc                                          ; $77d6: $03
	inc  bc                                          ; $77d7: $03
	inc  bc                                          ; $77d8: $03
	inc  b                                           ; $77d9: $04
	inc  c                                           ; $77da: $0c
	inc  c                                           ; $77db: $0c
	inc  b                                           ; $77dc: $04
	inc  bc                                          ; $77dd: $03
	inc  bc                                          ; $77de: $03
	inc  bc                                          ; $77df: $03
	inc  bc                                          ; $77e0: $03
	inc  bc                                          ; $77e1: $03
	inc  bc                                          ; $77e2: $03
	inc  bc                                          ; $77e3: $03
	dec  b                                           ; $77e4: $05
	dec  b                                           ; $77e5: $05
	dec  b                                           ; $77e6: $05
	dec  b                                           ; $77e7: $05
	dec  b                                           ; $77e8: $05
	dec  b                                           ; $77e9: $05
	inc  bc                                          ; $77ea: $03
	inc  bc                                          ; $77eb: $03
	inc  bc                                          ; $77ec: $03
	inc  b                                           ; $77ed: $04
	inc  c                                           ; $77ee: $0c
	inc  c                                           ; $77ef: $0c
	inc  b                                           ; $77f0: $04
	inc  b                                           ; $77f1: $04
	inc  b                                           ; $77f2: $04
	inc  b                                           ; $77f3: $04
	inc  b                                           ; $77f4: $04
	inc  b                                           ; $77f5: $04
	inc  b                                           ; $77f6: $04
	dec  b                                           ; $77f7: $05
	dec  b                                           ; $77f8: $05
	dec  b                                           ; $77f9: $05
	dec  b                                           ; $77fa: $05
	dec  b                                           ; $77fb: $05
	dec  b                                           ; $77fc: $05
	inc  bc                                          ; $77fd: $03
	inc  bc                                          ; $77fe: $03
	inc  bc                                          ; $77ff: $03
	inc  bc                                          ; $7800: $03
	inc  b                                           ; $7801: $04
	inc  c                                           ; $7802: $0c
	inc  c                                           ; $7803: $0c
	inc  b                                           ; $7804: $04
	inc  c                                           ; $7805: $0c
	inc  c                                           ; $7806: $0c
	inc  c                                           ; $7807: $0c
	inc  c                                           ; $7808: $0c
	inc  c                                           ; $7809: $0c
	inc  c                                           ; $780a: $0c
	inc  c                                           ; $780b: $0c
	inc  c                                           ; $780c: $0c
	inc  c                                           ; $780d: $0c
	inc  c                                           ; $780e: $0c
	inc  c                                           ; $780f: $0c
	inc  c                                           ; $7810: $0c
	inc  c                                           ; $7811: $0c
	inc  c                                           ; $7812: $0c
	inc  c                                           ; $7813: $0c
	inc  c                                           ; $7814: $0c
	inc  b                                           ; $7815: $04
	inc  b                                           ; $7816: $04
	inc  b                                           ; $7817: $04
	inc  b                                           ; $7818: $04
	inc  c                                           ; $7819: $0c
	inc  c                                           ; $781a: $0c
	inc  c                                           ; $781b: $0c
	inc  c                                           ; $781c: $0c
	inc  c                                           ; $781d: $0c
	inc  c                                           ; $781e: $0c
	inc  c                                           ; $781f: $0c
	inc  c                                           ; $7820: $0c
	inc  c                                           ; $7821: $0c
	inc  c                                           ; $7822: $0c
	inc  c                                           ; $7823: $0c
	inc  c                                           ; $7824: $0c
	inc  c                                           ; $7825: $0c
	inc  c                                           ; $7826: $0c
	inc  c                                           ; $7827: $0c
	inc  c                                           ; $7828: $0c
	inc  b                                           ; $7829: $04
	inc  b                                           ; $782a: $04
	inc  b                                           ; $782b: $04
	inc  b                                           ; $782c: $04
	nop                                              ; $782d: $00
	ld   bc, $0302                                   ; $782e: $01 $02 $03
	inc  b                                           ; $7831: $04
	inc  b                                           ; $7832: $04
	inc  b                                           ; $7833: $04
	inc  b                                           ; $7834: $04
	inc  b                                           ; $7835: $04
	inc  b                                           ; $7836: $04
	ld   a, [bc]                                     ; $7837: $0a
	dec  bc                                          ; $7838: $0b
	inc  c                                           ; $7839: $0c
	dec  c                                           ; $783a: $0d
	ld   c, $0f                                      ; $783b: $0e $0f
	jr   nz, jr_081_7860                             ; $783d: $20 $21

	ld   [hl+], a                                    ; $783f: $22
	inc  hl                                          ; $7840: $23
	db   $10                                         ; $7841: $10
	ld   de, $1312                                   ; $7842: $11 $12 $13
	inc  d                                           ; $7845: $14
	dec  d                                           ; $7846: $15
	ld   d, $17                                      ; $7847: $16 $17
	jr   @+$1b                                       ; $7849: $18 $19

	ld   a, [de]                                     ; $784b: $1a
	dec  de                                          ; $784c: $1b
	inc  e                                           ; $784d: $1c
	dec  e                                           ; $784e: $1d
	ld   e, $1f                                      ; $784f: $1e $1f
	inc  h                                           ; $7851: $24
	dec  h                                           ; $7852: $25
	ld   h, $27                                      ; $7853: $26 $27
	jr   nz, @+$23                                   ; $7855: $20 $21

	ld   [hl+], a                                    ; $7857: $22
	inc  hl                                          ; $7858: $23
	inc  h                                           ; $7859: $24
	dec  h                                           ; $785a: $25
	ld   h, $27                                      ; $785b: $26 $27
	jr   z, jr_081_7888                              ; $785d: $28 $29

	ld   a, [hl+]                                    ; $785f: $2a

jr_081_7860:
	dec  hl                                          ; $7860: $2b
	inc  l                                           ; $7861: $2c
	dec  l                                           ; $7862: $2d
	ld   l, $2f                                      ; $7863: $2e $2f
	ld   c, $0f                                      ; $7865: $0e $0f
	ld   h, $27                                      ; $7867: $26 $27
	jr   nc, jr_081_789c                             ; $7869: $30 $31

	ld   [hl-], a                                    ; $786b: $32
	inc  sp                                          ; $786c: $33
	inc  [hl]                                        ; $786d: $34
	dec  [hl]                                        ; $786e: $35
	ld   [hl], $27                                   ; $786f: $36 $27
	jr   z, jr_081_789c                              ; $7871: $28 $29

	ld   a, [hl+]                                    ; $7873: $2a
	dec  sp                                          ; $7874: $3b
	inc  a                                           ; $7875: $3c
	dec  a                                           ; $7876: $3d
	ld   a, $3f                                      ; $7877: $3e $3f
	ld   e, $1f                                      ; $7879: $1e $1f
	ld   h, $27                                      ; $787b: $26 $27
	ld   b, b                                        ; $787d: $40
	ld   b, c                                        ; $787e: $41
	ld   b, d                                        ; $787f: $42
	ld   b, e                                        ; $7880: $43
	ld   b, h                                        ; $7881: $44
	dec  [hl]                                        ; $7882: $35
	ld   b, [hl]                                     ; $7883: $46
	ld   b, a                                        ; $7884: $47
	jr   z, jr_081_78b0                              ; $7885: $28 $29

	ld   c, d                                        ; $7887: $4a

jr_081_7888:
	ld   c, e                                        ; $7888: $4b
	ld   c, h                                        ; $7889: $4c
	ld   c, l                                        ; $788a: $4d
	ld   c, [hl]                                     ; $788b: $4e
	ld   c, a                                        ; $788c: $4f
	jr   z, jr_081_78b8                              ; $788d: $28 $29

	ld   h, $27                                      ; $788f: $26 $27
	ld   d, b                                        ; $7891: $50
	ld   d, c                                        ; $7892: $51
	ld   d, d                                        ; $7893: $52
	ld   d, e                                        ; $7894: $53
	ld   d, h                                        ; $7895: $54
	ld   d, l                                        ; $7896: $55
	ld   b, [hl]                                     ; $7897: $46
	daa                                              ; $7898: $27
	jr   z, jr_081_78c4                              ; $7899: $28 $29

	ld   e, d                                        ; $789b: $5a

jr_081_789c:
	ld   e, e                                        ; $789c: $5b
	ld   e, h                                        ; $789d: $5c
	ld   e, l                                        ; $789e: $5d
	ld   e, [hl]                                     ; $789f: $5e
	ld   e, a                                        ; $78a0: $5f
	ld   c, b                                        ; $78a1: $48
	ld   c, c                                        ; $78a2: $49
	ld   h, $27                                      ; $78a3: $26 $27
	ld   h, b                                        ; $78a5: $60
	ld   h, c                                        ; $78a6: $61
	ld   h, d                                        ; $78a7: $62
	ld   h, e                                        ; $78a8: $63
	ld   h, h                                        ; $78a9: $64
	ld   h, l                                        ; $78aa: $65
	ld   h, [hl]                                     ; $78ab: $66
	ld   h, a                                        ; $78ac: $67
	ld   l, b                                        ; $78ad: $68
	ld   l, c                                        ; $78ae: $69
	ld   l, d                                        ; $78af: $6a

jr_081_78b0:
	ld   l, e                                        ; $78b0: $6b
	ld   l, h                                        ; $78b1: $6c
	ld   l, l                                        ; $78b2: $6d
	ld   l, [hl]                                     ; $78b3: $6e
	ld   l, a                                        ; $78b4: $6f
	ld   d, [hl]                                     ; $78b5: $56
	ld   d, a                                        ; $78b6: $57
	ld   e, b                                        ; $78b7: $58

jr_081_78b8:
	ld   e, c                                        ; $78b8: $59
	ld   [hl], b                                     ; $78b9: $70
	ld   [hl], c                                     ; $78ba: $71
	ld   [hl], d                                     ; $78bb: $72
	ld   [hl], e                                     ; $78bc: $73
	ld   [hl], h                                     ; $78bd: $74
	ld   [hl], l                                     ; $78be: $75
	halt                                             ; $78bf: $76
	ld   [hl], a                                     ; $78c0: $77
	ld   a, b                                        ; $78c1: $78
	ld   a, c                                        ; $78c2: $79
	ld   a, d                                        ; $78c3: $7a

jr_081_78c4:
	ld   a, e                                        ; $78c4: $7b
	ld   a, h                                        ; $78c5: $7c
	ld   a, l                                        ; $78c6: $7d
	ld   a, [hl]                                     ; $78c7: $7e
	ld   a, a                                        ; $78c8: $7f
	scf                                              ; $78c9: $37
	jr   c, jr_081_7905                              ; $78ca: $38 $39

	ld   a, [hl-]                                    ; $78cc: $3a
	nop                                              ; $78cd: $00
	ld   bc, $0302                                   ; $78ce: $01 $02 $03
	inc  b                                           ; $78d1: $04
	dec  b                                           ; $78d2: $05
	ld   b, $07                                      ; $78d3: $06 $07
	ld   [$0a09], sp                                 ; $78d5: $08 $09 $0a
	dec  bc                                          ; $78d8: $0b
	inc  c                                           ; $78d9: $0c
	dec  c                                           ; $78da: $0d
	dec  c                                           ; $78db: $0d
	ld   b, l                                        ; $78dc: $45
	ld   b, $07                                      ; $78dd: $06 $07
	ld   [$1009], sp                                 ; $78df: $08 $09 $10
	ld   de, $1312                                   ; $78e2: $11 $12 $13
	inc  d                                           ; $78e5: $14
	dec  d                                           ; $78e6: $15
	ld   d, $17                                      ; $78e7: $16 $17
	jr   jr_081_7904                                 ; $78e9: $18 $19

	ld   a, [de]                                     ; $78eb: $1a
	dec  de                                          ; $78ec: $1b
	inc  e                                           ; $78ed: $1c
	dec  e                                           ; $78ee: $1d
	dec  c                                           ; $78ef: $0d
	dec  c                                           ; $78f0: $0d
	dec  c                                           ; $78f1: $0d
	dec  c                                           ; $78f2: $0d
	dec  c                                           ; $78f3: $0d
	dec  b                                           ; $78f4: $05
	dec  b                                           ; $78f5: $05
	dec  b                                           ; $78f6: $05
	inc  b                                           ; $78f7: $04
	inc  b                                           ; $78f8: $04
	inc  b                                           ; $78f9: $04
	inc  b                                           ; $78fa: $04
	inc  b                                           ; $78fb: $04
	inc  b                                           ; $78fc: $04
	inc  b                                           ; $78fd: $04
	inc  b                                           ; $78fe: $04
	inc  b                                           ; $78ff: $04
	inc  b                                           ; $7900: $04
	inc  b                                           ; $7901: $04
	inc  b                                           ; $7902: $04
	inc  b                                           ; $7903: $04

jr_081_7904:
	inc  b                                           ; $7904: $04

jr_081_7905:
	inc  c                                           ; $7905: $0c
	dec  c                                           ; $7906: $0d
	dec  c                                           ; $7907: $0d
	dec  c                                           ; $7908: $0d
	dec  b                                           ; $7909: $05
	dec  b                                           ; $790a: $05
	inc  b                                           ; $790b: $04
	inc  b                                           ; $790c: $04
	inc  b                                           ; $790d: $04
	inc  b                                           ; $790e: $04
	inc  b                                           ; $790f: $04
	inc  b                                           ; $7910: $04
	inc  b                                           ; $7911: $04
	inc  b                                           ; $7912: $04
	inc  b                                           ; $7913: $04
	inc  b                                           ; $7914: $04
	inc  b                                           ; $7915: $04
	inc  b                                           ; $7916: $04
	inc  b                                           ; $7917: $04
	inc  b                                           ; $7918: $04
	inc  c                                           ; $7919: $0c
	inc  c                                           ; $791a: $0c
	dec  c                                           ; $791b: $0d
	dec  c                                           ; $791c: $0d
	dec  b                                           ; $791d: $05
	dec  b                                           ; $791e: $05
	inc  b                                           ; $791f: $04
	inc  b                                           ; $7920: $04
	inc  b                                           ; $7921: $04
	inc  b                                           ; $7922: $04
	inc  b                                           ; $7923: $04
	inc  b                                           ; $7924: $04
	inc  b                                           ; $7925: $04
	inc  b                                           ; $7926: $04
	inc  b                                           ; $7927: $04
	inc  b                                           ; $7928: $04
	inc  b                                           ; $7929: $04
	inc  b                                           ; $792a: $04
	dec  b                                           ; $792b: $05
	inc  b                                           ; $792c: $04
	dec  bc                                          ; $792d: $0b
	inc  c                                           ; $792e: $0c
	dec  c                                           ; $792f: $0d
	dec  c                                           ; $7930: $0d
	dec  b                                           ; $7931: $05
	inc  b                                           ; $7932: $04
	inc  b                                           ; $7933: $04
	inc  b                                           ; $7934: $04
	inc  b                                           ; $7935: $04
	inc  b                                           ; $7936: $04
	inc  b                                           ; $7937: $04
	inc  b                                           ; $7938: $04
	inc  b                                           ; $7939: $04
	inc  b                                           ; $793a: $04
	inc  b                                           ; $793b: $04
	inc  b                                           ; $793c: $04
	inc  b                                           ; $793d: $04
	inc  b                                           ; $793e: $04
	inc  bc                                          ; $793f: $03
	inc  b                                           ; $7940: $04
	inc  c                                           ; $7941: $0c
	inc  c                                           ; $7942: $0c
	dec  c                                           ; $7943: $0d
	dec  c                                           ; $7944: $0d
	dec  b                                           ; $7945: $05
	dec  b                                           ; $7946: $05
	inc  b                                           ; $7947: $04
	inc  b                                           ; $7948: $04
	inc  b                                           ; $7949: $04
	inc  b                                           ; $794a: $04
	inc  b                                           ; $794b: $04
	inc  b                                           ; $794c: $04
	inc  b                                           ; $794d: $04
	inc  b                                           ; $794e: $04
	inc  b                                           ; $794f: $04
	inc  b                                           ; $7950: $04
	inc  b                                           ; $7951: $04
	inc  b                                           ; $7952: $04
	inc  bc                                          ; $7953: $03
	inc  b                                           ; $7954: $04
	inc  c                                           ; $7955: $0c
	inc  c                                           ; $7956: $0c
	dec  c                                           ; $7957: $0d
	dec  c                                           ; $7958: $0d
	inc  b                                           ; $7959: $04
	inc  b                                           ; $795a: $04
	inc  bc                                          ; $795b: $03
	dec  b                                           ; $795c: $05
	inc  b                                           ; $795d: $04
	inc  b                                           ; $795e: $04
	inc  b                                           ; $795f: $04
	inc  b                                           ; $7960: $04
	inc  b                                           ; $7961: $04
	inc  b                                           ; $7962: $04
	inc  b                                           ; $7963: $04
	inc  bc                                          ; $7964: $03
	inc  bc                                          ; $7965: $03
	inc  b                                           ; $7966: $04
	inc  b                                           ; $7967: $04
	inc  b                                           ; $7968: $04
	inc  b                                           ; $7969: $04
	inc  b                                           ; $796a: $04
	dec  c                                           ; $796b: $0d
	dec  c                                           ; $796c: $0d
	inc  b                                           ; $796d: $04
	inc  b                                           ; $796e: $04
	inc  b                                           ; $796f: $04
	inc  b                                           ; $7970: $04
	inc  b                                           ; $7971: $04
	inc  b                                           ; $7972: $04
	inc  b                                           ; $7973: $04
	inc  b                                           ; $7974: $04
	inc  b                                           ; $7975: $04
	inc  b                                           ; $7976: $04
	inc  b                                           ; $7977: $04
	inc  b                                           ; $7978: $04
	inc  b                                           ; $7979: $04
	inc  b                                           ; $797a: $04
	inc  b                                           ; $797b: $04
	inc  b                                           ; $797c: $04
	inc  b                                           ; $797d: $04
	inc  b                                           ; $797e: $04
	inc  b                                           ; $797f: $04
	dec  b                                           ; $7980: $05
	inc  b                                           ; $7981: $04
	inc  b                                           ; $7982: $04
	inc  b                                           ; $7983: $04
	inc  b                                           ; $7984: $04
	inc  b                                           ; $7985: $04
	inc  b                                           ; $7986: $04
	inc  b                                           ; $7987: $04
	inc  b                                           ; $7988: $04
	inc  b                                           ; $7989: $04
	inc  b                                           ; $798a: $04
	inc  b                                           ; $798b: $04
	dec  b                                           ; $798c: $05
	dec  b                                           ; $798d: $05
	dec  b                                           ; $798e: $05
	inc  b                                           ; $798f: $04
	inc  b                                           ; $7990: $04
	inc  b                                           ; $7991: $04
	inc  b                                           ; $7992: $04
	inc  b                                           ; $7993: $04
	dec  b                                           ; $7994: $05
	dec  c                                           ; $7995: $0d
	inc  c                                           ; $7996: $0c
	inc  c                                           ; $7997: $0c
	inc  c                                           ; $7998: $0c
	inc  c                                           ; $7999: $0c
	inc  c                                           ; $799a: $0c
	inc  c                                           ; $799b: $0c
	inc  c                                           ; $799c: $0c
	inc  c                                           ; $799d: $0c
	inc  c                                           ; $799e: $0c
	inc  c                                           ; $799f: $0c
	inc  c                                           ; $79a0: $0c
	inc  c                                           ; $79a1: $0c
	inc  c                                           ; $79a2: $0c
	inc  c                                           ; $79a3: $0c
	inc  b                                           ; $79a4: $04
	inc  b                                           ; $79a5: $04
	inc  b                                           ; $79a6: $04
	inc  b                                           ; $79a7: $04
	dec  b                                           ; $79a8: $05
	dec  c                                           ; $79a9: $0d
	inc  c                                           ; $79aa: $0c
	inc  c                                           ; $79ab: $0c
	inc  c                                           ; $79ac: $0c
	inc  c                                           ; $79ad: $0c
	inc  c                                           ; $79ae: $0c
	inc  c                                           ; $79af: $0c
	inc  c                                           ; $79b0: $0c
	inc  c                                           ; $79b1: $0c
	inc  c                                           ; $79b2: $0c
	inc  c                                           ; $79b3: $0c
	inc  c                                           ; $79b4: $0c
	inc  c                                           ; $79b5: $0c
	inc  c                                           ; $79b6: $0c
	inc  c                                           ; $79b7: $0c
	inc  c                                           ; $79b8: $0c
	inc  c                                           ; $79b9: $0c
	inc  c                                           ; $79ba: $0c
	inc  c                                           ; $79bb: $0c
	inc  b                                           ; $79bc: $04
	nop                                              ; $79bd: $00
	ld   bc, $0302                                   ; $79be: $01 $02 $03
	inc  b                                           ; $79c1: $04
	inc  b                                           ; $79c2: $04
	inc  b                                           ; $79c3: $04
	ld   a, [hl+]                                    ; $79c4: $2a
	dec  hl                                          ; $79c5: $2b
	inc  b                                           ; $79c6: $04
	ld   a, [bc]                                     ; $79c7: $0a
	dec  bc                                          ; $79c8: $0b
	inc  c                                           ; $79c9: $0c
	dec  c                                           ; $79ca: $0d
	ld   c, $0f                                      ; $79cb: $0e $0f
	jr   nz, jr_081_79f0                             ; $79cd: $20 $21

	ld   [hl+], a                                    ; $79cf: $22
	inc  hl                                          ; $79d0: $23
	db   $10                                         ; $79d1: $10
	ld   de, $1312                                   ; $79d2: $11 $12 $13
	inc  d                                           ; $79d5: $14
	dec  d                                           ; $79d6: $15
	ld   d, $2c                                      ; $79d7: $16 $2c
	dec  l                                           ; $79d9: $2d
	ld   l, $2f                                      ; $79da: $2e $2f
	dec  de                                          ; $79dc: $1b
	inc  e                                           ; $79dd: $1c
	dec  e                                           ; $79de: $1d
	ld   e, $1f                                      ; $79df: $1e $1f
	inc  h                                           ; $79e1: $24
	dec  h                                           ; $79e2: $25
	ld   h, $27                                      ; $79e3: $26 $27
	jr   nz, @+$23                                   ; $79e5: $20 $21

	ld   [hl+], a                                    ; $79e7: $22
	inc  hl                                          ; $79e8: $23
	inc  h                                           ; $79e9: $24
	dec  h                                           ; $79ea: $25
	ld   h, $30                                      ; $79eb: $26 $30
	ld   sp, $2a32                                   ; $79ed: $31 $32 $2a

jr_081_79f0:
	dec  hl                                          ; $79f0: $2b
	inc  l                                           ; $79f1: $2c
	dec  l                                           ; $79f2: $2d
	ld   l, $2f                                      ; $79f3: $2e $2f
	ld   c, $0f                                      ; $79f5: $0e $0f
	ld   h, $27                                      ; $79f7: $26 $27
	jr   nc, jr_081_7a2c                             ; $79f9: $30 $31

	ld   [hl-], a                                    ; $79fb: $32
	inc  sp                                          ; $79fc: $33
	inc  [hl]                                        ; $79fd: $34
	dec  [hl]                                        ; $79fe: $35
	ld   [hl], $30                                   ; $79ff: $36 $30
	ld   sp, $2a32                                   ; $7a01: $31 $32 $2a
	dec  sp                                          ; $7a04: $3b
	inc  a                                           ; $7a05: $3c
	dec  a                                           ; $7a06: $3d
	ld   a, $3f                                      ; $7a07: $3e $3f
	ld   e, $1f                                      ; $7a09: $1e $1f
	ld   h, $27                                      ; $7a0b: $26 $27
	ld   b, b                                        ; $7a0d: $40
	ld   b, c                                        ; $7a0e: $41
	ld   b, d                                        ; $7a0f: $42
	ld   b, e                                        ; $7a10: $43
	ld   b, h                                        ; $7a11: $44
	dec  [hl]                                        ; $7a12: $35
	ld   b, [hl]                                     ; $7a13: $46
	inc  sp                                          ; $7a14: $33
	inc  [hl]                                        ; $7a15: $34
	ld   [hl-], a                                    ; $7a16: $32
	ld   c, d                                        ; $7a17: $4a
	ld   c, e                                        ; $7a18: $4b
	ld   c, h                                        ; $7a19: $4c
	ld   c, l                                        ; $7a1a: $4d
	ld   c, [hl]                                     ; $7a1b: $4e
	ld   c, a                                        ; $7a1c: $4f
	jr   z, jr_081_7a48                              ; $7a1d: $28 $29

	ld   h, $27                                      ; $7a1f: $26 $27
	ld   d, b                                        ; $7a21: $50
	ld   d, c                                        ; $7a22: $51
	ld   d, d                                        ; $7a23: $52
	ld   d, e                                        ; $7a24: $53
	ld   d, h                                        ; $7a25: $54
	ld   d, l                                        ; $7a26: $55
	ld   b, [hl]                                     ; $7a27: $46
	jr   nc, @+$33                                   ; $7a28: $30 $31

	ld   [hl-], a                                    ; $7a2a: $32
	ld   e, d                                        ; $7a2b: $5a

jr_081_7a2c:
	ld   e, e                                        ; $7a2c: $5b
	ld   e, h                                        ; $7a2d: $5c
	ld   e, l                                        ; $7a2e: $5d
	ld   e, [hl]                                     ; $7a2f: $5e
	ld   e, a                                        ; $7a30: $5f
	ld   c, b                                        ; $7a31: $48
	ld   c, c                                        ; $7a32: $49
	ld   h, $27                                      ; $7a33: $26 $27
	ld   h, b                                        ; $7a35: $60
	ld   h, c                                        ; $7a36: $61
	ld   h, d                                        ; $7a37: $62
	ld   h, e                                        ; $7a38: $63
	ld   h, h                                        ; $7a39: $64
	ld   h, l                                        ; $7a3a: $65
	ld   h, [hl]                                     ; $7a3b: $66
	dec  [hl]                                        ; $7a3c: $35
	ld   sp, $6a36                                   ; $7a3d: $31 $36 $6a
	ld   l, e                                        ; $7a40: $6b
	ld   l, h                                        ; $7a41: $6c
	ld   l, l                                        ; $7a42: $6d
	ld   l, [hl]                                     ; $7a43: $6e
	ld   l, a                                        ; $7a44: $6f
	ld   d, [hl]                                     ; $7a45: $56
	ld   d, a                                        ; $7a46: $57
	ld   e, b                                        ; $7a47: $58

jr_081_7a48:
	ld   e, c                                        ; $7a48: $59
	ld   [hl], b                                     ; $7a49: $70
	ld   [hl], c                                     ; $7a4a: $71
	ld   [hl], d                                     ; $7a4b: $72
	ld   [hl], e                                     ; $7a4c: $73
	ld   [hl], h                                     ; $7a4d: $74
	ld   [hl], l                                     ; $7a4e: $75
	halt                                             ; $7a4f: $76
	scf                                              ; $7a50: $37
	jr   c, jr_081_7a8c                              ; $7a51: $38 $39

	ld   a, d                                        ; $7a53: $7a
	ld   a, e                                        ; $7a54: $7b
	ld   a, h                                        ; $7a55: $7c
	ld   a, l                                        ; $7a56: $7d
	ld   a, [hl]                                     ; $7a57: $7e
	ld   a, a                                        ; $7a58: $7f
	scf                                              ; $7a59: $37
	jr   c, jr_081_7a95                              ; $7a5a: $38 $39

	ld   a, [hl-]                                    ; $7a5c: $3a
	nop                                              ; $7a5d: $00
	ld   bc, $0302                                   ; $7a5e: $01 $02 $03
	inc  b                                           ; $7a61: $04
	dec  b                                           ; $7a62: $05
	ld   b, $07                                      ; $7a63: $06 $07
	ld   [$0a09], sp                                 ; $7a65: $08 $09 $0a
	dec  bc                                          ; $7a68: $0b
	inc  c                                           ; $7a69: $0c
	dec  c                                           ; $7a6a: $0d
	dec  c                                           ; $7a6b: $0d
	ld   b, l                                        ; $7a6c: $45
	ld   b, $07                                      ; $7a6d: $06 $07
	ld   [$1009], sp                                 ; $7a6f: $08 $09 $10
	ld   de, $1312                                   ; $7a72: $11 $12 $13
	inc  d                                           ; $7a75: $14
	dec  d                                           ; $7a76: $15
	ld   d, $17                                      ; $7a77: $16 $17
	jr   jr_081_7a94                                 ; $7a79: $18 $19

	ld   a, [de]                                     ; $7a7b: $1a
	dec  de                                          ; $7a7c: $1b
	inc  e                                           ; $7a7d: $1c
	dec  e                                           ; $7a7e: $1d
	dec  c                                           ; $7a7f: $0d
	dec  c                                           ; $7a80: $0d
	dec  c                                           ; $7a81: $0d
	dec  c                                           ; $7a82: $0d
	dec  c                                           ; $7a83: $0d
	dec  b                                           ; $7a84: $05
	dec  b                                           ; $7a85: $05
	dec  b                                           ; $7a86: $05
	inc  b                                           ; $7a87: $04
	inc  b                                           ; $7a88: $04
	inc  b                                           ; $7a89: $04
	inc  b                                           ; $7a8a: $04
	inc  b                                           ; $7a8b: $04

jr_081_7a8c:
	inc  c                                           ; $7a8c: $0c
	inc  c                                           ; $7a8d: $0c
	inc  b                                           ; $7a8e: $04
	inc  b                                           ; $7a8f: $04
	inc  b                                           ; $7a90: $04
	inc  b                                           ; $7a91: $04
	inc  b                                           ; $7a92: $04
	inc  b                                           ; $7a93: $04

jr_081_7a94:
	inc  b                                           ; $7a94: $04

jr_081_7a95:
	inc  c                                           ; $7a95: $0c
	dec  c                                           ; $7a96: $0d
	dec  c                                           ; $7a97: $0d
	dec  c                                           ; $7a98: $0d
	dec  b                                           ; $7a99: $05
	dec  b                                           ; $7a9a: $05
	inc  b                                           ; $7a9b: $04
	inc  b                                           ; $7a9c: $04
	inc  b                                           ; $7a9d: $04
	inc  b                                           ; $7a9e: $04
	inc  b                                           ; $7a9f: $04
	inc  c                                           ; $7aa0: $0c
	inc  c                                           ; $7aa1: $0c
	inc  c                                           ; $7aa2: $0c
	inc  c                                           ; $7aa3: $0c
	inc  b                                           ; $7aa4: $04
	inc  b                                           ; $7aa5: $04
	inc  b                                           ; $7aa6: $04
	inc  b                                           ; $7aa7: $04
	inc  b                                           ; $7aa8: $04
	inc  c                                           ; $7aa9: $0c
	inc  c                                           ; $7aaa: $0c
	dec  c                                           ; $7aab: $0d
	dec  c                                           ; $7aac: $0d
	dec  b                                           ; $7aad: $05
	dec  b                                           ; $7aae: $05
	inc  b                                           ; $7aaf: $04
	inc  b                                           ; $7ab0: $04
	inc  b                                           ; $7ab1: $04
	inc  b                                           ; $7ab2: $04
	inc  b                                           ; $7ab3: $04
	inc  c                                           ; $7ab4: $0c
	inc  c                                           ; $7ab5: $0c
	inc  c                                           ; $7ab6: $0c
	inc  b                                           ; $7ab7: $04
	inc  b                                           ; $7ab8: $04
	inc  b                                           ; $7ab9: $04
	inc  b                                           ; $7aba: $04
	dec  b                                           ; $7abb: $05
	inc  b                                           ; $7abc: $04
	dec  bc                                          ; $7abd: $0b
	inc  c                                           ; $7abe: $0c
	dec  c                                           ; $7abf: $0d
	dec  c                                           ; $7ac0: $0d
	dec  b                                           ; $7ac1: $05
	inc  b                                           ; $7ac2: $04
	inc  b                                           ; $7ac3: $04
	inc  b                                           ; $7ac4: $04
	inc  b                                           ; $7ac5: $04
	inc  b                                           ; $7ac6: $04
	inc  b                                           ; $7ac7: $04
	inc  c                                           ; $7ac8: $0c
	inc  c                                           ; $7ac9: $0c
	inc  c                                           ; $7aca: $0c
	inc  b                                           ; $7acb: $04
	inc  b                                           ; $7acc: $04
	inc  b                                           ; $7acd: $04
	inc  b                                           ; $7ace: $04
	inc  bc                                          ; $7acf: $03
	inc  b                                           ; $7ad0: $04
	inc  c                                           ; $7ad1: $0c
	inc  c                                           ; $7ad2: $0c
	dec  c                                           ; $7ad3: $0d
	dec  c                                           ; $7ad4: $0d
	dec  b                                           ; $7ad5: $05
	dec  b                                           ; $7ad6: $05
	inc  b                                           ; $7ad7: $04
	inc  b                                           ; $7ad8: $04
	inc  b                                           ; $7ad9: $04
	inc  b                                           ; $7ada: $04
	inc  b                                           ; $7adb: $04
	inc  c                                           ; $7adc: $0c
	inc  c                                           ; $7add: $0c
	inc  c                                           ; $7ade: $0c
	inc  b                                           ; $7adf: $04
	inc  b                                           ; $7ae0: $04
	inc  b                                           ; $7ae1: $04
	inc  b                                           ; $7ae2: $04
	inc  bc                                          ; $7ae3: $03
	inc  b                                           ; $7ae4: $04
	inc  c                                           ; $7ae5: $0c
	inc  c                                           ; $7ae6: $0c
	dec  c                                           ; $7ae7: $0d
	dec  c                                           ; $7ae8: $0d
	inc  b                                           ; $7ae9: $04
	inc  b                                           ; $7aea: $04
	inc  bc                                          ; $7aeb: $03
	dec  b                                           ; $7aec: $05
	inc  b                                           ; $7aed: $04
	inc  b                                           ; $7aee: $04
	inc  b                                           ; $7aef: $04
	inc  c                                           ; $7af0: $0c
	inc  c                                           ; $7af1: $0c
	inc  c                                           ; $7af2: $0c
	inc  b                                           ; $7af3: $04
	inc  bc                                          ; $7af4: $03
	inc  bc                                          ; $7af5: $03
	inc  b                                           ; $7af6: $04
	inc  b                                           ; $7af7: $04
	inc  b                                           ; $7af8: $04
	inc  b                                           ; $7af9: $04
	inc  b                                           ; $7afa: $04
	dec  c                                           ; $7afb: $0d
	dec  c                                           ; $7afc: $0d
	inc  b                                           ; $7afd: $04
	inc  b                                           ; $7afe: $04
	inc  b                                           ; $7aff: $04
	inc  b                                           ; $7b00: $04
	inc  b                                           ; $7b01: $04
	inc  b                                           ; $7b02: $04
	inc  b                                           ; $7b03: $04
	inc  c                                           ; $7b04: $0c
	inc  c                                           ; $7b05: $0c
	inc  c                                           ; $7b06: $0c
	inc  b                                           ; $7b07: $04
	inc  b                                           ; $7b08: $04
	inc  b                                           ; $7b09: $04
	inc  b                                           ; $7b0a: $04
	inc  b                                           ; $7b0b: $04
	inc  b                                           ; $7b0c: $04
	inc  b                                           ; $7b0d: $04
	inc  b                                           ; $7b0e: $04
	inc  b                                           ; $7b0f: $04
	dec  b                                           ; $7b10: $05
	inc  b                                           ; $7b11: $04
	inc  b                                           ; $7b12: $04
	inc  b                                           ; $7b13: $04
	inc  b                                           ; $7b14: $04
	inc  b                                           ; $7b15: $04
	inc  b                                           ; $7b16: $04
	inc  b                                           ; $7b17: $04
	inc  c                                           ; $7b18: $0c
	inc  c                                           ; $7b19: $0c
	inc  c                                           ; $7b1a: $0c
	inc  b                                           ; $7b1b: $04
	dec  b                                           ; $7b1c: $05
	dec  b                                           ; $7b1d: $05
	dec  b                                           ; $7b1e: $05
	inc  b                                           ; $7b1f: $04
	inc  b                                           ; $7b20: $04
	inc  b                                           ; $7b21: $04
	inc  b                                           ; $7b22: $04
	inc  b                                           ; $7b23: $04
	dec  b                                           ; $7b24: $05
	dec  c                                           ; $7b25: $0d
	inc  c                                           ; $7b26: $0c
	inc  c                                           ; $7b27: $0c
	inc  c                                           ; $7b28: $0c
	inc  c                                           ; $7b29: $0c
	inc  c                                           ; $7b2a: $0c
	inc  c                                           ; $7b2b: $0c
	inc  c                                           ; $7b2c: $0c
	inc  c                                           ; $7b2d: $0c
	inc  c                                           ; $7b2e: $0c
	inc  c                                           ; $7b2f: $0c
	inc  c                                           ; $7b30: $0c
	inc  c                                           ; $7b31: $0c
	inc  c                                           ; $7b32: $0c
	inc  c                                           ; $7b33: $0c
	inc  b                                           ; $7b34: $04
	inc  b                                           ; $7b35: $04
	inc  b                                           ; $7b36: $04
	inc  b                                           ; $7b37: $04
	dec  b                                           ; $7b38: $05
	dec  c                                           ; $7b39: $0d
	inc  c                                           ; $7b3a: $0c
	inc  c                                           ; $7b3b: $0c
	inc  c                                           ; $7b3c: $0c
	inc  c                                           ; $7b3d: $0c
	inc  c                                           ; $7b3e: $0c
	inc  c                                           ; $7b3f: $0c
	inc  c                                           ; $7b40: $0c
	inc  c                                           ; $7b41: $0c
	inc  c                                           ; $7b42: $0c
	inc  c                                           ; $7b43: $0c
	inc  c                                           ; $7b44: $0c
	inc  c                                           ; $7b45: $0c
	inc  c                                           ; $7b46: $0c
	inc  c                                           ; $7b47: $0c
	inc  c                                           ; $7b48: $0c
	inc  c                                           ; $7b49: $0c
	inc  c                                           ; $7b4a: $0c
	inc  c                                           ; $7b4b: $0c
	inc  b                                           ; $7b4c: $04
	nop                                              ; $7b4d: $00
	ld   bc, $0302                                   ; $7b4e: $01 $02 $03
	inc  bc                                          ; $7b51: $03
	dec  b                                           ; $7b52: $05
	ld   b, $07                                      ; $7b53: $06 $07
	ld   [$0a09], sp                                 ; $7b55: $08 $09 $0a
	dec  bc                                          ; $7b58: $0b
	inc  c                                           ; $7b59: $0c
	dec  c                                           ; $7b5a: $0d
	ld   c, $0f                                      ; $7b5b: $0e $0f
	inc  bc                                          ; $7b5d: $03
	inc  bc                                          ; $7b5e: $03
	inc  bc                                          ; $7b5f: $03
	rra                                              ; $7b60: $1f
	db   $10                                         ; $7b61: $10
	ld   de, $1312                                   ; $7b62: $11 $12 $13
	inc  d                                           ; $7b65: $14
	dec  d                                           ; $7b66: $15
	ld   d, $17                                      ; $7b67: $16 $17
	jr   @+$1b                                       ; $7b69: $18 $19

	ld   a, [de]                                     ; $7b6b: $1a
	dec  de                                          ; $7b6c: $1b
	inc  e                                           ; $7b6d: $1c
	dec  e                                           ; $7b6e: $1d
	ld   e, $1f                                      ; $7b6f: $1e $1f
	dec  d                                           ; $7b71: $15
	dec  d                                           ; $7b72: $15
	dec  d                                           ; $7b73: $15
	ld   b, [hl]                                     ; $7b74: $46
	jr   nz, @+$23                                   ; $7b75: $20 $21

	ld   [hl+], a                                    ; $7b77: $22
	inc  hl                                          ; $7b78: $23
	inc  h                                           ; $7b79: $24
	dec  h                                           ; $7b7a: $25
	ld   d, $27                                      ; $7b7b: $16 $27
	jr   z, jr_081_7ba8                              ; $7b7d: $28 $29

	ld   a, [hl+]                                    ; $7b7f: $2a
	dec  hl                                          ; $7b80: $2b
	inc  l                                           ; $7b81: $2c
	dec  l                                           ; $7b82: $2d
	ld   e, $2f                                      ; $7b83: $1e $2f
	jr   nz, jr_081_7ba8                             ; $7b85: $20 $21

	ld   [hl+], a                                    ; $7b87: $22
	inc  hl                                          ; $7b88: $23
	jr   nc, jr_081_7bbc                             ; $7b89: $30 $31

	ld   [hl-], a                                    ; $7b8b: $32
	inc  sp                                          ; $7b8c: $33
	inc  [hl]                                        ; $7b8d: $34
	dec  [hl]                                        ; $7b8e: $35
	ld   [hl], $37                                   ; $7b8f: $36 $37
	jr   c, jr_081_7bcc                              ; $7b91: $38 $39

	ld   a, [hl-]                                    ; $7b93: $3a
	dec  sp                                          ; $7b94: $3b
	inc  a                                           ; $7b95: $3c
	dec  a                                           ; $7b96: $3d
	ld   a, $3f                                      ; $7b97: $3e $3f
	jr   nc, jr_081_7bcc                             ; $7b99: $30 $31

	ld   [hl-], a                                    ; $7b9b: $32
	inc  sp                                          ; $7b9c: $33
	ld   b, b                                        ; $7b9d: $40
	ld   b, c                                        ; $7b9e: $41
	ld   b, d                                        ; $7b9f: $42
	ld   b, e                                        ; $7ba0: $43
	ld   b, h                                        ; $7ba1: $44
	ld   b, l                                        ; $7ba2: $45
	ld   d, $47                                      ; $7ba3: $16 $47
	ld   c, b                                        ; $7ba5: $48
	ld   c, c                                        ; $7ba6: $49
	ld   c, d                                        ; $7ba7: $4a

jr_081_7ba8:
	ld   c, e                                        ; $7ba8: $4b
	ld   c, h                                        ; $7ba9: $4c
	ld   c, l                                        ; $7baa: $4d
	ld   c, [hl]                                     ; $7bab: $4e
	ld   c, a                                        ; $7bac: $4f
	inc  h                                           ; $7bad: $24
	dec  h                                           ; $7bae: $25
	ld   h, $27                                      ; $7baf: $26 $27
	ld   d, b                                        ; $7bb1: $50
	ld   d, c                                        ; $7bb2: $51
	ld   d, d                                        ; $7bb3: $52
	ld   d, e                                        ; $7bb4: $53
	ld   d, h                                        ; $7bb5: $54
	ld   d, l                                        ; $7bb6: $55
	ld   d, [hl]                                     ; $7bb7: $56
	ld   d, a                                        ; $7bb8: $57
	ld   e, b                                        ; $7bb9: $58
	ld   e, c                                        ; $7bba: $59
	ld   e, d                                        ; $7bbb: $5a

jr_081_7bbc:
	ld   e, e                                        ; $7bbc: $5b
	ld   e, h                                        ; $7bbd: $5c
	ld   e, l                                        ; $7bbe: $5d
	ld   e, [hl]                                     ; $7bbf: $5e
	ld   e, a                                        ; $7bc0: $5f
	inc  [hl]                                        ; $7bc1: $34
	dec  [hl]                                        ; $7bc2: $35
	ld   [hl], $37                                   ; $7bc3: $36 $37
	ld   h, b                                        ; $7bc5: $60
	ld   h, c                                        ; $7bc6: $61
	ld   h, d                                        ; $7bc7: $62
	ld   h, e                                        ; $7bc8: $63
	ld   h, h                                        ; $7bc9: $64
	ld   h, l                                        ; $7bca: $65
	ld   h, [hl]                                     ; $7bcb: $66

jr_081_7bcc:
	ld   h, a                                        ; $7bcc: $67
	ld   l, b                                        ; $7bcd: $68
	ld   l, c                                        ; $7bce: $69
	ld   l, d                                        ; $7bcf: $6a
	ld   l, e                                        ; $7bd0: $6b
	ld   l, h                                        ; $7bd1: $6c
	ld   l, l                                        ; $7bd2: $6d
	ld   l, [hl]                                     ; $7bd3: $6e
	ld   l, a                                        ; $7bd4: $6f
	jr   z, @+$2b                                    ; $7bd5: $28 $29

	ld   a, [hl+]                                    ; $7bd7: $2a
	dec  hl                                          ; $7bd8: $2b
	ld   [hl], b                                     ; $7bd9: $70
	ld   [hl], c                                     ; $7bda: $71
	ld   [hl], d                                     ; $7bdb: $72
	ld   [hl], e                                     ; $7bdc: $73
	ld   [hl], h                                     ; $7bdd: $74
	ld   [hl], l                                     ; $7bde: $75
	halt                                             ; $7bdf: $76
	ld   [hl], a                                     ; $7be0: $77
	ld   a, b                                        ; $7be1: $78
	ld   a, c                                        ; $7be2: $79
	ld   a, d                                        ; $7be3: $7a
	ld   a, e                                        ; $7be4: $7b
	ld   a, h                                        ; $7be5: $7c
	ld   a, l                                        ; $7be6: $7d
	ld   a, [hl]                                     ; $7be7: $7e
	ld   a, a                                        ; $7be8: $7f
	jr   c, jr_081_7c24                              ; $7be9: $38 $39

	ld   a, [hl-]                                    ; $7beb: $3a
	dec  sp                                          ; $7bec: $3b
	nop                                              ; $7bed: $00
	ld   bc, $0302                                   ; $7bee: $01 $02 $03
	inc  b                                           ; $7bf1: $04
	dec  b                                           ; $7bf2: $05
	ld   b, $07                                      ; $7bf3: $06 $07
	ld   [$0a09], sp                                 ; $7bf5: $08 $09 $0a
	dec  bc                                          ; $7bf8: $0b
	inc  c                                           ; $7bf9: $0c
	dec  c                                           ; $7bfa: $0d
	ld   c, $0f                                      ; $7bfb: $0e $0f
	inc  l                                           ; $7bfd: $2c
	dec  l                                           ; $7bfe: $2d
	ld   l, $2f                                      ; $7bff: $2e $2f
	db   $10                                         ; $7c01: $10
	ld   de, $1312                                   ; $7c02: $11 $12 $13
	inc  d                                           ; $7c05: $14
	dec  d                                           ; $7c06: $15
	ld   d, $17                                      ; $7c07: $16 $17
	jr   jr_081_7c24                                 ; $7c09: $18 $19

	ld   a, [de]                                     ; $7c0b: $1a
	dec  de                                          ; $7c0c: $1b
	inc  e                                           ; $7c0d: $1c
	dec  e                                           ; $7c0e: $1d
	ld   e, $11                                      ; $7c0f: $1e $11
	inc  a                                           ; $7c11: $3c
	ld   l, $26                                      ; $7c12: $2e $26
	inc  b                                           ; $7c14: $04
	inc  bc                                          ; $7c15: $03
	inc  bc                                          ; $7c16: $03
	inc  bc                                          ; $7c17: $03
	inc  bc                                          ; $7c18: $03
	inc  bc                                          ; $7c19: $03
	inc  bc                                          ; $7c1a: $03
	inc  bc                                          ; $7c1b: $03
	inc  bc                                          ; $7c1c: $03
	inc  bc                                          ; $7c1d: $03
	inc  bc                                          ; $7c1e: $03
	inc  bc                                          ; $7c1f: $03
	inc  bc                                          ; $7c20: $03
	inc  bc                                          ; $7c21: $03
	inc  bc                                          ; $7c22: $03
	inc  bc                                          ; $7c23: $03

jr_081_7c24:
	inc  bc                                          ; $7c24: $03
	inc  bc                                          ; $7c25: $03
	inc  bc                                          ; $7c26: $03
	inc  bc                                          ; $7c27: $03
	dec  bc                                          ; $7c28: $0b
	inc  bc                                          ; $7c29: $03
	inc  bc                                          ; $7c2a: $03
	inc  bc                                          ; $7c2b: $03
	inc  bc                                          ; $7c2c: $03
	inc  bc                                          ; $7c2d: $03
	inc  bc                                          ; $7c2e: $03
	inc  bc                                          ; $7c2f: $03
	inc  bc                                          ; $7c30: $03
	inc  bc                                          ; $7c31: $03
	inc  bc                                          ; $7c32: $03
	inc  bc                                          ; $7c33: $03
	inc  bc                                          ; $7c34: $03
	inc  bc                                          ; $7c35: $03
	inc  bc                                          ; $7c36: $03
	inc  bc                                          ; $7c37: $03
	inc  bc                                          ; $7c38: $03
	inc  bc                                          ; $7c39: $03
	inc  bc                                          ; $7c3a: $03
	inc  bc                                          ; $7c3b: $03
	inc  bc                                          ; $7c3c: $03
	inc  bc                                          ; $7c3d: $03
	inc  bc                                          ; $7c3e: $03
	inc  bc                                          ; $7c3f: $03
	inc  bc                                          ; $7c40: $03
	inc  bc                                          ; $7c41: $03
	inc  bc                                          ; $7c42: $03
	inc  bc                                          ; $7c43: $03
	inc  bc                                          ; $7c44: $03
	inc  bc                                          ; $7c45: $03
	inc  bc                                          ; $7c46: $03
	inc  bc                                          ; $7c47: $03
	inc  bc                                          ; $7c48: $03
	inc  bc                                          ; $7c49: $03
	inc  bc                                          ; $7c4a: $03
	inc  bc                                          ; $7c4b: $03
	inc  bc                                          ; $7c4c: $03
	dec  bc                                          ; $7c4d: $0b
	dec  bc                                          ; $7c4e: $0b
	dec  bc                                          ; $7c4f: $0b
	dec  bc                                          ; $7c50: $0b
	inc  bc                                          ; $7c51: $03
	inc  bc                                          ; $7c52: $03
	inc  bc                                          ; $7c53: $03
	inc  bc                                          ; $7c54: $03
	inc  bc                                          ; $7c55: $03
	inc  bc                                          ; $7c56: $03
	inc  bc                                          ; $7c57: $03
	inc  bc                                          ; $7c58: $03
	inc  bc                                          ; $7c59: $03
	inc  bc                                          ; $7c5a: $03
	inc  bc                                          ; $7c5b: $03
	inc  bc                                          ; $7c5c: $03
	inc  bc                                          ; $7c5d: $03
	inc  bc                                          ; $7c5e: $03
	inc  bc                                          ; $7c5f: $03
	inc  bc                                          ; $7c60: $03
	dec  bc                                          ; $7c61: $0b
	dec  bc                                          ; $7c62: $0b
	dec  bc                                          ; $7c63: $0b
	dec  bc                                          ; $7c64: $0b
	inc  bc                                          ; $7c65: $03
	inc  bc                                          ; $7c66: $03
	inc  bc                                          ; $7c67: $03
	inc  bc                                          ; $7c68: $03
	inc  bc                                          ; $7c69: $03
	inc  bc                                          ; $7c6a: $03
	inc  bc                                          ; $7c6b: $03
	inc  bc                                          ; $7c6c: $03
	inc  bc                                          ; $7c6d: $03
	inc  bc                                          ; $7c6e: $03
	inc  bc                                          ; $7c6f: $03
	inc  bc                                          ; $7c70: $03
	inc  bc                                          ; $7c71: $03
	inc  bc                                          ; $7c72: $03
	inc  bc                                          ; $7c73: $03
	inc  bc                                          ; $7c74: $03
	dec  bc                                          ; $7c75: $0b
	dec  bc                                          ; $7c76: $0b
	dec  bc                                          ; $7c77: $0b
	dec  bc                                          ; $7c78: $0b
	inc  bc                                          ; $7c79: $03
	inc  bc                                          ; $7c7a: $03
	inc  bc                                          ; $7c7b: $03
	inc  bc                                          ; $7c7c: $03
	dec  b                                           ; $7c7d: $05
	dec  b                                           ; $7c7e: $05
	inc  bc                                          ; $7c7f: $03
	dec  b                                           ; $7c80: $05
	dec  b                                           ; $7c81: $05
	inc  b                                           ; $7c82: $04
	inc  b                                           ; $7c83: $04
	inc  b                                           ; $7c84: $04
	dec  b                                           ; $7c85: $05
	inc  b                                           ; $7c86: $04
	inc  bc                                          ; $7c87: $03
	dec  b                                           ; $7c88: $05
	dec  bc                                          ; $7c89: $0b
	dec  c                                           ; $7c8a: $0d
	dec  c                                           ; $7c8b: $0d
	dec  bc                                          ; $7c8c: $0b
	dec  b                                           ; $7c8d: $05
	dec  b                                           ; $7c8e: $05
	dec  b                                           ; $7c8f: $05
	dec  b                                           ; $7c90: $05
	inc  b                                           ; $7c91: $04
	inc  b                                           ; $7c92: $04
	inc  b                                           ; $7c93: $04
	inc  b                                           ; $7c94: $04
	inc  b                                           ; $7c95: $04
	inc  b                                           ; $7c96: $04
	inc  b                                           ; $7c97: $04
	inc  b                                           ; $7c98: $04
	inc  b                                           ; $7c99: $04
	inc  b                                           ; $7c9a: $04
	inc  b                                           ; $7c9b: $04
	inc  b                                           ; $7c9c: $04
	inc  c                                           ; $7c9d: $0c
	inc  c                                           ; $7c9e: $0c
	inc  c                                           ; $7c9f: $0c
	dec  c                                           ; $7ca0: $0d
	dec  b                                           ; $7ca1: $05
	inc  b                                           ; $7ca2: $04
	inc  b                                           ; $7ca3: $04
	inc  b                                           ; $7ca4: $04
	inc  b                                           ; $7ca5: $04
	inc  b                                           ; $7ca6: $04
	inc  b                                           ; $7ca7: $04
	inc  b                                           ; $7ca8: $04
	inc  b                                           ; $7ca9: $04
	inc  b                                           ; $7caa: $04
	inc  b                                           ; $7cab: $04
	inc  b                                           ; $7cac: $04
	inc  b                                           ; $7cad: $04
	inc  b                                           ; $7cae: $04
	inc  b                                           ; $7caf: $04
	inc  b                                           ; $7cb0: $04
	inc  c                                           ; $7cb1: $0c
	inc  c                                           ; $7cb2: $0c
	inc  c                                           ; $7cb3: $0c
	dec  c                                           ; $7cb4: $0d
	dec  c                                           ; $7cb5: $0d
	inc  c                                           ; $7cb6: $0c
	inc  c                                           ; $7cb7: $0c
	inc  c                                           ; $7cb8: $0c
	inc  c                                           ; $7cb9: $0c
	inc  c                                           ; $7cba: $0c
	inc  c                                           ; $7cbb: $0c
	inc  c                                           ; $7cbc: $0c
	inc  c                                           ; $7cbd: $0c
	inc  c                                           ; $7cbe: $0c
	inc  c                                           ; $7cbf: $0c
	inc  c                                           ; $7cc0: $0c
	inc  c                                           ; $7cc1: $0c
	inc  c                                           ; $7cc2: $0c
	inc  c                                           ; $7cc3: $0c
	inc  c                                           ; $7cc4: $0c
	inc  c                                           ; $7cc5: $0c
	inc  c                                           ; $7cc6: $0c
	inc  c                                           ; $7cc7: $0c
	dec  c                                           ; $7cc8: $0d
	dec  c                                           ; $7cc9: $0d
	inc  c                                           ; $7cca: $0c
	inc  c                                           ; $7ccb: $0c
	inc  c                                           ; $7ccc: $0c
	inc  c                                           ; $7ccd: $0c
	inc  c                                           ; $7cce: $0c
	inc  c                                           ; $7ccf: $0c
	inc  c                                           ; $7cd0: $0c
	inc  c                                           ; $7cd1: $0c
	inc  c                                           ; $7cd2: $0c
	inc  c                                           ; $7cd3: $0c
	inc  c                                           ; $7cd4: $0c
	inc  c                                           ; $7cd5: $0c
	inc  c                                           ; $7cd6: $0c
	inc  c                                           ; $7cd7: $0c
	inc  c                                           ; $7cd8: $0c
	inc  c                                           ; $7cd9: $0c
	inc  b                                           ; $7cda: $04
	inc  b                                           ; $7cdb: $04
	dec  b                                           ; $7cdc: $05
	nop                                              ; $7cdd: $00
	ld   bc, $0302                                   ; $7cde: $01 $02 $03
	inc  bc                                          ; $7ce1: $03
	dec  b                                           ; $7ce2: $05
	ld   b, $07                                      ; $7ce3: $06 $07
	ld   [$0a09], sp                                 ; $7ce5: $08 $09 $0a
	dec  bc                                          ; $7ce8: $0b
	inc  c                                           ; $7ce9: $0c
	dec  c                                           ; $7cea: $0d
	ld   c, $0f                                      ; $7ceb: $0e $0f
	inc  bc                                          ; $7ced: $03
	inc  bc                                          ; $7cee: $03
	inc  bc                                          ; $7cef: $03
	rra                                              ; $7cf0: $1f
	db   $10                                         ; $7cf1: $10
	ld   de, $1312                                   ; $7cf2: $11 $12 $13
	inc  d                                           ; $7cf5: $14
	dec  d                                           ; $7cf6: $15
	ld   d, $17                                      ; $7cf7: $16 $17
	jr   @+$1b                                       ; $7cf9: $18 $19

	ld   a, [de]                                     ; $7cfb: $1a
	dec  de                                          ; $7cfc: $1b
	inc  e                                           ; $7cfd: $1c
	dec  e                                           ; $7cfe: $1d
	ld   e, $1f                                      ; $7cff: $1e $1f
	dec  d                                           ; $7d01: $15
	dec  d                                           ; $7d02: $15
	dec  d                                           ; $7d03: $15
	ld   b, [hl]                                     ; $7d04: $46
	jr   nz, @+$23                                   ; $7d05: $20 $21

	ld   [hl+], a                                    ; $7d07: $22
	inc  hl                                          ; $7d08: $23
	inc  h                                           ; $7d09: $24
	dec  h                                           ; $7d0a: $25
	ld   d, $27                                      ; $7d0b: $16 $27
	jr   z, jr_081_7d38                              ; $7d0d: $28 $29

	ld   a, [hl+]                                    ; $7d0f: $2a
	dec  hl                                          ; $7d10: $2b
	inc  l                                           ; $7d11: $2c
	dec  l                                           ; $7d12: $2d
	ld   e, $2f                                      ; $7d13: $1e $2f
	jr   nz, jr_081_7d38                             ; $7d15: $20 $21

	ld   [hl+], a                                    ; $7d17: $22
	inc  hl                                          ; $7d18: $23
	jr   nc, jr_081_7d4c                             ; $7d19: $30 $31

	ld   [hl-], a                                    ; $7d1b: $32
	inc  sp                                          ; $7d1c: $33
	inc  [hl]                                        ; $7d1d: $34
	dec  [hl]                                        ; $7d1e: $35
	ld   [hl], $37                                   ; $7d1f: $36 $37
	jr   c, jr_081_7d5c                              ; $7d21: $38 $39

	ld   a, [hl-]                                    ; $7d23: $3a
	dec  sp                                          ; $7d24: $3b
	inc  a                                           ; $7d25: $3c
	dec  a                                           ; $7d26: $3d
	ld   a, $3f                                      ; $7d27: $3e $3f
	jr   nc, jr_081_7d5c                             ; $7d29: $30 $31

	ld   [hl-], a                                    ; $7d2b: $32
	inc  sp                                          ; $7d2c: $33
	ld   b, b                                        ; $7d2d: $40
	ld   b, c                                        ; $7d2e: $41
	ld   b, d                                        ; $7d2f: $42
	ld   b, e                                        ; $7d30: $43
	ld   b, h                                        ; $7d31: $44
	dec  a                                           ; $7d32: $3d
	ld   d, $3e                                      ; $7d33: $16 $3e
	ccf                                              ; $7d35: $3f
	ld   c, c                                        ; $7d36: $49
	ld   c, d                                        ; $7d37: $4a

jr_081_7d38:
	ld   c, e                                        ; $7d38: $4b
	ld   c, h                                        ; $7d39: $4c
	ld   c, l                                        ; $7d3a: $4d
	ld   c, [hl]                                     ; $7d3b: $4e
	ld   c, a                                        ; $7d3c: $4f
	inc  h                                           ; $7d3d: $24
	dec  h                                           ; $7d3e: $25
	ld   h, $27                                      ; $7d3f: $26 $27
	ld   d, b                                        ; $7d41: $50
	ld   d, c                                        ; $7d42: $51
	ld   d, d                                        ; $7d43: $52
	ld   d, e                                        ; $7d44: $53
	ld   b, b                                        ; $7d45: $40
	ld   b, c                                        ; $7d46: $41
	ld   b, d                                        ; $7d47: $42
	ld   b, e                                        ; $7d48: $43
	ld   b, h                                        ; $7d49: $44
	ld   e, c                                        ; $7d4a: $59
	ld   e, d                                        ; $7d4b: $5a

jr_081_7d4c:
	ld   e, e                                        ; $7d4c: $5b
	ld   e, h                                        ; $7d4d: $5c
	ld   e, l                                        ; $7d4e: $5d
	ld   e, [hl]                                     ; $7d4f: $5e
	ld   e, a                                        ; $7d50: $5f
	inc  [hl]                                        ; $7d51: $34
	dec  [hl]                                        ; $7d52: $35
	ld   [hl], $37                                   ; $7d53: $36 $37
	ld   h, b                                        ; $7d55: $60
	ld   h, c                                        ; $7d56: $61
	ld   h, d                                        ; $7d57: $62
	ld   h, e                                        ; $7d58: $63
	ld   b, l                                        ; $7d59: $45
	ld   b, [hl]                                     ; $7d5a: $46
	ld   b, a                                        ; $7d5b: $47

jr_081_7d5c:
	ld   c, b                                        ; $7d5c: $48
	ld   c, c                                        ; $7d5d: $49
	ld   l, c                                        ; $7d5e: $69
	ld   l, d                                        ; $7d5f: $6a
	ld   l, e                                        ; $7d60: $6b
	ld   l, h                                        ; $7d61: $6c
	ld   l, l                                        ; $7d62: $6d
	ld   l, [hl]                                     ; $7d63: $6e
	ld   l, a                                        ; $7d64: $6f
	jr   z, @+$2b                                    ; $7d65: $28 $29

	ld   a, [hl+]                                    ; $7d67: $2a
	dec  hl                                          ; $7d68: $2b
	ld   [hl], b                                     ; $7d69: $70
	ld   [hl], c                                     ; $7d6a: $71
	ld   [hl], d                                     ; $7d6b: $72
	ld   [hl], e                                     ; $7d6c: $73
	ld   [hl], h                                     ; $7d6d: $74
	ld   c, d                                        ; $7d6e: $4a
	ld   c, e                                        ; $7d6f: $4b
	ld   [hl], a                                     ; $7d70: $77
	ld   a, b                                        ; $7d71: $78
	ld   a, c                                        ; $7d72: $79
	ld   a, d                                        ; $7d73: $7a
	ld   a, e                                        ; $7d74: $7b
	ld   a, h                                        ; $7d75: $7c
	ld   a, l                                        ; $7d76: $7d
	ld   a, [hl]                                     ; $7d77: $7e
	ld   a, a                                        ; $7d78: $7f
	jr   c, jr_081_7db4                              ; $7d79: $38 $39

	ld   a, [hl-]                                    ; $7d7b: $3a
	dec  sp                                          ; $7d7c: $3b
	nop                                              ; $7d7d: $00
	ld   bc, $0302                                   ; $7d7e: $01 $02 $03
	inc  b                                           ; $7d81: $04
	ld   c, h                                        ; $7d82: $4c
	ld   c, l                                        ; $7d83: $4d
	rlca                                             ; $7d84: $07
	ld   [$0a09], sp                                 ; $7d85: $08 $09 $0a
	dec  bc                                          ; $7d88: $0b
	inc  c                                           ; $7d89: $0c
	dec  c                                           ; $7d8a: $0d
	ld   c, $0f                                      ; $7d8b: $0e $0f
	inc  l                                           ; $7d8d: $2c
	dec  l                                           ; $7d8e: $2d
	ld   l, $2f                                      ; $7d8f: $2e $2f
	db   $10                                         ; $7d91: $10
	ld   de, $1312                                   ; $7d92: $11 $12 $13
	inc  d                                           ; $7d95: $14
	ld   c, [hl]                                     ; $7d96: $4e
	ld   c, a                                        ; $7d97: $4f
	rla                                              ; $7d98: $17
	jr   jr_081_7db4                                 ; $7d99: $18 $19

	ld   a, [de]                                     ; $7d9b: $1a
	dec  de                                          ; $7d9c: $1b
	inc  e                                           ; $7d9d: $1c
	dec  e                                           ; $7d9e: $1d
	ld   e, $11                                      ; $7d9f: $1e $11
	inc  a                                           ; $7da1: $3c
	ld   l, $26                                      ; $7da2: $2e $26
	inc  b                                           ; $7da4: $04
	inc  bc                                          ; $7da5: $03
	inc  bc                                          ; $7da6: $03
	inc  bc                                          ; $7da7: $03
	inc  bc                                          ; $7da8: $03
	inc  bc                                          ; $7da9: $03
	inc  bc                                          ; $7daa: $03
	inc  bc                                          ; $7dab: $03
	inc  bc                                          ; $7dac: $03
	inc  bc                                          ; $7dad: $03
	inc  bc                                          ; $7dae: $03
	inc  bc                                          ; $7daf: $03
	inc  bc                                          ; $7db0: $03
	inc  bc                                          ; $7db1: $03
	inc  bc                                          ; $7db2: $03
	inc  bc                                          ; $7db3: $03

jr_081_7db4:
	inc  bc                                          ; $7db4: $03
	inc  bc                                          ; $7db5: $03
	inc  bc                                          ; $7db6: $03
	inc  bc                                          ; $7db7: $03
	dec  bc                                          ; $7db8: $0b
	inc  bc                                          ; $7db9: $03
	inc  bc                                          ; $7dba: $03
	inc  bc                                          ; $7dbb: $03
	inc  bc                                          ; $7dbc: $03
	inc  bc                                          ; $7dbd: $03
	inc  bc                                          ; $7dbe: $03
	inc  bc                                          ; $7dbf: $03
	inc  bc                                          ; $7dc0: $03
	inc  bc                                          ; $7dc1: $03
	inc  bc                                          ; $7dc2: $03
	inc  bc                                          ; $7dc3: $03
	inc  bc                                          ; $7dc4: $03
	inc  bc                                          ; $7dc5: $03
	inc  bc                                          ; $7dc6: $03
	inc  bc                                          ; $7dc7: $03
	inc  bc                                          ; $7dc8: $03
	inc  bc                                          ; $7dc9: $03
	inc  bc                                          ; $7dca: $03
	inc  bc                                          ; $7dcb: $03
	inc  bc                                          ; $7dcc: $03
	inc  bc                                          ; $7dcd: $03
	inc  bc                                          ; $7dce: $03
	inc  bc                                          ; $7dcf: $03
	inc  bc                                          ; $7dd0: $03
	inc  bc                                          ; $7dd1: $03
	inc  bc                                          ; $7dd2: $03
	inc  bc                                          ; $7dd3: $03
	inc  bc                                          ; $7dd4: $03
	inc  bc                                          ; $7dd5: $03
	inc  bc                                          ; $7dd6: $03
	inc  bc                                          ; $7dd7: $03
	inc  bc                                          ; $7dd8: $03
	inc  bc                                          ; $7dd9: $03
	inc  bc                                          ; $7dda: $03
	inc  bc                                          ; $7ddb: $03
	inc  bc                                          ; $7ddc: $03
	dec  bc                                          ; $7ddd: $0b
	dec  bc                                          ; $7dde: $0b
	dec  bc                                          ; $7ddf: $0b
	dec  bc                                          ; $7de0: $0b
	inc  bc                                          ; $7de1: $03
	inc  bc                                          ; $7de2: $03
	inc  bc                                          ; $7de3: $03
	inc  bc                                          ; $7de4: $03
	inc  bc                                          ; $7de5: $03
	inc  bc                                          ; $7de6: $03
	inc  bc                                          ; $7de7: $03
	inc  bc                                          ; $7de8: $03
	inc  bc                                          ; $7de9: $03
	inc  bc                                          ; $7dea: $03
	inc  bc                                          ; $7deb: $03
	inc  bc                                          ; $7dec: $03
	inc  bc                                          ; $7ded: $03
	inc  bc                                          ; $7dee: $03
	inc  bc                                          ; $7def: $03
	inc  bc                                          ; $7df0: $03
	dec  bc                                          ; $7df1: $0b
	dec  bc                                          ; $7df2: $0b
	dec  bc                                          ; $7df3: $0b
	dec  bc                                          ; $7df4: $0b
	inc  bc                                          ; $7df5: $03
	inc  bc                                          ; $7df6: $03
	inc  bc                                          ; $7df7: $03
	inc  bc                                          ; $7df8: $03
	inc  bc                                          ; $7df9: $03
	dec  bc                                          ; $7dfa: $0b
	inc  bc                                          ; $7dfb: $03
	dec  c                                           ; $7dfc: $0d
	dec  c                                           ; $7dfd: $0d
	inc  bc                                          ; $7dfe: $03
	inc  bc                                          ; $7dff: $03
	inc  bc                                          ; $7e00: $03
	inc  bc                                          ; $7e01: $03
	inc  bc                                          ; $7e02: $03
	inc  bc                                          ; $7e03: $03
	inc  bc                                          ; $7e04: $03
	dec  bc                                          ; $7e05: $0b
	dec  bc                                          ; $7e06: $0b
	dec  bc                                          ; $7e07: $0b
	dec  bc                                          ; $7e08: $0b
	inc  bc                                          ; $7e09: $03
	inc  bc                                          ; $7e0a: $03
	inc  bc                                          ; $7e0b: $03
	inc  bc                                          ; $7e0c: $03
	dec  bc                                          ; $7e0d: $0b
	dec  bc                                          ; $7e0e: $0b
	dec  c                                           ; $7e0f: $0d
	dec  c                                           ; $7e10: $0d
	dec  c                                           ; $7e11: $0d
	inc  b                                           ; $7e12: $04
	inc  b                                           ; $7e13: $04
	inc  b                                           ; $7e14: $04
	dec  b                                           ; $7e15: $05
	inc  b                                           ; $7e16: $04
	inc  bc                                          ; $7e17: $03
	dec  b                                           ; $7e18: $05
	dec  bc                                          ; $7e19: $0b
	dec  c                                           ; $7e1a: $0d
	dec  c                                           ; $7e1b: $0d
	dec  bc                                          ; $7e1c: $0b
	dec  b                                           ; $7e1d: $05
	dec  b                                           ; $7e1e: $05
	dec  b                                           ; $7e1f: $05
	dec  b                                           ; $7e20: $05
	inc  c                                           ; $7e21: $0c
	dec  bc                                          ; $7e22: $0b
	dec  c                                           ; $7e23: $0d
	dec  c                                           ; $7e24: $0d
	dec  c                                           ; $7e25: $0d
	inc  b                                           ; $7e26: $04
	inc  b                                           ; $7e27: $04
	inc  b                                           ; $7e28: $04
	inc  b                                           ; $7e29: $04
	inc  b                                           ; $7e2a: $04
	inc  b                                           ; $7e2b: $04
	inc  b                                           ; $7e2c: $04
	inc  c                                           ; $7e2d: $0c
	inc  c                                           ; $7e2e: $0c
	inc  c                                           ; $7e2f: $0c
	dec  c                                           ; $7e30: $0d
	dec  b                                           ; $7e31: $05
	inc  b                                           ; $7e32: $04
	inc  b                                           ; $7e33: $04
	inc  b                                           ; $7e34: $04
	inc  b                                           ; $7e35: $04
	dec  bc                                          ; $7e36: $0b
	inc  c                                           ; $7e37: $0c
	inc  b                                           ; $7e38: $04
	inc  b                                           ; $7e39: $04
	inc  b                                           ; $7e3a: $04
	inc  b                                           ; $7e3b: $04
	inc  b                                           ; $7e3c: $04
	inc  b                                           ; $7e3d: $04
	inc  b                                           ; $7e3e: $04
	inc  b                                           ; $7e3f: $04
	inc  b                                           ; $7e40: $04
	inc  c                                           ; $7e41: $0c
	inc  c                                           ; $7e42: $0c
	inc  c                                           ; $7e43: $0c
	dec  c                                           ; $7e44: $0d
	dec  c                                           ; $7e45: $0d
	inc  c                                           ; $7e46: $0c
	inc  c                                           ; $7e47: $0c
	inc  c                                           ; $7e48: $0c
	inc  c                                           ; $7e49: $0c
	dec  bc                                          ; $7e4a: $0b
	inc  c                                           ; $7e4b: $0c
	inc  c                                           ; $7e4c: $0c
	inc  c                                           ; $7e4d: $0c
	inc  c                                           ; $7e4e: $0c
	inc  c                                           ; $7e4f: $0c
	inc  c                                           ; $7e50: $0c
	inc  c                                           ; $7e51: $0c
	inc  c                                           ; $7e52: $0c
	inc  c                                           ; $7e53: $0c
	inc  c                                           ; $7e54: $0c
	inc  c                                           ; $7e55: $0c
	inc  c                                           ; $7e56: $0c
	inc  c                                           ; $7e57: $0c
	dec  c                                           ; $7e58: $0d
	dec  c                                           ; $7e59: $0d
	inc  c                                           ; $7e5a: $0c
	inc  c                                           ; $7e5b: $0c
	inc  c                                           ; $7e5c: $0c
	inc  c                                           ; $7e5d: $0c
	inc  c                                           ; $7e5e: $0c
	inc  c                                           ; $7e5f: $0c
	inc  c                                           ; $7e60: $0c
	inc  c                                           ; $7e61: $0c
	inc  c                                           ; $7e62: $0c
	inc  c                                           ; $7e63: $0c
	inc  c                                           ; $7e64: $0c
	inc  c                                           ; $7e65: $0c
	inc  c                                           ; $7e66: $0c
	inc  c                                           ; $7e67: $0c
	inc  c                                           ; $7e68: $0c
	inc  c                                           ; $7e69: $0c
	inc  b                                           ; $7e6a: $04
	inc  b                                           ; $7e6b: $04
	dec  b                                           ; $7e6c: $05
	nop                                              ; $7e6d: $00
	ld   bc, $0302                                   ; $7e6e: $01 $02 $03
	inc  bc                                          ; $7e71: $03
	inc  bc                                          ; $7e72: $03
	ld   b, $07                                      ; $7e73: $06 $07
	inc  bc                                          ; $7e75: $03
	add  hl, bc                                      ; $7e76: $09
	ld   a, [bc]                                     ; $7e77: $0a
	dec  bc                                          ; $7e78: $0b
	inc  c                                           ; $7e79: $0c
	inc  bc                                          ; $7e7a: $03
	ld   c, $0f                                      ; $7e7b: $0e $0f
	jr   nz, jr_081_7ea0                             ; $7e7d: $20 $21

	ld   [hl+], a                                    ; $7e7f: $22
	inc  hl                                          ; $7e80: $23
	db   $10                                         ; $7e81: $10
	ld   de, $1312                                   ; $7e82: $11 $12 $13
	inc  d                                           ; $7e85: $14
	dec  d                                           ; $7e86: $15
	ld   d, $17                                      ; $7e87: $16 $17
	jr   @+$1b                                       ; $7e89: $18 $19

	ld   a, [de]                                     ; $7e8b: $1a
	dec  de                                          ; $7e8c: $1b
	inc  e                                           ; $7e8d: $1c
	dec  e                                           ; $7e8e: $1d
	ld   e, $1f                                      ; $7e8f: $1e $1f
	jr   nc, @+$33                                   ; $7e91: $30 $31

	jr   nc, jr_081_7ec8                             ; $7e93: $30 $33

	jr   nz, @+$23                                   ; $7e95: $20 $21

	ld   [hl+], a                                    ; $7e97: $22
	inc  hl                                          ; $7e98: $23
	inc  h                                           ; $7e99: $24
	dec  h                                           ; $7e9a: $25
	ld   d, $27                                      ; $7e9b: $16 $27
	jr   z, jr_081_7ec8                              ; $7e9d: $28 $29

	ld   a, [hl+]                                    ; $7e9f: $2a

jr_081_7ea0:
	dec  hl                                          ; $7ea0: $2b
	inc  l                                           ; $7ea1: $2c
	dec  l                                           ; $7ea2: $2d
	ld   l, $2f                                      ; $7ea3: $2e $2f
	inc  h                                           ; $7ea5: $24
	dec  h                                           ; $7ea6: $25
	ld   h, $27                                      ; $7ea7: $26 $27
	jr   nc, jr_081_7edc                             ; $7ea9: $30 $31

	ld   [hl-], a                                    ; $7eab: $32
	inc  sp                                          ; $7eac: $33
	inc  [hl]                                        ; $7ead: $34
	dec  [hl]                                        ; $7eae: $35
	ld   [hl], $37                                   ; $7eaf: $36 $37
	jr   c, jr_081_7eec                              ; $7eb1: $38 $39

	ld   a, [hl-]                                    ; $7eb3: $3a
	dec  sp                                          ; $7eb4: $3b
	inc  a                                           ; $7eb5: $3c
	dec  a                                           ; $7eb6: $3d
	ld   a, $3f                                      ; $7eb7: $3e $3f
	inc  [hl]                                        ; $7eb9: $34
	dec  [hl]                                        ; $7eba: $35
	ld   [hl], $37                                   ; $7ebb: $36 $37
	ld   b, b                                        ; $7ebd: $40
	ld   b, c                                        ; $7ebe: $41
	ld   b, d                                        ; $7ebf: $42
	ld   b, e                                        ; $7ec0: $43
	ld   b, h                                        ; $7ec1: $44
	ld   b, l                                        ; $7ec2: $45
	ld   d, $47                                      ; $7ec3: $16 $47
	ld   c, b                                        ; $7ec5: $48
	ld   c, c                                        ; $7ec6: $49
	ld   c, d                                        ; $7ec7: $4a

jr_081_7ec8:
	ld   c, e                                        ; $7ec8: $4b
	ld   c, h                                        ; $7ec9: $4c
	ld   c, l                                        ; $7eca: $4d
	ld   c, [hl]                                     ; $7ecb: $4e
	ld   c, a                                        ; $7ecc: $4f
	jr   z, @+$2b                                    ; $7ecd: $28 $29

	ld   a, [hl+]                                    ; $7ecf: $2a
	dec  hl                                          ; $7ed0: $2b
	ld   d, b                                        ; $7ed1: $50
	ld   d, c                                        ; $7ed2: $51
	ld   d, d                                        ; $7ed3: $52
	ld   d, e                                        ; $7ed4: $53
	ld   d, h                                        ; $7ed5: $54
	ld   d, l                                        ; $7ed6: $55
	ld   d, [hl]                                     ; $7ed7: $56
	ld   d, a                                        ; $7ed8: $57
	ld   e, b                                        ; $7ed9: $58
	ld   e, c                                        ; $7eda: $59
	ld   e, d                                        ; $7edb: $5a

jr_081_7edc:
	ld   e, e                                        ; $7edc: $5b
	ld   e, h                                        ; $7edd: $5c
	ld   e, l                                        ; $7ede: $5d
	ld   e, [hl]                                     ; $7edf: $5e
	ld   e, a                                        ; $7ee0: $5f
	jr   c, @+$3b                                    ; $7ee1: $38 $39

	ld   a, [hl-]                                    ; $7ee3: $3a
	dec  sp                                          ; $7ee4: $3b
	ld   h, b                                        ; $7ee5: $60
	ld   h, c                                        ; $7ee6: $61
	ld   h, d                                        ; $7ee7: $62
	ld   h, e                                        ; $7ee8: $63
	ld   h, h                                        ; $7ee9: $64
	ld   h, l                                        ; $7eea: $65
	ld   h, [hl]                                     ; $7eeb: $66

jr_081_7eec:
	ld   h, a                                        ; $7eec: $67
	ld   l, b                                        ; $7eed: $68
	ld   l, c                                        ; $7eee: $69
	ld   l, d                                        ; $7eef: $6a
	ld   l, e                                        ; $7ef0: $6b
	ld   l, h                                        ; $7ef1: $6c
	ld   l, l                                        ; $7ef2: $6d
	ld   l, [hl]                                     ; $7ef3: $6e
	ld   l, a                                        ; $7ef4: $6f
	inc  l                                           ; $7ef5: $2c
	dec  l                                           ; $7ef6: $2d
	ld   l, $2f                                      ; $7ef7: $2e $2f
	ld   [hl], b                                     ; $7ef9: $70
	ld   [hl], c                                     ; $7efa: $71
	ld   [hl], d                                     ; $7efb: $72
	ld   [hl], e                                     ; $7efc: $73
	ld   [hl], h                                     ; $7efd: $74
	ld   [hl], l                                     ; $7efe: $75
	halt                                             ; $7eff: $76
	ld   [hl], a                                     ; $7f00: $77
	ld   a, b                                        ; $7f01: $78

Call_081_7f02:
	ld   a, c                                        ; $7f02: $79
	ld   a, d                                        ; $7f03: $7a
	ld   a, e                                        ; $7f04: $7b
	ld   a, h                                        ; $7f05: $7c
	ld   a, l                                        ; $7f06: $7d
	ld   a, [hl]                                     ; $7f07: $7e
	ld   a, a                                        ; $7f08: $7f
	inc  a                                           ; $7f09: $3c
	dec  a                                           ; $7f0a: $3d
	ld   a, $32                                      ; $7f0b: $3e $32
	nop                                              ; $7f0d: $00
	ld   bc, $0302                                   ; $7f0e: $01 $02 $03
	inc  b                                           ; $7f11: $04
	dec  b                                           ; $7f12: $05
	ld   b, $07                                      ; $7f13: $06 $07
	ld   [$0a09], sp                                 ; $7f15: $08 $09 $0a
	dec  bc                                          ; $7f18: $0b
	inc  c                                           ; $7f19: $0c
	dec  c                                           ; $7f1a: $0d
	ld   c, $0f                                      ; $7f1b: $0e $0f
	ld   b, [hl]                                     ; $7f1d: $46
	ld   h, $0d                                      ; $7f1e: $26 $0d
	ld   [$1110], sp                                 ; $7f20: $08 $10 $11
	ld   [de], a                                     ; $7f23: $12
	inc  de                                          ; $7f24: $13
	inc  d                                           ; $7f25: $14
	dec  d                                           ; $7f26: $15
	ld   d, $17                                      ; $7f27: $16 $17
	jr   jr_081_7f44                                 ; $7f29: $18 $19

	ld   a, [de]                                     ; $7f2b: $1a
	dec  de                                          ; $7f2c: $1b
	inc  e                                           ; $7f2d: $1c
	dec  e                                           ; $7f2e: $1d
	ld   e, $1f                                      ; $7f2f: $1e $1f
	dec  d                                           ; $7f31: $15
	dec  d                                           ; $7f32: $15
	dec  b                                           ; $7f33: $05
	inc  b                                           ; $7f34: $04
	inc  bc                                          ; $7f35: $03
	inc  bc                                          ; $7f36: $03
	inc  bc                                          ; $7f37: $03
	inc  bc                                          ; $7f38: $03
	inc  bc                                          ; $7f39: $03
	inc  bc                                          ; $7f3a: $03
	inc  bc                                          ; $7f3b: $03
	inc  bc                                          ; $7f3c: $03
	inc  bc                                          ; $7f3d: $03
	inc  bc                                          ; $7f3e: $03
	inc  bc                                          ; $7f3f: $03
	inc  bc                                          ; $7f40: $03
	inc  bc                                          ; $7f41: $03
	inc  bc                                          ; $7f42: $03
	inc  bc                                          ; $7f43: $03

jr_081_7f44:
	inc  bc                                          ; $7f44: $03
	dec  bc                                          ; $7f45: $0b
	dec  bc                                          ; $7f46: $0b
	dec  bc                                          ; $7f47: $0b
	dec  bc                                          ; $7f48: $0b
	inc  bc                                          ; $7f49: $03
	inc  bc                                          ; $7f4a: $03
	inc  bc                                          ; $7f4b: $03
	inc  bc                                          ; $7f4c: $03
	inc  bc                                          ; $7f4d: $03
	inc  bc                                          ; $7f4e: $03
	inc  bc                                          ; $7f4f: $03
	inc  bc                                          ; $7f50: $03
	inc  bc                                          ; $7f51: $03
	inc  bc                                          ; $7f52: $03
	inc  bc                                          ; $7f53: $03
	inc  bc                                          ; $7f54: $03
	inc  bc                                          ; $7f55: $03
	inc  bc                                          ; $7f56: $03
	inc  bc                                          ; $7f57: $03
	inc  bc                                          ; $7f58: $03
	dec  bc                                          ; $7f59: $0b
	dec  bc                                          ; $7f5a: $0b
	dec  bc                                          ; $7f5b: $0b
	dec  bc                                          ; $7f5c: $0b
	inc  bc                                          ; $7f5d: $03
	inc  bc                                          ; $7f5e: $03
	inc  bc                                          ; $7f5f: $03
	inc  bc                                          ; $7f60: $03
	inc  bc                                          ; $7f61: $03
	inc  bc                                          ; $7f62: $03
	inc  bc                                          ; $7f63: $03
	inc  bc                                          ; $7f64: $03
	inc  bc                                          ; $7f65: $03
	inc  bc                                          ; $7f66: $03
	inc  bc                                          ; $7f67: $03
	inc  bc                                          ; $7f68: $03
	inc  bc                                          ; $7f69: $03
	inc  bc                                          ; $7f6a: $03
	inc  bc                                          ; $7f6b: $03
	inc  bc                                          ; $7f6c: $03
	dec  bc                                          ; $7f6d: $0b
	dec  bc                                          ; $7f6e: $0b
	dec  bc                                          ; $7f6f: $0b
	dec  bc                                          ; $7f70: $0b
	inc  bc                                          ; $7f71: $03
	inc  bc                                          ; $7f72: $03
	inc  bc                                          ; $7f73: $03
	inc  bc                                          ; $7f74: $03
	inc  bc                                          ; $7f75: $03
	inc  bc                                          ; $7f76: $03
	inc  bc                                          ; $7f77: $03
	inc  bc                                          ; $7f78: $03
	inc  bc                                          ; $7f79: $03
	inc  bc                                          ; $7f7a: $03
	inc  bc                                          ; $7f7b: $03
	inc  bc                                          ; $7f7c: $03
	inc  bc                                          ; $7f7d: $03
	inc  bc                                          ; $7f7e: $03
	inc  bc                                          ; $7f7f: $03
	inc  bc                                          ; $7f80: $03
	dec  bc                                          ; $7f81: $0b
	dec  bc                                          ; $7f82: $0b
	dec  bc                                          ; $7f83: $0b
	dec  bc                                          ; $7f84: $0b
	inc  bc                                          ; $7f85: $03
	inc  bc                                          ; $7f86: $03
	inc  bc                                          ; $7f87: $03
	inc  bc                                          ; $7f88: $03
	inc  bc                                          ; $7f89: $03
	inc  bc                                          ; $7f8a: $03
	inc  bc                                          ; $7f8b: $03
	inc  bc                                          ; $7f8c: $03
	dec  b                                           ; $7f8d: $05
	inc  bc                                          ; $7f8e: $03
	inc  bc                                          ; $7f8f: $03
	inc  bc                                          ; $7f90: $03
	inc  bc                                          ; $7f91: $03
	inc  bc                                          ; $7f92: $03
	inc  bc                                          ; $7f93: $03
	inc  bc                                          ; $7f94: $03
	dec  bc                                          ; $7f95: $0b
	dec  bc                                          ; $7f96: $0b
	dec  bc                                          ; $7f97: $0b
	dec  bc                                          ; $7f98: $0b
	inc  bc                                          ; $7f99: $03
	inc  bc                                          ; $7f9a: $03
	inc  bc                                          ; $7f9b: $03
	inc  bc                                          ; $7f9c: $03
	dec  b                                           ; $7f9d: $05
	dec  b                                           ; $7f9e: $05
	inc  bc                                          ; $7f9f: $03
	dec  b                                           ; $7fa0: $05
	dec  b                                           ; $7fa1: $05
	inc  b                                           ; $7fa2: $04
	inc  b                                           ; $7fa3: $04
	inc  b                                           ; $7fa4: $04
	dec  b                                           ; $7fa5: $05
	inc  b                                           ; $7fa6: $04
	inc  bc                                          ; $7fa7: $03
	inc  bc                                          ; $7fa8: $03
	dec  bc                                          ; $7fa9: $0b
	dec  c                                           ; $7faa: $0d
	dec  c                                           ; $7fab: $0d
	dec  bc                                          ; $7fac: $0b
	dec  b                                           ; $7fad: $05
	dec  b                                           ; $7fae: $05
	dec  b                                           ; $7faf: $05
	dec  b                                           ; $7fb0: $05
	inc  b                                           ; $7fb1: $04
	inc  b                                           ; $7fb2: $04
	inc  b                                           ; $7fb3: $04
	inc  b                                           ; $7fb4: $04
	inc  b                                           ; $7fb5: $04
	inc  b                                           ; $7fb6: $04
	inc  b                                           ; $7fb7: $04
	inc  b                                           ; $7fb8: $04
	inc  b                                           ; $7fb9: $04
	inc  b                                           ; $7fba: $04
	inc  b                                           ; $7fbb: $04
	inc  b                                           ; $7fbc: $04
	inc  c                                           ; $7fbd: $0c
	inc  c                                           ; $7fbe: $0c
	inc  c                                           ; $7fbf: $0c
	dec  c                                           ; $7fc0: $0d
	dec  b                                           ; $7fc1: $05
	inc  b                                           ; $7fc2: $04
	inc  b                                           ; $7fc3: $04
	inc  b                                           ; $7fc4: $04
	inc  b                                           ; $7fc5: $04
	inc  b                                           ; $7fc6: $04
	inc  b                                           ; $7fc7: $04
	inc  b                                           ; $7fc8: $04
	inc  b                                           ; $7fc9: $04
	inc  b                                           ; $7fca: $04
	inc  b                                           ; $7fcb: $04
	inc  b                                           ; $7fcc: $04
	inc  b                                           ; $7fcd: $04
	inc  b                                           ; $7fce: $04
	inc  b                                           ; $7fcf: $04
	inc  b                                           ; $7fd0: $04
	inc  c                                           ; $7fd1: $0c
	inc  c                                           ; $7fd2: $0c
	inc  c                                           ; $7fd3: $0c
	dec  c                                           ; $7fd4: $0d
	dec  c                                           ; $7fd5: $0d
	inc  c                                           ; $7fd6: $0c
	inc  c                                           ; $7fd7: $0c
	inc  c                                           ; $7fd8: $0c
	inc  c                                           ; $7fd9: $0c
	inc  c                                           ; $7fda: $0c
	inc  c                                           ; $7fdb: $0c
	inc  c                                           ; $7fdc: $0c
	inc  c                                           ; $7fdd: $0c
	inc  c                                           ; $7fde: $0c
	inc  c                                           ; $7fdf: $0c
	inc  c                                           ; $7fe0: $0c
	inc  c                                           ; $7fe1: $0c
	inc  c                                           ; $7fe2: $0c
	inc  c                                           ; $7fe3: $0c
	inc  c                                           ; $7fe4: $0c
	inc  b                                           ; $7fe5: $04
	inc  b                                           ; $7fe6: $04
	inc  b                                           ; $7fe7: $04
	dec  b                                           ; $7fe8: $05
	dec  c                                           ; $7fe9: $0d
	inc  c                                           ; $7fea: $0c
	inc  c                                           ; $7feb: $0c
	inc  c                                           ; $7fec: $0c
	inc  c                                           ; $7fed: $0c
	inc  c                                           ; $7fee: $0c
	inc  c                                           ; $7fef: $0c
	inc  c                                           ; $7ff0: $0c
	inc  c                                           ; $7ff1: $0c
	inc  c                                           ; $7ff2: $0c
	inc  c                                           ; $7ff3: $0c
	inc  c                                           ; $7ff4: $0c
	inc  c                                           ; $7ff5: $0c
	inc  c                                           ; $7ff6: $0c
	inc  c                                           ; $7ff7: $0c
	inc  c                                           ; $7ff8: $0c
	inc  c                                           ; $7ff9: $0c
	inc  c                                           ; $7ffa: $0c
	inc  b                                           ; $7ffb: $04
	dec  b                                           ; $7ffc: $05
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00

Call_081_7fff:
	nop                                              ; $7fff: $00
