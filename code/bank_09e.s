; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $09e", ROMX[$4000], BANK[$9e]

	push bc                                          ; $4000: $c5
	nop                                              ; $4001: $00
	sub  d                                           ; $4002: $92
	nop                                              ; $4003: $00
	nop                                              ; $4004: $00
	ld   bc, $0081                                   ; $4005: $01 $81 $00
	ld   d, $02                                      ; $4008: $16 $02
	nop                                              ; $400a: $00
	rlca                                             ; $400b: $07
	inc  bc                                          ; $400c: $03
	ld   [$1000], sp                                 ; $400d: $08 $00 $10
	ld   bc, $0300                                   ; $4010: $01 $00 $03
	ld   hl, $4607                                   ; $4013: $21 $07 $46
	ld   c, $16                                      ; $4016: $0e $16
	ld   e, $48                                      ; $4018: $1e $48
	dec  c                                           ; $401a: $0d
	ld   hl, $1303                                   ; $401b: $21 $03 $13
	inc  bc                                          ; $401e: $03
	inc  b                                           ; $401f: $04
	add  e                                           ; $4020: $83
	rlca                                             ; $4021: $07
	inc  b                                           ; $4022: $04
	add  hl, bc                                      ; $4023: $09
	ld   bc, $0105                                   ; $4024: $01 $05 $01
	ld   [bc], a                                     ; $4027: $02
	add  c                                           ; $4028: $81
	nop                                              ; $4029: $00
	nop                                              ; $402a: $00
	ld   bc, $008b                                   ; $402b: $01 $8b $00
	nop                                              ; $402e: $00
	ld   bc, $0083                                   ; $402f: $01 $83 $00
	nop                                              ; $4032: $00
	ld   [bc], a                                     ; $4033: $02
	add  e                                           ; $4034: $83
	ld   bc, $0500                                   ; $4035: $01 $00 $05
	add  e                                           ; $4038: $83
	inc  bc                                          ; $4039: $03
	inc  b                                           ; $403a: $04
	rlca                                             ; $403b: $07
	ld   bc, $0003                                   ; $403c: $01 $03 $00
	ld   bc, $0081                                   ; $403f: $01 $81 $00
	nop                                              ; $4042: $00
	ld   bc, $0087                                   ; $4043: $01 $87 $00
	nop                                              ; $4046: $00
	inc  bc                                          ; $4047: $03
	add  l                                           ; $4048: $85
	ld   bc, $0700                                   ; $4049: $01 $00 $07
	add  c                                           ; $404c: $81
	inc  bc                                          ; $404d: $03
	inc  b                                           ; $404e: $04
	ld   [bc], a                                     ; $404f: $02
	inc  bc                                          ; $4050: $03
	rrca                                             ; $4051: $0f
	rlca                                             ; $4052: $07
	dec  b                                           ; $4053: $05
	add  c                                           ; $4054: $81
	rlca                                             ; $4055: $07
	ld   [bc], a                                     ; $4056: $02
	ld   d, $07                                      ; $4057: $16 $07
	dec  b                                           ; $4059: $05
	add  l                                           ; $405a: $85
	rlca                                             ; $405b: $07
	add  b                                           ; $405c: $80
	inc  bc                                          ; $405d: $03
	inc  bc                                          ; $405e: $03
	inc  de                                          ; $405f: $13
	inc  bc                                          ; $4060: $03
	add  hl, bc                                      ; $4061: $09
	ld   bc, $0080                                   ; $4062: $01 $80 $00
	inc  b                                           ; $4065: $04
	inc  b                                           ; $4066: $04
	nop                                              ; $4067: $00
	ld   [bc], a                                     ; $4068: $02
	nop                                              ; $4069: $00
	ld   bc, $0083                                   ; $406a: $01 $83 $00
	inc  b                                           ; $406d: $04
	rlca                                             ; $406e: $07
	nop                                              ; $406f: $00
	jr   c, @+$09                                    ; $4070: $38 $07

	rst  ToBoot                                         ; $4072: $c7
	add  b                                           ; $4073: $80
	ccf                                              ; $4074: $3f
	ld   [bc], a                                     ; $4075: $02
	ld   h, b                                        ; $4076: $60
	ld   a, b                                        ; $4077: $78

jr_09e_4078:
	db   $18, $80                                    ; $4078: $18 $80
	jp   $1e80                                       ; $407a: $c3 $80 $1e


	inc  bc                                          ; $407d: $03
	jr   c, jr_09e_4078                              ; $407e: $38 $f8

	dec  h                                           ; $4080: $25

jr_09e_4081:
	push hl                                          ; $4081: $e5
	add  b                                           ; $4082: $80
	sbc  e                                           ; $4083: $9b
	add  b                                           ; $4084: $80
	ld   [hl], a                                     ; $4085: $77
	add  b                                           ; $4086: $80
	rst  $38                                         ; $4087: $ff
	inc  b                                           ; $4088: $04
	ld   e, h                                        ; $4089: $5c
	call c, $8003                                    ; $408a: $dc $03 $80
	cp   h                                           ; $408d: $bc
	add  e                                           ; $408e: $83
	add  b                                           ; $408f: $80
	nop                                              ; $4090: $00
	cp   b                                           ; $4091: $b8
	add  b                                           ; $4092: $80
	rra                                              ; $4093: $1f
	nop                                              ; $4094: $00
	scf                                              ; $4095: $37
	add  b                                           ; $4096: $80
	inc  sp                                          ; $4097: $33
	ld   [bc], a                                     ; $4098: $02

jr_09e_4099:
	or   c                                           ; $4099: $b1
	ld   [hl], c                                     ; $409a: $71
	ld   [hl], b                                     ; $409b: $70
	add  b                                           ; $409c: $80
	ld   h, b                                        ; $409d: $60
	add  c                                           ; $409e: $81
	ldh  [rSB], a                                    ; $409f: $e0 $01
	ldh  [c], a                                      ; $40a1: $e2
	jp   nz, $c782                                   ; $40a2: $c2 $82 $c7

	nop                                              ; $40a5: $00
	rst  $20                                         ; $40a6: $e7
	add  c                                           ; $40a7: $81
	add  a                                           ; $40a8: $87
	add  h                                           ; $40a9: $84
	adc  a                                           ; $40aa: $8f
	ld   d, $bf                                      ; $40ab: $16 $bf
	rra                                              ; $40ad: $1f
	rst  $30                                         ; $40ae: $f7
	rlca                                             ; $40af: $07
	rra                                              ; $40b0: $1f
	rrca                                             ; $40b1: $0f
	scf                                              ; $40b2: $37
	rra                                              ; $40b3: $1f
	rrca                                             ; $40b4: $0f
	rra                                              ; $40b5: $1f
	ld   [hl], a                                     ; $40b6: $77
	ccf                                              ; $40b7: $3f
	ld   a, [bc]                                     ; $40b8: $0a
	ccf                                              ; $40b9: $3f
	dec  a                                           ; $40ba: $3d
	ccf                                              ; $40bb: $3f
	rst  $10                                         ; $40bc: $d7
	ld   a, a                                        ; $40bd: $7f

jr_09e_40be:
	ld   a, d                                        ; $40be: $7a
	ld   a, a                                        ; $40bf: $7f
	ld   [hl], a                                     ; $40c0: $77
	ld   a, a                                        ; $40c1: $7f
	db   $fd                                         ; $40c2: $fd
	add  c                                           ; $40c3: $81
	rst  $38                                         ; $40c4: $ff
	add  [hl]                                        ; $40c5: $86
	rst  $30                                         ; $40c6: $f7
	ld   [bc], a                                     ; $40c7: $02
	ld   e, [hl]                                     ; $40c8: $5e
	sbc  $8e                                         ; $40c9: $de $8e
	add  c                                           ; $40cb: $81
	sbc  [hl]                                        ; $40cc: $9e
	inc  b                                           ; $40cd: $04
	sbc  b                                           ; $40ce: $98
	sbc  h                                           ; $40cf: $9c
	inc  [hl]                                        ; $40d0: $34
	xor  h                                           ; $40d1: $ac
	inc  h                                           ; $40d2: $24
	add  c                                           ; $40d3: $81
	inc  l                                           ; $40d4: $2c
	nop                                              ; $40d5: $00
	add  hl, hl                                      ; $40d6: $29
	add  e                                           ; $40d7: $83
	dec  l                                           ; $40d8: $2d
	add  b                                           ; $40d9: $80
	inc  l                                           ; $40da: $2c
	ld   a, [bc]                                     ; $40db: $0a
	dec  d                                           ; $40dc: $15
	inc  d                                           ; $40dd: $14
	sub  a                                           ; $40de: $97
	ld   d, $42                                      ; $40df: $16 $42
	ld   [bc], a                                     ; $40e1: $02
	ld   hl, $e801                                   ; $40e2: $21 $01 $e8
	nop                                              ; $40e5: $00
	rst  $30                                         ; $40e6: $f7
	add  l                                           ; $40e7: $85
	nop                                              ; $40e8: $00
	nop                                              ; $40e9: $00
	ldh  a, [$80]                                    ; $40ea: $f0 $80
	db   $10                                         ; $40ec: $10
	add  b                                           ; $40ed: $80
	ldh  a, [$80]                                    ; $40ee: $f0 $80
	ldh  [rSB], a                                    ; $40f0: $e0 $01
	nop                                              ; $40f2: $00
	ldh  a, [$8d]                                    ; $40f3: $f0 $8d
	nop                                              ; $40f5: $00
	ld   [$0084], sp                                 ; $40f6: $08 $84 $00
	rrca                                             ; $40f9: $0f
	nop                                              ; $40fa: $00
	inc  b                                           ; $40fb: $04
	nop                                              ; $40fc: $00
	ld   d, b                                        ; $40fd: $50
	nop                                              ; $40fe: $00
	jr   nz, jr_09e_4081                             ; $40ff: $20 $80

	inc  bc                                          ; $4101: $03
	dec  b                                           ; $4102: $05
	ld   a, b                                        ; $4103: $78
	ld   a, d                                        ; $4104: $7a
	ldh  a, [$f5]                                    ; $4105: $f0 $f5
	ret  nz                                          ; $4107: $c0

	jr   c, jr_09e_4099                              ; $4108: $38 $8f

	nop                                              ; $410a: $00
	ld   [bc], a                                     ; $410b: $02
	add  b                                           ; $410c: $80
	nop                                              ; $410d: $00
	ld   h, b                                        ; $410e: $60
	add  c                                           ; $410f: $81
	nop                                              ; $4110: $00
	nop                                              ; $4111: $00
	rra                                              ; $4112: $1f
	add  b                                           ; $4113: $80
	nop                                              ; $4114: $00
	add  b                                           ; $4115: $80
	rst  $38                                         ; $4116: $ff
	add  b                                           ; $4117: $80
	ld   a, [hl]                                     ; $4118: $7e
	ld   bc, $ff00                                   ; $4119: $01 $00 $ff
	adc  l                                           ; $411c: $8d
	nop                                              ; $411d: $00
	db   $10                                         ; $411e: $10
	stop                                             ; $411f: $10 $00
	jr   jr_09e_4123                                 ; $4121: $18 $00

jr_09e_4123:
	inc  c                                           ; $4123: $0c
	nop                                              ; $4124: $00
	ld   b, $00                                      ; $4125: $06 $00
	add  e                                           ; $4127: $83
	nop                                              ; $4128: $00
	ld   b, b                                        ; $4129: $40
	add  b                                           ; $412a: $80
	or   c                                           ; $412b: $b1
	ret  nz                                          ; $412c: $c0

	add  sp, -$20                                    ; $412d: $e8 $e0
	jr   c, jr_09e_40be                              ; $412f: $38 $8d

	nop                                              ; $4131: $00
	db   $10                                         ; $4132: $10
	db   $10                                         ; $4133: $10
	ldh  [$f8], a                                    ; $4134: $e0 $f8
	ldh  a, [$fc]                                    ; $4136: $f0 $fc
	ld   hl, sp-$02                                  ; $4138: $f8 $fe
	db   $fc                                         ; $413a: $fc
	ld   a, a                                        ; $413b: $7f
	ld   a, [hl]                                     ; $413c: $7e
	cp   [hl]                                        ; $413d: $be
	ld   a, $4b                                      ; $413e: $3e $4b
	rrca                                             ; $4140: $0f
	ld   hl, $1d07                                   ; $4141: $21 $07 $1d
	adc  l                                           ; $4144: $8d
	nop                                              ; $4145: $00
	nop                                              ; $4146: $00
	add  b                                           ; $4147: $80
	add  c                                           ; $4148: $81
	nop                                              ; $4149: $00
	nop                                              ; $414a: $00
	ret  nz                                          ; $414b: $c0

	add  a                                           ; $414c: $87
	add  b                                           ; $414d: $80
	nop                                              ; $414e: $00
	ld   b, b                                        ; $414f: $40

jr_09e_4150:
	add  l                                           ; $4150: $85
	nop                                              ; $4151: $00
	nop                                              ; $4152: $00
	add  b                                           ; $4153: $80
	add  a                                           ; $4154: $87
	nop                                              ; $4155: $00
	ld   [bc], a                                     ; $4156: $02
	push af                                          ; $4157: $f5
	dec  bc                                          ; $4158: $0b
	ld   a, [bc]                                     ; $4159: $0a
	add  c                                           ; $415a: $81
	dec  bc                                          ; $415b: $0b
	add  b                                           ; $415c: $80
	inc  de                                          ; $415d: $13
	ld   c, $56                                      ; $415e: $0e $56
	ld   d, $86                                      ; $4160: $16 $86
	ld   b, $64                                      ; $4162: $06 $64
	inc  b                                           ; $4164: $04
	ld   d, l                                        ; $4165: $55
	inc  b                                           ; $4166: $04
	ld   a, [$0a08]                                  ; $4167: $fa $08 $0a
	add  sp, -$1d                                    ; $416a: $e8 $e3
	db   $e4                                         ; $416c: $e4
	and  $80                                         ; $416d: $e6 $80
	rst  $20                                         ; $416f: $e7
	add  b                                           ; $4170: $80
	ld   c, a                                        ; $4171: $4f
	dec  b                                           ; $4172: $05
	rst  $38                                         ; $4173: $ff
	pop  hl                                          ; $4174: $e1
	ldh  [$c3], a                                    ; $4175: $e0 $c3
	ret  nz                                          ; $4177: $c0

	add  d                                           ; $4178: $82
	sub  a                                           ; $4179: $97
	nop                                              ; $417a: $00
	nop                                              ; $417b: $00
	add  b                                           ; $417c: $80
	add  e                                           ; $417d: $83
	nop                                              ; $417e: $00
	ld   a, [bc]                                     ; $417f: $0a
	db   $f4                                         ; $4180: $f4
	nop                                              ; $4181: $00
	ldh  [rP1], a                                    ; $4182: $e0 $00
	rrca                                             ; $4184: $0f
	nop                                              ; $4185: $00
	inc  bc                                          ; $4186: $03
	nop                                              ; $4187: $00
	xor  b                                           ; $4188: $a8
	nop                                              ; $4189: $00
	or   b                                           ; $418a: $b0
	add  b                                           ; $418b: $80
	nop                                              ; $418c: $00
	inc  bc                                          ; $418d: $03
	ld   e, $1f                                      ; $418e: $1e $1f
	inc  a                                           ; $4190: $3c
	dec  a                                           ; $4191: $3d
	add  b                                           ; $4192: $80
	ld   h, b                                        ; $4193: $60
	add  b                                           ; $4194: $80
	ld   b, b                                        ; $4195: $40
	adc  l                                           ; $4196: $8d
	nop                                              ; $4197: $00
	rlca                                             ; $4198: $07
	add  b                                           ; $4199: $80
	nop                                              ; $419a: $00
	ld   b, b                                        ; $419b: $40
	add  b                                           ; $419c: $80
	cp   h                                           ; $419d: $bc
	ret  nz                                          ; $419e: $c0

	jp   nc, $8010                                   ; $419f: $d2 $10 $80

	call nz, $1c80                                   ; $41a2: $c4 $80 $1c
	add  d                                           ; $41a5: $82
	db   $fc                                         ; $41a6: $fc
	add  b                                           ; $41a7: $80
	ldh  a, [rSB]                                    ; $41a8: $f0 $01
	call $80cc                                       ; $41aa: $cd $cc $80
	dec  sp                                          ; $41ad: $3b
	add  b                                           ; $41ae: $80
	db   $fc                                         ; $41af: $fc
	add  b                                           ; $41b0: $80
	rst  $38                                         ; $41b1: $ff
	ld   [bc], a                                     ; $41b2: $02
	db   $fd                                         ; $41b3: $fd
	rst  $38                                         ; $41b4: $ff
	db   $fd                                         ; $41b5: $fd
	add  l                                           ; $41b6: $85
	nop                                              ; $41b7: $00
	nop                                              ; $41b8: $00
	add  b                                           ; $41b9: $80
	add  c                                           ; $41ba: $81
	nop                                              ; $41bb: $00
	inc  c                                           ; $41bc: $0c
	ld   b, b                                        ; $41bd: $40
	nop                                              ; $41be: $00
	ldh  [$c0], a                                    ; $41bf: $e0 $c0
	ld   [hl], b                                     ; $41c1: $70
	ldh  [hScriptOpcodeParams], a                                    ; $41c2: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $41c4: $e0 $a0
	ldh  [$d0], a                                    ; $41c6: $e0 $d0
	ret  nz                                          ; $41c8: $c0

	ld   b, b                                        ; $41c9: $40
	add  c                                           ; $41ca: $81
	ret  nz                                          ; $41cb: $c0

	nop                                              ; $41cc: $00
	jr   nz, jr_09e_4150                             ; $41cd: $20 $81

	nop                                              ; $41cf: $00
	nop                                              ; $41d0: $00
	ld   b, b                                        ; $41d1: $40
	add  c                                           ; $41d2: $81
	nop                                              ; $41d3: $00
	nop                                              ; $41d4: $00
	ret  nz                                          ; $41d5: $c0

	add  a                                           ; $41d6: $87
	add  b                                           ; $41d7: $80
	nop                                              ; $41d8: $00
	ld   b, b                                        ; $41d9: $40
	add  l                                           ; $41da: $85
	nop                                              ; $41db: $00
	nop                                              ; $41dc: $00
	ret  nz                                          ; $41dd: $c0

	add  c                                           ; $41de: $81
	add  b                                           ; $41df: $80
	ld   [bc], a                                     ; $41e0: $02
	ldh  [$c0], a                                    ; $41e1: $e0 $c0
	ldh  a, [$81]                                    ; $41e3: $f0 $81
	ldh  [$28], a                                    ; $41e5: $e0 $28
	and  b                                           ; $41e7: $a0
	nop                                              ; $41e8: $00
	jr   nc, jr_09e_41eb                             ; $41e9: $30 $00

jr_09e_41eb:
	and  b                                           ; $41eb: $a0
	nop                                              ; $41ec: $00
	dec  d                                           ; $41ed: $15
	nop                                              ; $41ee: $00
	inc  a                                           ; $41ef: $3c
	nop                                              ; $41f0: $00
	ld   [hl-], a                                    ; $41f1: $32
	nop                                              ; $41f2: $00
	jr   z, jr_09e_41f5                              ; $41f3: $28 $00

jr_09e_41f5:
	ld   d, $02                                      ; $41f5: $16 $02
	ld   l, l                                        ; $41f7: $6d
	inc  b                                           ; $41f8: $04
	dec  e                                           ; $41f9: $1d
	inc  c                                           ; $41fa: $0c
	jr   nz, jr_09e_41fd                             ; $41fb: $20 $00

jr_09e_41fd:
	ld   l, e                                        ; $41fd: $6b
	add  hl, sp                                      ; $41fe: $39
	ld   d, b                                        ; $41ff: $50
	ld   b, e                                        ; $4200: $43
	ret  z                                           ; $4201: $c8

	jr   nz, jr_09e_4216                             ; $4202: $20 $12

	rst  ToBoot                                         ; $4204: $c7
	db   $fc                                         ; $4205: $fc
	rst  $38                                         ; $4206: $ff
	ret  nz                                          ; $4207: $c0

	nop                                              ; $4208: $00
	ld   b, b                                        ; $4209: $40
	nop                                              ; $420a: $00
	sub  b                                           ; $420b: $90
	nop                                              ; $420c: $00
	ld   b, h                                        ; $420d: $44
	nop                                              ; $420e: $00
	ld   [hl+], a                                    ; $420f: $22
	add  c                                           ; $4210: $81
	nop                                              ; $4211: $00
	ld   d, $e0                                      ; $4212: $16 $e0
	jr   nz, jr_09e_4239                             ; $4214: $20 $23

jr_09e_4216:
	ld   [hl+], a                                    ; $4216: $22
	xor  $66                                         ; $4217: $ee $66
	and  a                                           ; $4219: $a7
	rst  $20                                         ; $421a: $e7
	db   $eb                                         ; $421b: $eb
	rst  $28                                         ; $421c: $ef
	db   $10                                         ; $421d: $10
	ret  c                                           ; $421e: $d8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $421f: $cf
	rst  $38                                         ; $4220: $ff
	cp   b                                           ; $4221: $b8
	db   $fc                                         ; $4222: $fc
	ldh  a, [$fa]                                    ; $4223: $f0 $fa
	pop  af                                          ; $4225: $f1
	db   $fc                                         ; $4226: $fc
	inc  h                                           ; $4227: $24
	nop                                              ; $4228: $00
	sub  c                                           ; $4229: $91
	add  c                                           ; $422a: $81
	nop                                              ; $422b: $00
	ld   bc, $004c                                   ; $422c: $01 $4c $00
	add  b                                           ; $422f: $80
	ld   h, b                                        ; $4230: $60
	add  b                                           ; $4231: $80
	jr   nz, jr_09e_423c                             ; $4232: $20 $08

	ldh  [rLCDC], a                                  ; $4234: $e0 $40
	nop                                              ; $4236: $00
	ldh  [rAUD4ENV], a                               ; $4237: $e0 $21

jr_09e_4239:
	add  b                                           ; $4239: $80
	ld   h, c                                        ; $423a: $61
	pop  bc                                          ; $423b: $c1

jr_09e_423c:
	ld   bc, $c180                                   ; $423c: $01 $80 $c1
	ld   [bc], a                                     ; $423f: $02
	add  c                                           ; $4240: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4241: $cf
	add  e                                           ; $4242: $83
	add  b                                           ; $4243: $80
	inc  bc                                          ; $4244: $03
	ld   bc, $0383                                   ; $4245: $01 $83 $03
	add  b                                           ; $4248: $80
	ld   bc, $a306                                   ; $4249: $01 $06 $a3
	rst  $38                                         ; $424c: $ff
	add  e                                           ; $424d: $83
	rst  $38                                         ; $424e: $ff
	xor  e                                           ; $424f: $ab
	rst  $38                                         ; $4250: $ff
	cp   a                                           ; $4251: $bf
	add  b                                           ; $4252: $80
	rst  $38                                         ; $4253: $ff
	inc  h                                           ; $4254: $24
	ld   a, a                                        ; $4255: $7f
	rst  $38                                         ; $4256: $ff
	ld   a, a                                        ; $4257: $7f
	ld   e, a                                        ; $4258: $5f
	ld   a, $7e                                      ; $4259: $3e $7e
	ccf                                              ; $425b: $3f
	rrca                                             ; $425c: $0f
	rra                                              ; $425d: $1f
	daa                                              ; $425e: $27
	cpl                                              ; $425f: $2f
	dec  [hl]                                        ; $4260: $35
	inc  sp                                          ; $4261: $33
	adc  l                                           ; $4262: $8d
	inc  c                                           ; $4263: $0c
	jr   nc, jr_09e_4266                             ; $4264: $30 $00

jr_09e_4266:
	rrca                                             ; $4266: $0f
	nop                                              ; $4267: $00
	or   b                                           ; $4268: $b0
	nop                                              ; $4269: $00
	ld   a, a                                        ; $426a: $7f
	ld   [hl], b                                     ; $426b: $70
	nop                                              ; $426c: $00
	rst  $38                                         ; $426d: $ff
	db   $fd                                         ; $426e: $fd
	rst  $38                                         ; $426f: $ff
	db   $fc                                         ; $4270: $fc
	rst  $38                                         ; $4271: $ff
	sbc  $df                                         ; $4272: $de $df
	rst  $28                                         ; $4274: $ef
	rst  JumpTable                                         ; $4275: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4276: $cf
	rst  $38                                         ; $4277: $ff
	ld   e, $df                                      ; $4278: $1e $df
	add  b                                           ; $427a: $80
	cp   $38                                         ; $427b: $fe $38
	ld   a, $fc                                      ; $427d: $3e $fc
	db   $f4                                         ; $427f: $f4
	ld   hl, sp-$1c                                  ; $4280: $f8 $e4
	ldh  [$32], a                                    ; $4282: $e0 $32
	ret  nz                                          ; $4284: $c0

	ld   de, $e000                                   ; $4285: $11 $00 $e0
	nop                                              ; $4288: $00
	stop                                             ; $4289: $10 $00
	ldh  [rP1], a                                    ; $428b: $e0 $00
	xor  b                                           ; $428d: $a8
	nop                                              ; $428e: $00
	jr   nc, jr_09e_4291                             ; $428f: $30 $00

jr_09e_4291:
	and  b                                           ; $4291: $a0
	nop                                              ; $4292: $00
	dec  d                                           ; $4293: $15
	nop                                              ; $4294: $00
	inc  a                                           ; $4295: $3c
	nop                                              ; $4296: $00
	ld   [hl-], a                                    ; $4297: $32
	nop                                              ; $4298: $00
	jr   z, jr_09e_429b                              ; $4299: $28 $00

jr_09e_429b:
	ld   d, $02                                      ; $429b: $16 $02
	ld   l, l                                        ; $429d: $6d
	inc  b                                           ; $429e: $04
	dec  e                                           ; $429f: $1d
	inc  c                                           ; $42a0: $0c
	jr   nz, jr_09e_42a3                             ; $42a1: $20 $00

jr_09e_42a3:
	ld   l, e                                        ; $42a3: $6b
	add  hl, sp                                      ; $42a4: $39
	ld   l, b                                        ; $42a5: $68
	ld   b, e                                        ; $42a6: $43
	ld   hl, sp+$00                                  ; $42a7: $f8 $00
	ld   a, [hl-]                                    ; $42a9: $3a
	rst  ToBoot                                         ; $42aa: $c7
	db   $fc                                         ; $42ab: $fc
	rst  $38                                         ; $42ac: $ff
	ret  nz                                          ; $42ad: $c0

	nop                                              ; $42ae: $00
	ld   b, b                                        ; $42af: $40
	nop                                              ; $42b0: $00
	sub  b                                           ; $42b1: $90
	nop                                              ; $42b2: $00
	ld   b, h                                        ; $42b3: $44
	nop                                              ; $42b4: $00
	ld   [hl+], a                                    ; $42b5: $22
	add  c                                           ; $42b6: $81
	nop                                              ; $42b7: $00
	ld   d, $e0                                      ; $42b8: $16 $e0
	jr   nz, jr_09e_42df                             ; $42ba: $20 $23

	ld   [hl+], a                                    ; $42bc: $22
	xor  $66                                         ; $42bd: $ee $66
	and  a                                           ; $42bf: $a7
	rst  $20                                         ; $42c0: $e7
	db   $eb                                         ; $42c1: $eb
	rst  $28                                         ; $42c2: $ef
	db   $10                                         ; $42c3: $10
	ret  c                                           ; $42c4: $d8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42c5: $cf
	rst  $38                                         ; $42c6: $ff
	cp   e                                           ; $42c7: $bb
	db   $fc                                         ; $42c8: $fc
	di                                               ; $42c9: $f3
	ld   hl, sp-$0d                                  ; $42ca: $f8 $f3
	db   $fc                                         ; $42cc: $fc
	inc  h                                           ; $42cd: $24
	nop                                              ; $42ce: $00
	sub  c                                           ; $42cf: $91
	add  c                                           ; $42d0: $81
	nop                                              ; $42d1: $00
	ld   bc, $004c                                   ; $42d2: $01 $4c $00
	add  b                                           ; $42d5: $80
	ld   h, b                                        ; $42d6: $60
	ld   a, [bc]                                     ; $42d7: $0a
	ldh  [rAUD4LEN], a                               ; $42d8: $e0 $20
	ldh  [rP1], a                                    ; $42da: $e0 $00
	add  b                                           ; $42dc: $80
	ldh  [rAUD4ENV], a                               ; $42dd: $e0 $21

jr_09e_42df:
	add  b                                           ; $42df: $80
	ld   h, c                                        ; $42e0: $61
	pop  bc                                          ; $42e1: $c1
	ld   bc, $c180                                   ; $42e2: $01 $80 $c1
	ld   [bc], a                                     ; $42e5: $02
	add  c                                           ; $42e6: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42e7: $cf
	add  e                                           ; $42e8: $83
	add  b                                           ; $42e9: $80
	inc  bc                                          ; $42ea: $03
	ld   bc, $0383                                   ; $42eb: $01 $83 $03
	add  b                                           ; $42ee: $80
	ld   bc, $a428                                   ; $42ef: $01 $28 $a4
	nop                                              ; $42f2: $00
	jr   nc, jr_09e_42f5                             ; $42f3: $30 $00

jr_09e_42f5:
	and  b                                           ; $42f5: $a0
	nop                                              ; $42f6: $00
	dec  d                                           ; $42f7: $15
	nop                                              ; $42f8: $00
	inc  a                                           ; $42f9: $3c
	nop                                              ; $42fa: $00
	ld   [hl-], a                                    ; $42fb: $32
	nop                                              ; $42fc: $00
	jr   z, jr_09e_42ff                              ; $42fd: $28 $00

jr_09e_42ff:
	ld   d, $02                                      ; $42ff: $16 $02
	ld   l, l                                        ; $4301: $6d
	inc  b                                           ; $4302: $04
	dec  e                                           ; $4303: $1d
	inc  c                                           ; $4304: $0c
	jr   nz, jr_09e_4307                             ; $4305: $20 $00

jr_09e_4307:
	ld   l, e                                        ; $4307: $6b
	add  hl, sp                                      ; $4308: $39
	ld   d, b                                        ; $4309: $50
	ld   a, a                                        ; $430a: $7f
	ld   [$291f], a                                  ; $430b: $ea $1f $29
	ret  nz                                          ; $430e: $c0

	pop  hl                                          ; $430f: $e1
	rst  $38                                         ; $4310: $ff
	ret  nz                                          ; $4311: $c0

	nop                                              ; $4312: $00
	ld   b, b                                        ; $4313: $40
	nop                                              ; $4314: $00
	sub  b                                           ; $4315: $90
	nop                                              ; $4316: $00
	ld   b, h                                        ; $4317: $44
	nop                                              ; $4318: $00
	ld   [hl+], a                                    ; $4319: $22
	add  c                                           ; $431a: $81
	nop                                              ; $431b: $00
	ld   d, $e0                                      ; $431c: $16 $e0
	jr   nz, jr_09e_4343                             ; $431e: $20 $23

	ld   [hl+], a                                    ; $4320: $22
	xor  $66                                         ; $4321: $ee $66
	and  a                                           ; $4323: $a7
	rst  $20                                         ; $4324: $e7
	db   $eb                                         ; $4325: $eb
	rst  $28                                         ; $4326: $ef
	db   $10                                         ; $4327: $10
	ret  c                                           ; $4328: $d8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4329: $cf
	rst  $38                                         ; $432a: $ff
	cp   h                                           ; $432b: $bc
	rst  $38                                         ; $432c: $ff
	di                                               ; $432d: $f3
	rst  $38                                         ; $432e: $ff
	di                                               ; $432f: $f3
	ld   hl, sp+$23                                  ; $4330: $f8 $23
	nop                                              ; $4332: $00
	sub  c                                           ; $4333: $91
	add  c                                           ; $4334: $81
	nop                                              ; $4335: $00
	ld   bc, $004c                                   ; $4336: $01 $4c $00
	add  c                                           ; $4339: $81
	ld   h, b                                        ; $433a: $60
	add  hl, bc                                      ; $433b: $09
	ldh  [rAUD4LEN], a                               ; $433c: $e0 $20
	add  b                                           ; $433e: $80
	ld   b, b                                        ; $433f: $40
	jr   nz, @+$23                                   ; $4340: $20 $21

	add  b                                           ; $4342: $80

jr_09e_4343:
	ld   h, c                                        ; $4343: $61
	pop  bc                                          ; $4344: $c1
	ld   bc, $c180                                   ; $4345: $01 $80 $c1
	ld   [bc], a                                     ; $4348: $02
	add  c                                           ; $4349: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $434a: $cf
	add  e                                           ; $434b: $83
	add  b                                           ; $434c: $80
	inc  bc                                          ; $434d: $03
	ld   bc, $0383                                   ; $434e: $01 $83 $03
	add  b                                           ; $4351: $80
	ld   bc, $a306                                   ; $4352: $01 $06 $a3
	rst  $38                                         ; $4355: $ff
	add  e                                           ; $4356: $83
	rst  $38                                         ; $4357: $ff
	xor  e                                           ; $4358: $ab
	rst  $38                                         ; $4359: $ff
	cp   a                                           ; $435a: $bf
	add  b                                           ; $435b: $80
	rst  $38                                         ; $435c: $ff
	scf                                              ; $435d: $37
	ld   a, a                                        ; $435e: $7f
	rst  $38                                         ; $435f: $ff
	ld   a, a                                        ; $4360: $7f
	ld   e, h                                        ; $4361: $5c
	ld   a, $7e                                      ; $4362: $3e $7e
	ld   a, $0c                                      ; $4364: $3e $0c
	rra                                              ; $4366: $1f
	ld   h, $2f                                      ; $4367: $26 $2f
	dec  [hl]                                        ; $4369: $35
	inc  sp                                          ; $436a: $33
	adc  l                                           ; $436b: $8d
	inc  c                                           ; $436c: $0c
	jr   nc, jr_09e_436f                             ; $436d: $30 $00

jr_09e_436f:
	rrca                                             ; $436f: $0f
	nop                                              ; $4370: $00
	or   b                                           ; $4371: $b0
	nop                                              ; $4372: $00
	ld   a, a                                        ; $4373: $7f
	ld   [hl], b                                     ; $4374: $70
	nop                                              ; $4375: $00
	rst  $38                                         ; $4376: $ff
	db   $fd                                         ; $4377: $fd
	rst  $38                                         ; $4378: $ff
	db   $fc                                         ; $4379: $fc
	rst  $38                                         ; $437a: $ff
	sbc  $df                                         ; $437b: $de $df
	rst  $28                                         ; $437d: $ef
	rst  JumpTable                                         ; $437e: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $437f: $cf
	rst  $38                                         ; $4380: $ff
	ld   e, $5f                                      ; $4381: $1e $5f
	sbc  $be                                         ; $4383: $de $be
	ld   e, $7c                                      ; $4385: $1e $7c
	or   h                                           ; $4387: $b4
	ld   hl, sp-$1c                                  ; $4388: $f8 $e4
	ldh  [$32], a                                    ; $438a: $e0 $32
	ret  nz                                          ; $438c: $c0

	ld   de, $e000                                   ; $438d: $11 $00 $e0
	nop                                              ; $4390: $00
	stop                                             ; $4391: $10 $00
	ldh  [rP1], a                                    ; $4393: $e0 $00
	cp   b                                           ; $4395: $b8
	add  e                                           ; $4396: $83
	nop                                              ; $4397: $00
	ld   [bc], a                                     ; $4398: $02
	jr   nc, jr_09e_439b                             ; $4399: $30 $00

jr_09e_439b:
	rrca                                             ; $439b: $0f
	add  b                                           ; $439c: $80
	jr   nc, @-$7e                                   ; $439d: $30 $80

	ccf                                              ; $439f: $3f
	inc  bc                                          ; $43a0: $03
	rrca                                             ; $43a1: $0f
	rst  $38                                         ; $43a2: $ff
	nop                                              ; $43a3: $00
	adc  a                                           ; $43a4: $8f
	rst  $38                                         ; $43a5: $ff
	nop                                              ; $43a6: $00
	rst  $38                                         ; $43a7: $ff
	nop                                              ; $43a8: $00
	rst  $38                                         ; $43a9: $ff
	nop                                              ; $43aa: $00
	rst  $38                                         ; $43ab: $ff
	nop                                              ; $43ac: $00
	rst  $38                                         ; $43ad: $ff
	nop                                              ; $43ae: $00
	rst  $38                                         ; $43af: $ff
	nop                                              ; $43b0: $00
	rst  $38                                         ; $43b1: $ff
	nop                                              ; $43b2: $00
	and  [hl]                                        ; $43b3: $a6
	nop                                              ; $43b4: $00
	ld   sp, hl                                      ; $43b5: $f9
	nop                                              ; $43b6: $00
	ld   b, $64                                      ; $43b7: $06 $64
	nop                                              ; $43b9: $00
	ld   e, h                                        ; $43ba: $5c
	nop                                              ; $43bb: $00
	jr   nz, jr_09e_43be                             ; $43bc: $20 $00

jr_09e_43be:
	ld   [$0081], sp                                 ; $43be: $08 $81 $00
	dec  b                                           ; $43c1: $05
	inc  c                                           ; $43c2: $0c
	nop                                              ; $43c3: $00
	ld   a, [hl-]                                    ; $43c4: $3a
	jr   jr_09e_43e4                                 ; $43c5: $18 $1d

	inc  e                                           ; $43c7: $1c
	add  b                                           ; $43c8: $80
	jr   jr_09e_43cc                                 ; $43c9: $18 $01

	ld   a, e                                        ; $43cb: $7b

jr_09e_43cc:
	dec  sp                                          ; $43cc: $3b
	add  b                                           ; $43cd: $80
	scf                                              ; $43ce: $37
	ld   bc, $77f7                                   ; $43cf: $01 $f7 $77
	add  b                                           ; $43d2: $80
	ld   l, a                                        ; $43d3: $6f
	add  b                                           ; $43d4: $80
	ld   l, [hl]                                     ; $43d5: $6e
	add  b                                           ; $43d6: $80
	sbc  $80                                         ; $43d7: $de $80
	db   $dd                                         ; $43d9: $dd
	nop                                              ; $43da: $00
	rst  $38                                         ; $43db: $ff
	adc  c                                           ; $43dc: $89
	nop                                              ; $43dd: $00
	nop                                              ; $43de: $00
	ld   bc, $0083                                   ; $43df: $01 $83 $00
	ld   [bc], a                                     ; $43e2: $02
	inc  bc                                          ; $43e3: $03

jr_09e_43e4:
	ld   bc, $8100                                   ; $43e4: $01 $00 $81
	ld   bc, $0500                                   ; $43e7: $01 $00 $05
	add  b                                           ; $43ea: $80
	inc  bc                                          ; $43eb: $03
	add  c                                           ; $43ec: $81
	ld   [bc], a                                     ; $43ed: $02
	ld   [$060e], sp                                 ; $43ee: $08 $0e $06
	nop                                              ; $43f1: $00
	ld   b, $00                                      ; $43f2: $06 $00
	dec  b                                           ; $43f4: $05
	dec  e                                           ; $43f5: $1d

jr_09e_43f6:
	dec  c                                           ; $43f6: $0d
	ld   [$0b81], sp                                 ; $43f7: $08 $81 $0b
	nop                                              ; $43fa: $00

jr_09e_43fb:
	add  hl, sp                                      ; $43fb: $39
	add  e                                           ; $43fc: $83
	dec  de                                          ; $43fd: $1b
	nop                                              ; $43fe: $00
	ld   [hl], a                                     ; $43ff: $77

Call_09e_4400:
	add  l                                           ; $4400: $85
	scf                                              ; $4401: $37
	add  b                                           ; $4402: $80
	daa                                              ; $4403: $27
	nop                                              ; $4404: $00
	rst  $28                                         ; $4405: $ef
	add  e                                           ; $4406: $83
	ld   l, a                                        ; $4407: $6f
	add  b                                           ; $4408: $80
	ld   c, a                                        ; $4409: $4f
	nop                                              ; $440a: $00
	ld   d, a                                        ; $440b: $57
	adc  e                                           ; $440c: $8b
	ld   b, a                                        ; $440d: $47
	add  b                                           ; $440e: $80
	ld   b, e                                        ; $440f: $43
	rlca                                             ; $4410: $07
	ld   c, e                                        ; $4411: $4b
	ld   b, e                                        ; $4412: $43
	ld   [hl], e                                     ; $4413: $73
	ld   h, e                                        ; $4414: $63
	and  e                                           ; $4415: $a3
	inc  hl                                          ; $4416: $23
	dec  h                                           ; $4417: $25
	ld   hl, $2080                                   ; $4418: $21 $80 $20
	ld   [$303a], sp                                 ; $441b: $08 $3a $30
	ld   d, b                                        ; $441e: $50
	db   $10                                         ; $441f: $10
	jr   c, jr_09e_4422                              ; $4420: $38 $00

jr_09e_4422:
	ld   [bc], a                                     ; $4422: $02
	nop                                              ; $4423: $00
	inc  b                                           ; $4424: $04
	adc  c                                           ; $4425: $89
	inc  bc                                          ; $4426: $03
	nop                                              ; $4427: $00
	rlca                                             ; $4428: $07
	add  c                                           ; $4429: $81
	ld   bc, $0500                                   ; $442a: $01 $00 $05
	add  e                                           ; $442d: $83
	inc  bc                                          ; $442e: $03
	ld   a, [de]                                     ; $442f: $1a
	rlca                                             ; $4430: $07
	nop                                              ; $4431: $00
	ld   [bc], a                                     ; $4432: $02
	nop                                              ; $4433: $00
	ld   [bc], a                                     ; $4434: $02
	nop                                              ; $4435: $00
	inc  b                                           ; $4436: $04
	ld   [bc], a                                     ; $4437: $02
	ld   a, [bc]                                     ; $4438: $0a
	ld   b, $16                                      ; $4439: $06 $16
	ld   c, $2e                                      ; $443b: $0e $2e
	ld   e, $5c                                      ; $443d: $1e $5c
	ld   a, $ba                                      ; $443f: $3e $ba
	ld   a, [hl]                                     ; $4441: $7e
	ld   [hl], h                                     ; $4442: $74
	ld   a, h                                        ; $4443: $7c
	ld   l, b                                        ; $4444: $68
	dec  sp                                          ; $4445: $3b
	cp   e                                           ; $4446: $bb
	dec  de                                          ; $4447: $1b
	ld   b, e                                        ; $4448: $43
	rlca                                             ; $4449: $07
	daa                                              ; $444a: $27
	add  b                                           ; $444b: $80
	rlca                                             ; $444c: $07
	ld   hl, $0e0f                                   ; $444d: $21 $0f $0e
	rrca                                             ; $4450: $0f
	dec  c                                           ; $4451: $0d
	inc  bc                                          ; $4452: $03
	add  hl, sp                                      ; $4453: $39
	ld   bc, $0004                                   ; $4454: $01 $04 $00
	call c, $1e1f                                    ; $4457: $dc $1f $1e
	rst  $38                                         ; $445a: $ff
	cp   $f8                                         ; $445b: $fe $f8
	db   $fd                                         ; $445d: $fd
	db   $e4                                         ; $445e: $e4
	ld   a, [$f4d8]                                  ; $445f: $fa $d8 $f4
	or   b                                           ; $4462: $b0
	add  sp, $60                                     ; $4463: $e8 $60
	nop                                              ; $4465: $00
	add  b                                           ; $4466: $80
	sub  b                                           ; $4467: $90
	ret  nz                                          ; $4468: $c0

	pop  hl                                          ; $4469: $e1
	add  b                                           ; $446a: $80
	add  e                                           ; $446b: $83
	add  b                                           ; $446c: $80
	add  $00                                         ; $446d: $c6 $00
	inc  c                                           ; $446f: $0c
	add  c                                           ; $4470: $81
	nop                                              ; $4471: $00
	nop                                              ; $4472: $00
	jr   jr_09e_43f6                                 ; $4473: $18 $81

	nop                                              ; $4475: $00
	add  hl, bc                                      ; $4476: $09
	ld   e, a                                        ; $4477: $5f
	nop                                              ; $4478: $00
	jr   nc, jr_09e_43fb                             ; $4479: $30 $80

	ld   b, [hl]                                     ; $447b: $46
	ret  nz                                          ; $447c: $c0

	xor  h                                           ; $447d: $ac
	and  b                                           ; $447e: $a0
	and  c                                           ; $447f: $a1
	and  b                                           ; $4480: $a0
	add  b                                           ; $4481: $80
	ld   h, b                                        ; $4482: $60
	ld   [bc], a                                     ; $4483: $02
	ld   a, b                                        ; $4484: $78
	ld   [hl], b                                     ; $4485: $70
	ld   a, b                                        ; $4486: $78
	add  d                                           ; $4487: $82
	ld   hl, sp-$7f                                  ; $4488: $f8 $81
	ld   a, b                                        ; $448a: $78
	add  b                                           ; $448b: $80
	jr   jr_09e_4490                                 ; $448c: $18 $02

	ld   h, b                                        ; $448e: $60
	nop                                              ; $448f: $00

jr_09e_4490:
	sbc  b                                           ; $4490: $98
	add  e                                           ; $4491: $83
	nop                                              ; $4492: $00
	ld   b, $8b                                      ; $4493: $06 $8b
	ldh  a, [rP1]                                    ; $4495: $f0 $00
	add  b                                           ; $4497: $80
	ld   a, h                                        ; $4498: $7c
	nop                                              ; $4499: $00
	add  e                                           ; $449a: $83
	sub  a                                           ; $449b: $97
	nop                                              ; $449c: $00
	nop                                              ; $449d: $00
	rst  $38                                         ; $449e: $ff

jr_09e_449f:
	add  b                                           ; $449f: $80
	ld   a, b                                        ; $44a0: $78
	dec  c                                           ; $44a1: $0d
	ld   [$02f8], sp                                 ; $44a2: $08 $f8 $02
	ld   c, $00                                      ; $44a5: $0e $00
	ld   [bc], a                                     ; $44a7: $02
	nop                                              ; $44a8: $00
	ld   bc, $0800                                   ; $44a9: $01 $00 $08
	nop                                              ; $44ac: $00
	inc  c                                           ; $44ad: $0c
	nop                                              ; $44ae: $00
	inc  b                                           ; $44af: $04
	sub  a                                           ; $44b0: $97
	nop                                              ; $44b1: $00
	ld   [de], a                                     ; $44b2: $12
	add  b                                           ; $44b3: $80
	nop                                              ; $44b4: $00
	ld   b, b                                        ; $44b5: $40
	add  b                                           ; $44b6: $80
	and  b                                           ; $44b7: $a0
	ret  nz                                          ; $44b8: $c0

	ret  nc                                          ; $44b9: $d0

	ldh  [$a8], a                                    ; $44ba: $e0 $a8
	ldh  [$80], a                                    ; $44bc: $e0 $80
	ld   [hl], b                                     ; $44be: $70
	ld   h, h                                        ; $44bf: $64
	or   b                                           ; $44c0: $b0
	cp   e                                           ; $44c1: $bb
	cp   b                                           ; $44c2: $b8
	jr   jr_09e_449f                                 ; $44c3: $18 $da

	sbc  d                                           ; $44c5: $9a
	add  c                                           ; $44c6: $81
	db   $db                                         ; $44c7: $db
	inc  bc                                          ; $44c8: $03
	ld   e, e                                        ; $44c9: $5b
	inc  b                                           ; $44ca: $04
	ld   b, b                                        ; $44cb: $40
	ld   [hl+], a                                    ; $44cc: $22
	add  b                                           ; $44cd: $80
	ld   [hl], $03                                   ; $44ce: $36 $03
	ld   a, $7c                                      ; $44d0: $3e $7c
	ld   a, l                                        ; $44d2: $7d
	ld   [hl], c                                     ; $44d3: $71
	add  c                                           ; $44d4: $81
	ld   [hl], e                                     ; $44d5: $73

jr_09e_44d6:
	inc  bc                                          ; $44d6: $03
	ld   h, e                                        ; $44d7: $63
	ld   h, a                                        ; $44d8: $67
	rlca                                             ; $44d9: $07
	ld   [hl], a                                     ; $44da: $77
	add  c                                           ; $44db: $81
	rlca                                             ; $44dc: $07
	inc  l                                           ; $44dd: $2c
	ld   b, $07                                      ; $44de: $06 $07
	ld   b, $07                                      ; $44e0: $06 $07
	dec  bc                                          ; $44e2: $0b
	inc  bc                                          ; $44e3: $03
	ld   b, e                                        ; $44e4: $43
	inc  bc                                          ; $44e5: $03
	inc  b                                           ; $44e6: $04
	nop                                              ; $44e7: $00
	ld   [bc], a                                     ; $44e8: $02
	nop                                              ; $44e9: $00
	add  hl, sp                                      ; $44ea: $39
	nop                                              ; $44eb: $00
	ccf                                              ; $44ec: $3f
	jr   c, jr_09e_44d6                              ; $44ed: $38 $e7

	rst  $38                                         ; $44ef: $ff
	ld   e, c                                        ; $44f0: $59
	ld   a, a                                        ; $44f1: $7f
	adc  d                                           ; $44f2: $8a
	cp   a                                           ; $44f3: $bf
	sub  c                                           ; $44f4: $91
	sbc  a                                           ; $44f5: $9f
	and  $e3                                         ; $44f6: $e6 $e3
	ld   l, b                                        ; $44f8: $68
	ld   hl, sp+$54                                  ; $44f9: $f8 $54
	rst  $38                                         ; $44fb: $ff
	cp   b                                           ; $44fc: $b8
	db   $fd                                         ; $44fd: $fd
	ld   a, [$b1fb]                                  ; $44fe: $fa $fb $b1
	pop  af                                          ; $4501: $f1
	db   $eb                                         ; $4502: $eb
	ld   l, e                                        ; $4503: $6b
	ld   [bc], a                                     ; $4504: $02
	rst  $38                                         ; $4505: $ff
	or   l                                           ; $4506: $b5
	rst  $38                                         ; $4507: $ff
	inc  [hl]                                        ; $4508: $34
	inc  a                                           ; $4509: $3c
	rst  $38                                         ; $450a: $ff
	add  c                                           ; $450b: $81
	nop                                              ; $450c: $00
	dec  bc                                          ; $450d: $0b

jr_09e_450e:
	add  b                                           ; $450e: $80
	nop                                              ; $450f: $00

jr_09e_4510:
	ret  nz                                          ; $4510: $c0

	add  b                                           ; $4511: $80
	ldh  [$c0], a                                    ; $4512: $e0 $c0
	ld   [hl], b                                     ; $4514: $70
	ldh  [rLCDC], a                                  ; $4515: $e0 $40
	ret  nz                                          ; $4517: $c0

	stop                                             ; $4518: $10 $00
	add  b                                           ; $451a: $80
	ret  nz                                          ; $451b: $c0

	ld   [bc], a                                     ; $451c: $02
	ld   b, b                                        ; $451d: $40
	ret  nz                                          ; $451e: $c0

	ld   b, b                                        ; $451f: $40
	add  c                                           ; $4520: $81
	ret  nz                                          ; $4521: $c0

	nop                                              ; $4522: $00
	and  b                                           ; $4523: $a0
	add  c                                           ; $4524: $81
	add  b                                           ; $4525: $80
	inc  b                                           ; $4526: $04
	ld   b, b                                        ; $4527: $40
	nop                                              ; $4528: $00
	add  b                                           ; $4529: $80
	nop                                              ; $452a: $00
	ld   b, b                                        ; $452b: $40
	add  l                                           ; $452c: $85
	nop                                              ; $452d: $00
	inc  b                                           ; $452e: $04
	jr   nc, jr_09e_4531                             ; $452f: $30 $00

jr_09e_4531:
	inc  c                                           ; $4531: $0c
	jr   nc, @+$75                                   ; $4532: $30 $73

	add  b                                           ; $4534: $80
	inc  e                                           ; $4535: $1c
	add  b                                           ; $4536: $80
	rra                                              ; $4537: $1f
	add  b                                           ; $4538: $80
	ld   e, $0f                                      ; $4539: $1e $0f
	ld   [bc], a                                     ; $453b: $02
	ld   a, [hl]                                     ; $453c: $7e
	nop                                              ; $453d: $00
	jp   $9c00                                       ; $453e: $c3 $00 $9c


	nop                                              ; $4541: $00
	inc  hl                                          ; $4542: $23
	inc  c                                           ; $4543: $0c
	call z, $fe00                                    ; $4544: $cc $00 $fe
	nop                                              ; $4547: $00
	ld   a, l                                        ; $4548: $7d
	nop                                              ; $4549: $00
	inc  e                                           ; $454a: $1c
	add  c                                           ; $454b: $81
	nop                                              ; $454c: $00
	nop                                              ; $454d: $00
	and  b                                           ; $454e: $a0
	add  a                                           ; $454f: $87
	nop                                              ; $4550: $00
	inc  b                                           ; $4551: $04
	jr   nz, @+$42                                   ; $4552: $20 $40

	ld   d, b                                        ; $4554: $50
	ld   h, b                                        ; $4555: $60
	ld   l, b                                        ; $4556: $68
	add  b                                           ; $4557: $80
	ld   [hl], b                                     ; $4558: $70
	dec  b                                           ; $4559: $05
	jr   nc, jr_09e_4510                             ; $455a: $30 $b4

	jr   nc, jr_09e_450e                             ; $455c: $30 $b0

	ld   l, b                                        ; $455e: $68
	ld   l, d                                        ; $455f: $6a
	add  b                                           ; $4560: $80
	call c, $3c80                                    ; $4561: $dc $80 $3c
	rrca                                             ; $4564: $0f
	inc  e                                           ; $4565: $1c
	db   $fd                                         ; $4566: $fd
	ld   c, $1e                                      ; $4567: $0e $1e
	ld   b, $ce                                      ; $4569: $06 $ce
	ld   [bc], a                                     ; $456b: $02
	or   $00                                         ; $456c: $f6 $00

jr_09e_456e:
	dec  [hl]                                        ; $456e: $35
	nop                                              ; $456f: $00
	add  b                                           ; $4570: $80
	nop                                              ; $4571: $00
	ld   b, b                                        ; $4572: $40
	nop                                              ; $4573: $00
	ret  z                                           ; $4574: $c8

	add  e                                           ; $4575: $83
	inc  b                                           ; $4576: $04
	ld   a, [bc]                                     ; $4577: $0a
	inc  d                                           ; $4578: $14
	inc  c                                           ; $4579: $0c
	dec  l                                           ; $457a: $2d
	ld   e, $5e                                      ; $457b: $1e $5e
	ld   e, $d8                                      ; $457d: $1e $d8
	ld   b, $ab                                      ; $457f: $06 $ab
	inc  bc                                          ; $4581: $03
	rla                                              ; $4582: $17
	adc  e                                           ; $4583: $8b
	nop                                              ; $4584: $00
	nop                                              ; $4585: $00
	add  b                                           ; $4586: $80
	add  c                                           ; $4587: $81
	nop                                              ; $4588: $00
	nop                                              ; $4589: $00
	ld   b, b                                        ; $458a: $40
	add  d                                           ; $458b: $82
	nop                                              ; $458c: $00
	inc  bc                                          ; $458d: $03
	add  b                                           ; $458e: $80
	and  b                                           ; $458f: $a0
	ret  nz                                          ; $4590: $c0

	ret  nc                                          ; $4591: $d0

	add  e                                           ; $4592: $83
	ldh  [rSC], a                                    ; $4593: $e0 $02
	ld   d, b                                        ; $4595: $50
	add  b                                           ; $4596: $80
	nop                                              ; $4597: $00
	add  e                                           ; $4598: $83
	add  b                                           ; $4599: $80
	ld   c, $30                                      ; $459a: $0e $30
	add  b                                           ; $459c: $80
	cp   h                                           ; $459d: $bc
	add  b                                           ; $459e: $80
	rst  $28                                         ; $459f: $ef
	ret  nz                                          ; $45a0: $c0

	jp   $c1c0                                       ; $45a1: $c3 $c0 $c1


	ret  nz                                          ; $45a4: $c0

	call c, $82c0                                    ; $45a5: $dc $c0 $82
	cp   h                                           ; $45a8: $bc
	inc  a                                           ; $45a9: $3c
	add  b                                           ; $45aa: $80
	ld   a, a                                        ; $45ab: $7f
	inc  bc                                          ; $45ac: $03
	db   $e3                                         ; $45ad: $e3
	rst  $28                                         ; $45ae: $ef
	ret  nz                                          ; $45af: $c0

	call z, $0080                                    ; $45b0: $cc $80 $00
	dec  bc                                          ; $45b3: $0b
	cp   $41                                         ; $45b4: $fe $41
	nop                                              ; $45b6: $00
	jr   nz, jr_09e_45b9                             ; $45b7: $20 $00

jr_09e_45b9:
	ld   b, b                                        ; $45b9: $40
	nop                                              ; $45ba: $00
	stop                                             ; $45bb: $10 $00
	inc  l                                           ; $45bd: $2c
	nop                                              ; $45be: $00
	add  d                                           ; $45bf: $82
	add  b                                           ; $45c0: $80
	ld   [$0c01], sp                                 ; $45c1: $08 $01 $0c
	dec  c                                           ; $45c4: $0d
	add  b                                           ; $45c5: $80
	ld   c, $0f                                      ; $45c6: $0e $0f
	inc  c                                           ; $45c8: $0c
	dec  l                                           ; $45c9: $2d
	ld   [$000a], sp                                 ; $45ca: $08 $0a $00
	sub  d                                           ; $45cd: $92
	nop                                              ; $45ce: $00
	ret  c                                           ; $45cf: $d8

	inc  [hl]                                        ; $45d0: $34
	add  hl, sp                                      ; $45d1: $39
	ld   a, [hl-]                                    ; $45d2: $3a
	ld   a, $5e                                      ; $45d3: $3e $5e
	rra                                              ; $45d5: $1f
	jr   z, jr_09e_456e                              ; $45d6: $28 $96

	adc  [hl]                                        ; $45d8: $8e
	nop                                              ; $45d9: $00
	add  b                                           ; $45da: $80
	ld   hl, sp-$80                                  ; $45db: $f8 $80
	ld   h, b                                        ; $45dd: $60
	sub  c                                           ; $45de: $91
	nop                                              ; $45df: $00
	add  d                                           ; $45e0: $82
	ld   bc, $0380                                   ; $45e1: $01 $80 $03
	add  d                                           ; $45e4: $82
	rlca                                             ; $45e5: $07
	add  b                                           ; $45e6: $80
	rrca                                             ; $45e7: $0f
	add  b                                           ; $45e8: $80
	ld   e, $05                                      ; $45e9: $1e $05
	inc  a                                           ; $45eb: $3c
	dec  a                                           ; $45ec: $3d
	add  hl, sp                                      ; $45ed: $39
	dec  sp                                          ; $45ee: $3b
	inc  sp                                          ; $45ef: $33
	scf                                              ; $45f0: $37
	add  b                                           ; $45f1: $80
	daa                                              ; $45f2: $27
	ld   bc, $4047                                   ; $45f3: $01 $47 $40
	adc  [hl]                                        ; $45f6: $8e
	nop                                              ; $45f7: $00
	add  b                                           ; $45f8: $80
	ld   e, $80                                      ; $45f9: $1e $80
	ld   bc, $0080                                   ; $45fb: $01 $80 $00
	add  b                                           ; $45fe: $80
	ld   h, b                                        ; $45ff: $60
	add  b                                           ; $4600: $80
	ld   [hl], e                                     ; $4601: $73
	add  b                                           ; $4602: $80
	ldh  [$80], a                                    ; $4603: $e0 $80
	ret  c                                           ; $4605: $d8

	add  b                                           ; $4606: $80
	add  [hl]                                        ; $4607: $86

jr_09e_4608:
	add  b                                           ; $4608: $80
	and  c                                           ; $4609: $a1
	add  b                                           ; $460a: $80
	ret  nc                                          ; $460b: $d0

	add  b                                           ; $460c: $80
	db   $ed                                         ; $460d: $ed
	add  b                                           ; $460e: $80
	rst  $30                                         ; $460f: $f7
	add  b                                           ; $4610: $80
	di                                               ; $4611: $f3
	add  b                                           ; $4612: $80
	rst  $28                                         ; $4613: $ef
	add  d                                           ; $4614: $82
	rst  JumpTable                                         ; $4615: $df
	inc  b                                           ; $4616: $04
	adc  a                                           ; $4617: $8f
	xor  a                                           ; $4618: $af
	daa                                              ; $4619: $27
	ld   [hl], a                                     ; $461a: $77
	ld   [hl], e                                     ; $461b: $73
	add  c                                           ; $461c: $81
	di                                               ; $461d: $f3
	add  b                                           ; $461e: $80
	pop  af                                          ; $461f: $f1
	add  e                                           ; $4620: $83
	ldh  a, [$87]                                    ; $4621: $f0 $87
	nop                                              ; $4623: $00
	ld   [bc], a                                     ; $4624: $02
	ld   b, b                                        ; $4625: $40
	nop                                              ; $4626: $00
	ld   b, b                                        ; $4627: $40
	add  l                                           ; $4628: $85
	nop                                              ; $4629: $00
	db   $10                                         ; $462a: $10
	ldh  a, [$80]                                    ; $462b: $f0 $80
	ld   [$0460], sp                                 ; $462d: $08 $60 $04
	jr   jr_09e_4694                                 ; $4630: $18 $62

	nop                                              ; $4632: $00
	sbc  d                                           ; $4633: $9a
	ret  nz                                          ; $4634: $c0

	nop                                              ; $4635: $00
	jr   nz, jr_09e_4638                             ; $4636: $20 $00

jr_09e_4638:
	db   $10                                         ; $4638: $10
	db   $f4                                         ; $4639: $f4
	add  b                                           ; $463a: $80
	nop                                              ; $463b: $00
	add  c                                           ; $463c: $81
	ld   b, b                                        ; $463d: $40
	ld   bc, $f0c8                                   ; $463e: $01 $c8 $f0
	add  b                                           ; $4641: $80
	ldh  [$80], a                                    ; $4642: $e0 $80
	ret  nz                                          ; $4644: $c0

	inc  bc                                          ; $4645: $03
	and  b                                           ; $4646: $a0
	add  b                                           ; $4647: $80
	ld   d, b                                        ; $4648: $50
	ld   b, b                                        ; $4649: $40
	add  c                                           ; $464a: $81
	ret  nz                                          ; $464b: $c0

	add  b                                           ; $464c: $80
	ldh  [$87], a                                    ; $464d: $e0 $87
	ldh  a, [$80]                                    ; $464f: $f0 $80
	ld   h, b                                        ; $4651: $60
	nop                                              ; $4652: $00
	adc  [hl]                                        ; $4653: $8e
	add  l                                           ; $4654: $85
	ld   [hl], l                                     ; $4655: $75
	add  c                                           ; $4656: $81
	push hl                                          ; $4657: $e5
	ld   bc, $e0e1                                   ; $4658: $01 $e1 $e0
	add  b                                           ; $465b: $80
	db   $e4                                         ; $465c: $e4
	add  hl, bc                                      ; $465d: $09
	db   $ec                                         ; $465e: $ec
	adc  h                                           ; $465f: $8c
	adc  a                                           ; $4660: $8f
	ccf                                              ; $4661: $3f
	ld   b, b                                        ; $4662: $40
	jr   nc, jr_09e_4608                             ; $4663: $30 $a3

	xor  h                                           ; $4665: $ac
	add  b                                           ; $4666: $80
	or   b                                           ; $4667: $b0
	add  c                                           ; $4668: $81
	nop                                              ; $4669: $00
	add  c                                           ; $466a: $81
	ld   b, b                                        ; $466b: $40
	inc  bc                                          ; $466c: $03
	nop                                              ; $466d: $00
	cp   b                                           ; $466e: $b8
	add  a                                           ; $466f: $87
	add  e                                           ; $4670: $83
	add  e                                           ; $4671: $83
	xor  e                                           ; $4672: $ab
	nop                                              ; $4673: $00
	xor  c                                           ; $4674: $a9
	add  e                                           ; $4675: $83
	xor  l                                           ; $4676: $ad
	add  b                                           ; $4677: $80
	xor  h                                           ; $4678: $ac
	ld   [$3724], sp                                 ; $4679: $08 $24 $37
	ld   [de], a                                     ; $467c: $12
	sub  d                                           ; $467d: $92
	and  b                                           ; $467e: $a0
	ld   h, b                                        ; $467f: $60
	ld   b, b                                        ; $4680: $40
	ret  nz                                          ; $4681: $c0

	add  b                                           ; $4682: $80
	add  c                                           ; $4683: $81
	nop                                              ; $4684: $00
	nop                                              ; $4685: $00
	add  b                                           ; $4686: $80
	add  c                                           ; $4687: $81
	nop                                              ; $4688: $00
	ld   [bc], a                                     ; $4689: $02
	jp   nz, Func_1d3d                                   ; $468a: $c2 $3d $1d

	add  c                                           ; $468d: $81
	ld   e, l                                        ; $468e: $5d
	ld   [bc], a                                     ; $468f: $02
	ld   b, c                                        ; $4690: $41
	ld   bc, $8000                                   ; $4691: $01 $00 $80

jr_09e_4694:
	ld   e, b                                        ; $4694: $58
	add  b                                           ; $4695: $80
	ld   a, [$be01]                                  ; $4696: $fa $01 $be
	cp   h                                           ; $4699: $bc
	add  b                                           ; $469a: $80
	ld   b, h                                        ; $469b: $44
	inc  bc                                          ; $469c: $03
	sub  b                                           ; $469d: $90
	db   $ec                                         ; $469e: $ec
	nop                                              ; $469f: $00
	add  b                                           ; $46a0: $80
	add  e                                           ; $46a1: $83
	nop                                              ; $46a2: $00
	add  h                                           ; $46a3: $84
	ld   [bc], a                                     ; $46a4: $02
	nop                                              ; $46a5: $00
	pop  hl                                          ; $46a6: $e1
	add  b                                           ; $46a7: $80
	jr   nz, jr_09e_46aa                             ; $46a8: $20 $00

jr_09e_46aa:
	nop                                              ; $46aa: $00
	add  b                                           ; $46ab: $80
	db   $10                                         ; $46ac: $10
	ld   b, $58                                      ; $46ad: $06 $58
	ld   c, b                                        ; $46af: $48
	ld   a, h                                        ; $46b0: $7c
	ld   [hl], b                                     ; $46b1: $70
	ld   a, e                                        ; $46b2: $7b
	ld   a, c                                        ; $46b3: $79
	ld   a, l                                        ; $46b4: $7d
	add  b                                           ; $46b5: $80
	ld   a, h                                        ; $46b6: $7c
	add  c                                           ; $46b7: $81
	ld   a, l                                        ; $46b8: $7d
	add  b                                           ; $46b9: $80
	ld   [hl], c                                     ; $46ba: $71
	ld   [$404b], sp                                 ; $46bb: $08 $4b $40
	inc  de                                          ; $46be: $13
	nop                                              ; $46bf: $00
	and  h                                           ; $46c0: $a4
	add  b                                           ; $46c1: $80
	add  e                                           ; $46c2: $83
	add  b                                           ; $46c3: $80
	add  c                                           ; $46c4: $81
	add  b                                           ; $46c5: $80
	add  b                                           ; $46c6: $80
	inc  bc                                          ; $46c7: $03
	nop                                              ; $46c8: $00
	ld   b, d                                        ; $46c9: $42
	ld   [bc], a                                     ; $46ca: $02
	inc  bc                                          ; $46cb: $03
	add  c                                           ; $46cc: $81
	ld   bc, $0207                                   ; $46cd: $01 $07 $02
	nop                                              ; $46d0: $00
	ld   bc, $0d00                                   ; $46d1: $01 $00 $0d
	nop                                              ; $46d4: $00
	dec  c                                           ; $46d5: $0d
	ld   bc, $0380                                   ; $46d6: $01 $80 $03
	add  b                                           ; $46d9: $80
	nop                                              ; $46da: $00
	ld   [bc], a                                     ; $46db: $02
	ldh  [$60], a                                    ; $46dc: $e0 $60
	ld   a, a                                        ; $46de: $7f
	add  b                                           ; $46df: $80
	adc  a                                           ; $46e0: $8f
	add  b                                           ; $46e1: $80
	ldh  a, [rP1]                                    ; $46e2: $f0 $00
	rst  $38                                         ; $46e4: $ff
	add  b                                           ; $46e5: $80
	ld   a, a                                        ; $46e6: $7f
	inc  b                                           ; $46e7: $04
	sbc  a                                           ; $46e8: $9f
	rra                                              ; $46e9: $1f
	rst  ToBoot                                         ; $46ea: $c7
	rlca                                             ; $46eb: $07
	ld   b, [hl]                                     ; $46ec: $46
	add  c                                           ; $46ed: $81
	dec  b                                           ; $46ee: $05
	ld   [bc], a                                     ; $46ef: $02
	rrca                                             ; $46f0: $0f
	dec  bc                                          ; $46f1: $0b
	dec  de                                          ; $46f2: $1b
	add  b                                           ; $46f3: $80
	inc  de                                          ; $46f4: $13
	inc  bc                                          ; $46f5: $03

jr_09e_46f6:
	inc  bc                                          ; $46f6: $03
	dec  hl                                          ; $46f7: $2b
	dec  bc                                          ; $46f8: $0b
	res  0, b                                        ; $46f9: $cb $80
	xor  e                                           ; $46fb: $ab
	add  b                                           ; $46fc: $80
	ld   l, e                                        ; $46fd: $6b
	nop                                              ; $46fe: $00
	jp   hl                                          ; $46ff: $e9


	add  c                                           ; $4700: $81
	pop  hl                                          ; $4701: $e1
	add  b                                           ; $4702: $80
	ldh  [rSB], a                                    ; $4703: $e0 $01
	ldh  [c], a                                      ; $4705: $e2
	ld   [hl], d                                     ; $4706: $72
	add  b                                           ; $4707: $80
	ld   b, d                                        ; $4708: $42
	nop                                              ; $4709: $00
	ld   b, e                                        ; $470a: $43
	add  b                                           ; $470b: $80
	ld   b, c                                        ; $470c: $41
	inc  b                                           ; $470d: $04
	ld   a, l                                        ; $470e: $7d
	ld   bc, $0251                                   ; $470f: $01 $51 $02
	inc  bc                                          ; $4712: $03
	add  c                                           ; $4713: $81
	ld   bc, $020e                                   ; $4714: $01 $0e $02
	nop                                              ; $4717: $00
	rlca                                             ; $4718: $07
	inc  b                                           ; $4719: $04
	ld   e, $15                                      ; $471a: $1e $15
	ld   de, $0610                                   ; $471c: $11 $10 $06
	add  hl, bc                                      ; $471f: $09
	nop                                              ; $4720: $00
	ld   b, $e0                                      ; $4721: $06 $e0
	ld   h, b                                        ; $4723: $60
	ld   a, a                                        ; $4724: $7f
	add  b                                           ; $4725: $80
	adc  a                                           ; $4726: $8f
	add  b                                           ; $4727: $80
	ldh  a, [rP1]                                    ; $4728: $f0 $00
	rst  $38                                         ; $472a: $ff
	add  b                                           ; $472b: $80
	ld   a, a                                        ; $472c: $7f
	dec  b                                           ; $472d: $05
	sbc  a                                           ; $472e: $9f
	rra                                              ; $472f: $1f
	rst  ToBoot                                         ; $4730: $c7
	rlca                                             ; $4731: $07
	ld   b, [hl]                                     ; $4732: $46

jr_09e_4733:
	dec  b                                           ; $4733: $05
	add  b                                           ; $4734: $80
	add  l                                           ; $4735: $85
	ld   [bc], a                                     ; $4736: $02
	rrca                                             ; $4737: $0f
	dec  bc                                          ; $4738: $0b
	dec  de                                          ; $4739: $1b
	add  b                                           ; $473a: $80
	inc  de                                          ; $473b: $13
	inc  bc                                          ; $473c: $03
	inc  bc                                          ; $473d: $03
	dec  hl                                          ; $473e: $2b
	dec  bc                                          ; $473f: $0b
	res  0, b                                        ; $4740: $cb $80
	xor  e                                           ; $4742: $ab
	add  b                                           ; $4743: $80
	ld   l, e                                        ; $4744: $6b
	nop                                              ; $4745: $00
	jp   hl                                          ; $4746: $e9


	add  c                                           ; $4747: $81
	pop  hl                                          ; $4748: $e1
	add  b                                           ; $4749: $80
	ldh  [rSB], a                                    ; $474a: $e0 $01
	ldh  [c], a                                      ; $474c: $e2
	ld   [hl], d                                     ; $474d: $72
	add  b                                           ; $474e: $80
	ld   b, d                                        ; $474f: $42
	nop                                              ; $4750: $00
	ld   b, e                                        ; $4751: $43
	add  b                                           ; $4752: $80
	ld   b, c                                        ; $4753: $41
	ld   [bc], a                                     ; $4754: $02
	ld   a, l                                        ; $4755: $7d
	ld   bc, $ff53                                   ; $4756: $01 $53 $ff
	nop                                              ; $4759: $00
	rst  $38                                         ; $475a: $ff
	nop                                              ; $475b: $00
	rst  $38                                         ; $475c: $ff
	nop                                              ; $475d: $00
	rst  $38                                         ; $475e: $ff
	nop                                              ; $475f: $00
	rst  $38                                         ; $4760: $ff
	nop                                              ; $4761: $00
	rst  $38                                         ; $4762: $ff
	nop                                              ; $4763: $00
	rst  $38                                         ; $4764: $ff
	nop                                              ; $4765: $00
	or   [hl]                                        ; $4766: $b6
	nop                                              ; $4767: $00
	add  hl, hl                                      ; $4768: $29
	ld   bc, $8306                                   ; $4769: $01 $06 $83
	inc  bc                                          ; $476c: $03
	ld   b, c                                        ; $476d: $41
	ld   bc, $0020                                   ; $476e: $01 $20 $00
	jr   jr_09e_46f6                                 ; $4771: $18 $83

	nop                                              ; $4773: $00
	dec  bc                                          ; $4774: $0b
	inc  b                                           ; $4775: $04
	nop                                              ; $4776: $00
	inc  bc                                          ; $4777: $03
	nop                                              ; $4778: $00
	pop  bc                                          ; $4779: $c1
	rst  $38                                         ; $477a: $ff
	add  $ff                                         ; $477b: $c6 $ff
	ld   [hl], b                                     ; $477d: $70
	ld   hl, sp+$00                                  ; $477e: $f8 $00
	ld   [hl], b                                     ; $4780: $70
	add  b                                           ; $4781: $80
	jr   @-$7e                                       ; $4782: $18 $80

	inc  b                                           ; $4784: $04
	add  b                                           ; $4785: $80
	rlca                                             ; $4786: $07
	add  b                                           ; $4787: $80
	rrca                                             ; $4788: $0f
	nop                                              ; $4789: $00
	nop                                              ; $478a: $00
	add  c                                           ; $478b: $81
	rst  $38                                         ; $478c: $ff
	nop                                              ; $478d: $00
	ld   a, a                                        ; $478e: $7f
	add  c                                           ; $478f: $81
	rst  $38                                         ; $4790: $ff
	add  hl, bc                                      ; $4791: $09
	rst  ToBoot                                         ; $4792: $c7
	rst  $38                                         ; $4793: $ff
	add  e                                           ; $4794: $83
	rst  $38                                         ; $4795: $ff
	cp   c                                           ; $4796: $b9
	rst  $38                                         ; $4797: $ff
	adc  [hl]                                        ; $4798: $8e
	rst  $38                                         ; $4799: $ff
	add  hl, bc                                      ; $479a: $09
	dec  b                                           ; $479b: $05
	add  b                                           ; $479c: $80
	ld   [bc], a                                     ; $479d: $02
	add  b                                           ; $479e: $80
	ld   bc, $0084                                   ; $479f: $01 $84 $00
	add  b                                           ; $47a2: $80
	ld   a, b                                        ; $47a3: $78
	add  b                                           ; $47a4: $80
	adc  [hl]                                        ; $47a5: $8e
	add  d                                           ; $47a6: $82
	ld   [$b180], sp                                 ; $47a7: $08 $80 $b1
	add  b                                           ; $47aa: $80
	xor  b                                           ; $47ab: $a8
	add  b                                           ; $47ac: $80
	ld   h, a                                        ; $47ad: $67
	add  b                                           ; $47ae: $80
	ld   b, b                                        ; $47af: $40
	add  d                                           ; $47b0: $82
	jr   nz, jr_09e_4733                             ; $47b1: $20 $80

	and  h                                           ; $47b3: $a4
	add  b                                           ; $47b4: $80
	ldh  [c], a                                      ; $47b5: $e2
	add  b                                           ; $47b6: $80
	ld   hl, $a180                                   ; $47b7: $21 $80 $a1
	add  b                                           ; $47ba: $80
	sbc  [hl]                                        ; $47bb: $9e
	add  d                                           ; $47bc: $82
	inc  d                                           ; $47bd: $14
	add  b                                           ; $47be: $80
	add  hl, de                                      ; $47bf: $19
	nop                                              ; $47c0: $00
	ccf                                              ; $47c1: $3f
	add  c                                           ; $47c2: $81
	jr   nz, jr_09e_47c6                             ; $47c3: $20 $01

	ld   h, b                                        ; $47c5: $60

jr_09e_47c6:
	ld   b, b                                        ; $47c6: $40
	add  d                                           ; $47c7: $82
	jp   $c700                                       ; $47c8: $c3 $00 $c7


	add  c                                           ; $47cb: $81
	add  a                                           ; $47cc: $87
	add  b                                           ; $47cd: $80
	adc  a                                           ; $47ce: $8f
	inc  bc                                          ; $47cf: $03
	add  [hl]                                        ; $47d0: $86
	rlca                                             ; $47d1: $07
	inc  c                                           ; $47d2: $0c
	ld   c, $80                                      ; $47d3: $0e $80
	ld   a, $80                                      ; $47d5: $3e $80
	cp   $00                                         ; $47d7: $fe $00
	ld   hl, sp-$7d                                  ; $47d9: $f8 $83
	db   $fc                                         ; $47db: $fc
	add  b                                           ; $47dc: $80
	db   $fd                                         ; $47dd: $fd
	dec  b                                           ; $47de: $05
	rlca                                             ; $47df: $07
	ld   bc, wType0AnimSpriteXPosRelativeTo                                   ; $47e0: $01 $00 $c6
	nop                                              ; $47e3: $00
	ld   hl, sp-$7f                                  ; $47e4: $f8 $81
	ret  nz                                          ; $47e6: $c0

	add  b                                           ; $47e7: $80
	add  b                                           ; $47e8: $80
	dec  b                                           ; $47e9: $05
	cp   $86                                         ; $47ea: $fe $86

jr_09e_47ec:
	cp   $0e                                         ; $47ec: $fe $0e
	cp   $69                                         ; $47ee: $fe $69
	add  b                                           ; $47f0: $80
	inc  e                                           ; $47f1: $1c
	ld   b, $1e                                      ; $47f2: $06 $1e
	dec  a                                           ; $47f4: $3d
	daa                                              ; $47f5: $27
	ld   [bc], a                                     ; $47f6: $02
	ld   d, $04                                      ; $47f7: $16 $04
	inc  c                                           ; $47f9: $0c
	add  b                                           ; $47fa: $80
	ld   [rRAMG], sp                                 ; $47fb: $08 $00 $00
	add  c                                           ; $47fe: $81
	inc  b                                           ; $47ff: $04
	nop                                              ; $4800: $00
	db   $fc                                         ; $4801: $fc
	adc  l                                           ; $4802: $8d
	nop                                              ; $4803: $00
	ld   [de], a                                     ; $4804: $12
	add  b                                           ; $4805: $80
	nop                                              ; $4806: $00
	ld   b, b                                        ; $4807: $40
	nop                                              ; $4808: $00

jr_09e_4809:
	jr   nz, jr_09e_480b                             ; $4809: $20 $00

jr_09e_480b:
	stop                                             ; $480b: $10 $00

jr_09e_480d:
	ld   [$0400], sp                                 ; $480d: $08 $00 $04
	nop                                              ; $4810: $00
	ld   [bc], a                                     ; $4811: $02
	nop                                              ; $4812: $00
	ld   bc, $2400                                   ; $4813: $01 $00 $24
	ld   [hl], $32                                   ; $4816: $36 $32
	add  b                                           ; $4818: $80
	dec  bc                                          ; $4819: $0b
	ld   bc, $7d5d                                   ; $481a: $01 $5d $7d
	adc  e                                           ; $481d: $8b
	rst  $38                                         ; $481e: $ff
	add  b                                           ; $481f: $80
	db   $fc                                         ; $4820: $fc
	ld   a, [bc]                                     ; $4821: $0a
	ld   hl, sp-$01                                  ; $4822: $f8 $ff
	pop  bc                                          ; $4824: $c1
	add  $99                                         ; $4825: $c6 $99
	add  c                                           ; $4827: $81
	db   $db                                         ; $4828: $db
	jp   $fe81                                       ; $4829: $c3 $81 $fe


	sbc  h                                           ; $482c: $9c
	add  c                                           ; $482d: $81
	db   $e4                                         ; $482e: $e4
	add  b                                           ; $482f: $80
	ld   b, h                                        ; $4830: $44
	nop                                              ; $4831: $00
	nop                                              ; $4832: $00
	add  b                                           ; $4833: $80
	adc  b                                           ; $4834: $88
	inc  b                                           ; $4835: $04
	add  sp, $68                                     ; $4836: $e8 $68
	xor  b                                           ; $4838: $a8
	add  sp, -$28                                    ; $4839: $e8 $d8
	add  b                                           ; $483b: $80
	pop  de                                          ; $483c: $d1
	ld   [bc], a                                     ; $483d: $02
	dec  de                                          ; $483e: $1b
	ld   b, d                                        ; $483f: $42

Jump_09e_4840:
	ld   b, b                                        ; $4840: $40
	add  c                                           ; $4841: $81
	add  c                                           ; $4842: $81
	ld   b, $85                                      ; $4843: $06 $85
	add  c                                           ; $4845: $81
	add  b                                           ; $4846: $80
	adc  b                                           ; $4847: $88
	adc  h                                           ; $4848: $8c
	adc  b                                           ; $4849: $88
	adc  c                                           ; $484a: $89
	add  b                                           ; $484b: $80
	adc  b                                           ; $484c: $88
	ld   bc, $0e08                                   ; $484d: $01 $08 $0e
	adc  l                                           ; $4850: $8d
	nop                                              ; $4851: $00
	ld   [bc], a                                     ; $4852: $02
	rlca                                             ; $4853: $07
	ld   [$810c], sp                                 ; $4854: $08 $0c $81
	inc  b                                           ; $4857: $04
	dec  bc                                          ; $4858: $0b
	ld   b, $3e                                      ; $4859: $06 $3e
	ld   [hl+], a                                    ; $485b: $22
	ld   a, $2f                                      ; $485c: $3e $2f
	ccf                                              ; $485e: $3f
	dec  l                                           ; $485f: $2d
	ccf                                              ; $4860: $3f
	scf                                              ; $4861: $37
	ccf                                              ; $4862: $3f
	ret                                              ; $4863: $c9


	rra                                              ; $4864: $1f
	add  b                                           ; $4865: $80
	ld   bc, $0000                                   ; $4866: $01 $00 $00
	add  b                                           ; $4869: $80
	jr   nz, jr_09e_47ec                             ; $486a: $20 $80

	inc  e                                           ; $486c: $1c
	add  b                                           ; $486d: $80
	dec  de                                          ; $486e: $1b
	add  c                                           ; $486f: $81
	nop                                              ; $4870: $00
	ld   [bc], a                                     ; $4871: $02
	add  b                                           ; $4872: $80
	add  a                                           ; $4873: $87
	ld   hl, sp-$80                                  ; $4874: $f8 $80
	pop  af                                          ; $4876: $f1
	rlca                                             ; $4877: $07
	pop  hl                                          ; $4878: $e1
	ld   bc, $0119                                   ; $4879: $01 $19 $01
	rlca                                             ; $487c: $07
	ld   bc, $8081                                   ; $487d: $01 $81 $80
	add  b                                           ; $4880: $80
	ld   hl, sp-$80                                  ; $4881: $f8 $80
	ld   c, $02                                      ; $4883: $0e $02
	inc  bc                                          ; $4885: $03
	inc  hl                                          ; $4886: $23
	jr   nz, jr_09e_4809                             ; $4887: $20 $80

	nop                                              ; $4889: $00
	add  d                                           ; $488a: $82
	jr   nz, jr_09e_480d                             ; $488b: $20 $80

	ld   b, b                                        ; $488d: $40
	add  b                                           ; $488e: $80
	ret  nc                                          ; $488f: $d0

	add  b                                           ; $4890: $80
	ld   d, b                                        ; $4891: $50
	add  b                                           ; $4892: $80
	ld   a, $00                                      ; $4893: $3e $00
	rst  $38                                         ; $4895: $ff
	add  b                                           ; $4896: $80
	add  a                                           ; $4897: $87
	add  d                                           ; $4898: $82
	ld   b, c                                        ; $4899: $41
	ld   bc, $2021                                   ; $489a: $01 $21 $20
	add  b                                           ; $489d: $80
	inc  de                                          ; $489e: $13
	add  e                                           ; $489f: $83
	inc  bc                                          ; $48a0: $03
	ld   bc, $0f0d                                   ; $48a1: $01 $0d $0f
	add  d                                           ; $48a4: $82
	rra                                              ; $48a5: $1f
	add  d                                           ; $48a6: $82
	ccf                                              ; $48a7: $3f
	add  h                                           ; $48a8: $84
	ld   a, a                                        ; $48a9: $7f
	ld   bc, $fef9                                   ; $48aa: $01 $f9 $fe
	add  b                                           ; $48ad: $80
	db   $fd                                         ; $48ae: $fd
	add  b                                           ; $48af: $80
	db   $fc                                         ; $48b0: $fc
	add  b                                           ; $48b1: $80
	db   $fd                                         ; $48b2: $fd
	add  b                                           ; $48b3: $80
	rst  $38                                         ; $48b4: $ff
	add  b                                           ; $48b5: $80
	db   $fc                                         ; $48b6: $fc
	ld   bc, $f8f0                                   ; $48b7: $01 $f0 $f8
	add  b                                           ; $48ba: $80
	ld   sp, hl                                      ; $48bb: $f9
	db   $10                                         ; $48bc: $10
	ret  nz                                          ; $48bd: $c0

	cp   $ce                                         ; $48be: $fe $ce
	db   $fc                                         ; $48c0: $fc
	ld   a, h                                        ; $48c1: $7c
	ld   sp, hl                                      ; $48c2: $f9
	ld   a, c                                        ; $48c3: $79
	di                                               ; $48c4: $f3
	ld   [hl], c                                     ; $48c5: $71
	rst  $38                                         ; $48c6: $ff
	add  hl, sp                                      ; $48c7: $39
	ld   a, a                                        ; $48c8: $7f
	add  e                                           ; $48c9: $83
	rst  $38                                         ; $48ca: $ff
	ld   h, a                                        ; $48cb: $67
	rst  $38                                         ; $48cc: $ff
	db   $db                                         ; $48cd: $db
	add  e                                           ; $48ce: $83

jr_09e_48cf:
	inc  b                                           ; $48cf: $04
	add  d                                           ; $48d0: $82
	ld   [$1180], sp                                 ; $48d1: $08 $80 $11
	add  b                                           ; $48d4: $80
	inc  de                                          ; $48d5: $13
	add  b                                           ; $48d6: $80
	rla                                              ; $48d7: $17
	nop                                              ; $48d8: $00
	rst  $38                                         ; $48d9: $ff
	add  b                                           ; $48da: $80
	jr   @-$7e                                       ; $48db: $18 $80

	inc  a                                           ; $48dd: $3c
	add  b                                           ; $48de: $80
	ld   a, [hl]                                     ; $48df: $7e
	adc  b                                           ; $48e0: $88
	rst  $38                                         ; $48e1: $ff
	add  [hl]                                        ; $48e2: $86
	nop                                              ; $48e3: $00
	add  d                                           ; $48e4: $82
	add  b                                           ; $48e5: $80
	add  b                                           ; $48e6: $80
	ret  nz                                          ; $48e7: $c0

	ld   bc, $1fe0                                   ; $48e8: $01 $e0 $1f
	add  e                                           ; $48eb: $83
	rst  $38                                         ; $48ec: $ff
	inc  bc                                          ; $48ed: $03
	cp   [hl]                                        ; $48ee: $be
	cp   a                                           ; $48ef: $bf
	cpl                                              ; $48f0: $2f
	ccf                                              ; $48f1: $3f
	add  b                                           ; $48f2: $80
	dec  e                                           ; $48f3: $1d
	rlca                                             ; $48f4: $07
	sbc  [hl]                                        ; $48f5: $9e
	cp   a                                           ; $48f6: $bf
	ld   c, a                                        ; $48f7: $4f
	ld   a, a                                        ; $48f8: $7f
	sub  b                                           ; $48f9: $90
	rst  $28                                         ; $48fa: $ef
	ld   c, c                                        ; $48fb: $49
	ret                                              ; $48fc: $c9


	add  b                                           ; $48fd: $80
	ld   sp, hl                                      ; $48fe: $f9
	add  b                                           ; $48ff: $80
	xor  c                                           ; $4900: $a9
	add  b                                           ; $4901: $80
	ld   de, $6007                                   ; $4902: $11 $07 $60
	ld   h, c                                        ; $4905: $61
	ret  nz                                          ; $4906: $c0

	jp   $ef61                                       ; $4907: $c3 $61 $ef


	db   $fd                                         ; $490a: $fd
	ld   de, $9181                                   ; $490b: $11 $81 $91
	add  c                                           ; $490e: $81
	pop  de                                          ; $490f: $d1
	inc  bc                                          ; $4910: $03
	sub  c                                           ; $4911: $91
	ld   sp, $9111                                   ; $4912: $31 $11 $91
	add  b                                           ; $4915: $80
	ld   hl, $2280                                   ; $4916: $21 $80 $22
	ld   b, $fb                                      ; $4919: $06 $fb
	ld   a, [bc]                                     ; $491b: $0a
	ld   a, [de]                                     ; $491c: $1a
	ld   a, [bc]                                     ; $491d: $0a
	adc  [hl]                                        ; $491e: $8e
	ld   a, [bc]                                     ; $491f: $0a
	ld   a, [hl+]                                    ; $4920: $2a
	add  b                                           ; $4921: $80
	dec  bc                                          ; $4922: $0b
	ld   bc, $5a0a                                   ; $4923: $01 $0a $5a
	add  b                                           ; $4926: $80
	inc  d                                           ; $4927: $14
	inc  bc                                          ; $4928: $03
	jr   jr_09e_4963                                 ; $4929: $18 $38

	db   $10                                         ; $492b: $10
	ret  nc                                          ; $492c: $d0

	adc  l                                           ; $492d: $8d
	nop                                              ; $492e: $00
	inc  bc                                          ; $492f: $03
	sub  a                                           ; $4930: $97
	ld   a, a                                        ; $4931: $7f
	ld   h, e                                        ; $4932: $63
	ld   a, a                                        ; $4933: $7f
	add  b                                           ; $4934: $80
	ccf                                              ; $4935: $3f
	ld   a, [bc]                                     ; $4936: $0a
	ld   sp, $9f3f                                   ; $4937: $31 $3f $9f
	rra                                              ; $493a: $1f
	jr   jr_09e_495c                                 ; $493b: $18 $1f

	ld   c, a                                        ; $493d: $4f
	rrca                                             ; $493e: $0f
	ld   c, $0f                                      ; $493f: $0e $0f
	ld   b, e                                        ; $4941: $43
	add  c                                           ; $4942: $81
	add  b                                           ; $4943: $80
	nop                                              ; $4944: $00
	ret  nz                                          ; $4945: $c0

	add  c                                           ; $4946: $81
	ld   b, b                                        ; $4947: $40
	nop                                              ; $4948: $00
	ld   h, b                                        ; $4949: $60
	add  c                                           ; $494a: $81
	jr   nz, jr_09e_494d                             ; $494b: $20 $00

jr_09e_494d:
	jr   nc, jr_09e_48cf                             ; $494d: $30 $80

	db   $10                                         ; $494f: $10
	add  b                                           ; $4950: $80
	sub  b                                           ; $4951: $90
	dec  bc                                          ; $4952: $0b
	nop                                              ; $4953: $00
	ld   l, a                                        ; $4954: $6f
	nop                                              ; $4955: $00
	sbc  [hl]                                        ; $4956: $9e
	nop                                              ; $4957: $00
	ld   b, c                                        ; $4958: $41
	nop                                              ; $4959: $00
	ld   a, c                                        ; $495a: $79
	nop                                              ; $495b: $00

jr_09e_495c:
	sbc  $00                                         ; $495c: $de $00
	rst  $20                                         ; $495e: $e7
	add  c                                           ; $495f: $81
	nop                                              ; $4960: $00
	add  b                                           ; $4961: $80
	daa                                              ; $4962: $27

jr_09e_4963:
	nop                                              ; $4963: $00
	rra                                              ; $4964: $1f
	add  b                                           ; $4965: $80
	jr   jr_09e_496d                                 ; $4966: $18 $05

	ret  nc                                          ; $4968: $d0

	ret  nz                                          ; $4969: $c0

	ccf                                              ; $496a: $3f
	jr   c, jr_09e_4985                              ; $496b: $38 $18

jr_09e_496d:
	inc  d                                           ; $496d: $14
	add  b                                           ; $496e: $80
	call nz, $3404                                   ; $496f: $c4 $04 $34
	ld   [hl-], a                                    ; $4972: $32
	ld   c, $0b                                      ; $4973: $0e $0b
	inc  b                                           ; $4975: $04
	add  h                                           ; $4976: $84
	add  h                                           ; $4977: $84
	add  b                                           ; $4978: $80
	db   $e4                                         ; $4979: $e4
	ld   bc, $1e1c                                   ; $497a: $01 $1c $1e
	add  b                                           ; $497d: $80
	ld   b, $02                                      ; $497e: $06 $02
	ld   b, b                                        ; $4980: $40
	ld   bc, $83c0                                   ; $4981: $01 $c0 $83
	ld   a, a                                        ; $4984: $7f

jr_09e_4985:
	add  d                                           ; $4985: $82
	ccf                                              ; $4986: $3f
	add  b                                           ; $4987: $80
	rra                                              ; $4988: $1f
	add  c                                           ; $4989: $81
	rrca                                             ; $498a: $0f
	ld   bc, $758f                                   ; $498b: $01 $8f $75
	add  c                                           ; $498e: $81
	ld   a, [$fd80]                                  ; $498f: $fa $80 $fd
	ld   bc, $f1e1                                   ; $4992: $01 $e1 $f1
	add  d                                           ; $4995: $82
	ldh  a, [rSB]                                    ; $4996: $f0 $01
	jp   nz, $80e2                                   ; $4998: $c2 $e2 $80

	rst  $38                                         ; $499b: $ff
	nop                                              ; $499c: $00
	ret  nc                                          ; $499d: $d0

	add  c                                           ; $499e: $81
	rst  $38                                         ; $499f: $ff
	ld   b, $1f                                      ; $49a0: $06 $1f
	rst  $38                                         ; $49a2: $ff
	scf                                              ; $49a3: $37
	ccf                                              ; $49a4: $3f
	ld   [$15ff], a                                  ; $49a5: $ea $ff $15
	add  c                                           ; $49a8: $81
	rst  $38                                         ; $49a9: $ff
	ld   [bc], a                                     ; $49aa: $02
	scf                                              ; $49ab: $37
	rst  $38                                         ; $49ac: $ff
	cpl                                              ; $49ad: $2f
	add  c                                           ; $49ae: $81
	rra                                              ; $49af: $1f
	add  b                                           ; $49b0: $80
	ccf                                              ; $49b1: $3f
	add  c                                           ; $49b2: $81
	rst  $38                                         ; $49b3: $ff
	add  b                                           ; $49b4: $80
	db   $fc                                         ; $49b5: $fc
	add  b                                           ; $49b6: $80
	ldh  a, [$80]                                    ; $49b7: $f0 $80
	ldh  [$80], a                                    ; $49b9: $e0 $80
	ret  nz                                          ; $49bb: $c0

	add  h                                           ; $49bc: $84

jr_09e_49bd:
	rst  $38                                         ; $49bd: $ff
	add  b                                           ; $49be: $80
	add  b                                           ; $49bf: $80
	add  [hl]                                        ; $49c0: $86
	nop                                              ; $49c1: $00
	add  b                                           ; $49c2: $80
	ldh  a, [$80]                                    ; $49c3: $f0 $80
	ld   hl, sp-$80                                  ; $49c5: $f8 $80
	db   $fc                                         ; $49c7: $fc
	add  b                                           ; $49c8: $80
	ld   a, [hl]                                     ; $49c9: $7e
	add  b                                           ; $49ca: $80
	rrca                                             ; $49cb: $0f
	add  b                                           ; $49cc: $80
	rlca                                             ; $49cd: $07
	add  b                                           ; $49ce: $80
	inc  bc                                          ; $49cf: $03
	ld   bc, $fe01                                   ; $49d0: $01 $01 $fe
	add  l                                           ; $49d3: $85
	rst  $38                                         ; $49d4: $ff
	add  b                                           ; $49d5: $80
	ldh  a, [rAUD3ENA]                               ; $49d6: $f0 $1a
	nop                                              ; $49d8: $00
	ld   bc, $ff00                                   ; $49d9: $01 $00 $ff
	add  c                                           ; $49dc: $81
	ld   a, a                                        ; $49dd: $7f
	ret  c                                           ; $49de: $d8

	dec  e                                           ; $49df: $1d
	dec  [hl]                                        ; $49e0: $35
	sbc  c                                           ; $49e1: $99
	adc  c                                           ; $49e2: $89
	jp   hl                                          ; $49e3: $e9


	adc  b                                           ; $49e4: $88
	sub  e                                           ; $49e5: $93
	inc  de                                          ; $49e6: $13
	ld   h, e                                        ; $49e7: $63
	ld   h, b                                        ; $49e8: $60
	add  a                                           ; $49e9: $87
	ld   bc, $028f                                   ; $49ea: $01 $8f $02
	rra                                              ; $49ed: $1f
	jp   nz, $a3e2                                   ; $49ee: $c2 $e2 $a3

	jp   nz, $83d7                                   ; $49f1: $c2 $d7 $83

	call nz, Call_09e_4400                           ; $49f4: $c4 $00 $44
	add  d                                           ; $49f7: $82
	adc  b                                           ; $49f8: $88
	inc  bc                                          ; $49f9: $03
	sub  c                                           ; $49fa: $91
	ld   de, $a020                                   ; $49fb: $11 $20 $a0
	add  d                                           ; $49fe: $82
	jr   nz, @-$7c                                   ; $49ff: $20 $82

	ld   b, b                                        ; $4a01: $40

jr_09e_4a02:
	add  d                                           ; $4a02: $82
	add  b                                           ; $4a03: $80
	adc  a                                           ; $4a04: $8f
	nop                                              ; $4a05: $00
	rlca                                             ; $4a06: $07
	add  hl, sp                                      ; $4a07: $39
	rlca                                             ; $4a08: $07
	daa                                              ; $4a09: $27
	rlca                                             ; $4a0a: $07
	ld   [bc], a                                     ; $4a0b: $02
	inc  bc                                          ; $4a0c: $03
	inc  de                                          ; $4a0d: $13
	inc  bc                                          ; $4a0e: $03
	add  d                                           ; $4a0f: $82
	ld   bc, $0800                                   ; $4a10: $01 $00 $08
	add  d                                           ; $4a13: $82
	nop                                              ; $4a14: $00
	add  b                                           ; $4a15: $80
	adc  b                                           ; $4a16: $88
	add  c                                           ; $4a17: $81
	ld   c, b                                        ; $4a18: $48
	nop                                              ; $4a19: $00

jr_09e_4a1a:
	ld   c, h                                        ; $4a1a: $4c
	add  b                                           ; $4a1b: $80

jr_09e_4a1c:
	inc  h                                           ; $4a1c: $24
	ld   bc, $a6a4                                   ; $4a1d: $01 $a4 $a6
	add  b                                           ; $4a20: $80
	sub  d                                           ; $4a21: $92
	rrca                                             ; $4a22: $0f
	jp   nc, $e9d3                                   ; $4a23: $d2 $d3 $e9

	adc  e                                           ; $4a26: $8b
	nop                                              ; $4a27: $00
	rst  $28                                         ; $4a28: $ef
	nop                                              ; $4a29: $00
	ld   [hl-], a                                    ; $4a2a: $32
	nop                                              ; $4a2b: $00
	ld   d, b                                        ; $4a2c: $50
	nop                                              ; $4a2d: $00
	inc  bc                                          ; $4a2e: $03
	nop                                              ; $4a2f: $00
	cpl                                              ; $4a30: $2f
	nop                                              ; $4a31: $00
	inc  a                                           ; $4a32: $3c
	add  c                                           ; $4a33: $81
	nop                                              ; $4a34: $00
	jr   nc, jr_09e_49bd                             ; $4a35: $30 $86

	inc  bc                                          ; $4a37: $03
	inc  l                                           ; $4a38: $2c
	ld   bc, $01d9                                   ; $4a39: $01 $d9 $01
	ld   a, [hl]                                     ; $4a3c: $7e
	nop                                              ; $4a3d: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a3e: $cf
	nop                                              ; $4a3f: $00
	cp   c                                           ; $4a40: $b9
	nop                                              ; $4a41: $00
	ld   a, [hl]                                     ; $4a42: $7e
	nop                                              ; $4a43: $00
	ld   b, $00                                      ; $4a44: $06 $00
	ld   [hl], b                                     ; $4a46: $70
	add  b                                           ; $4a47: $80
	cp   $80                                         ; $4a48: $fe $80
	and  a                                           ; $4a4a: $a7
	ret  nz                                          ; $4a4b: $c0

	ld   l, d                                        ; $4a4c: $6a
	ret  nz                                          ; $4a4d: $c0

	db   $d3                                         ; $4a4e: $d3
	ldh  [$bf], a                                    ; $4a4f: $e0 $bf
	ld   h, b                                        ; $4a51: $60
	xor  $60                                         ; $4a52: $ee $60
	ld   bc, $7020                                   ; $4a54: $01 $20 $70
	ld   l, a                                        ; $4a57: $6f
	rrca                                             ; $4a58: $0f
	rra                                              ; $4a59: $1f
	jp   $a10f                                       ; $4a5a: $c3 $0f $a1


	inc  bc                                          ; $4a5d: $03
	jr   jr_09e_4a61                                 ; $4a5e: $18 $01

	ld   a, b                                        ; $4a60: $78

jr_09e_4a61:
	nop                                              ; $4a61: $00
	xor  $00                                         ; $4a62: $ee $00
	xor  $00                                         ; $4a64: $ee $00
	ld   b, b                                        ; $4a66: $40
	add  c                                           ; $4a67: $81
	ret  nz                                          ; $4a68: $c0

	nop                                              ; $4a69: $00
	nop                                              ; $4a6a: $00
	add  c                                           ; $4a6b: $81
	add  b                                           ; $4a6c: $80
	add  b                                           ; $4a6d: $80
	nop                                              ; $4a6e: $00
	add  b                                           ; $4a6f: $80
	add  b                                           ; $4a70: $80
	add  b                                           ; $4a71: $80
	ld   b, b                                        ; $4a72: $40
	add  b                                           ; $4a73: $80
	jr   nz, jr_09e_4a76                             ; $4a74: $20 $00

jr_09e_4a76:
	rst  $38                                         ; $4a76: $ff
	add  b                                           ; $4a77: $80
	scf                                              ; $4a78: $37
	add  d                                           ; $4a79: $82
	inc  bc                                          ; $4a7a: $03
	add  b                                           ; $4a7b: $80
	ld   bc, $c180                                   ; $4a7c: $01 $80 $c1
	add  b                                           ; $4a7f: $80
	jr   nc, jr_09e_4a02                             ; $4a80: $30 $80

	db   $10                                         ; $4a82: $10
	add  b                                           ; $4a83: $80
	ld   [$8080], sp                                 ; $4a84: $08 $80 $80
	add  [hl]                                        ; $4a87: $86
	nop                                              ; $4a88: $00
	add  h                                           ; $4a89: $84
	add  b                                           ; $4a8a: $80
	adc  [hl]                                        ; $4a8b: $8e
	nop                                              ; $4a8c: $00
	ld   [bc], a                                     ; $4a8d: $02
	ld   bc, $0100                                   ; $4a8e: $01 $00 $01
	add  b                                           ; $4a91: $80
	inc  bc                                          ; $4a92: $03
	add  b                                           ; $4a93: $80
	ld   b, $80                                      ; $4a94: $06 $80
	inc  c                                           ; $4a96: $0c
	add  b                                           ; $4a97: $80
	jr   jr_09e_4a1a                                 ; $4a98: $18 $80

	jr   nc, jr_09e_4a1c                             ; $4a9a: $30 $80

	ld   h, b                                        ; $4a9c: $60
	add  c                                           ; $4a9d: $81
	nop                                              ; $4a9e: $00
	dec  b                                           ; $4a9f: $05
	rrca                                             ; $4aa0: $0f
	nop                                              ; $4aa1: $00
	ccf                                              ; $4aa2: $3f
	ld   [$387f], sp                                 ; $4aa3: $08 $7f $38
	add  c                                           ; $4aa6: $81
	ld   hl, sp+$08                                  ; $4aa7: $f8 $08
	cp   e                                           ; $4aa9: $bb
	ld   [hl], e                                     ; $4aaa: $73
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4aab: $cf
	inc  a                                           ; $4aac: $3c
	xor  h                                           ; $4aad: $ac
	db   $fd                                         ; $4aae: $fd
	dec  l                                           ; $4aaf: $2d
	ldh  a, [c]                                      ; $4ab0: $f2
	ld   [hl-], a                                    ; $4ab1: $32
	add  b                                           ; $4ab2: $80
	push bc                                          ; $4ab3: $c5
	add  hl, bc                                      ; $4ab4: $09
	rst  $38                                         ; $4ab5: $ff
	ld   [hl], c                                     ; $4ab6: $71
	ld   d, c                                        ; $4ab7: $51
	ret  nc                                          ; $4ab8: $d0

	or   b                                           ; $4ab9: $b0
	sub  e                                           ; $4aba: $93
	ld   d, e                                        ; $4abb: $53
	jr   @-$66                                       ; $4abc: $18 $98

	rst  $38                                         ; $4abe: $ff
	add  b                                           ; $4abf: $80
	ld   [hl+], a                                    ; $4ac0: $22
	add  b                                           ; $4ac1: $80
	ld   c, h                                        ; $4ac2: $4c
	add  b                                           ; $4ac3: $80
	or   h                                           ; $4ac4: $b4
	add  b                                           ; $4ac5: $80
	call nz, $c807                                   ; $4ac6: $c4 $07 $c8
	call z, $8288                                    ; $4ac9: $cc $88 $82
	db   $10                                         ; $4acc: $10
	ld   bc, $ffe0                                   ; $4acd: $01 $e0 $ff
	adc  l                                           ; $4ad0: $8d
	nop                                              ; $4ad1: $00
	add  h                                           ; $4ad2: $84
	rst  $38                                         ; $4ad3: $ff
	ld   bc, $ffe0                                   ; $4ad4: $01 $e0 $ff
	add  h                                           ; $4ad7: $84
	ldh  a, [$80]                                    ; $4ad8: $f0 $80
	pop  af                                          ; $4ada: $f1
	nop                                              ; $4adb: $00
	ldh  [$83], a                                    ; $4adc: $e0 $83
	rst  $38                                         ; $4ade: $ff
	ld   bc, $ff00                                   ; $4adf: $01 $00 $ff
	add  h                                           ; $4ae2: $84
	nop                                              ; $4ae3: $00
	add  b                                           ; $4ae4: $80
	rst  $38                                         ; $4ae5: $ff
	nop                                              ; $4ae6: $00
	adc  [hl]                                        ; $4ae7: $8e
	adc  l                                           ; $4ae8: $8d
	adc  c                                           ; $4ae9: $89
	ld   bc, $fff8                                   ; $4aea: $01 $f8 $ff
	add  h                                           ; $4aed: $84
	nop                                              ; $4aee: $00
	add  c                                           ; $4aef: $81
	rst  $38                                         ; $4af0: $ff
	add  c                                           ; $4af1: $81
	nop                                              ; $4af2: $00
	add  b                                           ; $4af3: $80
	rst  $38                                         ; $4af4: $ff
	ld   bc, $8971                                   ; $4af5: $01 $71 $89
	add  h                                           ; $4af8: $84
	add  hl, bc                                      ; $4af9: $09
	add  c                                           ; $4afa: $81
	ld   sp, hl                                      ; $4afb: $f9
	add  c                                           ; $4afc: $81
	ld   bc, $ff90                                   ; $4afd: $01 $90 $ff
	nop                                              ; $4b00: $00
	xor  $8d                                         ; $4b01: $ee $8d
	pop  af                                          ; $4b03: $f1
	nop                                              ; $4b04: $00
	ldh  [rIE], a                                    ; $4b05: $e0 $ff
	nop                                              ; $4b07: $00
	rst  $38                                         ; $4b08: $ff
	nop                                              ; $4b09: $00
	rst  $38                                         ; $4b0a: $ff
	nop                                              ; $4b0b: $00
	rst  $38                                         ; $4b0c: $ff
	nop                                              ; $4b0d: $00
	rst  $38                                         ; $4b0e: $ff
	nop                                              ; $4b0f: $00
	rst  $38                                         ; $4b10: $ff
	nop                                              ; $4b11: $00
	rst  $38                                         ; $4b12: $ff
	nop                                              ; $4b13: $00
	add  [hl]                                        ; $4b14: $86
	nop                                              ; $4b15: $00
	ld   h, $01                                      ; $4b16: $26 $01
	add  d                                           ; $4b18: $82
	nop                                              ; $4b19: $00
	inc  bc                                          ; $4b1a: $03
	ld   bc, $0600                                   ; $4b1b: $01 $00 $06
	nop                                              ; $4b1e: $00
	add  b                                           ; $4b1f: $80
	ld   [bc], a                                     ; $4b20: $02
	add  b                                           ; $4b21: $80
	inc  bc                                          ; $4b22: $03
	add  b                                           ; $4b23: $80
	ld   bc, $0400                                   ; $4b24: $01 $00 $04
	add  e                                           ; $4b27: $83
	nop                                              ; $4b28: $00
	nop                                              ; $4b29: $00
	inc  b                                           ; $4b2a: $04
	add  c                                           ; $4b2b: $81
	nop                                              ; $4b2c: $00
	ld   bc, $0008                                   ; $4b2d: $01 $08 $00
	add  b                                           ; $4b30: $80
	rlca                                             ; $4b31: $07
	add  b                                           ; $4b32: $80
	ld   bc, $0280                                   ; $4b33: $01 $80 $02
	add  b                                           ; $4b36: $80
	nop                                              ; $4b37: $00
	add  b                                           ; $4b38: $80
	inc  bc                                          ; $4b39: $03
	nop                                              ; $4b3a: $00
	ld   [$0083], sp                                 ; $4b3b: $08 $83 $00
	nop                                              ; $4b3e: $00
	add  hl, bc                                      ; $4b3f: $09
	add  c                                           ; $4b40: $81
	ld   bc, $0480                                   ; $4b41: $01 $80 $04
	add  b                                           ; $4b44: $80
	ld   b, $04                                      ; $4b45: $06 $04
	ld   [$0600], sp                                 ; $4b47: $08 $00 $06
	nop                                              ; $4b4a: $00
	ld   bc, $0087                                   ; $4b4b: $01 $87 $00
	ld   [bc], a                                     ; $4b4e: $02
	ld   bc, $0300                                   ; $4b4f: $01 $00 $03
	add  c                                           ; $4b52: $81
	ld   bc, $0600                                   ; $4b53: $01 $00 $06
	add  c                                           ; $4b56: $81
	ld   [bc], a                                     ; $4b57: $02
	nop                                              ; $4b58: $00
	dec  c                                           ; $4b59: $0d
	add  c                                           ; $4b5a: $81
	dec  b                                           ; $4b5b: $05
	add  hl, bc                                      ; $4b5c: $09
	inc  e                                           ; $4b5d: $1c
	dec  c                                           ; $4b5e: $0d
	dec  l                                           ; $4b5f: $2d
	dec  c                                           ; $4b60: $0d
	ld   c, l                                        ; $4b61: $4d
	dec  c                                           ; $4b62: $0d
	adc  h                                           ; $4b63: $8c
	dec  c                                           ; $4b64: $0d
	add  c                                           ; $4b65: $81
	add  l                                           ; $4b66: $85
	add  b                                           ; $4b67: $80
	add  [hl]                                        ; $4b68: $86
	dec  b                                           ; $4b69: $05
	call nz, $e1c2                                   ; $4b6a: $c4 $c2 $e1
	ldh  [c], a                                      ; $4b6d: $e2
	ld   hl, sp-$07                                  ; $4b6e: $f8 $f9
	add  b                                           ; $4b70: $80
	db   $fc                                         ; $4b71: $fc
	add  b                                           ; $4b72: $80
	ld   [$1e80], sp                                 ; $4b73: $08 $80 $1e
	add  b                                           ; $4b76: $80
	ld   a, h                                        ; $4b77: $7c
	add  b                                           ; $4b78: $80
	ldh  a, [rDIV]                                   ; $4b79: $f0 $04
	ret  nz                                          ; $4b7b: $c0

	jp   nz, $1602                                   ; $4b7c: $c2 $02 $16

	ld   d, [hl]                                     ; $4b7f: $56
	add  b                                           ; $4b80: $80
	ld   d, l                                        ; $4b81: $55
	ld   bc, $1656                                   ; $4b82: $01 $56 $16
	add  b                                           ; $4b85: $80
	ld   a, [de]                                     ; $4b86: $1a
	ld   b, $04                                      ; $4b87: $06 $04
	inc  d                                           ; $4b89: $14
	ld   [de], a                                     ; $4b8a: $12
	jp   nc, $0111                                   ; $4b8b: $d2 $11 $01

	nop                                              ; $4b8e: $00
	add  b                                           ; $4b8f: $80
	inc  b                                           ; $4b90: $04
	ld   [bc], a                                     ; $4b91: $02
	jr   z, jr_09e_4b9c                              ; $4b92: $28 $08

	rra                                              ; $4b94: $1f
	adc  e                                           ; $4b95: $8b
	nop                                              ; $4b96: $00
	inc  c                                           ; $4b97: $0c
	db   $e3                                         ; $4b98: $e3
	nop                                              ; $4b99: $00
	cp   a                                           ; $4b9a: $bf
	and  e                                           ; $4b9b: $a3

jr_09e_4b9c:
	ld   h, d                                        ; $4b9c: $62
	ld   l, [hl]                                     ; $4b9d: $6e
	ld   l, d                                        ; $4b9e: $6a
	ld   l, [hl]                                     ; $4b9f: $6e
	call nc, $9ddc                                   ; $4ba0: $d4 $dc $9d
	db   $dd                                         ; $4ba3: $dd
	ld   a, l                                        ; $4ba4: $7d
	add  c                                           ; $4ba5: $81
	cp   l                                           ; $4ba6: $bd
	add  b                                           ; $4ba7: $80
	cp   c                                           ; $4ba8: $b9
	nop                                              ; $4ba9: $00
	ld   a, a                                        ; $4baa: $7f
	add  e                                           ; $4bab: $83
	nop                                              ; $4bac: $00
	rlca                                             ; $4bad: $07
	jr   jr_09e_4bb0                                 ; $4bae: $18 $00

jr_09e_4bb0:
	inc  h                                           ; $4bb0: $24
	jr   jr_09e_4bfd                                 ; $4bb1: $18 $4a

	jr   c, @-$6d                                    ; $4bb3: $38 $91

	ld   a, h                                        ; $4bb5: $7c
	add  b                                           ; $4bb6: $80
	ld   a, l                                        ; $4bb7: $7d
	ld   bc, $7d39                                   ; $4bb8: $01 $39 $7d
	add  d                                           ; $4bbb: $82
	cp   $82                                         ; $4bbc: $fe $82
	sbc  a                                           ; $4bbe: $9f
	add  h                                           ; $4bbf: $84
	rra                                              ; $4bc0: $1f
	nop                                              ; $4bc1: $00
	rst  $38                                         ; $4bc2: $ff
	adc  e                                           ; $4bc3: $8b
	nop                                              ; $4bc4: $00
	ld   a, [bc]                                     ; $4bc5: $0a
	add  b                                           ; $4bc6: $80
	nop                                              ; $4bc7: $00
	ldh  [$80], a                                    ; $4bc8: $e0 $80
	ld   hl, sp-$20                                  ; $4bca: $f8 $e0
	rst  $38                                         ; $4bcc: $ff
	ld   hl, sp-$04                                  ; $4bcd: $f8 $fc
	rst  $38                                         ; $4bcf: $ff
	cp   h                                           ; $4bd0: $bc
	add  c                                           ; $4bd1: $81

jr_09e_4bd2:
	cp   a                                           ; $4bd2: $bf
	add  b                                           ; $4bd3: $80
	rst  JumpTable                                         ; $4bd4: $df
	add  b                                           ; $4bd5: $80
	rst  $28                                         ; $4bd6: $ef
	nop                                              ; $4bd7: $00
	rst  $38                                         ; $4bd8: $ff
	add  c                                           ; $4bd9: $81
	nop                                              ; $4bda: $00
	ld   a, [bc]                                     ; $4bdb: $0a
	ret  nz                                          ; $4bdc: $c0

	nop                                              ; $4bdd: $00
	ld   [hl], b                                     ; $4bde: $70
	ret  nz                                          ; $4bdf: $c0

	jr   jr_09e_4bd2                                 ; $4be0: $18 $f0

	ld   d, b                                        ; $4be2: $50
	ldh  a, [rAUD3LEVEL]                             ; $4be3: $f0 $1c
	ld   hl, sp-$28                                  ; $4be5: $f8 $d8
	add  c                                           ; $4be7: $81
	ld   hl, sp-$80                                  ; $4be8: $f8 $80
	adc  b                                           ; $4bea: $88
	ld   bc, $c0c2                                   ; $4beb: $01 $c2 $c0
	add  b                                           ; $4bee: $80
	nop                                              ; $4bef: $00
	rlca                                             ; $4bf0: $07
	ld   bc, $4000                                   ; $4bf1: $01 $00 $40
	ret  nz                                          ; $4bf4: $c0

	sbc  b                                           ; $4bf5: $98
	ld   hl, sp-$20                                  ; $4bf6: $f8 $e0
	rst  $38                                         ; $4bf8: $ff
	add  h                                           ; $4bf9: $84
	nop                                              ; $4bfa: $00
	rlca                                             ; $4bfb: $07
	ret  nz                                          ; $4bfc: $c0

jr_09e_4bfd:
	nop                                              ; $4bfd: $00
	jr   nz, jr_09e_4c40                             ; $4bfe: $20 $40

	nop                                              ; $4c00: $00
	ret  nz                                          ; $4c01: $c0

	ld   [hl], b                                     ; $4c02: $70
	ldh  [$80], a                                    ; $4c03: $e0 $80
	add  b                                           ; $4c05: $80
	inc  b                                           ; $4c06: $04
	stop                                             ; $4c07: $10 $00
	jr   nz, jr_09e_4c0b                             ; $4c09: $20 $00

jr_09e_4c0b:
	ld   b, b                                        ; $4c0b: $40
	add  c                                           ; $4c0c: $81
	nop                                              ; $4c0d: $00
	nop                                              ; $4c0e: $00
	ld   b, b                                        ; $4c0f: $40
	add  c                                           ; $4c10: $81
	nop                                              ; $4c11: $00
	add  b                                           ; $4c12: $80
	add  b                                           ; $4c13: $80
	ld   [$0040], sp                                 ; $4c14: $08 $40 $00
	add  b                                           ; $4c17: $80
	nop                                              ; $4c18: $00
	ld   bc, $0300                                   ; $4c19: $01 $00 $03
	ld   bc, $8107                                   ; $4c1c: $01 $07 $81
	inc  bc                                          ; $4c1f: $03
	ld   [bc], a                                     ; $4c20: $02
	ld   [$1000], sp                                 ; $4c21: $08 $00 $10
	add  c                                           ; $4c24: $81
	rrca                                             ; $4c25: $0f
	nop                                              ; $4c26: $00
	cpl                                              ; $4c27: $2f
	add  b                                           ; $4c28: $80
	inc  de                                          ; $4c29: $13
	add  b                                           ; $4c2a: $80
	inc  bc                                          ; $4c2b: $03
	ld   bc, $4101                                   ; $4c2c: $01 $01 $41
	add  b                                           ; $4c2f: $80
	ld   bc, $0085                                   ; $4c30: $01 $85 $00
	nop                                              ; $4c33: $00
	ld   a, a                                        ; $4c34: $7f
	adc  c                                           ; $4c35: $89
	nop                                              ; $4c36: $00
	dec  b                                           ; $4c37: $05
	rrca                                             ; $4c38: $0f
	nop                                              ; $4c39: $00
	ld   a, $0e                                      ; $4c3a: $3e $0e
	db   $fd                                         ; $4c3c: $fd
	dec  a                                           ; $4c3d: $3d
	add  b                                           ; $4c3e: $80
	ei                                               ; $4c3f: $fb

jr_09e_4c40:
	add  b                                           ; $4c40: $80
	or   $0a                                         ; $4c41: $f6 $0a
	db   $ec                                         ; $4c43: $ec
	db   $ed                                         ; $4c44: $ed
	reti                                             ; $4c45: $d9


	db   $db                                         ; $4c46: $db
	ld   [de], a                                     ; $4c47: $12
	ld   d, $04                                      ; $4c48: $16 $04
	db   $e4                                         ; $4c4a: $e4
	and  $f8                                         ; $4c4b: $e6 $f8
	ld   b, $85                                      ; $4c4d: $06 $85
	nop                                              ; $4c4f: $00
	ld   [bc], a                                     ; $4c50: $02
	ld   bc, $fe00                                   ; $4c51: $01 $00 $fe
	add  b                                           ; $4c54: $80
	nop                                              ; $4c55: $00
	add  b                                           ; $4c56: $80
	rst  $20                                         ; $4c57: $e7
	ld   bc, $847b                                   ; $4c58: $01 $7b $84
	adc  l                                           ; $4c5b: $8d
	nop                                              ; $4c5c: $00
	ld   [bc], a                                     ; $4c5d: $02
	rrca                                             ; $4c5e: $0f
	nop                                              ; $4c5f: $00
	rrca                                             ; $4c60: $0f
	add  c                                           ; $4c61: $81
	nop                                              ; $4c62: $00
	ld   [bc], a                                     ; $4c63: $02
	rlca                                             ; $4c64: $07
	nop                                              ; $4c65: $00
	ld   [$0081], sp                                 ; $4c66: $08 $81 $00
	ld   bc, $0008                                   ; $4c69: $01 $08 $00
	add  d                                           ; $4c6c: $82
	inc  bc                                          ; $4c6d: $03
	ld   b, $0f                                      ; $4c6e: $06 $0f
	rlca                                             ; $4c70: $07
	inc  sp                                          ; $4c71: $33
	inc  bc                                          ; $4c72: $03
	ld   b, c                                        ; $4c73: $41
	dec  a                                           ; $4c74: $3d
	cp   h                                           ; $4c75: $bc
	add  b                                           ; $4c76: $80
	ld   c, $80                                      ; $4c77: $0e $80
	di                                               ; $4c79: $f3
	add  b                                           ; $4c7a: $80
	ld   a, h                                        ; $4c7b: $7c
	nop                                              ; $4c7c: $00
	ld   a, a                                        ; $4c7d: $7f
	add  d                                           ; $4c7e: $82
	ld   a, [hl]                                     ; $4c7f: $7e
	nop                                              ; $4c80: $00
	ld   a, a                                        ; $4c81: $7f
	add  b                                           ; $4c82: $80
	ld   a, e                                        ; $4c83: $7b
	add  b                                           ; $4c84: $80
	ld   a, l                                        ; $4c85: $7d
	add  b                                           ; $4c86: $80
	ld   a, [hl]                                     ; $4c87: $7e
	add  b                                           ; $4c88: $80
	rrca                                             ; $4c89: $0f
	add  b                                           ; $4c8a: $80
	inc  bc                                          ; $4c8b: $03

jr_09e_4c8c:
	ld   de, $c000                                   ; $4c8c: $11 $00 $c0
	nop                                              ; $4c8f: $00
	jr   nc, jr_09e_4c92                             ; $4c90: $30 $00

jr_09e_4c92:
	ld   c, $00                                      ; $4c92: $0e $00
	ld   bc, $8000                                   ; $4c94: $01 $00 $80
	nop                                              ; $4c97: $00
	ret  nz                                          ; $4c98: $c0

	nop                                              ; $4c99: $00
	ld   [hl], b                                     ; $4c9a: $70
	nop                                              ; $4c9b: $00
	ld   a, $00                                      ; $4c9c: $3e $00
	ld   c, $83                                      ; $4c9e: $0e $83
	nop                                              ; $4ca0: $00
	add  b                                           ; $4ca1: $80
	add  b                                           ; $4ca2: $80
	add  b                                           ; $4ca3: $80
	ret  nz                                          ; $4ca4: $c0

	inc  b                                           ; $4ca5: $04

jr_09e_4ca6:
	ldh  [rAUD4LEN], a                               ; $4ca6: $e0 $20
	ld   sp, $cfc1                                   ; $4ca8: $31 $c1 $cf
	add  b                                           ; $4cab: $80
	ld   [hl], b                                     ; $4cac: $70
	add  b                                           ; $4cad: $80
	ld   e, $80                                      ; $4cae: $1e $80
	ld   b, $00                                      ; $4cb0: $06 $00
	nop                                              ; $4cb2: $00
	add  b                                           ; $4cb3: $80
	ret  nz                                          ; $4cb4: $c0

	nop                                              ; $4cb5: $00
	db   $10                                         ; $4cb6: $10
	add  e                                           ; $4cb7: $83
	ldh  a, [$0e]                                    ; $4cb8: $f0 $0e
	ld   d, b                                        ; $4cba: $50
	ldh  a, [rSTAT]                                  ; $4cbb: $f0 $41
	db   $fc                                         ; $4cbd: $fc
	cp   $f8                                         ; $4cbe: $fe $f8
	db   $fc                                         ; $4cc0: $fc
	ldh  a, [$f8]                                    ; $4cc1: $f0 $f8
	ldh  [$f0], a                                    ; $4cc3: $e0 $f0
	ret  nz                                          ; $4cc5: $c0

	ldh  [$80], a                                    ; $4cc6: $e0 $80
	ret  nz                                          ; $4cc8: $c0

	add  c                                           ; $4cc9: $81
	nop                                              ; $4cca: $00
	ld   [bc], a                                     ; $4ccb: $02
	ld   b, b                                        ; $4ccc: $40
	nop                                              ; $4ccd: $00
	jr   nz, @-$7b                                   ; $4cce: $20 $83

	nop                                              ; $4cd0: $00
	add  b                                           ; $4cd1: $80
	ld   b, b                                        ; $4cd2: $40
	ld   b, $58                                      ; $4cd3: $06 $58
	ld   b, b                                        ; $4cd5: $40
	ld   e, h                                        ; $4cd6: $5c
	ld   b, b                                        ; $4cd7: $40
	inc  hl                                          ; $4cd8: $23
	nop                                              ; $4cd9: $00
	rst  ToBoot                                         ; $4cda: $c7
	adc  e                                           ; $4cdb: $8b
	nop                                              ; $4cdc: $00
	ld   [$0080], sp                                 ; $4cdd: $08 $80 $00
	ld   a, b                                        ; $4ce0: $78
	add  b                                           ; $4ce1: $80
	or   [hl]                                        ; $4ce2: $b6
	add  b                                           ; $4ce3: $80
	add  a                                           ; $4ce4: $87
	add  b                                           ; $4ce5: $80
	or   [hl]                                        ; $4ce6: $b6
	add  b                                           ; $4ce7: $80
	ret  nz                                          ; $4ce8: $c0

	ld   [bc], a                                     ; $4ce9: $02
	cp   $f8                                         ; $4cea: $fe $f8
	ld   sp, hl                                      ; $4cec: $f9

jr_09e_4ced:
	add  b                                           ; $4ced: $80
	cp   $80                                         ; $4cee: $fe $80
	rst  $38                                         ; $4cf0: $ff
	add  d                                           ; $4cf1: $82
	nop                                              ; $4cf2: $00
	dec  bc                                          ; $4cf3: $0b
	add  b                                           ; $4cf4: $80
	nop                                              ; $4cf5: $00
	ldh  [$80], a                                    ; $4cf6: $e0 $80
	ld   [hl], b                                     ; $4cf8: $70
	ld   h, b                                        ; $4cf9: $60

jr_09e_4cfa:
	jr   jr_09e_4c8c                                 ; $4cfa: $18 $90

	inc  c                                           ; $4cfc: $0c
	ld   l, b                                        ; $4cfd: $68
	and  [hl]                                        ; $4cfe: $a6
	or   h                                           ; $4cff: $b4
	add  b                                           ; $4d00: $80
	ret  nc                                          ; $4d01: $d0

	inc  bc                                          ; $4d02: $03
	pop  hl                                          ; $4d03: $e1
	add  sp, -$10                                    ; $4d04: $e8 $f0
	ldh  a, [c]                                      ; $4d06: $f2
	add  e                                           ; $4d07: $83
	ld   a, [$f601]                                  ; $4d08: $fa $01 $f6
	db   $f4                                         ; $4d0b: $f4
	add  c                                           ; $4d0c: $81
	ld   [hl], h                                     ; $4d0d: $74
	inc  c                                           ; $4d0e: $0c
	adc  e                                           ; $4d0f: $8b
	nop                                              ; $4d10: $00
	ld   b, $00                                      ; $4d11: $06 $00
	inc  c                                           ; $4d13: $0c
	nop                                              ; $4d14: $00
	jr   jr_09e_4d17                                 ; $4d15: $18 $00

jr_09e_4d17:
	jr   nc, jr_09e_4d19                             ; $4d17: $30 $00

jr_09e_4d19:
	ld   h, b                                        ; $4d19: $60
	nop                                              ; $4d1a: $00
	ret  nz                                          ; $4d1b: $c0

	add  c                                           ; $4d1c: $81
	nop                                              ; $4d1d: $00
	ld   [bc], a                                     ; $4d1e: $02
	ld   b, b                                        ; $4d1f: $40
	nop                                              ; $4d20: $00
	jr   nz, jr_09e_4ca6                             ; $4d21: $20 $83

	nop                                              ; $4d23: $00
	inc  de                                          ; $4d24: $13
	ld   b, b                                        ; $4d25: $40
	nop                                              ; $4d26: $00
	jr   jr_09e_4d29                                 ; $4d27: $18 $00

jr_09e_4d29:
	inc  b                                           ; $4d29: $04
	jr   jr_09e_4d87                                 ; $4d2a: $18 $5b

	jr   c, jr_09e_4ced                              ; $4d2c: $38 $bf

	nop                                              ; $4d2e: $00
	ld   [hl], $30                                   ; $4d2f: $36 $30
	scf                                              ; $4d31: $37
	ld   [hl], $40                                   ; $4d32: $36 $40
	nop                                              ; $4d34: $00
	ld   a, $00                                      ; $4d35: $3e $00
	rlca                                             ; $4d37: $07
	ld   b, $80                                      ; $4d38: $06 $80
	ld   bc, $0082                                   ; $4d3a: $01 $82 $00
	ld   [bc], a                                     ; $4d3d: $02
	ld   [$0c00], sp                                 ; $4d3e: $08 $00 $0c
	add  c                                           ; $4d41: $81
	nop                                              ; $4d42: $00
	ld   [$0006], sp                                 ; $4d43: $08 $06 $00
	dec  c                                           ; $4d46: $0d
	nop                                              ; $4d47: $00
	ld   a, [hl]                                     ; $4d48: $7e
	nop                                              ; $4d49: $00
	ldh  a, [rP1]                                    ; $4d4a: $f0 $00
	add  c                                           ; $4d4c: $81
	add  c                                           ; $4d4d: $81
	nop                                              ; $4d4e: $00
	ld   de, $0080                                   ; $4d4f: $11 $80 $00
	ldh  [rP1], a                                    ; $4d52: $e0 $00
	ldh  a, [rP1]                                    ; $4d54: $f0 $00
	ld   hl, sp+$00                                  ; $4d56: $f8 $00
	db   $fc                                         ; $4d58: $fc
	add  b                                           ; $4d59: $80
	ld   e, [hl]                                     ; $4d5a: $5e
	ld   b, b                                        ; $4d5b: $40
	inc  h                                           ; $4d5c: $24
	jr   nz, jr_09e_4d78                             ; $4d5d: $20 $19

	db   $10                                         ; $4d5f: $10
	ld   a, [bc]                                     ; $4d60: $0a
	ld   [$0082], sp                                 ; $4d61: $08 $82 $00
	ld   [bc], a                                     ; $4d64: $02
	inc  c                                           ; $4d65: $0c
	nop                                              ; $4d66: $00
	add  d                                           ; $4d67: $82
	add  c                                           ; $4d68: $81
	ld   [bc], a                                     ; $4d69: $02
	nop                                              ; $4d6a: $00

jr_09e_4d6b:
	adc  c                                           ; $4d6b: $89
	rst  $38                                         ; $4d6c: $ff
	nop                                              ; $4d6d: $00
	rst  $38                                         ; $4d6e: $ff
	nop                                              ; $4d6f: $00
	db   $db                                         ; $4d70: $db
	nop                                              ; $4d71: $00
	ld   bc, $3946                                   ; $4d72: $01 $46 $39
	add  b                                           ; $4d75: $80
	add  hl, hl                                      ; $4d76: $29
	add  b                                           ; $4d77: $80

jr_09e_4d78:
	jr   z, jr_09e_4cfa                              ; $4d78: $28 $80

	ld   b, h                                        ; $4d7a: $44
	add  hl, bc                                      ; $4d7b: $09
	ld   b, b                                        ; $4d7c: $40
	add  b                                           ; $4d7d: $80
	ld   h, b                                        ; $4d7e: $60
	ld   [hl+], a                                    ; $4d7f: $22
	ld   [bc], a                                     ; $4d80: $02
	inc  bc                                          ; $4d81: $03
	add  e                                           ; $4d82: $83
	sbc  c                                           ; $4d83: $99
	ld   b, $1f                                      ; $4d84: $06 $1f
	add  b                                           ; $4d86: $80

jr_09e_4d87:
	rla                                              ; $4d87: $17
	add  b                                           ; $4d88: $80
	sub  a                                           ; $4d89: $97
	add  d                                           ; $4d8a: $82
	sbc  e                                           ; $4d8b: $9b
	nop                                              ; $4d8c: $00
	dec  e                                           ; $4d8d: $1d
	add  b                                           ; $4d8e: $80
	ld   e, l                                        ; $4d8f: $5d
	nop                                              ; $4d90: $00
	db   $dd                                         ; $4d91: $dd
	add  b                                           ; $4d92: $80
	adc  $01                                         ; $4d93: $ce $01
	inc  sp                                          ; $4d95: $33
	di                                               ; $4d96: $f3
	add  b                                           ; $4d97: $80
	ld   sp, hl                                      ; $4d98: $f9
	inc  b                                           ; $4d99: $04
	db   $fc                                         ; $4d9a: $fc
	db   $f4                                         ; $4d9b: $f4
	or   $fa                                         ; $4d9c: $f6 $fa
	ei                                               ; $4d9e: $fb
	add  b                                           ; $4d9f: $80
	db   $fc                                         ; $4da0: $fc
	add  b                                           ; $4da1: $80
	or   $80                                         ; $4da2: $f6 $80
	cp   b                                           ; $4da4: $b8
	ld   [bc], a                                     ; $4da5: $02
	jp   $ccff                                       ; $4da6: $c3 $ff $cc


	add  b                                           ; $4da9: $80
	db   $ec                                         ; $4daa: $ec
	add  b                                           ; $4dab: $80
	ld   [$8801], sp                                 ; $4dac: $08 $01 $88
	sbc  b                                           ; $4daf: $98
	add  b                                           ; $4db0: $80
	jr   jr_09e_4db5                                 ; $4db1: $18 $02

	sbc  b                                           ; $4db3: $98
	adc  b                                           ; $4db4: $88

jr_09e_4db5:
	ld   [$1880], sp                                 ; $4db5: $08 $80 $18
	ld   [bc], a                                     ; $4db8: $02
	jr   c, jr_09e_4d6b                              ; $4db9: $38 $b0

	ld   c, a                                        ; $4dbb: $4f
	add  b                                           ; $4dbc: $80
	ld   l, a                                        ; $4dbd: $6f
	ld   bc, $2f0f                                   ; $4dbe: $01 $0f $2f
	add  b                                           ; $4dc1: $80
	dec  h                                           ; $4dc2: $25
	add  b                                           ; $4dc3: $80
	ld   [hl+], a                                    ; $4dc4: $22
	add  b                                           ; $4dc5: $80
	ld   de, $0109                                   ; $4dc6: $11 $09 $01
	dec  d                                           ; $4dc9: $15
	inc  b                                           ; $4dca: $04
	ld   b, $89                                      ; $4dcb: $06 $89
	ld   h, c                                        ; $4dcd: $61
	and  c                                           ; $4dce: $a1
	or   [hl]                                        ; $4dcf: $b6
	add  $cf                                         ; $4dd0: $c6 $cf
	add  b                                           ; $4dd2: $80
	db   $e3                                         ; $4dd3: $e3
	add  b                                           ; $4dd4: $80
	ldh  a, [$80]                                    ; $4dd5: $f0 $80
	ld   a, h                                        ; $4dd7: $7c
	add  b                                           ; $4dd8: $80
	cp   a                                           ; $4dd9: $bf
	add  b                                           ; $4dda: $80
	ld   c, a                                        ; $4ddb: $4f
	nop                                              ; $4ddc: $00
	ld   a, a                                        ; $4ddd: $7f
	add  c                                           ; $4dde: $81
	nop                                              ; $4ddf: $00
	dec  bc                                          ; $4de0: $0b
	inc  b                                           ; $4de1: $04
	nop                                              ; $4de2: $00
	ld   b, $00                                      ; $4de3: $06 $00
	inc  bc                                          ; $4de5: $03
	nop                                              ; $4de6: $00
	ld   [hl], c                                     ; $4de7: $71
	nop                                              ; $4de8: $00
	inc  c                                           ; $4de9: $0c
	nop                                              ; $4dea: $00
	inc  bc                                          ; $4deb: $03
	nop                                              ; $4dec: $00
	add  b                                           ; $4ded: $80
	ret  nz                                          ; $4dee: $c0

	add  b                                           ; $4def: $80
	ldh  a, [$80]                                    ; $4df0: $f0 $80
	cp   $80                                         ; $4df2: $fe $80
	rst  $38                                         ; $4df4: $ff
	add  b                                           ; $4df5: $80
	ld   a, a                                        ; $4df6: $7f
	ld   b, $3f                                      ; $4df7: $06 $3f
	cp   a                                           ; $4df9: $bf
	adc  a                                           ; $4dfa: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dfb: $cf
	pop  bc                                          ; $4dfc: $c1
	pop  af                                          ; $4dfd: $f1
	ldh  a, [$80]                                    ; $4dfe: $f0 $80
	nop                                              ; $4e00: $00
	add  b                                           ; $4e01: $80
	ld   a, a                                        ; $4e02: $7f
	nop                                              ; $4e03: $00
	rst  $38                                         ; $4e04: $ff
	add  b                                           ; $4e05: $80
	rst  ToBoot                                         ; $4e06: $c7
	add  b                                           ; $4e07: $80
	rra                                              ; $4e08: $1f
	add  b                                           ; $4e09: $80
	ccf                                              ; $4e0a: $3f
	add  b                                           ; $4e0b: $80
	ld   a, a                                        ; $4e0c: $7f
	sub  c                                           ; $4e0d: $91
	rst  $38                                         ; $4e0e: $ff
	add  b                                           ; $4e0f: $80
	cp   $84                                         ; $4e10: $fe $84
	rst  $38                                         ; $4e12: $ff
	add  b                                           ; $4e13: $80
	ld   sp, hl                                      ; $4e14: $f9
	add  b                                           ; $4e15: $80
	cp   $82                                         ; $4e16: $fe $82
	rst  $38                                         ; $4e18: $ff
	add  b                                           ; $4e19: $80
	nop                                              ; $4e1a: $00
	add  b                                           ; $4e1b: $80
	ld   sp, hl                                      ; $4e1c: $f9
	add  b                                           ; $4e1d: $80
	add  hl, sp                                      ; $4e1e: $39
	add  b                                           ; $4e1f: $80
	ret  nz                                          ; $4e20: $c0

	add  b                                           ; $4e21: $80
	ldh  a, [c]                                      ; $4e22: $f2
	add  b                                           ; $4e23: $80
	ld   [bc], a                                     ; $4e24: $02
	add  b                                           ; $4e25: $80
	ret  nz                                          ; $4e26: $c0

	add  b                                           ; $4e27: $80
	ld   sp, hl                                      ; $4e28: $f9
	add  b                                           ; $4e29: $80
	ld   l, a                                        ; $4e2a: $6f
	add  b                                           ; $4e2b: $80
	rra                                              ; $4e2c: $1f
	add  b                                           ; $4e2d: $80
	ccf                                              ; $4e2e: $3f
	add  b                                           ; $4e2f: $80
	ld   a, a                                        ; $4e30: $7f
	add  b                                           ; $4e31: $80
	ld   c, a                                        ; $4e32: $4f
	add  b                                           ; $4e33: $80
	rra                                              ; $4e34: $1f
	add  d                                           ; $4e35: $82
	ccf                                              ; $4e36: $3f
	add  b                                           ; $4e37: $80
	db   $fd                                         ; $4e38: $fd
	add  d                                           ; $4e39: $82
	cp   $01                                         ; $4e3a: $fe $01
	rst  $38                                         ; $4e3c: $ff
	rst  $30                                         ; $4e3d: $f7
	add  c                                           ; $4e3e: $81
	push af                                          ; $4e3f: $f5
	ld   bc, $f2f1                                   ; $4e40: $01 $f1 $f2
	add  b                                           ; $4e43: $80
	ld   a, [$fe00]                                  ; $4e44: $fa $00 $fe
	add  h                                           ; $4e47: $84
	rst  $38                                         ; $4e48: $ff
	add  b                                           ; $4e49: $80
	ld   a, a                                        ; $4e4a: $7f
	add  b                                           ; $4e4b: $80
	cp   a                                           ; $4e4c: $bf
	add  b                                           ; $4e4d: $80
	rst  JumpTable                                         ; $4e4e: $df
	add  b                                           ; $4e4f: $80
	ld   l, a                                        ; $4e50: $6f
	add  b                                           ; $4e51: $80
	cpl                                              ; $4e52: $2f
	add  b                                           ; $4e53: $80
	db   $fd                                         ; $4e54: $fd
	add  d                                           ; $4e55: $82
	db   $dd                                         ; $4e56: $dd
	add  d                                           ; $4e57: $82
	rlc  d                                           ; $4e58: $cb $02
	ret  nz                                          ; $4e5a: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e5b: $cf
	adc  a                                           ; $4e5c: $8f
	add  b                                           ; $4e5d: $80
	sbc  a                                           ; $4e5e: $9f
	nop                                              ; $4e5f: $00
	add  b                                           ; $4e60: $80
	adc  b                                           ; $4e61: $88
	rst  $38                                         ; $4e62: $ff
	ld   [bc], a                                     ; $4e63: $02
	rlca                                             ; $4e64: $07
	rst  $38                                         ; $4e65: $ff
	ld   hl, sp-$80                                  ; $4e66: $f8 $80
	rst  $38                                         ; $4e68: $ff
	nop                                              ; $4e69: $00
	nop                                              ; $4e6a: $00
	adc  b                                           ; $4e6b: $88
	ld   sp, hl                                      ; $4e6c: $f9
	add  b                                           ; $4e6d: $80
	db   $fd                                         ; $4e6e: $fd
	add  b                                           ; $4e6f: $80
	db   $fc                                         ; $4e70: $fc
	add  b                                           ; $4e71: $80
	inc  a                                           ; $4e72: $3c
	adc  d                                           ; $4e73: $8a
	ccf                                              ; $4e74: $3f
	add  b                                           ; $4e75: $80
	sbc  a                                           ; $4e76: $9f
	ld   bc, $619e                                   ; $4e77: $01 $9e $61
	adc  l                                           ; $4e7a: $8d
	nop                                              ; $4e7b: $00
	dec  b                                           ; $4e7c: $05
	ret  nz                                          ; $4e7d: $c0

	inc  sp                                          ; $4e7e: $33
	inc  bc                                          ; $4e7f: $03
	add  hl, bc                                      ; $4e80: $09
	ld   b, $00                                      ; $4e81: $06 $00
	add  b                                           ; $4e83: $80
	rlca                                             ; $4e84: $07
	rlca                                             ; $4e85: $07
	ld   a, $22                                      ; $4e86: $3e $22
	db   $e3                                         ; $4e88: $e3
	rst  $30                                         ; $4e89: $f7
	or   $ee                                         ; $4e8a: $f6 $ee
	stop                                             ; $4e8c: $10 $00
	add  c                                           ; $4e8e: $81
	rst  $38                                         ; $4e8f: $ff
	ld   [bc], a                                     ; $4e90: $02
	ld   a, a                                        ; $4e91: $7f
	ld   a, [hl]                                     ; $4e92: $7e
	cp   $80                                         ; $4e93: $fe $80
	ldh  a, [$82]                                    ; $4e95: $f0 $82
	nop                                              ; $4e97: $00
	add  b                                           ; $4e98: $80
	ldh  a, [$80]                                    ; $4e99: $f0 $80
	ret  nz                                          ; $4e9b: $c0

	nop                                              ; $4e9c: $00
	nop                                              ; $4e9d: $00
	add  b                                           ; $4e9e: $80
	rst  $38                                         ; $4e9f: $ff
	add  b                                           ; $4ea0: $80
	rst  $30                                         ; $4ea1: $f7
	add  d                                           ; $4ea2: $82
	ei                                               ; $4ea3: $fb
	add  b                                           ; $4ea4: $80
	db   $fd                                         ; $4ea5: $fd
	dec  b                                           ; $4ea6: $05
	ldh  a, [$fe]                                    ; $4ea7: $f0 $fe
	adc  [hl]                                        ; $4ea9: $8e
	cp   $7e                                         ; $4eaa: $fe $7e
	rst  $38                                         ; $4eac: $ff
	rst  $38                                         ; $4ead: $ff
	nop                                              ; $4eae: $00
	rst  $38                                         ; $4eaf: $ff
	nop                                              ; $4eb0: $00
	rst  $38                                         ; $4eb1: $ff
	nop                                              ; $4eb2: $00
	rst  $38                                         ; $4eb3: $ff
	nop                                              ; $4eb4: $00
	rst  $38                                         ; $4eb5: $ff
	nop                                              ; $4eb6: $00
	adc  b                                           ; $4eb7: $88
	nop                                              ; $4eb8: $00
	rst  $28                                         ; $4eb9: $ef
	nop                                              ; $4eba: $00
	add  h                                           ; $4ebb: $84
	nop                                              ; $4ebc: $00
	ld   [bc], a                                     ; $4ebd: $02
	ld   bc, $0300                                   ; $4ebe: $01 $00 $03
	add  c                                           ; $4ec1: $81
	ld   bc, $0701                                   ; $4ec2: $01 $01 $07
	inc  bc                                          ; $4ec5: $03
	add  b                                           ; $4ec6: $80
	ld   [bc], a                                     ; $4ec7: $02
	nop                                              ; $4ec8: $00
	ld   c, $83                                      ; $4ec9: $0e $83
	ld   b, $83                                      ; $4ecb: $06 $83
	ld   [$0081], sp                                 ; $4ecd: $08 $81 $00
	add  b                                           ; $4ed0: $80
	ld   bc, $3605                                   ; $4ed1: $01 $05 $36
	ld   c, $7e                                      ; $4ed4: $0e $7e
	ld   a, $ff                                      ; $4ed6: $3e $ff
	ld   a, a                                        ; $4ed8: $7f
	add  b                                           ; $4ed9: $80
	cp   $12                                         ; $4eda: $fe $12
	ld   hl, sp-$07                                  ; $4edc: $f8 $f9
	ld   h, b                                        ; $4ede: $60
	ld   h, [hl]                                     ; $4edf: $66
	nop                                              ; $4ee0: $00
	jr   jr_09e_4eea                                 ; $4ee1: $18 $07

	ld   h, $3f                                      ; $4ee3: $26 $3f
	ld   a, c                                        ; $4ee5: $79
	ld   a, a                                        ; $4ee6: $7f
	rst  $20                                         ; $4ee7: $e7
	rst  $38                                         ; $4ee8: $ff
	rst  JumpTable                                         ; $4ee9: $df

jr_09e_4eea:
	or   $b6                                         ; $4eea: $f6 $b6
	or   $76                                         ; $4eec: $f6 $76
	xor  $80                                         ; $4eee: $ee $80
	db   $ec                                         ; $4ef0: $ec
	add  b                                           ; $4ef1: $80
	ld   [$6a02], a                                  ; $4ef2: $ea $02 $6a
	ei                                               ; $4ef5: $fb
	ld   a, a                                        ; $4ef6: $7f
	add  d                                           ; $4ef7: $82
	rst  $38                                         ; $4ef8: $ff
	add  b                                           ; $4ef9: $80
	nop                                              ; $4efa: $00
	ld   bc, $8778                                   ; $4efb: $01 $78 $87
	add  b                                           ; $4efe: $80
	nop                                              ; $4eff: $00
	add  b                                           ; $4f00: $80
	rra                                              ; $4f01: $1f
	ld   bc, $00ff                                   ; $4f02: $01 $ff $00
	add  b                                           ; $4f05: $80
	rst  $38                                         ; $4f06: $ff
	add  b                                           ; $4f07: $80
	ld   e, a                                        ; $4f08: $5f
	add  b                                           ; $4f09: $80
	ld   l, a                                        ; $4f0a: $6f
	dec  bc                                          ; $4f0b: $0b
	and  [hl]                                        ; $4f0c: $a6
	and  h                                           ; $4f0d: $a4
	or   c                                           ; $4f0e: $b1
	ld   [hl+], a                                    ; $4f0f: $22
	jr   nz, jr_09e_4f33                             ; $4f10: $20 $21

	ld   c, d                                        ; $4f12: $4a
	ld   e, b                                        ; $4f13: $58
	ld   c, c                                        ; $4f14: $49
	jp   z, $fffe                                    ; $4f15: $ca $fe $ff

	add  b                                           ; $4f18: $80
	ld   a, a                                        ; $4f19: $7f
	nop                                              ; $4f1a: $00
	ccf                                              ; $4f1b: $3f

jr_09e_4f1c:
	add  b                                           ; $4f1c: $80
	rra                                              ; $4f1d: $1f
	add  b                                           ; $4f1e: $80
	ld   l, $01                                      ; $4f1f: $2e $01
	add  hl, hl                                      ; $4f21: $29
	add  hl, bc                                      ; $4f22: $09
	add  d                                           ; $4f23: $82
	rst  $10                                         ; $4f24: $d7
	ld   [bc], a                                     ; $4f25: $02
	ld   e, a                                        ; $4f26: $5f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f27: $cf
	adc  a                                           ; $4f28: $8f
	add  e                                           ; $4f29: $83
	rst  $28                                         ; $4f2a: $ef
	ld   b, $af                                      ; $4f2b: $06 $af
	scf                                              ; $4f2d: $37
	ld   d, a                                        ; $4f2e: $57
	or   a                                           ; $4f2f: $b7
	rla                                              ; $4f30: $17
	ld   b, a                                        ; $4f31: $47
	rst  ToBoot                                         ; $4f32: $c7

jr_09e_4f33:
	add  b                                           ; $4f33: $80
	ld   h, e                                        ; $4f34: $63
	inc  c                                           ; $4f35: $0c
	ccf                                              ; $4f36: $3f
	nop                                              ; $4f37: $00
	ld   h, b                                        ; $4f38: $60
	ret  nz                                          ; $4f39: $c0

	jr   nc, jr_09e_4f1c                             ; $4f3a: $30 $e0

	ret  nz                                          ; $4f3c: $c0

	ldh  [$38], a                                    ; $4f3d: $e0 $38
	ldh  a, [rSVBK]                                  ; $4f3f: $f0 $70
	ldh  a, [$d0]                                    ; $4f41: $f0 $d0
	add  c                                           ; $4f43: $81
	ldh  a, [rP1]                                    ; $4f44: $f0 $00
	db   $fc                                         ; $4f46: $fc
	add  l                                           ; $4f47: $85
	ld   hl, sp+$00                                  ; $4f48: $f8 $00
	sbc  $83                                         ; $4f4a: $de $83
	call c, $cb04                                    ; $4f4c: $dc $04 $cb
	adc  $fd                                         ; $4f4f: $ce $fd
	ld   bc, $8002                                   ; $4f51: $01 $02 $80
	inc  bc                                          ; $4f54: $03
	add  e                                           ; $4f55: $83
	ld   [bc], a                                     ; $4f56: $02
	nop                                              ; $4f57: $00
	inc  b                                           ; $4f58: $04
	add  e                                           ; $4f59: $83
	nop                                              ; $4f5a: $00
	add  h                                           ; $4f5b: $84
	ld   bc, $0700                                   ; $4f5c: $01 $00 $07
	add  e                                           ; $4f5f: $83
	inc  bc                                          ; $4f60: $03
	nop                                              ; $4f61: $00
	rrca                                             ; $4f62: $0f
	add  c                                           ; $4f63: $81
	rlca                                             ; $4f64: $07
	nop                                              ; $4f65: $00
	ld   [bc], a                                     ; $4f66: $02
	add  l                                           ; $4f67: $85
	ld   b, $01                                      ; $4f68: $06 $01
	ld   [de], a                                     ; $4f6a: $12
	ld   c, $84                                      ; $4f6b: $0e $84
	inc  c                                           ; $4f6d: $0c
	ld   [bc], a                                     ; $4f6e: $02
	inc  b                                           ; $4f6f: $04
	inc  c                                           ; $4f70: $0c
	ld   d, $83                                      ; $4f71: $16 $83
	ld   b, $08                                      ; $4f73: $06 $08
	dec  bc                                          ; $4f75: $0b
	inc  bc                                          ; $4f76: $03
	inc  b                                           ; $4f77: $04
	nop                                              ; $4f78: $00
	inc  a                                           ; $4f79: $3c
	ld   bc, $0041                                   ; $4f7a: $01 $41 $00
	ld   a, a                                        ; $4f7d: $7f
	add  e                                           ; $4f7e: $83
	nop                                              ; $4f7f: $00
	nop                                              ; $4f80: $00
	ld   bc, $0081                                   ; $4f81: $01 $81 $00
	ld   c, $07                                      ; $4f84: $0e $07
	ld   bc, $071e                                   ; $4f86: $01 $1e $07
	ld   [$090f], sp                                 ; $4f89: $08 $0f $09
	rrca                                             ; $4f8c: $0f
	rla                                              ; $4f8d: $17
	rlca                                             ; $4f8e: $07
	ld   [$0400], sp                                 ; $4f8f: $08 $00 $04
	nop                                              ; $4f92: $00
	ld   [bc], a                                     ; $4f93: $02
	add  c                                           ; $4f94: $81
	nop                                              ; $4f95: $00
	ld   a, [bc]                                     ; $4f96: $0a
	rlca                                             ; $4f97: $07
	ld   bc, $0302                                   ; $4f98: $01 $02 $03
	ld   [bc], a                                     ; $4f9b: $02
	inc  bc                                          ; $4f9c: $03
	dec  b                                           ; $4f9d: $05
	ld   bc, $0002                                   ; $4f9e: $01 $02 $00
	ld   bc, $008d                                   ; $4fa1: $01 $8d $00
	dec  bc                                          ; $4fa4: $0b
	ld   bc, $0300                                   ; $4fa5: $01 $00 $03
	ld   bc, $0307                                   ; $4fa8: $01 $07 $03
	dec  bc                                          ; $4fab: $0b
	inc  bc                                          ; $4fac: $03
	rla                                              ; $4fad: $17
	rlca                                             ; $4fae: $07
	ld   h, c                                        ; $4faf: $61
	add  c                                           ; $4fb0: $81
	add  d                                           ; $4fb1: $82
	inc  bc                                          ; $4fb2: $03
	add  b                                           ; $4fb3: $80
	ld   [bc], a                                     ; $4fb4: $02
	inc  bc                                          ; $4fb5: $03
	add  c                                           ; $4fb6: $81
	ld   bc, $0302                                   ; $4fb7: $01 $02 $03
	add  b                                           ; $4fba: $80
	rlca                                             ; $4fbb: $07
	add  b                                           ; $4fbc: $80
	rrca                                             ; $4fbd: $0f
	ld   bc, $1f1e                                   ; $4fbe: $01 $1e $1f
	add  b                                           ; $4fc1: $80
	ccf                                              ; $4fc2: $3f
	ld   bc, $7fff                                   ; $4fc3: $01 $ff $7f
	adc  c                                           ; $4fc6: $89
	rst  $38                                         ; $4fc7: $ff
	add  c                                           ; $4fc8: $81
	nop                                              ; $4fc9: $00
	nop                                              ; $4fca: $00
	add  b                                           ; $4fcb: $80
	add  e                                           ; $4fcc: $83
	nop                                              ; $4fcd: $00
	nop                                              ; $4fce: $00
	ret  nz                                          ; $4fcf: $c0

	add  l                                           ; $4fd0: $85
	add  b                                           ; $4fd1: $80
	nop                                              ; $4fd2: $00
	ldh  [$87], a                                    ; $4fd3: $e0 $87
	ret  nz                                          ; $4fd5: $c0

	add  d                                           ; $4fd6: $82
	ld   b, b                                        ; $4fd7: $40
	ld   c, $26                                      ; $4fd8: $0e $26
	nop                                              ; $4fda: $00
	push bc                                          ; $4fdb: $c5
	nop                                              ; $4fdc: $00
	inc  a                                           ; $4fdd: $3c
	nop                                              ; $4fde: $00
	cp   $00                                         ; $4fdf: $fe $00
	ret  nz                                          ; $4fe1: $c0

	nop                                              ; $4fe2: $00
	dec  e                                           ; $4fe3: $1d
	nop                                              ; $4fe4: $00
	ld   [bc], a                                     ; $4fe5: $02
	inc  c                                           ; $4fe6: $0c
	dec  c                                           ; $4fe7: $0d
	add  b                                           ; $4fe8: $80
	ld   c, $01                                      ; $4fe9: $0e $01
	rrca                                             ; $4feb: $0f
	dec  e                                           ; $4fec: $1d
	add  h                                           ; $4fed: $84
	dec  b                                           ; $4fee: $05
	ld   bc, $0c04                                   ; $4fef: $01 $04 $0c
	add  e                                           ; $4ff2: $83
	nop                                              ; $4ff3: $00
	rrca                                             ; $4ff4: $0f
	rlca                                             ; $4ff5: $07
	nop                                              ; $4ff6: $00
	ld   [bc], a                                     ; $4ff7: $02
	nop                                              ; $4ff8: $00
	inc  b                                           ; $4ff9: $04
	nop                                              ; $4ffa: $00
	adc  h                                           ; $4ffb: $8c
	nop                                              ; $4ffc: $00
	jr   jr_09e_4fff                                 ; $4ffd: $18 $00

jr_09e_4fff:
	ldh  a, [rP1]                                    ; $4fff: $f0 $00
	ld   hl, $3f00                                   ; $5001: $21 $00 $3f
	ld   bc, $3e80                                   ; $5004: $01 $80 $3e
	add  b                                           ; $5007: $80
	inc  a                                           ; $5008: $3c
	ld   [$0001], sp                                 ; $5009: $08 $01 $00
	inc  a                                           ; $500c: $3c
	nop                                              ; $500d: $00
	dec  b                                           ; $500e: $05
	nop                                              ; $500f: $00
	rst  $28                                         ; $5010: $ef
	nop                                              ; $5011: $00
	ld   [$0081], sp                                 ; $5012: $08 $81 $00
	nop                                              ; $5015: $00
	ld   h, $85                                      ; $5016: $26 $85
	ld   a, c                                        ; $5018: $79
	add  d                                           ; $5019: $82
	ld   [hl], c                                     ; $501a: $71
	add  b                                           ; $501b: $80
	ld   [hl], b                                     ; $501c: $70
	ld   [bc], a                                     ; $501d: $02
	ld   [hl], c                                     ; $501e: $71
	ld   [hl], b                                     ; $501f: $70
	ldh  a, [c]                                      ; $5020: $f2
	add  c                                           ; $5021: $81
	ldh  a, [$80]                                    ; $5022: $f0 $80
	ret  nz                                          ; $5024: $c0

	inc  b                                           ; $5025: $04
	inc  b                                           ; $5026: $04
	jr   nz, @+$28                                   ; $5027: $20 $26

	ld   hl, sp-$07                                  ; $5029: $f8 $f9
	add  b                                           ; $502b: $80
	cp   $81                                         ; $502c: $fe $81
	rst  $38                                         ; $502e: $ff
	ld   bc, $40a0                                   ; $502f: $01 $a0 $40
	add  [hl]                                        ; $5032: $86
	nop                                              ; $5033: $00
	inc  b                                           ; $5034: $04
	jr   nz, jr_09e_5037                             ; $5035: $20 $00

jr_09e_5037:
	add  b                                           ; $5037: $80
	nop                                              ; $5038: $00
	ld   b, b                                        ; $5039: $40
	adc  c                                           ; $503a: $89
	nop                                              ; $503b: $00
	ld   b, $80                                      ; $503c: $06 $80
	nop                                              ; $503e: $00
	ld   [hl], b                                     ; $503f: $70
	add  b                                           ; $5040: $80
	adc  a                                           ; $5041: $8f
	ldh  a, [rIF]                                    ; $5042: $f0 $0f
	sbc  c                                           ; $5044: $99
	nop                                              ; $5045: $00
	dec  b                                           ; $5046: $05
	ld   a, b                                        ; $5047: $78
	nop                                              ; $5048: $00
	add  b                                           ; $5049: $80
	nop                                              ; $504a: $00
	rlca                                             ; $504b: $07
	nop                                              ; $504c: $00
	add  b                                           ; $504d: $80
	ld   e, $08                                      ; $504e: $1e $08
	ldh  [c], a                                      ; $5050: $e2
	cp   $1a                                         ; $5051: $fe $1a
	cp   $36                                         ; $5053: $fe $36
	cp   $de                                         ; $5055: $fe $de
	cp   $e6                                         ; $5057: $fe $e6
	add  c                                           ; $5059: $81
	cp   $0f                                         ; $505a: $fe $0f
	and  $fe                                         ; $505c: $e6 $fe
	ret  nc                                          ; $505e: $d0

	ret  nz                                          ; $505f: $c0

	dec  a                                           ; $5060: $3d
	inc  a                                           ; $5061: $3c
	db   $f4                                         ; $5062: $f4
	db   $fc                                         ; $5063: $fc
	db   $ec                                         ; $5064: $ec
	db   $fc                                         ; $5065: $fc
	rst  JumpTable                                         ; $5066: $df
	cp   $0e                                         ; $5067: $fe $0e
	cp   $37                                         ; $5069: $fe $37
	rst  $38                                         ; $506b: $ff
	add  b                                           ; $506c: $80
	jp   $0180                                       ; $506d: $c3 $80 $01


	add  d                                           ; $5070: $82
	nop                                              ; $5071: $00
	dec  b                                           ; $5072: $05
	ld   bc, $0600                                   ; $5073: $01 $00 $06
	nop                                              ; $5076: $00
	adc  b                                           ; $5077: $88
	add  b                                           ; $5078: $80
	add  b                                           ; $5079: $80
	ret  nz                                          ; $507a: $c0

	rlca                                             ; $507b: $07
	jr   c, @-$0e                                    ; $507c: $38 $f0

	ld   e, h                                        ; $507e: $5c
	ld   hl, sp-$48                                  ; $507f: $f8 $b8
	ld   hl, sp+$54                                  ; $5081: $f8 $54
	ld   [hl], b                                     ; $5083: $70
	add  b                                           ; $5084: $80
	db   $10                                         ; $5085: $10
	ld   b, $08                                      ; $5086: $06 $08
	nop                                              ; $5088: $00
	stop                                             ; $5089: $10 $00
	ld   h, b                                        ; $508b: $60
	nop                                              ; $508c: $00
	add  b                                           ; $508d: $80
	adc  e                                           ; $508e: $8b
	nop                                              ; $508f: $00
	nop                                              ; $5090: $00
	add  b                                           ; $5091: $80
	add  c                                           ; $5092: $81
	nop                                              ; $5093: $00
	nop                                              ; $5094: $00
	ret  nz                                          ; $5095: $c0

	add  c                                           ; $5096: $81
	add  b                                           ; $5097: $80
	ld   [bc], a                                     ; $5098: $02
	ld   b, b                                        ; $5099: $40
	nop                                              ; $509a: $00
	add  b                                           ; $509b: $80
	add  l                                           ; $509c: $85
	nop                                              ; $509d: $00
	ld   c, $0a                                      ; $509e: $0e $0a
	nop                                              ; $50a0: $00
	stop                                             ; $50a1: $10 $00
	inc  c                                           ; $50a3: $0c
	nop                                              ; $50a4: $00
	inc  b                                           ; $50a5: $04
	nop                                              ; $50a6: $00
	jr   nc, jr_09e_50a9                             ; $50a7: $30 $00

jr_09e_50a9:
	ld   bc, $1c00                                   ; $50a9: $01 $00 $1c
	nop                                              ; $50ac: $00
	ld   b, b                                        ; $50ad: $40
	add  e                                           ; $50ae: $83
	nop                                              ; $50af: $00
	ld   bc, $6fef                                   ; $50b0: $01 $ef $6f
	add  b                                           ; $50b3: $80
	ld   b, c                                        ; $50b4: $41
	dec  b                                           ; $50b5: $05
	ld   a, $00                                      ; $50b6: $3e $00
	ld   b, c                                        ; $50b8: $41
	nop                                              ; $50b9: $00
	cp   [hl]                                        ; $50ba: $be
	ld   a, $80                                      ; $50bb: $3e $80
	ld   a, a                                        ; $50bd: $7f
	db   $10                                         ; $50be: $10
	ld   b, d                                        ; $50bf: $42
	nop                                              ; $50c0: $00
	ld   b, $00                                      ; $50c1: $06 $00
	inc  c                                           ; $50c3: $0c
	nop                                              ; $50c4: $00
	cp   b                                           ; $50c5: $b8
	nop                                              ; $50c6: $00
	jr   nc, jr_09e_50c9                             ; $50c7: $30 $00

jr_09e_50c9:
	ld   b, b                                        ; $50c9: $40
	nop                                              ; $50ca: $00
	ld   b, b                                        ; $50cb: $40
	nop                                              ; $50cc: $00
	jr   c, jr_09e_50cf                              ; $50cd: $38 $00

jr_09e_50cf:
	rlca                                             ; $50cf: $07
	add  c                                           ; $50d0: $81
	nop                                              ; $50d1: $00
	add  b                                           ; $50d2: $80
	ldh  a, [$80]                                    ; $50d3: $f0 $80
	rst  $38                                         ; $50d5: $ff
	add  b                                           ; $50d6: $80
	ccf                                              ; $50d7: $3f
	ld   b, $cf                                      ; $50d8: $06 $cf
	rrca                                             ; $50da: $0f
	inc  sp                                          ; $50db: $33
	inc  bc                                          ; $50dc: $03
	call z, $28c0                                    ; $50dd: $cc $c0 $28
	add  b                                           ; $50e0: $80
	ld   d, l                                        ; $50e1: $55
	nop                                              ; $50e2: $00
	sub  l                                           ; $50e3: $95
	add  b                                           ; $50e4: $80
	sub  h                                           ; $50e5: $94
	nop                                              ; $50e6: $00
	add  b                                           ; $50e7: $80
	add  d                                           ; $50e8: $82
	jp   z, $c10a                                    ; $50e9: $ca $0a $c1

	ret  nc                                          ; $50ec: $d0

	rst  JumpTable                                         ; $50ed: $df
	adc  $d1                                         ; $50ee: $ce $d1
	ld   e, h                                        ; $50f0: $5c
	ld   c, b                                        ; $50f1: $48
	ld   a, [hl+]                                    ; $50f2: $2a
	daa                                              ; $50f3: $27
	ld   c, $08                                      ; $50f4: $0e $08
	add  b                                           ; $50f6: $80
	ld   e, b                                        ; $50f7: $58
	ld   bc, $5850                                   ; $50f8: $01 $50 $58
	add  b                                           ; $50fb: $80
	ld   c, h                                        ; $50fc: $4c
	ld   bc, $4440                                   ; $50fd: $01 $40 $44
	add  b                                           ; $5100: $80
	ld   b, d                                        ; $5101: $42
	db   $10                                         ; $5102: $10
	ld   b, [hl]                                     ; $5103: $46
	ld   d, h                                        ; $5104: $54
	ld   b, b                                        ; $5105: $40
	ld   c, b                                        ; $5106: $48
	ld   bc, $b084                                   ; $5107: $01 $84 $b0
	and  d                                           ; $510a: $a2
	inc  bc                                          ; $510b: $03
	ld   b, c                                        ; $510c: $41
	ld   a, [de]                                     ; $510d: $1a
	ld   sp, $1900                                   ; $510e: $31 $00 $19
	add  c                                           ; $5111: $81
	add  b                                           ; $5112: $80
	nop                                              ; $5113: $00
	add  b                                           ; $5114: $80
	add  b                                           ; $5115: $80
	add  e                                           ; $5116: $83
	nop                                              ; $5117: $00
	add  b                                           ; $5118: $80
	ld   [$180a], sp                                 ; $5119: $08 $0a $18
	db   $10                                         ; $511c: $10
	jr   jr_09e_513b                                 ; $511d: $18 $1c

	inc  c                                           ; $511f: $0c
	nop                                              ; $5120: $00
	call nz, $0bbb                                   ; $5121: $c4 $bb $0b
	ld   c, e                                        ; $5124: $4b
	pop  bc                                          ; $5125: $c1
	add  b                                           ; $5126: $80
	add  c                                           ; $5127: $81
	ld   [$6d69], sp                                 ; $5128: $08 $69 $6d
	push bc                                          ; $512b: $c5
	ld   l, b                                        ; $512c: $68
	adc  d                                           ; $512d: $8a
	ld   a, b                                        ; $512e: $78
	ld   e, $b4                                      ; $512f: $1e $b4
	ld   c, $82                                      ; $5131: $0e $82
	ld   b, $80                                      ; $5133: $06 $80
	rlca                                             ; $5135: $07
	nop                                              ; $5136: $00
	ld   b, $81                                      ; $5137: $06 $81
	rlca                                             ; $5139: $07
	nop                                              ; $513a: $00

jr_09e_513b:
	ld   b, $81                                      ; $513b: $06 $81
	rlca                                             ; $513d: $07
	ld   [bc], a                                     ; $513e: $02
	inc  b                                           ; $513f: $04
	ld   b, $28                                      ; $5140: $06 $28
	add  b                                           ; $5142: $80
	ld   d, l                                        ; $5143: $55
	nop                                              ; $5144: $00
	sub  l                                           ; $5145: $95
	add  b                                           ; $5146: $80
	sub  h                                           ; $5147: $94
	nop                                              ; $5148: $00
	add  b                                           ; $5149: $80
	add  d                                           ; $514a: $82
	jp   z, $c10a                                    ; $514b: $ca $0a $c1

	ret  nc                                          ; $514e: $d0

	rst  JumpTable                                         ; $514f: $df
	ret  nz                                          ; $5150: $c0

	rst  $10                                         ; $5151: $d7
	ld   d, b                                        ; $5152: $50
	ld   c, b                                        ; $5153: $48
	ld   l, $27                                      ; $5154: $2e $27
	ld   c, $08                                      ; $5156: $0e $08
	add  b                                           ; $5158: $80
	ld   e, b                                        ; $5159: $58
	ld   bc, $5850                                   ; $515a: $01 $50 $58
	add  b                                           ; $515d: $80
	ld   c, h                                        ; $515e: $4c
	ld   bc, $4440                                   ; $515f: $01 $40 $44
	add  b                                           ; $5162: $80
	ld   b, d                                        ; $5163: $42
	db   $10                                         ; $5164: $10
	ld   b, [hl]                                     ; $5165: $46
	ld   d, h                                        ; $5166: $54
	ld   b, b                                        ; $5167: $40
	ld   c, b                                        ; $5168: $48
	ld   bc, $b084                                   ; $5169: $01 $84 $b0
	and  d                                           ; $516c: $a2
	inc  bc                                          ; $516d: $03
	ld   b, c                                        ; $516e: $41
	ld   a, [de]                                     ; $516f: $1a
	ld   sp, $1900                                   ; $5170: $31 $00 $19
	add  c                                           ; $5173: $81
	add  b                                           ; $5174: $80
	nop                                              ; $5175: $00
	add  b                                           ; $5176: $80
	add  b                                           ; $5177: $80
	add  e                                           ; $5178: $83
	nop                                              ; $5179: $00
	add  b                                           ; $517a: $80
	ld   [$180a], sp                                 ; $517b: $08 $0a $18
	db   $10                                         ; $517e: $10
	jr   jr_09e_519d                                 ; $517f: $18 $1c

	inc  c                                           ; $5181: $0c
	nop                                              ; $5182: $00
	call nz, $0bbb                                   ; $5183: $c4 $bb $0b
	ld   c, e                                        ; $5186: $4b
	pop  bc                                          ; $5187: $c1
	add  b                                           ; $5188: $80
	add  c                                           ; $5189: $81
	ld   [$5569], sp                                 ; $518a: $08 $69 $55
	db   $fd                                         ; $518d: $fd
	nop                                              ; $518e: $00
	jp   nz, $1e18                                   ; $518f: $c2 $18 $1e

	db   $f4                                         ; $5192: $f4
	ld   c, $82                                      ; $5193: $0e $82
	ld   b, $80                                      ; $5195: $06 $80
	rlca                                             ; $5197: $07
	nop                                              ; $5198: $00
	ld   b, $81                                      ; $5199: $06 $81
	rlca                                             ; $519b: $07
	nop                                              ; $519c: $00

jr_09e_519d:
	ld   b, $81                                      ; $519d: $06 $81
	rlca                                             ; $519f: $07
	ld   [bc], a                                     ; $51a0: $02
	inc  b                                           ; $51a1: $04
	ld   b, $28                                      ; $51a2: $06 $28
	add  b                                           ; $51a4: $80
	ld   d, l                                        ; $51a5: $55
	nop                                              ; $51a6: $00
	sub  l                                           ; $51a7: $95
	add  b                                           ; $51a8: $80
	sub  h                                           ; $51a9: $94
	nop                                              ; $51aa: $00
	add  b                                           ; $51ab: $80
	add  d                                           ; $51ac: $82
	jp   z, $c10a                                    ; $51ad: $ca $0a $c1

	ret  nc                                          ; $51b0: $d0

	rst  JumpTable                                         ; $51b1: $df
	pop  bc                                          ; $51b2: $c1
	pop  de                                          ; $51b3: $d1
	ld   e, a                                        ; $51b4: $5f
	ld   c, b                                        ; $51b5: $48
	ld   h, $2f                                      ; $51b6: $26 $2f
	ld   b, $08                                      ; $51b8: $06 $08
	add  b                                           ; $51ba: $80
	ld   e, b                                        ; $51bb: $58
	ld   bc, $5850                                   ; $51bc: $01 $50 $58
	add  b                                           ; $51bf: $80
	ld   c, h                                        ; $51c0: $4c
	ld   bc, $4440                                   ; $51c1: $01 $40 $44
	add  b                                           ; $51c4: $80
	ld   b, d                                        ; $51c5: $42
	db   $10                                         ; $51c6: $10
	ld   b, [hl]                                     ; $51c7: $46
	ld   d, h                                        ; $51c8: $54
	ld   b, b                                        ; $51c9: $40
	ld   c, b                                        ; $51ca: $48
	ld   bc, $b084                                   ; $51cb: $01 $84 $b0
	and  d                                           ; $51ce: $a2
	inc  bc                                          ; $51cf: $03
	ld   b, c                                        ; $51d0: $41
	ld   a, [de]                                     ; $51d1: $1a
	ld   sp, $1900                                   ; $51d2: $31 $00 $19
	add  c                                           ; $51d5: $81
	add  b                                           ; $51d6: $80
	nop                                              ; $51d7: $00
	add  b                                           ; $51d8: $80
	add  b                                           ; $51d9: $80
	add  e                                           ; $51da: $83
	nop                                              ; $51db: $00
	add  b                                           ; $51dc: $80
	ld   [$180a], sp                                 ; $51dd: $08 $0a $18
	db   $10                                         ; $51e0: $10
	jr   jr_09e_51ff                                 ; $51e1: $18 $1c

	inc  c                                           ; $51e3: $0c
	nop                                              ; $51e4: $00
	call nz, $0bbb                                   ; $51e5: $c4 $bb $0b
	ld   c, e                                        ; $51e8: $4b
	pop  bc                                          ; $51e9: $c1
	add  b                                           ; $51ea: $80
	add  c                                           ; $51eb: $81
	ld   [$5969], sp                                 ; $51ec: $08 $69 $59
	call $e29c                                       ; $51ef: $cd $9c $e2
	sbc  b                                           ; $51f2: $98
	ld   e, $f4                                      ; $51f3: $1e $f4
	ld   c, $82                                      ; $51f5: $0e $82
	ld   b, $80                                      ; $51f7: $06 $80
	rlca                                             ; $51f9: $07
	nop                                              ; $51fa: $00
	ld   b, $81                                      ; $51fb: $06 $81
	rlca                                             ; $51fd: $07
	nop                                              ; $51fe: $00

jr_09e_51ff:
	ld   b, $81                                      ; $51ff: $06 $81
	rlca                                             ; $5201: $07
	ld   [bc], a                                     ; $5202: $02
	inc  b                                           ; $5203: $04
	ld   b, $03                                      ; $5204: $06 $03
	add  l                                           ; $5206: $85
	nop                                              ; $5207: $00
	add  b                                           ; $5208: $80
	ld   b, b                                        ; $5209: $40
	add  hl, bc                                      ; $520a: $09
	ret  nz                                          ; $520b: $c0

	add  b                                           ; $520c: $80
	ret  nz                                          ; $520d: $c0

	ldh  [$60], a                                    ; $520e: $e0 $60
	inc  b                                           ; $5210: $04
	ld   e, h                                        ; $5211: $5c
	ld   a, b                                        ; $5212: $78
	jr   nc, @+$12                                   ; $5213: $30 $10

	sub  d                                           ; $5215: $92
	nop                                              ; $5216: $00
	add  b                                           ; $5217: $80
	ld   b, b                                        ; $5218: $40
	ld   [$80c0], sp                                 ; $5219: $08 $c0 $80
	ret  nz                                          ; $521c: $c0

	ldh  [$74], a                                    ; $521d: $e0 $74
	jr   jr_09e_526d                                 ; $521f: $18 $4c

	ld   h, h                                        ; $5221: $64
	inc  h                                           ; $5222: $24
	add  b                                           ; $5223: $80
	jr   @-$75                                       ; $5224: $18 $89

	nop                                              ; $5226: $00
	dec  b                                           ; $5227: $05
	ld   sp, $7e0e                                   ; $5228: $31 $0e $7e
	ld   a, $ff                                      ; $522b: $3e $ff
	ld   a, a                                        ; $522d: $7f
	add  b                                           ; $522e: $80
	cp   $04                                         ; $522f: $fe $04
	ld   hl, sp-$07                                  ; $5231: $f8 $f9
	ld   h, c                                        ; $5233: $61
	ld   h, a                                        ; $5234: $67
	rlca                                             ; $5235: $07
	add  b                                           ; $5236: $80
	rra                                              ; $5237: $1f
	ld   de, $3f3e                                   ; $5238: $11 $3e $3f
	ld   a, c                                        ; $523b: $79
	ld   a, a                                        ; $523c: $7f
	rst  $20                                         ; $523d: $e7
	rst  $38                                         ; $523e: $ff
	rst  JumpTable                                         ; $523f: $df
	or   $b6                                         ; $5240: $f6 $b6
	or   $76                                         ; $5242: $f6 $76
	db   $ec                                         ; $5244: $ec
	xor  $e8                                         ; $5245: $ee $e8
	xor  $6e                                         ; $5247: $ee $6e
	xor  $7b                                         ; $5249: $ee $7b
	rst  $38                                         ; $524b: $ff
	nop                                              ; $524c: $00
	rst  $38                                         ; $524d: $ff
	nop                                              ; $524e: $00
	rst  $38                                         ; $524f: $ff
	nop                                              ; $5250: $00
	rst  $38                                         ; $5251: $ff
	nop                                              ; $5252: $00
	rst  $38                                         ; $5253: $ff
	nop                                              ; $5254: $00
	rst  $38                                         ; $5255: $ff
	nop                                              ; $5256: $00
	rst  $38                                         ; $5257: $ff
	nop                                              ; $5258: $00
	sub  $00                                         ; $5259: $d6 $00
	ei                                               ; $525b: $fb
	nop                                              ; $525c: $00
	adc  b                                           ; $525d: $88
	nop                                              ; $525e: $00
	ld   b, $1f                                      ; $525f: $06 $1f
	nop                                              ; $5261: $00
	ld   a, a                                        ; $5262: $7f
	rra                                              ; $5263: $1f
	rst  $20                                         ; $5264: $e7
	ld   a, a                                        ; $5265: $7f
	rst  $20                                         ; $5266: $e7
	add  b                                           ; $5267: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5268: $cf
	add  b                                           ; $5269: $80
	and  e                                           ; $526a: $a3
	add  b                                           ; $526b: $80
	rst  $28                                         ; $526c: $ef

jr_09e_526d:
	add  b                                           ; $526d: $80
	rst  $10                                         ; $526e: $d7
	nop                                              ; $526f: $00
	rst  $38                                         ; $5270: $ff
	add  b                                           ; $5271: $80
	rst  $28                                         ; $5272: $ef
	add  b                                           ; $5273: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5274: $cf
	add  b                                           ; $5275: $80
	sbc  a                                           ; $5276: $9f
	nop                                              ; $5277: $00
	rst  $38                                         ; $5278: $ff
	add  a                                           ; $5279: $87

jr_09e_527a:
	nop                                              ; $527a: $00
	dec  b                                           ; $527b: $05
	add  b                                           ; $527c: $80
	nop                                              ; $527d: $00
	rst  $20                                         ; $527e: $e7
	add  b                                           ; $527f: $80
	db   $db                                         ; $5280: $db
	jp   $8780                                       ; $5281: $c3 $80 $87


	add  b                                           ; $5284: $80
	ret                                              ; $5285: $c9


	add  b                                           ; $5286: $80
	rlca                                             ; $5287: $07
	add  b                                           ; $5288: $80
	add  e                                           ; $5289: $83
	add  b                                           ; $528a: $80

jr_09e_528b:
	rst  ToBoot                                         ; $528b: $c7
	add  b                                           ; $528c: $80
	add  a                                           ; $528d: $87
	add  b                                           ; $528e: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $528f: $cf
	add  b                                           ; $5290: $80
	inc  bc                                          ; $5291: $03
	nop                                              ; $5292: $00
	rst  $38                                         ; $5293: $ff
	adc  c                                           ; $5294: $89
	nop                                              ; $5295: $00
	dec  c                                           ; $5296: $0d
	ldh  a, [rP1]                                    ; $5297: $f0 $00
	jr   jr_09e_528b                                 ; $5299: $18 $f0

	ld   e, h                                        ; $529b: $5c
	ld   hl, sp-$22                                  ; $529c: $f8 $de
	db   $fc                                         ; $529e: $fc
	ld   c, a                                        ; $529f: $4f
	cp   $68                                         ; $52a0: $fe $68
	ld   hl, sp-$44                                  ; $52a2: $f8 $bc
	db   $fc                                         ; $52a4: $fc
	add  b                                           ; $52a5: $80
	cp   $80                                         ; $52a6: $fe $80
	rst  $38                                         ; $52a8: $ff
	add  b                                           ; $52a9: $80
	rst  $28                                         ; $52aa: $ef
	add  hl, bc                                      ; $52ab: $09
	db   $fc                                         ; $52ac: $fc
	nop                                              ; $52ad: $00
	rlca                                             ; $52ae: $07
	inc  bc                                          ; $52af: $03
	rra                                              ; $52b0: $1f
	rlca                                             ; $52b1: $07
	ccf                                              ; $52b2: $3f
	rra                                              ; $52b3: $1f
	ld   c, a                                        ; $52b4: $4f
	rrca                                             ; $52b5: $0f
	add  b                                           ; $52b6: $80
	rra                                              ; $52b7: $1f
	ld   bc, $3fbf                                   ; $52b8: $01 $bf $3f
	add  b                                           ; $52bb: $80
	ld   a, a                                        ; $52bc: $7f
	add  b                                           ; $52bd: $80
	ld   e, a                                        ; $52be: $5f
	add  b                                           ; $52bf: $80
	cp   a                                           ; $52c0: $bf
	ld   [$3ebe], sp                                 ; $52c1: $08 $be $3e
	cp   $7a                                         ; $52c4: $fe $7a
	ld   a, b                                        ; $52c6: $78
	jr   nc, jr_09e_527a                             ; $52c7: $30 $b1

	and  l                                           ; $52c9: $a5
	and  c                                           ; $52ca: $a1
	add  b                                           ; $52cb: $80
	add  hl, bc                                      ; $52cc: $09
	ld   bc, $6e69                                   ; $52cd: $01 $69 $6e
	add  c                                           ; $52d0: $81
	nop                                              ; $52d1: $00
	inc  b                                           ; $52d2: $04
	inc  bc                                          ; $52d3: $03
	ld   bc, $0100                                   ; $52d4: $01 $00 $01
	rlca                                             ; $52d7: $07
	add  b                                           ; $52d8: $80
	inc  bc                                          ; $52d9: $03
	add  c                                           ; $52da: $81
	ld   [bc], a                                     ; $52db: $02
	ld   bc, $060e                                   ; $52dc: $01 $0e $06
	add  b                                           ; $52df: $80
	dec  b                                           ; $52e0: $05
	add  h                                           ; $52e1: $84
	ld   bc, $0400                                   ; $52e2: $01 $00 $04
	add  c                                           ; $52e5: $81
	nop                                              ; $52e6: $00
	nop                                              ; $52e7: $00
	ld   [$0081], sp                                 ; $52e8: $08 $81 $00
	nop                                              ; $52eb: $00
	ld   b, $81                                      ; $52ec: $06 $81
	ld   [bc], a                                     ; $52ee: $02
	ld   bc, $060e                                   ; $52ef: $01 $0e $06
	add  b                                           ; $52f2: $80
	inc  b                                           ; $52f3: $04
	dec  b                                           ; $52f4: $05
	nop                                              ; $52f5: $00
	inc  b                                           ; $52f6: $04
	inc  e                                           ; $52f7: $1c
	inc  c                                           ; $52f8: $0c
	nop                                              ; $52f9: $00
	inc  c                                           ; $52fa: $0c
	add  b                                           ; $52fb: $80
	add  hl, bc                                      ; $52fc: $09
	ld   bc, $2901                                   ; $52fd: $01 $01 $29
	add  b                                           ; $5300: $80
	add  hl, bc                                      ; $5301: $09
	add  b                                           ; $5302: $80
	inc  bc                                          ; $5303: $03
	add  b                                           ; $5304: $80
	ld   [bc], a                                     ; $5305: $02
	nop                                              ; $5306: $00
	ld   [de], a                                     ; $5307: $12
	add  l                                           ; $5308: $85
	ld   [bc], a                                     ; $5309: $02
	nop                                              ; $530a: $00
	cpl                                              ; $530b: $2f
	add  h                                           ; $530c: $84
	nop                                              ; $530d: $00
	nop                                              ; $530e: $00
	add  b                                           ; $530f: $80
	add  b                                           ; $5310: $80
	nop                                              ; $5311: $00
	dec  b                                           ; $5312: $05
	ld   b, b                                        ; $5313: $40
	nop                                              ; $5314: $00
	jr   nz, jr_09e_5317                             ; $5315: $20 $00

jr_09e_5317:
	sub  b                                           ; $5317: $90
	add  b                                           ; $5318: $80
	add  b                                           ; $5319: $80
	ret  nz                                          ; $531a: $c0

	ld   [bc], a                                     ; $531b: $02
	ld   hl, sp-$10                                  ; $531c: $f8 $f0
	db   $fc                                         ; $531e: $fc
	add  c                                           ; $531f: $81
	ld   hl, sp+$08                                  ; $5320: $f8 $08
	sbc  $fc                                         ; $5322: $de $fc
	call nz, $5bf4                                   ; $5324: $c4 $f4 $5b
	ld   a, [$fa22]                                  ; $5327: $fa $22 $fa
	sub  a                                           ; $532a: $97
	adc  a                                           ; $532b: $8f
	nop                                              ; $532c: $00
	nop                                              ; $532d: $00
	add  b                                           ; $532e: $80
	add  a                                           ; $532f: $87
	nop                                              ; $5330: $00
	nop                                              ; $5331: $00
	add  b                                           ; $5332: $80
	add  c                                           ; $5333: $81
	nop                                              ; $5334: $00
	nop                                              ; $5335: $00
	inc  bc                                          ; $5336: $03
	add  c                                           ; $5337: $81
	db   $fc                                         ; $5338: $fc
	add  d                                           ; $5339: $82
	db   $f4                                         ; $533a: $f4
	ld   bc, $7475                                   ; $533b: $01 $75 $74
	add  b                                           ; $533e: $80
	ld   d, h                                        ; $533f: $54
	add  b                                           ; $5340: $80
	ld   b, b                                        ; $5341: $40
	ld   [bc], a                                     ; $5342: $02
	ld   [bc], a                                     ; $5343: $02
	nop                                              ; $5344: $00
	ld   [$0081], sp                                 ; $5345: $08 $81 $00
	nop                                              ; $5348: $00
	inc  b                                           ; $5349: $04
	add  b                                           ; $534a: $80
	nop                                              ; $534b: $00
	nop                                              ; $534c: $00
	add  b                                           ; $534d: $80
	add  b                                           ; $534e: $80
	and  b                                           ; $534f: $a0
	nop                                              ; $5350: $00
	cp   b                                           ; $5351: $b8
	add  b                                           ; $5352: $80
	or   b                                           ; $5353: $b0
	inc  c                                           ; $5354: $0c
	jr   nc, jr_09e_5393                             ; $5355: $30 $3c

	jr   c, jr_09e_53b1                              ; $5357: $38 $58

	ld   a, b                                        ; $5359: $78
	add  sp, -$08                                    ; $535a: $e8 $f8
	ldh  [$f8], a                                    ; $535c: $e0 $f8
	ld   c, b                                        ; $535e: $48
	ld   l, b                                        ; $535f: $68
	ld   h, [hl]                                     ; $5360: $66
	ld   l, h                                        ; $5361: $6c
	add  b                                           ; $5362: $80
	ld   [hl], h                                     ; $5363: $74
	add  d                                           ; $5364: $82
	ld   d, h                                        ; $5365: $54
	add  b                                           ; $5366: $80
	db   $10                                         ; $5367: $10
	add  b                                           ; $5368: $80
	nop                                              ; $5369: $00
	inc  b                                           ; $536a: $04
	jp   z, $2000                                    ; $536b: $ca $00 $20

	nop                                              ; $536e: $00
	inc  d                                           ; $536f: $14
	add  l                                           ; $5370: $85
	nop                                              ; $5371: $00
	ld   [bc], a                                     ; $5372: $02
	ld   b, $00                                      ; $5373: $06 $00
	ld   [bc], a                                     ; $5375: $02
	add  c                                           ; $5376: $81
	nop                                              ; $5377: $00
	nop                                              ; $5378: $00
	inc  b                                           ; $5379: $04
	add  a                                           ; $537a: $87
	nop                                              ; $537b: $00
	ld   a, [bc]                                     ; $537c: $0a
	ld   bc, $0200                                   ; $537d: $01 $00 $02
	nop                                              ; $5380: $00
	inc  b                                           ; $5381: $04
	nop                                              ; $5382: $00
	ld   a, [de]                                     ; $5383: $1a
	ld   [bc], a                                     ; $5384: $02
	ld   a, [$1b1a]                                  ; $5385: $fa $1a $1b
	add  b                                           ; $5388: $80
	sbc  e                                           ; $5389: $9b
	inc  bc                                          ; $538a: $03
	db   $db                                         ; $538b: $db
	call $1fed                                       ; $538c: $cd $ed $1f
	add  l                                           ; $538f: $85
	nop                                              ; $5390: $00
	add  hl, bc                                      ; $5391: $09
	rrca                                             ; $5392: $0f

jr_09e_5393:
	nop                                              ; $5393: $00
	jr   jr_09e_539e                                 ; $5394: $18 $08

	jr   c, jr_09e_53b1                              ; $5396: $38 $19

	ld   e, l                                        ; $5398: $5d
	dec  e                                           ; $5399: $1d
	cp   a                                           ; $539a: $bf
	ld   a, $80                                      ; $539b: $3e $80
	ld   a, a                                        ; $539d: $7f

jr_09e_539e:
	add  d                                           ; $539e: $82
	ccf                                              ; $539f: $3f
	add  b                                           ; $53a0: $80
	rra                                              ; $53a1: $1f
	nop                                              ; $53a2: $00
	rrca                                             ; $53a3: $0f
	add  b                                           ; $53a4: $80
	rra                                              ; $53a5: $1f
	ld   bc, $070f                                   ; $53a6: $01 $0f $07
	add  b                                           ; $53a9: $80
	rrca                                             ; $53aa: $0f
	ld   b, $68                                      ; $53ab: $06 $68
	ld   l, h                                        ; $53ad: $6c
	ld   [hl], b                                     ; $53ae: $70
	ld   [hl], e                                     ; $53af: $73
	ld   a, h                                        ; $53b0: $7c

jr_09e_53b1:
	ld   h, h                                        ; $53b1: $64
	ld   h, a                                        ; $53b2: $67
	add  c                                           ; $53b3: $81
	ld   b, b                                        ; $53b4: $40
	add  c                                           ; $53b5: $81
	ret  nz                                          ; $53b6: $c0

	add  c                                           ; $53b7: $81
	add  b                                           ; $53b8: $80
	ld   c, $00                                      ; $53b9: $0e $00
	ld   b, b                                        ; $53bb: $40
	nop                                              ; $53bc: $00
	and  b                                           ; $53bd: $a0
	nop                                              ; $53be: $00
	ld   d, b                                        ; $53bf: $50
	nop                                              ; $53c0: $00
	jr   z, jr_09e_53c3                              ; $53c1: $28 $00

jr_09e_53c3:
	inc  b                                           ; $53c3: $04
	nop                                              ; $53c4: $00
	ld   [de], a                                     ; $53c5: $12
	nop                                              ; $53c6: $00
	ld   bc, $8100                                   ; $53c7: $01 $00 $81
	ldh  a, [rSB]                                    ; $53ca: $f0 $01
	ret  z                                           ; $53cc: $c8

	res  0, b                                        ; $53cd: $cb $80
	jr   c, @+$05                                    ; $53cf: $38 $03

	ld   hl, sp-$06                                  ; $53d1: $f8 $fa
	ld   hl, sp-$07                                  ; $53d3: $f8 $f9
	add  c                                           ; $53d5: $81
	ld   hl, sp-$80                                  ; $53d6: $f8 $80
	db   $fc                                         ; $53d8: $fc
	inc  d                                           ; $53d9: $14
	dec  b                                           ; $53da: $05
	nop                                              ; $53db: $00
	inc  b                                           ; $53dc: $04
	nop                                              ; $53dd: $00
	ld   a, [bc]                                     ; $53de: $0a
	nop                                              ; $53df: $00
	stop                                             ; $53e0: $10 $00
	inc  h                                           ; $53e2: $24
	nop                                              ; $53e3: $00
	ld   c, b                                        ; $53e4: $48
	nop                                              ; $53e5: $00
	add  b                                           ; $53e6: $80

jr_09e_53e7:
	nop                                              ; $53e7: $00
	ld   d, b                                        ; $53e8: $50
	nop                                              ; $53e9: $00
	ld   c, a                                        ; $53ea: $4f
	nop                                              ; $53eb: $00
	xor  $00                                         ; $53ec: $ee $00
	ld   bc, $0083                                   ; $53ee: $01 $83 $00
	ld   d, $80                                      ; $53f1: $16 $80
	nop                                              ; $53f3: $00
	ret  nz                                          ; $53f4: $c0

	add  b                                           ; $53f5: $80
	ldh  [$c0], a                                    ; $53f6: $e0 $c0
	ldh  a, [$e0]                                    ; $53f8: $f0 $e0
	add  sp, -$20                                    ; $53fa: $e8 $e0
	db   $e4                                         ; $53fc: $e4
	ldh  [$e3], a                                    ; $53fd: $e0 $e3
	ldh  [$e2], a                                    ; $53ff: $e0 $e2
	ldh  [$c1], a                                    ; $5401: $e0 $c1
	ret  nz                                          ; $5403: $c0

	jp   nz, $80c0                                   ; $5404: $c2 $c0 $80

	ret  nz                                          ; $5407: $c0

	cp   [hl]                                        ; $5408: $be
	add  l                                           ; $5409: $85
	nop                                              ; $540a: $00
	ld   b, $80                                      ; $540b: $06 $80
	nop                                              ; $540d: $00
	ldh  a, [$80]                                    ; $540e: $f0 $80
	call z, $d3d0                                    ; $5410: $cc $d0 $d3
	add  b                                           ; $5413: $80
	call c, Call_09e_5f80                            ; $5414: $dc $80 $5f
	ld   bc, $7757                                   ; $5417: $01 $57 $77
	add  b                                           ; $541a: $80
	daa                                              ; $541b: $27
	add  e                                           ; $541c: $83
	cpl                                              ; $541d: $2f
	nop                                              ; $541e: $00
	rrca                                             ; $541f: $0f
	add  c                                           ; $5420: $81
	rra                                              ; $5421: $1f
	ld   b, $e0                                      ; $5422: $06 $e0
	nop                                              ; $5424: $00
	jr   nz, jr_09e_53e7                             ; $5425: $20 $c0

	ret  nc                                          ; $5427: $d0

	ldh  [$e8], a                                    ; $5428: $e0 $e8
	add  c                                           ; $542a: $81
	ldh  a, [rP1]                                    ; $542b: $f0 $00
	db   $f4                                         ; $542d: $f4
	add  e                                           ; $542e: $83
	ld   hl, sp+$00                                  ; $542f: $f8 $00
	ld   a, [$3c80]                                  ; $5431: $fa $80 $3c
	add  b                                           ; $5434: $80
	ld   a, h                                        ; $5435: $7c
	add  c                                           ; $5436: $81
	db   $fc                                         ; $5437: $fc
	ld   [$fefd], sp                                 ; $5438: $08 $fd $fe
	ld   a, $fe                                      ; $543b: $3e $fe
	cp   [hl]                                        ; $543d: $be
	cp   $ff                                         ; $543e: $fe $ff
	db   $fc                                         ; $5440: $fc
	add  d                                           ; $5441: $82
	add  a                                           ; $5442: $87
	nop                                              ; $5443: $00
	nop                                              ; $5444: $00
	ld   bc, $0081                                   ; $5445: $01 $81 $00
	nop                                              ; $5448: $00
	ld   [bc], a                                     ; $5449: $02
	add  c                                           ; $544a: $81
	ld   bc, $0700                                   ; $544b: $01 $00 $07
	add  e                                           ; $544e: $83
	inc  bc                                          ; $544f: $03
	nop                                              ; $5450: $00
	rrca                                             ; $5451: $0f
	add  c                                           ; $5452: $81
	rlca                                             ; $5453: $07
	inc  b                                           ; $5454: $04
	ld   b, $07                                      ; $5455: $06 $07
	dec  bc                                          ; $5457: $0b
	inc  bc                                          ; $5458: $03
	rlca                                             ; $5459: $07
	add  a                                           ; $545a: $87
	nop                                              ; $545b: $00
	ld   [$0001], sp                                 ; $545c: $08 $01 $00
	ld   b, $01                                      ; $545f: $06 $01
	add  hl, de                                      ; $5461: $19
	rlca                                             ; $5462: $07
	daa                                              ; $5463: $27
	rra                                              ; $5464: $1f
	ld   e, a                                        ; $5465: $5f
	add  c                                           ; $5466: $81
	ccf                                              ; $5467: $3f
	nop                                              ; $5468: $00
	cp   a                                           ; $5469: $bf
	add  d                                           ; $546a: $82
	ld   a, a                                        ; $546b: $7f
	add  e                                           ; $546c: $83
	rst  $38                                         ; $546d: $ff
	inc  c                                           ; $546e: $0c
	sub  d                                           ; $546f: $92
	dec  c                                           ; $5470: $0d
	push de                                          ; $5471: $d5
	inc  b                                           ; $5472: $04
	ld   h, $04                                      ; $5473: $26 $04
	ld   c, b                                        ; $5475: $48
	ld   [bc], a                                     ; $5476: $02
	ld   [de], a                                     ; $5477: $12
	ld   [bc], a                                     ; $5478: $02
	ld   [hl+], a                                    ; $5479: $22
	ld   [bc], a                                     ; $547a: $02
	jr   @-$7d                                       ; $547b: $18 $81

	ld   bc, $0902                                   ; $547d: $01 $02 $09
	ld   bc, $8104                                   ; $5480: $01 $04 $81
	nop                                              ; $5483: $00
	ld   a, [bc]                                     ; $5484: $0a
	add  d                                           ; $5485: $82
	nop                                              ; $5486: $00
	pop  hl                                          ; $5487: $e1
	nop                                              ; $5488: $00
	ldh  a, [rP1]                                    ; $5489: $f0 $00
	ret  c                                           ; $548b: $d8

	nop                                              ; $548c: $00
	ld   l, h                                        ; $548d: $6c
	nop                                              ; $548e: $00
	ld   e, h                                        ; $548f: $5c
	add  e                                           ; $5490: $83
	nop                                              ; $5491: $00
	nop                                              ; $5492: $00
	inc  b                                           ; $5493: $04
	add  e                                           ; $5494: $83
	nop                                              ; $5495: $00
	nop                                              ; $5496: $00
	ld   b, d                                        ; $5497: $42
	add  d                                           ; $5498: $82
	nop                                              ; $5499: $00
	ld   bc, $4140                                   ; $549a: $01 $40 $41
	add  c                                           ; $549d: $81
	ret  nz                                          ; $549e: $c0

	add  d                                           ; $549f: $82
	ld   b, b                                        ; $54a0: $40
	ld   a, [bc]                                     ; $54a1: $0a
	add  b                                           ; $54a2: $80
	nop                                              ; $54a3: $00
	ld   b, b                                        ; $54a4: $40
	nop                                              ; $54a5: $00
	jr   nz, jr_09e_54a8                             ; $54a6: $20 $00

jr_09e_54a8:
	ldh  a, [rP1]                                    ; $54a8: $f0 $00
	xor  $00                                         ; $54aa: $ee $00
	ld   bc, $0083                                   ; $54ac: $01 $83 $00
	dec  c                                           ; $54af: $0d
	add  b                                           ; $54b0: $80
	nop                                              ; $54b1: $00
	ret  nz                                          ; $54b2: $c0

	nop                                              ; $54b3: $00
	ld   h, b                                        ; $54b4: $60
	nop                                              ; $54b5: $00
	jr   nc, jr_09e_54b8                             ; $54b6: $30 $00

jr_09e_54b8:
	ld   [$0400], sp                                 ; $54b8: $08 $00 $04
	nop                                              ; $54bb: $00
	inc  bc                                          ; $54bc: $03
	nop                                              ; $54bd: $00
	add  b                                           ; $54be: $80
	ld   [bc], a                                     ; $54bf: $02
	ld   bc, $0323                                   ; $54c0: $01 $23 $03
	add  d                                           ; $54c3: $82
	ld   bc, $4100                                   ; $54c4: $01 $00 $41
	add  e                                           ; $54c7: $83
	ld   bc, $8200                                   ; $54c8: $01 $00 $82
	add  e                                           ; $54cb: $83
	nop                                              ; $54cc: $00
	nop                                              ; $54cd: $00
	inc  b                                           ; $54ce: $04
	add  c                                           ; $54cf: $81
	nop                                              ; $54d0: $00
	nop                                              ; $54d1: $00
	ld   [$0083], sp                                 ; $54d2: $08 $83 $00
	db   $10                                         ; $54d5: $10
	stop                                             ; $54d6: $10 $00
	ld   e, $00                                      ; $54d8: $1e $00
	ld   a, [de]                                     ; $54da: $1a
	ld   a, [bc]                                     ; $54db: $0a
	inc  h                                           ; $54dc: $24
	inc  d                                           ; $54dd: $14
	ld   l, l                                        ; $54de: $6d
	ld   b, b                                        ; $54df: $40
	jp   nc, Jump_09e_4840                           ; $54e0: $d2 $40 $48

	ld   b, b                                        ; $54e3: $40
	ld   [hl], b                                     ; $54e4: $70
	jr   nz, jr_09e_550f                             ; $54e5: $20 $28

	add  e                                           ; $54e7: $83
	jr   nz, jr_09e_54ea                             ; $54e8: $20 $00

jr_09e_54ea:
	db   $10                                         ; $54ea: $10
	add  c                                           ; $54eb: $81
	ld   b, b                                        ; $54ec: $40
	db   $10                                         ; $54ed: $10
	ld   b, c                                        ; $54ee: $41
	ret  nz                                          ; $54ef: $c0

	and  d                                           ; $54f0: $a2
	add  b                                           ; $54f1: $80
	add  [hl]                                        ; $54f2: $86
	add  b                                           ; $54f3: $80
	ld   c, h                                        ; $54f4: $4c
	nop                                              ; $54f5: $00
	dec  de                                          ; $54f6: $1b
	nop                                              ; $54f7: $00
	or   [hl]                                        ; $54f8: $b6
	nop                                              ; $54f9: $00
	ld   l, h                                        ; $54fa: $6c
	nop                                              ; $54fb: $00
	ret  c                                           ; $54fc: $d8

	nop                                              ; $54fd: $00
	sub  b                                           ; $54fe: $90
	rst  $38                                         ; $54ff: $ff
	nop                                              ; $5500: $00
	db   $fc                                         ; $5501: $fc
	nop                                              ; $5502: $00
	daa                                              ; $5503: $27
	add  b                                           ; $5504: $80
	nop                                              ; $5505: $00
	ld   b, b                                        ; $5506: $40
	nop                                              ; $5507: $00
	and  b                                           ; $5508: $a0
	add  b                                           ; $5509: $80
	ret  nc                                          ; $550a: $d0

	ret  nz                                          ; $550b: $c0

	ret  z                                           ; $550c: $c8

	ldh  [$c4], a                                    ; $550d: $e0 $c4

jr_09e_550f:
	ldh  [$f2], a                                    ; $550f: $e0 $f2
	ldh  a, [$f1]                                    ; $5511: $f0 $f1
	ldh  a, [$f9]                                    ; $5513: $f0 $f9
	dec  b                                           ; $5515: $05
	dec  c                                           ; $5516: $0d
	add  hl, bc                                      ; $5517: $09
	dec  bc                                          ; $5518: $0b
	inc  bc                                          ; $5519: $03
	inc  de                                          ; $551a: $13
	inc  bc                                          ; $551b: $03
	daa                                              ; $551c: $27
	rlca                                             ; $551d: $07
	ld   b, a                                        ; $551e: $47
	rrca                                             ; $551f: $0f
	add  a                                           ; $5520: $87
	rrca                                             ; $5521: $0f
	rra                                              ; $5522: $1f
	ld   e, a                                        ; $5523: $5f
	dec  c                                           ; $5524: $0d
	ld   h, b                                        ; $5525: $60
	ld   [$82b0], sp                                 ; $5526: $08 $b0 $82
	sub  b                                           ; $5529: $90
	sbc  h                                           ; $552a: $9c
	ret  c                                           ; $552b: $d8

	add  c                                           ; $552c: $81
	ret  z                                           ; $552d: $c8

	ld   bc, $e2e8                                   ; $552e: $01 $e8 $e2
	add  c                                           ; $5531: $81
	ldh  a, [rP1]                                    ; $5532: $f0 $00
	or   $81                                         ; $5534: $f6 $81
	add  a                                           ; $5536: $87
	nop                                              ; $5537: $00
	inc  bc                                          ; $5538: $03
	add  b                                           ; $5539: $80
	rlca                                             ; $553a: $07
	add  c                                           ; $553b: $81
	inc  bc                                          ; $553c: $03
	nop                                              ; $553d: $00
	ld   bc, $0380                                   ; $553e: $01 $80 $03
	add  c                                           ; $5541: $81
	ld   b, c                                        ; $5542: $41
	nop                                              ; $5543: $00
	jr   c, @-$7e                                    ; $5544: $38 $80

	ld   hl, sp+$01                                  ; $5546: $f8 $01
	db   $fd                                         ; $5548: $fd
	ld   sp, hl                                      ; $5549: $f9
	add  b                                           ; $554a: $80
	db   $fc                                         ; $554b: $fc
	ld   [bc], a                                     ; $554c: $02
	cp   $fc                                         ; $554d: $fe $fc
	cp   $82                                         ; $554f: $fe $82
	db   $fd                                         ; $5551: $fd
	add  b                                           ; $5552: $80
	ei                                               ; $5553: $fb
	inc  bc                                          ; $5554: $03
	rra                                              ; $5555: $1f
	cp   a                                           ; $5556: $bf
	sbc  a                                           ; $5557: $9f
	ccf                                              ; $5558: $3f
	add  c                                           ; $5559: $81
	ld   a, a                                        ; $555a: $7f
	inc  bc                                          ; $555b: $03
	rst  $38                                         ; $555c: $ff
	ld   a, a                                        ; $555d: $7f
	rst  $38                                         ; $555e: $ff
	cp   $80                                         ; $555f: $fe $80
	rst  $38                                         ; $5561: $ff
	add  c                                           ; $5562: $81
	cp   $00                                         ; $5563: $fe $00
	add  c                                           ; $5565: $81
	add  c                                           ; $5566: $81
	add  b                                           ; $5567: $80
	ld   [bc], a                                     ; $5568: $02
	nop                                              ; $5569: $00
	add  b                                           ; $556a: $80
	add  c                                           ; $556b: $81
	add  h                                           ; $556c: $84
	ld   [bc], a                                     ; $556d: $02
	add  d                                           ; $556e: $82
	ld   b, $81                                      ; $556f: $06 $81
	rst  $38                                         ; $5571: $ff
	dec  de                                          ; $5572: $1b
	cp   $f9                                         ; $5573: $fe $f9
	ld   hl, sp-$04                                  ; $5575: $f8 $fc
	db   $f4                                         ; $5577: $f4
	cp   $fa                                         ; $5578: $fe $fa
	rst  $38                                         ; $557a: $ff
	db   $fd                                         ; $557b: $fd
	rst  $38                                         ; $557c: $ff
	halt                                             ; $557d: $76
	rst  $38                                         ; $557e: $ff
	ld   a, c                                        ; $557f: $79
	ld   hl, sp-$07                                  ; $5580: $f8 $f9
	db   $fc                                         ; $5582: $fc
	ld   a, h                                        ; $5583: $7c
	db   $fc                                         ; $5584: $fc
	inc  e                                           ; $5585: $1c
	ld   a, [hl]                                     ; $5586: $7e
	add  a                                           ; $5587: $87
	sbc  a                                           ; $5588: $9f
	ld   l, d                                        ; $5589: $6a
	ld   l, a                                        ; $558a: $6f
	dec  [hl]                                        ; $558b: $35
	or   a                                           ; $558c: $b7
	sbc  e                                           ; $558d: $9b
	db   $db                                         ; $558e: $db
	add  c                                           ; $558f: $81
	ld   bc, $0081                                   ; $5590: $01 $81 $00
	nop                                              ; $5593: $00
	add  b                                           ; $5594: $80
	add  c                                           ; $5595: $81
	nop                                              ; $5596: $00
	rlca                                             ; $5597: $07
	ret  nz                                          ; $5598: $c0

	add  b                                           ; $5599: $80
	ld   b, b                                        ; $559a: $40
	ret  nz                                          ; $559b: $c0

	and  b                                           ; $559c: $a0
	ldh  [$3b], a                                    ; $559d: $e0 $3b
	ei                                               ; $559f: $fb
	add  d                                           ; $55a0: $82
	rst  $30                                         ; $55a1: $f7
	nop                                              ; $55a2: $00
	ld   l, a                                        ; $55a3: $6f
	add  b                                           ; $55a4: $80
	rst  $28                                         ; $55a5: $ef
	nop                                              ; $55a6: $00
	ld   l, a                                        ; $55a7: $6f
	add  b                                           ; $55a8: $80
	ld   e, a                                        ; $55a9: $5f
	inc  b                                           ; $55aa: $04
	rra                                              ; $55ab: $1f
	ld   e, a                                        ; $55ac: $5f
	ld   a, a                                        ; $55ad: $7f
	ccf                                              ; $55ae: $3f
	db   $fc                                         ; $55af: $fc
	add  b                                           ; $55b0: $80
	cp   $01                                         ; $55b1: $fe $01
	db   $fc                                         ; $55b3: $fc
	ld   hl, sp-$80                                  ; $55b4: $f8 $80
	db   $fc                                         ; $55b6: $fc
	ld   bc, $f0f8                                   ; $55b7: $01 $f8 $f0
	add  d                                           ; $55ba: $82
	ld   hl, sp+$05                                  ; $55bb: $f8 $05
	ldh  a, [$e0]                                    ; $55bd: $f0 $e0
	ldh  a, [rAUD1ENV]                               ; $55bf: $f0 $12
	ld   c, $0a                                      ; $55c1: $0e $0a
	add  c                                           ; $55c3: $81
	ld   c, $01                                      ; $55c4: $0e $01
	ld   d, $1e                                      ; $55c6: $16 $1e
	add  b                                           ; $55c8: $80
	nop                                              ; $55c9: $00
	ld   d, $1a                                      ; $55ca: $16 $1a
	nop                                              ; $55cc: $00
	ld   l, $00                                      ; $55cd: $2e $00
	ld   a, c                                        ; $55cf: $79
	ld   bc, $1e9a                                   ; $55d0: $01 $9a $1e
	ld   h, h                                        ; $55d3: $64
	inc  a                                           ; $55d4: $3c
	ld   a, [bc]                                     ; $55d5: $0a
	ld   a, [hl-]                                    ; $55d6: $3a
	sub  $76                                         ; $55d7: $d6 $76
	ld   l, h                                        ; $55d9: $6c
	ld   l, l                                        ; $55da: $6d
	reti                                             ; $55db: $d9


	db   $db                                         ; $55dc: $db
	or   d                                           ; $55dd: $b2
	or   a                                           ; $55de: $b7
	ld   h, c                                        ; $55df: $61
	ld   l, a                                        ; $55e0: $6f
	rst  $30                                         ; $55e1: $f7
	rst  $38                                         ; $55e2: $ff
	nop                                              ; $55e3: $00
	rst  $38                                         ; $55e4: $ff
	nop                                              ; $55e5: $00
	rst  $38                                         ; $55e6: $ff
	nop                                              ; $55e7: $00
	rst  $38                                         ; $55e8: $ff
	nop                                              ; $55e9: $00
	rst  $38                                         ; $55ea: $ff
	nop                                              ; $55eb: $00
	rst  $38                                         ; $55ec: $ff
	nop                                              ; $55ed: $00
	sub  a                                           ; $55ee: $97
	nop                                              ; $55ef: $00
	call $8e00                                       ; $55f0: $cd $00 $8e
	rrca                                             ; $55f3: $0f
	adc  l                                           ; $55f4: $8d
	rst  $38                                         ; $55f5: $ff
	add  b                                           ; $55f6: $80
	cp   $86                                         ; $55f7: $fe $86
	rst  $38                                         ; $55f9: $ff
	rlca                                             ; $55fa: $07
	ldh  [rIE], a                                    ; $55fb: $e0 $ff
	add  b                                           ; $55fd: $80
	ldh  [rP1], a                                    ; $55fe: $e0 $00
	sbc  e                                           ; $5600: $9b
	inc  b                                           ; $5601: $04
	ldh  [$80], a                                    ; $5602: $e0 $80
	ld   hl, sp-$80                                  ; $5604: $f8 $80
	ldh  a, [$82]                                    ; $5606: $f0 $82
	ldh  [rIF], a                                    ; $5608: $e0 $0f
	ld   h, b                                        ; $560a: $60
	ldh  [rP1], a                                    ; $560b: $e0 $00
	ld   h, b                                        ; $560d: $60
	nop                                              ; $560e: $00
	stop                                             ; $560f: $10 $00
	or   $02                                         ; $5611: $f6 $02
	ld   [$1004], sp                                 ; $5613: $08 $04 $10
	nop                                              ; $5616: $00
	ld   bc, $0100                                   ; $5617: $01 $00 $01
	add  c                                           ; $561a: $81
	nop                                              ; $561b: $00
	dec  b                                           ; $561c: $05
	inc  d                                           ; $561d: $14
	nop                                              ; $561e: $00
	ld   a, [bc]                                     ; $561f: $0a
	nop                                              ; $5620: $00
	inc  c                                           ; $5621: $0c
	ld   a, [bc]                                     ; $5622: $0a
	add  b                                           ; $5623: $80
	dec  b                                           ; $5624: $05
	add  b                                           ; $5625: $80
	nop                                              ; $5626: $00
	inc  bc                                          ; $5627: $03
	ret  nz                                          ; $5628: $c0

	nop                                              ; $5629: $00
	ld   [hl], $04                                   ; $562a: $36 $04
	add  b                                           ; $562c: $80
	nop                                              ; $562d: $00
	dec  b                                           ; $562e: $05
	rst  JumpTable                                         ; $562f: $df
	nop                                              ; $5630: $00
	ld   d, b                                        ; $5631: $50
	nop                                              ; $5632: $00
	jp   hl                                          ; $5633: $e9


	sub  h                                           ; $5634: $94
	add  b                                           ; $5635: $80
	jr   z, @-$7e                                    ; $5636: $28 $80

	ld   b, $80                                      ; $5638: $06 $80
	nop                                              ; $563a: $00
	ld   e, $01                                      ; $563b: $1e $01
	add  a                                           ; $563d: $87
	add  h                                           ; $563e: $84
	ld   a, [hl]                                     ; $563f: $7e
	ld   a, h                                        ; $5640: $7c
	ld   bc, $00fd                                   ; $5641: $01 $fd $00
	rrca                                             ; $5644: $0f
	ldh  [c], a                                      ; $5645: $e2
	rst  $28                                         ; $5646: $ef
	ldh  a, [$c5]                                    ; $5647: $f0 $c5
	ret  nz                                          ; $5649: $c0

	sbc  d                                           ; $564a: $9a
	or   l                                           ; $564b: $b5
	rlca                                             ; $564c: $07
	ld   l, d                                        ; $564d: $6a
	ld   c, $d0                                      ; $564e: $0e $d0
	add  hl, de                                      ; $5650: $19
	and  b                                           ; $5651: $a0
	dec  hl                                          ; $5652: $2b
	ld   b, b                                        ; $5653: $40
	add  l                                           ; $5654: $85
	ld   b, b                                        ; $5655: $40
	ld   h, b                                        ; $5656: $60
	jr   nz, @-$4e                                   ; $5657: $20 $b0

	db   $10                                         ; $5659: $10
	ret  nc                                          ; $565a: $d0

	add  b                                           ; $565b: $80
	nop                                              ; $565c: $00
	ld   a, [bc]                                     ; $565d: $0a
	inc  b                                           ; $565e: $04
	call nz, $8717                                   ; $565f: $c4 $17 $87
	rrca                                             ; $5662: $0f
	dec  l                                           ; $5663: $2d
	ld   e, $34                                      ; $5664: $1e $34
	db   $ed                                         ; $5666: $ed
	ld   d, d                                        ; $5667: $52
	ld   d, a                                        ; $5668: $57
	add  b                                           ; $5669: $80
	ld   [bc], a                                     ; $566a: $02
	ld   a, [bc]                                     ; $566b: $0a
	inc  c                                           ; $566c: $0c
	nop                                              ; $566d: $00
	inc  de                                          ; $566e: $13
	nop                                              ; $566f: $00
	db   $e3                                         ; $5670: $e3
	nop                                              ; $5671: $00
	rst  $38                                         ; $5672: $ff
	ld   [bc], a                                     ; $5673: $02
	ld   c, $08                                      ; $5674: $0e $08
	add  a                                           ; $5676: $87
	add  c                                           ; $5677: $81
	sbc  a                                           ; $5678: $9f
	nop                                              ; $5679: $00
	ccf                                              ; $567a: $3f
	add  b                                           ; $567b: $80
	cpl                                              ; $567c: $2f
	add  hl, bc                                      ; $567d: $09
	xor  a                                           ; $567e: $af
	sbc  a                                           ; $567f: $9f
	ret  nc                                          ; $5680: $d0

	rst  ToBoot                                         ; $5681: $c7
	nop                                              ; $5682: $00
	db   $ed                                         ; $5683: $ed
	ld   [$3f5d], sp                                 ; $5684: $08 $5d $3f
	add  b                                           ; $5687: $80
	add  [hl]                                        ; $5688: $86
	rst  $38                                         ; $5689: $ff
	rlca                                             ; $568a: $07
	rra                                              ; $568b: $1f
	rst  $38                                         ; $568c: $ff
	ld   bc, $001e                                   ; $568d: $01 $1e $00
	ld   b, b                                        ; $5690: $40
	add  b                                           ; $5691: $80
	ccf                                              ; $5692: $3f
	add  b                                           ; $5693: $80
	rst  $38                                         ; $5694: $ff
	adc  b                                           ; $5695: $88
	cp   $0c                                         ; $5696: $fe $0c
	cp   a                                           ; $5698: $bf

jr_09e_5699:
	ld   a, a                                        ; $5699: $7f
	cpl                                              ; $569a: $2f
	ldh  [$7f], a                                    ; $569b: $e0 $7f
	ld   l, a                                        ; $569d: $6f
	rst  $38                                         ; $569e: $ff
	sbc  a                                           ; $569f: $9f
	ei                                               ; $56a0: $fb
	ld   a, e                                        ; $56a1: $7b
	di                                               ; $56a2: $f3
	ld   sp, $803d                                   ; $56a3: $31 $3d $80
	rrca                                             ; $56a6: $0f
	add  d                                           ; $56a7: $82
	nop                                              ; $56a8: $00
	dec  bc                                          ; $56a9: $0b
	ldh  a, [$fe]                                    ; $56aa: $f0 $fe
	or   $ff                                         ; $56ac: $f6 $ff
	ld   a, c                                        ; $56ae: $79
	ld   [hl], a                                     ; $56af: $77
	or   $f7                                         ; $56b0: $f6 $f7
	db   $f4                                         ; $56b2: $f4
	db   $ec                                         ; $56b3: $ec
	ldh  [$f0], a                                    ; $56b4: $e0 $f0
	add  l                                           ; $56b6: $85
	nop                                              ; $56b7: $00
	add  b                                           ; $56b8: $80
	ld   bc, $0380                                   ; $56b9: $01 $80 $03
	add  h                                           ; $56bc: $84
	ld   a, a                                        ; $56bd: $7f
	add  c                                           ; $56be: $81
	rst  $38                                         ; $56bf: $ff
	adc  [hl]                                        ; $56c0: $8e
	rrca                                             ; $56c1: $0f
	nop                                              ; $56c2: $00
	rst  $38                                         ; $56c3: $ff
	adc  d                                           ; $56c4: $8a

jr_09e_56c5:
	cp   $80                                         ; $56c5: $fe $80
	ldh  a, [$09]                                    ; $56c7: $f0 $09
	add  b                                           ; $56c9: $80
	adc  $82                                         ; $56ca: $ce $82
	push de                                          ; $56cc: $d5
	rlca                                             ; $56cd: $07
	sbc  a                                           ; $56ce: $9f
	nop                                              ; $56cf: $00
	ld   h, c                                        ; $56d0: $61
	nop                                              ; $56d1: $00
	rra                                              ; $56d2: $1f
	add  l                                           ; $56d3: $85
	nop                                              ; $56d4: $00
	ld   [$04ef], sp                                 ; $56d5: $08 $ef $04
	call nc, $9747                                   ; $56d8: $d4 $47 $97
	rlca                                             ; $56db: $07
	ld   h, a                                        ; $56dc: $67
	rlca                                             ; $56dd: $07
	add  a                                           ; $56de: $87
	add  l                                           ; $56df: $85
	rlca                                             ; $56e0: $07
	ld   [bc], a                                     ; $56e1: $02
	db   $f4                                         ; $56e2: $f4
	nop                                              ; $56e3: $00
	inc  bc                                          ; $56e4: $03
	add  b                                           ; $56e5: $80
	add  b                                           ; $56e6: $80
	add  b                                           ; $56e7: $80
	ld   hl, sp-$79                                  ; $56e8: $f8 $87
	rst  $38                                         ; $56ea: $ff
	ld   [$0082], sp                                 ; $56eb: $08 $82 $00

jr_09e_56ee:
	ldh  [c], a                                      ; $56ee: $e2
	add  b                                           ; $56ef: $80

jr_09e_56f0:
	inc  bc                                          ; $56f0: $03
	nop                                              ; $56f1: $00
	inc  d                                           ; $56f2: $14
	db   $e3                                         ; $56f3: $e3
	db   $eb                                         ; $56f4: $eb
	add  b                                           ; $56f5: $80
	rst  $30                                         ; $56f6: $f7
	add  e                                           ; $56f7: $83
	rst  $38                                         ; $56f8: $ff
	ld   [$0001], sp                                 ; $56f9: $08 $01 $00
	ld   [bc], a                                     ; $56fc: $02
	nop                                              ; $56fd: $00
	dec  h                                           ; $56fe: $25
	nop                                              ; $56ff: $00
	reti                                             ; $5700: $d9


	inc  b                                           ; $5701: $04
	dec  b                                           ; $5702: $05
	add  [hl]                                        ; $5703: $86
	db   $fc                                         ; $5704: $fc
	ld   de, $7c01                                   ; $5705: $11 $01 $7c
	nop                                              ; $5708: $00
	sbc  a                                           ; $5709: $9f
	nop                                              ; $570a: $00
	sbc  a                                           ; $570b: $9f
	nop                                              ; $570c: $00
	rst  $38                                         ; $570d: $ff
	nop                                              ; $570e: $00
	ld   a, [hl]                                     ; $570f: $7e
	nop                                              ; $5710: $00
	ld   a, h                                        ; $5711: $7c
	nop                                              ; $5712: $00
	ld   [hl], h                                     ; $5713: $74
	nop                                              ; $5714: $00
	ld   [hl], l                                     ; $5715: $75
	or   b                                           ; $5716: $b0
	jr   nc, jr_09e_5699                             ; $5717: $30 $80

	ld   h, b                                        ; $5719: $60
	ld   bc, $4140                                   ; $571a: $01 $40 $41
	add  b                                           ; $571d: $80
	ld   bc, $0082                                   ; $571e: $01 $82 $00
	nop                                              ; $5721: $00
	ld   bc, $0080                                   ; $5722: $01 $80 $00
	ld   [$111f], sp                                 ; $5725: $08 $1f $11
	ld   [hl], b                                     ; $5728: $70
	ld   b, e                                        ; $5729: $43
	push bc                                          ; $572a: $c5
	adc  a                                           ; $572b: $8f
	and  a                                           ; $572c: $a7
	rra                                              ; $572d: $1f
	nop                                              ; $572e: $00
	add  c                                           ; $572f: $81
	rra                                              ; $5730: $1f
	inc  [hl]                                        ; $5731: $34
	dec  d                                           ; $5732: $15
	rra                                              ; $5733: $1f
	jr   c, jr_09e_56c5                              ; $5734: $38 $8f

	ld   l, d                                        ; $5736: $6a
	rst  $38                                         ; $5737: $ff
	ld   [$edff], a                                  ; $5738: $ea $ff $ed
	ld   a, a                                        ; $573b: $7f
	ld   a, h                                        ; $573c: $7c
	cp   a                                           ; $573d: $bf
	add  hl, sp                                      ; $573e: $39
	rst  $28                                         ; $573f: $ef
	ld   l, c                                        ; $5740: $69
	ld   e, a                                        ; $5741: $5f
	sbc  [hl]                                        ; $5742: $9e
	di                                               ; $5743: $f3
	or   d                                           ; $5744: $b2
	db   $e3                                         ; $5745: $e3
	ld   h, b                                        ; $5746: $60
	sbc  h                                           ; $5747: $9c
	cp   h                                           ; $5748: $bc
	ccf                                              ; $5749: $3f
	ld   b, [hl]                                     ; $574a: $46
	rst  $38                                         ; $574b: $ff
	ccf                                              ; $574c: $3f
	rst  $38                                         ; $574d: $ff
	inc  e                                           ; $574e: $1c
	ld   a, a                                        ; $574f: $7f
	xor  c                                           ; $5750: $a9
	xor  a                                           ; $5751: $af
	inc  de                                          ; $5752: $13
	sub  $76                                         ; $5753: $d6 $76
	db   $fc                                         ; $5755: $fc
	or   h                                           ; $5756: $b4
	ld   [$84cc], sp                                 ; $5757: $08 $cc $84
	and  h                                           ; $575a: $a4
	add  b                                           ; $575b: $80
	jp   nc, $1ae2                                   ; $575c: $d2 $e2 $1a

	ldh  a, [$90]                                    ; $575f: $f0 $90
	ldh  a, [rBCPS]                                  ; $5761: $f0 $68
	ld   [hl], d                                     ; $5763: $72
	and  c                                           ; $5764: $a1
	or   l                                           ; $5765: $b5
	jr   z, jr_09e_56ee                              ; $5766: $28 $86

	nop                                              ; $5768: $00
	add  b                                           ; $5769: $80
	jr   jr_09e_56f0                                 ; $576a: $18 $84

	rst  $38                                         ; $576c: $ff
	add  b                                           ; $576d: $80
	ld   bc, $0380                                   ; $576e: $01 $80 $03
	add  b                                           ; $5771: $80
	rlca                                             ; $5772: $07

jr_09e_5773:
	add  b                                           ; $5773: $80
	rrca                                             ; $5774: $0f
	add  b                                           ; $5775: $80
	ccf                                              ; $5776: $3f
	sub  e                                           ; $5777: $93
	rst  $38                                         ; $5778: $ff
	add  [hl]                                        ; $5779: $86
	nop                                              ; $577a: $00
	ld   bc, $66d9                                   ; $577b: $01 $d9 $66
	add  b                                           ; $577e: $80
	ld   l, e                                        ; $577f: $6b
	inc  b                                           ; $5780: $04
	ld   h, l                                        ; $5781: $65

jr_09e_5782:
	ld   l, l                                        ; $5782: $6d
	ld   a, [hl-]                                    ; $5783: $3a
	ld   a, [hl]                                     ; $5784: $7e
	di                                               ; $5785: $f3

jr_09e_5786:
	add  l                                           ; $5786: $85
	nop                                              ; $5787: $00
	ld   [$f7e8], sp                                 ; $5788: $08 $e8 $f7
	or   a                                           ; $578b: $b7
	rst  $30                                         ; $578c: $f7
	ld   d, a                                        ; $578d: $57
	rst  $30                                         ; $578e: $f7
	halt                                             ; $578f: $76
	ld   [hl], a                                     ; $5790: $77
	cp   $85                                         ; $5791: $fe $85
	nop                                              ; $5793: $00
	ld   [$f7ad], sp                                 ; $5794: $08 $ad $f7
	db   $10                                         ; $5797: $10
	rst  $30                                         ; $5798: $f7
	jr   @+$01                                       ; $5799: $18 $ff

	jr   c, @+$01                                    ; $579b: $38 $ff

	sbc  l                                           ; $579d: $9d
	add  l                                           ; $579e: $85
	nop                                              ; $579f: $00
	ld   [de], a                                     ; $57a0: $12
	ldh  a, [rP1]                                    ; $57a1: $f0 $00
	ld   h, b                                        ; $57a3: $60
	ldh  [rAUD4LEN], a                               ; $57a4: $e0 $20
	ldh  [$30], a                                    ; $57a6: $e0 $30
	ldh  a, [$71]                                    ; $57a8: $f0 $71
	nop                                              ; $57aa: $00
	pop  bc                                          ; $57ab: $c1
	nop                                              ; $57ac: $00
	ldh  a, [rP1]                                    ; $57ad: $f0 $00
	jr   c, jr_09e_57b1                              ; $57af: $38 $00

jr_09e_57b1:
	inc  c                                           ; $57b1: $0c
	nop                                              ; $57b2: $00
	ld   b, $81                                      ; $57b3: $06 $81
	nop                                              ; $57b5: $00
	add  hl, hl                                      ; $57b6: $29
	inc  bc                                          ; $57b7: $03
	nop                                              ; $57b8: $00
	ret  z                                           ; $57b9: $c8

	scf                                              ; $57ba: $37
	and  $e7                                         ; $57bb: $e6 $e7
	ld   [hl], h                                     ; $57bd: $74
	ldh  a, [$f3]                                    ; $57be: $f0 $f3
	rst  $30                                         ; $57c0: $f7
	call c, $f6ff                                    ; $57c1: $dc $ff $f6
	rst  $30                                         ; $57c4: $f7
	or   $77                                         ; $57c5: $f6 $77
	ld   d, a                                        ; $57c7: $57
	ld   [hl], a                                     ; $57c8: $77
	or   c                                           ; $57c9: $b1
	rst  $30                                         ; $57ca: $f7
	ld   a, b                                        ; $57cb: $78
	rst  $38                                         ; $57cc: $ff
	jr   nc, @-$07                                   ; $57cd: $30 $f7

	inc  b                                           ; $57cf: $04

jr_09e_57d0:
	add  c                                           ; $57d0: $81
	dec  h                                           ; $57d1: $25
	di                                               ; $57d2: $f3
	inc  h                                           ; $57d3: $24
	rst  $30                                         ; $57d4: $f7
	jr   nc, @-$07                                   ; $57d5: $30 $f7

	jr   nc, jr_09e_57d0                             ; $57d7: $30 $f7

	ld   a, [hl+]                                    ; $57d9: $2a
	ldh  [rAUD4LEN], a                               ; $57da: $e0 $20
	ldh  [rAUD4LEN], a                               ; $57dc: $e0 $20
	ldh  [$c0], a                                    ; $57de: $e0 $c0
	add  b                                           ; $57e0: $80
	add  b                                           ; $57e1: $80
	ldh  [$80], a                                    ; $57e2: $e0 $80
	ldh  a, [rTAC]                                   ; $57e4: $f0 $07
	ld   h, b                                        ; $57e6: $60
	ldh  [$60], a                                    ; $57e7: $e0 $60
	ldh  [$7f], a                                    ; $57e9: $e0 $7f
	rrca                                             ; $57eb: $0f
	adc  a                                           ; $57ec: $8f
	rrca                                             ; $57ed: $0f
	add  b                                           ; $57ee: $80
	inc  e                                           ; $57ef: $1c
	add  b                                           ; $57f0: $80
	jr   c, jr_09e_5773                              ; $57f1: $38 $80

	ld   b, b                                        ; $57f3: $40
	add  b                                           ; $57f4: $80
	ld   [$3080], sp                                 ; $57f5: $08 $80 $30
	add  b                                           ; $57f8: $80
	ldh  [rDIV], a                                   ; $57f9: $e0 $04
	db   $e3                                         ; $57fb: $e3
	jp   $0010                                      ; $57fc: $c3 $10 $00


	jr   c, jr_09e_5782                              ; $57ff: $38 $81

	nop                                              ; $5801: $00
	nop                                              ; $5802: $00
	jr   jr_09e_5786                                 ; $5803: $18 $81

	nop                                              ; $5805: $00
	nop                                              ; $5806: $00
	jr   @-$7d                                       ; $5807: $18 $81

	nop                                              ; $5809: $00
	ld   [bc], a                                     ; $580a: $02
	rst  $30                                         ; $580b: $f7
	nop                                              ; $580c: $00
	rst  $10                                         ; $580d: $d7
	add  e                                           ; $580e: $83
	nop                                              ; $580f: $00
	nop                                              ; $5810: $00
	ld   h, b                                        ; $5811: $60
	add  l                                           ; $5812: $85
	nop                                              ; $5813: $00
	ld   [bc], a                                     ; $5814: $02
	cp   b                                           ; $5815: $b8
	nop                                              ; $5816: $00
	ldh  a, [$81]                                    ; $5817: $f0 $81
	nop                                              ; $5819: $00
	inc  e                                           ; $581a: $1c
	stop                                             ; $581b: $10 $00
	jr   nc, jr_09e_581f                             ; $581d: $30 $00

jr_09e_581f:
	jr   nc, jr_09e_5821                             ; $581f: $30 $00

jr_09e_5821:
	jr   nc, jr_09e_5823                             ; $5821: $30 $00

jr_09e_5823:
	jr   nc, jr_09e_5825                             ; $5823: $30 $00

jr_09e_5825:
	rrca                                             ; $5825: $0f
	add  a                                           ; $5826: $87
	ld   e, a                                        ; $5827: $5f
	ld   [$c02f], sp                                 ; $5828: $08 $2f $c0
	ret  nc                                          ; $582b: $d0

	ldh  [$e8], a                                    ; $582c: $e0 $e8
	ldh  a, [$f4]                                    ; $582e: $f0 $f4
	ld   hl, sp+$38                                  ; $5830: $f8 $38
	ld   hl, sp-$32                                  ; $5832: $f8 $ce
	db   $fc                                         ; $5834: $fc
	ld   [hl], a                                     ; $5835: $77
	nop                                              ; $5836: $00

jr_09e_5837:
	add  b                                           ; $5837: $80
	add  e                                           ; $5838: $83
	nop                                              ; $5839: $00
	add  b                                           ; $583a: $80
	ld   [bc], a                                     ; $583b: $02
	add  d                                           ; $583c: $82
	ld   e, $80                                      ; $583d: $1e $80
	ld   a, $00                                      ; $583f: $3e $00
	cp   $81                                         ; $5841: $fe $81
	nop                                              ; $5843: $00
	add  b                                           ; $5844: $80
	and  b                                           ; $5845: $a0
	add  b                                           ; $5846: $80
	ld   d, l                                        ; $5847: $55
	add  b                                           ; $5848: $80
	xor  [hl]                                        ; $5849: $ae
	add  b                                           ; $584a: $80
	ld   e, a                                        ; $584b: $5f
	add  b                                           ; $584c: $80
	cp   a                                           ; $584d: $bf
	add  b                                           ; $584e: $80
	rst  JumpTable                                         ; $584f: $df
	nop                                              ; $5850: $00
	rrca                                             ; $5851: $0f
	add  e                                           ; $5852: $83
	nop                                              ; $5853: $00
	add  b                                           ; $5854: $80
	ld   d, b                                        ; $5855: $50
	add  b                                           ; $5856: $80
	and  b                                           ; $5857: $a0
	add  b                                           ; $5858: $80
	ld   d, b                                        ; $5859: $50
	add  b                                           ; $585a: $80
	and  b                                           ; $585b: $a0
	add  b                                           ; $585c: $80
	ret  nc                                          ; $585d: $d0

	inc  bc                                          ; $585e: $03
	ld   a, e                                        ; $585f: $7b
	cp   $ac                                         ; $5860: $fe $ac
	ld   l, $80                                      ; $5862: $2e $80
	ld   l, a                                        ; $5864: $6f
	ld   sp, $4f0f                                   ; $5865: $31 $0f $4f
	ld   h, d                                        ; $5868: $62
	ld   l, [hl]                                     ; $5869: $6e
	ld   h, b                                        ; $586a: $60
	ld   h, [hl]                                     ; $586b: $66
	ld   l, h                                        ; $586c: $6c
	ld   l, [hl]                                     ; $586d: $6e
	ld   [hl], b                                     ; $586e: $70
	ld   a, b                                        ; $586f: $78
	sbc  $97                                         ; $5870: $de $97
	ld   h, [hl]                                     ; $5872: $66
	rst  $20                                         ; $5873: $e7
	call c, $92f8                                    ; $5874: $dc $f8 $92
	rst  $30                                         ; $5877: $f7
	sbc  a                                           ; $5878: $9f
	rst  $38                                         ; $5879: $ff
	sbc  [hl]                                        ; $587a: $9e
	rst  $38                                         ; $587b: $ff
	ld   e, $ff                                      ; $587c: $1e $ff
	sub  $f7                                         ; $587e: $d6 $f7
	ld   [de], a                                     ; $5880: $12
	rst  $30                                         ; $5881: $f7
	or   $f7                                         ; $5882: $f6 $f7
	ld   [de], a                                     ; $5884: $12
	rst  $30                                         ; $5885: $f7
	nop                                              ; $5886: $00
	add  c                                           ; $5887: $81
	dec  [hl]                                        ; $5888: $35
	di                                               ; $5889: $f3
	scf                                              ; $588a: $37
	rst  $30                                         ; $588b: $f7
	inc  [hl]                                        ; $588c: $34
	rst  $30                                         ; $588d: $f7
	ld   [hl], b                                     ; $588e: $70
	rst  $30                                         ; $588f: $f7
	ld   a, l                                        ; $5890: $7d
	ldh  a, [rAUD4LEN]                               ; $5891: $f0 $20
	ldh  [rAUD4LEN], a                               ; $5893: $e0 $20
	ldh  [$c0], a                                    ; $5895: $e0 $c0
	add  b                                           ; $5897: $80
	add  d                                           ; $5898: $82
	ldh  [rDIV], a                                   ; $5899: $e0 $04
	or   b                                           ; $589b: $b0
	ldh  a, [rAUD4LEN]                               ; $589c: $f0 $20
	ldh  [rSVBK], a                                  ; $589e: $e0 $70
	add  l                                           ; $58a0: $85
	nop                                              ; $58a1: $00
	add  b                                           ; $58a2: $80
	add  b                                           ; $58a3: $80
	add  c                                           ; $58a4: $81
	add  e                                           ; $58a5: $83
	nop                                              ; $58a6: $00
	inc  bc                                          ; $58a7: $03
	add  b                                           ; $58a8: $80
	rlca                                             ; $58a9: $07
	ld   bc, $8008                                   ; $58aa: $01 $08 $80
	add  b                                           ; $58ad: $80
	ld   b, b                                        ; $58ae: $40
	inc  bc                                          ; $58af: $03
	scf                                              ; $58b0: $37
	jr   nz, jr_09e_58f2                             ; $58b1: $20 $3f

	jr   nz, jr_09e_5837                             ; $58b3: $20 $82

	db   $10                                         ; $58b5: $10

jr_09e_58b6:
	add  b                                           ; $58b6: $80
	jr   nc, @+$0d                                   ; $58b7: $30 $0b

	cpl                                              ; $58b9: $2f
	jr   nz, jr_09e_5901                             ; $58ba: $20 $45

	rst  $30                                         ; $58bc: $f7
	jr   nc, jr_09e_58b6                             ; $58bd: $30 $f7

	ldh  a, [$f7]                                    ; $58bf: $f0 $f7
	add  d                                           ; $58c1: $82
	nop                                              ; $58c2: $00
	ldh  a, [rIF]                                    ; $58c3: $f0 $0f
	add  h                                           ; $58c5: $84
	nop                                              ; $58c6: $00
	rlca                                             ; $58c7: $07
	sub  b                                           ; $58c8: $90
	ldh  [rAUD4LEN], a                               ; $58c9: $e0 $20
	ldh  [rP1], a                                    ; $58cb: $e0 $00
	ret  nz                                          ; $58cd: $c0

	add  b                                           ; $58ce: $80
	nop                                              ; $58cf: $00
	add  c                                           ; $58d0: $81
	ldh  a, [$83]                                    ; $58d1: $f0 $83
	nop                                              ; $58d3: $00
	add  b                                           ; $58d4: $80
	ret  nz                                          ; $58d5: $c0

	add  b                                           ; $58d6: $80
	add  b                                           ; $58d7: $80
	ld   b, $c6                                      ; $58d8: $06 $c6
	ret  nz                                          ; $58da: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58db: $cf
	ret  nz                                          ; $58dc: $c0

	rst  $38                                         ; $58dd: $ff
	and  $ef                                         ; $58de: $e6 $ef
	add  b                                           ; $58e0: $80
	ld   e, a                                        ; $58e1: $5f
	add  b                                           ; $58e2: $80
	ld   a, [hl]                                     ; $58e3: $7e
	ld   bc, $ee19                                   ; $58e4: $01 $19 $ee
	add  e                                           ; $58e7: $83
	nop                                              ; $58e8: $00
	ld   a, [bc]                                     ; $58e9: $0a
	add  b                                           ; $58ea: $80
	nop                                              ; $58eb: $00
	db   $e4                                         ; $58ec: $e4
	nop                                              ; $58ed: $00
	xor  $80                                         ; $58ee: $ee $80
	di                                               ; $58f0: $f3
	nop                                              ; $58f1: $00

jr_09e_58f2:
	jr   nc, @-$3e                                   ; $58f2: $30 $c0

	ld   bc, $008b                                   ; $58f4: $01 $8b $00
	inc  de                                          ; $58f7: $13
	pop  hl                                          ; $58f8: $e1
	nop                                              ; $58f9: $00
	pop  bc                                          ; $58fa: $c1
	nop                                              ; $58fb: $00
	jr   nc, jr_09e_58fe                             ; $58fc: $30 $00

jr_09e_58fe:
	jr   nc, jr_09e_5900                             ; $58fe: $30 $00

jr_09e_5900:
	ld   [hl], b                                     ; $5900: $70

jr_09e_5901:
	nop                                              ; $5901: $00
	ld   [hl], b                                     ; $5902: $70
	nop                                              ; $5903: $00
	ld   [hl], b                                     ; $5904: $70
	nop                                              ; $5905: $00
	ldh  a, [rP1]                                    ; $5906: $f0 $00
	ldh  a, [rP1]                                    ; $5908: $f0 $00
	jp   nc, $807c                                   ; $590a: $d2 $7c $80

	sbc  l                                           ; $590d: $9d
	add  b                                           ; $590e: $80
	pop  hl                                          ; $590f: $e1
	ld   bc, $7b79                                   ; $5910: $01 $79 $7b
	add  b                                           ; $5913: $80
	ld   a, c                                        ; $5914: $79
	ld   a, [bc]                                     ; $5915: $0a
	scf                                              ; $5916: $37
	inc  sp                                          ; $5917: $33
	rla                                              ; $5918: $17
	db   $10                                         ; $5919: $10
	inc  bc                                          ; $591a: $03
	nop                                              ; $591b: $00
	add  e                                           ; $591c: $83
	ld   a, [hl]                                     ; $591d: $7e
	rst  $38                                         ; $591e: $ff
	db   $fc                                         ; $591f: $fc
	cp   $80                                         ; $5920: $fe $80
	ld   sp, hl                                      ; $5922: $f9
	ld   a, [bc]                                     ; $5923: $0a
	ld   hl, sp-$04                                  ; $5924: $f8 $fc
	ldh  a, [$f8]                                    ; $5926: $f0 $f8
	add  b                                           ; $5928: $80
	ldh  a, [rP1]                                    ; $5929: $f0 $00
	add  b                                           ; $592b: $80
	nop                                              ; $592c: $00
	ld   b, b                                        ; $592d: $40
	cp   a                                           ; $592e: $bf
	add  b                                           ; $592f: $80
	rst  JumpTable                                         ; $5930: $df
	nop                                              ; $5931: $00
	rst  $38                                         ; $5932: $ff
	add  b                                           ; $5933: $80
	ld   a, a                                        ; $5934: $7f
	add  b                                           ; $5935: $80
	cp   a                                           ; $5936: $bf
	add  b                                           ; $5937: $80
	ld   d, a                                        ; $5938: $57
	add  b                                           ; $5939: $80
	dec  hl                                          ; $593a: $2b
	add  b                                           ; $593b: $80
	dec  d                                           ; $593c: $15
	ld   [bc], a                                     ; $593d: $02
	ld   [bc], a                                     ; $593e: $02
	ld   d, d                                        ; $593f: $52
	and  b                                           ; $5940: $a0
	add  b                                           ; $5941: $80
	ret  nc                                          ; $5942: $d0

	add  b                                           ; $5943: $80
	ldh  [$80], a                                    ; $5944: $e0 $80
	ldh  a, [$80]                                    ; $5946: $f0 $80
	ldh  [rP1], a                                    ; $5948: $e0 $00
	ldh  a, [$80]                                    ; $594a: $f0 $80
	or   b                                           ; $594c: $b0
	add  b                                           ; $594d: $80
	ld   d, b                                        ; $594e: $50
	ld   bc, $5fa0                                   ; $594f: $01 $a0 $5f
	add  b                                           ; $5952: $80
	ld   a, h                                        ; $5953: $7c
	adc  e                                           ; $5954: $8b
	rst  $38                                         ; $5955: $ff
	ld   [bc], a                                     ; $5956: $02
	ld   hl, sp+$00                                  ; $5957: $f8 $00
	rlca                                             ; $5959: $07
	add  b                                           ; $595a: $80
	ld   hl, sp-$77                                  ; $595b: $f8 $89
	rst  $38                                         ; $595d: $ff
	add  b                                           ; $595e: $80
	nop                                              ; $595f: $00
	ld   [bc], a                                     ; $5960: $02
	ld   hl, sp+$00                                  ; $5961: $f8 $00
	rlca                                             ; $5963: $07
	add  b                                           ; $5964: $80
	ld   hl, sp-$79                                  ; $5965: $f8 $87
	rst  $38                                         ; $5967: $ff
	add  d                                           ; $5968: $82
	nop                                              ; $5969: $00
	nop                                              ; $596a: $00
	ldh  a, [$80]                                    ; $596b: $f0 $80
	nop                                              ; $596d: $00
	add  a                                           ; $596e: $87
	ldh  a, [$ae]                                    ; $596f: $f0 $ae
	rst  $38                                         ; $5971: $ff
	adc  [hl]                                        ; $5972: $8e
	ldh  a, [rIE]                                    ; $5973: $f0 $ff
	nop                                              ; $5975: $00
	rst  $38                                         ; $5976: $ff
	nop                                              ; $5977: $00
	rst  $38                                         ; $5978: $ff
	nop                                              ; $5979: $00
	rst  $38                                         ; $597a: $ff
	nop                                              ; $597b: $00
	rst  $38                                         ; $597c: $ff
	nop                                              ; $597d: $00
	rst  $38                                         ; $597e: $ff
	nop                                              ; $597f: $00
	ld   hl, sp+$00                                  ; $5980: $f8 $00
	ld   sp, hl                                      ; $5982: $f9
	nop                                              ; $5983: $00
	add  b                                           ; $5984: $80
	nop                                              ; $5985: $00
	ld   a, [bc]                                     ; $5986: $0a
	rlca                                             ; $5987: $07
	nop                                              ; $5988: $00
	inc  b                                           ; $5989: $04
	nop                                              ; $598a: $00
	inc  e                                           ; $598b: $1c
	nop                                              ; $598c: $00
	ld   h, b                                        ; $598d: $60
	ld   [$0648], sp                                 ; $598e: $08 $48 $06
	ld   b, [hl]                                     ; $5991: $46
	add  c                                           ; $5992: $81
	nop                                              ; $5993: $00
	ld   bc, $1191                                   ; $5994: $01 $91 $11
	add  b                                           ; $5997: $80
	scf                                              ; $5998: $37
	ld   bc, $2cac                                   ; $5999: $01 $ac $2c
	add  b                                           ; $599c: $80
	ccf                                              ; $599d: $3f
	add  b                                           ; $599e: $80
	inc  sp                                          ; $599f: $33
	ld   [bc], a                                     ; $59a0: $02
	ld   b, e                                        ; $59a1: $43
	inc  bc                                          ; $59a2: $03
	ld   [hl], e                                     ; $59a3: $73
	add  c                                           ; $59a4: $81
	inc  sp                                          ; $59a5: $33
	ld   b, $7f                                      ; $59a6: $06 $7f
	nop                                              ; $59a8: $00
	add  b                                           ; $59a9: $80
	nop                                              ; $59aa: $00
	ld   [hl], b                                     ; $59ab: $70
	nop                                              ; $59ac: $00
	inc  c                                           ; $59ad: $0c
	add  c                                           ; $59ae: $81
	nop                                              ; $59af: $00
	nop                                              ; $59b0: $00
	ld   [bc], a                                     ; $59b1: $02
	add  b                                           ; $59b2: $80
	nop                                              ; $59b3: $00
	add  b                                           ; $59b4: $80
	call nz, $1802                                   ; $59b5: $c4 $02 $18
	add  hl, de                                      ; $59b8: $19
	nop                                              ; $59b9: $00
	add  b                                           ; $59ba: $80
	add  b                                           ; $59bb: $80
	add  b                                           ; $59bc: $80
	ld   b, b                                        ; $59bd: $40
	add  b                                           ; $59be: $80
	ret  nc                                          ; $59bf: $d0

	ld   bc, $d0d1                                   ; $59c0: $01 $d1 $d0
	add  b                                           ; $59c3: $80
	ldh  a, [$0e]                                    ; $59c4: $f0 $0e
	ldh  [c], a                                      ; $59c6: $e2
	ldh  [$cc], a                                    ; $59c7: $e0 $cc
	ret  nz                                          ; $59c9: $c0

	rrca                                             ; $59ca: $0f
	ld   b, b                                        ; $59cb: $40
	ld   h, c                                        ; $59cc: $61
	ld   [hl], a                                     ; $59cd: $77
	ld   [hl], h                                     ; $59ce: $74
	ld   a, a                                        ; $59cf: $7f
	ld   e, c                                        ; $59d0: $59
	ld   l, h                                        ; $59d1: $6c
	ldh  [rAUD3LEN], a                               ; $59d2: $e0 $1b
	ld   d, e                                        ; $59d4: $53
	add  [hl]                                        ; $59d5: $86
	rla                                              ; $59d6: $17
	ld   bc, $2703                                   ; $59d7: $01 $03 $27
	add  b                                           ; $59da: $80
	inc  c                                           ; $59db: $0c
	dec  b                                           ; $59dc: $05
	dec  c                                           ; $59dd: $0d
	add  hl, de                                      ; $59de: $19
	dec  b                                           ; $59df: $05
	dec  d                                           ; $59e0: $15
	ld   [bc], a                                     ; $59e1: $02
	ld   [hl+], a                                    ; $59e2: $22
	add  b                                           ; $59e3: $80
	dec  e                                           ; $59e4: $1d
	dec  b                                           ; $59e5: $05
	nop                                              ; $59e6: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59e7: $cf
	jr   nz, jr_09e_5a22                             ; $59e8: $20 $38

	ldh  a, [$f4]                                    ; $59ea: $f0 $f4
	add  b                                           ; $59ec: $80
	cp   b                                           ; $59ed: $b8
	dec  b                                           ; $59ee: $05
	jr   c, jr_09e_59f9                              ; $59ef: $38 $08

	or   b                                           ; $59f1: $b0
	or   d                                           ; $59f2: $b2
	or   h                                           ; $59f3: $b4
	sub  h                                           ; $59f4: $94
	add  d                                           ; $59f5: $82
	ld   l, h                                        ; $59f6: $6c
	dec  bc                                          ; $59f7: $0b
	sbc  h                                           ; $59f8: $9c

jr_09e_59f9:
	sbc  [hl]                                        ; $59f9: $9e
	ld   hl, sp-$04                                  ; $59fa: $f8 $fc
	nop                                              ; $59fc: $00
	sbc  b                                           ; $59fd: $98
	ret  nz                                          ; $59fe: $c0

	ret  nc                                          ; $59ff: $d0

	ldh  [rAUD4LEN], a                               ; $5a00: $e0 $20
	ldh  [hScriptOpcodeParams], a                                    ; $5a02: $e0 $a0
	add  b                                           ; $5a04: $80
	ldh  [rAUD1SWEEP], a                             ; $5a05: $e0 $10
	nop                                              ; $5a07: $00
	ldh  a, [rP1]                                    ; $5a08: $f0 $00
	rrca                                             ; $5a0a: $0f
	nop                                              ; $5a0b: $00
	ld   [$1800], sp                                 ; $5a0c: $08 $00 $18
	nop                                              ; $5a0f: $00
	jr   nz, jr_09e_5a1a                             ; $5a10: $20 $08

	ld   c, b                                        ; $5a12: $48
	rlca                                             ; $5a13: $07
	ld   b, a                                        ; $5a14: $47
	nop                                              ; $5a15: $00
	ld   b, b                                        ; $5a16: $40
	nop                                              ; $5a17: $00
	add  b                                           ; $5a18: $80

jr_09e_5a19:
	ld   [bc], a                                     ; $5a19: $02

jr_09e_5a1a:
	add  b                                           ; $5a1a: $80
	ld   [de], a                                     ; $5a1b: $12
	add  b                                           ; $5a1c: $80
	ld   d, $80                                      ; $5a1d: $16 $80
	stop                                             ; $5a1f: $10 $00
	ld   d, c                                        ; $5a21: $51

jr_09e_5a22:
	add  c                                           ; $5a22: $81
	inc  de                                          ; $5a23: $13
	ld   c, $1d                                      ; $5a24: $0e $1d
	rra                                              ; $5a26: $1f

jr_09e_5a27:
	cpl                                              ; $5a27: $2f
	rrca                                             ; $5a28: $0f
	rra                                              ; $5a29: $1f
	nop                                              ; $5a2a: $00
	add  b                                           ; $5a2b: $80
	nop                                              ; $5a2c: $00
	ld   [hl], b                                     ; $5a2d: $70
	nop                                              ; $5a2e: $00
	ld   [$0400], sp                                 ; $5a2f: $08 $00 $04
	nop                                              ; $5a32: $00
	ld   [bc], a                                     ; $5a33: $02
	add  b                                           ; $5a34: $80
	ld   [$3001], sp                                 ; $5a35: $08 $01 $30
	ld   sp, $0083                                   ; $5a38: $31 $83 $00
	add  b                                           ; $5a3b: $80
	add  b                                           ; $5a3c: $80
	add  b                                           ; $5a3d: $80
	and  b                                           ; $5a3e: $a0
	ld   bc, $b0b1                                   ; $5a3f: $01 $b1 $b0
	add  b                                           ; $5a42: $80
	ldh  a, [$0e]                                    ; $5a43: $f0 $0e
	ldh  [c], a                                      ; $5a45: $e2
	ldh  [$cc], a                                    ; $5a46: $e0 $cc
	ret  nz                                          ; $5a48: $c0

	rst  $38                                         ; $5a49: $ff
	nop                                              ; $5a4a: $00
	ld   bc, $1407                                   ; $5a4b: $01 $07 $14
	rrca                                             ; $5a4e: $0f
	add  hl, bc                                      ; $5a4f: $09
	inc  c                                           ; $5a50: $0c
	jr   nz, jr_09e_5a6e                             ; $5a51: $20 $1b

	inc  de                                          ; $5a53: $13
	add  [hl]                                        ; $5a54: $86
	rla                                              ; $5a55: $17
	ld   bc, $2703                                   ; $5a56: $01 $03 $27
	add  b                                           ; $5a59: $80
	inc  c                                           ; $5a5a: $0c
	dec  b                                           ; $5a5b: $05
	dec  c                                           ; $5a5c: $0d
	add  hl, de                                      ; $5a5d: $19
	dec  b                                           ; $5a5e: $05
	dec  d                                           ; $5a5f: $15
	ld   [bc], a                                     ; $5a60: $02
	ld   [hl+], a                                    ; $5a61: $22
	add  b                                           ; $5a62: $80
	dec  e                                           ; $5a63: $1d
	dec  b                                           ; $5a64: $05
	nop                                              ; $5a65: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a66: $cf
	jr   nz, @+$3a                                   ; $5a67: $20 $38

	ldh  a, [$f4]                                    ; $5a69: $f0 $f4
	add  b                                           ; $5a6b: $80
	cp   b                                           ; $5a6c: $b8
	dec  b                                           ; $5a6d: $05

jr_09e_5a6e:
	jr   c, jr_09e_5a78                              ; $5a6e: $38 $08

	or   b                                           ; $5a70: $b0
	or   d                                           ; $5a71: $b2
	or   h                                           ; $5a72: $b4
	sub  h                                           ; $5a73: $94
	add  d                                           ; $5a74: $82
	ld   l, h                                        ; $5a75: $6c
	dec  bc                                          ; $5a76: $0b
	sbc  h                                           ; $5a77: $9c

jr_09e_5a78:
	sbc  [hl]                                        ; $5a78: $9e
	ld   hl, sp-$04                                  ; $5a79: $f8 $fc
	nop                                              ; $5a7b: $00
	sbc  b                                           ; $5a7c: $98
	ret  nz                                          ; $5a7d: $c0

	ret  nc                                          ; $5a7e: $d0

	ldh  [rAUD4LEN], a                               ; $5a7f: $e0 $20
	ldh  [hScriptOpcodeParams], a                                    ; $5a81: $e0 $a0
	add  b                                           ; $5a83: $80
	ldh  [rSB], a                                    ; $5a84: $e0 $01
	nop                                              ; $5a86: $00
	ldh  a, [$9a]                                    ; $5a87: $f0 $9a
	nop                                              ; $5a89: $00
	add  b                                           ; $5a8a: $80
	dec  e                                           ; $5a8b: $1d
	adc  h                                           ; $5a8c: $8c
	nop                                              ; $5a8d: $00
	add  d                                           ; $5a8e: $82
	ld   h, b                                        ; $5a8f: $60
	adc  d                                           ; $5a90: $8a
	nop                                              ; $5a91: $00
	add  b                                           ; $5a92: $80
	ldh  [$8b], a                                    ; $5a93: $e0 $8b
	nop                                              ; $5a95: $00
	add  d                                           ; $5a96: $82
	jr   nz, jr_09e_5a19                             ; $5a97: $20 $80

	sbc  h                                           ; $5a99: $9c
	add  b                                           ; $5a9a: $80
	add  d                                           ; $5a9b: $82
	add  b                                           ; $5a9c: $80
	ld   [hl], d                                     ; $5a9d: $72
	add  b                                           ; $5a9e: $80
	ld   [$0480], sp                                 ; $5a9f: $08 $80 $04
	sub  b                                           ; $5aa2: $90
	nop                                              ; $5aa3: $00
	add  b                                           ; $5aa4: $80
	jr   nc, jr_09e_5a27                             ; $5aa5: $30 $80

	ld   [$c880], sp                                 ; $5aa7: $08 $80 $c8
	add  b                                           ; $5aaa: $80
	ld   h, $80                                      ; $5aab: $26 $80
	ld   hl, $1c80                                   ; $5aad: $21 $80 $1c
	add  b                                           ; $5ab0: $80
	ld   [bc], a                                     ; $5ab1: $02
	add  [hl]                                        ; $5ab2: $86
	nop                                              ; $5ab3: $00
	ld   a, [bc]                                     ; $5ab4: $0a
	rrca                                             ; $5ab5: $0f
	nop                                              ; $5ab6: $00
	inc  c                                           ; $5ab7: $0c
	nop                                              ; $5ab8: $00
	inc  e                                           ; $5ab9: $1c
	nop                                              ; $5aba: $00
	ld   h, b                                        ; $5abb: $60
	ld   [$0688], sp                                 ; $5abc: $08 $88 $06
	add  [hl]                                        ; $5abf: $86
	add  c                                           ; $5ac0: $81
	nop                                              ; $5ac1: $00
	ld   bc, $1191                                   ; $5ac2: $01 $91 $11
	add  b                                           ; $5ac5: $80
	dec  a                                           ; $5ac6: $3d
	add  b                                           ; $5ac7: $80
	dec  hl                                          ; $5ac8: $2b
	ld   bc, $1c9c                                   ; $5ac9: $01 $9c $1c
	add  b                                           ; $5acc: $80
	ccf                                              ; $5acd: $3f
	add  b                                           ; $5ace: $80
	daa                                              ; $5acf: $27
	add  b                                           ; $5ad0: $80
	inc  bc                                          ; $5ad1: $03
	ld   c, $5f                                      ; $5ad2: $0e $5f
	rra                                              ; $5ad4: $1f
	ccf                                              ; $5ad5: $3f
	nop                                              ; $5ad6: $00
	rrca                                             ; $5ad7: $0f
	nop                                              ; $5ad8: $00
	inc  c                                           ; $5ad9: $0c
	nop                                              ; $5ada: $00
	inc  e                                           ; $5adb: $1c
	nop                                              ; $5adc: $00
	ld   h, b                                        ; $5add: $60
	ld   [$0688], sp                                 ; $5ade: $08 $88 $06
	add  [hl]                                        ; $5ae1: $86
	add  c                                           ; $5ae2: $81
	nop                                              ; $5ae3: $00
	ld   bc, $1191                                   ; $5ae4: $01 $91 $11
	add  b                                           ; $5ae7: $80
	dec  a                                           ; $5ae8: $3d
	add  b                                           ; $5ae9: $80
	dec  hl                                          ; $5aea: $2b
	ld   bc, $1c9c                                   ; $5aeb: $01 $9c $1c
	add  b                                           ; $5aee: $80
	ccf                                              ; $5aef: $3f
	add  b                                           ; $5af0: $80
	dec  hl                                          ; $5af1: $2b
	add  b                                           ; $5af2: $80
	dec  d                                           ; $5af3: $15
	ld   [$1f5f], sp                                 ; $5af4: $08 $5f $1f
	ccf                                              ; $5af7: $3f
	nop                                              ; $5af8: $00
	add  b                                           ; $5af9: $80
	nop                                              ; $5afa: $00
	ld   [hl], b                                     ; $5afb: $70
	nop                                              ; $5afc: $00
	inc  c                                           ; $5afd: $0c
	add  c                                           ; $5afe: $81
	nop                                              ; $5aff: $00
	nop                                              ; $5b00: $00
	ld   [bc], a                                     ; $5b01: $02
	add  b                                           ; $5b02: $80
	inc  b                                           ; $5b03: $04
	add  b                                           ; $5b04: $80
	ret  c                                           ; $5b05: $d8

	ld   [bc], a                                     ; $5b06: $02
	nop                                              ; $5b07: $00
	ld   bc, $8200                                   ; $5b08: $01 $00 $82
	add  b                                           ; $5b0b: $80
	add  b                                           ; $5b0c: $80
	or   b                                           ; $5b0d: $b0
	ld   bc, $d0d1                                   ; $5b0e: $01 $d1 $d0
	add  b                                           ; $5b11: $80
	ldh  a, [rAUD1SWEEP]                             ; $5b12: $f0 $10
	ldh  [c], a                                      ; $5b14: $e2
	ldh  [$cc], a                                    ; $5b15: $e0 $cc
	ret  nz                                          ; $5b17: $c0

	adc  a                                           ; $5b18: $8f
	nop                                              ; $5b19: $00
	add  c                                           ; $5b1a: $81
	ld   h, a                                        ; $5b1b: $67
	ld   h, h                                        ; $5b1c: $64
	ld   l, a                                        ; $5b1d: $6f
	ld   l, c                                        ; $5b1e: $69
	inc  c                                           ; $5b1f: $0c
	nop                                              ; $5b20: $00
	ld   e, e                                        ; $5b21: $5b
	db   $d3                                         ; $5b22: $d3
	rla                                              ; $5b23: $17
	ld   d, a                                        ; $5b24: $57
	add  h                                           ; $5b25: $84
	rla                                              ; $5b26: $17
	ld   bc, $2703                                   ; $5b27: $01 $03 $27
	add  b                                           ; $5b2a: $80
	inc  c                                           ; $5b2b: $0c
	dec  b                                           ; $5b2c: $05
	dec  c                                           ; $5b2d: $0d
	add  hl, de                                      ; $5b2e: $19
	dec  b                                           ; $5b2f: $05
	dec  d                                           ; $5b30: $15
	ld   [bc], a                                     ; $5b31: $02
	ld   [hl+], a                                    ; $5b32: $22
	add  b                                           ; $5b33: $80
	dec  e                                           ; $5b34: $1d
	ld   bc, $3f00                                   ; $5b35: $01 $00 $3f
	add  b                                           ; $5b38: $80
	nop                                              ; $5b39: $00
	add  d                                           ; $5b3a: $82
	ld   h, b                                        ; $5b3b: $60
	sub  h                                           ; $5b3c: $94
	nop                                              ; $5b3d: $00
	add  b                                           ; $5b3e: $80
	dec  e                                           ; $5b3f: $1d
	adc  a                                           ; $5b40: $8f
	nop                                              ; $5b41: $00
	add  b                                           ; $5b42: $80
	ld   [$2282], sp                                 ; $5b43: $08 $82 $22
	add  b                                           ; $5b46: $80
	ld   [$0480], sp                                 ; $5b47: $08 $80 $04
	rst  $38                                         ; $5b4a: $ff
	nop                                              ; $5b4b: $00
	rst  $38                                         ; $5b4c: $ff
	nop                                              ; $5b4d: $00
	rst  $38                                         ; $5b4e: $ff
	nop                                              ; $5b4f: $00
	rst  $38                                         ; $5b50: $ff
	nop                                              ; $5b51: $00
	and  d                                           ; $5b52: $a2
	nop                                              ; $5b53: $00
	ld   a, [bc]                                     ; $5b54: $0a
	rlca                                             ; $5b55: $07
	nop                                              ; $5b56: $00
	inc  b                                           ; $5b57: $04
	nop                                              ; $5b58: $00
	inc  e                                           ; $5b59: $1c
	nop                                              ; $5b5a: $00
	ld   h, b                                        ; $5b5b: $60
	ld   [$0648], sp                                 ; $5b5c: $08 $48 $06
	ld   b, [hl]                                     ; $5b5f: $46
	add  c                                           ; $5b60: $81
	nop                                              ; $5b61: $00
	ld   b, $7f                                      ; $5b62: $06 $7f
	nop                                              ; $5b64: $00
	add  b                                           ; $5b65: $80
	nop                                              ; $5b66: $00
	ld   [hl], b                                     ; $5b67: $70
	nop                                              ; $5b68: $00
	inc  c                                           ; $5b69: $0c
	add  c                                           ; $5b6a: $81
	nop                                              ; $5b6b: $00
	nop                                              ; $5b6c: $00
	ld   [bc], a                                     ; $5b6d: $02
	add  b                                           ; $5b6e: $80
	nop                                              ; $5b6f: $00
	add  b                                           ; $5b70: $80
	call nz, $1801                                   ; $5b71: $c4 $01 $18
	and  $8f                                         ; $5b74: $e6 $8f
	nop                                              ; $5b76: $00
	ld   a, [bc]                                     ; $5b77: $0a
	rrca                                             ; $5b78: $0f
	nop                                              ; $5b79: $00
	inc  c                                           ; $5b7a: $0c
	nop                                              ; $5b7b: $00
	inc  e                                           ; $5b7c: $1c
	nop                                              ; $5b7d: $00
	ld   h, b                                        ; $5b7e: $60
	ld   [$0688], sp                                 ; $5b7f: $08 $88 $06
	add  [hl]                                        ; $5b82: $86
	add  c                                           ; $5b83: $81
	nop                                              ; $5b84: $00
	ld   b, $7f                                      ; $5b85: $06 $7f
	nop                                              ; $5b87: $00
	add  b                                           ; $5b88: $80
	nop                                              ; $5b89: $00
	ld   [hl], b                                     ; $5b8a: $70
	nop                                              ; $5b8b: $00
	inc  c                                           ; $5b8c: $0c
	add  c                                           ; $5b8d: $81
	nop                                              ; $5b8e: $00
	nop                                              ; $5b8f: $00
	ld   [bc], a                                     ; $5b90: $02
	add  b                                           ; $5b91: $80
	inc  b                                           ; $5b92: $04
	add  b                                           ; $5b93: $80
	ret  c                                           ; $5b94: $d8

	dec  de                                          ; $5b95: $1b
	nop                                              ; $5b96: $00
	cp   $00                                         ; $5b97: $fe $00
	rrca                                             ; $5b99: $0f
	nop                                              ; $5b9a: $00
	ld   [$1800], sp                                 ; $5b9b: $08 $00 $18
	nop                                              ; $5b9e: $00
	jr   nz, jr_09e_5ba9                             ; $5b9f: $20 $08

	ld   c, b                                        ; $5ba1: $48
	rlca                                             ; $5ba2: $07
	ld   b, a                                        ; $5ba3: $47
	nop                                              ; $5ba4: $00
	ld   b, b                                        ; $5ba5: $40
	nop                                              ; $5ba6: $00
	ld   a, a                                        ; $5ba7: $7f
	nop                                              ; $5ba8: $00

jr_09e_5ba9:
	add  b                                           ; $5ba9: $80
	nop                                              ; $5baa: $00
	ld   [hl], b                                     ; $5bab: $70
	nop                                              ; $5bac: $00
	ld   [$0400], sp                                 ; $5bad: $08 $00 $04
	nop                                              ; $5bb0: $00
	ld   [bc], a                                     ; $5bb1: $02
	add  b                                           ; $5bb2: $80
	ld   [$3003], sp                                 ; $5bb3: $08 $03 $30
	ld   sp, $ff00                                   ; $5bb6: $31 $00 $ff
	rst  $38                                         ; $5bb9: $ff
	nop                                              ; $5bba: $00
	adc  h                                           ; $5bbb: $8c
	nop                                              ; $5bbc: $00
	ld   bc, $11ee                                   ; $5bbd: $01 $ee $11
	add  b                                           ; $5bc0: $80
	scf                                              ; $5bc1: $37
	ld   bc, $2cac                                   ; $5bc2: $01 $ac $2c
	add  b                                           ; $5bc5: $80
	ccf                                              ; $5bc6: $3f
	add  b                                           ; $5bc7: $80
	inc  sp                                          ; $5bc8: $33
	ld   [bc], a                                     ; $5bc9: $02
	ld   b, e                                        ; $5bca: $43
	inc  bc                                          ; $5bcb: $03
	ld   [hl], e                                     ; $5bcc: $73
	add  c                                           ; $5bcd: $81
	inc  sp                                          ; $5bce: $33
	ld   bc, $0080                                   ; $5bcf: $01 $80 $00
	add  b                                           ; $5bd2: $80
	add  b                                           ; $5bd3: $80
	add  b                                           ; $5bd4: $80
	ld   b, b                                        ; $5bd5: $40
	add  b                                           ; $5bd6: $80
	ret  nc                                          ; $5bd7: $d0

	ld   bc, $d0d1                                   ; $5bd8: $01 $d1 $d0
	add  b                                           ; $5bdb: $80
	ldh  a, [rTIMA]                                  ; $5bdc: $f0 $05
	ldh  [c], a                                      ; $5bde: $e2
	ldh  [$cc], a                                    ; $5bdf: $e0 $cc
	ret  nz                                          ; $5be1: $c0

	ld   hl, sp+$08                                  ; $5be2: $f8 $08
	add  d                                           ; $5be4: $82
	ld   [hl+], a                                    ; $5be5: $22
	add  b                                           ; $5be6: $80
	ld   [$0480], sp                                 ; $5be7: $08 $80 $04
	add  h                                           ; $5bea: $84
	nop                                              ; $5beb: $00
	ld   bc, $11ee                                   ; $5bec: $01 $ee $11
	add  b                                           ; $5bef: $80
	dec  a                                           ; $5bf0: $3d
	add  b                                           ; $5bf1: $80
	dec  hl                                          ; $5bf2: $2b
	ld   bc, $1c9c                                   ; $5bf3: $01 $9c $1c
	add  b                                           ; $5bf6: $80
	ccf                                              ; $5bf7: $3f
	add  b                                           ; $5bf8: $80
	daa                                              ; $5bf9: $27
	add  b                                           ; $5bfa: $80
	inc  bc                                          ; $5bfb: $03
	inc  bc                                          ; $5bfc: $03
	ld   e, a                                        ; $5bfd: $5f
	rra                                              ; $5bfe: $1f
	ret  nz                                          ; $5bff: $c0

	nop                                              ; $5c00: $00
	add  d                                           ; $5c01: $82
	add  b                                           ; $5c02: $80
	add  b                                           ; $5c03: $80
	or   b                                           ; $5c04: $b0
	ld   bc, $d0d1                                   ; $5c05: $01 $d1 $d0
	add  b                                           ; $5c08: $80
	ldh  a, [rTIMA]                                  ; $5c09: $f0 $05
	ldh  [c], a                                      ; $5c0b: $e2
	ldh  [$cc], a                                    ; $5c0c: $e0 $cc
	ret  nz                                          ; $5c0e: $c0

	adc  l                                           ; $5c0f: $8d
	ld   [bc], a                                     ; $5c10: $02
	add  b                                           ; $5c11: $80
	ld   [de], a                                     ; $5c12: $12
	add  b                                           ; $5c13: $80
	ld   d, $80                                      ; $5c14: $16 $80
	stop                                             ; $5c16: $10 $00
	ld   d, c                                        ; $5c18: $51
	add  c                                           ; $5c19: $81
	inc  de                                          ; $5c1a: $13
	inc  b                                           ; $5c1b: $04
	dec  e                                           ; $5c1c: $1d
	rra                                              ; $5c1d: $1f
	cpl                                              ; $5c1e: $2f
	rrca                                             ; $5c1f: $0f
	ldh  [$81], a                                    ; $5c20: $e0 $81
	nop                                              ; $5c22: $00
	add  b                                           ; $5c23: $80
	add  b                                           ; $5c24: $80
	add  b                                           ; $5c25: $80
	and  b                                           ; $5c26: $a0
	ld   bc, $b0b1                                   ; $5c27: $01 $b1 $b0
	add  b                                           ; $5c2a: $80
	ldh  a, [rDIV]                                   ; $5c2b: $f0 $04
	ldh  [c], a                                      ; $5c2d: $e2
	ldh  [$cc], a                                    ; $5c2e: $e0 $cc
	ret  nz                                          ; $5c30: $c0

	ldh  a, [rIE]                                    ; $5c31: $f0 $ff
	nop                                              ; $5c33: $00
	adc  h                                           ; $5c34: $8c
	nop                                              ; $5c35: $00
	ld   a, [bc]                                     ; $5c36: $0a
	rst  $38                                         ; $5c37: $ff
	ld   b, b                                        ; $5c38: $40
	ld   h, c                                        ; $5c39: $61
	ld   [hl], a                                     ; $5c3a: $77
	ld   [hl], h                                     ; $5c3b: $74
	ld   a, a                                        ; $5c3c: $7f
	ld   e, c                                        ; $5c3d: $59
	ld   l, h                                        ; $5c3e: $6c
	ldh  [rAUD3LEN], a                               ; $5c3f: $e0 $1b
	ld   d, e                                        ; $5c41: $53
	add  e                                           ; $5c42: $83
	rla                                              ; $5c43: $17
	inc  b                                           ; $5c44: $04
	ret  c                                           ; $5c45: $d8

	jr   nz, jr_09e_5c80                             ; $5c46: $20 $38

	ldh  a, [$f4]                                    ; $5c48: $f0 $f4
	add  b                                           ; $5c4a: $80
	cp   b                                           ; $5c4b: $b8
	dec  b                                           ; $5c4c: $05
	jr   c, jr_09e_5c57                              ; $5c4d: $38 $08

	or   b                                           ; $5c4f: $b0
	or   d                                           ; $5c50: $b2
	or   h                                           ; $5c51: $b4
	sub  h                                           ; $5c52: $94
	add  c                                           ; $5c53: $81
	ld   l, h                                        ; $5c54: $6c
	nop                                              ; $5c55: $00
	sub  d                                           ; $5c56: $92

jr_09e_5c57:
	adc  l                                           ; $5c57: $8d
	nop                                              ; $5c58: $00
	inc  c                                           ; $5c59: $0c
	ld   a, a                                        ; $5c5a: $7f
	nop                                              ; $5c5b: $00
	add  c                                           ; $5c5c: $81
	ld   h, a                                        ; $5c5d: $67
	ld   h, h                                        ; $5c5e: $64
	ld   l, a                                        ; $5c5f: $6f
	ld   l, c                                        ; $5c60: $69
	inc  c                                           ; $5c61: $0c
	nop                                              ; $5c62: $00
	ld   e, e                                        ; $5c63: $5b
	db   $d3                                         ; $5c64: $d3
	rla                                              ; $5c65: $17
	ld   d, a                                        ; $5c66: $57
	add  c                                           ; $5c67: $81
	rla                                              ; $5c68: $17
	inc  b                                           ; $5c69: $04
	ret  c                                           ; $5c6a: $d8

	jr   nz, @+$3a                                   ; $5c6b: $20 $38

	ldh  a, [$f4]                                    ; $5c6d: $f0 $f4
	add  b                                           ; $5c6f: $80
	cp   b                                           ; $5c70: $b8
	dec  b                                           ; $5c71: $05
	jr   c, jr_09e_5c7c                              ; $5c72: $38 $08

	or   b                                           ; $5c74: $b0
	or   d                                           ; $5c75: $b2
	or   h                                           ; $5c76: $b4
	sub  h                                           ; $5c77: $94
	add  c                                           ; $5c78: $81
	ld   l, h                                        ; $5c79: $6c
	ld   a, [bc]                                     ; $5c7a: $0a
	sbc  l                                           ; $5c7b: $9d

jr_09e_5c7c:
	nop                                              ; $5c7c: $00
	ld   bc, $1407                                   ; $5c7d: $01 $07 $14

jr_09e_5c80:
	rrca                                             ; $5c80: $0f
	add  hl, bc                                      ; $5c81: $09
	inc  c                                           ; $5c82: $0c
	jr   nz, jr_09e_5ca0                             ; $5c83: $20 $1b

	inc  de                                          ; $5c85: $13
	add  e                                           ; $5c86: $83
	rla                                              ; $5c87: $17
	inc  b                                           ; $5c88: $04
	ret  c                                           ; $5c89: $d8

	jr   nz, jr_09e_5cc4                             ; $5c8a: $20 $38

	ldh  a, [$f4]                                    ; $5c8c: $f0 $f4
	add  b                                           ; $5c8e: $80
	cp   b                                           ; $5c8f: $b8
	dec  b                                           ; $5c90: $05
	jr   c, jr_09e_5c9b                              ; $5c91: $38 $08

	or   b                                           ; $5c93: $b0
	or   d                                           ; $5c94: $b2
	or   h                                           ; $5c95: $b4
	sub  h                                           ; $5c96: $94
	add  c                                           ; $5c97: $81
	ld   l, h                                        ; $5c98: $6c
	nop                                              ; $5c99: $00
	sub  d                                           ; $5c9a: $92

jr_09e_5c9b:
	rst  $38                                         ; $5c9b: $ff
	nop                                              ; $5c9c: $00
	adc  h                                           ; $5c9d: $8c
	nop                                              ; $5c9e: $00
	nop                                              ; $5c9f: $00

jr_09e_5ca0:
	ccf                                              ; $5ca0: $3f
	add  b                                           ; $5ca1: $80
	rla                                              ; $5ca2: $17
	ld   bc, $2703                                   ; $5ca3: $01 $03 $27
	add  b                                           ; $5ca6: $80
	inc  c                                           ; $5ca7: $0c
	dec  b                                           ; $5ca8: $05
	dec  c                                           ; $5ca9: $0d
	add  hl, de                                      ; $5caa: $19
	dec  b                                           ; $5cab: $05
	dec  d                                           ; $5cac: $15
	ld   [bc], a                                     ; $5cad: $02
	ld   [hl+], a                                    ; $5cae: $22
	add  b                                           ; $5caf: $80
	dec  e                                           ; $5cb0: $1d
	dec  c                                           ; $5cb1: $0d
	nop                                              ; $5cb2: $00
	pop  bc                                          ; $5cb3: $c1
	sbc  h                                           ; $5cb4: $9c
	sbc  [hl]                                        ; $5cb5: $9e
	ld   hl, sp-$04                                  ; $5cb6: $f8 $fc
	nop                                              ; $5cb8: $00
	sbc  b                                           ; $5cb9: $98
	ret  nz                                          ; $5cba: $c0

	ret  nc                                          ; $5cbb: $d0

	ldh  [rAUD4LEN], a                               ; $5cbc: $e0 $20
	ldh  [hScriptOpcodeParams], a                                    ; $5cbe: $e0 $a0
	add  b                                           ; $5cc0: $80
	ldh  [rSB], a                                    ; $5cc1: $e0 $01
	nop                                              ; $5cc3: $00

jr_09e_5cc4:
	ldh  a, [$8d]                                    ; $5cc4: $f0 $8d
	nop                                              ; $5cc6: $00
	nop                                              ; $5cc7: $00
	ccf                                              ; $5cc8: $3f
	add  b                                           ; $5cc9: $80
	rla                                              ; $5cca: $17
	ld   bc, $2703                                   ; $5ccb: $01 $03 $27
	add  b                                           ; $5cce: $80
	inc  c                                           ; $5ccf: $0c
	dec  b                                           ; $5cd0: $05
	dec  c                                           ; $5cd1: $0d
	add  hl, de                                      ; $5cd2: $19
	dec  b                                           ; $5cd3: $05
	dec  d                                           ; $5cd4: $15
	ld   [bc], a                                     ; $5cd5: $02
	ld   [hl+], a                                    ; $5cd6: $22
	add  b                                           ; $5cd7: $80
	dec  e                                           ; $5cd8: $1d
	dec  c                                           ; $5cd9: $0d
	nop                                              ; $5cda: $00
	pop  bc                                          ; $5cdb: $c1
	sbc  h                                           ; $5cdc: $9c
	sbc  [hl]                                        ; $5cdd: $9e
	ld   hl, sp-$04                                  ; $5cde: $f8 $fc
	nop                                              ; $5ce0: $00
	sbc  b                                           ; $5ce1: $98
	ret  nz                                          ; $5ce2: $c0

	ret  nc                                          ; $5ce3: $d0

	ldh  [rAUD4LEN], a                               ; $5ce4: $e0 $20
	ldh  [hScriptOpcodeParams], a                                    ; $5ce6: $e0 $a0
	add  b                                           ; $5ce8: $80
	ldh  [rSB], a                                    ; $5ce9: $e0 $01
	nop                                              ; $5ceb: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cec: $cf
	add  b                                           ; $5ced: $80
	rla                                              ; $5cee: $17
	ld   bc, $2703                                   ; $5cef: $01 $03 $27
	add  b                                           ; $5cf2: $80
	inc  c                                           ; $5cf3: $0c
	dec  b                                           ; $5cf4: $05
	dec  c                                           ; $5cf5: $0d
	add  hl, de                                      ; $5cf6: $19
	dec  b                                           ; $5cf7: $05
	dec  d                                           ; $5cf8: $15
	ld   [bc], a                                     ; $5cf9: $02
	ld   [hl+], a                                    ; $5cfa: $22
	add  b                                           ; $5cfb: $80
	dec  e                                           ; $5cfc: $1d
	dec  c                                           ; $5cfd: $0d
	nop                                              ; $5cfe: $00
	pop  bc                                          ; $5cff: $c1
	sbc  h                                           ; $5d00: $9c
	sbc  [hl]                                        ; $5d01: $9e
	ld   hl, sp-$04                                  ; $5d02: $f8 $fc
	nop                                              ; $5d04: $00
	sbc  b                                           ; $5d05: $98
	ret  nz                                          ; $5d06: $c0

	ret  nc                                          ; $5d07: $d0

	ldh  [rAUD4LEN], a                               ; $5d08: $e0 $20
	ldh  [hScriptOpcodeParams], a                                    ; $5d0a: $e0 $a0
	add  b                                           ; $5d0c: $80
	ldh  [rSB], a                                    ; $5d0d: $e0 $01
	nop                                              ; $5d0f: $00
	ldh  a, [$ad]                                    ; $5d10: $f0 $ad
	nop                                              ; $5d12: $00
	db   $f4                                         ; $5d13: $f4
	nop                                              ; $5d14: $00
	nop                                              ; $5d15: $00
	dec  bc                                          ; $5d16: $0b
	add  b                                           ; $5d17: $80
	ld   [bc], a                                     ; $5d18: $02
	inc  b                                           ; $5d19: $04
	nop                                              ; $5d1a: $00
	inc  e                                           ; $5d1b: $1c
	nop                                              ; $5d1c: $00
	ld   bc, $8000                                   ; $5d1d: $01 $00 $80
	ld   [$2900], sp                                 ; $5d20: $08 $00 $29
	adc  b                                           ; $5d23: $88
	inc  de                                          ; $5d24: $13
	dec  c                                           ; $5d25: $0d
	ld   [de], a                                     ; $5d26: $12
	ld   a, [de]                                     ; $5d27: $1a
	ld   [bc], a                                     ; $5d28: $02
	ld   [hl+], a                                    ; $5d29: $22
	ld   [bc], a                                     ; $5d2a: $02
	ld   b, $01                                      ; $5d2b: $06 $01
	ld   de, $0301                                   ; $5d2d: $11 $01 $03
	nop                                              ; $5d30: $00
	ldh  [$80], a                                    ; $5d31: $e0 $80
	add  d                                           ; $5d33: $82
	add  d                                           ; $5d34: $82
	add  b                                           ; $5d35: $80
	nop                                              ; $5d36: $00
	ret  nz                                          ; $5d37: $c0

	add  d                                           ; $5d38: $82
	ld   b, b                                        ; $5d39: $40
	add  b                                           ; $5d3a: $80
	nop                                              ; $5d3b: $00
	nop                                              ; $5d3c: $00
	sub  b                                           ; $5d3d: $90
	add  c                                           ; $5d3e: $81
	nop                                              ; $5d3f: $00
	ld   bc, $0001                                   ; $5d40: $01 $01 $00
	add  b                                           ; $5d43: $80
	ld   b, b                                        ; $5d44: $40
	nop                                              ; $5d45: $00
	ld   c, c                                        ; $5d46: $49
	add  c                                           ; $5d47: $81
	add  b                                           ; $5d48: $80
	nop                                              ; $5d49: $00
	adc  [hl]                                        ; $5d4a: $8e
	add  b                                           ; $5d4b: $80
	add  b                                           ; $5d4c: $80
	inc  bc                                          ; $5d4d: $03
	ld   b, b                                        ; $5d4e: $40
	ld   c, a                                        ; $5d4f: $4f
	ld   b, b                                        ; $5d50: $40
	ld   a, [hl-]                                    ; $5d51: $3a
	add  c                                           ; $5d52: $81
	nop                                              ; $5d53: $00
	nop                                              ; $5d54: $00
	ret  nz                                          ; $5d55: $c0

	add  c                                           ; $5d56: $81
	nop                                              ; $5d57: $00
	inc  h                                           ; $5d58: $24
	ldh  [rP1], a                                    ; $5d59: $e0 $00
	stop                                             ; $5d5b: $10 $00
	inc  c                                           ; $5d5d: $0c
	nop                                              ; $5d5e: $00
	and  $00                                         ; $5d5f: $e6 $00
	inc  hl                                          ; $5d61: $23
	nop                                              ; $5d62: $00
	ld   b, c                                        ; $5d63: $41
	nop                                              ; $5d64: $00
	add  b                                           ; $5d65: $80
	nop                                              ; $5d66: $00
	ldh  [rP1], a                                    ; $5d67: $e0 $00
	and  b                                           ; $5d69: $a0
	nop                                              ; $5d6a: $00
	ld   h, h                                        ; $5d6b: $64
	ld   h, b                                        ; $5d6c: $60
	ld   [hl-], a                                    ; $5d6d: $32
	jr   nc, jr_09e_5d89                             ; $5d6e: $30 $19

	jr   jr_09e_5df1                                 ; $5d70: $18 $7f

	nop                                              ; $5d72: $00
	ld   b, b                                        ; $5d73: $40
	add  b                                           ; $5d74: $80
	and  b                                           ; $5d75: $a0
	ld   b, b                                        ; $5d76: $40
	ret  nc                                          ; $5d77: $d0

	and  b                                           ; $5d78: $a0
	xor  b                                           ; $5d79: $a8
	or   b                                           ; $5d7a: $b0
	push af                                          ; $5d7b: $f5
	ret  c                                           ; $5d7c: $d8

	ld   a, [$ec80]                                  ; $5d7d: $fa $80 $ec

jr_09e_5d80:
	ld   bc, $fded                                   ; $5d80: $01 $ed $fd
	add  c                                           ; $5d83: $81
	di                                               ; $5d84: $f3
	add  d                                           ; $5d85: $82
	ei                                               ; $5d86: $fb
	inc  bc                                          ; $5d87: $03
	ld   a, a                                        ; $5d88: $7f

jr_09e_5d89:
	ld   a, h                                        ; $5d89: $7c
	cp   h                                           ; $5d8a: $bc
	inc  a                                           ; $5d8b: $3c
	add  b                                           ; $5d8c: $80
	add  hl, sp                                      ; $5d8d: $39
	ld   bc, $1b5b                                   ; $5d8e: $01 $5b $1b
	add  b                                           ; $5d91: $80
	inc  c                                           ; $5d92: $0c
	ld   bc, $1119                                   ; $5d93: $01 $19 $11
	add  b                                           ; $5d96: $80
	inc  de                                          ; $5d97: $13
	dec  b                                           ; $5d98: $05
	ld   e, $12                                      ; $5d99: $1e $12
	dec  c                                           ; $5d9b: $0d
	ld   [$2142], sp                                 ; $5d9c: $08 $42 $21

jr_09e_5d9f:
	add  b                                           ; $5d9f: $80
	inc  h                                           ; $5da0: $24
	inc  bc                                          ; $5da1: $03
	or   c                                           ; $5da2: $b1
	ld   d, d                                        ; $5da3: $52
	ld   e, d                                        ; $5da4: $5a
	db   $db                                         ; $5da5: $db
	add  b                                           ; $5da6: $80
	reti                                             ; $5da7: $d9


	nop                                              ; $5da8: $00
	db   $fc                                         ; $5da9: $fc
	add  e                                           ; $5daa: $83
	cp   h                                           ; $5dab: $bc
	nop                                              ; $5dac: $00
	ld   sp, hl                                      ; $5dad: $f9
	add  c                                           ; $5dae: $81
	ld   a, b                                        ; $5daf: $78

jr_09e_5db0:
	ld   de, $f8fa                                   ; $5db0: $11 $fa $f8
	ld   e, [hl]                                     ; $5db3: $5e
	nop                                              ; $5db4: $00
	ret  nz                                          ; $5db5: $c0

	nop                                              ; $5db6: $00
	inc  b                                           ; $5db7: $04
	nop                                              ; $5db8: $00
	sub  d                                           ; $5db9: $92
	nop                                              ; $5dba: $00
	ld   c, c                                        ; $5dbb: $49
	nop                                              ; $5dbc: $00
	inc  hl                                          ; $5dbd: $23
	ld   bc, $0647                                   ; $5dbe: $01 $47 $06
	and  [hl]                                        ; $5dc1: $a6
	add  a                                           ; $5dc2: $87
	add  b                                           ; $5dc3: $80
	jr   nc, jr_09e_5dc9                             ; $5dc4: $30 $03

	or   a                                           ; $5dc6: $b7
	or   [hl]                                        ; $5dc7: $b6
	db   $10                                         ; $5dc8: $10

jr_09e_5dc9:
	ld   de, $d780                                   ; $5dc9: $11 $80 $d7
	add  b                                           ; $5dcc: $80
	jp   $9807                                       ; $5dcd: $c3 $07 $98


	add  b                                           ; $5dd0: $80
	ld   h, $00                                      ; $5dd1: $26 $00
	ld   h, e                                        ; $5dd3: $63
	nop                                              ; $5dd4: $00
	sub  b                                           ; $5dd5: $90
	dec  c                                           ; $5dd6: $0d
	add  b                                           ; $5dd7: $80
	add  hl, bc                                      ; $5dd8: $09
	nop                                              ; $5dd9: $00
	ld   e, c                                        ; $5dda: $59
	add  c                                           ; $5ddb: $81
	add  hl, de                                      ; $5ddc: $19
	add  h                                           ; $5ddd: $84
	ld   sp, $1080                                   ; $5dde: $31 $80 $10
	inc  b                                           ; $5de1: $04
	inc  b                                           ; $5de2: $04
	nop                                              ; $5de3: $00
	ret  nz                                          ; $5de4: $c0

	nop                                              ; $5de5: $00
	ld   [hl+], a                                    ; $5de6: $22
	add  c                                           ; $5de7: $81
	nop                                              ; $5de8: $00
	inc  b                                           ; $5de9: $04
	inc  d                                           ; $5dea: $14
	nop                                              ; $5deb: $00
	adc  b                                           ; $5dec: $88
	nop                                              ; $5ded: $00
	inc  b                                           ; $5dee: $04
	add  c                                           ; $5def: $81
	nop                                              ; $5df0: $00

jr_09e_5df1:
	ld   [$d825], sp                                 ; $5df1: $08 $25 $d8
	add  sp, -$40                                    ; $5df4: $e8 $c0
	add  $c8                                         ; $5df6: $c6 $c8
	ret  nz                                          ; $5df8: $c0

	ld   b, b                                        ; $5df9: $40
	ld   d, b                                        ; $5dfa: $50
	add  b                                           ; $5dfb: $80
	nop                                              ; $5dfc: $00
	add  b                                           ; $5dfd: $80
	jr   nz, jr_09e_5d80                             ; $5dfe: $20 $80

	and  h                                           ; $5e00: $a4
	ld   [bc], a                                     ; $5e01: $02
	db   $e4                                         ; $5e02: $e4
	push hl                                          ; $5e03: $e5
	db   $f4                                         ; $5e04: $f4
	add  b                                           ; $5e05: $80
	ld   [hl], h                                     ; $5e06: $74
	ld   bc, $7475                                   ; $5e07: $01 $75 $74
	add  b                                           ; $5e0a: $80
	jr   nz, jr_09e_5e1a                             ; $5e0b: $20 $0d

	ld   [hl+], a                                    ; $5e0d: $22
	jr   nz, jr_09e_5db0                             ; $5e0e: $20 $a0

	jr   nz, jr_09e_5e1a                             ; $5e10: $20 $08

	nop                                              ; $5e12: $00
	ld   de, $2000                                   ; $5e13: $11 $00 $20
	jr   c, jr_09e_5e3b                              ; $5e16: $38 $23

	jr   nz, jr_09e_5d9f                             ; $5e18: $20 $85

jr_09e_5e1a:
	inc  b                                           ; $5e1a: $04
	add  b                                           ; $5e1b: $80
	inc  a                                           ; $5e1c: $3c
	add  b                                           ; $5e1d: $80
	ld   [hl], b                                     ; $5e1e: $70
	ld   bc, $0080                                   ; $5e1f: $01 $80 $00
	add  b                                           ; $5e22: $80
	inc  bc                                          ; $5e23: $03
	inc  b                                           ; $5e24: $04
	inc  a                                           ; $5e25: $3c
	nop                                              ; $5e26: $00
	inc  hl                                          ; $5e27: $23
	nop                                              ; $5e28: $00
	ld   b, b                                        ; $5e29: $40
	add  b                                           ; $5e2a: $80
	ret  nz                                          ; $5e2b: $c0

	ld   bc, $2040                                   ; $5e2c: $01 $40 $20
	add  b                                           ; $5e2f: $80
	nop                                              ; $5e30: $00
	add  c                                           ; $5e31: $81
	add  b                                           ; $5e32: $80
	dec  b                                           ; $5e33: $05
	ld   hl, $7200                                   ; $5e34: $21 $00 $72
	nop                                              ; $5e37: $00
	ld   l, [hl]                                     ; $5e38: $6e
	ld   [bc], a                                     ; $5e39: $02
	add  b                                           ; $5e3a: $80

jr_09e_5e3b:
	ld   b, $00                                      ; $5e3b: $06 $00
	dec  c                                           ; $5e3d: $0d
	add  c                                           ; $5e3e: $81
	inc  c                                           ; $5e3f: $0c
	add  b                                           ; $5e40: $80
	inc  l                                           ; $5e41: $2c
	ld   bc, $6968                                   ; $5e42: $01 $68 $69
	add  b                                           ; $5e45: $80
	ret                                              ; $5e46: $c9


	add  b                                           ; $5e47: $80
	add  hl, hl                                      ; $5e48: $29
	add  b                                           ; $5e49: $80
	ld   l, c                                        ; $5e4a: $69
	ld   bc, $29a9                                   ; $5e4b: $01 $a9 $29
	add  b                                           ; $5e4e: $80
	add  hl, bc                                      ; $5e4f: $09
	ld   bc, $0d4d                                   ; $5e50: $01 $4d $0d
	add  b                                           ; $5e53: $80
	inc  b                                           ; $5e54: $04
	add  b                                           ; $5e55: $80
	ld   b, $80                                      ; $5e56: $06 $80
	inc  bc                                          ; $5e58: $03
	add  b                                           ; $5e59: $80
	add  hl, bc                                      ; $5e5a: $09
	inc  bc                                          ; $5e5b: $03
	xor  [hl]                                        ; $5e5c: $ae
	ld   c, $3e                                      ; $5e5d: $0e $3e
	ld   e, $80                                      ; $5e5f: $1e $80
	rra                                              ; $5e61: $1f
	ld   bc, $3e7e                                   ; $5e62: $01 $7e $3e
	add  b                                           ; $5e65: $80
	ld   a, h                                        ; $5e66: $7c
	add  c                                           ; $5e67: $81
	db   $fd                                         ; $5e68: $fd
	nop                                              ; $5e69: $00
	db   $fc                                         ; $5e6a: $fc
	add  c                                           ; $5e6b: $81
	ld   [$c803], a                                  ; $5e6c: $ea $03 $c8
	ld   hl, sp-$68                                  ; $5e6f: $f8 $98
	sub  b                                           ; $5e71: $90
	add  b                                           ; $5e72: $80
	sub  c                                           ; $5e73: $91
	add  b                                           ; $5e74: $80
	ld   de, $9381                                   ; $5e75: $11 $81 $93
	inc  b                                           ; $5e78: $04
	sub  c                                           ; $5e79: $91
	pop  de                                          ; $5e7a: $d1
	push de                                          ; $5e7b: $d5
	pop  de                                          ; $5e7c: $d1
	ei                                               ; $5e7d: $fb
	add  a                                           ; $5e7e: $87
	nop                                              ; $5e7f: $00
	rlca                                             ; $5e80: $07
	inc  c                                           ; $5e81: $0c
	nop                                              ; $5e82: $00
	ld   e, $0c                                      ; $5e83: $1e $0c
	ccf                                              ; $5e85: $3f
	ld   e, $ff                                      ; $5e86: $1e $ff
	ccf                                              ; $5e88: $3f
	add  b                                           ; $5e89: $80
	ld   a, [hl]                                     ; $5e8a: $7e
	add  b                                           ; $5e8b: $80
	cp   $80                                         ; $5e8c: $fe $80
	or   $83                                         ; $5e8e: $f6 $83
	xor  $80                                         ; $5e90: $ee $80
	call z, $c410                                    ; $5e92: $cc $10 $c4
	call $1c00                                       ; $5e95: $cd $00 $1c
	nop                                              ; $5e98: $00
	ld   b, $00                                      ; $5e99: $06 $00
	inc  bc                                          ; $5e9b: $03
	nop                                              ; $5e9c: $00
	dec  c                                           ; $5e9d: $0d
	nop                                              ; $5e9e: $00
	ccf                                              ; $5e9f: $3f
	inc  c                                           ; $5ea0: $0c
	ld   e, a                                        ; $5ea1: $5f
	rra                                              ; $5ea2: $1f
	cp   a                                           ; $5ea3: $bf
	ccf                                              ; $5ea4: $3f
	add  b                                           ; $5ea5: $80
	ld   a, [hl]                                     ; $5ea6: $7e
	add  b                                           ; $5ea7: $80
	ld   c, a                                        ; $5ea8: $4f
	add  b                                           ; $5ea9: $80
	sub  a                                           ; $5eaa: $97
	add  b                                           ; $5eab: $80
	and  e                                           ; $5eac: $a3
	inc  b                                           ; $5ead: $04
	xor  c                                           ; $5eae: $a9
	and  c                                           ; $5eaf: $a1
	or   l                                           ; $5eb0: $b5
	nop                                              ; $5eb1: $00
	ld   b, e                                        ; $5eb2: $43
	add  c                                           ; $5eb3: $81
	nop                                              ; $5eb4: $00
	nop                                              ; $5eb5: $00
	ld   bc, $0085                                   ; $5eb6: $01 $85 $00
	ld   e, $e0                                      ; $5eb9: $1e $e0
	nop                                              ; $5ebb: $00
	ld   hl, sp-$20                                  ; $5ebc: $f8 $e0
	ld   a, h                                        ; $5ebe: $7c

jr_09e_5ebf:
	ld   a, b                                        ; $5ebf: $78
	cp   $fc                                         ; $5ec0: $fe $fc
	rst  $38                                         ; $5ec2: $ff
	cp   $7f                                         ; $5ec3: $fe $7f
	ld   a, [hl]                                     ; $5ec5: $7e
	or   [hl]                                        ; $5ec6: $b6
	or   a                                           ; $5ec7: $b7
	db   $db                                         ; $5ec8: $db
	ret  nc                                          ; $5ec9: $d0

	sub  $98                                         ; $5eca: $d6 $98
	xor  b                                           ; $5ecc: $a8
	ret  z                                           ; $5ecd: $c8

	rrc  h                                           ; $5ece: $cb $0c
	inc  d                                           ; $5ed0: $14
	ld   h, h                                        ; $5ed1: $64
	ld   l, l                                        ; $5ed2: $6d
	nop                                              ; $5ed3: $00
	add  b                                           ; $5ed4: $80
	nop                                              ; $5ed5: $00
	ret  nz                                          ; $5ed6: $c0

	nop                                              ; $5ed7: $00
	ld   h, b                                        ; $5ed8: $60
	add  b                                           ; $5ed9: $80
	nop                                              ; $5eda: $00
	ld   bc, $b080                                   ; $5edb: $01 $80 $b0
	add  l                                           ; $5ede: $85
	ldh  [$82], a                                    ; $5edf: $e0 $82
	ld   h, b                                        ; $5ee1: $60
	nop                                              ; $5ee2: $00
	ld   d, b                                        ; $5ee3: $50
	add  c                                           ; $5ee4: $81
	ld   b, b                                        ; $5ee5: $40
	ld   b, $20                                      ; $5ee6: $06 $20
	nop                                              ; $5ee8: $00
	ld   b, b                                        ; $5ee9: $40
	nop                                              ; $5eea: $00
	add  b                                           ; $5eeb: $80
	nop                                              ; $5eec: $00
	adc  c                                           ; $5eed: $89
	add  b                                           ; $5eee: $80
	ld   h, [hl]                                     ; $5eef: $66
	add  c                                           ; $5ef0: $81
	halt                                             ; $5ef1: $76
	add  b                                           ; $5ef2: $80
	ld   l, [hl]                                     ; $5ef3: $6e
	add  b                                           ; $5ef4: $80
	ld   l, h                                        ; $5ef5: $6c
	add  b                                           ; $5ef6: $80
	ld   c, l                                        ; $5ef7: $4d
	add  b                                           ; $5ef8: $80
	dec  e                                           ; $5ef9: $1d
	add  hl, bc                                      ; $5efa: $09
	sbc  d                                           ; $5efb: $9a
	jr   jr_09e_5ebf                                 ; $5efc: $18 $c1

	nop                                              ; $5efe: $00
	ld   [de], a                                     ; $5eff: $12
	db   $10                                         ; $5f00: $10
	rla                                              ; $5f01: $17
	ld   d, $9b                                      ; $5f02: $16 $9b
	dec  de                                          ; $5f04: $1b
	add  b                                           ; $5f05: $80
	ld   a, [de]                                     ; $5f06: $1a
	ld   b, $19                                      ; $5f07: $06 $19
	jr   jr_09e_5f1d                                 ; $5f09: $18 $12

	db   $10                                         ; $5f0b: $10
	inc  b                                           ; $5f0c: $04
	nop                                              ; $5f0d: $00
	add  hl, hl                                      ; $5f0e: $29
	add  b                                           ; $5f0f: $80
	and  b                                           ; $5f10: $a0
	ld   bc, $0424                                   ; $5f11: $01 $24 $04
	add  b                                           ; $5f14: $80
	inc  c                                           ; $5f15: $0c
	add  c                                           ; $5f16: $81
	adc  [hl]                                        ; $5f17: $8e
	nop                                              ; $5f18: $00
	sub  [hl]                                        ; $5f19: $96
	add  c                                           ; $5f1a: $81
	add  $12                                         ; $5f1b: $c6 $12

jr_09e_5f1d:
	set  0, e                                        ; $5f1d: $cb $c3
	reti                                             ; $5f1f: $d9


	pop  bc                                          ; $5f20: $c1
	ld   l, h                                        ; $5f21: $6c
	ld   h, b                                        ; $5f22: $60
	adc  a                                           ; $5f23: $8f
	nop                                              ; $5f24: $00
	inc  d                                           ; $5f25: $14
	nop                                              ; $5f26: $00
	sub  b                                           ; $5f27: $90
	nop                                              ; $5f28: $00
	ld   d, b                                        ; $5f29: $50
	nop                                              ; $5f2a: $00
	sub  b                                           ; $5f2b: $90
	nop                                              ; $5f2c: $00
	ld   [$0500], sp                                 ; $5f2d: $08 $00 $05
	add  c                                           ; $5f30: $81
	ret  z                                           ; $5f31: $c8

	inc  c                                           ; $5f32: $0c
	sub  $c4                                         ; $5f33: $d6 $c4
	ret                                              ; $5f35: $c9


	ret  nz                                          ; $5f36: $c0

	db   $f4                                         ; $5f37: $f4
	ldh  [$e2], a                                    ; $5f38: $e0 $e2
	ldh  [$78], a                                    ; $5f3a: $e0 $78
	ld   [hl], b                                     ; $5f3c: $70
	add  h                                           ; $5f3d: $84
	add  b                                           ; $5f3e: $80
	inc  bc                                          ; $5f3f: $03
	add  b                                           ; $5f40: $80
	rrca                                             ; $5f41: $0f
	add  b                                           ; $5f42: $80
	ccf                                              ; $5f43: $3f
	ld   bc, $ffcf                                   ; $5f44: $01 $cf $ff
	add  c                                           ; $5f47: $81
	rlca                                             ; $5f48: $07
	ld   bc, $c7f7                                   ; $5f49: $01 $f7 $c7
	add  d                                           ; $5f4c: $82
	rlca                                             ; $5f4d: $07
	ld   d, b                                        ; $5f4e: $50
	or   a                                           ; $5f4f: $b7
	rlca                                             ; $5f50: $07
	rla                                              ; $5f51: $17
	rlca                                             ; $5f52: $07
	rla                                              ; $5f53: $17
	inc  bc                                          ; $5f54: $03
	ld   l, e                                        ; $5f55: $6b
	nop                                              ; $5f56: $00
	ld   b, a                                        ; $5f57: $47
	nop                                              ; $5f58: $00
	ret  c                                           ; $5f59: $d8

	nop                                              ; $5f5a: $00
	cp   a                                           ; $5f5b: $bf
	nop                                              ; $5f5c: $00
	add  a                                           ; $5f5d: $87
	nop                                              ; $5f5e: $00
	pop  bc                                          ; $5f5f: $c1
	nop                                              ; $5f60: $00
	ld   [hl], c                                     ; $5f61: $71
	nop                                              ; $5f62: $00
	inc  a                                           ; $5f63: $3c
	nop                                              ; $5f64: $00
	rrca                                             ; $5f65: $0f
	nop                                              ; $5f66: $00
	add  e                                           ; $5f67: $83
	nop                                              ; $5f68: $00
	jr   jr_09e_5f6b                                 ; $5f69: $18 $00

jr_09e_5f6b:
	rst  JumpTable                                         ; $5f6b: $df
	nop                                              ; $5f6c: $00
	ld   b, $00                                      ; $5f6d: $06 $00
	ld   a, l                                        ; $5f6f: $7d
	inc  h                                           ; $5f70: $24
	rlca                                             ; $5f71: $07
	add  hl, de                                      ; $5f72: $19
	add  hl, bc                                      ; $5f73: $09
	ld   c, $e6                                      ; $5f74: $0e $e6
	rlca                                             ; $5f76: $07
	ld   sp, hl                                      ; $5f77: $f9
	ld   bc, $001e                                   ; $5f78: $01 $1e $00
	add  a                                           ; $5f7b: $87
	nop                                              ; $5f7c: $00
	pop  af                                          ; $5f7d: $f1
	nop                                              ; $5f7e: $00
	ld   l, l                                        ; $5f7f: $6d

Call_09e_5f80:
	nop                                              ; $5f80: $00
	db   $fc                                         ; $5f81: $fc
	nop                                              ; $5f82: $00
	ldh  [c], a                                      ; $5f83: $e2
	nop                                              ; $5f84: $00
	inc  e                                           ; $5f85: $1c
	nop                                              ; $5f86: $00
	ld   a, [$ec00]                                  ; $5f87: $fa $00 $ec
	nop                                              ; $5f8a: $00
	di                                               ; $5f8b: $f3
	nop                                              ; $5f8c: $00
	ld   [$fa00], sp                                 ; $5f8d: $08 $00 $fa
	nop                                              ; $5f90: $00
	jr   c, @+$22                                    ; $5f91: $38 $20

	db   $ec                                         ; $5f93: $ec
	nop                                              ; $5f94: $00
	ld   c, $80                                      ; $5f95: $0e $80
	and  b                                           ; $5f97: $a0
	add  b                                           ; $5f98: $80
	ld   sp, $0600                                   ; $5f99: $31 $00 $06
	nop                                              ; $5f9c: $00
	sbc  [hl]                                        ; $5f9d: $9e
	nop                                              ; $5f9e: $00
	ld   h, l                                        ; $5f9f: $65
	add  b                                           ; $5fa0: $80
	nop                                              ; $5fa1: $00
	dec  c                                           ; $5fa2: $0d
	sub  b                                           ; $5fa3: $90
	ld   h, l                                        ; $5fa4: $65
	ld   h, b                                        ; $5fa5: $60
	sub  e                                           ; $5fa6: $93
	nop                                              ; $5fa7: $00
	ld   h, h                                        ; $5fa8: $64
	nop                                              ; $5fa9: $00
	add  b                                           ; $5faa: $80
	jr   nz, jr_09e_5fd3                             ; $5fab: $20 $26

	jr   nc, @+$35                                   ; $5fad: $30 $33

	jr   nc, jr_09e_6026                             ; $5faf: $30 $75

	add  c                                           ; $5fb1: $81
	jr   jr_09e_5fb8                                 ; $5fb2: $18 $04

	ld   [de], a                                     ; $5fb4: $12
	inc  d                                           ; $5fb5: $14
	inc  [hl]                                        ; $5fb6: $34
	inc  b                                           ; $5fb7: $04

jr_09e_5fb8:
	ld   bc, $0281                                   ; $5fb8: $01 $81 $02
	ld   bc, $0100                                   ; $5fbb: $01 $00 $01
	add  d                                           ; $5fbe: $82
	nop                                              ; $5fbf: $00
	add  b                                           ; $5fc0: $80
	ld   [$8e04], sp                                 ; $5fc1: $08 $04 $8e
	ld   c, $ef                                      ; $5fc4: $0e $ef
	rla                                              ; $5fc6: $17
	sub  a                                           ; $5fc7: $97
	add  b                                           ; $5fc8: $80
	ei                                               ; $5fc9: $fb
	add  b                                           ; $5fca: $80
	dec  sp                                          ; $5fcb: $3b
	add  b                                           ; $5fcc: $80
	dec  c                                           ; $5fcd: $0d
	inc  bc                                          ; $5fce: $03
	ld   bc, $007e                                   ; $5fcf: $01 $7e $00
	add  b                                           ; $5fd2: $80

jr_09e_5fd3:
	add  c                                           ; $5fd3: $81
	nop                                              ; $5fd4: $00
	ld   b, $01                                      ; $5fd5: $06 $01
	nop                                              ; $5fd7: $00
	inc  bc                                          ; $5fd8: $03
	nop                                              ; $5fd9: $00
	ld   bc, $8000                                   ; $5fda: $01 $00 $80
	add  c                                           ; $5fdd: $81
	nop                                              ; $5fde: $00
	ld   a, [bc]                                     ; $5fdf: $0a
	call z, $1102                                    ; $5fe0: $cc $02 $11
	inc  c                                           ; $5fe3: $0c
	inc  hl                                          ; $5fe4: $23
	db   $10                                         ; $5fe5: $10
	ld   l, h                                        ; $5fe6: $6c
	nop                                              ; $5fe7: $00
	sub  b                                           ; $5fe8: $90
	add  b                                           ; $5fe9: $80
	ldh  [$80], a                                    ; $5fea: $e0 $80
	ret  nz                                          ; $5fec: $c0

	add  b                                           ; $5fed: $80
	add  b                                           ; $5fee: $80
	ld   bc, $7f00                                   ; $5fef: $01 $00 $7f
	adc  e                                           ; $5ff2: $8b
	nop                                              ; $5ff3: $00
	nop                                              ; $5ff4: $00
	ret  nz                                          ; $5ff5: $c0

	add  c                                           ; $5ff6: $81
	add  b                                           ; $5ff7: $80
	add  b                                           ; $5ff8: $80
	nop                                              ; $5ff9: $00
	add  b                                           ; $5ffa: $80
	add  b                                           ; $5ffb: $80
	nop                                              ; $5ffc: $00
	ldh  [$81], a                                    ; $5ffd: $e0 $81
	ret  nz                                          ; $5fff: $c0

	nop                                              ; $6000: $00
	ldh  a, [$81]                                    ; $6001: $f0 $81
	ldh  [rSC], a                                    ; $6003: $e0 $02
	ld   hl, sp-$10                                  ; $6005: $f8 $f0
	ld   hl, sp-$80                                  ; $6007: $f8 $80
	ld   bc, $0382                                   ; $6009: $01 $82 $03
	add  b                                           ; $600c: $80
	rlca                                             ; $600d: $07
	add  b                                           ; $600e: $80
	rrca                                             ; $600f: $0f
	add  b                                           ; $6010: $80
	ld   c, $82                                      ; $6011: $0e $82
	ld   e, $82                                      ; $6013: $1e $82
	ld   a, $82                                      ; $6015: $3e $82
	ld   a, [hl]                                     ; $6017: $7e
	add  b                                           ; $6018: $80
	ld   a, $80                                      ; $6019: $3e $80
	ccf                                              ; $601b: $3f
	add  b                                           ; $601c: $80
	ld   a, a                                        ; $601d: $7f
	add  b                                           ; $601e: $80
	ld   a, [hl]                                     ; $601f: $7e
	add  [hl]                                        ; $6020: $86
	nop                                              ; $6021: $00
	add  b                                           ; $6022: $80
	ld   b, $80                                      ; $6023: $06 $80
	ld   l, l                                        ; $6025: $6d

jr_09e_6026:
	add  b                                           ; $6026: $80
	db   $db                                         ; $6027: $db
	add  b                                           ; $6028: $80
	or   [hl]                                        ; $6029: $b6
	add  b                                           ; $602a: $80
	halt                                             ; $602b: $76
	add  b                                           ; $602c: $80
	db   $ec                                         ; $602d: $ec
	add  e                                           ; $602e: $83
	add  sp, $00                                     ; $602f: $e8 $00
	jp   hl                                          ; $6031: $e9


	add  d                                           ; $6032: $82
	ret  nc                                          ; $6033: $d0

	add  h                                           ; $6034: $84
	ret  nz                                          ; $6035: $c0

	inc  bc                                          ; $6036: $03
	add  b                                           ; $6037: $80
	add  h                                           ; $6038: $84
	add  b                                           ; $6039: $80
	add  c                                           ; $603a: $81
	add  c                                           ; $603b: $81
	nop                                              ; $603c: $00
	add  b                                           ; $603d: $80
	ld   bc, $0902                                   ; $603e: $01 $02 $09
	ld   bc, $930c                                   ; $6041: $01 $0c $93
	nop                                              ; $6044: $00
	inc  b                                           ; $6045: $04
	dec  b                                           ; $6046: $05
	ld   h, h                                        ; $6047: $64
	ld   l, c                                        ; $6048: $69
	ret  z                                           ; $6049: $c8

	ret  c                                           ; $604a: $d8

	add  b                                           ; $604b: $80
	sbc  b                                           ; $604c: $98
	nop                                              ; $604d: $00
	jr   @-$7e                                       ; $604e: $18 $80

	jr   c, jr_09e_6055                              ; $6050: $38 $03

	add  hl, sp                                      ; $6052: $39
	jr   c, jr_09e_60cd                              ; $6053: $38 $78

jr_09e_6055:
	ld   a, c                                        ; $6055: $79
	add  b                                           ; $6056: $80
	ld   a, e                                        ; $6057: $7b
	ld   bc, $77f7                                   ; $6058: $01 $f7 $77
	add  b                                           ; $605b: $80
	ld   h, a                                        ; $605c: $67
	add  b                                           ; $605d: $80
	ld   l, a                                        ; $605e: $6f
	nop                                              ; $605f: $00
	ld   e, a                                        ; $6060: $5f
	add  c                                           ; $6061: $81
	rst  JumpTable                                         ; $6062: $df
	add  d                                           ; $6063: $82
	cp   a                                           ; $6064: $bf
	add  d                                           ; $6065: $82
	ld   a, a                                        ; $6066: $7f
	add  d                                           ; $6067: $82
	rst  $38                                         ; $6068: $ff
	add  d                                           ; $6069: $82
	cp   $8e                                         ; $606a: $fe $8e
	nop                                              ; $606c: $00
	ld   c, $e3                                      ; $606d: $0e $e3
	nop                                              ; $606f: $00
	dec  h                                           ; $6070: $25
	nop                                              ; $6071: $00
	ld   c, d                                        ; $6072: $4a
	nop                                              ; $6073: $00
	sub  h                                           ; $6074: $94
	ld   [$1028], sp                                 ; $6075: $08 $28 $10
	jr   jr_09e_60aa                                 ; $6078: $18 $30

	ld   [hl], b                                     ; $607a: $70
	ld   h, b                                        ; $607b: $60
	ldh  a, [$81]                                    ; $607c: $f0 $81
	ldh  [$8a], a                                    ; $607e: $e0 $8a
	ret  nz                                          ; $6080: $c0

	add  b                                           ; $6081: $80
	ldh  [$82], a                                    ; $6082: $e0 $82
	ret  nz                                          ; $6084: $c0

	add  c                                           ; $6085: $81
	add  b                                           ; $6086: $80
	ld   bc, $0888                                   ; $6087: $01 $88 $08
	add  d                                           ; $608a: $82
	inc  e                                           ; $608b: $1c
	add  d                                           ; $608c: $82
	ld   a, $ff                                      ; $608d: $3e $ff
	nop                                              ; $608f: $00
	rst  $38                                         ; $6090: $ff
	nop                                              ; $6091: $00
	rst  $38                                         ; $6092: $ff
	nop                                              ; $6093: $00
	rst  $38                                         ; $6094: $ff
	nop                                              ; $6095: $00
	rst  $38                                         ; $6096: $ff
	nop                                              ; $6097: $00
	rst  $38                                         ; $6098: $ff
	nop                                              ; $6099: $00
	rst  $38                                         ; $609a: $ff
	nop                                              ; $609b: $00
	rst  $38                                         ; $609c: $ff
	nop                                              ; $609d: $00
	and  l                                           ; $609e: $a5
	nop                                              ; $609f: $00
	rst  $30                                         ; $60a0: $f7
	nop                                              ; $60a1: $00
	adc  d                                           ; $60a2: $8a
	nop                                              ; $60a3: $00
	dec  bc                                          ; $60a4: $0b
	inc  bc                                          ; $60a5: $03
	nop                                              ; $60a6: $00
	rrca                                             ; $60a7: $0f
	inc  bc                                          ; $60a8: $03
	rra                                              ; $60a9: $1f

jr_09e_60aa:
	rrca                                             ; $60aa: $0f
	ccf                                              ; $60ab: $3f
	rra                                              ; $60ac: $1f
	ld   a, a                                        ; $60ad: $7f
	ccf                                              ; $60ae: $3f
	rst  $38                                         ; $60af: $ff
	ld   a, a                                        ; $60b0: $7f
	add  b                                           ; $60b1: $80
	db   $fc                                         ; $60b2: $fc
	ld   b, $f0                                      ; $60b3: $06 $f0
	di                                               ; $60b5: $f3
	db   $e3                                         ; $60b6: $e3
	rst  $28                                         ; $60b7: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60b8: $cf
	rst  JumpTable                                         ; $60b9: $df
	ldh  [$87], a                                    ; $60ba: $e0 $87
	nop                                              ; $60bc: $00
	dec  b                                           ; $60bd: $05
	ld   bc, $f700                                   ; $60be: $01 $00 $f7
	ld   bc, $c7cf                                   ; $60c1: $01 $cf $c7
	add  b                                           ; $60c4: $80
	xor  a                                           ; $60c5: $af
	add  b                                           ; $60c6: $80
	rst  JumpTable                                         ; $60c7: $df
	add  b                                           ; $60c8: $80
	cp   a                                           ; $60c9: $bf
	add  b                                           ; $60ca: $80
	rst  $38                                         ; $60cb: $ff
	add  b                                           ; $60cc: $80

jr_09e_60cd:
	nop                                              ; $60cd: $00
	ld   bc, $1fe0                                   ; $60ce: $01 $e0 $1f
	add  d                                           ; $60d1: $82
	ccf                                              ; $60d2: $3f
	adc  b                                           ; $60d3: $88
	nop                                              ; $60d4: $00
	dec  b                                           ; $60d5: $05
	ldh  a, [rP1]                                    ; $60d6: $f0 $00
	db   $fc                                         ; $60d8: $fc
	ldh  a, [rIE]                                    ; $60d9: $f0 $ff
	db   $fc                                         ; $60db: $fc
	add  [hl]                                        ; $60dc: $86
	rst  $38                                         ; $60dd: $ff
	add  b                                           ; $60de: $80
	dec  a                                           ; $60df: $3d
	ld   [bc], a                                     ; $60e0: $02
	ld   b, $c6                                      ; $60e1: $06 $c6
	ret  nz                                          ; $60e3: $c0

	add  b                                           ; $60e4: $80
	ld   hl, sp+$13                                  ; $60e5: $f8 $13
	cp   $c1                                         ; $60e7: $fe $c1
	nop                                              ; $60e9: $00
	ldh  a, [$c0]                                    ; $60ea: $f0 $c0
	ld   hl, sp-$10                                  ; $60ec: $f8 $f0
	db   $fc                                         ; $60ee: $fc
	ld   hl, sp-$02                                  ; $60ef: $f8 $fe
	db   $fc                                         ; $60f1: $fc
	rst  $30                                         ; $60f2: $f7
	cp   $f2                                         ; $60f3: $fe $f2
	cp   $f2                                         ; $60f5: $fe $f2
	cp   $f7                                         ; $60f7: $fe $f7
	db   $eb                                         ; $60f9: $eb
	ld   l, e                                        ; $60fa: $6b
	add  b                                           ; $60fb: $80
	ld   c, a                                        ; $60fc: $4f
	add  b                                           ; $60fd: $80
	ld   b, a                                        ; $60fe: $47
	add  b                                           ; $60ff: $80
	ld   d, a                                        ; $6100: $57
	add  c                                           ; $6101: $81
	ld   e, a                                        ; $6102: $5f
	add  c                                           ; $6103: $81
	sbc  a                                           ; $6104: $9f
	ld   bc, $7fbf                                   ; $6105: $01 $bf $7f
	add  e                                           ; $6108: $83
	nop                                              ; $6109: $00
	nop                                              ; $610a: $00
	ret  nz                                          ; $610b: $c0

	add  e                                           ; $610c: $83
	add  b                                           ; $610d: $80
	nop                                              ; $610e: $00
	ldh  [$83], a                                    ; $610f: $e0 $83
	ret  nz                                          ; $6111: $c0

	nop                                              ; $6112: $00
	ldh  a, [$81]                                    ; $6113: $f0 $81
	ldh  [$80], a                                    ; $6115: $e0 $80
	ret  nz                                          ; $6117: $c0

	nop                                              ; $6118: $00
	ret  c                                           ; $6119: $d8

	add  c                                           ; $611a: $81
	ret  nc                                          ; $611b: $d0

	add  b                                           ; $611c: $80
	ldh  [rP1], a                                    ; $611d: $e0 $00
	db   $ec                                         ; $611f: $ec
	add  c                                           ; $6120: $81
	add  sp, $05                                     ; $6121: $e8 $05
	ret  nc                                          ; $6123: $d0

	ldh  a, [$72]                                    ; $6124: $f0 $72
	ldh  a, [$d0]                                    ; $6126: $f0 $d0
	ldh  a, [$80]                                    ; $6128: $f0 $80
	ret  c                                           ; $612a: $d8

	ld   bc, $d0d1                                   ; $612b: $01 $d1 $d0
	add  b                                           ; $612e: $80
	ret  c                                           ; $612f: $d8

	ld   bc, $d858                                   ; $6130: $01 $58 $d8
	add  d                                           ; $6133: $82
	ld   l, b                                        ; $6134: $68
	add  b                                           ; $6135: $80
	ld   h, b                                        ; $6136: $60
	add  [hl]                                        ; $6137: $86
	and  b                                           ; $6138: $a0
	add  b                                           ; $6139: $80
	add  b                                           ; $613a: $80
	nop                                              ; $613b: $00
	ld   bc, $8083                                   ; $613c: $01 $83 $80
	nop                                              ; $613f: $00
	add  d                                           ; $6140: $82
	add  c                                           ; $6141: $81
	add  b                                           ; $6142: $80
	inc  b                                           ; $6143: $04
	add  h                                           ; $6144: $84
	nop                                              ; $6145: $00
	ld   [$1000], sp                                 ; $6146: $08 $00 $10
	add  c                                           ; $6149: $81
	nop                                              ; $614a: $00
	dec  b                                           ; $614b: $05
	sub  b                                           ; $614c: $90
	add  b                                           ; $614d: $80
	inc  l                                           ; $614e: $2c
	jr   nz, jr_09e_61d0                             ; $614f: $20 $7f

	ld   a, h                                        ; $6151: $7c
	add  b                                           ; $6152: $80
	rst  $38                                         ; $6153: $ff
	add  b                                           ; $6154: $80
	rst  $30                                         ; $6155: $f7
	add  b                                           ; $6156: $80
	rst  $28                                         ; $6157: $ef
	add  b                                           ; $6158: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6159: $cf
	nop                                              ; $615a: $00
	rst  $38                                         ; $615b: $ff
	add  l                                           ; $615c: $85
	nop                                              ; $615d: $00
	ld   a, [bc]                                     ; $615e: $0a
	ldh  [rP1], a                                    ; $615f: $e0 $00
	db   $fc                                         ; $6161: $fc
	ldh  [$fa], a                                    ; $6162: $e0 $fa
	ld   hl, sp-$0f                                  ; $6164: $f8 $f1
	or   $e7                                         ; $6166: $f6 $e7
	db   $ed                                         ; $6168: $ed
	rst  $28                                         ; $6169: $ef
	add  c                                           ; $616a: $81

jr_09e_616b:
	db   $eb                                         ; $616b: $eb
	inc  bc                                          ; $616c: $03
	set  3, e                                        ; $616d: $cb $db
	rst  JumpTable                                         ; $616f: $df
	rst  $10                                         ; $6170: $d7
	add  d                                           ; $6171: $82
	sub  $05                                         ; $6172: $d6 $05
	sub  h                                           ; $6174: $94
	or   h                                           ; $6175: $b4
	rrca                                             ; $6176: $0f
	nop                                              ; $6177: $00
	ldh  a, [$c0]                                    ; $6178: $f0 $c0
	add  b                                           ; $617a: $80
	ldh  [rSB], a                                    ; $617b: $e0 $01
	adc  b                                           ; $617d: $88
	add  b                                           ; $617e: $80
	add  [hl]                                        ; $617f: $86
	nop                                              ; $6180: $00
	ld   [bc], a                                     ; $6181: $02
	inc  b                                           ; $6182: $04
	jr   nc, jr_09e_61b7                             ; $6183: $30 $32

	add  b                                           ; $6185: $80
	ld   l, h                                        ; $6186: $6c
	ld   bc, $6968                                   ; $6187: $01 $68 $69
	add  b                                           ; $618a: $80

jr_09e_618b:
	ld   l, d                                        ; $618b: $6a
	add  b                                           ; $618c: $80
	inc  l                                           ; $618d: $2c
	add  b                                           ; $618e: $80
	ld   [hl], $03                                   ; $618f: $36 $03
	jr   jr_09e_616b                                 ; $6191: $18 $d8

	adc  $f1                                         ; $6193: $ce $f1
	add  l                                           ; $6195: $85
	nop                                              ; $6196: $00
	inc  c                                           ; $6197: $0c
	ld   bc, $0200                                   ; $6198: $01 $00 $02
	ld   bc, $0304                                   ; $619b: $01 $04 $03
	ld   [bc], a                                     ; $619e: $02
	inc  bc                                          ; $619f: $03
	add  hl, bc                                      ; $61a0: $09
	rlca                                             ; $61a1: $07
	ld   b, $07                                      ; $61a2: $06 $07
	inc  bc                                          ; $61a4: $03
	add  c                                           ; $61a5: $81
	rlca                                             ; $61a6: $07
	add  d                                           ; $61a7: $82
	ld   b, $80                                      ; $61a8: $06 $80
	dec  b                                           ; $61aa: $05
	add  b                                           ; $61ab: $80
	inc  bc                                          ; $61ac: $03
	rlca                                             ; $61ad: $07
	ld   b, $07                                      ; $61ae: $06 $07
	inc  e                                           ; $61b0: $1c
	rrca                                             ; $61b1: $0f
	add  hl, bc                                      ; $61b2: $09
	rrca                                             ; $61b3: $0f
	jr   nc, jr_09e_61cb                             ; $61b4: $30 $15

	add  b                                           ; $61b6: $80

jr_09e_61b7:
	dec  bc                                          ; $61b7: $0b
	ld   bc, $2b6a                                   ; $61b8: $01 $6a $2b
	add  b                                           ; $61bb: $80
	dec  de                                          ; $61bc: $1b
	add  b                                           ; $61bd: $80
	rla                                              ; $61be: $17
	add  d                                           ; $61bf: $82
	dec  d                                           ; $61c0: $15
	add  b                                           ; $61c1: $80
	dec  h                                           ; $61c2: $25
	dec  b                                           ; $61c3: $05
	ld   b, c                                        ; $61c4: $41
	ld   bc, $0111                                   ; $61c5: $01 $11 $01
	inc  [hl]                                        ; $61c8: $34
	inc  b                                           ; $61c9: $04
	add  b                                           ; $61ca: $80

jr_09e_61cb:
	inc  c                                           ; $61cb: $0c
	add  b                                           ; $61cc: $80
	ld   [$3901], sp                                 ; $61cd: $08 $01 $39

jr_09e_61d0:
	add  hl, de                                      ; $61d0: $19
	add  b                                           ; $61d1: $80
	rla                                              ; $61d2: $17
	ld   bc, $3676                                   ; $61d3: $01 $76 $36
	add  b                                           ; $61d6: $80
	ld   l, $10                                      ; $61d7: $2e $10
	adc  $6e                                         ; $61d9: $ce $6e
	ld   e, $7e                                      ; $61db: $1e $7e
	ld   a, [$3dfe]                                  ; $61dd: $fa $fe $3d
	db   $fd                                         ; $61e0: $fd
	sub  c                                           ; $61e1: $91
	cp   l                                           ; $61e2: $bd
	dec  l                                           ; $61e3: $2d
	cp   l                                           ; $61e4: $bd
	xor  l                                           ; $61e5: $ad
	cp   l                                           ; $61e6: $bd
	ld   e, c                                        ; $61e7: $59
	ld   a, c                                        ; $61e8: $79
	ld   [hl], b                                     ; $61e9: $70
	add  c                                           ; $61ea: $81
	ld   a, b                                        ; $61eb: $78
	add  b                                           ; $61ec: $80
	ld   e, b                                        ; $61ed: $58
	inc  b                                           ; $61ee: $04
	ld   e, c                                        ; $61ef: $59
	ld   e, b                                        ; $61f0: $58
	nop                                              ; $61f1: $00
	and  b                                           ; $61f2: $a0
	and  c                                           ; $61f3: $a1
	add  h                                           ; $61f4: $84
	ld   h, b                                        ; $61f5: $60
	inc  bc                                          ; $61f6: $03
	ld   b, b                                        ; $61f7: $40
	ld   [hl], e                                     ; $61f8: $73
	nop                                              ; $61f9: $00
	call z, $0081                                    ; $61fa: $cc $81 $00
	dec  bc                                          ; $61fd: $0b
	ld   bc, $0300                                   ; $61fe: $01 $00 $03
	ld   bc, $030f                                   ; $6201: $01 $0f $03

Jump_09e_6204:
	ld   e, $0e                                      ; $6204: $1e $0e
	ld   a, h                                        ; $6206: $7c
	inc  e                                           ; $6207: $1c
	cp   b                                           ; $6208: $b8
	jr   c, jr_09e_618b                              ; $6209: $38 $80

	ld   [hl], b                                     ; $620b: $70
	add  b                                           ; $620c: $80
	pop  hl                                          ; $620d: $e1
	nop                                              ; $620e: $00
	rst  $38                                         ; $620f: $ff
	add  c                                           ; $6210: $81
	nop                                              ; $6211: $00
	ld   h, $80                                      ; $6212: $26 $80
	ld   b, b                                        ; $6214: $40
	jr   nc, jr_09e_6227                             ; $6215: $30 $10

	db   $f4                                         ; $6217: $f4
	inc  c                                           ; $6218: $0c
	dec  d                                           ; $6219: $15
	inc  bc                                          ; $621a: $03
	ld   de, $6e06                                   ; $621b: $11 $06 $6e
	nop                                              ; $621e: $00
	rst  $10                                         ; $621f: $d7
	nop                                              ; $6220: $00
	sub  b                                           ; $6221: $90
	nop                                              ; $6222: $00
	ld   d, b                                        ; $6223: $50
	nop                                              ; $6224: $00
	add  b                                           ; $6225: $80
	nop                                              ; $6226: $00

jr_09e_6227:
	stop                                             ; $6227: $10 $00
	rrca                                             ; $6229: $0f
	nop                                              ; $622a: $00
	ld   e, a                                        ; $622b: $5f
	nop                                              ; $622c: $00
	ld   h, b                                        ; $622d: $60
	nop                                              ; $622e: $00
	add  $07                                         ; $622f: $c6 $07
	inc  b                                           ; $6231: $04
	ld   b, $08                                      ; $6232: $06 $08
	dec  c                                           ; $6234: $0d
	ld   de, $731b                                   ; $6235: $11 $1b $73
	ld   h, [hl]                                     ; $6238: $66
	and  $80                                         ; $6239: $e6 $80
	sbc  [hl]                                        ; $623b: $9e
	dec  b                                           ; $623c: $05
	ld   a, b                                        ; $623d: $78
	ld   a, [hl]                                     ; $623e: $7e
	nop                                              ; $623f: $00
	ld   a, [$0100]                                  ; $6240: $fa $00 $01
	add  c                                           ; $6243: $81
	nop                                              ; $6244: $00
	nop                                              ; $6245: $00
	ld   b, $81                                      ; $6246: $06 $81
	nop                                              ; $6248: $00
	ld   e, $3f                                      ; $6249: $1e $3f
	nop                                              ; $624b: $00
	rst  $30                                         ; $624c: $f7
	nop                                              ; $624d: $00
	ld   b, h                                        ; $624e: $44
	nop                                              ; $624f: $00
	halt                                             ; $6250: $76
	ld   e, b                                        ; $6251: $58
	ld   e, d                                        ; $6252: $5a
	ld   d, b                                        ; $6253: $50
	ld   d, h                                        ; $6254: $54
	ld   h, b                                        ; $6255: $60
	ldh  [rAUD4LEN], a                               ; $6256: $e0 $20
	jr   z, jr_09e_625a                              ; $6258: $28 $00

jr_09e_625a:
	inc  bc                                          ; $625a: $03
	nop                                              ; $625b: $00
	ld   e, a                                        ; $625c: $5f
	inc  bc                                          ; $625d: $03
	ld   e, [hl]                                     ; $625e: $5e
	ld   c, $dd                                      ; $625f: $0e $dd
	dec  e                                           ; $6261: $1d
	ei                                               ; $6262: $fb
	ld   a, [hl-]                                    ; $6263: $3a
	cp   [hl]                                        ; $6264: $be
	dec  a                                           ; $6265: $3d
	ld   a, l                                        ; $6266: $7d
	ld   a, c                                        ; $6267: $79
	ld   sp, hl                                      ; $6268: $f9
	add  b                                           ; $6269: $80
	di                                               ; $626a: $f3
	add  b                                           ; $626b: $80
	rst  $30                                         ; $626c: $f7
	add  b                                           ; $626d: $80
	rst  $28                                         ; $626e: $ef
	ld   bc, $feff                                   ; $626f: $01 $ff $fe
	add  e                                           ; $6272: $83
	nop                                              ; $6273: $00
	nop                                              ; $6274: $00
	ld   [bc], a                                     ; $6275: $02
	add  c                                           ; $6276: $81
	ld   bc, $0703                                   ; $6277: $01 $03 $07
	inc  bc                                          ; $627a: $03
	ld   [bc], a                                     ; $627b: $02
	inc  bc                                          ; $627c: $03
	add  b                                           ; $627d: $80
	ld   [bc], a                                     ; $627e: $02
	nop                                              ; $627f: $00
	ld   c, $81                                      ; $6280: $0e $81
	ld   b, $00                                      ; $6282: $06 $00
	dec  b                                           ; $6284: $05
	add  e                                           ; $6285: $83
	inc  b                                           ; $6286: $04
	nop                                              ; $6287: $00
	ld   a, [bc]                                     ; $6288: $0a
	add  e                                           ; $6289: $83
	nop                                              ; $628a: $00
	inc  b                                           ; $628b: $04
	inc  b                                           ; $628c: $04
	nop                                              ; $628d: $00
	ld   bc, $0200                                   ; $628e: $01 $00 $02
	add  c                                           ; $6291: $81
	ld   bc, $0500                                   ; $6292: $01 $00 $05
	add  c                                           ; $6295: $81
	ld   [bc], a                                     ; $6296: $02
	nop                                              ; $6297: $00
	dec  bc                                          ; $6298: $0b
	add  c                                           ; $6299: $81
	dec  b                                           ; $629a: $05
	ld   bc, $0b17                                   ; $629b: $01 $17 $0b
	add  b                                           ; $629e: $80
	ld   [$2802], sp                                 ; $629f: $08 $02 $28
	inc  de                                          ; $62a2: $13
	ld   d, e                                        ; $62a3: $53
	add  b                                           ; $62a4: $80
	ld   a, $01                                      ; $62a5: $3e $01
	nop                                              ; $62a7: $00
	ld   [hl], h                                     ; $62a8: $74
	add  c                                           ; $62a9: $81
	dec  b                                           ; $62aa: $05
	ld   [bc], a                                     ; $62ab: $02
	dec  e                                           ; $62ac: $1d
	inc  c                                           ; $62ad: $0c
	ldh  [$81], a                                    ; $62ae: $e0 $81
	rst  $38                                         ; $62b0: $ff
	inc  e                                           ; $62b1: $1c
	cp   a                                           ; $62b2: $bf
	ld   a, a                                        ; $62b3: $7f
	ccf                                              ; $62b4: $3f
	rra                                              ; $62b5: $1f
	rst  $30                                         ; $62b6: $f7
	rrca                                             ; $62b7: $0f
	dec  d                                           ; $62b8: $15
	inc  bc                                          ; $62b9: $03
	ld   de, $6606                                   ; $62ba: $11 $06 $66
	ld   [$00d7], sp                                 ; $62bd: $08 $d7 $00
	sub  b                                           ; $62c0: $90
	nop                                              ; $62c1: $00
	ld   d, b                                        ; $62c2: $50
	nop                                              ; $62c3: $00
	add  b                                           ; $62c4: $80
	nop                                              ; $62c5: $00
	stop                                             ; $62c6: $10 $00
	rrca                                             ; $62c8: $0f
	nop                                              ; $62c9: $00
	ld   e, a                                        ; $62ca: $5f
	nop                                              ; $62cb: $00
	ld   h, b                                        ; $62cc: $60
	nop                                              ; $62cd: $00
	ret  nz                                          ; $62ce: $c0

	adc  l                                           ; $62cf: $8d
	nop                                              ; $62d0: $00
	ld   [bc], a                                     ; $62d1: $02
	ld   e, a                                        ; $62d2: $5f
	ld   bc, $83c1                                   ; $62d3: $01 $c1 $83
	nop                                              ; $62d6: $00
	inc  b                                           ; $62d7: $04
	jr   nz, jr_09e_62da                             ; $62d8: $20 $00

jr_09e_62da:
	ld   [hl], e                                     ; $62da: $73
	nop                                              ; $62db: $00
	call z, $00ff                                    ; $62dc: $cc $ff $00
	rst  $38                                         ; $62df: $ff
	nop                                              ; $62e0: $00
	rst  $38                                         ; $62e1: $ff
	nop                                              ; $62e2: $00
	rlca                                             ; $62e3: $07
	ld   h, e                                        ; $62e4: $63
	and  b                                           ; $62e5: $a0
	cpl                                              ; $62e6: $2f
	ld   h, e                                        ; $62e7: $63
	ld   a, a                                        ; $62e8: $7f
	ld   l, a                                        ; $62e9: $6f
	ld   a, a                                        ; $62ea: $7f
	rra                                              ; $62eb: $1f
	add  b                                           ; $62ec: $80
	ld   a, a                                        ; $62ed: $7f
	add  b                                           ; $62ee: $80
	ei                                               ; $62ef: $fb
	add  b                                           ; $62f0: $80
	rst  $30                                         ; $62f1: $f7
	inc  bc                                          ; $62f2: $03
	rst  $28                                         ; $62f3: $ef
	xor  a                                           ; $62f4: $af
	ld   b, b                                        ; $62f5: $40
	nop                                              ; $62f6: $00
	adc  b                                           ; $62f7: $88
	rst  $38                                         ; $62f8: $ff
	add  d                                           ; $62f9: $82
	rst  $30                                         ; $62fa: $f7
	add  hl, bc                                      ; $62fb: $09
	nop                                              ; $62fc: $00
	ld   a, [hl]                                     ; $62fd: $7e
	cp   $8f                                         ; $62fe: $fe $8f

Jump_09e_6300:
	rst  $38                                         ; $6300: $ff
	di                                               ; $6301: $f3
	rst  $38                                         ; $6302: $ff
	db   $fd                                         ; $6303: $fd
	rst  $38                                         ; $6304: $ff
	cp   $82                                         ; $6305: $fe $82
	rst  $38                                         ; $6307: $ff
	add  b                                           ; $6308: $80
	ld   a, [$ef04]                                  ; $6309: $fa $04 $ef
	cpl                                              ; $630c: $2f
	rra                                              ; $630d: $1f
	ld   c, a                                        ; $630e: $4f
	ld   c, d                                        ; $630f: $4a
	add  b                                           ; $6310: $80
	ld   b, b                                        ; $6311: $40
	nop                                              ; $6312: $00
	jp   z, $a280                                    ; $6313: $ca $80 $a2

	ld   [bc], a                                     ; $6316: $02
	and  c                                           ; $6317: $a1
	or   b                                           ; $6318: $b0
	inc  h                                           ; $6319: $24
	add  c                                           ; $631a: $81
	jr   nz, jr_09e_631d                             ; $631b: $20 $00

jr_09e_631d:
	ld   a, [hl-]                                    ; $631d: $3a
	add  l                                           ; $631e: $85
	ccf                                              ; $631f: $3f
	add  b                                           ; $6320: $80
	cp   a                                           ; $6321: $bf
	add  d                                           ; $6322: $82
	ccf                                              ; $6323: $3f
	add  b                                           ; $6324: $80
	scf                                              ; $6325: $37
	add  b                                           ; $6326: $80
	ld   [hl], l                                     ; $6327: $75
	add  h                                           ; $6328: $84
	ld   h, h                                        ; $6329: $64
	add  b                                           ; $632a: $80
	db   $ec                                         ; $632b: $ec
	add  b                                           ; $632c: $80
	add  sp, -$7e                                    ; $632d: $e8 $82
	ret  z                                           ; $632f: $c8

	dec  b                                           ; $6330: $05
	ld   e, a                                        ; $6331: $5f
	ld   b, b                                        ; $6332: $40
	ret  nc                                          ; $6333: $d0

	ret  nz                                          ; $6334: $c0

	sub  b                                           ; $6335: $90
	add  b                                           ; $6336: $80
	add  b                                           ; $6337: $80
	stop                                             ; $6338: $10 $00
	rra                                              ; $633a: $1f
	add  b                                           ; $633b: $80
	rrca                                             ; $633c: $0f
	ld   b, $00                                      ; $633d: $06 $00
	ld   c, $51                                      ; $633f: $0e $51
	ld   h, c                                        ; $6341: $61
	ld   bc, $00c3                                   ; $6342: $01 $c3 $00
	add  b                                           ; $6345: $80
	dec  c                                           ; $6346: $0d
	add  b                                           ; $6347: $80
	ld   a, l                                        ; $6348: $7d
	ld   bc, $1b1f                                   ; $6349: $01 $1f $1b
	add  b                                           ; $634c: $80

jr_09e_634d:
	dec  sp                                          ; $634d: $3b
	rlca                                             ; $634e: $07
	db   $fc                                         ; $634f: $fc
	call nz, $03f0                                   ; $6350: $c4 $f0 $03
	ld   [bc], a                                     ; $6353: $02
	ld   b, [hl]                                     ; $6354: $46
	cp   a                                           ; $6355: $bf
	ret  z                                           ; $6356: $c8

	add  b                                           ; $6357: $80
	ret  nz                                          ; $6358: $c0

jr_09e_6359:
	nop                                              ; $6359: $00
	add  b                                           ; $635a: $80
	add  b                                           ; $635b: $80
	add  c                                           ; $635c: $81
	rra                                              ; $635d: $1f
	add  e                                           ; $635e: $83
	ld   d, l                                        ; $635f: $55
	nop                                              ; $6360: $00
	ld   [$4d00], a                                  ; $6361: $ea $00 $4d
	nop                                              ; $6364: $00
	jr   nc, jr_09e_6373                             ; $6365: $30 $0c

	dec  l                                           ; $6367: $2d
	ld   h, b                                        ; $6368: $60
	ld   b, e                                        ; $6369: $43
	ret  nz                                          ; $636a: $c0

	jp   $8acb                                       ; $636b: $c3 $cb $8a


	sub  h                                           ; $636e: $94
	sub  a                                           ; $636f: $97
	or   c                                           ; $6370: $b1
	cp   a                                           ; $6371: $bf
	and  d                                           ; $6372: $a2

jr_09e_6373:
	scf                                              ; $6373: $37
	inc  b                                           ; $6374: $04
	inc  h                                           ; $6375: $24
	inc  b                                           ; $6376: $04
	db   $d3                                         ; $6377: $d3
	ld   bc, $81b1                                   ; $6378: $01 $b1 $81
	ld   h, c                                        ; $637b: $61
	ld   bc, $81c5                                   ; $637c: $01 $c5 $81
	dec  b                                           ; $637f: $05
	nop                                              ; $6380: $00
	adc  l                                           ; $6381: $8d
	add  b                                           ; $6382: $80
	dec  c                                           ; $6383: $0d
	nop                                              ; $6384: $00
	dec  b                                           ; $6385: $05
	add  b                                           ; $6386: $80
	dec  d                                           ; $6387: $15
	ld   bc, $46c6                                   ; $6388: $01 $c6 $46
	add  b                                           ; $638b: $80
	ld   b, a                                        ; $638c: $47
	add  b                                           ; $638d: $80
	rlca                                             ; $638e: $07
	nop                                              ; $638f: $00
	ld   b, $81                                      ; $6390: $06 $81
	ld   a, [bc]                                     ; $6392: $0a
	add  d                                           ; $6393: $82
	dec  bc                                          ; $6394: $0b
	ld   b, $2b                                      ; $6395: $06 $2b
	dec  bc                                          ; $6397: $0b
	ld   d, d                                        ; $6398: $52
	inc  sp                                          ; $6399: $33
	ld   bc, $0dc1                                   ; $639a: $01 $c1 $0d
	add  c                                           ; $639d: $81
	inc  bc                                          ; $639e: $03
	ld   bc, $071b                                   ; $639f: $01 $1b $07
	add  b                                           ; $63a2: $80
	ld   b, $01                                      ; $63a3: $06 $01
	ld   [hl], $0e                                   ; $63a5: $36 $0e
	add  b                                           ; $63a7: $80
	nop                                              ; $63a8: $00
	nop                                              ; $63a9: $00
	ld   e, a                                        ; $63aa: $5f
	add  c                                           ; $63ab: $81
	adc  a                                           ; $63ac: $8f
	add  d                                           ; $63ad: $82
	rrca                                             ; $63ae: $0f
	add  [hl]                                        ; $63af: $86
	rlca                                             ; $63b0: $07
	add  b                                           ; $63b1: $80
	rst  $38                                         ; $63b2: $ff
	add  b                                           ; $63b3: $80
	ld   [bc], a                                     ; $63b4: $02
	ld   de, $02fa                                   ; $63b5: $11 $fa $02
	pop  hl                                          ; $63b8: $e1
	nop                                              ; $63b9: $00
	call z, $fa04                                    ; $63ba: $cc $04 $fa
	ld   [$1878], sp                                 ; $63bd: $08 $78 $18
	ld   hl, sp+$38                                  ; $63c0: $f8 $38
	ldh  a, [$08]                                    ; $63c2: $f0 $08
	sbc  b                                           ; $63c4: $98
	jr   jr_09e_63e3                                 ; $63c5: $18 $1c

	db   $10                                         ; $63c7: $10
	add  b                                           ; $63c8: $80
	jr   nc, jr_09e_634d                             ; $63c9: $30 $82

	ld   [hl], b                                     ; $63cb: $70
	nop                                              ; $63cc: $00
	ld   hl, sp-$7f                                  ; $63cd: $f8 $81
	ldh  [rP1], a                                    ; $63cf: $e0 $00
	inc  c                                           ; $63d1: $0c
	add  l                                           ; $63d2: $85
	ld   [$2881], sp                                 ; $63d3: $08 $81 $28
	add  e                                           ; $63d6: $83
	jr   jr_09e_6359                                 ; $63d7: $18 $80

	adc  e                                           ; $63d9: $8b
	add  b                                           ; $63da: $80
	sbc  e                                           ; $63db: $9b
	add  c                                           ; $63dc: $81
	dec  de                                          ; $63dd: $1b
	ld   [bc], a                                     ; $63de: $02
	ld   a, [de]                                     ; $63df: $1a
	dec  de                                          ; $63e0: $1b
	add  hl, de                                      ; $63e1: $19
	add  b                                           ; $63e2: $80

jr_09e_63e3:
	dec  de                                          ; $63e3: $1b
	add  d                                           ; $63e4: $82
	add  hl, de                                      ; $63e5: $19
	rlca                                             ; $63e6: $07
	ld   l, a                                        ; $63e7: $6f
	jr   nz, @+$2f                                   ; $63e8: $20 $2d

	sbc  b                                           ; $63ea: $98
	ld   e, c                                        ; $63eb: $59
	jr   c, jr_09e_6420                              ; $63ec: $38 $32

	ld   [hl], b                                     ; $63ee: $70
	add  b                                           ; $63ef: $80
	ldh  [rSB], a                                    ; $63f0: $e0 $01
	jp   $80c2                                       ; $63f2: $c3 $c2 $80


	adc  [hl]                                        ; $63f5: $8e
	add  b                                           ; $63f6: $80
	rst  $38                                         ; $63f7: $ff
	ld   de, $0787                                   ; $63f8: $11 $87 $07
	ld   h, b                                        ; $63fb: $60
	nop                                              ; $63fc: $00
	sbc  $00                                         ; $63fd: $de $00
	dec  a                                           ; $63ff: $3d
	nop                                              ; $6400: $00
	rla                                              ; $6401: $17
	nop                                              ; $6402: $00
	cp   l                                           ; $6403: $bd
	nop                                              ; $6404: $00
	ccf                                              ; $6405: $3f
	nop                                              ; $6406: $00
	ret  nz                                          ; $6407: $c0

	nop                                              ; $6408: $00
	ld   a, [$808c]                                  ; $6409: $fa $8c $80
	adc  b                                           ; $640c: $88
	add  b                                           ; $640d: $80
	ld   [$c807], sp                                 ; $640e: $08 $07 $c8
	ld   [$00e0], sp                                 ; $6411: $08 $e0 $00
	ld   b, b                                        ; $6414: $40
	nop                                              ; $6415: $00
	ldh  [rP1], a                                    ; $6416: $e0 $00
	add  b                                           ; $6418: $80
	rlca                                             ; $6419: $07
	nop                                              ; $641a: $00
	ld   e, a                                        ; $641b: $5f
	rst  $38                                         ; $641c: $ff
	nop                                              ; $641d: $00
	rst  $38                                         ; $641e: $ff
	nop                                              ; $641f: $00

jr_09e_6420:
	rst  $38                                         ; $6420: $ff
	nop                                              ; $6421: $00
	rst  $38                                         ; $6422: $ff
	nop                                              ; $6423: $00
	rst  $38                                         ; $6424: $ff
	nop                                              ; $6425: $00
	xor  b                                           ; $6426: $a8
	nop                                              ; $6427: $00
	ld   de, $23ff                                   ; $6428: $11 $ff $23
	cp   $23                                         ; $642b: $fe $23
	cp   $46                                         ; $642d: $fe $46
	db   $fc                                         ; $642f: $fc
	ld   b, [hl]                                     ; $6430: $46
	db   $fc                                         ; $6431: $fc
	ld   b, [hl]                                     ; $6432: $46
	db   $fc                                         ; $6433: $fc
	adc  a                                           ; $6434: $8f
	ei                                               ; $6435: $fb
	adc  a                                           ; $6436: $8f
	ld   hl, sp-$71                                  ; $6437: $f8 $8f
	ei                                               ; $6439: $fb
	adc  a                                           ; $643a: $8f
	ld   sp, hl                                      ; $643b: $f9
	adc  a                                           ; $643c: $8f
	ld   hl, sp+$4f                                  ; $643d: $f8 $4f
	ld   hl, sp+$4f                                  ; $643f: $f8 $4f
	ld   hl, sp-$59                                  ; $6441: $f8 $a7
	db   $fc                                         ; $6443: $fc
	rst  $30                                         ; $6444: $f7
	db   $fc                                         ; $6445: $fc
	ccf                                              ; $6446: $3f
	ld   a, $c1                                      ; $6447: $3e $c1
	ld   b, b                                        ; $6449: $40
	ld   b, b                                        ; $644a: $40
	ld   b, b                                        ; $644b: $40
	ld   b, b                                        ; $644c: $40
	ld   b, b                                        ; $644d: $40
	ld   b, b                                        ; $644e: $40
	ld   b, b                                        ; $644f: $40
	jr   nz, @+$22                                   ; $6450: $20 $20

	jr   nz, jr_09e_6474                             ; $6452: $20 $20

	ldh  a, [$f0]                                    ; $6454: $f0 $f0
	db   $fc                                         ; $6456: $fc
	inc  c                                           ; $6457: $0c
	cp   $f2                                         ; $6458: $fe $f2
	ld   l, [hl]                                     ; $645a: $6e
	ld   e, h                                        ; $645b: $5c
	db   $fc                                         ; $645c: $fc
	ldh  a, [rP1]                                    ; $645d: $f0 $00
	nop                                              ; $645f: $00
	nop                                              ; $6460: $00
	nop                                              ; $6461: $00
	nop                                              ; $6462: $00
	nop                                              ; $6463: $00
	nop                                              ; $6464: $00
	nop                                              ; $6465: $00
	ld   b, b                                        ; $6466: $40
	ld   b, b                                        ; $6467: $40
	adc  a                                           ; $6468: $8f
	ld   a, [$f98f]                                  ; $6469: $fa $8f $f9
	adc  a                                           ; $646c: $8f
	ld   hl, sp+$4f                                  ; $646d: $f8 $4f
	ld   hl, sp+$4f                                  ; $646f: $f8 $4f
	ld   hl, sp-$59                                  ; $6471: $f8 $a7
	db   $fc                                         ; $6473: $fc

jr_09e_6474:
	rst  $30                                         ; $6474: $f7
	db   $fc                                         ; $6475: $fc
	ccf                                              ; $6476: $3f
	ld   a, $0e                                      ; $6477: $3e $0e
	ld   b, $fe                                      ; $6479: $06 $fe
	ld   hl, sp-$04                                  ; $647b: $f8 $fc
	ldh  a, [rP1]                                    ; $647d: $f0 $00
	nop                                              ; $647f: $00
	nop                                              ; $6480: $00
	nop                                              ; $6481: $00
	nop                                              ; $6482: $00
	nop                                              ; $6483: $00
	nop                                              ; $6484: $00
	nop                                              ; $6485: $00
	ld   b, b                                        ; $6486: $40
	ld   b, b                                        ; $6487: $40
	adc  a                                           ; $6488: $8f
	ld   hl, sp-$71                                  ; $6489: $f8 $8f
	ei                                               ; $648b: $fb
	adc  a                                           ; $648c: $8f
	ld   hl, sp+$4f                                  ; $648d: $f8 $4f
	ld   hl, sp+$4f                                  ; $648f: $f8 $4f
	ld   hl, sp-$59                                  ; $6491: $f8 $a7
	db   $fc                                         ; $6493: $fc
	rst  $30                                         ; $6494: $f7
	db   $fc                                         ; $6495: $fc
	ccf                                              ; $6496: $3f
	ld   a, $c1                                      ; $6497: $3e $c1
	ld   b, b                                        ; $6499: $40
	ld   b, b                                        ; $649a: $40
	ld   b, b                                        ; $649b: $40
	ld   b, b                                        ; $649c: $40
	ld   b, b                                        ; $649d: $40
	ld   b, b                                        ; $649e: $40
	ld   b, b                                        ; $649f: $40
	jr   nz, jr_09e_64c2                             ; $64a0: $20 $20

	jr   nz, jr_09e_64c4                             ; $64a2: $20 $20

	ldh  a, [$f0]                                    ; $64a4: $f0 $f0
	inc  e                                           ; $64a6: $1c
	inc  c                                           ; $64a7: $0c
	ld   c, $02                                      ; $64a8: $0e $02
	cp   $0c                                         ; $64aa: $fe $0c
	db   $fc                                         ; $64ac: $fc
	ldh  a, [rP1]                                    ; $64ad: $f0 $00
	nop                                              ; $64af: $00
	nop                                              ; $64b0: $00
	nop                                              ; $64b1: $00
	nop                                              ; $64b2: $00
	nop                                              ; $64b3: $00
	nop                                              ; $64b4: $00
	nop                                              ; $64b5: $00
	ld   b, b                                        ; $64b6: $40
	ld   b, b                                        ; $64b7: $40
	inc  e                                           ; $64b8: $1c
	rra                                              ; $64b9: $1f
	inc  e                                           ; $64ba: $1c
	rla                                              ; $64bb: $17
	inc  e                                           ; $64bc: $1c
	rla                                              ; $64bd: $17
	inc  e                                           ; $64be: $1c
	rla                                              ; $64bf: $17
	inc  e                                           ; $64c0: $1c
	rla                                              ; $64c1: $17

jr_09e_64c2:
	dec  a                                           ; $64c2: $3d
	daa                                              ; $64c3: $27

jr_09e_64c4:
	dec  a                                           ; $64c4: $3d
	daa                                              ; $64c5: $27
	ld   e, a                                        ; $64c6: $5f
	ld   c, [hl]                                     ; $64c7: $4e
	dec  a                                           ; $64c8: $3d
	ld   bc, $1030                                   ; $64c9: $01 $30 $10
	db   $10                                         ; $64cc: $10
	stop                                             ; $64cd: $10 $00
	nop                                              ; $64cf: $00
	ld   a, b                                        ; $64d0: $78
	jr   nc, @+$32                                   ; $64d1: $30 $30

	nop                                              ; $64d3: $00
	nop                                              ; $64d4: $00
	nop                                              ; $64d5: $00
	nop                                              ; $64d6: $00
	nop                                              ; $64d7: $00
	dec  a                                           ; $64d8: $3d
	ld   bc, $1030                                   ; $64d9: $01 $30 $10
	db   $10                                         ; $64dc: $10
	db   $10                                         ; $64dd: $10
	stop                                             ; $64de: $10 $00
	ld   a, b                                        ; $64e0: $78
	jr   c, jr_09e_652b                              ; $64e1: $38 $48

	ld   c, b                                        ; $64e3: $48
	ld   a, b                                        ; $64e4: $78
	jr   nc, jr_09e_64e7                             ; $64e5: $30 $00

jr_09e_64e7:
	nop                                              ; $64e7: $00
	adc  a                                           ; $64e8: $8f
	ld   sp, hl                                      ; $64e9: $f9
	adc  a                                           ; $64ea: $8f
	ei                                               ; $64eb: $fb
	adc  a                                           ; $64ec: $8f
	ld   hl, sp+$4f                                  ; $64ed: $f8 $4f
	ld   hl, sp+$4f                                  ; $64ef: $f8 $4f
	ld   hl, sp-$59                                  ; $64f1: $f8 $a7
	db   $fc                                         ; $64f3: $fc
	rst  $30                                         ; $64f4: $f7
	db   $fc                                         ; $64f5: $fc
	ccf                                              ; $64f6: $3f
	ld   a, $c1                                      ; $64f7: $3e $c1
	ld   b, b                                        ; $64f9: $40
	ld   b, b                                        ; $64fa: $40
	ld   b, b                                        ; $64fb: $40
	ld   b, b                                        ; $64fc: $40
	ld   b, b                                        ; $64fd: $40
	ld   b, b                                        ; $64fe: $40
	ld   b, b                                        ; $64ff: $40
	jr   nz, jr_09e_6522                             ; $6500: $20 $20

	jr   nz, jr_09e_6524                             ; $6502: $20 $20

	ld   hl, sp-$08                                  ; $6504: $f8 $f8
	cp   $06                                         ; $6506: $fe $06
	cp   $f8                                         ; $6508: $fe $f8
	ld   l, [hl]                                     ; $650a: $6e
	ld   e, h                                        ; $650b: $5c
	db   $fc                                         ; $650c: $fc
	ldh  [rP1], a                                    ; $650d: $e0 $00
	nop                                              ; $650f: $00
	xor  b                                           ; $6510: $a8
	nop                                              ; $6511: $00
	ld   d, h                                        ; $6512: $54
	nop                                              ; $6513: $00
	and  b                                           ; $6514: $a0
	nop                                              ; $6515: $00
	ld   b, b                                        ; $6516: $40
	ld   b, b                                        ; $6517: $40
	inc  b                                           ; $6518: $04
	nop                                              ; $6519: $00
	cp   $fc                                         ; $651a: $fe $fc
	db   $fc                                         ; $651c: $fc
	ldh  a, [rP1]                                    ; $651d: $f0 $00
	nop                                              ; $651f: $00
	xor  b                                           ; $6520: $a8
	nop                                              ; $6521: $00

jr_09e_6522:
	ld   d, h                                        ; $6522: $54
	nop                                              ; $6523: $00

jr_09e_6524:
	and  b                                           ; $6524: $a0
	nop                                              ; $6525: $00
	ld   b, b                                        ; $6526: $40
	ld   b, b                                        ; $6527: $40
	pop  bc                                          ; $6528: $c1
	ld   b, b                                        ; $6529: $40
	ld   b, b                                        ; $652a: $40

jr_09e_652b:
	ld   b, b                                        ; $652b: $40
	ld   b, b                                        ; $652c: $40
	ld   b, b                                        ; $652d: $40
	ld   b, b                                        ; $652e: $40
	ld   b, b                                        ; $652f: $40
	jr   nz, jr_09e_6552                             ; $6530: $20 $20

	jr   nz, jr_09e_6554                             ; $6532: $20 $20

	ld   hl, sp-$08                                  ; $6534: $f8 $f8
	ld   e, $06                                      ; $6536: $1e $06
	ld   c, $02                                      ; $6538: $0e $02
	cp   $0c                                         ; $653a: $fe $0c
	db   $fc                                         ; $653c: $fc
	ldh  a, [rP1]                                    ; $653d: $f0 $00
	nop                                              ; $653f: $00
	xor  b                                           ; $6540: $a8
	nop                                              ; $6541: $00
	ld   d, h                                        ; $6542: $54
	nop                                              ; $6543: $00
	and  b                                           ; $6544: $a0
	nop                                              ; $6545: $00
	ld   b, b                                        ; $6546: $40
	ld   b, b                                        ; $6547: $40
	dec  a                                           ; $6548: $3d
	ld   bc, $1030                                   ; $6549: $01 $30 $10
	db   $10                                         ; $654c: $10
	stop                                             ; $654d: $10 $00
	nop                                              ; $654f: $00
	ld   hl, sp+$70                                  ; $6550: $f8 $70

jr_09e_6552:
	ld   [hl], b                                     ; $6552: $70
	nop                                              ; $6553: $00

jr_09e_6554:
	nop                                              ; $6554: $00
	nop                                              ; $6555: $00
	nop                                              ; $6556: $00
	nop                                              ; $6557: $00
	dec  a                                           ; $6558: $3d
	ld   bc, $1030                                   ; $6559: $01 $30 $10
	db   $10                                         ; $655c: $10
	stop                                             ; $655d: $10 $00
	nop                                              ; $655f: $00
	ld   hl, sp-$08                                  ; $6560: $f8 $f8
	ret  c                                           ; $6562: $d8

	ld   b, b                                        ; $6563: $40
	ld   [hl], b                                     ; $6564: $70
	jr   nc, jr_09e_6567                             ; $6565: $30 $00

jr_09e_6567:
	nop                                              ; $6567: $00
	pop  bc                                          ; $6568: $c1
	ld   b, b                                        ; $6569: $40
	ld   b, b                                        ; $656a: $40
	ld   b, b                                        ; $656b: $40
	ld   b, b                                        ; $656c: $40
	ld   b, b                                        ; $656d: $40
	ld   b, b                                        ; $656e: $40
	ld   b, b                                        ; $656f: $40
	jr   nz, jr_09e_6592                             ; $6570: $20 $20

	jr   nz, jr_09e_6594                             ; $6572: $20 $20

	and  b                                           ; $6574: $a0
	and  b                                           ; $6575: $a0
	ld   hl, sp+$78                                  ; $6576: $f8 $78
	rst  $38                                         ; $6578: $ff
	or   $6f                                         ; $6579: $f6 $6f
	ld   e, h                                        ; $657b: $5c
	db   $fc                                         ; $657c: $fc
	ldh  a, [rP1]                                    ; $657d: $f0 $00
	nop                                              ; $657f: $00
	nop                                              ; $6580: $00
	nop                                              ; $6581: $00
	nop                                              ; $6582: $00
	nop                                              ; $6583: $00
	nop                                              ; $6584: $00
	nop                                              ; $6585: $00
	ld   b, b                                        ; $6586: $40
	ld   b, b                                        ; $6587: $40
	rst  $38                                         ; $6588: $ff
	ld   b, $ff                                      ; $6589: $06 $ff
	db   $fc                                         ; $658b: $fc
	db   $fc                                         ; $658c: $fc
	ldh  a, [rP1]                                    ; $658d: $f0 $00
	nop                                              ; $658f: $00
	nop                                              ; $6590: $00
	nop                                              ; $6591: $00

jr_09e_6592:
	nop                                              ; $6592: $00
	nop                                              ; $6593: $00

jr_09e_6594:
	nop                                              ; $6594: $00
	nop                                              ; $6595: $00
	ld   b, b                                        ; $6596: $40
	ld   b, b                                        ; $6597: $40
	ld   c, $06                                      ; $6598: $0e $06
	cp   $0c                                         ; $659a: $fe $0c
	db   $fc                                         ; $659c: $fc
	ldh  a, [rP1]                                    ; $659d: $f0 $00
	nop                                              ; $659f: $00
	nop                                              ; $65a0: $00
	nop                                              ; $65a1: $00
	nop                                              ; $65a2: $00
	nop                                              ; $65a3: $00
	nop                                              ; $65a4: $00
	nop                                              ; $65a5: $00
	ld   b, b                                        ; $65a6: $40
	ld   b, b                                        ; $65a7: $40
	sbc  h                                           ; $65a8: $9c
	rra                                              ; $65a9: $1f
	sbc  h                                           ; $65aa: $9c
	rla                                              ; $65ab: $17
	inc  e                                           ; $65ac: $1c
	rla                                              ; $65ad: $17
	inc  e                                           ; $65ae: $1c
	rla                                              ; $65af: $17
	inc  e                                           ; $65b0: $1c
	rla                                              ; $65b1: $17
	dec  a                                           ; $65b2: $3d
	daa                                              ; $65b3: $27
	dec  a                                           ; $65b4: $3d
	daa                                              ; $65b5: $27
	ld   e, a                                        ; $65b6: $5f
	ld   c, [hl]                                     ; $65b7: $4e
	dec  a                                           ; $65b8: $3d
	ld   bc, $1030                                   ; $65b9: $01 $30 $10
	db   $10                                         ; $65bc: $10
	stop                                             ; $65bd: $10 $00
	nop                                              ; $65bf: $00
	jr   c, jr_09e_65f2                              ; $65c0: $38 $30

	ld   l, b                                        ; $65c2: $68
	ld   c, b                                        ; $65c3: $48
	ld   c, b                                        ; $65c4: $48
	ld   c, b                                        ; $65c5: $48
	jr   c, jr_09e_65f8                              ; $65c6: $38 $30

	ld   de, $23ff                                   ; $65c8: $11 $ff $23
	cp   $23                                         ; $65cb: $fe $23
	cp   $46                                         ; $65cd: $fe $46
	db   $fc                                         ; $65cf: $fc
	ld   b, [hl]                                     ; $65d0: $46
	db   $fc                                         ; $65d1: $fc
	ld   b, [hl]                                     ; $65d2: $46
	db   $fc                                         ; $65d3: $fc
	adc  a                                           ; $65d4: $8f
	ld   sp, hl                                      ; $65d5: $f9
	adc  a                                           ; $65d6: $8f
	ld   a, [$f8fe]                                  ; $65d7: $fa $fe $f8
	ld   l, [hl]                                     ; $65da: $6e
	ld   e, h                                        ; $65db: $5c
	db   $fc                                         ; $65dc: $fc
	ldh  a, [rP1]                                    ; $65dd: $f0 $00
	nop                                              ; $65df: $00
	nop                                              ; $65e0: $00
	nop                                              ; $65e1: $00
	nop                                              ; $65e2: $00
	nop                                              ; $65e3: $00
	nop                                              ; $65e4: $00
	nop                                              ; $65e5: $00
	ld   b, b                                        ; $65e6: $40
	ld   b, b                                        ; $65e7: $40
	ld   b, $00                                      ; $65e8: $06 $00
	cp   $fc                                         ; $65ea: $fe $fc
	db   $fc                                         ; $65ec: $fc
	ldh  a, [rP1]                                    ; $65ed: $f0 $00
	nop                                              ; $65ef: $00
	nop                                              ; $65f0: $00
	nop                                              ; $65f1: $00

jr_09e_65f2:
	nop                                              ; $65f2: $00
	nop                                              ; $65f3: $00
	nop                                              ; $65f4: $00
	nop                                              ; $65f5: $00
	ld   b, b                                        ; $65f6: $40
	ld   b, b                                        ; $65f7: $40

jr_09e_65f8:
	pop  bc                                          ; $65f8: $c1
	ld   b, b                                        ; $65f9: $40
	ld   b, b                                        ; $65fa: $40
	ld   b, b                                        ; $65fb: $40
	ld   b, b                                        ; $65fc: $40
	ld   b, b                                        ; $65fd: $40
	ld   b, b                                        ; $65fe: $40
	ld   b, b                                        ; $65ff: $40
	jr   nz, jr_09e_6622                             ; $6600: $20 $20

	jr   nz, jr_09e_6624                             ; $6602: $20 $20

	ld   hl, sp-$08                                  ; $6604: $f8 $f8
	ld   c, $06                                      ; $6606: $0e $06
	ld   b, $00                                      ; $6608: $06 $00
	cp   $0c                                         ; $660a: $fe $0c
	db   $fc                                         ; $660c: $fc
	ldh  a, [rP1]                                    ; $660d: $f0 $00
	nop                                              ; $660f: $00
	nop                                              ; $6610: $00
	nop                                              ; $6611: $00
	nop                                              ; $6612: $00
	nop                                              ; $6613: $00
	nop                                              ; $6614: $00
	nop                                              ; $6615: $00
	ld   b, b                                        ; $6616: $40
	ld   b, b                                        ; $6617: $40
	pop  bc                                          ; $6618: $c1
	ld   b, b                                        ; $6619: $40
	ld   b, b                                        ; $661a: $40
	ld   b, b                                        ; $661b: $40
	ld   b, b                                        ; $661c: $40
	ld   b, b                                        ; $661d: $40
	ld   b, b                                        ; $661e: $40
	ld   b, b                                        ; $661f: $40
	jr   nz, jr_09e_6642                             ; $6620: $20 $20

jr_09e_6622:
	jr   nz, jr_09e_6644                             ; $6622: $20 $20

jr_09e_6624:
	and  b                                           ; $6624: $a0
	and  b                                           ; $6625: $a0
	cp   $7c                                         ; $6626: $fe $7c
	db   $fc                                         ; $6628: $fc
	ldh  a, [$6e]                                    ; $6629: $f0 $6e
	ld   e, h                                        ; $662b: $5c
	ld   hl, sp-$10                                  ; $662c: $f8 $f0
	nop                                              ; $662e: $00
	nop                                              ; $662f: $00
	nop                                              ; $6630: $00
	nop                                              ; $6631: $00
	nop                                              ; $6632: $00
	nop                                              ; $6633: $00
	nop                                              ; $6634: $00
	nop                                              ; $6635: $00
	ld   b, b                                        ; $6636: $40
	ld   b, b                                        ; $6637: $40
	db   $fc                                         ; $6638: $fc
	nop                                              ; $6639: $00
	cp   $fc                                         ; $663a: $fe $fc
	ld   hl, sp-$10                                  ; $663c: $f8 $f0
	nop                                              ; $663e: $00
	nop                                              ; $663f: $00
	nop                                              ; $6640: $00
	nop                                              ; $6641: $00

jr_09e_6642:
	nop                                              ; $6642: $00
	nop                                              ; $6643: $00

jr_09e_6644:
	nop                                              ; $6644: $00
	nop                                              ; $6645: $00
	ld   b, b                                        ; $6646: $40
	ld   b, b                                        ; $6647: $40
	pop  bc                                          ; $6648: $c1
	ld   b, b                                        ; $6649: $40
	ld   b, b                                        ; $664a: $40
	ld   b, b                                        ; $664b: $40
	ld   b, b                                        ; $664c: $40
	ld   b, b                                        ; $664d: $40
	ld   b, b                                        ; $664e: $40
	ld   b, b                                        ; $664f: $40
	jr   nz, @+$22                                   ; $6650: $20 $20

	jr   nz, jr_09e_6674                             ; $6652: $20 $20

	ldh  [hScriptOpcodeParams], a                                    ; $6654: $e0 $a0
	cp   $7c                                         ; $6656: $fe $7c
	dec  a                                           ; $6658: $3d
	ld   bc, $1030                                   ; $6659: $01 $30 $10
	db   $10                                         ; $665c: $10
	stop                                             ; $665d: $10 $00
	nop                                              ; $665f: $00
	ld   a, b                                        ; $6660: $78
	jr   nc, @+$72                                   ; $6661: $30 $70

	nop                                              ; $6663: $00
	nop                                              ; $6664: $00
	nop                                              ; $6665: $00
	nop                                              ; $6666: $00
	nop                                              ; $6667: $00
	dec  a                                           ; $6668: $3d
	ld   bc, $1030                                   ; $6669: $01 $30 $10
	db   $10                                         ; $666c: $10
	stop                                             ; $666d: $10 $00
	nop                                              ; $666f: $00
	ld   a, b                                        ; $6670: $78
	jr   nc, jr_09e_66bb                             ; $6671: $30 $48

	ld   c, b                                        ; $6673: $48

jr_09e_6674:
	ld   a, b                                        ; $6674: $78
	jr   nc, jr_09e_6677                             ; $6675: $30 $00

jr_09e_6677:
	nop                                              ; $6677: $00
	ld   hl, sp-$10                                  ; $6678: $f8 $f0
	sbc  $4c                                         ; $667a: $de $4c
	ld   hl, sp-$10                                  ; $667c: $f8 $f0
	nop                                              ; $667e: $00
	nop                                              ; $667f: $00
	nop                                              ; $6680: $00
	nop                                              ; $6681: $00
	nop                                              ; $6682: $00
	nop                                              ; $6683: $00
	nop                                              ; $6684: $00
	nop                                              ; $6685: $00
	ld   b, b                                        ; $6686: $40
	ld   b, b                                        ; $6687: $40
	ld   hl, sp+$00                                  ; $6688: $f8 $00
	cp   $fc                                         ; $668a: $fe $fc
	ld   hl, sp-$10                                  ; $668c: $f8 $f0
	nop                                              ; $668e: $00
	nop                                              ; $668f: $00
	nop                                              ; $6690: $00
	nop                                              ; $6691: $00
	nop                                              ; $6692: $00
	nop                                              ; $6693: $00
	nop                                              ; $6694: $00
	nop                                              ; $6695: $00
	ld   b, b                                        ; $6696: $40
	ld   b, b                                        ; $6697: $40
	dec  a                                           ; $6698: $3d
	ld   bc, $1030                                   ; $6699: $01 $30 $10
	db   $10                                         ; $669c: $10
	stop                                             ; $669d: $10 $00
	nop                                              ; $669f: $00
	ld   hl, sp+$30                                  ; $66a0: $f8 $30
	nop                                              ; $66a2: $00
	nop                                              ; $66a3: $00
	nop                                              ; $66a4: $00
	nop                                              ; $66a5: $00
	nop                                              ; $66a6: $00
	nop                                              ; $66a7: $00
	dec  a                                           ; $66a8: $3d
	ld   bc, $1030                                   ; $66a9: $01 $30 $10
	db   $10                                         ; $66ac: $10
	stop                                             ; $66ad: $10 $00
	nop                                              ; $66af: $00
	ld   hl, sp+$70                                  ; $66b0: $f8 $70
	ret  c                                           ; $66b2: $d8

	adc  b                                           ; $66b3: $88
	ld   a, b                                        ; $66b4: $78
	ld   [hl], b                                     ; $66b5: $70
	nop                                              ; $66b6: $00
	nop                                              ; $66b7: $00
	ld   de, $23ff                                   ; $66b8: $11 $ff $23

jr_09e_66bb:
	cp   $23                                         ; $66bb: $fe $23
	cp   $46                                         ; $66bd: $fe $46
	db   $fc                                         ; $66bf: $fc
	ld   b, [hl]                                     ; $66c0: $46
	db   $fc                                         ; $66c1: $fc
	ld   b, a                                        ; $66c2: $47
	rst  $38                                         ; $66c3: $ff
	adc  a                                           ; $66c4: $8f
	ld   hl, sp-$71                                  ; $66c5: $f8 $8f
	ld   hl, sp-$3f                                  ; $66c7: $f8 $c1
	ld   b, b                                        ; $66c9: $40
	ld   b, b                                        ; $66ca: $40
	ld   b, b                                        ; $66cb: $40
	ld   b, b                                        ; $66cc: $40
	ld   b, b                                        ; $66cd: $40
	ld   b, b                                        ; $66ce: $40
	ld   b, b                                        ; $66cf: $40
	jr   nz, jr_09e_66f2                             ; $66d0: $20 $20

	jr   nz, jr_09e_66f4                             ; $66d2: $20 $20

	ldh  [$e0], a                                    ; $66d4: $e0 $e0
	ldh  a, [$30]                                    ; $66d6: $f0 $30
	db   $fc                                         ; $66d8: $fc
	db   $fc                                         ; $66d9: $fc
	ld   l, [hl]                                     ; $66da: $6e
	ld   e, [hl]                                     ; $66db: $5e
	ld   hl, sp-$10                                  ; $66dc: $f8 $f0
	nop                                              ; $66de: $00
	nop                                              ; $66df: $00
	nop                                              ; $66e0: $00
	nop                                              ; $66e1: $00
	nop                                              ; $66e2: $00
	nop                                              ; $66e3: $00
	nop                                              ; $66e4: $00
	nop                                              ; $66e5: $00
	ld   b, b                                        ; $66e6: $40
	ld   b, b                                        ; $66e7: $40
	ld   de, $23ff                                   ; $66e8: $11 $ff $23
	cp   $23                                         ; $66eb: $fe $23
	cp   $46                                         ; $66ed: $fe $46
	db   $fc                                         ; $66ef: $fc
	ld   b, [hl]                                     ; $66f0: $46
	db   $fc                                         ; $66f1: $fc

jr_09e_66f2:
	ld   b, a                                        ; $66f2: $47
	rst  $38                                         ; $66f3: $ff

jr_09e_66f4:
	adc  a                                           ; $66f4: $8f
	ld   hl, sp-$72                                  ; $66f5: $f8 $8e
	ld   hl, sp+$3c                                  ; $66f7: $f8 $3c
	inc  c                                           ; $66f9: $0c
	cp   $fe                                         ; $66fa: $fe $fe
	ld   hl, sp-$10                                  ; $66fc: $f8 $f0
	nop                                              ; $66fe: $00
	nop                                              ; $66ff: $00
	nop                                              ; $6700: $00
	nop                                              ; $6701: $00
	nop                                              ; $6702: $00
	nop                                              ; $6703: $00
	nop                                              ; $6704: $00
	nop                                              ; $6705: $00
	ld   b, b                                        ; $6706: $40
	ld   b, b                                        ; $6707: $40
	inc  e                                           ; $6708: $1c
	inc  c                                           ; $6709: $0c
	cp   $0e                                         ; $670a: $fe $0e
	db   $fc                                         ; $670c: $fc
	ldh  a, [rP1]                                    ; $670d: $f0 $00
	nop                                              ; $670f: $00
	nop                                              ; $6710: $00
	nop                                              ; $6711: $00
	nop                                              ; $6712: $00
	nop                                              ; $6713: $00
	nop                                              ; $6714: $00
	nop                                              ; $6715: $00
	ld   b, b                                        ; $6716: $40
	ld   b, b                                        ; $6717: $40
	dec  a                                           ; $6718: $3d
	ld   bc, $1030                                   ; $6719: $01 $30 $10
	db   $10                                         ; $671c: $10
	stop                                             ; $671d: $10 $00
	nop                                              ; $671f: $00
	ld   a, b                                        ; $6720: $78
	ld   c, b                                        ; $6721: $48
	nop                                              ; $6722: $00
	nop                                              ; $6723: $00
	nop                                              ; $6724: $00
	nop                                              ; $6725: $00
	nop                                              ; $6726: $00
	nop                                              ; $6727: $00
	dec  a                                           ; $6728: $3d
	ld   bc, $1030                                   ; $6729: $01 $30 $10
	db   $10                                         ; $672c: $10
	stop                                             ; $672d: $10 $00
	nop                                              ; $672f: $00
	ld   a, b                                        ; $6730: $78
	ld   c, b                                        ; $6731: $48
	ret  z                                           ; $6732: $c8

	adc  b                                           ; $6733: $88
	ret  z                                           ; $6734: $c8

	add  b                                           ; $6735: $80
	ld   [hl], b                                     ; $6736: $70
	ld   d, b                                        ; $6737: $50
	adc  a                                           ; $6738: $8f
	ei                                               ; $6739: $fb
	adc  a                                           ; $673a: $8f
	ld   hl, sp-$71                                  ; $673b: $f8 $8f
	ld   hl, sp+$4f                                  ; $673d: $f8 $4f
	ld   hl, sp+$4f                                  ; $673f: $f8 $4f
	ld   hl, sp-$59                                  ; $6741: $f8 $a7
	db   $fc                                         ; $6743: $fc
	rst  $30                                         ; $6744: $f7
	db   $fc                                         ; $6745: $fc
	ccf                                              ; $6746: $3f
	ld   a, $c1                                      ; $6747: $3e $c1
	ld   b, b                                        ; $6749: $40
	ld   b, b                                        ; $674a: $40
	ld   b, b                                        ; $674b: $40
	ld   b, b                                        ; $674c: $40
	ld   b, b                                        ; $674d: $40
	ld   b, b                                        ; $674e: $40
	ld   b, b                                        ; $674f: $40
	jr   nz, jr_09e_6772                             ; $6750: $20 $20

	ldh  a, [$f0]                                    ; $6752: $f0 $f0
	db   $fc                                         ; $6754: $fc
	inc  l                                           ; $6755: $2c
	cp   $f2                                         ; $6756: $fe $f2
	ld   a, [hl]                                     ; $6758: $7e
	ld   e, b                                        ; $6759: $58
	ld   l, [hl]                                     ; $675a: $6e
	ld   e, h                                        ; $675b: $5c
	db   $fc                                         ; $675c: $fc
	ldh  [rP1], a                                    ; $675d: $e0 $00
	nop                                              ; $675f: $00
	nop                                              ; $6760: $00
	nop                                              ; $6761: $00
	nop                                              ; $6762: $00
	nop                                              ; $6763: $00
	nop                                              ; $6764: $00
	nop                                              ; $6765: $00
	ld   b, b                                        ; $6766: $40
	ld   b, b                                        ; $6767: $40
	pop  bc                                          ; $6768: $c1
	ld   b, b                                        ; $6769: $40
	ld   b, b                                        ; $676a: $40
	ld   b, b                                        ; $676b: $40
	ld   b, b                                        ; $676c: $40
	ld   b, b                                        ; $676d: $40
	ld   b, b                                        ; $676e: $40
	ld   b, b                                        ; $676f: $40
	jr   nz, jr_09e_6792                             ; $6770: $20 $20

jr_09e_6772:
	ldh  a, [$f0]                                    ; $6772: $f0 $f0
	db   $fc                                         ; $6774: $fc
	inc  l                                           ; $6775: $2c
	ld   b, $02                                      ; $6776: $06 $02
	cp   $f0                                         ; $6778: $fe $f0
	ld   a, [hl]                                     ; $677a: $7e
	ld   e, h                                        ; $677b: $5c
	db   $fc                                         ; $677c: $fc
	ldh  a, [rP1]                                    ; $677d: $f0 $00
	nop                                              ; $677f: $00
	nop                                              ; $6780: $00
	nop                                              ; $6781: $00
	nop                                              ; $6782: $00
	nop                                              ; $6783: $00
	nop                                              ; $6784: $00
	nop                                              ; $6785: $00
	ld   b, b                                        ; $6786: $40
	ld   b, b                                        ; $6787: $40
	pop  bc                                          ; $6788: $c1
	ld   b, b                                        ; $6789: $40
	ld   b, b                                        ; $678a: $40
	ld   b, b                                        ; $678b: $40
	ld   b, b                                        ; $678c: $40
	ld   b, b                                        ; $678d: $40
	ld   b, b                                        ; $678e: $40
	ld   b, b                                        ; $678f: $40
	jr   nz, @+$22                                   ; $6790: $20 $20

jr_09e_6792:
	ldh  a, [$f0]                                    ; $6792: $f0 $f0
	db   $fc                                         ; $6794: $fc
	inc  l                                           ; $6795: $2c
	ld   c, $02                                      ; $6796: $0e $02
	dec  a                                           ; $6798: $3d
	ld   bc, $1030                                   ; $6799: $01 $30 $10
	db   $10                                         ; $679c: $10
	stop                                             ; $679d: $10 $00

jr_09e_679f:
	nop                                              ; $679f: $00
	ld   a, b                                        ; $67a0: $78
	jr   nc, @+$4a                                   ; $67a1: $30 $48

	ld   c, b                                        ; $67a3: $48
	ld   c, b                                        ; $67a4: $48
	ld   c, b                                        ; $67a5: $48
	ld   a, b                                        ; $67a6: $78
	jr   nc, jr_09e_679f                             ; $67a7: $30 $f6

	nop                                              ; $67a9: $00
	adc  [hl]                                        ; $67aa: $8e
	nop                                              ; $67ab: $00
	db   $10                                         ; $67ac: $10
	ld   bc, $0200                                   ; $67ad: $01 $00 $02
	ld   bc, $0304                                   ; $67b0: $01 $04 $03
	dec  bc                                          ; $67b3: $0b
	rlca                                             ; $67b4: $07
	inc  b                                           ; $67b5: $04
	rlca                                             ; $67b6: $07
	dec  d                                           ; $67b7: $15
	rrca                                             ; $67b8: $0f
	ld   c, $0b                                      ; $67b9: $0e $0b
	ld   [hl+], a                                    ; $67bb: $22
	dec  de                                          ; $67bc: $1b
	inc  l                                           ; $67bd: $2c
	add  c                                           ; $67be: $81
	nop                                              ; $67bf: $00
	dec  bc                                          ; $67c0: $0b
	ld   bc, $0200                                   ; $67c1: $01 $00 $02
	nop                                              ; $67c4: $00
	rrca                                             ; $67c5: $0f
	inc  bc                                          ; $67c6: $03
	ccf                                              ; $67c7: $3f
	rrca                                             ; $67c8: $0f
	ld   a, a                                        ; $67c9: $7f
	ccf                                              ; $67ca: $3f
	rst  $38                                         ; $67cb: $ff
	ld   a, a                                        ; $67cc: $7f
	add  d                                           ; $67cd: $82
	rst  $38                                         ; $67ce: $ff
	inc  bc                                          ; $67cf: $03
	or   a                                           ; $67d0: $b7
	rst  $30                                         ; $67d1: $f7
	cpl                                              ; $67d2: $2f
	rst  $28                                         ; $67d3: $ef
	add  b                                           ; $67d4: $80
	db   $dd                                         ; $67d5: $dd
	dec  c                                           ; $67d6: $0d
	inc  sp                                          ; $67d7: $33
	sub  d                                           ; $67d8: $92
	add  [hl]                                        ; $67d9: $86
	add  l                                           ; $67da: $85
	ld   c, l                                        ; $67db: $4d
	add  hl, hl                                      ; $67dc: $29
	cp   c                                           ; $67dd: $b9
	nop                                              ; $67de: $00
	db   $fc                                         ; $67df: $fc
	nop                                              ; $67e0: $00
	cp   $fc                                         ; $67e1: $fe $fc
	rrca                                             ; $67e3: $0f
	ld   c, $80                                      ; $67e4: $0e $80
	di                                               ; $67e6: $f3
	add  b                                           ; $67e7: $80
	db   $fd                                         ; $67e8: $fd
	add  b                                           ; $67e9: $80
	cp   $8a                                         ; $67ea: $fe $8a
	rst  $38                                         ; $67ec: $ff
	add  b                                           ; $67ed: $80
	db   $fd                                         ; $67ee: $fd
	add  hl, bc                                      ; $67ef: $09
	ei                                               ; $67f0: $fb
	db   $db                                         ; $67f1: $db
	db   $d3                                         ; $67f2: $d3
	inc  sp                                          ; $67f3: $33
	ccf                                              ; $67f4: $3f
	nop                                              ; $67f5: $00
	ccf                                              ; $67f6: $3f
	nop                                              ; $67f7: $00
	rst  $38                                         ; $67f8: $ff
	ccf                                              ; $67f9: $3f
	add  b                                           ; $67fa: $80
	adc  a                                           ; $67fb: $8f
	add  b                                           ; $67fc: $80
	rlca                                             ; $67fd: $07
	add  b                                           ; $67fe: $80
	ccf                                              ; $67ff: $3f
	adc  e                                           ; $6800: $8b
	rst  $38                                         ; $6801: $ff
	add  d                                           ; $6802: $82
	rst  JumpTable                                         ; $6803: $df
	add  b                                           ; $6804: $80
	db   $ed                                         ; $6805: $ed
	add  b                                           ; $6806: $80
	and  $0c                                         ; $6807: $e6 $0c
	nop                                              ; $6809: $00
	add  b                                           ; $680a: $80
	nop                                              ; $680b: $00
	ldh  [$80], a                                    ; $680c: $e0 $80
	ld   hl, sp-$20                                  ; $680e: $f8 $e0
	db   $fc                                         ; $6810: $fc
	ld   hl, sp-$02                                  ; $6811: $f8 $fe
	db   $fc                                         ; $6813: $fc
	rst  $38                                         ; $6814: $ff
	cp   $82                                         ; $6815: $fe $82
	rst  $38                                         ; $6817: $ff
	add  b                                           ; $6818: $80
	ei                                               ; $6819: $fb
	add  b                                           ; $681a: $80
	db   $fd                                         ; $681b: $fd
	add  b                                           ; $681c: $80
	cp   $81                                         ; $681d: $fe $81
	rst  $38                                         ; $681f: $ff
	add  b                                           ; $6820: $80
	cp   e                                           ; $6821: $bb
	add  b                                           ; $6822: $80
	call $e080                                       ; $6823: $cd $80 $e0
	adc  e                                           ; $6826: $8b
	nop                                              ; $6827: $00
	inc  b                                           ; $6828: $04
	add  b                                           ; $6829: $80
	nop                                              ; $682a: $00
	ret  nz                                          ; $682b: $c0

	add  b                                           ; $682c: $80
	ldh  [$81], a                                    ; $682d: $e0 $81
	ret  nz                                          ; $682f: $c0

	ld   bc, $e0f0                                   ; $6830: $01 $f0 $e0
	add  b                                           ; $6833: $80
	ld   h, b                                        ; $6834: $60
	nop                                              ; $6835: $00
	cp   b                                           ; $6836: $b8
	add  c                                           ; $6837: $81
	or   b                                           ; $6838: $b0
	add  hl, bc                                      ; $6839: $09
	call c, $c3d8                                    ; $683a: $dc $d8 $c3
	rla                                              ; $683d: $17
	inc  b                                           ; $683e: $04
	rla                                              ; $683f: $17
	ld   l, [hl]                                     ; $6840: $6e

jr_09e_6841:
	ld   l, $22                                      ; $6841: $2e $22
	ld   l, $80                                      ; $6843: $2e $80
	inc  c                                           ; $6845: $0c
	ld   bc, $0c04                                   ; $6846: $01 $04 $0c
	add  d                                           ; $6849: $82
	inc  b                                           ; $684a: $04
	ld   bc, $0424                                   ; $684b: $01 $24 $04
	add  b                                           ; $684e: $80
	nop                                              ; $684f: $00
	nop                                              ; $6850: $00
	ld   [hl], b                                     ; $6851: $70
	add  c                                           ; $6852: $81
	nop                                              ; $6853: $00
	inc  b                                           ; $6854: $04
	ld   [hl+], a                                    ; $6855: $22
	nop                                              ; $6856: $00
	add  hl, bc                                      ; $6857: $09
	nop                                              ; $6858: $00
	inc  b                                           ; $6859: $04
	add  c                                           ; $685a: $81
	nop                                              ; $685b: $00
	dec  b                                           ; $685c: $05
	inc  h                                           ; $685d: $24
	ret  c                                           ; $685e: $d8

	ld   l, b                                        ; $685f: $68
	add  sp, $68                                     ; $6860: $e8 $68
	add  sp, -$80                                    ; $6862: $e8 $80
	ld   l, b                                        ; $6864: $68
	ld   bc, $7476                                   ; $6865: $01 $76 $74
	add  d                                           ; $6868: $82
	or   h                                           ; $6869: $b4
	add  b                                           ; $686a: $80
	call nz, $c880                                   ; $686b: $c4 $80 $c8
	ld   bc, $888a                                   ; $686e: $01 $8a $88
	add  b                                           ; $6871: $80
	ld   [$1400], sp                                 ; $6872: $08 $00 $14
	add  b                                           ; $6875: $80
	db   $10                                         ; $6876: $10
	inc  bc                                          ; $6877: $03
	ret  nc                                          ; $6878: $d0

	ret  nz                                          ; $6879: $c0

	ld   h, b                                        ; $687a: $60
	ld   l, b                                        ; $687b: $68
	add  l                                           ; $687c: $85
	and  b                                           ; $687d: $a0
	add  hl, bc                                      ; $687e: $09
	cp   b                                           ; $687f: $b8
	ret  nc                                          ; $6880: $d0

	call c, $ded8                                    ; $6881: $dc $d8 $de
	sbc  h                                           ; $6884: $9c
	sub  h                                           ; $6885: $94
	inc  e                                           ; $6886: $1c
	inc  de                                          ; $6887: $13
	ld   e, $80                                      ; $6888: $1e $80
	ld   a, $01                                      ; $688a: $3e $01
	ld   [hl-], a                                    ; $688c: $32
	ld   a, $80                                      ; $688d: $3e $80
	inc  a                                           ; $688f: $3c
	dec  b                                           ; $6890: $05
	inc  [hl]                                        ; $6891: $34
	inc  a                                           ; $6892: $3c
	sbc  c                                           ; $6893: $99
	sbc  b                                           ; $6894: $98
	sub  c                                           ; $6895: $91
	sub  b                                           ; $6896: $90
	add  b                                           ; $6897: $80
	jp   Jump_09e_6204                               ; $6898: $c3 $04 $62


	ld   h, e                                        ; $689b: $63
	add  [hl]                                        ; $689c: $86
	rlca                                             ; $689d: $07
	dec  hl                                          ; $689e: $2b
	add  c                                           ; $689f: $81
	jr   z, @-$7c                                    ; $68a0: $28 $82

	jr   nc, jr_09e_68a4                             ; $68a2: $30 $00

jr_09e_68a4:
	inc  [hl]                                        ; $68a4: $34
	add  e                                           ; $68a5: $83
	jr   nc, jr_09e_68aa                             ; $68a6: $30 $02

	ld   d, b                                        ; $68a8: $50
	db   $10                                         ; $68a9: $10

jr_09e_68aa:
	jr   c, jr_09e_6841                              ; $68aa: $38 $95

	nop                                              ; $68ac: $00
	ld   c, $c0                                      ; $68ad: $0e $c0
	nop                                              ; $68af: $00
	or   b                                           ; $68b0: $b0
	db   $10                                         ; $68b1: $10
	inc  a                                           ; $68b2: $3c
	inc  h                                           ; $68b3: $24
	ld   h, $20                                      ; $68b4: $26 $20
	ld   hl, $d222                                   ; $68b6: $21 $22 $d2
	inc  de                                          ; $68b9: $13
	ld   b, e                                        ; $68ba: $43
	dec  bc                                          ; $68bb: $0b
	ldh  a, [$81]                                    ; $68bc: $f0 $81
	nop                                              ; $68be: $00
	ld   a, [bc]                                     ; $68bf: $0a
	adc  h                                           ; $68c0: $8c
	nop                                              ; $68c1: $00
	ret  z                                           ; $68c2: $c8

	nop                                              ; $68c3: $00
	ld   [hl], b                                     ; $68c4: $70
	nop                                              ; $68c5: $00
	ld   c, c                                        ; $68c6: $49
	ld   h, d                                        ; $68c7: $62
	ldh  [c], a                                      ; $68c8: $e2
	jp   nz, $80ca                                   ; $68c9: $c2 $ca $80

	xor  d                                           ; $68cc: $aa
	add  b                                           ; $68cd: $80
	ld   h, d                                        ; $68ce: $62
	add  d                                           ; $68cf: $82
	ldh  [c], a                                      ; $68d0: $e2
	nop                                              ; $68d1: $00
	and  $82                                         ; $68d2: $e6 $82
	db   $e4                                         ; $68d4: $e4
	ld   bc, $4474                                   ; $68d5: $01 $74 $44
	add  c                                           ; $68d8: $81
	inc  b                                           ; $68d9: $04
	add  c                                           ; $68da: $81
	inc  c                                           ; $68db: $0c
	nop                                              ; $68dc: $00
	ld   [$0980], sp                                 ; $68dd: $08 $80 $09
	nop                                              ; $68e0: $00
	add  hl, de                                      ; $68e1: $19
	add  b                                           ; $68e2: $80
	jr   jr_09e_68e5                                 ; $68e3: $18 $00

jr_09e_68e5:
	ld   a, $87                                      ; $68e5: $3e $87
	nop                                              ; $68e7: $00
	inc  b                                           ; $68e8: $04
	add  b                                           ; $68e9: $80
	nop                                              ; $68ea: $00
	ret  nz                                          ; $68eb: $c0

	add  b                                           ; $68ec: $80
	nop                                              ; $68ed: $00
	add  c                                           ; $68ee: $81
	add  b                                           ; $68ef: $80
	ld   bc, $8000                                   ; $68f0: $01 $00 $80
	add  d                                           ; $68f3: $82
	nop                                              ; $68f4: $00
	inc  b                                           ; $68f5: $04
	ld   b, b                                        ; $68f6: $40
	nop                                              ; $68f7: $00
	add  b                                           ; $68f8: $80
	nop                                              ; $68f9: $00
	add  b                                           ; $68fa: $80
	add  c                                           ; $68fb: $81
	nop                                              ; $68fc: $00
	ld   [bc], a                                     ; $68fd: $02
	sbc  h                                           ; $68fe: $9c
	nop                                              ; $68ff: $00
	inc  hl                                          ; $6900: $23
	add  b                                           ; $6901: $80
	inc  e                                           ; $6902: $1c
	ld   bc, $1e0e                                   ; $6903: $01 $0e $1e
	add  b                                           ; $6906: $80
	ld   d, $01                                      ; $6907: $16 $01
	db   $10                                         ; $6909: $10
	add  hl, hl                                      ; $690a: $29

jr_09e_690b:
	add  c                                           ; $690b: $81
	dec  c                                           ; $690c: $0d
	add  b                                           ; $690d: $80
	dec  b                                           ; $690e: $05
	ld   a, [bc]                                     ; $690f: $0a
	inc  h                                           ; $6910: $24
	ld   de, $3575                                   ; $6911: $11 $75 $35
	rst  $10                                         ; $6914: $d7
	ld   d, [hl]                                     ; $6915: $56
	inc  de                                          ; $6916: $13
	dec  hl                                          ; $6917: $2b
	jr   z, @+$5e                                    ; $6918: $28 $5c

	jp   nc, $bf80                                   ; $691a: $d2 $80 $bf

	ld   b, $ae                                      ; $691d: $06 $ae
	ld   l, $6e                                      ; $691f: $2e $6e
	and  a                                           ; $6921: $a7
	rlca                                             ; $6922: $07
	ld   h, a                                        ; $6923: $67
	daa                                              ; $6924: $27
	add  b                                           ; $6925: $80
	scf                                              ; $6926: $37
	add  d                                           ; $6927: $82
	ld   [hl-], a                                    ; $6928: $32
	ld   d, $c0                                      ; $6929: $16 $c0
	nop                                              ; $692b: $00
	ld   b, b                                        ; $692c: $40
	add  b                                           ; $692d: $80
	add  c                                           ; $692e: $81
	pop  bc                                          ; $692f: $c1
	ld   b, b                                        ; $6930: $40
	ld   h, b                                        ; $6931: $60
	ld   [bc], a                                     ; $6932: $02
	db   $10                                         ; $6933: $10
	add  hl, bc                                      ; $6934: $09
	nop                                              ; $6935: $00
	rst  ToBoot                                         ; $6936: $c7
	nop                                              ; $6937: $00
	pop  hl                                          ; $6938: $e1
	nop                                              ; $6939: $00
	inc  d                                           ; $693a: $14
	nop                                              ; $693b: $00
	dec  e                                           ; $693c: $1d
	nop                                              ; $693d: $00
	ld   l, d                                        ; $693e: $6a
	nop                                              ; $693f: $00
	ld   b, c                                        ; $6940: $41
	add  l                                           ; $6941: $85
	nop                                              ; $6942: $00
	inc  bc                                          ; $6943: $03
	ld   bc, $0200                                   ; $6944: $01 $00 $02
	nop                                              ; $6947: $00
	add  b                                           ; $6948: $80
	ld   bc, $0700                                   ; $6949: $01 $00 $07
	add  c                                           ; $694c: $81
	inc  bc                                          ; $694d: $03
	nop                                              ; $694e: $00
	ld   c, $83                                      ; $694f: $0e $83
	ld   b, $02                                      ; $6951: $06 $02
	ld   e, $0e                                      ; $6953: $1e $0e
	ld   a, [bc]                                     ; $6955: $0a

jr_09e_6956:
	add  c                                           ; $6956: $81
	ld   c, $04                                      ; $6957: $0e $04
	inc  d                                           ; $6959: $14
	ld   b, $89                                      ; $695a: $06 $89
	nop                                              ; $695c: $00
	ld   b, b                                        ; $695d: $40
	add  b                                           ; $695e: $80
	nop                                              ; $695f: $00
	dec  b                                           ; $6960: $05
	add  b                                           ; $6961: $80
	or   b                                           ; $6962: $b0
	ld   b, b                                        ; $6963: $40
	ld   c, b                                        ; $6964: $48
	jr   nz, jr_09e_690b                             ; $6965: $20 $a4

	add  b                                           ; $6967: $80
	xor  b                                           ; $6968: $a8
	rlca                                             ; $6969: $07
	ret  z                                           ; $696a: $c8

	adc  b                                           ; $696b: $88
	add  sp, -$14                                    ; $696c: $e8 $ec
	ldh  [rAUD4LEN], a                               ; $696e: $e0 $20
	ret  nz                                          ; $6970: $c0

	call nz, $1880                                   ; $6971: $c4 $80 $18
	ld   bc, $ea68                                   ; $6974: $01 $68 $ea
	add  b                                           ; $6977: $80
	xor  h                                           ; $6978: $ac
	ld   bc, $f1b4                                   ; $6979: $01 $b4 $f1
	add  c                                           ; $697c: $81
	sub  $00                                         ; $697d: $d6 $00
	ld   [de], a                                     ; $697f: $12
	add  c                                           ; $6980: $81
	ld   c, a                                        ; $6981: $4f
	inc  b                                           ; $6982: $04
	ld   e, a                                        ; $6983: $5f
	ld   d, a                                        ; $6984: $57
	rst  $10                                         ; $6985: $d7
	rla                                              ; $6986: $17
	ld   d, a                                        ; $6987: $57
	add  e                                           ; $6988: $83
	rla                                              ; $6989: $17
	nop                                              ; $698a: $00
	rra                                              ; $698b: $1f
	add  e                                           ; $698c: $83
	dec  de                                          ; $698d: $1b
	nop                                              ; $698e: $00
	dec  bc                                          ; $698f: $0b
	add  b                                           ; $6990: $80
	add  hl, de                                      ; $6991: $19
	ld   [bc], a                                     ; $6992: $02
	jr   jr_09e_69ae                                 ; $6993: $18 $19

	jr   @-$7c                                       ; $6995: $18 $82

	inc  e                                           ; $6997: $1c
	ld   [bc], a                                     ; $6998: $02
	jr   jr_09e_69b7                                 ; $6999: $18 $1c

	ld   a, [hl+]                                    ; $699b: $2a
	add  l                                           ; $699c: $85
	rst  $38                                         ; $699d: $ff
	add  b                                           ; $699e: $80
	ccf                                              ; $699f: $3f
	inc  bc                                          ; $69a0: $03
	sbc  a                                           ; $69a1: $9f
	rra                                              ; $69a2: $1f
	daa                                              ; $69a3: $27
	rlca                                             ; $69a4: $07
	add  b                                           ; $69a5: $80
	ld   bc, $0280                                   ; $69a6: $01 $80 $02
	inc  bc                                          ; $69a9: $03
	ld   [hl], e                                     ; $69aa: $73
	inc  bc                                          ; $69ab: $03
	db   $db                                         ; $69ac: $db
	dec  bc                                          ; $69ad: $0b

jr_09e_69ae:
	add  d                                           ; $69ae: $82
	ei                                               ; $69af: $fb
	add  b                                           ; $69b0: $80
	ld   [hl], a                                     ; $69b1: $77
	add  b                                           ; $69b2: $80
	cp   a                                           ; $69b3: $bf
	add  b                                           ; $69b4: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69b5: $cf
	nop                                              ; $69b6: $00

jr_09e_69b7:
	db   $db                                         ; $69b7: $db
	add  l                                           ; $69b8: $85
	jr   jr_09e_69bb                                 ; $69b9: $18 $00

jr_09e_69bb:
	ld   a, b                                        ; $69bb: $78
	adc  c                                           ; $69bc: $89
	jr   c, jr_09e_69bf                              ; $69bd: $38 $00

jr_09e_69bf:
	db   $f4                                         ; $69bf: $f4
	add  c                                           ; $69c0: $81
	ld   [hl], b                                     ; $69c1: $70
	nop                                              ; $69c2: $00
	add  sp, -$7f                                    ; $69c3: $e8 $81
	ldh  [rP1], a                                    ; $69c5: $e0 $00
	ret  nc                                          ; $69c7: $d0

	add  c                                           ; $69c8: $81
	ret  nz                                          ; $69c9: $c0

	ld   [bc], a                                     ; $69ca: $02
	sub  $1c                                         ; $69cb: $d6 $1c
	inc  d                                           ; $69cd: $14
	add  c                                           ; $69ce: $81
	inc  e                                           ; $69cf: $1c

jr_09e_69d0:
	nop                                              ; $69d0: $00
	jr   jr_09e_6956                                 ; $69d1: $18 $83

	inc  e                                           ; $69d3: $1c
	nop                                              ; $69d4: $00
	inc  d                                           ; $69d5: $14
	add  c                                           ; $69d6: $81
	inc  e                                           ; $69d7: $1c
	nop                                              ; $69d8: $00
	inc  c                                           ; $69d9: $0c
	add  e                                           ; $69da: $83
	inc  e                                           ; $69db: $1c
	add  d                                           ; $69dc: $82
	inc  d                                           ; $69dd: $14
	nop                                              ; $69de: $00
	ld   [hl], h                                     ; $69df: $74
	add  e                                           ; $69e0: $83
	inc  [hl]                                        ; $69e1: $34
	inc  bc                                          ; $69e2: $03
	ld   c, b                                        ; $69e3: $48
	ret  z                                           ; $69e4: $c8

	adc  d                                           ; $69e5: $8a
	adc  b                                           ; $69e6: $88
	add  b                                           ; $69e7: $80
	ld   [$1406], sp                                 ; $69e8: $08 $06 $14
	db   $10                                         ; $69eb: $10
	ld   d, b                                        ; $69ec: $50
	sub  b                                           ; $69ed: $90
	ldh  [rLCDC], a                                  ; $69ee: $e0 $40
	ld   c, b                                        ; $69f0: $48
	add  c                                           ; $69f1: $81
	add  b                                           ; $69f2: $80
	add  d                                           ; $69f3: $82
	and  b                                           ; $69f4: $a0
	inc  b                                           ; $69f5: $04
	ld   hl, sp+$10                                  ; $69f6: $f8 $10
	call c, $de58                                    ; $69f8: $dc $58 $de
	add  b                                           ; $69fb: $80
	sbc  h                                           ; $69fc: $9c
	ld   [bc], a                                     ; $69fd: $02
	inc  d                                           ; $69fe: $14
	rla                                              ; $69ff: $17
	ld   a, [de]                                     ; $6a00: $1a
	add  b                                           ; $6a01: $80
	ld   a, [hl-]                                    ; $6a02: $3a
	nop                                              ; $6a03: $00
	ei                                               ; $6a04: $fb
	rst  $38                                         ; $6a05: $ff
	nop                                              ; $6a06: $00
	rst  $38                                         ; $6a07: $ff
	nop                                              ; $6a08: $00
	cp   e                                           ; $6a09: $bb
	nop                                              ; $6a0a: $00
	ld   [bc], a                                     ; $6a0b: $02
	sub  b                                           ; $6a0c: $90
	nop                                              ; $6a0d: $00
	and  b                                           ; $6a0e: $a0
	add  b                                           ; $6a0f: $80
	ld   [bc], a                                     ; $6a10: $02
	ld   bc, $1646                                   ; $6a11: $01 $46 $16
	add  b                                           ; $6a14: $80
	inc  b                                           ; $6a15: $04
	nop                                              ; $6a16: $00
	adc  l                                           ; $6a17: $8d
	add  c                                           ; $6a18: $81
	inc  c                                           ; $6a19: $0c
	nop                                              ; $6a1a: $00
	ld   e, $80                                      ; $6a1b: $1e $80
	sbc  [hl]                                        ; $6a1d: $9e
	ld   bc, $66e6                                   ; $6a1e: $01 $e6 $66
	add  b                                           ; $6a21: $80
	ld   b, [hl]                                     ; $6a22: $46
	ld   [bc], a                                     ; $6a23: $02
	ld   b, $a6                                      ; $6a24: $06 $a6
	ld   h, $81                                      ; $6a26: $26 $81
	ld   d, [hl]                                     ; $6a28: $56
	ld   [bc], a                                     ; $6a29: $02
	ld   d, d                                        ; $6a2a: $52
	ld   e, d                                        ; $6a2b: $5a
	ld   c, d                                        ; $6a2c: $4a
	add  c                                           ; $6a2d: $81
	xor  d                                           ; $6a2e: $aa
	rlca                                             ; $6a2f: $07
	ld   h, a                                        ; $6a30: $67
	ld   d, [hl]                                     ; $6a31: $56
	ld   b, [hl]                                     ; $6a32: $46
	adc  e                                           ; $6a33: $8b
	and  d                                           ; $6a34: $a2
	call nz, $f3d1                                   ; $6a35: $c4 $d1 $f3
	add  b                                           ; $6a38: $80
	sub  e                                           ; $6a39: $93
	inc  bc                                          ; $6a3a: $03
	ret                                              ; $6a3b: $c9


	ld   c, c                                        ; $6a3c: $49
	ld   l, c                                        ; $6a3d: $69
	jp   hl                                          ; $6a3e: $e9


	add  b                                           ; $6a3f: $80
	push hl                                          ; $6a40: $e5
	nop                                              ; $6a41: $00
	nop                                              ; $6a42: $00
	add  b                                           ; $6a43: $80

jr_09e_6a44:
	ld   a, a                                        ; $6a44: $7f
	nop                                              ; $6a45: $00
	rst  $38                                         ; $6a46: $ff
	add  b                                           ; $6a47: $80
	db   $fc                                         ; $6a48: $fc
	add  b                                           ; $6a49: $80
	ld   hl, sp-$7e                                  ; $6a4a: $f8 $82
	nop                                              ; $6a4c: $00
	add  b                                           ; $6a4d: $80
	jr   nz, jr_09e_69d0                             ; $6a4e: $20 $80

	ldh  [$30], a                                    ; $6a50: $e0 $30
	rra                                              ; $6a52: $1f
	ld   c, $07                                      ; $6a53: $0e $07
	nop                                              ; $6a55: $00
	add  b                                           ; $6a56: $80
	ld   [bc], a                                     ; $6a57: $02
	jp   nz, $eb82                                   ; $6a58: $c2 $82 $eb

jr_09e_6a5b:
	bit  5, e                                        ; $6a5b: $cb $6b
	ld   h, c                                        ; $6a5d: $61
	add  hl, de                                      ; $6a5e: $19
	sbc  b                                           ; $6a5f: $98
	add  c                                           ; $6a60: $81
	ld   b, c                                        ; $6a61: $41
	scf                                              ; $6a62: $37
	ld   bc, $01c9                                   ; $6a63: $01 $c9 $01
	or   c                                           ; $6a66: $b1
	add  b                                           ; $6a67: $80
	adc  h                                           ; $6a68: $8c
	ld   h, b                                        ; $6a69: $60
	ld   h, e                                        ; $6a6a: $63
	inc  c                                           ; $6a6b: $0c
	ld   a, l                                        ; $6a6c: $7d
	inc  c                                           ; $6a6d: $0c
	ld   c, h                                        ; $6a6e: $4c
	inc  c                                           ; $6a6f: $0c
	cp   h                                           ; $6a70: $bc
	add  h                                           ; $6a71: $84

jr_09e_6a72:
	ld   a, [$ffc0]                                  ; $6a72: $fa $c0 $ff
	add  b                                           ; $6a75: $80
	cp   a                                           ; $6a76: $bf
	nop                                              ; $6a77: $00
	jp   nz, $2500                                   ; $6a78: $c2 $00 $25

	jp   nz, $83ca                                   ; $6a7b: $c2 $ca $83

	cp   e                                           ; $6a7e: $bb
	add  b                                           ; $6a7f: $80
	sub  b                                           ; $6a80: $90
	add  e                                           ; $6a81: $83
	ld   b, h                                        ; $6a82: $44
	add  e                                           ; $6a83: $83

jr_09e_6a84:
	nop                                              ; $6a84: $00
	ld   [hl+], a                                    ; $6a85: $22
	inc  c                                           ; $6a86: $0c
	nop                                              ; $6a87: $00
	sub  e                                           ; $6a88: $93
	inc  c                                           ; $6a89: $0c
	ld   l, h                                        ; $6a8a: $6c
	inc  c                                           ; $6a8b: $0c
	ld   l, d                                        ; $6a8c: $6a
	adc  b                                           ; $6a8d: $88
	xor  d                                           ; $6a8e: $aa
	sbc  b                                           ; $6a8f: $98
	inc  a                                           ; $6a90: $3c
	nop                                              ; $6a91: $00
	db   $10                                         ; $6a92: $10
	ld   [bc], a                                     ; $6a93: $02
	ld   a, [bc]                                     ; $6a94: $0a
	inc  bc                                          ; $6a95: $03
	rst  ToBoot                                         ; $6a96: $c7
	nop                                              ; $6a97: $00
	jr   nz, jr_09e_6a5b                             ; $6a98: $20 $c1

	push de                                          ; $6a9a: $d5
	pop  bc                                          ; $6a9b: $c1
	ret                                              ; $6a9c: $c9


	call nc, $a2c8                                   ; $6a9d: $d4 $c8 $a2
	cp   h                                           ; $6aa0: $bc
	ld   e, b                                        ; $6aa1: $58
	ld   e, l                                        ; $6aa2: $5d
	ret  nc                                          ; $6aa3: $d0

	pop  de                                          ; $6aa4: $d1
	ret  nc                                          ; $6aa5: $d0

	db   $db                                         ; $6aa6: $db
	pop  bc                                          ; $6aa7: $c1
	rst  $10                                         ; $6aa8: $d7
	add  c                                           ; $6aa9: $81
	jp   $e507                                       ; $6aaa: $c3 $07 $e5


	add  c                                           ; $6aad: $81
	add  d                                           ; $6aae: $82
	add  b                                           ; $6aaf: $80
	ld   a, [hl+]                                    ; $6ab0: $2a
	inc  d                                           ; $6ab1: $14
	add  sp, $6a                                     ; $6ab2: $e8 $6a
	add  b                                           ; $6ab4: $80
	ldh  a, [c]                                      ; $6ab5: $f2
	dec  bc                                          ; $6ab6: $0b
	ldh  [c], a                                      ; $6ab7: $e2
	and  $d6                                         ; $6ab8: $e6 $d6
	call nc, $a4ac                                   ; $6aba: $d4 $ac $a4
	ld   h, [hl]                                     ; $6abd: $66
	ld   h, b                                        ; $6abe: $60
	ret  nc                                          ; $6abf: $d0

	ret  nz                                          ; $6ac0: $c0

	ld   [hl+], a                                    ; $6ac1: $22
	jr   c, jr_09e_6a44                              ; $6ac2: $38 $80

	rlca                                             ; $6ac4: $07
	add  b                                           ; $6ac5: $80
	ld   d, b                                        ; $6ac6: $50
	dec  b                                           ; $6ac7: $05
	or   b                                           ; $6ac8: $b0
	or   a                                           ; $6ac9: $b7
	cp   a                                           ; $6aca: $bf
	cp   e                                           ; $6acb: $bb
	rst  JumpTable                                         ; $6acc: $df
	db   $dd                                         ; $6acd: $dd
	add  b                                           ; $6ace: $80
	call c, $ef07                                    ; $6acf: $dc $07 $ef
	xor  $b8                                         ; $6ad2: $ee $b8
	ld   b, e                                        ; $6ad4: $43
	ldh  [c], a                                      ; $6ad5: $e2
	ld   [bc], a                                     ; $6ad6: $02
	rst  $38                                         ; $6ad7: $ff
	db   $e4                                         ; $6ad8: $e4
	add  b                                           ; $6ad9: $80
	rrca                                             ; $6ada: $0f
	inc  bc                                          ; $6adb: $03
	ld   b, b                                        ; $6adc: $40
	sub  b                                           ; $6add: $90
	inc  d                                           ; $6ade: $14
	jr   @-$7b                                       ; $6adf: $18 $83

	db   $10                                         ; $6ae1: $10
	ld   b, $11                                      ; $6ae2: $06 $11
	ld   d, c                                        ; $6ae4: $51
	ld   sp, $20a5                                   ; $6ae5: $31 $a5 $20
	cp   b                                           ; $6ae8: $b8
	add  b                                           ; $6ae9: $80
	add  b                                           ; $6aea: $80
	ld   a, a                                        ; $6aeb: $7f
	add  b                                           ; $6aec: $80
	nop                                              ; $6aed: $00
	nop                                              ; $6aee: $00
	jr   jr_09e_6a72                                 ; $6aef: $18 $81

	ld   b, e                                        ; $6af1: $43
	nop                                              ; $6af2: $00
	ld   b, a                                        ; $6af3: $47
	add  b                                           ; $6af4: $80
	and  d                                           ; $6af5: $a2

jr_09e_6af6:
	ld   [bc], a                                     ; $6af6: $02
	and  b                                           ; $6af7: $a0
	cp   l                                           ; $6af8: $bd
	ld   bc, $fe80                                   ; $6af9: $01 $80 $fe
	inc  b                                           ; $6afc: $04
	ld   bc, wIsGBC                                   ; $6afd: $01 $00 $c2
	inc  e                                           ; $6b00: $1c
	jr   c, jr_09e_6a84                              ; $6b01: $38 $81

	ld   [$1000], sp                                 ; $6b03: $08 $00 $10
	adc  l                                           ; $6b06: $8d
	nop                                              ; $6b07: $00
	nop                                              ; $6b08: $00
	rst  $38                                         ; $6b09: $ff
	add  b                                           ; $6b0a: $80
	nop                                              ; $6b0b: $00
	add  b                                           ; $6b0c: $80
	rst  $38                                         ; $6b0d: $ff
	dec  bc                                          ; $6b0e: $0b
	ldh  a, [rIE]                                    ; $6b0f: $f0 $ff
	ld   c, $fe                                      ; $6b11: $0e $fe
	add  b                                           ; $6b13: $80
	ld   b, c                                        ; $6b14: $41
	nop                                              ; $6b15: $00
	add  c                                           ; $6b16: $81
	nop                                              ; $6b17: $00
	ld   a, $00                                      ; $6b18: $3e $00
	ld   a, [hl]                                     ; $6b1a: $7e
	rst  $38                                         ; $6b1b: $ff
	nop                                              ; $6b1c: $00
	rst  $38                                         ; $6b1d: $ff
	nop                                              ; $6b1e: $00
	rst  $38                                         ; $6b1f: $ff
	nop                                              ; $6b20: $00
	rst  $38                                         ; $6b21: $ff
	nop                                              ; $6b22: $00
	rst  $38                                         ; $6b23: $ff
	nop                                              ; $6b24: $00
	add  sp, $00                                     ; $6b25: $e8 $00
	dec  a                                           ; $6b27: $3d
	ld   bc, $7f00                                   ; $6b28: $01 $00 $7f
	add  c                                           ; $6b2b: $81
	ret  nz                                          ; $6b2c: $c0

	nop                                              ; $6b2d: $00
	add  b                                           ; $6b2e: $80
	add  l                                           ; $6b2f: $85
	ldh  [rP1], a                                    ; $6b30: $e0 $00
	ret  nz                                          ; $6b32: $c0

	add  c                                           ; $6b33: $81
	ldh  a, [rSB]                                    ; $6b34: $f0 $01
	xor  [hl]                                        ; $6b36: $ae
	ld   b, c                                        ; $6b37: $41
	add  b                                           ; $6b38: $80
	and  b                                           ; $6b39: $a0
	xor  c                                           ; $6b3a: $a9
	nop                                              ; $6b3b: $00
	ld   bc, $1f20                                   ; $6b3c: $01 $20 $1f
	add  e                                           ; $6b3f: $83
	jr   nz, jr_09e_6b42                             ; $6b40: $20 $00

jr_09e_6b42:
	nop                                              ; $6b42: $00
	add  e                                           ; $6b43: $83
	stop                                             ; $6b44: $10 $00
	nop                                              ; $6b46: $00
	add  c                                           ; $6b47: $81
	ld   [$f800], sp                                 ; $6b48: $08 $00 $f8
	add  e                                           ; $6b4b: $83
	nop                                              ; $6b4c: $00
	add  b                                           ; $6b4d: $80
	ld   bc, $0382                                   ; $6b4e: $01 $82 $03
	add  b                                           ; $6b51: $80
	rlca                                             ; $6b52: $07
	add  d                                           ; $6b53: $82
	rrca                                             ; $6b54: $0f
	add  b                                           ; $6b55: $80
	ld   a, a                                        ; $6b56: $7f
	adc  d                                           ; $6b57: $8a
	rst  $38                                         ; $6b58: $ff
	rlca                                             ; $6b59: $07
	scf                                              ; $6b5a: $37
	ld   hl, sp+$14                                  ; $6b5b: $f8 $14
	db   $fc                                         ; $6b5d: $fc
	call c, $fafc                                    ; $6b5e: $dc $fc $fa
	cp   $80                                         ; $6b61: $fe $80
	rst  $38                                         ; $6b63: $ff
	nop                                              ; $6b64: $00
	db   $fd                                         ; $6b65: $fd
	add  c                                           ; $6b66: $81

jr_09e_6b67:
	rst  $38                                         ; $6b67: $ff
	nop                                              ; $6b68: $00
	cp   $83                                         ; $6b69: $fe $83
	rst  $38                                         ; $6b6b: $ff
	inc  bc                                          ; $6b6c: $03
	ldh  [rIE], a                                    ; $6b6d: $e0 $ff
	db   $10                                         ; $6b6f: $10
	ldh  a, [$82]                                    ; $6b70: $f0 $82
	db   $10                                         ; $6b72: $10
	add  b                                           ; $6b73: $80
	jr   nz, jr_09e_6af6                             ; $6b74: $20 $80

	and  b                                           ; $6b76: $a0
	nop                                              ; $6b77: $00
	nop                                              ; $6b78: $00
	add  c                                           ; $6b79: $81
	rst  $38                                         ; $6b7a: $ff
	ld   bc, $ff00                                   ; $6b7b: $01 $00 $ff
	adc  b                                           ; $6b7e: $88
	jr   nz, jr_09e_6b81                             ; $6b7f: $20 $00

jr_09e_6b81:
	nop                                              ; $6b81: $00
	add  c                                           ; $6b82: $81
	rst  $38                                         ; $6b83: $ff
	inc  bc                                          ; $6b84: $03
	rlca                                             ; $6b85: $07
	rst  $38                                         ; $6b86: $ff
	adc  b                                           ; $6b87: $88
	adc  a                                           ; $6b88: $8f
	add  b                                           ; $6b89: $80
	add  h                                           ; $6b8a: $84
	add  b                                           ; $6b8b: $80
	add  d                                           ; $6b8c: $82
	add  b                                           ; $6b8d: $80
	ld   b, d                                        ; $6b8e: $42
	add  b                                           ; $6b8f: $80
	ld   b, c                                        ; $6b90: $41
	ld   bc, $a424                                   ; $6b91: $01 $24 $a4
	add  d                                           ; $6b94: $82
	xor  b                                           ; $6b95: $a8
	ld   bc, $e969                                   ; $6b96: $01 $69 $e9
	add  b                                           ; $6b99: $80
	ld   sp, $1180                                   ; $6b9a: $31 $80 $11
	add  b                                           ; $6b9d: $80
	ld   [de], a                                     ; $6b9e: $12
	add  b                                           ; $6b9f: $80
	ld   [hl+], a                                    ; $6ba0: $22
	nop                                              ; $6ba1: $00
	add  b                                           ; $6ba2: $80
	add  h                                           ; $6ba3: $84
	rst  $38                                         ; $6ba4: $ff
	add  c                                           ; $6ba5: $81
	ld   a, a                                        ; $6ba6: $7f
	add  b                                           ; $6ba7: $80
	ccf                                              ; $6ba8: $3f
	add  b                                           ; $6ba9: $80
	rra                                              ; $6baa: $1f
	add  b                                           ; $6bab: $80
	rrca                                             ; $6bac: $0f
	nop                                              ; $6bad: $00
	ldh  [$83], a                                    ; $6bae: $e0 $83
	ldh  a, [rP1]                                    ; $6bb0: $f0 $00
	ldh  [$83], a                                    ; $6bb2: $e0 $83
	ld   hl, sp+$00                                  ; $6bb4: $f8 $00
	ldh  a, [$81]                                    ; $6bb6: $f0 $81
	db   $fc                                         ; $6bb8: $fc
	nop                                              ; $6bb9: $00
	ei                                               ; $6bba: $fb
	add  a                                           ; $6bbb: $87
	nop                                              ; $6bbc: $00
	dec  b                                           ; $6bbd: $05
	ld   b, b                                        ; $6bbe: $40
	jr   nz, jr_09e_6c01                             ; $6bbf: $20 $40

	ld   h, b                                        ; $6bc1: $60
	ld   b, b                                        ; $6bc2: $40
	nop                                              ; $6bc3: $00
	add  b                                           ; $6bc4: $80
	ld   bc, $0000                                   ; $6bc5: $01 $00 $00
	add  e                                           ; $6bc8: $83
	ld   bc, $0380                                   ; $6bc9: $01 $80 $03
	nop                                              ; $6bcc: $00
	ld   bc, $0383                                   ; $6bcd: $01 $83 $03
	nop                                              ; $6bd0: $00
	inc  a                                           ; $6bd1: $3c
	add  c                                           ; $6bd2: $81
	ldh  a, [rDIV]                                   ; $6bd3: $f0 $04
	add  b                                           ; $6bd5: $80
	ld   hl, sp+$38                                  ; $6bd6: $f8 $38
	ld   hl, sp+$78                                  ; $6bd8: $f8 $78
	add  c                                           ; $6bda: $81
	ld   hl, sp+$00                                  ; $6bdb: $f8 $00
	ldh  a, [$81]                                    ; $6bdd: $f0 $81
	db   $fc                                         ; $6bdf: $fc
	nop                                              ; $6be0: $00
	ei                                               ; $6be1: $fb
	add  l                                           ; $6be2: $85
	nop                                              ; $6be3: $00
	add  b                                           ; $6be4: $80
	jr   z, jr_09e_6b67                              ; $6be5: $28 $80

	nop                                              ; $6be7: $00
	add  b                                           ; $6be8: $80
	ld   d, b                                        ; $6be9: $50
	add  b                                           ; $6bea: $80
	add  b                                           ; $6beb: $80
	add  h                                           ; $6bec: $84
	nop                                              ; $6bed: $00
	add  b                                           ; $6bee: $80
	ld   c, $82                                      ; $6bef: $0e $82
	rra                                              ; $6bf1: $1f
	add  b                                           ; $6bf2: $80
	ccf                                              ; $6bf3: $3f
	add  b                                           ; $6bf4: $80
	ld   a, a                                        ; $6bf5: $7f
	adc  b                                           ; $6bf6: $88
	nop                                              ; $6bf7: $00
	add  h                                           ; $6bf8: $84
	add  b                                           ; $6bf9: $80
	ld   [bc], a                                     ; $6bfa: $02
	ld   hl, sp-$10                                  ; $6bfb: $f8 $f0
	db   $fc                                         ; $6bfd: $fc
	add  c                                           ; $6bfe: $81
	ldh  [rP1], a                                    ; $6bff: $e0 $00

jr_09e_6c01:
	ld   [bc], a                                     ; $6c01: $02
	add  e                                           ; $6c02: $83
	ldh  [rSB], a                                    ; $6c03: $e0 $01
	jp   nz, $80c0                                   ; $6c05: $c2 $c0 $80

	nop                                              ; $6c08: $00
	ld   bc, $1f14                                   ; $6c09: $01 $14 $1f
	add  b                                           ; $6c0c: $80
	ccf                                              ; $6c0d: $3f
	add  d                                           ; $6c0e: $82
	ld   a, a                                        ; $6c0f: $7f
	add  b                                           ; $6c10: $80
	rrca                                             ; $6c11: $0f
	add  d                                           ; $6c12: $82
	add  b                                           ; $6c13: $80
	add  b                                           ; $6c14: $80
	ret  nz                                          ; $6c15: $c0

	adc  d                                           ; $6c16: $8a
	rst  $38                                         ; $6c17: $ff
	add  d                                           ; $6c18: $82
	nop                                              ; $6c19: $00
	nop                                              ; $6c1a: $00
	rst  $38                                         ; $6c1b: $ff
	add  l                                           ; $6c1c: $85
	nop                                              ; $6c1d: $00
	ld   c, $03                                      ; $6c1e: $0e $03
	nop                                              ; $6c20: $00
	rlca                                             ; $6c21: $07
	nop                                              ; $6c22: $00
	dec  c                                           ; $6c23: $0d
	nop                                              ; $6c24: $00
	ld   [de], a                                     ; $6c25: $12
	add  hl, bc                                      ; $6c26: $09
	or   d                                           ; $6c27: $b2
	and  b                                           ; $6c28: $a0
	ld   h, b                                        ; $6c29: $60
	ldh  [hScriptOpcodeParams], a                                    ; $6c2a: $e0 $a0
	ldh  [rAUD4LEN], a                               ; $6c2c: $e0 $20
	add  b                                           ; $6c2e: $80
	ldh  [rSC], a                                    ; $6c2f: $e0 $02
	ld   h, b                                        ; $6c31: $60
	db   $10                                         ; $6c32: $10

jr_09e_6c33:
	sub  b                                           ; $6c33: $90
	add  b                                           ; $6c34: $80
	ld   l, a                                        ; $6c35: $6f
	add  b                                           ; $6c36: $80
	sbc  c                                           ; $6c37: $99
	nop                                              ; $6c38: $00
	jr   nz, @-$79                                   ; $6c39: $20 $85

	rst  JumpTable                                         ; $6c3b: $df
	add  b                                           ; $6c3c: $80
	call c, $8307                                    ; $6c3d: $dc $07 $83
	add  b                                           ; $6c40: $80
	dec  c                                           ; $6c41: $0d
	ld   b, b                                        ; $6c42: $40
	ld   a, l                                        ; $6c43: $7d
	add  b                                           ; $6c44: $80
	dec  c                                           ; $6c45: $0d
	cp   [hl]                                        ; $6c46: $be
	add  h                                           ; $6c47: $84
	cp   a                                           ; $6c48: $bf
	add  b                                           ; $6c49: $80
	ccf                                              ; $6c4a: $3f
	rlca                                             ; $6c4b: $07
	jp   $2d03                                       ; $6c4c: $c3 $03 $2d


	ld   bc, $009a                                   ; $6c4f: $01 $9a $00
	xor  e                                           ; $6c52: $ab
	ld   [hl+], a                                    ; $6c53: $22
	add  b                                           ; $6c54: $80
	and  d                                           ; $6c55: $a2
	add  d                                           ; $6c56: $82
	and  h                                           ; $6c57: $a4
	add  d                                           ; $6c58: $82
	ld   h, h                                        ; $6c59: $64
	add  b                                           ; $6c5a: $80
	ld   d, h                                        ; $6c5b: $54
	add  b                                           ; $6c5c: $80
	jr   nc, @+$03                                   ; $6c5d: $30 $01

	ld   hl, sp+$07                                  ; $6c5f: $f8 $07
	add  d                                           ; $6c61: $82
	inc  bc                                          ; $6c62: $03
	add  h                                           ; $6c63: $84
	ld   bc, $0082                                   ; $6c64: $01 $82 $00
	ld   [bc], a                                     ; $6c67: $02
	ld   hl, sp-$04                                  ; $6c68: $f8 $fc
	ld   hl, sp-$7f                                  ; $6c6a: $f8 $81
	cp   $00                                         ; $6c6c: $fe $00
	db   $fc                                         ; $6c6e: $fc
	add  c                                           ; $6c6f: $81
	rst  $38                                         ; $6c70: $ff
	ld   b, $fe                                      ; $6c71: $06 $fe
	rst  $38                                         ; $6c73: $ff
	ld   sp, hl                                      ; $6c74: $f9
	rst  $38                                         ; $6c75: $ff
	or   $f9                                         ; $6c76: $f6 $f9
	or   $83                                         ; $6c78: $f6 $83
	nop                                              ; $6c7a: $00
	inc  bc                                          ; $6c7b: $03
	ld   a, h                                        ; $6c7c: $7c
	db   $fc                                         ; $6c7d: $fc
	add  b                                           ; $6c7e: $80
	rst  $38                                         ; $6c7f: $ff
	add  d                                           ; $6c80: $82
	ld   a, a                                        ; $6c81: $7f
	inc  b                                           ; $6c82: $04
	cp   a                                           ; $6c83: $bf
	ccf                                              ; $6c84: $3f
	ld   a, e                                        ; $6c85: $7b
	rlca                                             ; $6c86: $07
	inc  bc                                          ; $6c87: $03
	add  c                                           ; $6c88: $81
	rlca                                             ; $6c89: $07
	add  b                                           ; $6c8a: $80
	ccf                                              ; $6c8b: $3f
	nop                                              ; $6c8c: $00
	nop                                              ; $6c8d: $00
	add  c                                           ; $6c8e: $81
	ld   hl, sp-$7e                                  ; $6c8f: $f8 $82
	ldh  a, [$03]                                    ; $6c91: $f0 $03
	cp   e                                           ; $6c93: $bb
	cp   h                                           ; $6c94: $bc
	cp   d                                           ; $6c95: $ba
	cp   [hl]                                        ; $6c96: $be
	add  c                                           ; $6c97: $81
	sbc  [hl]                                        ; $6c98: $9e
	add  c                                           ; $6c99: $81
	cp   [hl]                                        ; $6c9a: $be
	nop                                              ; $6c9b: $00
	dec  a                                           ; $6c9c: $3d
	add  e                                           ; $6c9d: $83
	ccf                                              ; $6c9e: $3f
	ld   bc, $409e                                   ; $6c9f: $01 $9e $40
	add  b                                           ; $6ca2: $80
	add  e                                           ; $6ca3: $83
	add  b                                           ; $6ca4: $80
	rlca                                             ; $6ca5: $07
	add  b                                           ; $6ca6: $80
	adc  a                                           ; $6ca7: $8f
	add  b                                           ; $6ca8: $80
	rrca                                             ; $6ca9: $0f
	add  b                                           ; $6caa: $80
	ccf                                              ; $6cab: $3f
	add  b                                           ; $6cac: $80
	ld   e, a                                        ; $6cad: $5f
	add  b                                           ; $6cae: $80
	jr   z, jr_09e_6c33                              ; $6caf: $28 $82

	rst  $38                                         ; $6cb1: $ff
	add  b                                           ; $6cb2: $80
	db   $fd                                         ; $6cb3: $fd
	add  b                                           ; $6cb4: $80
	cp   $80                                         ; $6cb5: $fe $80
	push af                                          ; $6cb7: $f5
	add  b                                           ; $6cb8: $80
	add  sp, -$80                                    ; $6cb9: $e8 $80
	ret  nc                                          ; $6cbb: $d0

	add  b                                           ; $6cbc: $80
	xor  b                                           ; $6cbd: $a8
	add  b                                           ; $6cbe: $80
	add  b                                           ; $6cbf: $80
	adc  h                                           ; $6cc0: $8c
	nop                                              ; $6cc1: $00
	ld   [bc], a                                     ; $6cc2: $02
	db   $f4                                         ; $6cc3: $f4
	nop                                              ; $6cc4: $00
	ld   b, $83                                      ; $6cc5: $06 $83
	nop                                              ; $6cc7: $00
	nop                                              ; $6cc8: $00
	inc  bc                                          ; $6cc9: $03
	add  e                                           ; $6cca: $83
	nop                                              ; $6ccb: $00
	inc  bc                                          ; $6ccc: $03
	ld   bc, $cf00                                   ; $6ccd: $01 $00 $cf
	ret  nz                                          ; $6cd0: $c0

	add  b                                           ; $6cd1: $80
	ldh  [$80], a                                    ; $6cd2: $e0 $80
	ldh  a, [$80]                                    ; $6cd4: $f0 $80
	ld   hl, sp-$80                                  ; $6cd6: $f8 $80
	db   $fc                                         ; $6cd8: $fc
	add  d                                           ; $6cd9: $82
	rst  $38                                         ; $6cda: $ff
	add  b                                           ; $6cdb: $80
	ld   a, a                                        ; $6cdc: $7f
	add  h                                           ; $6cdd: $84
	nop                                              ; $6cde: $00
	add  d                                           ; $6cdf: $82
	ld   bc, $0380                                   ; $6ce0: $01 $80 $03
	add  d                                           ; $6ce3: $82
	rst  $38                                         ; $6ce4: $ff
	ld   [bc], a                                     ; $6ce5: $02
	pop  hl                                          ; $6ce6: $e1
	inc  c                                           ; $6ce7: $0c
	cpl                                              ; $6ce8: $2f
	add  b                                           ; $6ce9: $80
	jr   jr_09e_6cf1                                 ; $6cea: $18 $05

	nop                                              ; $6cec: $00
	ld   a, [de]                                     ; $6ced: $1a
	nop                                              ; $6cee: $00
	ld   h, [hl]                                     ; $6cef: $66
	nop                                              ; $6cf0: $00

jr_09e_6cf1:
	ld   bc, $0083                                   ; $6cf1: $01 $83 $00
	ld   bc, $a2e2                                   ; $6cf4: $01 $e2 $a2
	add  b                                           ; $6cf7: $80
	daa                                              ; $6cf8: $27
	add  d                                           ; $6cf9: $82
	ld   c, a                                        ; $6cfa: $4f
	add  b                                           ; $6cfb: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cfc: $cf
	add  b                                           ; $6cfd: $80
	rst  $20                                         ; $6cfe: $e7
	ld   bc, $f8b8                                   ; $6cff: $01 $b8 $f8
	add  b                                           ; $6d02: $80
	rst  $20                                         ; $6d03: $e7
	dec  bc                                          ; $6d04: $0b
	jp   nz, Jump_09e_6300                           ; $6d05: $c2 $00 $63

	nop                                              ; $6d08: $00
	ld   a, c                                        ; $6d09: $79
	nop                                              ; $6d0a: $00
	inc  b                                           ; $6d0b: $04
	nop                                              ; $6d0c: $00
	jr   nz, jr_09e_6d0f                             ; $6d0d: $20 $00

jr_09e_6d0f:
	ld   b, b                                        ; $6d0f: $40
	nop                                              ; $6d10: $00
	add  b                                           ; $6d11: $80
	ret  nz                                          ; $6d12: $c0

	ld   b, $3e                                      ; $6d13: $06 $3e
	inc  a                                           ; $6d15: $3c
	cp   d                                           ; $6d16: $ba
	nop                                              ; $6d17: $00
	ld   h, [hl]                                     ; $6d18: $66
	nop                                              ; $6d19: $00
	or   b                                           ; $6d1a: $b0
	add  l                                           ; $6d1b: $85
	nop                                              ; $6d1c: $00
	inc  b                                           ; $6d1d: $04
	dec  b                                           ; $6d1e: $05
	nop                                              ; $6d1f: $00
	rrca                                             ; $6d20: $0f
	nop                                              ; $6d21: $00
	daa                                              ; $6d22: $27
	add  c                                           ; $6d23: $81
	or   b                                           ; $6d24: $b0
	ld   bc, $a8a0                                   ; $6d25: $01 $a0 $a8
	add  b                                           ; $6d28: $80
	add  sp, $01                                     ; $6d29: $e8 $01
	ld   hl, sp-$01                                  ; $6d2b: $f8 $ff
	add  b                                           ; $6d2d: $80
	pop  bc                                          ; $6d2e: $c1
	add  b                                           ; $6d2f: $80
	ret  nz                                          ; $6d30: $c0

	add  c                                           ; $6d31: $81
	rst  $38                                         ; $6d32: $ff
	add  d                                           ; $6d33: $82
	nop                                              ; $6d34: $00
	add  b                                           ; $6d35: $80
	inc  a                                           ; $6d36: $3c
	ld   [bc], a                                     ; $6d37: $02
	ld   a, [hl]                                     ; $6d38: $7e
	ld   [hl], d                                     ; $6d39: $72
	di                                               ; $6d3a: $f3
	add  b                                           ; $6d3b: $80
	ld   a, [$5a80]                                  ; $6d3c: $fa $80 $5a
	add  b                                           ; $6d3f: $80
	rst  JumpTable                                         ; $6d40: $df
	rlca                                             ; $6d41: $07
	sub  e                                           ; $6d42: $93
	ld   [hl], a                                     ; $6d43: $77
	db   $10                                         ; $6d44: $10
	inc  d                                           ; $6d45: $14
	dec  b                                           ; $6d46: $05
	dec  h                                           ; $6d47: $25
	ld   l, c                                        ; $6d48: $69
	add  hl, hl                                      ; $6d49: $29
	add  b                                           ; $6d4a: $80
	ld   c, d                                        ; $6d4b: $4a
	ld   bc, $fe7e                                   ; $6d4c: $01 $7e $fe
	add  b                                           ; $6d4f: $80
	jp   $f080                                       ; $6d50: $c3 $80 $f0


	inc  b                                           ; $6d53: $04
	ret  nz                                          ; $6d54: $c0

	ccf                                              ; $6d55: $3f
	ld   c, $8e                                      ; $6d56: $0e $8e
	add  b                                           ; $6d58: $80
	add  b                                           ; $6d59: $80
	ld   h, c                                        ; $6d5a: $61
	ld   a, [bc]                                     ; $6d5b: $0a
	sbc  d                                           ; $6d5c: $9a
	sbc  e                                           ; $6d5d: $9b
	ld   [hl], h                                     ; $6d5e: $74
	ld   [hl], l                                     ; $6d5f: $75
	ld   h, b                                        ; $6d60: $60
	ld   h, l                                        ; $6d61: $65
	nop                                              ; $6d62: $00
	ldh  [rP1], a                                    ; $6d63: $e0 $00
	dec  d                                           ; $6d65: $15
	ldh  a, [$80]                                    ; $6d66: $f0 $80
	nop                                              ; $6d68: $00
	ld   [de], a                                     ; $6d69: $12
	ld   [hl], b                                     ; $6d6a: $70
	nop                                              ; $6d6b: $00
	xor  d                                           ; $6d6c: $aa
	nop                                              ; $6d6d: $00
	scf                                              ; $6d6e: $37

jr_09e_6d6f:
	nop                                              ; $6d6f: $00
	jr   jr_09e_6d72                                 ; $6d70: $18 $00

jr_09e_6d72:
	adc  a                                           ; $6d72: $8f
	nop                                              ; $6d73: $00
	ld   b, b                                        ; $6d74: $40
	nop                                              ; $6d75: $00
	rlca                                             ; $6d76: $07
	ld   a, a                                        ; $6d77: $7f
	ld   l, h                                        ; $6d78: $6c
	ld   l, a                                        ; $6d79: $6f
	ld   [bc], a                                     ; $6d7a: $02
	jp   $8000                                       ; $6d7b: $c3 $00 $80


	add  b                                           ; $6d7e: $80
	rlca                                             ; $6d7f: $07
	cp   b                                           ; $6d80: $b8
	jr   nz, @+$40                                   ; $6d81: $20 $3e

	jr   jr_09e_6e04                                 ; $6d83: $18 $7f

	ld   a, [hl]                                     ; $6d85: $7e
	ld   a, a                                        ; $6d86: $7f
	ccf                                              ; $6d87: $3f
	add  c                                           ; $6d88: $81
	add  b                                           ; $6d89: $80
	add  b                                           ; $6d8a: $80
	ret  nz                                          ; $6d8b: $c0

	inc  bc                                          ; $6d8c: $03
	jr   nz, jr_09e_6d6f                             ; $6d8d: $20 $e0

	ld   d, b                                        ; $6d8f: $50
	ld   [hl], b                                     ; $6d90: $70
	add  b                                           ; $6d91: $80
	jr   nc, @+$07                                   ; $6d92: $30 $05

	db   $10                                         ; $6d94: $10
	sub  b                                           ; $6d95: $90
	db   $10                                         ; $6d96: $10
	ret  nc                                          ; $6d97: $d0

	ldh  [rLCDC], a                                  ; $6d98: $e0 $40
	add  b                                           ; $6d9a: $80
	add  b                                           ; $6d9b: $80
	add  b                                           ; $6d9c: $80
	ld   b, b                                        ; $6d9d: $40
	inc  bc                                          ; $6d9e: $03
	nop                                              ; $6d9f: $00
	ld   bc, $0100                                   ; $6da0: $01 $00 $01
	adc  d                                           ; $6da3: $8a
	nop                                              ; $6da4: $00
	add  d                                           ; $6da5: $82
	add  b                                           ; $6da6: $80
	add  h                                           ; $6da7: $84
	nop                                              ; $6da8: $00
	ld   bc, $7a7d                                   ; $6da9: $01 $7d $7a
	add  b                                           ; $6dac: $80
	ld   c, e                                        ; $6dad: $4b
	add  b                                           ; $6dae: $80
	ld   c, c                                        ; $6daf: $49
	ld   bc, $f5f9                                   ; $6db0: $01 $f9 $f5
	add  b                                           ; $6db3: $80
	dec  d                                           ; $6db4: $15
	add  c                                           ; $6db5: $81
	inc  d                                           ; $6db6: $14
	add  c                                           ; $6db7: $81
	ld   [de], a                                     ; $6db8: $12
	ld   [bc], a                                     ; $6db9: $02
	adc  l                                           ; $6dba: $8d
	rst  $38                                         ; $6dbb: $ff
	cp   a                                           ; $6dbc: $bf
	add  c                                           ; $6dbd: $81
	ld   a, a                                        ; $6dbe: $7f
	ld   bc, $3f5f                                   ; $6dbf: $01 $5f $3f
	add  b                                           ; $6dc2: $80
	cp   a                                           ; $6dc3: $bf
	ld   b, $af                                      ; $6dc4: $06 $af
	sbc  a                                           ; $6dc6: $9f
	sub  a                                           ; $6dc7: $97
	adc  a                                           ; $6dc8: $8f
	set  0, a                                        ; $6dc9: $cb $c7
	ei                                               ; $6dcb: $fb
	add  l                                           ; $6dcc: $85
	rst  $38                                         ; $6dcd: $ff
	nop                                              ; $6dce: $00
	cp   $85                                         ; $6dcf: $fe $85
	rst  $38                                         ; $6dd1: $ff
	nop                                              ; $6dd2: $00
	ld   bc, $8182                                   ; $6dd3: $01 $82 $81
	add  c                                           ; $6dd6: $81
	add  d                                           ; $6dd7: $82
	nop                                              ; $6dd8: $00
	add  e                                           ; $6dd9: $83
	add  c                                           ; $6dda: $81
	dec  b                                           ; $6ddb: $05
	inc  b                                           ; $6ddc: $04
	ld   b, $0f                                      ; $6ddd: $06 $0f
	dec  bc                                          ; $6ddf: $0b
	rrca                                             ; $6de0: $0f
	or   [hl]                                        ; $6de1: $b6
	add  e                                           ; $6de2: $83
	ret  nz                                          ; $6de3: $c0

	nop                                              ; $6de4: $00
	nop                                              ; $6de5: $00
	add  c                                           ; $6de6: $81
	add  b                                           ; $6de7: $80
	add  b                                           ; $6de8: $80
	rst  $38                                         ; $6de9: $ff
	add  b                                           ; $6dea: $80
	add  b                                           ; $6deb: $80
	add  b                                           ; $6dec: $80
	rst  $38                                         ; $6ded: $ff
	ld   [bc], a                                     ; $6dee: $02
	ccf                                              ; $6def: $3f
	nop                                              ; $6df0: $00
	rra                                              ; $6df1: $1f
	add  e                                           ; $6df2: $83
	nop                                              ; $6df3: $00
	inc  b                                           ; $6df4: $04
	rst  JumpTable                                         ; $6df5: $df
	nop                                              ; $6df6: $00
	rst  $38                                         ; $6df7: $ff
	nop                                              ; $6df8: $00
	rst  $38                                         ; $6df9: $ff
	add  c                                           ; $6dfa: $81
	nop                                              ; $6dfb: $00
	ld   [de], a                                     ; $6dfc: $12
	rlca                                             ; $6dfd: $07
	nop                                              ; $6dfe: $00
	rst  JumpTable                                         ; $6dff: $df
	nop                                              ; $6e00: $00
	rlca                                             ; $6e01: $07
	nop                                              ; $6e02: $00
	rra                                              ; $6e03: $1f

jr_09e_6e04:
	nop                                              ; $6e04: $00
	rst  JumpTable                                         ; $6e05: $df
	nop                                              ; $6e06: $00
	rst  $38                                         ; $6e07: $ff
	nop                                              ; $6e08: $00
	ldh  [rP1], a                                    ; $6e09: $e0 $00
	rlca                                             ; $6e0b: $07
	nop                                              ; $6e0c: $00
	ld   l, a                                        ; $6e0d: $6f
	sub  h                                           ; $6e0e: $94
	db   $10                                         ; $6e0f: $10
	add  c                                           ; $6e10: $81
	ld   [de], a                                     ; $6e11: $12
	ld   bc, $fffe                                   ; $6e12: $01 $fe $ff
	add  b                                           ; $6e15: $80
	nop                                              ; $6e16: $00
	add  d                                           ; $6e17: $82
	rst  $38                                         ; $6e18: $ff
	add  b                                           ; $6e19: $80
	ld   de, $ff02                                   ; $6e1a: $11 $02 $ff
	ld   a, a                                        ; $6e1d: $7f
	ld   h, a                                        ; $6e1e: $67
	add  c                                           ; $6e1f: $81
	inc  h                                           ; $6e20: $24
	inc  bc                                          ; $6e21: $03
	inc  a                                           ; $6e22: $3c
	cp   $32                                         ; $6e23: $fe $32
	inc  sp                                          ; $6e25: $33
	add  b                                           ; $6e26: $80
	ld   h, c                                        ; $6e27: $61
	add  b                                           ; $6e28: $80
	pop  hl                                          ; $6e29: $e1
	ld   b, $f3                                      ; $6e2a: $06 $f3
	ld   [hl], d                                     ; $6e2c: $72
	ld   a, [hl]                                     ; $6e2d: $7e
	rst  $38                                         ; $6e2e: $ff
	cp   $82                                         ; $6e2f: $fe $82
	add  e                                           ; $6e31: $83
	add  b                                           ; $6e32: $80
	add  c                                           ; $6e33: $81
	add  d                                           ; $6e34: $82
	ld   b, b                                        ; $6e35: $40
	add  b                                           ; $6e36: $80
	ld   b, c                                        ; $6e37: $41
	add  c                                           ; $6e38: $81
	ld   hl, $c403                                   ; $6e39: $21 $03 $c4
	nop                                              ; $6e3c: $00
	push hl                                          ; $6e3d: $e5
	nop                                              ; $6e3e: $00
	add  b                                           ; $6e3f: $80
	ld   h, c                                        ; $6e40: $61
	ld   b, $07                                      ; $6e41: $06 $07
	nop                                              ; $6e43: $00
	ld   a, $40                                      ; $6e44: $3e $40
	ld   b, a                                        ; $6e46: $47
	ret  nz                                          ; $6e47: $c0

	pop  hl                                          ; $6e48: $e1
	add  c                                           ; $6e49: $81
	ldh  [$0c], a                                    ; $6e4a: $e0 $0c
	call nz, $0d00                                   ; $6e4c: $c4 $00 $0d
	nop                                              ; $6e4f: $00
	add  e                                           ; $6e50: $83
	add  b                                           ; $6e51: $80
	add  c                                           ; $6e52: $81
	nop                                              ; $6e53: $00
	daa                                              ; $6e54: $27
	inc  bc                                          ; $6e55: $03
	rst  JumpTable                                         ; $6e56: $df
	rrca                                             ; $6e57: $0f
	cp   a                                           ; $6e58: $bf
	add  b                                           ; $6e59: $80
	ccf                                              ; $6e5a: $3f
	add  b                                           ; $6e5b: $80
	ld   a, a                                        ; $6e5c: $7f
	add  e                                           ; $6e5d: $83
	rst  $38                                         ; $6e5e: $ff
	ld   bc, $ffe0                                   ; $6e5f: $01 $e0 $ff
	add  h                                           ; $6e62: $84
	ldh  a, [$80]                                    ; $6e63: $f0 $80
	pop  af                                          ; $6e65: $f1
	nop                                              ; $6e66: $00
	ldh  [$83], a                                    ; $6e67: $e0 $83
	rst  $38                                         ; $6e69: $ff
	ld   bc, $ff00                                   ; $6e6a: $01 $00 $ff
	add  h                                           ; $6e6d: $84
	nop                                              ; $6e6e: $00
	add  b                                           ; $6e6f: $80
	rst  $38                                         ; $6e70: $ff
	nop                                              ; $6e71: $00
	adc  [hl]                                        ; $6e72: $8e
	adc  l                                           ; $6e73: $8d
	adc  c                                           ; $6e74: $89
	ld   bc, $fff8                                   ; $6e75: $01 $f8 $ff
	add  h                                           ; $6e78: $84
	nop                                              ; $6e79: $00
	add  c                                           ; $6e7a: $81
	rst  $38                                         ; $6e7b: $ff
	add  c                                           ; $6e7c: $81
	nop                                              ; $6e7d: $00
	add  b                                           ; $6e7e: $80
	rst  $38                                         ; $6e7f: $ff
	ld   bc, $8971                                   ; $6e80: $01 $71 $89
	add  h                                           ; $6e83: $84
	add  hl, bc                                      ; $6e84: $09
	add  c                                           ; $6e85: $81
	ld   sp, hl                                      ; $6e86: $f9
	add  c                                           ; $6e87: $81
	ld   bc, $ff90                                   ; $6e88: $01 $90 $ff
	nop                                              ; $6e8b: $00
	xor  $8d                                         ; $6e8c: $ee $8d
	pop  af                                          ; $6e8e: $f1
	nop                                              ; $6e8f: $00
	ldh  [rIE], a                                    ; $6e90: $e0 $ff
	nop                                              ; $6e92: $00
	rst  $38                                         ; $6e93: $ff
	nop                                              ; $6e94: $00
	rst  $38                                         ; $6e95: $ff
	nop                                              ; $6e96: $00
	rst  $38                                         ; $6e97: $ff
	nop                                              ; $6e98: $00
	rst  $38                                         ; $6e99: $ff
	nop                                              ; $6e9a: $00
	rst  $38                                         ; $6e9b: $ff
	nop                                              ; $6e9c: $00
	rst  $38                                         ; $6e9d: $ff
	nop                                              ; $6e9e: $00
	add  [hl]                                        ; $6e9f: $86
	nop                                              ; $6ea0: $00
	ld   b, b                                        ; $6ea1: $40
	ld   bc, $0000                                   ; $6ea2: $01 $00 $00
	add  b                                           ; $6ea5: $80
	ldh  a, [$80]                                    ; $6ea6: $f0 $80
	add  b                                           ; $6ea8: $80
	add  c                                           ; $6ea9: $81
	nop                                              ; $6eaa: $00
	ld   [$000e], sp                                 ; $6eab: $08 $0e $00
	scf                                              ; $6eae: $37
	add  c                                           ; $6eaf: $81
	adc  d                                           ; $6eb0: $8a
	add  d                                           ; $6eb1: $82
	sub  h                                           ; $6eb2: $94
	add  h                                           ; $6eb3: $84
	and  b                                           ; $6eb4: $a0
	add  e                                           ; $6eb5: $83
	ret  nz                                          ; $6eb6: $c0

	nop                                              ; $6eb7: $00
	ldh  [$81], a                                    ; $6eb8: $e0 $81
	and  b                                           ; $6eba: $a0
	ld   bc, $60e0                                   ; $6ebb: $01 $e0 $60
	add  b                                           ; $6ebe: $80
	ld   c, b                                        ; $6ebf: $48
	add  b                                           ; $6ec0: $80
	ld   b, b                                        ; $6ec1: $40
	ld   b, $00                                      ; $6ec2: $06 $00
	ld   e, $fe                                      ; $6ec4: $1e $fe
	nop                                              ; $6ec6: $00
	jr   nz, jr_09e_6ec9                             ; $6ec7: $20 $00

jr_09e_6ec9:
	ret  nz                                          ; $6ec9: $c0

	sbc  b                                           ; $6eca: $98
	nop                                              ; $6ecb: $00
	add  b                                           ; $6ecc: $80
	ccf                                              ; $6ecd: $3f
	add  b                                           ; $6ece: $80
	inc  c                                           ; $6ecf: $0c
	sub  l                                           ; $6ed0: $95
	nop                                              ; $6ed1: $00
	add  b                                           ; $6ed2: $80
	ld   [bc], a                                     ; $6ed3: $02
	add  b                                           ; $6ed4: $80
	ld   [de], a                                     ; $6ed5: $12

jr_09e_6ed6:
	nop                                              ; $6ed6: $00
	nop                                              ; $6ed7: $00
	add  b                                           ; $6ed8: $80
	rst  $38                                         ; $6ed9: $ff
	rlca                                             ; $6eda: $07
	jr   c, @+$41                                    ; $6edb: $38 $3f

	nop                                              ; $6edd: $00
	inc  b                                           ; $6ede: $04
	nop                                              ; $6edf: $00
	ld   [bc], a                                     ; $6ee0: $02
	nop                                              ; $6ee1: $00
	ld   bc, $0094                                   ; $6ee2: $01 $94 $00
	adc  b                                           ; $6ee5: $88
	rst  $38                                         ; $6ee6: $ff
	add  b                                           ; $6ee7: $80
	cp   $80                                         ; $6ee8: $fe $80
	ld   hl, sp-$80                                  ; $6eea: $f8 $80
	ldh  [$80], a                                    ; $6eec: $e0 $80
	ret  nz                                          ; $6eee: $c0

	add  b                                           ; $6eef: $80
	add  b                                           ; $6ef0: $80
	nop                                              ; $6ef1: $00
	nop                                              ; $6ef2: $00
	add  d                                           ; $6ef3: $82
	ld   bc, $8607                                   ; $6ef4: $01 $07 $86
	nop                                              ; $6ef7: $00
	ld   a, [bc]                                     ; $6ef8: $0a
	nop                                              ; $6ef9: $00
	sub  [hl]                                        ; $6efa: $96
	nop                                              ; $6efb: $00
	jp   z, $80d0                                    ; $6efc: $ca $d0 $80

	or   d                                           ; $6eff: $b2
	add  b                                           ; $6f00: $80
	xor  [hl]                                        ; $6f01: $ae
	add  h                                           ; $6f02: $84
	xor  a                                           ; $6f03: $af
	add  b                                           ; $6f04: $80
	xor  b                                           ; $6f05: $a8
	ld   bc, $d4d5                                   ; $6f06: $01 $d5 $d4
	add  b                                           ; $6f09: $80
	call nz, $5402                                   ; $6f0a: $c4 $02 $54
	ld   b, h                                        ; $6f0d: $44
	inc  h                                           ; $6f0e: $24
	add  e                                           ; $6f0f: $83
	add  h                                           ; $6f10: $84
	ld   [bc], a                                     ; $6f11: $02
	and  h                                           ; $6f12: $a4
	inc  b                                           ; $6f13: $04
	inc  d                                           ; $6f14: $14
	add  b                                           ; $6f15: $80
	call nz, $e402                                   ; $6f16: $c4 $02 $e4
	pop  bc                                          ; $6f19: $c1
	ld   hl, $7580                                   ; $6f1a: $21 $80 $75
	nop                                              ; $6f1d: $00
	ld   a, c                                        ; $6f1e: $79
	add  c                                           ; $6f1f: $81
	ld   a, d                                        ; $6f20: $7a
	inc  c                                           ; $6f21: $0c
	ld   [hl], e                                     ; $6f22: $73
	ld   [hl], c                                     ; $6f23: $71
	ld   b, b                                        ; $6f24: $40
	ld   c, [hl]                                     ; $6f25: $4e
	ld   l, $02                                      ; $6f26: $2e $02
	ld   a, [hl+]                                    ; $6f28: $2a
	add  b                                           ; $6f29: $80
	xor  b                                           ; $6f2a: $a8
	nop                                              ; $6f2b: $00
	inc  h                                           ; $6f2c: $24
	nop                                              ; $6f2d: $00
	inc  b                                           ; $6f2e: $04
	add  b                                           ; $6f2f: $80
	add  b                                           ; $6f30: $80
	inc  bc                                          ; $6f31: $03
	ret  nz                                          ; $6f32: $c0

	jp   nz, $8280                                   ; $6f33: $c2 $80 $82

	add  e                                           ; $6f36: $83
	add  b                                           ; $6f37: $80
	nop                                              ; $6f38: $00
	ret  z                                           ; $6f39: $c8

	add  c                                           ; $6f3a: $81
	ld   e, d                                        ; $6f3b: $5a
	add  c                                           ; $6f3c: $81
	jp   c, $db04                                    ; $6f3d: $da $04 $db

	sbc  e                                           ; $6f40: $9b
	xor  e                                           ; $6f41: $ab
	dec  hl                                          ; $6f42: $2b
	add  hl, hl                                      ; $6f43: $29
	add  b                                           ; $6f44: $80
	ld   h, c                                        ; $6f45: $61
	nop                                              ; $6f46: $00
	ld   sp, $d180                                   ; $6f47: $31 $80 $d1
	inc  bc                                          ; $6f4a: $03
	ld   d, c                                        ; $6f4b: $51
	ld   h, c                                        ; $6f4c: $61
	ld   hl, $8801                                   ; $6f4d: $21 $01 $88
	nop                                              ; $6f50: $00
	add  b                                           ; $6f51: $80
	jr   nz, jr_09e_6ed6                             ; $6f52: $20 $82

	db   $10                                         ; $6f54: $10
	add  [hl]                                        ; $6f55: $86
	ld   [$0280], sp                                 ; $6f56: $08 $80 $02
	add  b                                           ; $6f59: $80
	jr   c, jr_09e_6f63                              ; $6f5a: $38 $07

	add  [hl]                                        ; $6f5c: $86
	sub  [hl]                                        ; $6f5d: $96
	ld   [bc], a                                     ; $6f5e: $02
	ld   [de], a                                     ; $6f5f: $12
	ld   [bc], a                                     ; $6f60: $02
	add  d                                           ; $6f61: $82
	ld   [bc], a                                     ; $6f62: $02

jr_09e_6f63:
	add  d                                           ; $6f63: $82
	add  b                                           ; $6f64: $80
	ld   [bc], a                                     ; $6f65: $02
	add  b                                           ; $6f66: $80
	adc  d                                           ; $6f67: $8a
	adc  h                                           ; $6f68: $8c
	nop                                              ; $6f69: $00
	add  d                                           ; $6f6a: $82
	inc  bc                                          ; $6f6b: $03
	add  e                                           ; $6f6c: $83
	ld   bc, $1301                                   ; $6f6d: $01 $01 $13
	ld   [de], a                                     ; $6f70: $12
	add  b                                           ; $6f71: $80
	ld   [bc], a                                     ; $6f72: $02
	add  b                                           ; $6f73: $80
	and  d                                           ; $6f74: $a2
	add  b                                           ; $6f75: $80
	xor  d                                           ; $6f76: $aa
	add  c                                           ; $6f77: $81
	add  sp, $01                                     ; $6f78: $e8 $01
	ld   [$8002], a                                  ; $6f7a: $ea $02 $80
	ei                                               ; $6f7d: $fb
	add  b                                           ; $6f7e: $80
	ld   l, a                                        ; $6f7f: $6f
	add  d                                           ; $6f80: $82
	rst  $38                                         ; $6f81: $ff
	inc  bc                                          ; $6f82: $03
	ld   a, a                                        ; $6f83: $7f
	rst  $38                                         ; $6f84: $ff
	ccf                                              ; $6f85: $3f
	cp   a                                           ; $6f86: $bf
	add  b                                           ; $6f87: $80
	ccf                                              ; $6f88: $3f
	ld   bc, $9f1f                                   ; $6f89: $01 $1f $9f
	add  c                                           ; $6f8c: $81
	rra                                              ; $6f8d: $1f
	nop                                              ; $6f8e: $00
	sbc  a                                           ; $6f8f: $9f
	add  b                                           ; $6f90: $80
	rrca                                             ; $6f91: $0f
	add  b                                           ; $6f92: $80
	nop                                              ; $6f93: $00
	add  b                                           ; $6f94: $80
	db   $fc                                         ; $6f95: $fc
	add  b                                           ; $6f96: $80
	rst  $38                                         ; $6f97: $ff
	add  b                                           ; $6f98: $80
	inc  bc                                          ; $6f99: $03
	add  hl, bc                                      ; $6f9a: $09
	nop                                              ; $6f9b: $00
	ld   [hl], $00                                   ; $6f9c: $36 $00

jr_09e_6f9e:
	jr   jr_09e_6fa0                                 ; $6f9e: $18 $00

jr_09e_6fa0:
	ld   [hl], $00                                   ; $6fa0: $36 $00
	ld   l, c                                        ; $6fa2: $69
	nop                                              ; $6fa3: $00
	ld   [hl], d                                     ; $6fa4: $72
	add  c                                           ; $6fa5: $81
	nop                                              ; $6fa6: $00
	ld   b, $01                                      ; $6fa7: $06 $01
	ld   [$380b], sp                                 ; $6fa9: $08 $0b $38
	ld   a, [hl-]                                    ; $6fac: $3a
	ld   hl, sp-$04                                  ; $6fad: $f8 $fc
	add  b                                           ; $6faf: $80
	jr   nc, @+$03                                   ; $6fb0: $30 $01

	ldh  a, [$f7]                                    ; $6fb2: $f0 $f7
	add  b                                           ; $6fb4: $80
	ld   hl, sp-$80                                  ; $6fb5: $f8 $80
	cp   $01                                         ; $6fb7: $fe $01
	ld   a, [hl]                                     ; $6fb9: $7e
	ld   a, a                                        ; $6fba: $7f
	add  c                                           ; $6fbb: $81
	db   $fd                                         ; $6fbc: $fd
	ld   [bc], a                                     ; $6fbd: $02

jr_09e_6fbe:
	jp   hl                                          ; $6fbe: $e9


	call nc, $81f5                                   ; $6fbf: $d4 $f5 $81
	or   h                                           ; $6fc2: $b4
	ld   bc, $35b5                                   ; $6fc3: $01 $b5 $35
	add  d                                           ; $6fc6: $82
	or   l                                           ; $6fc7: $b5
	add  h                                           ; $6fc8: $84
	sub  l                                           ; $6fc9: $95
	add  b                                           ; $6fca: $80
	dec  h                                           ; $6fcb: $25
	add  b                                           ; $6fcc: $80
	inc  h                                           ; $6fcd: $24
	add  d                                           ; $6fce: $82
	ld   b, [hl]                                     ; $6fcf: $46
	add  d                                           ; $6fd0: $82
	add  h                                           ; $6fd1: $84
	add  b                                           ; $6fd2: $80
	inc  b                                           ; $6fd3: $04
	nop                                              ; $6fd4: $00
	ccf                                              ; $6fd5: $3f
	add  c                                           ; $6fd6: $81
	rst  $38                                         ; $6fd7: $ff
	nop                                              ; $6fd8: $00
	rst  JumpTable                                         ; $6fd9: $df
	add  b                                           ; $6fda: $80
	rst  $38                                         ; $6fdb: $ff
	dec  c                                           ; $6fdc: $0d
	ld   a, a                                        ; $6fdd: $7f
	ld   l, a                                        ; $6fde: $6f
	ld   a, a                                        ; $6fdf: $7f
	rst  $38                                         ; $6fe0: $ff
	ccf                                              ; $6fe1: $3f
	scf                                              ; $6fe2: $37
	rra                                              ; $6fe3: $1f
	dec  de                                          ; $6fe4: $1b
	cpl                                              ; $6fe5: $2f
	dec  l                                           ; $6fe6: $2d
	inc  sp                                          ; $6fe7: $33
	ld   [hl-], a                                    ; $6fe8: $32
	inc  a                                           ; $6fe9: $3c
	cp   h                                           ; $6fea: $bc
	add  b                                           ; $6feb: $80
	ccf                                              ; $6fec: $3f
	add  b                                           ; $6fed: $80
	rrca                                             ; $6fee: $0f
	inc  b                                           ; $6fef: $04
	inc  bc                                          ; $6ff0: $03
	rlca                                             ; $6ff1: $07
	ld   bc, $0207                                   ; $6ff2: $01 $07 $02
	add  b                                           ; $6ff5: $80
	ld   bc, $0000                                   ; $6ff6: $01 $00 $00
	add  b                                           ; $6ff9: $80
	ld   h, b                                        ; $6ffa: $60
	ld   [bc], a                                     ; $6ffb: $02
	jr   nz, jr_09e_6f9e                             ; $6ffc: $20 $a0

	nop                                              ; $6ffe: $00
	add  c                                           ; $6fff: $81
	add  b                                           ; $7000: $80
	add  a                                           ; $7001: $87
	nop                                              ; $7002: $00
	add  e                                           ; $7003: $83
	ld   bc, $c901                                   ; $7004: $01 $01 $c9
	ret  z                                           ; $7007: $c8

	add  b                                           ; $7008: $80
	ld   hl, sp-$80                                  ; $7009: $f8 $80
	pop  af                                          ; $700b: $f1
	add  b                                           ; $700c: $80
	ldh  [$03], a                                    ; $700d: $e0 $03
	nop                                              ; $700f: $00
	ld   [$0a00], sp                                 ; $7010: $08 $00 $0a
	add  d                                           ; $7013: $82
	ld   [bc], a                                     ; $7014: $02
	add  d                                           ; $7015: $82
	ld   b, $82                                      ; $7016: $06 $82
	ld   c, $80                                      ; $7018: $0e $80
	ld   l, $80                                      ; $701a: $2e $80
	ld   l, [hl]                                     ; $701c: $6e
	add  d                                           ; $701d: $82
	xor  $82                                         ; $701e: $ee $82
	db   $ec                                         ; $7020: $ec
	ld   de, $ec6c                                   ; $7021: $11 $6c $ec
	ld   l, $ae                                      ; $7024: $2e $ae
	ld   c, $e4                                      ; $7026: $0e $e4
	add  sp, -$5a                                    ; $7028: $e8 $a6
	and  b                                           ; $702a: $a0
	add  h                                           ; $702b: $84
	add  b                                           ; $702c: $80
	ld   d, b                                        ; $702d: $50
	nop                                              ; $702e: $00
	ld   [hl+], a                                    ; $702f: $22
	ld   bc, $0121                                   ; $7030: $01 $21 $01
	add  hl, sp                                      ; $7033: $39
	add  c                                           ; $7034: $81
	nop                                              ; $7035: $00
	inc  b                                           ; $7036: $04
	ld   e, h                                        ; $7037: $5c
	nop                                              ; $7038: $00
	db   $f4                                         ; $7039: $f4
	nop                                              ; $703a: $00
	jr   nz, jr_09e_6fbe                             ; $703b: $20 $81

	nop                                              ; $703d: $00
	ld   [bc], a                                     ; $703e: $02
	ld   h, b                                        ; $703f: $60
	nop                                              ; $7040: $00
	add  b                                           ; $7041: $80
	adc  l                                           ; $7042: $8d
	nop                                              ; $7043: $00
	add  b                                           ; $7044: $80
	ld   bc, $0380                                   ; $7045: $01 $80 $03
	inc  b                                           ; $7048: $04
	ld   [bc], a                                     ; $7049: $02
	inc  bc                                          ; $704a: $03
	dec  b                                           ; $704b: $05
	rlca                                             ; $704c: $07
	inc  bc                                          ; $704d: $03
	add  d                                           ; $704e: $82
	rrca                                             ; $704f: $0f
	add  d                                           ; $7050: $82
	rra                                              ; $7051: $1f
	ld   bc, $3e3f                                   ; $7052: $01 $3f $3e
	add  b                                           ; $7055: $80
	ccf                                              ; $7056: $3f
	ld   bc, $827f                                   ; $7057: $01 $7f $82
	add  c                                           ; $705a: $81
	nop                                              ; $705b: $00
	inc  c                                           ; $705c: $0c
	inc  b                                           ; $705d: $04
	nop                                              ; $705e: $00
	ld   [$2800], sp                                 ; $705f: $08 $00 $28
	nop                                              ; $7062: $00
	ld   e, b                                        ; $7063: $58
	nop                                              ; $7064: $00
	ld   d, b                                        ; $7065: $50
	nop                                              ; $7066: $00
	ld   h, b                                        ; $7067: $60
	nop                                              ; $7068: $00
	ld   d, b                                        ; $7069: $50
	add  c                                           ; $706a: $81
	nop                                              ; $706b: $00
	ld   [bc], a                                     ; $706c: $02
	jr   nz, jr_09e_706f                             ; $706d: $20 $00

jr_09e_706f:
	ret  nz                                          ; $706f: $c0

	add  h                                           ; $7070: $84
	nop                                              ; $7071: $00
	add  b                                           ; $7072: $80
	add  b                                           ; $7073: $80
	ld   bc, $8a88                                   ; $7074: $01 $88 $8a
	add  l                                           ; $7077: $85
	ld   b, $80                                      ; $7078: $06 $80
	rlca                                             ; $707a: $07
	nop                                              ; $707b: $00
	dec  b                                           ; $707c: $05
	add  d                                           ; $707d: $82
	rlca                                             ; $707e: $07
	add  e                                           ; $707f: $83
	inc  bc                                          ; $7080: $03
	nop                                              ; $7081: $00
	ld   [bc], a                                     ; $7082: $02
	add  b                                           ; $7083: $80
	inc  bc                                          ; $7084: $03
	add  d                                           ; $7085: $82
	ld   bc, $0083                                   ; $7086: $01 $83 $00
	inc  bc                                          ; $7089: $03
	jr   c, jr_09e_70c8                              ; $708a: $38 $3c

	inc  d                                           ; $708c: $14
	inc  e                                           ; $708d: $1c
	add  c                                           ; $708e: $81
	inc  c                                           ; $708f: $0c
	sbc  [hl]                                        ; $7090: $9e
	nop                                              ; $7091: $00
	add  d                                           ; $7092: $82
	ld   bc, $0380                                   ; $7093: $01 $80 $03
	add  b                                           ; $7096: $80
	ld   [bc], a                                     ; $7097: $02
	add  b                                           ; $7098: $80
	ld   bc, $008d                                   ; $7099: $01 $8d $00
	inc  bc                                          ; $709c: $03
	ld   h, b                                        ; $709d: $60
	rst  $20                                         ; $709e: $e7
	rst  $30                                         ; $709f: $f7
	ldh  a, [$84]                                    ; $70a0: $f0 $84
	ld   hl, sp+$00                                  ; $70a2: $f8 $00
	cp   b                                           ; $70a4: $b8
	add  c                                           ; $70a5: $81
	ld   hl, sp+$00                                  ; $70a6: $f8 $00
	ld   a, h                                        ; $70a8: $7c
	add  c                                           ; $70a9: $81
	db   $fc                                         ; $70aa: $fc
	ld   [bc], a                                     ; $70ab: $02
	sbc  h                                           ; $70ac: $9c
	db   $fc                                         ; $70ad: $fc
	call c, $fc81                                    ; $70ae: $dc $81 $fc
	add  b                                           ; $70b1: $80
	ld   hl, sp+$06                                  ; $70b2: $f8 $06
	ld   a, b                                        ; $70b4: $78
	ld   hl, sp-$50                                  ; $70b5: $f8 $b0
	ldh  a, [$d0]                                    ; $70b7: $f0 $d0
	ldh  a, [$e0]                                    ; $70b9: $f0 $e0
	add  b                                           ; $70bb: $80
	rlca                                             ; $70bc: $07
	sbc  h                                           ; $70bd: $9c
	nop                                              ; $70be: $00
	add  b                                           ; $70bf: $80
	or   $80                                         ; $70c0: $f6 $80
	ld   l, [hl]                                     ; $70c2: $6e
	nop                                              ; $70c3: $00
	ld   e, $80                                      ; $70c4: $1e $80
	ld   e, [hl]                                     ; $70c6: $5e
	nop                                              ; $70c7: $00

jr_09e_70c8:
	ld   e, a                                        ; $70c8: $5f
	add  c                                           ; $70c9: $81
	ld   e, l                                        ; $70ca: $5d
	ld   [$5b5f], sp                                 ; $70cb: $08 $5f $5b
	ld   e, d                                        ; $70ce: $5a
	ld   e, e                                        ; $70cf: $5b
	ld   e, a                                        ; $70d0: $5f
	ld   d, a                                        ; $70d1: $57
	ld   d, l                                        ; $70d2: $55
	ld   d, a                                        ; $70d3: $57
	inc  de                                          ; $70d4: $13
	add  b                                           ; $70d5: $80
	rla                                              ; $70d6: $17
	add  c                                           ; $70d7: $81
	ld   c, $00                                      ; $70d8: $0e $00
	ld   c, a                                        ; $70da: $4f
	add  b                                           ; $70db: $80
	ld   c, l                                        ; $70dc: $4d
	ld   bc, $5e5d                                   ; $70dd: $01 $5d $5e
	add  c                                           ; $70e0: $81
	ld   e, e                                        ; $70e1: $5b
	inc  b                                           ; $70e2: $04
	ld   e, l                                        ; $70e3: $5d
	ld   d, a                                        ; $70e4: $57
	ld   d, e                                        ; $70e5: $53
	ld   d, a                                        ; $70e6: $57
	rla                                              ; $70e7: $17
	add  b                                           ; $70e8: $80
	ld   d, $82                                      ; $70e9: $16 $82
	ld   c, $80                                      ; $70eb: $0e $80
	dec  c                                           ; $70ed: $0d
	add  h                                           ; $70ee: $84
	dec  e                                           ; $70ef: $1d
	add  [hl]                                        ; $70f0: $86
	dec  de                                          ; $70f1: $1b
	add  b                                           ; $70f2: $80
	dec  bc                                          ; $70f3: $0b
	ld   [bc], a                                     ; $70f4: $02
	rrca                                             ; $70f5: $0f
	dec  l                                           ; $70f6: $2d
	ld   [hl+], a                                    ; $70f7: $22
	add  b                                           ; $70f8: $80
	ld   d, l                                        ; $70f9: $55
	add  b                                           ; $70fa: $80
	ld   a, [bc]                                     ; $70fb: $0a
	add  b                                           ; $70fc: $80
	dec  c                                           ; $70fd: $0d
	add  b                                           ; $70fe: $80
	dec  bc                                          ; $70ff: $0b
	add  b                                           ; $7100: $80
	dec  c                                           ; $7101: $0d
	add  b                                           ; $7102: $80
	dec  bc                                          ; $7103: $0b
	add  b                                           ; $7104: $80
	dec  c                                           ; $7105: $0d
	adc  a                                           ; $7106: $8f
	nop                                              ; $7107: $00
	ld   bc, $0f07                                   ; $7108: $01 $07 $0f
	add  d                                           ; $710b: $82
	dec  bc                                          ; $710c: $0b
	ld   bc, $0809                                   ; $710d: $01 $09 $08
	add  c                                           ; $7110: $81
	add  hl, bc                                      ; $7111: $09
	add  h                                           ; $7112: $84
	dec  bc                                          ; $7113: $0b
	nop                                              ; $7114: $00
	dec  b                                           ; $7115: $05
	add  e                                           ; $7116: $83
	dec  c                                           ; $7117: $0d
	add  d                                           ; $7118: $82
	ld   c, $00                                      ; $7119: $0e $00
	ld   a, [bc]                                     ; $711b: $0a
	add  b                                           ; $711c: $80
	ld   c, $01                                      ; $711d: $0e $01
	rrca                                             ; $711f: $0f
	ldh  a, [c]                                      ; $7120: $f2
	add  l                                           ; $7121: $85
	rst  $38                                         ; $7122: $ff
	add  b                                           ; $7123: $80
	db   $fc                                         ; $7124: $fc
	add  b                                           ; $7125: $80
	ld   hl, sp+$01                                  ; $7126: $f8 $01
	ld   [hl], b                                     ; $7128: $70
	ldh  a, [$80]                                    ; $7129: $f0 $80
	ldh  [rSC], a                                    ; $712b: $e0 $02
	ld   h, c                                        ; $712d: $61
	ldh  [$c3], a                                    ; $712e: $e0 $c3
	add  c                                           ; $7130: $81
	ret  nz                                          ; $7131: $c0

	ld   [bc], a                                     ; $7132: $02
	jp   nz, $98d8                                   ; $7133: $c2 $d8 $98

	add  b                                           ; $7136: $80
	cp   [hl]                                        ; $7137: $be
	add  e                                           ; $7138: $83
	cp   a                                           ; $7139: $bf

jr_09e_713a:
	nop                                              ; $713a: $00
	ccf                                              ; $713b: $3f
	adc  b                                           ; $713c: $88
	nop                                              ; $713d: $00
	add  b                                           ; $713e: $80
	ld   h, b                                        ; $713f: $60
	add  b                                           ; $7140: $80
	sub  b                                           ; $7141: $90
	add  b                                           ; $7142: $80
	ld   h, [hl]                                     ; $7143: $66
	add  b                                           ; $7144: $80
	ld   e, l                                        ; $7145: $5d
	add  b                                           ; $7146: $80
	ret  c                                           ; $7147: $d8

	add  d                                           ; $7148: $82
	or   b                                           ; $7149: $b0
	add  b                                           ; $714a: $80
	jr   nc, @-$7e                                   ; $714b: $30 $80

	jr   jr_09e_7153                                 ; $714d: $18 $04

	rlca                                             ; $714f: $07
	rla                                              ; $7150: $17
	nop                                              ; $7151: $00
	sub  b                                           ; $7152: $90

jr_09e_7153:
	add  b                                           ; $7153: $80
	add  d                                           ; $7154: $82
	or   b                                           ; $7155: $b0
	and  h                                           ; $7156: $a4
	nop                                              ; $7157: $00
	add  b                                           ; $7158: $80
	ld   a, a                                        ; $7159: $7f
	sub  b                                           ; $715a: $90
	nop                                              ; $715b: $00
	rlca                                             ; $715c: $07
	ld   [hl], b                                     ; $715d: $70
	nop                                              ; $715e: $00
	ld   l, h                                        ; $715f: $6c
	nop                                              ; $7160: $00
	ld   a, e                                        ; $7161: $7b
	ld   h, b                                        ; $7162: $60
	ld   h, h                                        ; $7163: $64
	ld   h, b                                        ; $7164: $60
	add  b                                           ; $7165: $80
	ld   b, b                                        ; $7166: $40
	add  d                                           ; $7167: $82
	nop                                              ; $7168: $00
	ld   [bc], a                                     ; $7169: $02
	ld   [bc], a                                     ; $716a: $02
	nop                                              ; $716b: $00
	ld   bc, $c080                                   ; $716c: $01 $80 $c0

jr_09e_716f:
	add  h                                           ; $716f: $84
	rst  JumpTable                                         ; $7170: $df
	nop                                              ; $7171: $00
	nop                                              ; $7172: $00
	add  b                                           ; $7173: $80
	rst  $38                                         ; $7174: $ff
	add  h                                           ; $7175: $84
	nop                                              ; $7176: $00
	inc  b                                           ; $7177: $04
	dec  b                                           ; $7178: $05
	nop                                              ; $7179: $00
	ld   [$6000], sp                                 ; $717a: $08 $00 $60
	add  e                                           ; $717d: $83
	nop                                              ; $717e: $00
	ld   b, $05                                      ; $717f: $06 $05
	nop                                              ; $7181: $00
	rrca                                             ; $7182: $0f
	nop                                              ; $7183: $00
	ld   h, b                                        ; $7184: $60
	nop                                              ; $7185: $00
	rlca                                             ; $7186: $07
	add  b                                           ; $7187: $80
	ret  c                                           ; $7188: $d8

	add  b                                           ; $7189: $80
	rst  JumpTable                                         ; $718a: $df
	ld   [bc], a                                     ; $718b: $02
	ret  nz                                          ; $718c: $c0

	rst  JumpTable                                         ; $718d: $df
	rra                                              ; $718e: $1f
	add  b                                           ; $718f: $80
	ldh  [$81], a                                    ; $7190: $e0 $81
	nop                                              ; $7192: $00
	add  b                                           ; $7193: $80
	rlca                                             ; $7194: $07
	add  d                                           ; $7195: $82
	ld   b, b                                        ; $7196: $40
	add  b                                           ; $7197: $80
	ld   d, b                                        ; $7198: $50
	add  b                                           ; $7199: $80
	stop                                             ; $719a: $10 $00
	nop                                              ; $719c: $00
	add  b                                           ; $719d: $80
	ld   a, $80                                      ; $719e: $3e $80
	ccf                                              ; $71a0: $3f
	add  c                                           ; $71a1: $81
	nop                                              ; $71a2: $00
	add  b                                           ; $71a3: $80
	ld   l, b                                        ; $71a4: $68
	add  d                                           ; $71a5: $82
	db   $ec                                         ; $71a6: $ec
	nop                                              ; $71a7: $00
	nop                                              ; $71a8: $00
	add  b                                           ; $71a9: $80
	rst  $38                                         ; $71aa: $ff
	add  e                                           ; $71ab: $83
	nop                                              ; $71ac: $00
	add  b                                           ; $71ad: $80
	xor  $85                                         ; $71ae: $ee $85
	nop                                              ; $71b0: $00
	add  b                                           ; $71b1: $80
	inc  c                                           ; $71b2: $0c
	add  b                                           ; $71b3: $80
	dec  b                                           ; $71b4: $05
	add  b                                           ; $71b5: $80
	and  l                                           ; $71b6: $a5
	add  b                                           ; $71b7: $80
	jr   nz, jr_09e_713a                             ; $71b8: $20 $80

	nop                                              ; $71ba: $00
	add  d                                           ; $71bb: $82
	db   $10                                         ; $71bc: $10
	add  b                                           ; $71bd: $80
	nop                                              ; $71be: $00
	add  b                                           ; $71bf: $80
	ret  z                                           ; $71c0: $c8

	add  b                                           ; $71c1: $80
	sbc  h                                           ; $71c2: $9c
	add  b                                           ; $71c3: $80
	inc  e                                           ; $71c4: $1c
	add  b                                           ; $71c5: $80
	inc  c                                           ; $71c6: $0c
	nop                                              ; $71c7: $00
	ld   [$0081], sp                                 ; $71c8: $08 $81 $00
	ld   [bc], a                                     ; $71cb: $02
	stop                                             ; $71cc: $10 $00
	ld   [$0081], sp                                 ; $71ce: $08 $81 $00
	ld   bc, $0010                                   ; $71d1: $01 $10 $00
	add  b                                           ; $71d4: $80
	inc  a                                           ; $71d5: $3c
	add  b                                           ; $71d6: $80
	rrca                                             ; $71d7: $0f
	sbc  d                                           ; $71d8: $9a
	nop                                              ; $71d9: $00
	add  b                                           ; $71da: $80
	dec  b                                           ; $71db: $05
	add  d                                           ; $71dc: $82
	push hl                                          ; $71dd: $e5
	add  d                                           ; $71de: $82
	nop                                              ; $71df: $00
	inc  b                                           ; $71e0: $04
	rlca                                             ; $71e1: $07
	nop                                              ; $71e2: $00
	ld   b, $00                                      ; $71e3: $06 $00
	ld   bc, $008d                                   ; $71e5: $01 $8d $00
	add  b                                           ; $71e8: $80
	add  b                                           ; $71e9: $80
	add  b                                           ; $71ea: $80
	ld   h, b                                        ; $71eb: $60
	add  b                                           ; $71ec: $80
	jr   c, jr_09e_716f                              ; $71ed: $38 $80

	dec  sp                                          ; $71ef: $3b
	add  b                                           ; $71f0: $80
	ld   [hl], $80                                   ; $71f1: $36 $80
	dec  [hl]                                        ; $71f3: $35
	add  b                                           ; $71f4: $80
	or   h                                           ; $71f5: $b4
	add  b                                           ; $71f6: $80
	sub  b                                           ; $71f7: $90
	rst  $38                                         ; $71f8: $ff
	nop                                              ; $71f9: $00
	rst  $38                                         ; $71fa: $ff
	nop                                              ; $71fb: $00
	rst  $38                                         ; $71fc: $ff
	nop                                              ; $71fd: $00
	rst  $38                                         ; $71fe: $ff
	nop                                              ; $71ff: $00
	rst  $38                                         ; $7200: $ff
	nop                                              ; $7201: $00
	rst  $38                                         ; $7202: $ff
	nop                                              ; $7203: $00
	sbc  [hl]                                        ; $7204: $9e
	nop                                              ; $7205: $00
	inc  bc                                          ; $7206: $03
	ld   bc, $0096                                   ; $7207: $01 $96 $00
	ld   [$0001], sp                                 ; $720a: $08 $01 $00
	ld   [bc], a                                     ; $720d: $02
	ld   bc, $0304                                   ; $720e: $01 $04 $03
	ld   [bc], a                                     ; $7211: $02
	inc  bc                                          ; $7212: $03
	inc  b                                           ; $7213: $04
	adc  c                                           ; $7214: $89
	nop                                              ; $7215: $00
	dec  bc                                          ; $7216: $0b
	inc  bc                                          ; $7217: $03
	nop                                              ; $7218: $00
	rrca                                             ; $7219: $0f
	inc  bc                                          ; $721a: $03
	rra                                              ; $721b: $1f
	rrca                                             ; $721c: $0f
	ccf                                              ; $721d: $3f
	rra                                              ; $721e: $1f
	ld   a, a                                        ; $721f: $7f
	ccf                                              ; $7220: $3f
	rst  $38                                         ; $7221: $ff
	ld   a, a                                        ; $7222: $7f
	add  b                                           ; $7223: $80
	db   $fc                                         ; $7224: $fc
	ld   b, $f0                                      ; $7225: $06 $f0
	di                                               ; $7227: $f3
	db   $e3                                         ; $7228: $e3
	rst  $28                                         ; $7229: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $722a: $cf
	rst  JumpTable                                         ; $722b: $df
	ldh  [$87], a                                    ; $722c: $e0 $87
	nop                                              ; $722e: $00
	dec  b                                           ; $722f: $05
	ld   bc, $f700                                   ; $7230: $01 $00 $f7
	ld   bc, $c7cf                                   ; $7233: $01 $cf $c7
	add  b                                           ; $7236: $80
	xor  a                                           ; $7237: $af
	add  b                                           ; $7238: $80
	rst  JumpTable                                         ; $7239: $df
	add  b                                           ; $723a: $80
	cp   a                                           ; $723b: $bf
	add  b                                           ; $723c: $80
	rst  $38                                         ; $723d: $ff
	add  b                                           ; $723e: $80
	nop                                              ; $723f: $00
	ld   bc, $1fe0                                   ; $7240: $01 $e0 $1f
	add  d                                           ; $7243: $82
	ccf                                              ; $7244: $3f
	adc  b                                           ; $7245: $88
	nop                                              ; $7246: $00
	dec  b                                           ; $7247: $05
	ldh  a, [rP1]                                    ; $7248: $f0 $00
	db   $fc                                         ; $724a: $fc
	ldh  a, [rIE]                                    ; $724b: $f0 $ff
	db   $fc                                         ; $724d: $fc
	add  [hl]                                        ; $724e: $86
	rst  $38                                         ; $724f: $ff
	add  b                                           ; $7250: $80
	dec  a                                           ; $7251: $3d
	ld   [bc], a                                     ; $7252: $02
	ld   b, $c6                                      ; $7253: $06 $c6
	ret  nz                                          ; $7255: $c0

	add  b                                           ; $7256: $80
	ld   hl, sp+$13                                  ; $7257: $f8 $13
	cp   $c1                                         ; $7259: $fe $c1
	nop                                              ; $725b: $00
	ldh  a, [$c0]                                    ; $725c: $f0 $c0
	ld   hl, sp-$10                                  ; $725e: $f8 $f0
	db   $fc                                         ; $7260: $fc
	ld   hl, sp-$02                                  ; $7261: $f8 $fe
	db   $fc                                         ; $7263: $fc
	rst  $30                                         ; $7264: $f7
	cp   $f2                                         ; $7265: $fe $f2
	cp   $f2                                         ; $7267: $fe $f2
	cp   $f7                                         ; $7269: $fe $f7
	db   $eb                                         ; $726b: $eb
	ld   l, e                                        ; $726c: $6b
	add  b                                           ; $726d: $80
	ld   c, a                                        ; $726e: $4f
	add  b                                           ; $726f: $80
	ld   b, a                                        ; $7270: $47
	add  b                                           ; $7271: $80
	ld   d, a                                        ; $7272: $57
	add  c                                           ; $7273: $81
	ld   e, a                                        ; $7274: $5f
	add  c                                           ; $7275: $81
	sbc  a                                           ; $7276: $9f
	dec  b                                           ; $7277: $05
	cp   a                                           ; $7278: $bf
	ldh  a, [c]                                      ; $7279: $f2
	rlca                                             ; $727a: $07
	ld   b, $07                                      ; $727b: $06 $07
	inc  bc                                          ; $727d: $03
	add  c                                           ; $727e: $81
	rlca                                             ; $727f: $07
	add  d                                           ; $7280: $82
	ld   b, $80                                      ; $7281: $06 $80
	dec  b                                           ; $7283: $05
	add  b                                           ; $7284: $80
	inc  bc                                          ; $7285: $03
	rlca                                             ; $7286: $07
	ld   b, $07                                      ; $7287: $06 $07
	inc  e                                           ; $7289: $1c
	rrca                                             ; $728a: $0f
	add  hl, bc                                      ; $728b: $09
	rrca                                             ; $728c: $0f
	jr   nc, jr_09e_72a4                             ; $728d: $30 $15

	add  b                                           ; $728f: $80
	dec  bc                                          ; $7290: $0b
	ld   bc, $2b6a                                   ; $7291: $01 $6a $2b
	add  b                                           ; $7294: $80
	dec  de                                          ; $7295: $1b
	add  b                                           ; $7296: $80
	rla                                              ; $7297: $17
	nop                                              ; $7298: $00
	rst  $38                                         ; $7299: $ff
	add  e                                           ; $729a: $83
	nop                                              ; $729b: $00
	nop                                              ; $729c: $00
	ret  nz                                          ; $729d: $c0

	add  e                                           ; $729e: $83
	add  b                                           ; $729f: $80
	nop                                              ; $72a0: $00
	ldh  [$83], a                                    ; $72a1: $e0 $83
	ret  nz                                          ; $72a3: $c0

jr_09e_72a4:
	nop                                              ; $72a4: $00
	ldh  a, [$81]                                    ; $72a5: $f0 $81
	ldh  [$80], a                                    ; $72a7: $e0 $80
	ret  nz                                          ; $72a9: $c0

	nop                                              ; $72aa: $00
	ret  c                                           ; $72ab: $d8

	add  c                                           ; $72ac: $81
	ret  nc                                          ; $72ad: $d0

	add  b                                           ; $72ae: $80
	ldh  [rSC], a                                    ; $72af: $e0 $02
	db   $ec                                         ; $72b1: $ec
	add  sp, -$04                                    ; $72b2: $e8 $fc
	sbc  c                                           ; $72b4: $99
	nop                                              ; $72b5: $00
	nop                                              ; $72b6: $00
	ld   bc, $0081                                   ; $72b7: $01 $81 $00
	nop                                              ; $72ba: $00
	ld   l, e                                        ; $72bb: $6b
	add  c                                           ; $72bc: $81
	dec  d                                           ; $72bd: $15
	add  b                                           ; $72be: $80
	dec  h                                           ; $72bf: $25
	dec  b                                           ; $72c0: $05
	ld   b, c                                        ; $72c1: $41
	ld   bc, $0111                                   ; $72c2: $01 $11 $01
	inc  [hl]                                        ; $72c5: $34
	inc  b                                           ; $72c6: $04
	add  b                                           ; $72c7: $80
	inc  c                                           ; $72c8: $0c
	add  b                                           ; $72c9: $80
	ld   [$3901], sp                                 ; $72ca: $08 $01 $39
	add  hl, de                                      ; $72cd: $19
	add  b                                           ; $72ce: $80
	rla                                              ; $72cf: $17
	ld   bc, $3676                                   ; $72d0: $01 $76 $36
	add  b                                           ; $72d3: $80
	ld   l, $0f                                      ; $72d4: $2e $0f
	adc  $6e                                         ; $72d6: $ce $6e
	ld   e, $7e                                      ; $72d8: $1e $7e
	ld   a, [$3dfe]                                  ; $72da: $fa $fe $3d
	db   $fd                                         ; $72dd: $fd
	ld   l, a                                        ; $72de: $6f
	add  sp, -$30                                    ; $72df: $e8 $d0
	ldh  a, [$72]                                    ; $72e1: $f0 $72
	ldh  a, [$d0]                                    ; $72e3: $f0 $d0
	ldh  a, [$80]                                    ; $72e5: $f0 $80
	ret  nc                                          ; $72e7: $d0

	ld   bc, $d0d1                                   ; $72e8: $01 $d1 $d0
	add  b                                           ; $72eb: $80
	ret  c                                           ; $72ec: $d8

	ld   bc, $d858                                   ; $72ed: $01 $58 $d8
	add  d                                           ; $72f0: $82
	ld   l, b                                        ; $72f1: $68
	add  b                                           ; $72f2: $80
	ld   h, b                                        ; $72f3: $60
	add  [hl]                                        ; $72f4: $86
	and  b                                           ; $72f5: $a0
	add  b                                           ; $72f6: $80
	add  b                                           ; $72f7: $80
	ld   [bc], a                                     ; $72f8: $02
	cp   $00                                         ; $72f9: $fe $00
	ld   [bc], a                                     ; $72fb: $02
	add  c                                           ; $72fc: $81
	ld   bc, $0703                                   ; $72fd: $01 $03 $07
	inc  bc                                          ; $7300: $03
	ld   [bc], a                                     ; $7301: $02
	inc  bc                                          ; $7302: $03
	add  b                                           ; $7303: $80
	ld   [bc], a                                     ; $7304: $02
	nop                                              ; $7305: $00
	ld   c, $81                                      ; $7306: $0e $81
	ld   b, $00                                      ; $7308: $06 $00
	dec  b                                           ; $730a: $05
	add  e                                           ; $730b: $83
	inc  b                                           ; $730c: $04
	nop                                              ; $730d: $00
	ld   a, [bc]                                     ; $730e: $0a
	add  e                                           ; $730f: $83
	nop                                              ; $7310: $00
	nop                                              ; $7311: $00
	dec  b                                           ; $7312: $05
	add  c                                           ; $7313: $81
	nop                                              ; $7314: $00
	ld   [$bdeb], sp                                 ; $7315: $08 $eb $bd
	dec  l                                           ; $7318: $2d
	cp   l                                           ; $7319: $bd
	xor  l                                           ; $731a: $ad
	cp   l                                           ; $731b: $bd
	ld   e, c                                        ; $731c: $59
	ld   a, c                                        ; $731d: $79
	ld   [hl], b                                     ; $731e: $70
	add  c                                           ; $731f: $81
	ld   a, b                                        ; $7320: $78
	add  b                                           ; $7321: $80
	ld   e, b                                        ; $7322: $58
	nop                                              ; $7323: $00
	ld   e, c                                        ; $7324: $59
	add  c                                           ; $7325: $81
	ld   e, b                                        ; $7326: $58
	ld   b, $52                                      ; $7327: $06 $52
	ld   d, b                                        ; $7329: $50
	ld   h, l                                        ; $732a: $65
	ld   h, b                                        ; $732b: $60
	and  [hl]                                        ; $732c: $a6
	ld   hl, $8081                                   ; $732d: $21 $81 $80
	rlca                                             ; $7330: $07
	add  b                                           ; $7331: $80
	rrca                                             ; $7332: $0f
	add  c                                           ; $7333: $81
	rra                                              ; $7334: $1f
	ld   [bc], a                                     ; $7335: $02
	cp   a                                           ; $7336: $bf
	and  c                                           ; $7337: $a1
	ld   h, c                                        ; $7338: $61
	add  e                                           ; $7339: $83
	ld   h, b                                        ; $733a: $60
	add  b                                           ; $733b: $80
	ld   b, b                                        ; $733c: $40
	ld   [bc], a                                     ; $733d: $02
	inc  sp                                          ; $733e: $33
	nop                                              ; $733f: $00
	call z, $0085                                    ; $7340: $cc $85 $00
	nop                                              ; $7343: $00
	rst  $38                                         ; $7344: $ff
	add  b                                           ; $7345: $80
	nop                                              ; $7346: $00
	adc  e                                           ; $7347: $8b
	rst  $38                                         ; $7348: $ff
	ld   [$7fbf], sp                                 ; $7349: $08 $bf $7f
	ccf                                              ; $734c: $3f
	rra                                              ; $734d: $1f
	rst  $30                                         ; $734e: $f7
	rrca                                             ; $734f: $0f
	dec  e                                           ; $7350: $1d
	inc  bc                                          ; $7351: $03
	ld   bc, $0280                                   ; $7352: $01 $80 $02
	add  b                                           ; $7355: $80
	inc  bc                                          ; $7356: $03
	ld   bc, $0300                                   ; $7357: $01 $00 $03
	add  c                                           ; $735a: $81
	nop                                              ; $735b: $00
	ld   [bc], a                                     ; $735c: $02
	ld   a, [$0100]                                  ; $735d: $fa $00 $01
	add  b                                           ; $7360: $80
	ld   a, [$fb83]                                  ; $7361: $fa $83 $fb
	ld   a, [bc]                                     ; $7364: $0a
	ld   [bc], a                                     ; $7365: $02
	rlca                                             ; $7366: $07
	inc  b                                           ; $7367: $04
	ld   b, $08                                      ; $7368: $06 $08
	dec  c                                           ; $736a: $0d
	ld   de, $731b                                   ; $736b: $11 $1b $73
	ld   h, [hl]                                     ; $736e: $66
	and  $80                                         ; $736f: $e6 $80
	sbc  [hl]                                        ; $7371: $9e
	add  b                                           ; $7372: $80
	ld   a, [hl]                                     ; $7373: $7e
	add  b                                           ; $7374: $80
	db   $fc                                         ; $7375: $fc
	ld   bc, $fd00                                   ; $7376: $01 $00 $fd
	add  c                                           ; $7379: $81
	dec  a                                           ; $737a: $3d
	dec  bc                                          ; $737b: $0b
	dec  sp                                          ; $737c: $3b
	dec  de                                          ; $737d: $1b
	db   $e3                                         ; $737e: $e3
	inc  bc                                          ; $737f: $03
	db   $e4                                         ; $7380: $e4
	inc  d                                           ; $7381: $14
	jr   nc, jr_09e_7387                             ; $7382: $30 $03

	dec  sp                                          ; $7384: $3b
	rlca                                             ; $7385: $07
	adc  d                                           ; $7386: $8a

jr_09e_7387:
	ld   [hl], l                                     ; $7387: $75
	add  h                                           ; $7388: $84

jr_09e_7389:
	ld   h, h                                        ; $7389: $64
	add  b                                           ; $738a: $80
	db   $ec                                         ; $738b: $ec
	add  b                                           ; $738c: $80
	add  sp, -$7c                                    ; $738d: $e8 $84
	ret  z                                           ; $738f: $c8

	add  b                                           ; $7390: $80
	ret  nz                                          ; $7391: $c0

	inc  b                                           ; $7392: $04
	add  d                                           ; $7393: $82
	add  b                                           ; $7394: $80
	add  e                                           ; $7395: $83
	add  h                                           ; $7396: $84
	dec  b                                           ; $7397: $05
	add  b                                           ; $7398: $80
	ld   d, [hl]                                     ; $7399: $56
	add  b                                           ; $739a: $80
	cp   a                                           ; $739b: $bf
	add  c                                           ; $739c: $81
	rst  $38                                         ; $739d: $ff
	nop                                              ; $739e: $00
	ld   a, [hl]                                     ; $739f: $7e
	add  e                                           ; $73a0: $83
	add  b                                           ; $73a1: $80
	nop                                              ; $73a2: $00
	add  d                                           ; $73a3: $82
	add  c                                           ; $73a4: $81
	add  b                                           ; $73a5: $80
	rrca                                             ; $73a6: $0f
	inc  b                                           ; $73a7: $04
	nop                                              ; $73a8: $00
	ld   [rROMB0], sp                                 ; $73a9: $08 $00 $20
	nop                                              ; $73ac: $00
	stop                                             ; $73ad: $10 $00
	ldh  [$80], a                                    ; $73af: $e0 $80
	or   b                                           ; $73b1: $b0
	ret  nz                                          ; $73b2: $c0

	ld   e, b                                        ; $73b3: $58
	ld   b, b                                        ; $73b4: $40
	ld   c, h                                        ; $73b5: $4c
	ld   h, b                                        ; $73b6: $60
	add  b                                           ; $73b7: $80
	jr   nz, jr_09e_73be                             ; $73b8: $20 $04

	ld   h, $a0                                      ; $73ba: $26 $a0
	add  b                                           ; $73bc: $80
	ret  nz                                          ; $73bd: $c0

jr_09e_73be:
	ld   hl, $0181                                   ; $73be: $21 $81 $01
	nop                                              ; $73c1: $00
	inc  b                                           ; $73c2: $04
	add  c                                           ; $73c3: $81
	inc  bc                                          ; $73c4: $03
	rlca                                             ; $73c5: $07
	add  hl, bc                                      ; $73c6: $09
	inc  bc                                          ; $73c7: $03
	inc  sp                                          ; $73c8: $33
	dec  bc                                          ; $73c9: $0b
	ld   h, e                                        ; $73ca: $63
	dec  sp                                          ; $73cb: $3b
	dec  bc                                          ; $73cc: $0b
	dec  sp                                          ; $73cd: $3b
	add  d                                           ; $73ce: $82
	add  hl, sp                                      ; $73cf: $39
	add  b                                           ; $73d0: $80
	ld   sp, $1000                                   ; $73d1: $31 $00 $10
	add  c                                           ; $73d4: $81
	jr   nc, jr_09e_73d8                             ; $73d5: $30 $01

	ret  nc                                          ; $73d7: $d0

jr_09e_73d8:
	ld   d, b                                        ; $73d8: $50
	add  b                                           ; $73d9: $80
	ld   e, b                                        ; $73da: $58
	add  b                                           ; $73db: $80
	ld   c, b                                        ; $73dc: $48
	nop                                              ; $73dd: $00
	rst  $38                                         ; $73de: $ff
	add  l                                           ; $73df: $85
	nop                                              ; $73e0: $00
	inc  bc                                          ; $73e1: $03
	db   $fc                                         ; $73e2: $fc
	nop                                              ; $73e3: $00
	inc  bc                                          ; $73e4: $03
	nop                                              ; $73e5: $00
	add  b                                           ; $73e6: $80
	jr   @-$7e                                       ; $73e7: $18 $80

	ret  nz                                          ; $73e9: $c0

	add  b                                           ; $73ea: $80
	rra                                              ; $73eb: $1f
	add  b                                           ; $73ec: $80
	db   $fd                                         ; $73ed: $fd
	add  b                                           ; $73ee: $80
	cp   $80                                         ; $73ef: $fe $80
	db   $f4                                         ; $73f1: $f4
	add  b                                           ; $73f2: $80
	ld   a, [$d480]                                  ; $73f3: $fa $80 $d4
	add  b                                           ; $73f6: $80
	nop                                              ; $73f7: $00
	add  b                                           ; $73f8: $80
	ld   a, a                                        ; $73f9: $7f
	nop                                              ; $73fa: $00
	rst  $38                                         ; $73fb: $ff
	adc  c                                           ; $73fc: $89
	nop                                              ; $73fd: $00
	inc  bc                                          ; $73fe: $03
	ret  nz                                          ; $73ff: $c0

	nop                                              ; $7400: $00
	and  b                                           ; $7401: $a0
	add  b                                           ; $7402: $80
	add  [hl]                                        ; $7403: $86
	nop                                              ; $7404: $00
	nop                                              ; $7405: $00
	jr   nz, jr_09e_7389                             ; $7406: $20 $81

jr_09e_7408:
	nop                                              ; $7408: $00
	inc  b                                           ; $7409: $04
	jr   nz, jr_09e_740c                             ; $740a: $20 $00

jr_09e_740c:
	ret  nc                                          ; $740c: $d0

	ret  nz                                          ; $740d: $c0

	ldh  a, [$81]                                    ; $740e: $f0 $81
	nop                                              ; $7410: $00
	ld   [$0080], sp                                 ; $7411: $08 $80 $00
	ld   [hl], b                                     ; $7414: $70
	db   $10                                         ; $7415: $10
	db   $f4                                         ; $7416: $f4
	inc  b                                           ; $7417: $04
	dec  d                                           ; $7418: $15
	ld   bc, $8003                                   ; $7419: $01 $03 $80
	ld   [bc], a                                     ; $741c: $02
	add  b                                           ; $741d: $80
	inc  bc                                          ; $741e: $03
	nop                                              ; $741f: $00
	nop                                              ; $7420: $00
	add  d                                           ; $7421: $82
	inc  bc                                          ; $7422: $03
	inc  b                                           ; $7423: $04
	ld   sp, hl                                      ; $7424: $f9
	ld   bc, $00fa                                   ; $7425: $01 $fa $00
	ld   bc, $0083                                   ; $7428: $01 $83 $00
	ld   [bc], a                                     ; $742b: $02
	ei                                               ; $742c: $fb
	nop                                              ; $742d: $00
	db   $fd                                         ; $742e: $fd
	add  c                                           ; $742f: $81
	ret  nz                                          ; $7430: $c0

	add  hl, bc                                      ; $7431: $09
	add  $e0                                         ; $7432: $c6 $e0
	jr   jr_09e_7436                                 ; $7434: $18 $00

jr_09e_7436:
	rst  $30                                         ; $7436: $f7
	nop                                              ; $7437: $00
	scf                                              ; $7438: $37
	nop                                              ; $7439: $00
	inc  a                                           ; $743a: $3c
	nop                                              ; $743b: $00
	add  d                                           ; $743c: $82
	inc  bc                                          ; $743d: $03
	add  d                                           ; $743e: $82
	rlca                                             ; $743f: $07
	add  b                                           ; $7440: $80
	rrca                                             ; $7441: $0f
	add  b                                           ; $7442: $80
	ccf                                              ; $7443: $3f
	inc  h                                           ; $7444: $24
	rst  $38                                         ; $7445: $ff
	nop                                              ; $7446: $00
	rst  $38                                         ; $7447: $ff
	nop                                              ; $7448: $00
	ret  nz                                          ; $7449: $c0

	nop                                              ; $744a: $00
	ldh  [rLCDC], a                                  ; $744b: $e0 $40
	ld   [hl], b                                     ; $744d: $70
	jr   nz, jr_09e_7408                             ; $744e: $20 $b8

	jr   nc, jr_09e_748e                             ; $7450: $30 $3c

	jr   jr_09e_74ac                                 ; $7452: $18 $58

	jr   jr_09e_7474                                 ; $7454: $18 $1e

	sbc  h                                           ; $7456: $9c
	cp   h                                           ; $7457: $bc
	call c, $eecf                                    ; $7458: $dc $cf $ee
	sub  $c6                                         ; $745b: $d6 $c6
	ld   a, [bc]                                     ; $745d: $0a
	ld   [bc], a                                     ; $745e: $02
	inc  b                                           ; $745f: $04
	nop                                              ; $7460: $00
	ld   [bc], a                                     ; $7461: $02
	nop                                              ; $7462: $00
	ld   bc, $ff00                                   ; $7463: $01 $00 $ff
	nop                                              ; $7466: $00
	add  b                                           ; $7467: $80
	nop                                              ; $7468: $00
	ld   a, a                                        ; $7469: $7f
	rst  $38                                         ; $746a: $ff
	nop                                              ; $746b: $00
	rst  $38                                         ; $746c: $ff
	nop                                              ; $746d: $00
	sbc  e                                           ; $746e: $9b
	nop                                              ; $746f: $00
	rlca                                             ; $7470: $07
	ld   h, e                                        ; $7471: $63
	and  b                                           ; $7472: $a0
	cpl                                              ; $7473: $2f

jr_09e_7474:
	ld   h, e                                        ; $7474: $63
	ld   a, a                                        ; $7475: $7f
	ld   l, a                                        ; $7476: $6f
	ld   a, a                                        ; $7477: $7f
	rra                                              ; $7478: $1f
	add  b                                           ; $7479: $80
	ld   a, a                                        ; $747a: $7f
	add  b                                           ; $747b: $80
	ei                                               ; $747c: $fb
	add  b                                           ; $747d: $80
	rst  $30                                         ; $747e: $f7
	inc  bc                                          ; $747f: $03
	rst  $28                                         ; $7480: $ef
	xor  a                                           ; $7481: $af
	ld   b, b                                        ; $7482: $40
	nop                                              ; $7483: $00
	adc  b                                           ; $7484: $88
	rst  $38                                         ; $7485: $ff
	add  d                                           ; $7486: $82
	rst  $30                                         ; $7487: $f7
	add  hl, bc                                      ; $7488: $09
	nop                                              ; $7489: $00
	ld   a, [hl]                                     ; $748a: $7e
	cp   $8f                                         ; $748b: $fe $8f
	rst  $38                                         ; $748d: $ff

jr_09e_748e:
	di                                               ; $748e: $f3
	rst  $38                                         ; $748f: $ff
	db   $fd                                         ; $7490: $fd
	rst  $38                                         ; $7491: $ff
	cp   $82                                         ; $7492: $fe $82
	rst  $38                                         ; $7494: $ff
	add  b                                           ; $7495: $80
	ld   a, [$ef04]                                  ; $7496: $fa $04 $ef
	cpl                                              ; $7499: $2f
	rra                                              ; $749a: $1f
	ld   c, a                                        ; $749b: $4f
	ld   c, d                                        ; $749c: $4a
	add  b                                           ; $749d: $80
	ld   b, b                                        ; $749e: $40
	nop                                              ; $749f: $00
	jp   z, $a280                                    ; $74a0: $ca $80 $a2

	ld   [bc], a                                     ; $74a3: $02
	and  c                                           ; $74a4: $a1
	or   b                                           ; $74a5: $b0
	inc  h                                           ; $74a6: $24
	add  c                                           ; $74a7: $81
	jr   nz, jr_09e_74aa                             ; $74a8: $20 $00

jr_09e_74aa:
	ld   a, [hl-]                                    ; $74aa: $3a
	add  l                                           ; $74ab: $85

jr_09e_74ac:
	ccf                                              ; $74ac: $3f
	add  b                                           ; $74ad: $80
	cp   a                                           ; $74ae: $bf
	add  d                                           ; $74af: $82
	ccf                                              ; $74b0: $3f
	add  b                                           ; $74b1: $80
	scf                                              ; $74b2: $37
	nop                                              ; $74b3: $00
	ld   c, a                                        ; $74b4: $4f
	add  e                                           ; $74b5: $83
	ld   d, b                                        ; $74b6: $50
	add  b                                           ; $74b7: $80
	dec  de                                          ; $74b8: $1b
	ld   bc, $0f1f                                   ; $74b9: $01 $1f $0f
	add  c                                           ; $74bc: $81
	adc  a                                           ; $74bd: $8f
	nop                                              ; $74be: $00
	add  l                                           ; $74bf: $85
	add  b                                           ; $74c0: $80
	push bc                                          ; $74c1: $c5
	ld   bc, $01fb                                   ; $74c2: $01 $fb $01
	add  h                                           ; $74c5: $84
	nop                                              ; $74c6: $00
	add  [hl]                                        ; $74c7: $86
	add  b                                           ; $74c8: $80
	db   $10                                         ; $74c9: $10
	add  sp, -$20                                    ; $74ca: $e8 $e0
	jp   hl                                          ; $74cc: $e9


	ld   h, c                                        ; $74cd: $61
	db   $e3                                         ; $74ce: $e3
	inc  hl                                          ; $74cf: $23
	ld   [hl], a                                     ; $74d0: $77
	rla                                              ; $74d1: $17
	ccf                                              ; $74d2: $3f
	rrca                                             ; $74d3: $0f
	rra                                              ; $74d4: $1f
	rlca                                             ; $74d5: $07
	ld   c, $06                                      ; $74d6: $0e $06
	ld   bc, $0200                                   ; $74d8: $01 $00 $02
	add  c                                           ; $74db: $81
	inc  bc                                          ; $74dc: $03
	add  d                                           ; $74dd: $82
	rlca                                             ; $74de: $07
	add  b                                           ; $74df: $80
	rrca                                             ; $74e0: $0f
	add  b                                           ; $74e1: $80
	ccf                                              ; $74e2: $3f
	inc  bc                                          ; $74e3: $03
	rst  $38                                         ; $74e4: $ff
	nop                                              ; $74e5: $00
	rst  $38                                         ; $74e6: $ff
	nop                                              ; $74e7: $00
	add  b                                           ; $74e8: $80
	rst  $38                                         ; $74e9: $ff
	add  b                                           ; $74ea: $80
	sbc  a                                           ; $74eb: $9f
	add  d                                           ; $74ec: $82
	add  b                                           ; $74ed: $80
	add  b                                           ; $74ee: $80
	ld   hl, sp-$80                                  ; $74ef: $f8 $80
	db   $fc                                         ; $74f1: $fc
	ld   de, $3eff                                   ; $74f2: $11 $ff $3e
	adc  $00                                         ; $74f5: $ce $00
	ldh  a, [$e6]                                    ; $74f7: $f0 $e6
	sub  $c6                                         ; $74f9: $d6 $c6
	ld   c, $02                                      ; $74fb: $0e $02
	ld   b, $00                                      ; $74fd: $06 $00
	ld   [bc], a                                     ; $74ff: $02
	nop                                              ; $7500: $00
	ld   bc, $ff00                                   ; $7501: $01 $00 $ff
	nop                                              ; $7504: $00
	add  b                                           ; $7505: $80
	add  b                                           ; $7506: $80
	ld   bc, $c1c0                                   ; $7507: $01 $c0 $c1
	add  d                                           ; $750a: $82
	pop  hl                                          ; $750b: $e1
	ld   bc, $f2f3                                   ; $750c: $01 $f3 $f2
	add  b                                           ; $750f: $80
	ld   a, [$7902]                                  ; $7510: $fa $02 $79
	ld   e, c                                        ; $7513: $59
	ld   e, h                                        ; $7514: $5c
	add  c                                           ; $7515: $81
	inc  e                                           ; $7516: $1c
	nop                                              ; $7517: $00
	sbc  a                                           ; $7518: $9f
	add  e                                           ; $7519: $83
	nop                                              ; $751a: $00
	add  e                                           ; $751b: $83
	add  b                                           ; $751c: $80
	nop                                              ; $751d: $00
	nop                                              ; $751e: $00
	add  b                                           ; $751f: $80
	ld   b, b                                        ; $7520: $40
	ld   [bc], a                                     ; $7521: $02
	ret  nz                                          ; $7522: $c0

	add  b                                           ; $7523: $80
	ret  nz                                          ; $7524: $c0

	adc  c                                           ; $7525: $89
	nop                                              ; $7526: $00
	add  b                                           ; $7527: $80
	jr   nz, jr_09e_74aa                             ; $7528: $20 $80

	ld   h, b                                        ; $752a: $60
	add  d                                           ; $752b: $82
	nop                                              ; $752c: $00
	ld   d, $01                                      ; $752d: $16 $01
	nop                                              ; $752f: $00
	inc  bc                                          ; $7530: $03
	ld   bc, $0206                                   ; $7531: $01 $06 $02
	inc  c                                           ; $7534: $0c
	inc  b                                           ; $7535: $04
	add  hl, de                                      ; $7536: $19
	ld   [$0122], sp                                 ; $7537: $08 $22 $01
	inc  c                                           ; $753a: $0c
	ld   c, $a0                                      ; $753b: $0e $a0
	ld   h, b                                        ; $753d: $60
	add  a                                           ; $753e: $87
	add  c                                           ; $753f: $81
	add  hl, de                                      ; $7540: $19
	rlca                                             ; $7541: $07
	ld   h, a                                        ; $7542: $67
	rra                                              ; $7543: $1f
	sbc  a                                           ; $7544: $9f
	add  b                                           ; $7545: $80
	ld   a, a                                        ; $7546: $7f
	add  c                                           ; $7547: $81
	rst  $38                                         ; $7548: $ff
	add  b                                           ; $7549: $80
	nop                                              ; $754a: $00
	nop                                              ; $754b: $00
	rst  $38                                         ; $754c: $ff
	add  b                                           ; $754d: $80
	ccf                                              ; $754e: $3f
	add  b                                           ; $754f: $80
	rst  $38                                         ; $7550: $ff
	add  b                                           ; $7551: $80
	db   $fc                                         ; $7552: $fc
	add  b                                           ; $7553: $80
	pop  hl                                          ; $7554: $e1
	add  b                                           ; $7555: $80
	jp   $cf03                                       ; $7556: $c3 $03 $cf


	ret  z                                           ; $7559: $c8

	cp   b                                           ; $755a: $b8
	cp   a                                           ; $755b: $bf
	rst  $38                                         ; $755c: $ff
	nop                                              ; $755d: $00
	rst  $38                                         ; $755e: $ff
	nop                                              ; $755f: $00
	rst  $38                                         ; $7560: $ff
	nop                                              ; $7561: $00
	rst  $38                                         ; $7562: $ff
	nop                                              ; $7563: $00
	rst  $38                                         ; $7564: $ff
	nop                                              ; $7565: $00
	add  sp, $00                                     ; $7566: $e8 $00

jr_09e_7568:
	ld   hl, sp+$00                                  ; $7568: $f8 $00
	add  [hl]                                        ; $756a: $86
	nop                                              ; $756b: $00
	nop                                              ; $756c: $00
	ld   bc, $0083                                   ; $756d: $01 $83 $00
	nop                                              ; $7570: $00
	inc  bc                                          ; $7571: $03
	adc  c                                           ; $7572: $89
	ld   bc, $0200                                   ; $7573: $01 $00 $02
	add  c                                           ; $7576: $81
	nop                                              ; $7577: $00
	nop                                              ; $7578: $00
	ld   bc, $0081                                   ; $7579: $01 $81 $00
	dec  d                                           ; $757c: $15
	ld   bc, $0200                                   ; $757d: $01 $00 $02
	nop                                              ; $7580: $00
	inc  c                                           ; $7581: $0c
	nop                                              ; $7582: $00
	inc  e                                           ; $7583: $1c
	inc  c                                           ; $7584: $0c
	add  hl, sp                                      ; $7585: $39
	add  hl, de                                      ; $7586: $19
	ld   [hl], a                                     ; $7587: $77
	scf                                              ; $7588: $37
	cp   $7e                                         ; $7589: $fe $7e
	ld   a, h                                        ; $758b: $7c
	inc  [hl]                                        ; $758c: $34
	or   l                                           ; $758d: $b5
	call $9089                                       ; $758e: $cd $89 $90
	sbc  d                                           ; $7591: $9a
	and  c                                           ; $7592: $a1
	add  c                                           ; $7593: $81
	ld   h, b                                        ; $7594: $60
	nop                                              ; $7595: $00
	ld   [hl], d                                     ; $7596: $72
	add  d                                           ; $7597: $82
	ld   h, h                                        ; $7598: $64
	nop                                              ; $7599: $00
	rst  $38                                         ; $759a: $ff
	adc  c                                           ; $759b: $89
	nop                                              ; $759c: $00
	rrca                                             ; $759d: $0f
	ld   bc, $0600                                   ; $759e: $01 $00 $06
	ld   bc, $0719                                   ; $75a1: $01 $19 $07
	daa                                              ; $75a4: $27
	rra                                              ; $75a5: $1f
	ld   e, a                                        ; $75a6: $5f
	jr   nc, jr_09e_7568                             ; $75a7: $30 $bf

	ld   l, a                                        ; $75a9: $6f
	ld   a, a                                        ; $75aa: $7f
	ld   e, a                                        ; $75ab: $5f

jr_09e_75ac:
	ld   a, a                                        ; $75ac: $7f
	ccf                                              ; $75ad: $3f
	add  b                                           ; $75ae: $80
	ld   a, a                                        ; $75af: $7f
	add  b                                           ; $75b0: $80
	ei                                               ; $75b1: $fb
	nop                                              ; $75b2: $00
	rst  $38                                         ; $75b3: $ff
	add  a                                           ; $75b4: $87
	nop                                              ; $75b5: $00
	ld   [bc], a                                     ; $75b6: $02
	rra                                              ; $75b7: $1f
	nop                                              ; $75b8: $00
	ldh  [$80], a                                    ; $75b9: $e0 $80
	rra                                              ; $75bb: $1f
	add  h                                           ; $75bc: $84
	rst  $38                                         ; $75bd: $ff
	ld   b, $fc                                      ; $75be: $06 $fc
	rst  $38                                         ; $75c0: $ff
	ld   a, e                                        ; $75c1: $7b
	rst  $38                                         ; $75c2: $ff
	and  a                                           ; $75c3: $a7
	db   $eb                                         ; $75c4: $eb
	res  0, d                                        ; $75c5: $cb $82
	rst  ToBoot                                         ; $75c7: $c7
	nop                                              ; $75c8: $00
	rst  $38                                         ; $75c9: $ff
	add  a                                           ; $75ca: $87
	nop                                              ; $75cb: $00
	ld   [bc], a                                     ; $75cc: $02
	ldh  a, [rP1]                                    ; $75cd: $f0 $00
	rrca                                             ; $75cf: $0f
	add  b                                           ; $75d0: $80
	ldh  a, [$82]                                    ; $75d1: $f0 $82
	rst  $38                                         ; $75d3: $ff
	ld   bc, $ff1f                                   ; $75d4: $01 $1f $ff
	add  c                                           ; $75d7: $81
	rst  $28                                         ; $75d8: $ef
	nop                                              ; $75d9: $00
	rst  $38                                         ; $75da: $ff
	add  b                                           ; $75db: $80
	rst  $30                                         ; $75dc: $f7
	nop                                              ; $75dd: $00
	ldh  a, [$80]                                    ; $75de: $f0 $80
	ei                                               ; $75e0: $fb
	add  b                                           ; $75e1: $80
	db   $fd                                         ; $75e2: $fd
	nop                                              ; $75e3: $00
	rst  $38                                         ; $75e4: $ff
	adc  e                                           ; $75e5: $8b
	nop                                              ; $75e6: $00
	ld   [$00c0], sp                                 ; $75e7: $08 $c0 $00
	jr   nc, jr_09e_75ac                             ; $75ea: $30 $c0

	call z, $f2f0                                    ; $75ec: $cc $f0 $f2
	db   $fc                                         ; $75ef: $fc
	db   $fd                                         ; $75f0: $fd
	add  b                                           ; $75f1: $80
	cp   $80                                         ; $75f2: $fe $80
	rst  $38                                         ; $75f4: $ff
	dec  b                                           ; $75f5: $05
	ld   a, h                                        ; $75f6: $7c
	db   $fc                                         ; $75f7: $fc
	sbc  b                                           ; $75f8: $98
	ld   hl, sp-$18                                  ; $75f9: $f8 $e8
	rst  $30                                         ; $75fb: $f7
	add  l                                           ; $75fc: $85
	nop                                              ; $75fd: $00
	ld   [bc], a                                     ; $75fe: $02
	add  b                                           ; $75ff: $80
	nop                                              ; $7600: $00
	ld   b, b                                        ; $7601: $40
	add  b                                           ; $7602: $80
	add  b                                           ; $7603: $80
	ld   bc, $2000                                   ; $7604: $01 $00 $20
	add  c                                           ; $7607: $81
	nop                                              ; $7608: $00
	nop                                              ; $7609: $00
	db   $10                                         ; $760a: $10
	add  e                                           ; $760b: $83
	nop                                              ; $760c: $00
	nop                                              ; $760d: $00
	ld   [$0089], sp                                 ; $760e: $08 $89 $00
	adc  d                                           ; $7611: $8a
	add  b                                           ; $7612: $80
	nop                                              ; $7613: $00
	ld   [$0081], sp                                 ; $7614: $08 $81 $00
	rlca                                             ; $7617: $07
	ld   [$3400], sp                                 ; $7618: $08 $00 $34
	jr   nc, jr_09e_7657                             ; $761b: $30 $3a

	jr   c, jr_09e_763e                              ; $761d: $38 $1f

	ld   e, $80                                      ; $761f: $1e $80
	rlca                                             ; $7621: $07
	add  b                                           ; $7622: $80
	ld   de, $ff00                                   ; $7623: $11 $00 $ff
	add  c                                           ; $7626: $81
	nop                                              ; $7627: $00
	rlca                                             ; $7628: $07
	inc  c                                           ; $7629: $0c
	nop                                              ; $762a: $00
	ld   a, [bc]                                     ; $762b: $0a
	nop                                              ; $762c: $00
	inc  c                                           ; $762d: $0c
	inc  b                                           ; $762e: $04
	db   $fc                                         ; $762f: $fc
	inc  c                                           ; $7630: $0c
	add  b                                           ; $7631: $80
	ld   hl, sp+$01                                  ; $7632: $f8 $01
	add  d                                           ; $7634: $82
	add  b                                           ; $7635: $80
	add  b                                           ; $7636: $80
	ldh  a, [$03]                                    ; $7637: $f0 $03
	inc  b                                           ; $7639: $04
	nop                                              ; $763a: $00
	ld   [$8000], sp                                 ; $763b: $08 $00 $80

jr_09e_763e:
	ret  nz                                          ; $763e: $c0

	inc  b                                           ; $763f: $04
	sub  b                                           ; $7640: $90
	add  b                                           ; $7641: $80
	jr   nz, jr_09e_7644                             ; $7642: $20 $00

jr_09e_7644:
	ret  nz                                          ; $7644: $c0

	add  c                                           ; $7645: $81
	nop                                              ; $7646: $00
	ld   bc, $4fb0                                   ; $7647: $01 $b0 $4f
	add  b                                           ; $764a: $80
	ld   a, [hl]                                     ; $764b: $7e
	add  b                                           ; $764c: $80
	ccf                                              ; $764d: $3f
	add  b                                           ; $764e: $80
	ld   bc, $0780                                   ; $764f: $01 $80 $07
	add  b                                           ; $7652: $80
	db   $fc                                         ; $7653: $fc
	ld   [$0001], sp                                 ; $7654: $08 $01 $00

jr_09e_7657:
	ld   c, $00                                      ; $7657: $0e $00
	stop                                             ; $7659: $10 $00
	ld   h, b                                        ; $765b: $60
	nop                                              ; $765c: $00
	add  b                                           ; $765d: $80
	adc  c                                           ; $765e: $89
	nop                                              ; $765f: $00
	nop                                              ; $7660: $00
	ld   a, a                                        ; $7661: $7f
	add  c                                           ; $7662: $81
	nop                                              ; $7663: $00
	ld   bc, $2023                                   ; $7664: $01 $23 $20
	add  b                                           ; $7667: $80
	db   $10                                         ; $7668: $10
	ld   bc, $78f8                                   ; $7669: $01 $f8 $78
	add  b                                           ; $766c: $80
	ld   hl, sp+$05                                  ; $766d: $f8 $05
	add  h                                           ; $766f: $84
	add  b                                           ; $7670: $80
	inc  b                                           ; $7671: $04
	nop                                              ; $7672: $00
	ld   a, [$82f8]                                  ; $7673: $fa $f8 $82
	db   $fc                                         ; $7676: $fc
	add  b                                           ; $7677: $80
	add  b                                           ; $7678: $80
	ld   [bc], a                                     ; $7679: $02
	nop                                              ; $767a: $00
	jr   c, jr_09e_76b6                              ; $767b: $38 $39

	add  b                                           ; $767d: $80
	cp   $81                                         ; $767e: $fe $81
	rst  $38                                         ; $7680: $ff
	adc  d                                           ; $7681: $8a
	nop                                              ; $7682: $00
	inc  c                                           ; $7683: $0c
	add  b                                           ; $7684: $80
	nop                                              ; $7685: $00
	ld   b, b                                        ; $7686: $40
	add  b                                           ; $7687: $80
	and  b                                           ; $7688: $a0
	ret  nz                                          ; $7689: $c0

	ret  nc                                          ; $768a: $d0

	ldh  [$e8], a                                    ; $768b: $e0 $e8
	ldh  a, [$f4]                                    ; $768d: $f0 $f4
	ld   hl, sp-$06                                  ; $768f: $f8 $fa
	add  b                                           ; $7691: $80
	db   $fc                                         ; $7692: $fc
	ld   bc, $8d8c                                   ; $7693: $01 $8c $8d
	add  b                                           ; $7696: $80
	ldh  a, [c]                                      ; $7697: $f2
	ld   bc, $03fc                                   ; $7698: $01 $fc $03
	adc  l                                           ; $769b: $8d
	nop                                              ; $769c: $00
	nop                                              ; $769d: $00
	add  b                                           ; $769e: $80
	add  c                                           ; $769f: $81
	nop                                              ; $76a0: $00
	nop                                              ; $76a1: $00
	ld   b, b                                        ; $76a2: $40
	add  a                                           ; $76a3: $87
	nop                                              ; $76a4: $00
	ld   [bc], a                                     ; $76a5: $02
	ld   b, b                                        ; $76a6: $40
	nop                                              ; $76a7: $00
	dec  de                                          ; $76a8: $1b
	add  c                                           ; $76a9: $81
	ld   h, h                                        ; $76aa: $64
	add  b                                           ; $76ab: $80
	and  d                                           ; $76ac: $a2
	add  b                                           ; $76ad: $80
	or   d                                           ; $76ae: $b2
	ld   bc, $1050                                   ; $76af: $01 $50 $10
	add  b                                           ; $76b2: $80
	jr   jr_09e_76b8                                 ; $76b3: $18 $03

	db   $ec                                         ; $76b5: $ec

jr_09e_76b6:
	inc  c                                           ; $76b6: $0c
	ld   b, d                                        ; $76b7: $42

jr_09e_76b8:
	ld   [bc], a                                     ; $76b8: $02
	add  b                                           ; $76b9: $80
	nop                                              ; $76ba: $00
	ld   bc, $0a2a                                   ; $76bb: $01 $2a $0a
	add  d                                           ; $76be: $82
	ld   [de], a                                     ; $76bf: $12
	inc  c                                           ; $76c0: $0c
	ld   [hl+], a                                    ; $76c1: $22
	ld   [bc], a                                     ; $76c2: $02
	stop                                             ; $76c3: $10 $00
	ld   [$0600], sp                                 ; $76c5: $08 $00 $06
	nop                                              ; $76c8: $00
	inc  bc                                          ; $76c9: $03
	nop                                              ; $76ca: $00
	inc  bc                                          ; $76cb: $03
	nop                                              ; $76cc: $00
	ld   bc, $008d                                   ; $76cd: $01 $8d $00
	dec  bc                                          ; $76d0: $0b
	ld   bc, $0600                                   ; $76d1: $01 $00 $06
	nop                                              ; $76d4: $00
	jr   jr_09e_76de                                 ; $76d5: $18 $07

	ld   h, a                                        ; $76d7: $67
	rra                                              ; $76d8: $1f
	sbc  a                                           ; $76d9: $9f
	ld   [hl], b                                     ; $76da: $70
	ld   a, a                                        ; $76db: $7f
	rrca                                             ; $76dc: $0f
	add  b                                           ; $76dd: $80

jr_09e_76de:
	ld   a, b                                        ; $76de: $78
	add  b                                           ; $76df: $80
	sbc  h                                           ; $76e0: $9c
	add  b                                           ; $76e1: $80
	ld   [hl], e                                     ; $76e2: $73
	add  b                                           ; $76e3: $80
	xor  $0b                                         ; $76e4: $ee $0b
	db   $fc                                         ; $76e6: $fc
	db   $fd                                         ; $76e7: $fd
	ld   sp, hl                                      ; $76e8: $f9
	ld   a, [$7672]                                  ; $76e9: $fa $72 $76
	rst  $20                                         ; $76ec: $e7
	db   $ed                                         ; $76ed: $ed
	call $9fdd                                       ; $76ee: $cd $dd $9f
	cp   e                                           ; $76f1: $bb
	add  b                                           ; $76f2: $80
	or   e                                           ; $76f3: $b3
	dec  b                                           ; $76f4: $05
	ld   [hl+], a                                    ; $76f5: $22
	ld   h, d                                        ; $76f6: $62
	ld   b, c                                        ; $76f7: $41
	ld   b, b                                        ; $76f8: $40
	ld   b, $80                                      ; $76f9: $06 $80
	add  b                                           ; $76fb: $80
	inc  e                                           ; $76fc: $1c
	add  hl, bc                                      ; $76fd: $09
	cp   b                                           ; $76fe: $b8
	or   b                                           ; $76ff: $b0
	dec  bc                                          ; $7700: $0b
	nop                                              ; $7701: $00
	rrca                                             ; $7702: $0f
	inc  bc                                          ; $7703: $03
	inc  e                                           ; $7704: $1c
	inc  c                                           ; $7705: $0c
	inc  sp                                          ; $7706: $33
	inc  de                                          ; $7707: $13
	add  b                                           ; $7708: $80
	rrca                                             ; $7709: $0f
	add  b                                           ; $770a: $80
	rlca                                             ; $770b: $07
	inc  bc                                          ; $770c: $03
	dec  hl                                          ; $770d: $2b
	inc  bc                                          ; $770e: $03
	ld   [de], a                                     ; $770f: $12
	ld   [bc], a                                     ; $7710: $02
	add  b                                           ; $7711: $80
	nop                                              ; $7712: $00
	add  b                                           ; $7713: $80
	ld   bc, $0380                                   ; $7714: $01 $80 $03
	add  b                                           ; $7717: $80
	ld   bc, $0802                                   ; $7718: $01 $02 $08
	ld   [bc], a                                     ; $771b: $02
	ld   [de], a                                     ; $771c: $12
	add  c                                           ; $771d: $81
	inc  bc                                          ; $771e: $03
	ld   [bc], a                                     ; $771f: $02
	inc  hl                                          ; $7720: $23
	ld   bc, $853e                                   ; $7721: $01 $3e $85
	nop                                              ; $7724: $00
	jr   jr_09e_7728                                 ; $7725: $18 $01

	nop                                              ; $7727: $00

jr_09e_7728:
	ld   [bc], a                                     ; $7728: $02
	nop                                              ; $7729: $00
	inc  c                                           ; $772a: $0c
	nop                                              ; $772b: $00
	inc  e                                           ; $772c: $1c
	nop                                              ; $772d: $00
	dec  [hl]                                        ; $772e: $35
	nop                                              ; $772f: $00
	ld   l, [hl]                                     ; $7730: $6e
	nop                                              ; $7731: $00
	ret                                              ; $7732: $c9


	nop                                              ; $7733: $00
	ld   [bc], a                                     ; $7734: $02
	ld   c, b                                        ; $7735: $48
	ret                                              ; $7736: $c9


	jr   nc, @+$76                                   ; $7737: $30 $74

	add  hl, hl                                      ; $7739: $29
	inc  hl                                          ; $773a: $23
	ld   [de], a                                     ; $773b: $12
	db   $d3                                         ; $773c: $d3
	ld   [de], a                                     ; $773d: $12
	sbc  a                                           ; $773e: $9f
	add  c                                           ; $773f: $81
	rst  $38                                         ; $7740: $ff
	add  b                                           ; $7741: $80
	ld   a, [hl]                                     ; $7742: $7e
	ld   a, [de]                                     ; $7743: $1a
	sbc  c                                           ; $7744: $99
	add  hl, de                                      ; $7745: $19
	ld   b, a                                        ; $7746: $47
	rlca                                             ; $7747: $07
	ld   h, a                                        ; $7748: $67
	daa                                              ; $7749: $27
	rst  ToBoot                                         ; $774a: $c7
	ld   b, a                                        ; $774b: $47
	ld   h, [hl]                                     ; $774c: $66
	ld   b, [hl]                                     ; $774d: $46
	dec  d                                           ; $774e: $15
	nop                                              ; $774f: $00
	ld   l, $00                                      ; $7750: $2e $00
	ld   c, l                                        ; $7752: $4d
	nop                                              ; $7753: $00
	ld   d, [hl]                                     ; $7754: $56
	nop                                              ; $7755: $00
	adc  b                                           ; $7756: $88
	db   $10                                         ; $7757: $10
	dec  c                                           ; $7758: $0d
	jr   z, @-$6e                                    ; $7759: $28 $90

	db   $10                                         ; $775b: $10
	and  l                                           ; $775c: $a5
	nop                                              ; $775d: $00
	sbc  b                                           ; $775e: $98
	add  b                                           ; $775f: $80
	ld   [$c480], a                                  ; $7760: $ea $80 $c4
	inc  b                                           ; $7763: $04
	adc  b                                           ; $7764: $88
	xor  b                                           ; $7765: $a8
	add  b                                           ; $7766: $80
	and  e                                           ; $7767: $a3
	add  e                                           ; $7768: $83
	add  b                                           ; $7769: $80
	sbc  b                                           ; $776a: $98
	add  b                                           ; $776b: $80
	sub  h                                           ; $776c: $94
	add  b                                           ; $776d: $80
	adc  e                                           ; $776e: $8b
	add  d                                           ; $776f: $82
	add  b                                           ; $7770: $80
	inc  c                                           ; $7771: $0c
	and  e                                           ; $7772: $a3
	add  b                                           ; $7773: $80
	or   b                                           ; $7774: $b0
	add  b                                           ; $7775: $80
	add  sp, $00                                     ; $7776: $e8 $00
	add  b                                           ; $7778: $80
	nop                                              ; $7779: $00
	ld   a, h                                        ; $777a: $7c
	nop                                              ; $777b: $00
	add  h                                           ; $777c: $84
	nop                                              ; $777d: $00
	adc  h                                           ; $777e: $8c
	add  c                                           ; $777f: $81
	stop                                             ; $7780: $10 $00
	ld   h, b                                        ; $7782: $60
	adc  e                                           ; $7783: $8b
	nop                                              ; $7784: $00
	add  b                                           ; $7785: $80
	add  b                                           ; $7786: $80
	inc  c                                           ; $7787: $0c
	jp   $fe42                                       ; $7788: $c3 $42 $fe


	add  hl, de                                      ; $778b: $19
	ld   e, c                                        ; $778c: $59
	rlca                                             ; $778d: $07
	ld   h, a                                        ; $778e: $67
	daa                                              ; $778f: $27
	ret  nz                                          ; $7790: $c0

	ld   b, b                                        ; $7791: $40
	ld   h, c                                        ; $7792: $61
	ld   h, b                                        ; $7793: $60
	ld   a, [$0385]                                  ; $7794: $fa $85 $03
	add  d                                           ; $7797: $82
	rlca                                             ; $7798: $07
	add  b                                           ; $7799: $80
	rrca                                             ; $779a: $0f
	ld   [de], a                                     ; $779b: $12
	rra                                              ; $779c: $1f
	inc  de                                          ; $779d: $13
	ld   [hl], e                                     ; $779e: $73
	ld   h, a                                        ; $779f: $67
	rst  $20                                         ; $77a0: $e7
	sbc  a                                           ; $77a1: $9f
	sbc  e                                           ; $77a2: $9b
	ld   a, e                                        ; $77a3: $7b
	ld   [hl], e                                     ; $77a4: $73
	di                                               ; $77a5: $f3
	db   $e3                                         ; $77a6: $e3
	ldh  [$8f], a                                    ; $77a7: $e0 $8f
	add  e                                           ; $77a9: $83
	ld   a, a                                        ; $77aa: $7f
	rrca                                             ; $77ab: $0f
	cp   $7e                                         ; $77ac: $fe $7e
	rst  $38                                         ; $77ae: $ff
	rst  $38                                         ; $77af: $ff
	nop                                              ; $77b0: $00
	rst  $38                                         ; $77b1: $ff
	nop                                              ; $77b2: $00
	cp   e                                           ; $77b3: $bb
	nop                                              ; $77b4: $00
	ld   bc, $f708                                   ; $77b5: $01 $08 $f7
	add  b                                           ; $77b8: $80
	ld   l, [hl]                                     ; $77b9: $6e
	add  b                                           ; $77ba: $80
	ld   c, h                                        ; $77bb: $4c
	nop                                              ; $77bc: $00
	sbc  b                                           ; $77bd: $98
	add  b                                           ; $77be: $80
	sub  c                                           ; $77bf: $91
	ld   bc, $2981                                   ; $77c0: $01 $81 $29
	add  b                                           ; $77c3: $80
	inc  hl                                          ; $77c4: $23
	inc  b                                           ; $77c5: $04
	inc  de                                          ; $77c6: $13
	ld   [de], a                                     ; $77c7: $12
	ld   d, $64                                      ; $77c8: $16 $64
	ld   b, e                                        ; $77ca: $43
	add  b                                           ; $77cb: $80
	dec  bc                                          ; $77cc: $0b
	add  hl, bc                                      ; $77cd: $09
	add  e                                           ; $77ce: $83
	add  c                                           ; $77cf: $81
	ld   d, c                                        ; $77d0: $51
	ld   d, d                                        ; $77d1: $52
	inc  b                                           ; $77d2: $04
	db   $fc                                         ; $77d3: $fc
	jr   @+$1e                                       ; $77d4: $18 $1c

	inc  c                                           ; $77d6: $0c
	dec  c                                           ; $77d7: $0d
	add  b                                           ; $77d8: $80
	dec  b                                           ; $77d9: $05
	ld   bc, $7f83                                   ; $77da: $01 $83 $7f
	add  c                                           ; $77dd: $81
	cp   a                                           ; $77de: $bf
	ld   bc, $5a3b                                   ; $77df: $01 $3b $5a
	add  b                                           ; $77e2: $80
	adc  h                                           ; $77e3: $8c
	ld   b, $04                                      ; $77e4: $06 $04
	dec  d                                           ; $77e6: $15
	nop                                              ; $77e7: $00
	ld   b, b                                        ; $77e8: $40
	ld   a, [bc]                                     ; $77e9: $0a
	ld   [bc], a                                     ; $77ea: $02
	add  a                                           ; $77eb: $87
	add  b                                           ; $77ec: $80
	ldh  a, [$81]                                    ; $77ed: $f0 $81
	ld   hl, sp+$01                                  ; $77ef: $f8 $01
	add  sp, -$14                                    ; $77f1: $e8 $ec
	add  b                                           ; $77f3: $80
	db   $f4                                         ; $77f4: $f4
	ld   bc, $36b4                                   ; $77f5: $01 $b4 $36
	add  b                                           ; $77f8: $80
	ld   a, [bc]                                     ; $77f9: $0a
	ld   b, $46                                      ; $77fa: $06 $46
	ld   b, $36                                      ; $77fc: $06 $36
	dec  a                                           ; $77fe: $3d
	ld   sp, $1b1f                                   ; $77ff: $31 $1f $1b
	add  b                                           ; $7802: $80
	ld   d, [hl]                                     ; $7803: $56
	add  b                                           ; $7804: $80
	nop                                              ; $7805: $00
	add  hl, bc                                      ; $7806: $09
	db   $10                                         ; $7807: $10
	adc  b                                           ; $7808: $88
	and  c                                           ; $7809: $a1
	add  l                                           ; $780a: $85
	xor  l                                           ; $780b: $ad
	dec  l                                           ; $780c: $2d
	cp   h                                           ; $780d: $bc
	sbc  b                                           ; $780e: $98
	call nc, $80cc                                   ; $780f: $d4 $cc $80
	inc  sp                                          ; $7812: $33
	add  b                                           ; $7813: $80
	ld   c, a                                        ; $7814: $4f
	add  b                                           ; $7815: $80
	rra                                              ; $7816: $1f
	add  b                                           ; $7817: $80
	ld   a, h                                        ; $7818: $7c
	ld   [bc], a                                     ; $7819: $02
	ldh  [$e1], a                                    ; $781a: $e0 $e1
	ld   bc, $0780                                   ; $781c: $01 $80 $07
	ld   [bc], a                                     ; $781f: $02
	rra                                              ; $7820: $1f
	dec  e                                           ; $7821: $1d
	ld   [bc], a                                     ; $7822: $02
	add  b                                           ; $7823: $80
	xor  d                                           ; $7824: $aa
	add  b                                           ; $7825: $80
	dec  hl                                          ; $7826: $2b
	add  d                                           ; $7827: $82
	ld   d, e                                        ; $7828: $53
	add  b                                           ; $7829: $80
	rst  $30                                         ; $782a: $f7
	add  b                                           ; $782b: $80
	db   $fd                                         ; $782c: $fd
	add  b                                           ; $782d: $80
	db   $dd                                         ; $782e: $dd
	nop                                              ; $782f: $00
	nop                                              ; $7830: $00
	add  b                                           ; $7831: $80
	scf                                              ; $7832: $37
	add  b                                           ; $7833: $80
	ld   c, a                                        ; $7834: $4f
	add  b                                           ; $7835: $80
	rrca                                             ; $7836: $0f
	add  b                                           ; $7837: $80
	rra                                              ; $7838: $1f
	add  b                                           ; $7839: $80
	ccf                                              ; $783a: $3f
	ld   bc, $be3e                                   ; $783b: $01 $3e $be
	add  b                                           ; $783e: $80
	cp   h                                           ; $783f: $bc
	ld   [bc], a                                     ; $7840: $02
	cp   c                                           ; $7841: $b9
	ld   a, c                                        ; $7842: $79
	cp   a                                           ; $7843: $bf
	add  b                                           ; $7844: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7845: $cf
	add  b                                           ; $7846: $80
	rst  $20                                         ; $7847: $e7
	add  b                                           ; $7848: $80
	pop  af                                          ; $7849: $f1
	ld   [$78f8], sp                                 ; $784a: $08 $f8 $78
	ld   a, h                                        ; $784d: $7c
	ld   hl, sp-$04                                  ; $784e: $f8 $fc
	ldh  [$e4], a                                    ; $7850: $e0 $e4
	call c, $8102                                    ; $7852: $dc $02 $81
	db   $dd                                         ; $7855: $dd
	add  b                                           ; $7856: $80
	inc  e                                           ; $7857: $1c
	add  b                                           ; $7858: $80
	inc  b                                           ; $7859: $04
	ld   [$00e0], sp                                 ; $785a: $08 $e0 $00
	jr   nz, @+$0e                                   ; $785d: $20 $0c

	ld   c, h                                        ; $785f: $4c
	ld   [bc], a                                     ; $7860: $02
	add  d                                           ; $7861: $82
	ld   a, a                                        ; $7862: $7f
	rst  $38                                         ; $7863: $ff
	add  d                                           ; $7864: $82
	sub  e                                           ; $7865: $93
	ld   bc, $0383                                   ; $7866: $01 $83 $03
	add  d                                           ; $7869: $82
	ld   b, $80                                      ; $786a: $06 $80
	dec  b                                           ; $786c: $05
	add  b                                           ; $786d: $80
	call z, $c80e                                    ; $786e: $cc $0e $c8
	res  7, h                                        ; $7871: $cb $bc
	cp   c                                           ; $7873: $b9
	ld   [hl], c                                     ; $7874: $71
	ld   [hl], e                                     ; $7875: $73
	ld   l, e                                        ; $7876: $6b
	ld   l, d                                        ; $7877: $6a
	jp   z, $95c5                                    ; $7878: $ca $c5 $95

	sub  e                                           ; $787b: $93
	inc  de                                          ; $787c: $13
	rrca                                             ; $787d: $0f
	cpl                                              ; $787e: $2f
	add  b                                           ; $787f: $80
	rra                                              ; $7880: $1f
	nop                                              ; $7881: $00
	ccf                                              ; $7882: $3f
	add  b                                           ; $7883: $80
	cp   $03                                         ; $7884: $fe $03
	rst  $38                                         ; $7886: $ff
	ld   a, a                                        ; $7887: $7f
	ld   a, h                                        ; $7888: $7c
	db   $fc                                         ; $7889: $fc
	add  b                                           ; $788a: $80
	ld   hl, sp-$80                                  ; $788b: $f8 $80
	ldh  a, [$82]                                    ; $788d: $f0 $82
	ldh  [rSB], a                                    ; $788f: $e0 $01
	ret  nz                                          ; $7891: $c0

	ccf                                              ; $7892: $3f
	adc  l                                           ; $7893: $8d
	nop                                              ; $7894: $00
	nop                                              ; $7895: $00
	ret  nc                                          ; $7896: $d0

	add  c                                           ; $7897: $81
	cpl                                              ; $7898: $2f
	add  b                                           ; $7899: $80
	daa                                              ; $789a: $27
	nop                                              ; $789b: $00
	dec  h                                           ; $789c: $25
	add  c                                           ; $789d: $81
	and  l                                           ; $789e: $a5
	add  b                                           ; $789f: $80
	and  h                                           ; $78a0: $a4
	ld   bc, $a424                                   ; $78a1: $01 $24 $a4
	add  b                                           ; $78a4: $80
	ld   b, h                                        ; $78a5: $44
	add  c                                           ; $78a6: $81
	add  hl, bc                                      ; $78a7: $09
	ld   [bc], a                                     ; $78a8: $02
	ld   c, c                                        ; $78a9: $49
	ld   d, d                                        ; $78aa: $52
	sub  d                                           ; $78ab: $92
	add  b                                           ; $78ac: $80
	and  h                                           ; $78ad: $a4
	ld   [bc], a                                     ; $78ae: $02
	ret  nz                                          ; $78af: $c0

	ld   b, d                                        ; $78b0: $42
	ld   [bc], a                                     ; $78b1: $02
	add  b                                           ; $78b2: $80
	ld   bc, $e580                                   ; $78b3: $01 $80 $e5
	ld   bc, $2ed1                                   ; $78b6: $01 $d1 $2e
	rst  $38                                         ; $78b9: $ff
	nop                                              ; $78ba: $00
	rst  $38                                         ; $78bb: $ff
	nop                                              ; $78bc: $00
	rst  $38                                         ; $78bd: $ff
	nop                                              ; $78be: $00
	rst  $38                                         ; $78bf: $ff
	nop                                              ; $78c0: $00
	rst  $38                                         ; $78c1: $ff
	nop                                              ; $78c2: $00
	ld   hl, sp+$00                                  ; $78c3: $f8 $00
	ld   [$8800], a                                  ; $78c5: $ea $00 $88
	nop                                              ; $78c8: $00
	ld   d, $03                                      ; $78c9: $16 $03
	nop                                              ; $78cb: $00
	rrca                                             ; $78cc: $0f

jr_09e_78cd:
	inc  bc                                          ; $78cd: $03
	rra                                              ; $78ce: $1f
	rrca                                             ; $78cf: $0f
	ld   a, a                                        ; $78d0: $7f
	rra                                              ; $78d1: $1f
	rst  $38                                         ; $78d2: $ff
	ld   a, a                                        ; $78d3: $7f
	rst  $28                                         ; $78d4: $ef
	rst  $38                                         ; $78d5: $ff
	adc  a                                           ; $78d6: $8f
	rst  $38                                         ; $78d7: $ff
	ld   c, a                                        ; $78d8: $4f
	rst  $38                                         ; $78d9: $ff
	adc  a                                           ; $78da: $8f
	rst  $38                                         ; $78db: $ff
	xor  [hl]                                        ; $78dc: $ae
	cp   a                                           ; $78dd: $bf
	or   b                                           ; $78de: $b0
	ld   a, l                                        ; $78df: $7d
	add  e                                           ; $78e0: $83
	add  l                                           ; $78e1: $85
	nop                                              ; $78e2: $00
	ld   c, $01                                      ; $78e3: $0e $01
	nop                                              ; $78e5: $00
	rst  ToBoot                                         ; $78e6: $c7
	ld   bc, $c7e8                                   ; $78e7: $01 $e8 $c7
	sub  a                                           ; $78ea: $97
	rst  $28                                         ; $78eb: $ef
	ld   l, a                                        ; $78ec: $6f
	rst  $38                                         ; $78ed: $ff
	ccf                                              ; $78ee: $3f
	rst  $38                                         ; $78ef: $ff
	cp   a                                           ; $78f0: $bf
	ei                                               ; $78f1: $fb
	cp   e                                           ; $78f2: $bb
	add  c                                           ; $78f3: $81
	rst  $30                                         ; $78f4: $f7
	rlca                                             ; $78f5: $07
	inc  [hl]                                        ; $78f6: $34
	rst  $28                                         ; $78f7: $ef
	adc  l                                           ; $78f8: $8d
	ld   l, a                                        ; $78f9: $6f
	ldh  a, [rIE]                                    ; $78fa: $f0 $ff
	cp   $ff                                         ; $78fc: $fe $ff
	add  b                                           ; $78fe: $80
	rst  $30                                         ; $78ff: $f7
	add  b                                           ; $7900: $80
	db   $e3                                         ; $7901: $e3
	inc  b                                           ; $7902: $04
	ld   b, c                                        ; $7903: $41
	ld   c, c                                        ; $7904: $49
	add  c                                           ; $7905: $81
	sub  l                                           ; $7906: $95
	nop                                              ; $7907: $00
	add  c                                           ; $7908: $81
	ld   b, d                                        ; $7909: $42
	nop                                              ; $790a: $00
	ld   h, b                                        ; $790b: $60
	add  c                                           ; $790c: $81
	add  c                                           ; $790d: $81
	add  h                                           ; $790e: $84
	nop                                              ; $790f: $00
	nop                                              ; $7910: $00
	ld   b, b                                        ; $7911: $40
	adc  l                                           ; $7912: $8d
	nop                                              ; $7913: $00
	ld   bc, $00ff                                   ; $7914: $01 $ff $00
	add  b                                           ; $7917: $80
	rst  $38                                         ; $7918: $ff
	inc  d                                           ; $7919: $14
	ccf                                              ; $791a: $3f
	rst  $38                                         ; $791b: $ff
	cp   a                                           ; $791c: $bf
	rst  $38                                         ; $791d: $ff
	ld   a, a                                        ; $791e: $7f
	rst  $38                                         ; $791f: $ff
	ld   a, a                                        ; $7920: $7f
	rst  $38                                         ; $7921: $ff
	ld   a, [hl]                                     ; $7922: $7e
	rst  $38                                         ; $7923: $ff
	cp   $ff                                         ; $7924: $fe $ff
	ld   a, a                                        ; $7926: $7f
	rst  $38                                         ; $7927: $ff
	dec  a                                           ; $7928: $3d
	rst  $38                                         ; $7929: $ff
	adc  h                                           ; $792a: $8c
	rst  JumpTable                                         ; $792b: $df
	ldh  a, [c]                                      ; $792c: $f2
	rst  $28                                         ; $792d: $ef
	di                                               ; $792e: $f3
	add  a                                           ; $792f: $87
	nop                                              ; $7930: $00
	ld   d, $c0                                      ; $7931: $16 $c0
	nop                                              ; $7933: $00
	ldh  a, [$c0]                                    ; $7934: $f0 $c0
	ld   hl, sp-$10                                  ; $7936: $f8 $f0
	db   $fc                                         ; $7938: $fc
	ld   hl, sp-$28                                  ; $7939: $f8 $d8
	ld   hl, sp-$5a                                  ; $793b: $f8 $a6
	db   $fc                                         ; $793d: $fc
	ld   a, e                                        ; $793e: $7b
	cp   $f9                                         ; $793f: $fe $f9
	ccf                                              ; $7941: $3f
	cp   b                                           ; $7942: $b8
	rst  JumpTable                                         ; $7943: $df
	ld   e, $ef                                      ; $7944: $1e $ef
	xor  l                                           ; $7946: $ad
	rst  $30                                         ; $7947: $f7
	add  hl, bc                                      ; $7948: $09
	add  l                                           ; $7949: $85
	nop                                              ; $794a: $00
	jr   jr_09e_78cd                                 ; $794b: $18 $80

	nop                                              ; $794d: $00
	ret  nz                                          ; $794e: $c0

	add  b                                           ; $794f: $80
	ldh  [$c0], a                                    ; $7950: $e0 $c0
	ldh  a, [$e0]                                    ; $7952: $f0 $e0
	ld   hl, sp-$10                                  ; $7954: $f8 $f0
	db   $ec                                         ; $7956: $ec
	add  sp, $76                                     ; $7957: $e8 $76
	db   $f4                                         ; $7959: $f4
	rst  $30                                         ; $795a: $f7
	or   $ba                                         ; $795b: $f6 $ba
	ld   a, d                                        ; $795d: $7a
	ld   a, c                                        ; $795e: $79
	ld   a, e                                        ; $795f: $7b
	ld   e, a                                        ; $7960: $5f
	cp   l                                           ; $7961: $bd
	cp   h                                           ; $7962: $bc
	cp   l                                           ; $7963: $bd
	ld   e, [hl]                                     ; $7964: $5e
	add  e                                           ; $7965: $83
	nop                                              ; $7966: $00
	nop                                              ; $7967: $00
	add  b                                           ; $7968: $80
	add  e                                           ; $7969: $83
	nop                                              ; $796a: $00
	nop                                              ; $796b: $00
	ret  nz                                          ; $796c: $c0

	add  c                                           ; $796d: $81
	add  b                                           ; $796e: $80
	nop                                              ; $796f: $00
	nop                                              ; $7970: $00
	add  a                                           ; $7971: $87
	add  b                                           ; $7972: $80
	nop                                              ; $7973: $00
	ret  nz                                          ; $7974: $c0

	add  c                                           ; $7975: $81
	nop                                              ; $7976: $00
	ld   b, $80                                      ; $7977: $06 $80
	nop                                              ; $7979: $00
	ld   h, e                                        ; $797a: $63
	cp   l                                           ; $797b: $bd
	xor  l                                           ; $797c: $ad
	db   $dd                                         ; $797d: $dd
	add  hl, de                                      ; $797e: $19
	add  e                                           ; $797f: $83
	ld   e, h                                        ; $7980: $5c
	nop                                              ; $7981: $00
	ld   d, h                                        ; $7982: $54
	add  c                                           ; $7983: $81
	ld   e, h                                        ; $7984: $5c
	nop                                              ; $7985: $00
	inc  e                                           ; $7986: $1c
	add  d                                           ; $7987: $82
	ld   e, l                                        ; $7988: $5d
	add  hl, bc                                      ; $7989: $09
	ret  c                                           ; $798a: $d8

	db   $db                                         ; $798b: $db
	cp   b                                           ; $798c: $b8
	cp   h                                           ; $798d: $bc
	ld   [hl], b                                     ; $798e: $70
	ld   a, b                                        ; $798f: $78
	ret  nz                                          ; $7990: $c0

jr_09e_7991:
	ldh  a, [rP1]                                    ; $7991: $f0 $00
	ret  nz                                          ; $7993: $c0

	add  l                                           ; $7994: $85
	nop                                              ; $7995: $00
	nop                                              ; $7996: $00
	ld   bc, $0081                                   ; $7997: $01 $81 $00
	nop                                              ; $799a: $00
	ld   [bc], a                                     ; $799b: $02
	add  e                                           ; $799c: $83
	ld   bc, $0500                                   ; $799d: $01 $00 $05
	add  b                                           ; $79a0: $80
	inc  bc                                          ; $79a1: $03
	add  b                                           ; $79a2: $80
	ld   [bc], a                                     ; $79a3: $02
	nop                                              ; $79a4: $00
	ld   bc, $0380                                   ; $79a5: $01 $80 $03
	ld   [bc], a                                     ; $79a8: $02
	rrca                                             ; $79a9: $0f
	rlca                                             ; $79aa: $07
	dec  e                                           ; $79ab: $1d
	add  b                                           ; $79ac: $80
	ld   c, $09                                      ; $79ad: $0e $09
	inc  c                                           ; $79af: $0c
	jr   c, @+$1f                                    ; $79b0: $38 $1d

	inc  e                                           ; $79b2: $1c
	add  hl, de                                      ; $79b3: $19
	ld   [de], a                                     ; $79b4: $12
	dec  de                                          ; $79b5: $1b
	ld   l, d                                        ; $79b6: $6a
	inc  sp                                          ; $79b7: $33
	dec  [hl]                                        ; $79b8: $35
	add  c                                           ; $79b9: $81
	scf                                              ; $79ba: $37
	nop                                              ; $79bb: $00
	ld   sp, $3780                                   ; $79bc: $31 $80 $37
	ld   bc, $0f2f                                   ; $79bf: $01 $2f $0f
	add  c                                           ; $79c2: $81
	cpl                                              ; $79c3: $2f
	ld   [bc], a                                     ; $79c4: $02
	dec  l                                           ; $79c5: $2d
	cpl                                              ; $79c6: $2f
	ld   l, a                                        ; $79c7: $6f
	add  c                                           ; $79c8: $81
	rla                                              ; $79c9: $17
	ld   b, $37                                      ; $79ca: $06 $37
	dec  bc                                          ; $79cc: $0b
	ld   a, [de]                                     ; $79cd: $1a
	ld   bc, $000f                                   ; $79ce: $01 $0f $00
	ld   bc, $0081                                   ; $79d1: $01 $81 $00
	ld   a, [bc]                                     ; $79d4: $0a
	ld   [$0c00], sp                                 ; $79d5: $08 $00 $0c
	nop                                              ; $79d8: $00
	ld   h, $00                                      ; $79d9: $26 $00
	inc  sp                                          ; $79db: $33
	nop                                              ; $79dc: $00
	add  hl, de                                      ; $79dd: $19
	nop                                              ; $79de: $00
	inc  c                                           ; $79df: $0c
	add  c                                           ; $79e0: $81
	nop                                              ; $79e1: $00
	nop                                              ; $79e2: $00
	add  [hl]                                        ; $79e3: $86
	add  b                                           ; $79e4: $80
	nop                                              ; $79e5: $00
	ld   bc, $3e7d                                   ; $79e6: $01 $7d $3e
	add  c                                           ; $79e9: $81
	cp   [hl]                                        ; $79ea: $be
	add  b                                           ; $79eb: $80
	cp   a                                           ; $79ec: $bf
	nop                                              ; $79ed: $00
	rra                                              ; $79ee: $1f
	add  c                                           ; $79ef: $81
	ld   e, a                                        ; $79f0: $5f
	add  b                                           ; $79f1: $80
	ld   c, a                                        ; $79f2: $4f
	add  b                                           ; $79f3: $80
	rrca                                             ; $79f4: $0f
	add  c                                           ; $79f5: $81
	rlca                                             ; $79f6: $07
	add  c                                           ; $79f7: $81
	rla                                              ; $79f8: $17
	add  d                                           ; $79f9: $82
	ld   d, $00                                      ; $79fa: $16 $00
	ld   d, h                                        ; $79fc: $54
	add  b                                           ; $79fd: $80
	inc  [hl]                                        ; $79fe: $34
	ld   b, $35                                      ; $79ff: $06 $35
	pop  af                                          ; $7a01: $f1
	ld   [hl+], a                                    ; $7a02: $22
	and  $79                                         ; $7a03: $e6 $79
	ld   h, d                                        ; $7a05: $62
	ld   b, b                                        ; $7a06: $40
	add  b                                           ; $7a07: $80
	nop                                              ; $7a08: $00
	nop                                              ; $7a09: $00
	jr   nz, jr_09e_7991                             ; $7a0a: $20 $85

	nop                                              ; $7a0c: $00
	ld   [bc], a                                     ; $7a0d: $02
	ld   bc, $fe00                                   ; $7a0e: $01 $00 $fe
	add  b                                           ; $7a11: $80
	ld   l, a                                        ; $7a12: $6f
	add  b                                           ; $7a13: $80
	ld   l, [hl]                                     ; $7a14: $6e
	add  b                                           ; $7a15: $80
	ld   e, [hl]                                     ; $7a16: $5e
	add  b                                           ; $7a17: $80
	ld   e, l                                        ; $7a18: $5d
	add  b                                           ; $7a19: $80
	jp   c, $b002                                    ; $7a1a: $da $02 $b0

	or   d                                           ; $7a1d: $b2
	ld   [bc], a                                     ; $7a1e: $02
	add  b                                           ; $7a1f: $80
	ld   a, d                                        ; $7a20: $7a
	add  hl, bc                                      ; $7a21: $09
	pop  af                                          ; $7a22: $f1
	ldh  a, [$f2]                                    ; $7a23: $f0 $f2
	ldh  a, [$e4]                                    ; $7a25: $f0 $e4
	ldh  [$e8], a                                    ; $7a27: $e0 $e8
	ldh  [$d0], a                                    ; $7a29: $e0 $d0
	ret  nz                                          ; $7a2b: $c0

	add  b                                           ; $7a2c: $80
	add  b                                           ; $7a2d: $80
	dec  d                                           ; $7a2e: $15
	stop                                             ; $7a2f: $10 $00
	ld   [$e700], sp                                 ; $7a31: $08 $00 $e7
	ld   [$0518], sp                                 ; $7a34: $08 $18 $05
	dec  c                                           ; $7a37: $0d
	nop                                              ; $7a38: $00
	inc  b                                           ; $7a39: $04
	nop                                              ; $7a3a: $00
	inc  b                                           ; $7a3b: $04
	nop                                              ; $7a3c: $00
	jr   jr_09e_7a3f                                 ; $7a3d: $18 $00

jr_09e_7a3f:
	jr   nz, jr_09e_7a41                             ; $7a3f: $20 $00

jr_09e_7a41:
	ld   b, b                                        ; $7a41: $40
	nop                                              ; $7a42: $00
	adc  b                                           ; $7a43: $88
	ld   [$0e80], sp                                 ; $7a44: $08 $80 $0e
	add  b                                           ; $7a47: $80
	rrca                                             ; $7a48: $0f
	add  b                                           ; $7a49: $80
	rlca                                             ; $7a4a: $07
	add  b                                           ; $7a4b: $80
	inc  bc                                          ; $7a4c: $03
	add  b                                           ; $7a4d: $80
	ld   bc, $0082                                   ; $7a4e: $01 $82 $00
	inc  bc                                          ; $7a51: $03
	ld   a, a                                        ; $7a52: $7f
	nop                                              ; $7a53: $00
	add  b                                           ; $7a54: $80
	nop                                              ; $7a55: $00
	add  d                                           ; $7a56: $82
	add  b                                           ; $7a57: $80
	inc  de                                          ; $7a58: $13
	ret  nz                                          ; $7a59: $c0

	ld   b, b                                        ; $7a5a: $40
	ld   h, b                                        ; $7a5b: $60
	jr   nz, @+$32                                   ; $7a5c: $20 $30

	ld   d, b                                        ; $7a5e: $50
	ld   e, b                                        ; $7a5f: $58
	ld   l, b                                        ; $7a60: $68
	ld   l, h                                        ; $7a61: $6c
	ld   [hl], h                                     ; $7a62: $74
	halt                                             ; $7a63: $76
	ld   a, b                                        ; $7a64: $78
	ld   a, c                                        ; $7a65: $79

jr_09e_7a66:
	ld   a, $fa                                      ; $7a66: $3e $fa
	set  7, h                                        ; $7a68: $cb $fc
	ldh  a, [rIE]                                    ; $7a6a: $f0 $ff
	db   $fc                                         ; $7a6c: $fc
	add  b                                           ; $7a6d: $80
	rst  $38                                         ; $7a6e: $ff
	add  b                                           ; $7a6f: $80
	ccf                                              ; $7a70: $3f
	rrca                                             ; $7a71: $0f
	db   $fc                                         ; $7a72: $fc
	nop                                              ; $7a73: $00
	ld   b, $00                                      ; $7a74: $06 $00
	sbc  b                                           ; $7a76: $98
	inc  b                                           ; $7a77: $04
	ld   h, b                                        ; $7a78: $60
	sbc  b                                           ; $7a79: $98
	sub  b                                           ; $7a7a: $90
	ldh  a, [rTAC]                                   ; $7a7b: $f0 $07
	ld   bc, $079f                                   ; $7a7d: $01 $9f $07
	rst  $38                                         ; $7a80: $ff
	sbc  a                                           ; $7a81: $9f
	add  b                                           ; $7a82: $80
	ld   a, a                                        ; $7a83: $7f
	adc  b                                           ; $7a84: $88
	rst  $38                                         ; $7a85: $ff
	add  b                                           ; $7a86: $80
	rlca                                             ; $7a87: $07
	add  b                                           ; $7a88: $80
	nop                                              ; $7a89: $00
	nop                                              ; $7a8a: $00
	inc  de                                          ; $7a8b: $13
	add  c                                           ; $7a8c: $81
	jr   @-$7e                                       ; $7a8d: $18 $80

	jr   c, jr_09e_7a92                              ; $7a8f: $38 $01

	ld   [hl], d                                     ; $7a91: $72

jr_09e_7a92:
	ld   a, h                                        ; $7a92: $7c
	add  d                                           ; $7a93: $82
	db   $fc                                         ; $7a94: $fc
	nop                                              ; $7a95: $00
	db   $fd                                         ; $7a96: $fd
	add  b                                           ; $7a97: $80
	db   $fc                                         ; $7a98: $fc
	add  b                                           ; $7a99: $80
	db   $fd                                         ; $7a9a: $fd
	add  d                                           ; $7a9b: $82
	db   $fc                                         ; $7a9c: $fc
	nop                                              ; $7a9d: $00
	ld   hl, sp-$80                                  ; $7a9e: $f8 $80
	ld   sp, hl                                      ; $7aa0: $f9
	add  b                                           ; $7aa1: $80
	di                                               ; $7aa2: $f3
	add  b                                           ; $7aa3: $80
	rst  $20                                         ; $7aa4: $e7
	add  b                                           ; $7aa5: $80
	rst  JumpTable                                         ; $7aa6: $df
	add  b                                           ; $7aa7: $80
	ccf                                              ; $7aa8: $3f
	nop                                              ; $7aa9: $00
	rst  $38                                         ; $7aaa: $ff
	adc  c                                           ; $7aab: $89
	nop                                              ; $7aac: $00
	ld   [bc], a                                     ; $7aad: $02
	ldh  [rP1], a                                    ; $7aae: $e0 $00
	rra                                              ; $7ab0: $1f
	add  b                                           ; $7ab1: $80
	ldh  [$03], a                                    ; $7ab2: $e0 $03
	rst  $38                                         ; $7ab4: $ff
	add  c                                           ; $7ab5: $81
	rst  $38                                         ; $7ab6: $ff
	ld   a, [hl]                                     ; $7ab7: $7e
	adc  c                                           ; $7ab8: $89
	rst  $38                                         ; $7ab9: $ff
	inc  de                                          ; $7aba: $13
	ccf                                              ; $7abb: $3f
	nop                                              ; $7abc: $00
	jr   nc, @-$3e                                   ; $7abd: $30 $c0

	ld   c, b                                        ; $7abf: $48
	ldh  a, [$94]                                    ; $7ac0: $f0 $94
	ld   hl, sp-$16                                  ; $7ac2: $f8 $ea
	db   $fc                                         ; $7ac4: $fc
	db   $f4                                         ; $7ac5: $f4
	db   $fc                                         ; $7ac6: $fc
	db   $fd                                         ; $7ac7: $fd
	cp   $7a                                         ; $7ac8: $fe $7a
	ld   a, [hl]                                     ; $7aca: $7e
	ld   a, $3f                                      ; $7acb: $3e $3f
	dec  a                                           ; $7acd: $3d
	ccf                                              ; $7ace: $3f
	add  b                                           ; $7acf: $80
	rra                                              ; $7ad0: $1f
	add  b                                           ; $7ad1: $80
	dec  de                                          ; $7ad2: $1b
	ld   bc, $1b1a                                   ; $7ad3: $01 $1a $1b
	add  d                                           ; $7ad6: $82
	dec  bc                                          ; $7ad7: $0b
	add  b                                           ; $7ad8: $80
	add  hl, bc                                      ; $7ad9: $09
	nop                                              ; $7ada: $00
	ld   a, a                                        ; $7adb: $7f
	add  l                                           ; $7adc: $85
	nop                                              ; $7add: $00
	nop                                              ; $7ade: $00
	ld   b, b                                        ; $7adf: $40
	adc  e                                           ; $7ae0: $8b
	add  b                                           ; $7ae1: $80
	nop                                              ; $7ae2: $00
	jr   nz, jr_09e_7a66                             ; $7ae3: $20 $81

	ret  nz                                          ; $7ae5: $c0

	nop                                              ; $7ae6: $00
	sub  b                                           ; $7ae7: $90
	add  c                                           ; $7ae8: $81
	ldh  [rSC], a                                    ; $7ae9: $e0 $02
	ld   b, b                                        ; $7aeb: $40
	ld   h, b                                        ; $7aec: $60
	ldh  a, [$83]                                    ; $7aed: $f0 $83
	nop                                              ; $7aef: $00
	nop                                              ; $7af0: $00
	ld   bc, $0087                                   ; $7af1: $01 $87 $00
	ld   [$0002], sp                                 ; $7af4: $08 $02 $00
	inc  b                                           ; $7af7: $04
	nop                                              ; $7af8: $00
	ld   [rROMB1], sp                                 ; $7af9: $08 $00 $30
	nop                                              ; $7afc: $00
	ret  nz                                          ; $7afd: $c0

	add  b                                           ; $7afe: $80
	nop                                              ; $7aff: $00
	ld   [bc], a                                     ; $7b00: $02
	ret  nz                                          ; $7b01: $c0

	jr   nz, @-$1e                                   ; $7b02: $20 $e0

	add  b                                           ; $7b04: $80
	db   $fc                                         ; $7b05: $fc
	nop                                              ; $7b06: $00
	rst  $38                                         ; $7b07: $ff
	add  a                                           ; $7b08: $87
	nop                                              ; $7b09: $00
	ld   c, $01                                      ; $7b0a: $0e $01
	nop                                              ; $7b0c: $00
	ld   b, $01                                      ; $7b0d: $06 $01
	ld   [$3507], sp                                 ; $7b0f: $08 $07 $35
	rrca                                             ; $7b12: $0f
	ld   b, e                                        ; $7b13: $43
	ccf                                              ; $7b14: $3f
	xor  a                                           ; $7b15: $af
	ld   a, a                                        ; $7b16: $7f
	ld   e, a                                        ; $7b17: $5f
	rst  $38                                         ; $7b18: $ff
	ccf                                              ; $7b19: $3f
	add  [hl]                                        ; $7b1a: $86

jr_09e_7b1b:
	rst  $38                                         ; $7b1b: $ff
	add  e                                           ; $7b1c: $83
	nop                                              ; $7b1d: $00
	nop                                              ; $7b1e: $00
	ld   bc, $0081                                   ; $7b1f: $01 $81 $00
	nop                                              ; $7b22: $00
	ld   [bc], a                                     ; $7b23: $02
	add  e                                           ; $7b24: $83
	nop                                              ; $7b25: $00
	nop                                              ; $7b26: $00
	inc  b                                           ; $7b27: $04
	add  e                                           ; $7b28: $83
	nop                                              ; $7b29: $00
	nop                                              ; $7b2a: $00
	ld   [$0087], sp                                 ; $7b2b: $08 $87 $00
	inc  c                                           ; $7b2e: $0c
	sbc  a                                           ; $7b2f: $9f
	nop                                              ; $7b30: $00
	ld   bc, $3000                                   ; $7b31: $01 $00 $30
	nop                                              ; $7b34: $00
	inc  bc                                          ; $7b35: $03
	nop                                              ; $7b36: $00
	add  a                                           ; $7b37: $87
	nop                                              ; $7b38: $00
	ld   l, d                                        ; $7b39: $6a
	nop                                              ; $7b3a: $00
	or   b                                           ; $7b3b: $b0
	add  b                                           ; $7b3c: $80
	ld   [bc], a                                     ; $7b3d: $02
	ld   de, $4b7a                                   ; $7b3e: $11 $7a $4b
	ret  nz                                          ; $7b41: $c0

	ld   [de], a                                     ; $7b42: $12
	db   $10                                         ; $7b43: $10
	inc  d                                           ; $7b44: $14
	nop                                              ; $7b45: $00
	jr   z, jr_09e_7b68                              ; $7b46: $28 $20

	jr   nc, jr_09e_7b4a                             ; $7b48: $30 $00

jr_09e_7b4a:
	ld   b, b                                        ; $7b4a: $40
	nop                                              ; $7b4b: $00
	sub  b                                           ; $7b4c: $90
	nop                                              ; $7b4d: $00
	ld   [$f800], sp                                 ; $7b4e: $08 $00 $f8
	rst  $38                                         ; $7b51: $ff
	nop                                              ; $7b52: $00
	db   $fc                                         ; $7b53: $fc
	nop                                              ; $7b54: $00
	ld   [bc], a                                     ; $7b55: $02
	ld   hl, sp-$09                                  ; $7b56: $f8 $f7
	rst  $38                                         ; $7b58: $ff
	add  b                                           ; $7b59: $80
	rst  $28                                         ; $7b5a: $ef
	daa                                              ; $7b5b: $27
	sbc  a                                           ; $7b5c: $9f
	sub  [hl]                                        ; $7b5d: $96
	ccf                                              ; $7b5e: $3f
	jr   c, jr_09e_7bde                              ; $7b5f: $38 $7d

	ld   a, a                                        ; $7b61: $7f
	ei                                               ; $7b62: $fb
	rst  JumpTable                                         ; $7b63: $df
	rst  $30                                         ; $7b64: $f7
	cp   [hl]                                        ; $7b65: $be
	xor  $71                                         ; $7b66: $ee $71

jr_09e_7b68:
	rst  $30                                         ; $7b68: $f7
	cp   $fb                                         ; $7b69: $fe $fb
	set  3, l                                        ; $7b6b: $cb $dd
	push af                                          ; $7b6d: $f5
	xor  $5d                                         ; $7b6e: $ee $5d
	rst  $30                                         ; $7b70: $f7
	cpl                                              ; $7b71: $2f
	ei                                               ; $7b72: $fb
	reti                                             ; $7b73: $d9


	ei                                               ; $7b74: $fb
	cpl                                              ; $7b75: $2f
	ld   a, l                                        ; $7b76: $7d
	ld   bc, $fafb                                   ; $7b77: $01 $fb $fa
	db   $fd                                         ; $7b7a: $fd
	or   l                                           ; $7b7b: $b5
	cp   $82                                         ; $7b7c: $fe $82
	cp   $f4                                         ; $7b7e: $fe $f4
	ld   a, a                                        ; $7b80: $7f
	ld   e, a                                        ; $7b81: $5f
	ld   a, a                                        ; $7b82: $7f
	cp   $81                                         ; $7b83: $fe $81
	cp   a                                           ; $7b85: $bf
	ld   [$dfff], sp                                 ; $7b86: $08 $ff $df
	adc  $df                                         ; $7b89: $ce $df
	ld   e, a                                        ; $7b8b: $5f
	rst  JumpTable                                         ; $7b8c: $df
	rst  $38                                         ; $7b8d: $ff
	ld   l, a                                        ; $7b8e: $6f
	daa                                              ; $7b8f: $27
	add  e                                           ; $7b90: $83
	ld   l, a                                        ; $7b91: $6f
	ld   [bc], a                                     ; $7b92: $02
	ld   l, l                                        ; $7b93: $6d
	ld   l, a                                        ; $7b94: $6f
	ld   c, e                                        ; $7b95: $4b
	adc  c                                           ; $7b96: $89
	nop                                              ; $7b97: $00
	add  b                                           ; $7b98: $80
	jr   jr_09e_7b1b                                 ; $7b99: $18 $80

	ld   a, [hl]                                     ; $7b9b: $7e
	add  b                                           ; $7b9c: $80
	rra                                              ; $7b9d: $1f
	add  d                                           ; $7b9e: $82
	ld   c, $80                                      ; $7b9f: $0e $80
	dec  b                                           ; $7ba1: $05
	add  b                                           ; $7ba2: $80
	ld   bc, $0084                                   ; $7ba3: $01 $84 $00
	adc  b                                           ; $7ba6: $88
	rst  $38                                         ; $7ba7: $ff
	add  d                                           ; $7ba8: $82
	cp   a                                           ; $7ba9: $bf
	add  b                                           ; $7baa: $80
	db   $d3                                         ; $7bab: $d3
	adc  [hl]                                        ; $7bac: $8e
	rst  $38                                         ; $7bad: $ff
	add  b                                           ; $7bae: $80
	add  b                                           ; $7baf: $80
	add  b                                           ; $7bb0: $80
	ldh  [$80], a                                    ; $7bb1: $e0 $80
	db   $ec                                         ; $7bb3: $ec
	add  h                                           ; $7bb4: $84
	rst  $30                                         ; $7bb5: $f7
	add  d                                           ; $7bb6: $82
	ei                                               ; $7bb7: $fb
	add  d                                           ; $7bb8: $82
	nop                                              ; $7bb9: $00
	add  b                                           ; $7bba: $80
	inc  bc                                          ; $7bbb: $03
	add  b                                           ; $7bbc: $80
	adc  a                                           ; $7bbd: $8f
	add  [hl]                                        ; $7bbe: $86
	rst  $38                                         ; $7bbf: $ff
	add  b                                           ; $7bc0: $80
	ld   a, a                                        ; $7bc1: $7f
	sub  h                                           ; $7bc2: $94
	rst  $38                                         ; $7bc3: $ff
	nop                                              ; $7bc4: $00
	cp   $86                                         ; $7bc5: $fe $86
	rst  $38                                         ; $7bc7: $ff
	nop                                              ; $7bc8: $00
	cp   $82                                         ; $7bc9: $fe $82
	rst  $38                                         ; $7bcb: $ff
	adc  b                                           ; $7bcc: $88
	ld   a, a                                        ; $7bcd: $7f
	add  b                                           ; $7bce: $80
	pop  bc                                          ; $7bcf: $c1
	add  d                                           ; $7bd0: $82
	ld   b, b                                        ; $7bd1: $40
	add  [hl]                                        ; $7bd2: $86
	add  b                                           ; $7bd3: $80
	add  b                                           ; $7bd4: $80
	ret  nz                                          ; $7bd5: $c0

	add  [hl]                                        ; $7bd6: $86
	rst  $38                                         ; $7bd7: $ff
	add  d                                           ; $7bd8: $82
	ld   a, a                                        ; $7bd9: $7f
	add  d                                           ; $7bda: $82
	ccf                                              ; $7bdb: $3f
	add  d                                           ; $7bdc: $82
	ld   sp, hl                                      ; $7bdd: $f9

jr_09e_7bde:
	add  e                                           ; $7bde: $83
	db   $fc                                         ; $7bdf: $fc
	inc  bc                                          ; $7be0: $03
	cp   $f2                                         ; $7be1: $fe $f2
	rst  $38                                         ; $7be3: $ff
	rst  $28                                         ; $7be4: $ef
	add  c                                           ; $7be5: $81
	rst  $38                                         ; $7be6: $ff
	nop                                              ; $7be7: $00
	ldh  [$85], a                                    ; $7be8: $e0 $85
	rst  $38                                         ; $7bea: $ff
	ld   [$7f1f], sp                                 ; $7beb: $08 $1f $7f
	ld   l, a                                        ; $7bee: $6f
	ld   a, a                                        ; $7bef: $7f
	ld   [hl], a                                     ; $7bf0: $77
	cp   a                                           ; $7bf1: $bf
	cp   e                                           ; $7bf2: $bb
	rst  JumpTable                                         ; $7bf3: $df
	inc  hl                                          ; $7bf4: $23
	adc  l                                           ; $7bf5: $8d
	rst  $38                                         ; $7bf6: $ff
	nop                                              ; $7bf7: $00
	cp   $89                                         ; $7bf8: $fe $89
	rst  $38                                         ; $7bfa: $ff
	nop                                              ; $7bfb: $00
	cp   $81                                         ; $7bfc: $fe $81
	rst  $38                                         ; $7bfe: $ff
	ld   bc, $8909                                   ; $7bff: $01 $09 $89
	add  e                                           ; $7c02: $83
	sub  c                                           ; $7c03: $91
	ld   [bc], a                                     ; $7c04: $02
	pop  de                                          ; $7c05: $d1
	pop  bc                                          ; $7c06: $c1
	pop  hl                                          ; $7c07: $e1
	add  c                                           ; $7c08: $81
	ldh  [$80], a                                    ; $7c09: $e0 $80
	ldh  a, [rSB]                                    ; $7c0b: $f0 $01
	ld   hl, sp+$07                                  ; $7c0d: $f8 $07
	rst  $38                                         ; $7c0f: $ff
	nop                                              ; $7c10: $00
	rst  $38                                         ; $7c11: $ff
	nop                                              ; $7c12: $00
	rst  $38                                         ; $7c13: $ff
	nop                                              ; $7c14: $00
	rst  $38                                         ; $7c15: $ff
	nop                                              ; $7c16: $00
	rst  $38                                         ; $7c17: $ff
	nop                                              ; $7c18: $00
	cp   b                                           ; $7c19: $b8
	nop                                              ; $7c1a: $00
	xor  b                                           ; $7c1b: $a8
	nop                                              ; $7c1c: $00
	rst  $38                                         ; $7c1d: $ff
	nop                                              ; $7c1e: $00
	rst  $38                                         ; $7c1f: $ff
	nop                                              ; $7c20: $00
	rst  $38                                         ; $7c21: $ff
	nop                                              ; $7c22: $00
	rst  $38                                         ; $7c23: $ff
	nop                                              ; $7c24: $00
	rst  $38                                         ; $7c25: $ff
	nop                                              ; $7c26: $00
	rst  $38                                         ; $7c27: $ff
	nop                                              ; $7c28: $00
	rst  $38                                         ; $7c29: $ff
	nop                                              ; $7c2a: $00
	rst  $30                                         ; $7c2b: $f7
	nop                                              ; $7c2c: $00
	ld   a, [de]                                     ; $7c2d: $1a
	rrca                                             ; $7c2e: $0f
	nop                                              ; $7c2f: $00
	jr   c, jr_09e_7c41                              ; $7c30: $38 $0f

	ld   h, [hl]                                     ; $7c32: $66
	ccf                                              ; $7c33: $3f
	inc  h                                           ; $7c34: $24
	ld   a, $4b                                      ; $7c35: $3e $4b
	rrca                                             ; $7c37: $0f
	ld   hl, $2601                                   ; $7c38: $21 $01 $26
	ld   e, $38                                      ; $7c3b: $1e $38
	rlca                                             ; $7c3d: $07
	rra                                              ; $7c3e: $1f
	nop                                              ; $7c3f: $00
	rlca                                             ; $7c40: $07

jr_09e_7c41:
	nop                                              ; $7c41: $00
	ld   bc, $0200                                   ; $7c42: $01 $00 $02
	ld   bc, $0003                                   ; $7c45: $01 $03 $00
	ld   bc, $0083                                   ; $7c48: $01 $83 $00
	nop                                              ; $7c4b: $00
	rst  $38                                         ; $7c4c: $ff
	add  b                                           ; $7c4d: $80
	nop                                              ; $7c4e: $00
	ld   [$fdff], sp                                 ; $7c4f: $08 $ff $fd
	inc  bc                                          ; $7c52: $03
	rst  $38                                         ; $7c53: $ff

jr_09e_7c54:
	cp   $00                                         ; $7c54: $fe $00
	ld   bc, $fffe                                   ; $7c56: $01 $fe $ff
	add  b                                           ; $7c59: $80
	nop                                              ; $7c5a: $00
	add  b                                           ; $7c5b: $80
	rst  $38                                         ; $7c5c: $ff
	add  b                                           ; $7c5d: $80
	nop                                              ; $7c5e: $00
	add  b                                           ; $7c5f: $80
	rra                                              ; $7c60: $1f
	ld   bc, $e727                                   ; $7c61: $01 $27 $e7
	add  b                                           ; $7c64: $80
	ldh  a, [rAUD2ENV]                               ; $7c65: $f0 $17
	db   $d3                                         ; $7c67: $d3
	di                                               ; $7c68: $f3
	db   $e4                                         ; $7c69: $e4
	inc  a                                           ; $7c6a: $3c
	rst  $38                                         ; $7c6b: $ff
	rlca                                             ; $7c6c: $07
	inc  a                                           ; $7c6d: $3c
	nop                                              ; $7c6e: $00
	inc  bc                                          ; $7c6f: $03
	nop                                              ; $7c70: $00
	ldh  [rP1], a                                    ; $7c71: $e0 $00
	db   $10                                         ; $7c73: $10
	ldh  [$ec], a                                    ; $7c74: $e0 $ec
	ldh  a, [$97]                                    ; $7c76: $f0 $97
	db   $e4                                         ; $7c78: $e4

jr_09e_7c79:
	db   $10                                         ; $7c79: $10
	sbc  l                                           ; $7c7a: $9d
	ld   c, l                                        ; $7c7b: $4d
	ld   [hl], b                                     ; $7c7c: $70
	or   e                                           ; $7c7d: $b3
	add  e                                           ; $7c7e: $83
	add  b                                           ; $7c7f: $80
	ld   a, h                                        ; $7c80: $7c
	add  b                                           ; $7c81: $80
	add  e                                           ; $7c82: $83
	inc  bc                                          ; $7c83: $03
	db   $fc                                         ; $7c84: $fc
	rst  $38                                         ; $7c85: $ff
	inc  bc                                          ; $7c86: $03
	nop                                              ; $7c87: $00
	add  b                                           ; $7c88: $80
	ld   hl, sp-$80                                  ; $7c89: $f8 $80
	inc  bc                                          ; $7c8b: $03
	inc  b                                           ; $7c8c: $04
	db   $fc                                         ; $7c8d: $fc
	rst  $38                                         ; $7c8e: $ff
	inc  bc                                          ; $7c8f: $03
	nop                                              ; $7c90: $00
	rst  $38                                         ; $7c91: $ff
	add  l                                           ; $7c92: $85
	nop                                              ; $7c93: $00
	ld   l, $e0                                      ; $7c94: $2e $e0
	nop                                              ; $7c96: $00
	jr   jr_09e_7c79                                 ; $7c97: $18 $e0

	db   $e4                                         ; $7c99: $e4
	ld   hl, sp-$06                                  ; $7c9a: $f8 $fa
	ld   a, h                                        ; $7c9c: $7c
	cp   $f8                                         ; $7c9d: $fe $f8
	ld   a, h                                        ; $7c9f: $7c
	ldh  [$f0], a                                    ; $7ca0: $e0 $f0
	sub  b                                           ; $7ca2: $90
	db   $fc                                         ; $7ca3: $fc
	ld   a, b                                        ; $7ca4: $78
	db   $e4                                         ; $7ca5: $e4
	ldh  a, [rAUD2LOW]                               ; $7ca6: $f0 $18
	ret  nz                                          ; $7ca8: $c0

	ldh  a, [rP1]                                    ; $7ca9: $f0 $00
	ret  nz                                          ; $7cab: $c0

	nop                                              ; $7cac: $00
	ret  nz                                          ; $7cad: $c0

	nop                                              ; $7cae: $00
	jr   nz, jr_09e_7cb1                             ; $7caf: $20 $00

jr_09e_7cb1:
	add  b                                           ; $7cb1: $80
	nop                                              ; $7cb2: $00
	ld   d, b                                        ; $7cb3: $50
	nop                                              ; $7cb4: $00
	ld   [rROMB0], sp                                 ; $7cb5: $08 $00 $20
	nop                                              ; $7cb8: $00
	inc  b                                           ; $7cb9: $04
	nop                                              ; $7cba: $00
	stop                                             ; $7cbb: $10 $00
	ld   a, [bc]                                     ; $7cbd: $0a
	nop                                              ; $7cbe: $00
	ld   bc, $0400                                   ; $7cbf: $01 $00 $04
	nop                                              ; $7cc2: $00
	ld   [bc], a                                     ; $7cc3: $02
	add  c                                           ; $7cc4: $81
	nop                                              ; $7cc5: $00
	nop                                              ; $7cc6: $00
	ld   bc, $0089                                   ; $7cc7: $01 $89 $00
	ld   a, [de]                                     ; $7cca: $1a
	add  b                                           ; $7ccb: $80
	nop                                              ; $7ccc: $00
	ld   b, b                                        ; $7ccd: $40
	nop                                              ; $7cce: $00
	jr   c, jr_09e_7cd1                              ; $7ccf: $38 $00

jr_09e_7cd1:
	rla                                              ; $7cd1: $17
	jr   jr_09e_7c54                                 ; $7cd2: $18 $80

	rrca                                             ; $7cd4: $0f
	add  c                                           ; $7cd5: $81
	scf                                              ; $7cd6: $37
	ld   [hl], d                                     ; $7cd7: $72
	ld   b, e                                        ; $7cd8: $43
	add  c                                           ; $7cd9: $81
	add  hl, de                                      ; $7cda: $19
	ret  c                                           ; $7cdb: $d8

	ld   h, b                                        ; $7cdc: $60
	and  b                                           ; $7cdd: $a0
	jr   jr_09e_7d2a                                 ; $7cde: $18 $4a

	ld   d, $20                                      ; $7ce0: $16 $20
	inc  b                                           ; $7ce2: $04
	stop                                             ; $7ce3: $10 $00
	rrca                                             ; $7ce5: $0f
	adc  e                                           ; $7ce6: $8b
	nop                                              ; $7ce7: $00
	inc  d                                           ; $7ce8: $14
	add  c                                           ; $7ce9: $81
	nop                                              ; $7cea: $00
	ld   b, [hl]                                     ; $7ceb: $46
	add  b                                           ; $7cec: $80
	xor  c                                           ; $7ced: $a9
	add  c                                           ; $7cee: $81
	sub  d                                           ; $7cef: $92
	jp   nz, $e2ca                                   ; $7cf0: $c2 $ca $e2

	ld   l, b                                        ; $7cf3: $68
	ldh  [$e4], a                                    ; $7cf4: $e0 $e4
	ldh  a, [$b6]                                    ; $7cf6: $f0 $b6
	ld   hl, sp+$3b                                  ; $7cf8: $f8 $3b
	jr   c, @-$62                                    ; $7cfa: $38 $9c

	inc  a                                           ; $7cfc: $3c
	ld   c, e                                        ; $7cfd: $4b
	add  c                                           ; $7cfe: $81
	ld   e, $0e                                      ; $7cff: $1e $0e
	dec  h                                           ; $7d01: $25
	rrca                                             ; $7d02: $0f
	ld   c, $0f                                      ; $7d03: $0e $0f
	rla                                              ; $7d05: $17
	rlca                                             ; $7d06: $07
	inc  bc                                          ; $7d07: $03
	rlca                                             ; $7d08: $07
	add  hl, bc                                      ; $7d09: $09
	inc  bc                                          ; $7d0a: $03
	ld   [bc], a                                     ; $7d0b: $02
	inc  bc                                          ; $7d0c: $03
	dec  b                                           ; $7d0d: $05
	ld   bc, $8102                                   ; $7d0e: $01 $02 $81
	nop                                              ; $7d11: $00
	nop                                              ; $7d12: $00
	ld   bc, $0088                                   ; $7d13: $01 $88 $00
	ld   [bc], a                                     ; $7d16: $02
	inc  bc                                          ; $7d17: $03
	ld   [bc], a                                     ; $7d18: $02
	ld   b, $80                                      ; $7d19: $06 $80
	ld   [bc], a                                     ; $7d1b: $02
	inc  de                                          ; $7d1c: $13
	nop                                              ; $7d1d: $00
	jr   jr_09e_7d40                                 ; $7d1e: $18 $20

	ld   bc, $2361                                   ; $7d20: $01 $61 $23
	sub  e                                           ; $7d23: $93
	ld   de, $8087                                   ; $7d24: $11 $87 $80
	ld   b, l                                        ; $7d27: $45
	ld   b, b                                        ; $7d28: $40
	and  d                                           ; $7d29: $a2

jr_09e_7d2a:
	and  b                                           ; $7d2a: $a0
	ld   h, c                                        ; $7d2b: $61
	ld   h, d                                        ; $7d2c: $62
	ld   b, b                                        ; $7d2d: $40
	ld   b, c                                        ; $7d2e: $41
	call nz, $80c0                                   ; $7d2f: $c4 $c0 $80
	ld   b, b                                        ; $7d32: $40
	add  b                                           ; $7d33: $80
	nop                                              ; $7d34: $00
	rlca                                             ; $7d35: $07
	rst  $28                                         ; $7d36: $ef
	rrca                                             ; $7d37: $0f
	rlca                                             ; $7d38: $07
	rrca                                             ; $7d39: $0f
	adc  a                                           ; $7d3a: $8f
	rrca                                             ; $7d3b: $0f
	ld   a, [hl]                                     ; $7d3c: $7e
	rra                                              ; $7d3d: $1f
	add  b                                           ; $7d3e: $80
	sbc  a                                           ; $7d3f: $9f

jr_09e_7d40:
	inc  b                                           ; $7d40: $04
	rla                                              ; $7d41: $17
	rst  JumpTable                                         ; $7d42: $df
	call z, $e2ee                                    ; $7d43: $cc $ee $e2
	add  d                                           ; $7d46: $82
	or   $0d                                         ; $7d47: $f6 $0d
	cp   $7c                                         ; $7d49: $fe $7c
	db   $fc                                         ; $7d4b: $fc
	cp   h                                           ; $7d4c: $bc
	db   $fc                                         ; $7d4d: $fc
	ld   a, l                                        ; $7d4e: $7d
	ld   a, h                                        ; $7d4f: $7c
	add  h                                           ; $7d50: $84
	inc  a                                           ; $7d51: $3c
	ld   c, d                                        ; $7d52: $4a
	ld   [$0030], sp                                 ; $7d53: $08 $30 $00
	inc  c                                           ; $7d56: $0c
	add  e                                           ; $7d57: $83
	nop                                              ; $7d58: $00
	dec  b                                           ; $7d59: $05
	ld   bc, $0200                                   ; $7d5a: $01 $00 $02
	nop                                              ; $7d5d: $00
	dec  b                                           ; $7d5e: $05
	ld   bc, $0380                                   ; $7d5f: $01 $80 $03
	add  b                                           ; $7d62: $80
	inc  b                                           ; $7d63: $04
	nop                                              ; $7d64: $00
	dec  b                                           ; $7d65: $05
	add  c                                           ; $7d66: $81
	ld   bc, $0701                                   ; $7d67: $01 $01 $07
	inc  bc                                          ; $7d6a: $03
	add  d                                           ; $7d6b: $82
	ld   [bc], a                                     ; $7d6c: $02
	ld   bc, $0203                                   ; $7d6d: $01 $03 $02
	add  b                                           ; $7d70: $80
	ld   b, $02                                      ; $7d71: $06 $02
	inc  b                                           ; $7d73: $04
	ld   bc, $8903                                   ; $7d74: $01 $03 $89
	nop                                              ; $7d77: $00
	ld   de, $0007                                   ; $7d78: $11 $07 $00
	rra                                              ; $7d7b: $1f
	rlca                                             ; $7d7c: $07
	rst  $38                                         ; $7d7d: $ff
	rra                                              ; $7d7e: $1f
	add  e                                           ; $7d7f: $83
	inc  bc                                          ; $7d80: $03
	xor  a                                           ; $7d81: $af
	ccf                                              ; $7d82: $3f
	ld   e, a                                        ; $7d83: $5f
	ld   a, a                                        ; $7d84: $7f
	rst  $10                                         ; $7d85: $d7
	rst  $38                                         ; $7d86: $ff
	or   c                                           ; $7d87: $b1
	cp   a                                           ; $7d88: $bf
	ld   l, l                                        ; $7d89: $6d
	ld   a, e                                        ; $7d8a: $7b
	add  b                                           ; $7d8b: $80
	sub  $00                                         ; $7d8c: $d6 $00
	rst  $38                                         ; $7d8e: $ff
	sub  l                                           ; $7d8f: $95
	nop                                              ; $7d90: $00
	ld   [$0006], sp                                 ; $7d91: $08 $06 $00
	ld   e, $00                                      ; $7d94: $1e $00
	ld   l, $08                                      ; $7d96: $2e $08
	rst  ToBoot                                         ; $7d98: $c7
	ld   b, $ff                                      ; $7d99: $06 $ff
	adc  e                                           ; $7d9b: $8b
	nop                                              ; $7d9c: $00
	ld   de, $0080                                   ; $7d9d: $11 $80 $00
	ld   h, b                                        ; $7da0: $60
	nop                                              ; $7da1: $00
	ld   hl, sp-$20                                  ; $7da2: $f8 $e0
	db   $fc                                         ; $7da4: $fc
	ld   hl, sp-$0a                                  ; $7da5: $f8 $f6
	db   $fc                                         ; $7da7: $fc
	ei                                               ; $7da8: $fb
	cp   $68                                         ; $7da9: $fe $68
	cp   $14                                         ; $7dab: $fe $14
	cp   $8e                                         ; $7dad: $fe $8e
	cp   $80                                         ; $7daf: $fe $80
	or   h                                           ; $7db1: $b4
	add  b                                           ; $7db2: $80
	xor  b                                           ; $7db3: $a8
	add  b                                           ; $7db4: $80
	ld   [hl+], a                                    ; $7db5: $22
	add  hl, bc                                      ; $7db6: $09
	inc  h                                           ; $7db7: $24
	daa                                              ; $7db8: $27
	and  a                                           ; $7db9: $a7
	inc  h                                           ; $7dba: $24
	add  hl, bc                                      ; $7dbb: $09
	ld   a, [bc]                                     ; $7dbc: $0a
	add  hl, bc                                      ; $7dbd: $09

jr_09e_7dbe:
	dec  c                                           ; $7dbe: $0d
	ld   bc, $8000                                   ; $7dbf: $01 $00 $80
	ld   d, c                                        ; $7dc2: $51
	dec  c                                           ; $7dc3: $0d
	ld   c, l                                        ; $7dc4: $4d
	inc  c                                           ; $7dc5: $0c
	dec  bc                                          ; $7dc6: $0b
	rrca                                             ; $7dc7: $0f
	nop                                              ; $7dc8: $00
	rlca                                             ; $7dc9: $07
	inc  hl                                          ; $7dca: $23
	inc  b                                           ; $7dcb: $04
	add  hl, bc                                      ; $7dcc: $09
	dec  bc                                          ; $7dcd: $0b
	jr   z, jr_09e_7e19                              ; $7dce: $28 $49

	ld   c, l                                        ; $7dd0: $4d
	call $c880                                       ; $7dd1: $cd $80 $c8
	ld   b, $41                                      ; $7dd4: $06 $41
	ld   b, b                                        ; $7dd6: $40
	ld   b, $00                                      ; $7dd7: $06 $00
	add  hl, de                                      ; $7dd9: $19
	nop                                              ; $7dda: $00
	pop  hl                                          ; $7ddb: $e1
	add  e                                           ; $7ddc: $83
	nop                                              ; $7ddd: $00
	inc  d                                           ; $7dde: $14
	inc  c                                           ; $7ddf: $0c
	nop                                              ; $7de0: $00
	jr   nc, jr_09e_7de3                             ; $7de1: $30 $00

jr_09e_7de3:
	call nz, $8000                                   ; $7de3: $c4 $00 $80
	nop                                              ; $7de6: $00
	ld   b, a                                        ; $7de7: $47
	nop                                              ; $7de8: $00
	and  d                                           ; $7de9: $a2
	nop                                              ; $7dea: $00
	rst  $10                                         ; $7deb: $d7
	nop                                              ; $7dec: $00
	rst  $30                                         ; $7ded: $f7
	add  b                                           ; $7dee: $80
	add  l                                           ; $7def: $85
	add  b                                           ; $7df0: $80
	rst  $30                                         ; $7df1: $f7
	add  e                                           ; $7df2: $83
	adc  e                                           ; $7df3: $8b
	add  b                                           ; $7df4: $80
	add  e                                           ; $7df5: $83
	ld   bc, $c581                                   ; $7df6: $01 $81 $c5
	add  c                                           ; $7df9: $81
	ld   bc, $0302                                   ; $7dfa: $01 $02 $03
	nop                                              ; $7dfd: $00
	add  b                                           ; $7dfe: $80
	add  c                                           ; $7dff: $81
	nop                                              ; $7e00: $00
	nop                                              ; $7e01: $00
	ld   bc, $0083                                   ; $7e02: $01 $83 $00
	nop                                              ; $7e05: $00
	ld   bc, $0085                                   ; $7e06: $01 $85 $00
	nop                                              ; $7e09: $00
	ld   [bc], a                                     ; $7e0a: $02
	add  c                                           ; $7e0b: $81
	ld   bc, $0500                                   ; $7e0c: $01 $00 $05
	add  e                                           ; $7e0f: $83
	inc  bc                                          ; $7e10: $03
	nop                                              ; $7e11: $00
	dec  bc                                          ; $7e12: $0b
	add  e                                           ; $7e13: $83
	rlca                                             ; $7e14: $07
	nop                                              ; $7e15: $00
	rla                                              ; $7e16: $17
	add  b                                           ; $7e17: $80
	inc  c                                           ; $7e18: $0c

jr_09e_7e19:
	add  e                                           ; $7e19: $83
	rrca                                             ; $7e1a: $0f
	nop                                              ; $7e1b: $00
	cpl                                              ; $7e1c: $2f
	add  a                                           ; $7e1d: $87
	rra                                              ; $7e1e: $1f
	nop                                              ; $7e1f: $00
	and  b                                           ; $7e20: $a0
	add  c                                           ; $7e21: $81
	nop                                              ; $7e22: $00
	ld   bc, $80c0                                   ; $7e23: $01 $c0 $80
	add  [hl]                                        ; $7e26: $86
	nop                                              ; $7e27: $00
	add  c                                           ; $7e28: $81
	ld   b, b                                        ; $7e29: $40
	nop                                              ; $7e2a: $00
	nop                                              ; $7e2b: $00
	add  c                                           ; $7e2c: $81
	add  b                                           ; $7e2d: $80
	add  c                                           ; $7e2e: $81
	nop                                              ; $7e2f: $00
	nop                                              ; $7e30: $00
	add  b                                           ; $7e31: $80
	add  e                                           ; $7e32: $83
	nop                                              ; $7e33: $00
	ld   b, $e0                                      ; $7e34: $06 $e0
	add  b                                           ; $7e36: $80
	stop                                             ; $7e37: $10 $00
	add  b                                           ; $7e39: $80
	nop                                              ; $7e3a: $00
	jr   z, jr_09e_7dbe                              ; $7e3b: $28 $81

	nop                                              ; $7e3d: $00
	rrca                                             ; $7e3e: $0f
	inc  b                                           ; $7e3f: $04
	nop                                              ; $7e40: $00
	ld   a, [bc]                                     ; $7e41: $0a
	ld   [$0888], sp                                 ; $7e42: $08 $88 $08
	ld   c, l                                        ; $7e45: $4d
	inc  c                                           ; $7e46: $0c
	jr   z, jr_09e_7e57                              ; $7e47: $28 $0e

	ld   e, [hl]                                     ; $7e49: $5e
	rra                                              ; $7e4a: $1f
	cp   a                                           ; $7e4b: $bf
	ccf                                              ; $7e4c: $3f
	dec  sp                                          ; $7e4d: $3b
	ccf                                              ; $7e4e: $3f
	add  b                                           ; $7e4f: $80
	rra                                              ; $7e50: $1f
	ld   [$0f8d], sp                                 ; $7e51: $08 $8d $0f
	dec  sp                                          ; $7e54: $3b
	dec  bc                                          ; $7e55: $0b
	ld   c, h                                        ; $7e56: $4c

jr_09e_7e57:
	ld   bc, $0002                                   ; $7e57: $01 $02 $00
	add  c                                           ; $7e5a: $81
	adc  a                                           ; $7e5b: $8f
	nop                                              ; $7e5c: $00
	nop                                              ; $7e5d: $00
	add  b                                           ; $7e5e: $80
	add  c                                           ; $7e5f: $81
	nop                                              ; $7e60: $00
	nop                                              ; $7e61: $00
	ld   b, b                                        ; $7e62: $40
	add  c                                           ; $7e63: $81
	add  b                                           ; $7e64: $80
	nop                                              ; $7e65: $00
	and  b                                           ; $7e66: $a0
	add  e                                           ; $7e67: $83
	ret  nz                                          ; $7e68: $c0

	nop                                              ; $7e69: $00
	ret  nc                                          ; $7e6a: $d0

	add  l                                           ; $7e6b: $85
	ldh  [rP1], a                                    ; $7e6c: $e0 $00
	add  sp, -$7a                                    ; $7e6e: $e8 $86
	ldh  a, [$80]                                    ; $7e70: $f0 $80
	ldh  [$80], a                                    ; $7e72: $e0 $80
	ret  nc                                          ; $7e74: $d0

	add  b                                           ; $7e75: $80
	sub  b                                           ; $7e76: $90
	add  c                                           ; $7e77: $81
	jr   z, @-$7d                                    ; $7e78: $28 $81

	jr   nz, jr_09e_7e85                             ; $7e7a: $20 $09

	ld   h, b                                        ; $7e7c: $60
	ld   [hl], e                                     ; $7e7d: $73
	ld   bc, $4151                                   ; $7e7e: $01 $51 $41
	add  hl, sp                                      ; $7e81: $39
	or   c                                           ; $7e82: $b1
	adc  c                                           ; $7e83: $89
	pop  bc                                          ; $7e84: $c1

jr_09e_7e85:
	call $e180                                       ; $7e85: $cd $80 $e1
	add  b                                           ; $7e88: $80
	di                                               ; $7e89: $f3
	add  d                                           ; $7e8a: $82
	ei                                               ; $7e8b: $fb
	add  b                                           ; $7e8c: $80
	rst  $30                                         ; $7e8d: $f7
	dec  c                                           ; $7e8e: $0d
	ld   [hl], a                                     ; $7e8f: $77
	rst  $30                                         ; $7e90: $f7
	scf                                              ; $7e91: $37
	ld   [hl], a                                     ; $7e92: $77
	rra                                              ; $7e93: $1f
	ccf                                              ; $7e94: $3f
	rrca                                             ; $7e95: $0f
	rra                                              ; $7e96: $1f
	rlca                                             ; $7e97: $07
	rrca                                             ; $7e98: $0f
	ld   bc, $0007                                   ; $7e99: $01 $07 $00
	pop  de                                          ; $7e9c: $d1
	sub  l                                           ; $7e9d: $95
	ldh  [rP1], a                                    ; $7e9e: $e0 $00
	ret  nc                                          ; $7ea0: $d0

	add  e                                           ; $7ea1: $83
	ret  nz                                          ; $7ea2: $c0

	ld   [bc], a                                     ; $7ea3: $02
	ldh  [rP1], a                                    ; $7ea4: $e0 $00
	ret  nz                                          ; $7ea6: $c0

	add  e                                           ; $7ea7: $83
	nop                                              ; $7ea8: $00
	jr   nc, jr_09e_7eb2                             ; $7ea9: $30 $07

	nop                                              ; $7eab: $00
	inc  c                                           ; $7eac: $0c
	inc  b                                           ; $7ead: $04
	jr   jr_09e_7eb8                                 ; $7eae: $18 $08

	jr   c, jr_09e_7ecb                              ; $7eb0: $38 $19

jr_09e_7eb2:
	dec  d                                           ; $7eb2: $15
	inc  d                                           ; $7eb3: $14
	ld   h, d                                        ; $7eb4: $62
	ld   h, $2c                                      ; $7eb5: $26 $2c
	dec  hl                                          ; $7eb7: $2b

jr_09e_7eb8:
	inc  hl                                          ; $7eb8: $23
	dec  l                                           ; $7eb9: $2d
	jr   nz, @+$31                                   ; $7eba: $20 $2f

	jr   nc, @+$34                                   ; $7ebc: $30 $32

	ld   bc, $3a20                                   ; $7ebe: $01 $20 $3a
	jr   c, @+$2a                                    ; $7ec1: $38 $28

	jr   c, jr_09e_7f11                              ; $7ec3: $38 $4c

	nop                                              ; $7ec5: $00
	ccf                                              ; $7ec6: $3f
	nop                                              ; $7ec7: $00
	ld   b, b                                        ; $7ec8: $40
	ccf                                              ; $7ec9: $3f
	rlca                                             ; $7eca: $07

jr_09e_7ecb:
	ccf                                              ; $7ecb: $3f
	ld   b, b                                        ; $7ecc: $40
	rlca                                             ; $7ecd: $07
	jr   nc, jr_09e_7ed0                             ; $7ece: $30 $00

jr_09e_7ed0:
	ld   [de], a                                     ; $7ed0: $12
	ld   [bc], a                                     ; $7ed1: $02
	ld   a, a                                        ; $7ed2: $7f
	rra                                              ; $7ed3: $1f
	ret  nz                                          ; $7ed4: $c0

	ld   a, a                                        ; $7ed5: $7f
	ld   b, b                                        ; $7ed6: $40
	ld   a, a                                        ; $7ed7: $7f
	ret  nz                                          ; $7ed8: $c0

	ld   b, b                                        ; $7ed9: $40
	ld   a, a                                        ; $7eda: $7f
	adc  e                                           ; $7edb: $8b
	nop                                              ; $7edc: $00
	ld   [bc], a                                     ; $7edd: $02
	db   $fc                                         ; $7ede: $fc
	nop                                              ; $7edf: $00
	inc  bc                                          ; $7ee0: $03
	add  b                                           ; $7ee1: $80
	db   $fc                                         ; $7ee2: $fc
	inc  b                                           ; $7ee3: $04
	rst  $38                                         ; $7ee4: $ff
	rra                                              ; $7ee5: $1f
	rst  $38                                         ; $7ee6: $ff
	nop                                              ; $7ee7: $00
	rra                                              ; $7ee8: $1f
	add  b                                           ; $7ee9: $80
	ldh  [rAUD1SWEEP], a                             ; $7eea: $e0 $10

jr_09e_7eec:
	ld   a, a                                        ; $7eec: $7f
	rst  $38                                         ; $7eed: $ff
	ld   a, [hl]                                     ; $7eee: $7e
	cp   $01                                         ; $7eef: $fe $01
	nop                                              ; $7ef1: $00
	adc  $00                                         ; $7ef2: $ce $00
	ld   b, b                                        ; $7ef4: $40
	nop                                              ; $7ef5: $00
	stop                                             ; $7ef6: $10 $00
	add  b                                           ; $7ef8: $80
	nop                                              ; $7ef9: $00
	jr   nz, jr_09e_7efc                             ; $7efa: $20 $00

jr_09e_7efc:
	ret  nz                                          ; $7efc: $c0

	add  e                                           ; $7efd: $83
	nop                                              ; $7efe: $00
	ld   c, $80                                      ; $7eff: $0e $80
	nop                                              ; $7f01: $00
	ld   [hl], b                                     ; $7f02: $70
	add  b                                           ; $7f03: $80
	adc  h                                           ; $7f04: $8c
	ldh  a, [$f2]                                    ; $7f05: $f0 $f2
	db   $fc                                         ; $7f07: $fc
	nop                                              ; $7f08: $00
	db   $fc                                         ; $7f09: $fc
	ld   [bc], a                                     ; $7f0a: $02
	nop                                              ; $7f0b: $00
	inc  a                                           ; $7f0c: $3c
	nop                                              ; $7f0d: $00
	ret  nz                                          ; $7f0e: $c0

	adc  c                                           ; $7f0f: $89
	nop                                              ; $7f10: $00

jr_09e_7f11:
	dec  de                                          ; $7f11: $1b
	rlca                                             ; $7f12: $07
	nop                                              ; $7f13: $00
	ld   bc, $0800                                   ; $7f14: $01 $00 $08
	nop                                              ; $7f17: $00
	ld   [bc], a                                     ; $7f18: $02
	nop                                              ; $7f19: $00
	stop                                             ; $7f1a: $10 $00
	inc  b                                           ; $7f1c: $04
	nop                                              ; $7f1d: $00
	jr   nz, jr_09e_7f20                             ; $7f1e: $20 $00

jr_09e_7f20:
	ld   [$4000], sp                                 ; $7f20: $08 $00 $40
	nop                                              ; $7f23: $00
	stop                                             ; $7f24: $10 $00
	add  b                                           ; $7f26: $80
	nop                                              ; $7f27: $00
	jr   nz, jr_09e_7f2a                             ; $7f28: $20 $00

jr_09e_7f2a:
	jr   nz, jr_09e_7eec                             ; $7f2a: $20 $c0

	add  b                                           ; $7f2c: $80
	ld   b, b                                        ; $7f2d: $40
	add  b                                           ; $7f2e: $80
	add  b                                           ; $7f2f: $80
	ld   [bc], a                                     ; $7f30: $02
	nop                                              ; $7f31: $00
	add  b                                           ; $7f32: $80
	ld   h, b                                        ; $7f33: $60
	adc  l                                           ; $7f34: $8d
	nop                                              ; $7f35: $00
	ld   bc, $00c0                                   ; $7f36: $01 $c0 $00
	add  d                                           ; $7f39: $82
	add  b                                           ; $7f3a: $80
	ld   [bc], a                                     ; $7f3b: $02
	ld   b, b                                        ; $7f3c: $40
	nop                                              ; $7f3d: $00
	add  b                                           ; $7f3e: $80
	adc  a                                           ; $7f3f: $8f
	nop                                              ; $7f40: $00
	add  b                                           ; $7f41: $80
	ld   bc, $0280                                   ; $7f42: $01 $80 $02
	add  d                                           ; $7f45: $82
	ld   b, $80                                      ; $7f46: $06 $80
	inc  bc                                          ; $7f48: $03
	add  d                                           ; $7f49: $82
	nop                                              ; $7f4a: $00
	add  b                                           ; $7f4b: $80
	inc  bc                                          ; $7f4c: $03
	add  h                                           ; $7f4d: $84
	nop                                              ; $7f4e: $00
	db   $10                                         ; $7f4f: $10
	ld   a, c                                        ; $7f50: $79
	ld   b, $c3                                      ; $7f51: $06 $c3
	inc  bc                                          ; $7f53: $03
	pop  hl                                          ; $7f54: $e1
	ld   bc, $00c2                                   ; $7f55: $01 $c2 $00
	ld   hl, $8400                                   ; $7f58: $21 $00 $84
	nop                                              ; $7f5b: $00
	add  b                                           ; $7f5c: $80
	nop                                              ; $7f5d: $00
	ld   b, b                                        ; $7f5e: $40
	nop                                              ; $7f5f: $00
	add  sp, -$7f                                    ; $7f60: $e8 $81
	nop                                              ; $7f62: $00
	dec  bc                                          ; $7f63: $0b
	add  b                                           ; $7f64: $80
	nop                                              ; $7f65: $00
	ld   [hl], b                                     ; $7f66: $70
	nop                                              ; $7f67: $00
	add  b                                           ; $7f68: $80
	nop                                              ; $7f69: $00
	ld   b, b                                        ; $7f6a: $40
	nop                                              ; $7f6b: $00
	ld   sp, $1800                                   ; $7f6c: $31 $00 $18
	nop                                              ; $7f6f: $00
	rst  $38                                         ; $7f70: $ff
	ld   a, a                                        ; $7f71: $7f
	rst  $30                                         ; $7f72: $f7
	ld   e, [hl]                                     ; $7f73: $5e
	rst  $28                                         ; $7f74: $ef
	dec  a                                           ; $7f75: $3d
	nop                                              ; $7f76: $00
	nop                                              ; $7f77: $00
	adc  d                                           ; $7f78: $8a
	ld   c, l                                        ; $7f79: $4d
	and  l                                           ; $7f7a: $a5
	ld   d, a                                        ; $7f7b: $57
	ld   h, d                                        ; $7f7c: $62
	inc  d                                           ; $7f7d: $14
	rst  $38                                         ; $7f7e: $ff
	ld   a, a                                        ; $7f7f: $7f
	nop                                              ; $7f80: $00
	nop                                              ; $7f81: $00
	nop                                              ; $7f82: $00
	nop                                              ; $7f83: $00
	nop                                              ; $7f84: $00
	nop                                              ; $7f85: $00
	nop                                              ; $7f86: $00
	nop                                              ; $7f87: $00
	rst  $38                                         ; $7f88: $ff
	ld   a, a                                        ; $7f89: $7f
	add  sp, $51                                     ; $7f8a: $e8 $51
	ccf                                              ; $7f8c: $3f
	ld   a, [de]                                     ; $7f8d: $1a
	and  b                                           ; $7f8e: $a0
	jr   z, @+$81                                    ; $7f8f: $28 $7f

	inc  bc                                          ; $7f91: $03
	ldh  [$03], a                                    ; $7f92: $e0 $03
	rra                                              ; $7f94: $1f
	nop                                              ; $7f95: $00
	nop                                              ; $7f96: $00
	nop                                              ; $7f97: $00
	rst  $38                                         ; $7f98: $ff
	ld   a, a                                        ; $7f99: $7f
	adc  a                                           ; $7f9a: $8f
	jr   nz, @+$41                                   ; $7f9b: $20 $3f

	ld   a, [de]                                     ; $7f9d: $1a
	ld   [bc], a                                     ; $7f9e: $02
	jr   nz, @+$01                                   ; $7f9f: $20 $ff

	ld   a, a                                        ; $7fa1: $7f
	rst  JumpTable                                         ; $7fa2: $df
	ld   [bc], a                                     ; $7fa3: $02
	ccf                                              ; $7fa4: $3f
	ld   a, [de]                                     ; $7fa5: $1a
	ld   [bc], a                                     ; $7fa6: $02
	jr   nz, @+$01                                   ; $7fa7: $20 $ff

	ld   a, a                                        ; $7fa9: $7f
	ld   e, a                                        ; $7faa: $5f
	nop                                              ; $7fab: $00
	ccf                                              ; $7fac: $3f
	ld   a, [de]                                     ; $7fad: $1a
	ld   [bc], a                                     ; $7fae: $02
	jr   nz, jr_09e_7fe3                             ; $7faf: $20 $32

	ld   a, a                                        ; $7fb1: $7f
	rst  $30                                         ; $7fb2: $f7
	ld   e, [hl]                                     ; $7fb3: $5e
	rst  $28                                         ; $7fb4: $ef
	dec  a                                           ; $7fb5: $3d
	nop                                              ; $7fb6: $00
	nop                                              ; $7fb7: $00
	ld   [hl-], a                                    ; $7fb8: $32
	ld   a, a                                        ; $7fb9: $7f
	rst  $38                                         ; $7fba: $ff
	ld   a, a                                        ; $7fbb: $7f
	ccf                                              ; $7fbc: $3f
	ld   a, [de]                                     ; $7fbd: $1a
	ld   [bc], a                                     ; $7fbe: $02
	jr   nz, jr_09e_7fc1                             ; $7fbf: $20 $00

jr_09e_7fc1:
	nop                                              ; $7fc1: $00
	nop                                              ; $7fc2: $00
	nop                                              ; $7fc3: $00
	nop                                              ; $7fc4: $00
	nop                                              ; $7fc5: $00
	nop                                              ; $7fc6: $00
	nop                                              ; $7fc7: $00
	ld   [hl-], a                                    ; $7fc8: $32
	ld   a, a                                        ; $7fc9: $7f
	rst  $38                                         ; $7fca: $ff
	ld   a, a                                        ; $7fcb: $7f
	and  l                                           ; $7fcc: $a5
	ld   d, a                                        ; $7fcd: $57
	ld   [bc], a                                     ; $7fce: $02
	jr   nz, jr_09e_7fd1                             ; $7fcf: $20 $00

jr_09e_7fd1:
	nop                                              ; $7fd1: $00
	ldh  [$03], a                                    ; $7fd2: $e0 $03
	rst  $38                                         ; $7fd4: $ff
	inc  bc                                          ; $7fd5: $03
	rra                                              ; $7fd6: $1f
	nop                                              ; $7fd7: $00
	ld   [hl-], a                                    ; $7fd8: $32
	ld   a, a                                        ; $7fd9: $7f
	adc  a                                           ; $7fda: $8f
	jr   nz, @+$41                                   ; $7fdb: $20 $3f

	ld   a, [de]                                     ; $7fdd: $1a
	ld   [bc], a                                     ; $7fde: $02
	jr   nz, @+$34                                   ; $7fdf: $20 $32

	ld   a, a                                        ; $7fe1: $7f
	rst  JumpTable                                         ; $7fe2: $df

jr_09e_7fe3:
	ld   [bc], a                                     ; $7fe3: $02
	ccf                                              ; $7fe4: $3f
	ld   a, [de]                                     ; $7fe5: $1a
	ld   [bc], a                                     ; $7fe6: $02
	jr   nz, @+$34                                   ; $7fe7: $20 $32

	ld   a, a                                        ; $7fe9: $7f
	ld   e, a                                        ; $7fea: $5f
	nop                                              ; $7feb: $00
	ccf                                              ; $7fec: $3f
	ld   a, [de]                                     ; $7fed: $1a
	ld   [bc], a                                     ; $7fee: $02
	jr   nz, @+$01                                   ; $7fef: $20 $ff

	ld   a, a                                        ; $7ff1: $7f
	rst  $38                                         ; $7ff2: $ff
	ld   a, a                                        ; $7ff3: $7f
	add  hl, hl                                      ; $7ff4: $29
	dec  h                                           ; $7ff5: $25
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
