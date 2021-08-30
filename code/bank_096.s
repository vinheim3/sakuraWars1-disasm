; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $096", ROMX[$4000], BANK[$96]

Jump_096_4000:
	pop  hl                                          ; $4000: $e1
	ld   bc, $ff00                                   ; $4001: $01 $00 $ff
	adc  [hl]                                        ; $4004: $8e
	nop                                              ; $4005: $00
	inc  bc                                          ; $4006: $03
	ld   bc, $0200                                   ; $4007: $01 $00 $02
	nop                                              ; $400a: $00
	add  l                                           ; $400b: $85
	inc  b                                           ; $400c: $04
	nop                                              ; $400d: $00
	ld   b, $81                                      ; $400e: $06 $81
	ld   [bc], a                                     ; $4010: $02
	nop                                              ; $4011: $00
	db   $fc                                         ; $4012: $fc
	add  d                                           ; $4013: $82
	nop                                              ; $4014: $00
	add  b                                           ; $4015: $80
	db   $38, $80                                    ; $4016: $38 $80
	ld   a, a                                        ; $4018: $7f
	add  e                                           ; $4019: $83
	rst  $38                                         ; $401a: $ff
	ld   [bc], a                                     ; $401b: $02
	cp   $ff                                         ; $401c: $fe $ff
	rst  JumpTable                                         ; $401e: $df
	add  c                                           ; $401f: $81
	ld   hl, $4101                                   ; $4020: $21 $01 $41
	pop  bc                                          ; $4023: $c1
	add  b                                           ; $4024: $80
	ld   hl, sp+$07                                  ; $4025: $f8 $07
	and  l                                           ; $4027: $a5
	db   $fd                                         ; $4028: $fd
	jp   z, $cefe                                    ; $4029: $ca $fe $ce

	cp   $21                                         ; $402c: $fe $21
	db   $fd                                         ; $402e: $fd
	add  d                                           ; $402f: $82
	nop                                              ; $4030: $00
	add  b                                           ; $4031: $80
	pop  bc                                          ; $4032: $c1
	add  b                                           ; $4033: $80
	ld   h, $80                                      ; $4034: $26 $80
	ld   a, b                                        ; $4036: $78
	add  b                                           ; $4037: $80
	add  b                                           ; $4038: $80
	add  d                                           ; $4039: $82
	nop                                              ; $403a: $00
	add  d                                           ; $403b: $82
	add  b                                           ; $403c: $80
	add  d                                           ; $403d: $82
	nop                                              ; $403e: $00
	add  e                                           ; $403f: $83
	db   $10                                         ; $4040: $10
	inc  bc                                          ; $4041: $03
	ld   d, b                                        ; $4042: $50
	db   $10                                         ; $4043: $10
	rst  JumpTable                                         ; $4044: $df
	adc  [hl]                                        ; $4045: $8e
	add  c                                           ; $4046: $81
	ld   bc, $0082                                   ; $4047: $01 $82 $00
	add  b                                           ; $404a: $80
	ld   bc, $0084                                   ; $404b: $01 $84 $00
	inc  b                                           ; $404e: $04
	ccf                                              ; $404f: $3f
	jr   nc, jr_096_40c2                             ; $4050: $30 $70

	ld   h, b                                        ; $4052: $60
	ldh  [$85], a                                    ; $4053: $e0 $85
	add  b                                           ; $4055: $80
	nop                                              ; $4056: $00
	nop                                              ; $4057: $00
	add  c                                           ; $4058: $81
	ld   b, b                                        ; $4059: $40
	nop                                              ; $405a: $00
	ret  nz                                          ; $405b: $c0

	cp   l                                           ; $405c: $bd
	nop                                              ; $405d: $00
	nop                                              ; $405e: $00
	inc  bc                                          ; $405f: $03
	add  b                                           ; $4060: $80
	db   $fc                                         ; $4061: $fc
	ld   bc, $1014                                   ; $4062: $01 $14 $10
	add  c                                           ; $4065: $81
	ld   [$0c05], sp                                 ; $4066: $08 $05 $0c
	inc  b                                           ; $4069: $04
	ld   b, $02                                      ; $406a: $06 $02
	inc  bc                                          ; $406c: $03
	rlca                                             ; $406d: $07
	add  b                                           ; $406e: $80
	inc  b                                           ; $406f: $04
	nop                                              ; $4070: $00
	or   b                                           ; $4071: $b0
	add  e                                           ; $4072: $83
	sbc  $00                                         ; $4073: $de $00
	jp   nc, $df81                                   ; $4075: $d2 $81 $df

	nop                                              ; $4078: $00
	reti                                             ; $4079: $d9


	add  c                                           ; $407a: $81
	rst  JumpTable                                         ; $407b: $df
	ld   b, $dc                                      ; $407c: $06 $dc
	rst  JumpTable                                         ; $407e: $df
	sbc  [hl]                                        ; $407f: $9e
	ld   c, a                                        ; $4080: $4f

Jump_096_4081:
	ld   c, l                                        ; $4081: $4d
	ld   c, a                                        ; $4082: $4f
	ld   c, b                                        ; $4083: $48
	add  d                                           ; $4084: $82
	rra                                              ; $4085: $1f
	rlca                                             ; $4086: $07
	sbc  a                                           ; $4087: $9f
	sub  e                                           ; $4088: $93
	cp   a                                           ; $4089: $bf
	cp   h                                           ; $408a: $bc
	rst  $38                                         ; $408b: $ff
	rst  $30                                         ; $408c: $f7
	rst  $38                                         ; $408d: $ff
	db   $fc                                         ; $408e: $fc
	add  c                                           ; $408f: $81
	adc  c                                           ; $4090: $89
	ld   bc, $c188                                   ; $4091: $01 $88 $c1
	add  b                                           ; $4094: $80
	jp   wIsGBC                                       ; $4095: $c3 $00 $c2


	add  b                                           ; $4098: $80
	jp   $e381                                       ; $4099: $c3 $81 $e3


	ld   [bc], a                                     ; $409c: $02
	ldh  [c], a                                      ; $409d: $e2
	di                                               ; $409e: $f3
	pop  af                                          ; $409f: $f1
	add  a                                           ; $40a0: $87
	nop                                              ; $40a1: $00
	add  b                                           ; $40a2: $80
	inc  bc                                          ; $40a3: $03
	add  b                                           ; $40a4: $80
	inc  c                                           ; $40a5: $0c
	inc  bc                                          ; $40a6: $03
	sub  b                                           ; $40a7: $90
	sub  e                                           ; $40a8: $93
	ld   [bc], a                                     ; $40a9: $02
	ld   bc, $0080                                   ; $40aa: $01 $80 $00
	add  b                                           ; $40ad: $80
	rlca                                             ; $40ae: $07
	add  b                                           ; $40af: $80
	jr   c, jr_096_40b4                              ; $40b0: $38 $02

	ret  nz                                          ; $40b2: $c0

	rst  ToBoot                                         ; $40b3: $c7

jr_096_40b4:
	rlca                                             ; $40b4: $07
	add  b                                           ; $40b5: $80
	ccf                                              ; $40b6: $3f
	add  c                                           ; $40b7: $81
	rst  $38                                         ; $40b8: $ff
	inc  b                                           ; $40b9: $04
	pop  hl                                          ; $40ba: $e1
	rra                                              ; $40bb: $1f
	pop  hl                                          ; $40bc: $e1
	rst  $38                                         ; $40bd: $ff
	rra                                              ; $40be: $1f
	add  b                                           ; $40bf: $80
	ccf                                              ; $40c0: $3f
	add  c                                           ; $40c1: $81

jr_096_40c2:
	rst  $38                                         ; $40c2: $ff
	add  h                                           ; $40c3: $84
	cp   $0b                                         ; $40c4: $fe $0b
	rra                                              ; $40c6: $1f
	dec  a                                           ; $40c7: $3d
	dec  e                                           ; $40c8: $1d
	ld   e, c                                        ; $40c9: $59
	ld   e, h                                        ; $40ca: $5c
	ld   c, l                                        ; $40cb: $4d
	ld   d, c                                        ; $40cc: $51
	ld   e, c                                        ; $40cd: $59
	ld   a, h                                        ; $40ce: $7c
	ld   l, h                                        ; $40cf: $6c
	ld   l, b                                        ; $40d0: $68
	ld   [$0980], sp                                 ; $40d1: $08 $80 $09
	ld   [bc], a                                     ; $40d4: $02
	ld   c, $07                                      ; $40d5: $0e $07
	ld   a, c                                        ; $40d7: $79
	add  b                                           ; $40d8: $80
	add  b                                           ; $40d9: $80
	nop                                              ; $40da: $00
	add  c                                           ; $40db: $81
	add  c                                           ; $40dc: $81
	ld   bc, $0301                                   ; $40dd: $01 $01 $03
	add  e                                           ; $40e0: $83
	add  c                                           ; $40e1: $81
	rst  $38                                         ; $40e2: $ff
	inc  b                                           ; $40e3: $04
	ld   a, a                                        ; $40e4: $7f
	rst  $38                                         ; $40e5: $ff
	rra                                              ; $40e6: $1f
	rst  $38                                         ; $40e7: $ff
	ld   e, a                                        ; $40e8: $5f
	add  b                                           ; $40e9: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40ea: $cf
	ld   bc, $8fef                                   ; $40eb: $01 $ef $8f
	add  c                                           ; $40ee: $81
	rst  $38                                         ; $40ef: $ff
	nop                                              ; $40f0: $00
	rst  JumpTable                                         ; $40f1: $df
	add  c                                           ; $40f2: $81
	rst  $38                                         ; $40f3: $ff
	inc  b                                           ; $40f4: $04
	ldh  a, [rIE]                                    ; $40f5: $f0 $ff
	adc  a                                           ; $40f7: $8f
	ldh  a, [$8f]                                    ; $40f8: $f0 $8f
	add  b                                           ; $40fa: $80
	ldh  [$80], a                                    ; $40fb: $e0 $80
	ld   hl, sp+$00                                  ; $40fd: $f8 $00
	db   $fc                                         ; $40ff: $fc

Call_096_4100:
	add  b                                           ; $4100: $80
	db   $fd                                         ; $4101: $fd
	inc  b                                           ; $4102: $04
	ei                                               ; $4103: $fb
	cp   $e6                                         ; $4104: $fe $e6
	ld   hl, sp+$18                                  ; $4106: $f8 $18
	add  b                                           ; $4108: $80
	ldh  [$03], a                                    ; $4109: $e0 $03
	inc  bc                                          ; $410b: $03
	add  e                                           ; $410c: $83
	ld   b, b                                        ; $410d: $40
	ret  nz                                          ; $410e: $c0

	add  d                                           ; $410f: $82
	add  b                                           ; $4110: $80
	add  h                                           ; $4111: $84
	nop                                              ; $4112: $00
	inc  bc                                          ; $4113: $03
	ld   hl, sp-$80                                  ; $4114: $f8 $80
	add  a                                           ; $4116: $87
	rst  $38                                         ; $4117: $ff
	cp   l                                           ; $4118: $bd
	nop                                              ; $4119: $00
	ld   bc, $0ff0                                   ; $411a: $01 $f0 $0f
	add  b                                           ; $411d: $80
	inc  d                                           ; $411e: $14
	add  b                                           ; $411f: $80
	inc  de                                          ; $4120: $13
	add  b                                           ; $4121: $80
	db   $10                                         ; $4122: $10
	add  b                                           ; $4123: $80
	add  hl, bc                                      ; $4124: $09
	add  b                                           ; $4125: $80
	rlca                                             ; $4126: $07
	add  d                                           ; $4127: $82
	ld   [bc], a                                     ; $4128: $02
	dec  e                                           ; $4129: $1d
	and  c                                           ; $412a: $a1
	cp   a                                           ; $412b: $bf
	dec  h                                           ; $412c: $25
	ccf                                              ; $412d: $3f
	ld   b, c                                        ; $412e: $41
	ld   a, l                                        ; $412f: $7d

jr_096_4130:
	sub  c                                           ; $4130: $91
	cp   c                                           ; $4131: $b9
	dec  l                                           ; $4132: $2d
	dec  a                                           ; $4133: $3d
	rst  $38                                         ; $4134: $ff
	jp   $0cc0                                       ; $4135: $c3 $c0 $0c


	nop                                              ; $4138: $00
	db   $10                                         ; $4139: $10
	ldh  [c], a                                      ; $413a: $e2
	rst  $38                                         ; $413b: $ff
	inc  b                                           ; $413c: $04
	rst  $38                                         ; $413d: $ff
	inc  de                                          ; $413e: $13
	rla                                              ; $413f: $17

Jump_096_4140:
	ld   sp, $fc33                                   ; $4140: $31 $33 $fc
	rst  JumpTable                                         ; $4143: $df
	db   $db                                         ; $4144: $db
	rst  $38                                         ; $4145: $ff
	ld   [$800f], sp                                 ; $4146: $08 $0f $80
	nop                                              ; $4149: $00
	add  d                                           ; $414a: $82
	ld   [bc], a                                     ; $414b: $02
	add  b                                           ; $414c: $80
	inc  bc                                          ; $414d: $03
	add  b                                           ; $414e: $80
	call nz, $af80                                   ; $414f: $c4 $80 $af
	ld   [bc], a                                     ; $4152: $02
	ldh  a, [rIE]                                    ; $4153: $f0 $ff
	rrca                                             ; $4155: $0f
	add  c                                           ; $4156: $81
	rst  $38                                         ; $4157: $ff
	ld   a, [bc]                                     ; $4158: $0a
	rra                                              ; $4159: $1f
	rst  $28                                         ; $415a: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $415b: $cf
	rst  $38                                         ; $415c: $ff
	cp   [hl]                                        ; $415d: $be
	rst  $38                                         ; $415e: $ff
	ld   hl, sp-$02                                  ; $415f: $f8 $fe
	ld   h, b                                        ; $4161: $60
	ld   hl, sp-$40                                  ; $4162: $f8 $c0
	add  e                                           ; $4164: $83
	ldh  [rP1], a                                    ; $4165: $e0 $00
	ret  nz                                          ; $4167: $c0

	add  c                                           ; $4168: $81
	rst  $38                                         ; $4169: $ff
	inc  c                                           ; $416a: $0c
	ld   a, a                                        ; $416b: $7f
	rst  $38                                         ; $416c: $ff
	ccf                                              ; $416d: $3f
	ld   a, a                                        ; $416e: $7f
	ld   a, l                                        ; $416f: $7d
	ld   a, a                                        ; $4170: $7f
	jr   jr_096_4130                                 ; $4171: $18 $bd

	or   c                                           ; $4173: $b1
	cp   e                                           ; $4174: $bb
	add  e                                           ; $4175: $83
	rst  $10                                         ; $4176: $d7
	push bc                                          ; $4177: $c5
	add  c                                           ; $4178: $81
	db   $fc                                         ; $4179: $fc
	add  b                                           ; $417a: $80
	ld   hl, sp-$80                                  ; $417b: $f8 $80
	ldh  a, [$80]                                    ; $417d: $f0 $80
	ret  nz                                          ; $417f: $c0

	add  e                                           ; $4180: $83
	nop                                              ; $4181: $00
	dec  d                                           ; $4182: $15
	ld   h, e                                        ; $4183: $63
	ld   h, b                                        ; $4184: $60
	rra                                              ; $4185: $1f
	inc  de                                          ; $4186: $13
	rra                                              ; $4187: $1f
	ld   d, $0f                                      ; $4188: $16 $0f
	add  hl, bc                                      ; $418a: $09
	rlca                                             ; $418b: $07
	ld   b, $1b                                      ; $418c: $06 $1b

jr_096_418e:
	ld   a, [de]                                     ; $418e: $1a
	inc  hl                                          ; $418f: $23
	ld   [hl+], a                                    ; $4190: $22
	jp   $03c2                                       ; $4191: $c3 $c2 $03


	db   $db                                         ; $4194: $db
	rst  $38                                         ; $4195: $ff
	rst  $20                                         ; $4196: $e7
	ld   hl, sp-$18                                  ; $4197: $f8 $e8
	add  c                                           ; $4199: $81
	ld   hl, sp+$02                                  ; $419a: $f8 $02
	jr   z, jr_096_418e                              ; $419c: $28 $f0

	sub  b                                           ; $419e: $90
	add  c                                           ; $419f: $81
	ldh  a, [rDIV]                                   ; $41a0: $f0 $04
	ret  nc                                          ; $41a2: $d0

	ldh  [$df], a                                    ; $41a3: $e0 $df
	rst  $38                                         ; $41a5: $ff
	ld   a, a                                        ; $41a6: $7f
	adc  e                                           ; $41a7: $8b
	rst  $38                                         ; $41a8: $ff
	inc  c                                           ; $41a9: $0c
	ld   hl, sp-$04                                  ; $41aa: $f8 $fc
	db   $f4                                         ; $41ac: $f4
	ld   hl, sp-$18                                  ; $41ad: $f8 $e8

jr_096_41af:
	rst  $38                                         ; $41af: $ff
	ldh  [rIE], a                                    ; $41b0: $e0 $ff
	ret  nz                                          ; $41b2: $c0

	rst  $38                                         ; $41b3: $ff
	cp   h                                           ; $41b4: $bc
	call nz, $8047                                   ; $41b5: $c4 $47 $80
	add  d                                           ; $41b8: $82
	dec  b                                           ; $41b9: $05
	add  c                                           ; $41ba: $81
	cp   $e0                                         ; $41bb: $fe $e0
	jr   nz, jr_096_41af                             ; $41bd: $20 $f0

jr_096_41bf:
	ld   [hl], b                                     ; $41bf: $70

Jump_096_41c0:
	add  b                                           ; $41c0: $80
	ld   hl, sp-$80                                  ; $41c1: $f8 $80
	ld   a, h                                        ; $41c3: $7c
	nop                                              ; $41c4: $00
	rst  $38                                         ; $41c5: $ff
	add  c                                           ; $41c6: $81
	ld   a, a                                        ; $41c7: $7f
	ld   [bc], a                                     ; $41c8: $02
	rst  $38                                         ; $41c9: $ff
	ld   a, a                                        ; $41ca: $7f
	rst  $38                                         ; $41cb: $ff
	add  b                                           ; $41cc: $80
	ret  nz                                          ; $41cd: $c0

	ld   [rROMB1], sp                                 ; $41ce: $08 $00 $30
	nop                                              ; $41d1: $00
	inc  c                                           ; $41d2: $0c
	nop                                              ; $41d3: $00
	ld   [bc], a                                     ; $41d4: $02
	nop                                              ; $41d5: $00
	pop  af                                          ; $41d6: $f1
	ldh  a, [$80]                                    ; $41d7: $f0 $80
	db   $fc                                         ; $41d9: $fc
	add  b                                           ; $41da: $80
	cp   $00                                         ; $41db: $fe $00
	rst  $38                                         ; $41dd: $ff
	add  l                                           ; $41de: $85
	nop                                              ; $41df: $00
	add  hl, bc                                      ; $41e0: $09
	ld   bc, $0200                                   ; $41e1: $01 $00 $02
	nop                                              ; $41e4: $00
	add  h                                           ; $41e5: $84
	nop                                              ; $41e6: $00
	ld   c, b                                        ; $41e7: $48
	ld   b, b                                        ; $41e8: $40
	ld   [hl], b                                     ; $41e9: $70
	rst  $38                                         ; $41ea: $ff
	add  b                                           ; $41eb: $80
	nop                                              ; $41ec: $00
	ld   b, $70                                      ; $41ed: $06 $70
	nop                                              ; $41ef: $00
	adc  h                                           ; $41f0: $8c
	nop                                              ; $41f1: $00
	ld   [bc], a                                     ; $41f2: $02
	nop                                              ; $41f3: $00
	ld   bc, $0081                                   ; $41f4: $01 $81 $00
	add  b                                           ; $41f7: $80
	inc  e                                           ; $41f8: $1c
	ld   bc, $31ce                                   ; $41f9: $01 $ce $31
	adc  b                                           ; $41fc: $88
	nop                                              ; $41fd: $00
	ld   bc, $0080                                   ; $41fe: $01 $80 $00

jr_096_4201:
	add  c                                           ; $4201: $81
	ld   b, b                                        ; $4202: $40
	nop                                              ; $4203: $00
	inc  a                                           ; $4204: $3c
	add  c                                           ; $4205: $81
	ld   [bc], a                                     ; $4206: $02
	ld   bc, $0406                                   ; $4207: $01 $06 $04
	add  [hl]                                        ; $420a: $86
	dec  b                                           ; $420b: $05
	add  b                                           ; $420c: $80
	dec  c                                           ; $420d: $0d
	ld   bc, $7f83                                   ; $420e: $01 $83 $7f
	xor  b                                           ; $4211: $a8
	rst  $38                                         ; $4212: $ff
	add  b                                           ; $4213: $80
	cp   $80                                         ; $4214: $fe $80
	ld   hl, sp+$00                                  ; $4216: $f8 $00
	nop                                              ; $4218: $00
	add  b                                           ; $4219: $80
	ret  nz                                          ; $421a: $c0

	add  b                                           ; $421b: $80
	inc  bc                                          ; $421c: $03
	dec  de                                          ; $421d: $1b
	ld   l, h                                        ; $421e: $6c
	inc  c                                           ; $421f: $0c
	sub  b                                           ; $4220: $90
	ldh  [rP1], a                                    ; $4221: $e0 $00

jr_096_4223:
	db   $10                                         ; $4223: $10
	inc  e                                           ; $4224: $1c
	nop                                              ; $4225: $00
	db   $e3                                         ; $4226: $e3
	db   $fc                                         ; $4227: $fc
	nop                                              ; $4228: $00
	inc  sp                                          ; $4229: $33
	dec  c                                           ; $422a: $0d
	add  hl, bc                                      ; $422b: $09
	dec  bc                                          ; $422c: $0b
	jr   nc, jr_096_41bf                             ; $422d: $30 $90

	sub  e                                           ; $422f: $93
	ld   d, b                                        ; $4230: $50
	ld   b, b                                        ; $4231: $40
	jr   c, @+$1a                                    ; $4232: $38 $18

	jr   c, jr_096_424e                              ; $4234: $38 $18

	sbc  h                                           ; $4236: $9c
	ld   [$c74f], sp                                 ; $4237: $08 $4f $c7
	add  b                                           ; $423a: $80
	sbc  h                                           ; $423b: $9c
	add  b                                           ; $423c: $80
	add  b                                           ; $423d: $80
	inc  bc                                          ; $423e: $03
	ret  nz                                          ; $423f: $c0

Call_096_4240:
	nop                                              ; $4240: $00
	jr   nz, jr_096_4223                             ; $4241: $20 $e0

	add  d                                           ; $4243: $82
	jr   nz, @+$08                                   ; $4244: $20 $06

	jr   nc, jr_096_4279                             ; $4246: $30 $31

	ld   [$e268], sp                                 ; $4248: $08 $68 $e2
	ldh  [$e4], a                                    ; $424b: $e0 $e4
	add  b                                           ; $424d: $80

jr_096_424e:
	push af                                          ; $424e: $f5
	inc  bc                                          ; $424f: $03
	ld   [hl], $76                                   ; $4250: $36 $76
	ld   [hl], h                                     ; $4252: $74
	ld   a, h                                        ; $4253: $7c
	add  b                                           ; $4254: $80
	ld   l, b                                        ; $4255: $68
	inc  b                                           ; $4256: $04
	ld   h, b                                        ; $4257: $60
	ld   [hl], b                                     ; $4258: $70
	or   e                                           ; $4259: $b3
	di                                               ; $425a: $f3
	sbc  a                                           ; $425b: $9f
	add  b                                           ; $425c: $80
	ret  nz                                          ; $425d: $c0

	add  d                                           ; $425e: $82
	add  b                                           ; $425f: $80
	add  a                                           ; $4260: $87
	nop                                              ; $4261: $00
	adc  b                                           ; $4262: $88
	rst  $38                                         ; $4263: $ff
	nop                                              ; $4264: $00
	cp   $81                                         ; $4265: $fe $81
	rst  $38                                         ; $4267: $ff
	ld   b, $fe                                      ; $4268: $06 $fe
	rst  $38                                         ; $426a: $ff
	nop                                              ; $426b: $00
	add  b                                           ; $426c: $80
	nop                                              ; $426d: $00
	ldh  a, [$90]                                    ; $426e: $f0 $90
	add  c                                           ; $4270: $81
	ldh  a, [rP1]                                    ; $4271: $f0 $00
	db   $10                                         ; $4273: $10
	add  b                                           ; $4274: $80
	ldh  [rSB], a                                    ; $4275: $e0 $01
	rrca                                             ; $4277: $0f
	inc  c                                           ; $4278: $0c

jr_096_4279:
	add  b                                           ; $4279: $80
	inc  d                                           ; $427a: $14
	ld   bc, $9794                                   ; $427b: $01 $94 $97
	add  b                                           ; $427e: $80
	jr   c, jr_096_4201                              ; $427f: $38 $80

	rlca                                             ; $4281: $07
	add  h                                           ; $4282: $84
	nop                                              ; $4283: $00
	dec  bc                                          ; $4284: $0b
	add  b                                           ; $4285: $80
	nop                                              ; $4286: $00
	ld   a, b                                        ; $4287: $78
	nop                                              ; $4288: $00
	rlca                                             ; $4289: $07
	ret  nz                                          ; $428a: $c0

	nop                                              ; $428b: $00
	add  hl, sp                                      ; $428c: $39
	ld   bc, $e206                                   ; $428d: $01 $06 $e2
	ldh  [$80], a                                    ; $4290: $e0 $80
	inc  e                                           ; $4292: $1c
	inc  bc                                          ; $4293: $03
	inc  b                                           ; $4294: $04
	ld   b, $04                                      ; $4295: $06 $04
	dec  b                                           ; $4297: $05
	add  b                                           ; $4298: $80
	inc  b                                           ; $4299: $04
	inc  bc                                          ; $429a: $03
	ld   [$ff37], sp                                 ; $429b: $08 $37 $ff
	ccf                                              ; $429e: $3f
	adc  h                                           ; $429f: $8c
	rst  $38                                         ; $42a0: $ff
	add  b                                           ; $42a1: $80
	rst  $30                                         ; $42a2: $f7
	add  a                                           ; $42a3: $87
	rst  $38                                         ; $42a4: $ff
	inc  b                                           ; $42a5: $04
	cp   $fd                                         ; $42a6: $fe $fd
	db   $fc                                         ; $42a8: $fc
	cp   $c1                                         ; $42a9: $fe $c1
	add  b                                           ; $42ab: $80
	jr   nz, jr_096_42af                             ; $42ac: $20 $01

	and  b                                           ; $42ae: $a0

jr_096_42af:
	add  b                                           ; $42af: $80
	add  b                                           ; $42b0: $80
	sub  b                                           ; $42b1: $90
	add  c                                           ; $42b2: $81
	ret  nc                                          ; $42b3: $d0

	nop                                              ; $42b4: $00
	ret  nz                                          ; $42b5: $c0

	add  c                                           ; $42b6: $81
	add  sp, $0d                                     ; $42b7: $e8 $0d
	ld   l, b                                        ; $42b9: $68
	add  sp, $25                                     ; $42ba: $e8 $25
	ld   a, [hl]                                     ; $42bc: $7e
	add  d                                           ; $42bd: $82
	cp   $c7                                         ; $42be: $fe $c7
	rst  $38                                         ; $42c0: $ff
	pop  af                                          ; $42c1: $f1
	ld   sp, hl                                      ; $42c2: $f9
	pop  hl                                          ; $42c3: $e1
	pop  af                                          ; $42c4: $f1
	add  e                                           ; $42c5: $83
	db   $e3                                         ; $42c6: $e3
	add  b                                           ; $42c7: $80
	dec  e                                           ; $42c8: $1d
	add  b                                           ; $42c9: $80
	dec  b                                           ; $42ca: $05
	add  h                                           ; $42cb: $84
	nop                                              ; $42cc: $00
	add  b                                           ; $42cd: $80
	ret  nz                                          ; $42ce: $c0

	add  b                                           ; $42cf: $80
	jr   c, jr_096_42d8                              ; $42d0: $38 $06

	rlca                                             ; $42d2: $07
	rst  $20                                         ; $42d3: $e7
	ldh  [$f8], a                                    ; $42d4: $e0 $f8
	jr   c, @+$01                                    ; $42d6: $38 $ff

jr_096_42d8:
	ccf                                              ; $42d8: $3f
	add  e                                           ; $42d9: $83
	nop                                              ; $42da: $00
	add  b                                           ; $42db: $80
	ld   bc, $0e80                                   ; $42dc: $01 $80 $0e
	add  b                                           ; $42df: $80
	ldh  a, [$81]                                    ; $42e0: $f0 $81
	nop                                              ; $42e2: $00
	ld   [$dfc0], sp                                 ; $42e3: $08 $c0 $df
	db   $e3                                         ; $42e6: $e3
	add  c                                           ; $42e7: $81
	adc  l                                           ; $42e8: $8d
	ld   bc, $2331                                   ; $42e9: $01 $31 $23
	db   $e3                                         ; $42ec: $e3
	add  b                                           ; $42ed: $80
	inc  a                                           ; $42ee: $3c
	add  b                                           ; $42ef: $80
	db   $10                                         ; $42f0: $10
	add  b                                           ; $42f1: $80
	ld   de, $0d80                                   ; $42f2: $11 $80 $0d
	nop                                              ; $42f5: $00
	rst  $38                                         ; $42f6: $ff
	adc  b                                           ; $42f7: $88

jr_096_42f8:
	nop                                              ; $42f8: $00
	add  b                                           ; $42f9: $80
	ld   bc, $0f13                                   ; $42fa: $01 $13 $0f
	nop                                              ; $42fd: $00
	ret  nc                                          ; $42fe: $d0

	rra                                              ; $42ff: $1f
	inc  h                                           ; $4300: $24
	and  h                                           ; $4301: $a4
	jr   z, jr_096_430c                              ; $4302: $28 $08

	db   $10                                         ; $4304: $10
	ld   d, b                                        ; $4305: $50
	db   $10                                         ; $4306: $10
	jr   nc, jr_096_4341                             ; $4307: $30 $38

	nop                                              ; $4309: $00
	add  $f0                                         ; $430a: $c6 $f0

jr_096_430c:
	ld   bc, $0008                                   ; $430c: $01 $08 $00
	rlca                                             ; $430f: $07
	add  b                                           ; $4310: $80
	add  h                                           ; $4311: $84
	inc  bc                                          ; $4312: $03
	db   $f4                                         ; $4313: $f4
	add  h                                           ; $4314: $84
	db   $fc                                         ; $4315: $fc
	or   h                                           ; $4316: $b4
	add  b                                           ; $4317: $80
	ld   a, d                                        ; $4318: $7a
	rlca                                             ; $4319: $07
	ld   a, [hl-]                                    ; $431a: $3a
	ld   a, [bc]                                     ; $431b: $0a
	add  hl, sp                                      ; $431c: $39
	ld   de, $38e8                                   ; $431d: $11 $e8 $38
	ld   [hl], h                                     ; $4320: $74
	add  h                                           ; $4321: $84
	add  b                                           ; $4322: $80
	db   $fd                                         ; $4323: $fd
	add  b                                           ; $4324: $80
	ld   hl, $2680                                   ; $4325: $21 $80 $26
	ld   bc, $3818                                   ; $4328: $01 $18 $38
	add  c                                           ; $432b: $81
	jr   nc, jr_096_4332                             ; $432c: $30 $04

	ld   d, b                                        ; $432e: $50
	pop  hl                                          ; $432f: $e1
	ldh  [$e3], a                                    ; $4330: $e0 $e3

jr_096_4332:
	and  d                                           ; $4332: $a2
	add  b                                           ; $4333: $80
	nop                                              ; $4334: $00
	add  hl, bc                                      ; $4335: $09
	ld   hl, sp+$00                                  ; $4336: $f8 $00
	rlca                                             ; $4338: $07
	ld   sp, hl                                      ; $4339: $f9
	ld   bc, $0004                                   ; $433a: $01 $04 $00
	ld   [bc], a                                     ; $433d: $02
	ld   a, h                                        ; $433e: $7c
	ld   a, l                                        ; $433f: $7d
	add  b                                           ; $4340: $80

jr_096_4341:
	ret  nz                                          ; $4341: $c0

	add  b                                           ; $4342: $80

jr_096_4343:
	add  b                                           ; $4343: $80
	add  d                                           ; $4344: $82
	nop                                              ; $4345: $00
	add  b                                           ; $4346: $80
	ld   bc, $c609                                   ; $4347: $01 $09 $c6
	ld   b, $38                                      ; $434a: $06 $38
	nop                                              ; $434c: $00
	rlca                                             ; $434d: $07
	ret  nz                                          ; $434e: $c0

	nop                                              ; $434f: $00
	ccf                                              ; $4350: $3f
	nop                                              ; $4351: $00
	ld   bc, $9280                                   ; $4352: $01 $80 $92
	add  hl, bc                                      ; $4355: $09
	ld   a, [$fe82]                                  ; $4356: $fa $82 $fe
	ld   a, d                                        ; $4359: $7a
	cp   $c2                                         ; $435a: $fe $c2
	db   $fc                                         ; $435c: $fc
	dec  a                                           ; $435d: $3d
	ldh  a, [rSVBK]                                  ; $435e: $f0 $70
	add  c                                           ; $4360: $81
	ret  nz                                          ; $4361: $c0

	nop                                              ; $4362: $00
	cp   a                                           ; $4363: $bf
	add  e                                           ; $4364: $83
	nop                                              ; $4365: $00
	add  b                                           ; $4366: $80
	ld   bc, $0680                                   ; $4367: $01 $80 $06
	ld   [bc], a                                     ; $436a: $02
	ld   hl, sp+$19                                  ; $436b: $f8 $19
	ld   bc, $3f81                                   ; $436d: $01 $81 $3f
	dec  b                                           ; $4370: $05
	jr   nz, jr_096_4343                             ; $4371: $20 $d0

	ld   [$2720], sp                                 ; $4373: $08 $20 $27
	jr   nz, jr_096_42f8                             ; $4376: $20 $80

jr_096_4378:
	ld   hl, sp-$80                                  ; $4378: $f8 $80
	rlca                                             ; $437a: $07
	nop                                              ; $437b: $00
	nop                                              ; $437c: $00
	add  b                                           ; $437d: $80
	ldh  [$80], a                                    ; $437e: $e0 $80
	nop                                              ; $4380: $00
	ld   a, [bc]                                     ; $4381: $0a
	ldh  a, [$7c]                                    ; $4382: $f0 $7c
	inc  c                                           ; $4384: $0c
	ld   c, a                                        ; $4385: $4f
	dec  bc                                          ; $4386: $0b
	inc  hl                                          ; $4387: $23
	inc  b                                           ; $4388: $04
	ldh  [rSC], a                                    ; $4389: $e0 $02
	nop                                              ; $438b: $00
	ld   bc, $c080                                   ; $438c: $01 $80 $c0
	add  b                                           ; $438f: $80
	inc  sp                                          ; $4390: $33
	add  b                                           ; $4391: $80
	inc  c                                           ; $4392: $0c
	rlca                                             ; $4393: $07
	jr   jr_096_4396                                 ; $4394: $18 $00

jr_096_4396:
	sub  [hl]                                        ; $4396: $96
	add  b                                           ; $4397: $80
	jp   hl                                          ; $4398: $e9


	ld   h, b                                        ; $4399: $60
	ld   [hl], b                                     ; $439a: $70
	rla                                              ; $439b: $17
	add  b                                           ; $439c: $80
	jr   @+$22                                       ; $439d: $18 $20

	add  b                                           ; $439f: $80
	ld   h, b                                        ; $43a0: $60
	add  b                                           ; $43a1: $80
	sbc  h                                           ; $43a2: $9c
	inc  e                                           ; $43a3: $1c
	ld   a, [hl]                                     ; $43a4: $7e
	ld   sp, $0868                                   ; $43a5: $31 $68 $08
	cp   b                                           ; $43a8: $b8
	adc  b                                           ; $43a9: $88
	ret  c                                           ; $43aa: $d8

	ret  nz                                          ; $43ab: $c0

	db   $e4                                         ; $43ac: $e4
	ld   h, h                                        ; $43ad: $64
	db   $f4                                         ; $43ae: $f4
	inc  [hl]                                        ; $43af: $34
	ld   a, h                                        ; $43b0: $7c
	call c, $343c                                    ; $43b1: $dc $3c $34
	ld   a, $d0                                      ; $43b4: $3e $d0
	rst  $38                                         ; $43b6: $ff
	db   $fd                                         ; $43b7: $fd
	rst  $38                                         ; $43b8: $ff
	ei                                               ; $43b9: $fb
	db   $fc                                         ; $43ba: $fc

jr_096_43bb:
	inc  a                                           ; $43bb: $3c
	db   $fc                                         ; $43bc: $fc
	call nc, $2b3b                                   ; $43bd: $d4 $3b $2b
	add  b                                           ; $43c0: $80
	ld   de, $1580                                   ; $43c1: $11 $80 $15
	inc  b                                           ; $43c4: $04
	sbc  a                                           ; $43c5: $9f
	inc  b                                           ; $43c6: $04
	ld   h, a                                        ; $43c7: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43c8: $cf
	res  0, b                                        ; $43c9: $cb $80
	adc  a                                           ; $43cb: $8f
	inc  bc                                          ; $43cc: $03
	sub  a                                           ; $43cd: $97
	sbc  a                                           ; $43ce: $9f
	ccf                                              ; $43cf: $3f
	cpl                                              ; $43d0: $2f
	add  d                                           ; $43d1: $82
	ccf                                              ; $43d2: $3f
	dec  b                                           ; $43d3: $05
	ld   e, a                                        ; $43d4: $5f
	ld   a, a                                        ; $43d5: $7f
	ret  z                                           ; $43d6: $c8

	ld   c, h                                        ; $43d7: $4c
	ld   b, l                                        ; $43d8: $45
	add  hl, bc                                      ; $43d9: $09
	add  b                                           ; $43da: $80

jr_096_43db:
	add  hl, de                                      ; $43db: $19
	add  b                                           ; $43dc: $80
	dec  de                                          ; $43dd: $1b
	add  d                                           ; $43de: $82
	ld   a, [de]                                     ; $43df: $1a
	add  d                                           ; $43e0: $82
	dec  de                                          ; $43e1: $1b
	ld   a, [bc]                                     ; $43e2: $0a
	ld   sp, $ccc6                                   ; $43e3: $31 $c6 $cc
	ret  z                                           ; $43e6: $c8

	ld   a, h                                        ; $43e7: $7c
	cp   b                                           ; $43e8: $b8
	call c, $b2e8                                    ; $43e9: $dc $e8 $b2
	cp   l                                           ; $43ec: $bd
	xor  e                                           ; $43ed: $ab
	add  b                                           ; $43ee: $80
	xor  a                                           ; $43ef: $af
	inc  bc                                          ; $43f0: $03
	and  c                                           ; $43f1: $a1
	pop  hl                                          ; $43f2: $e1
	db   $ec                                         ; $43f3: $ec
	inc  c                                           ; $43f4: $0c
	add  b                                           ; $43f5: $80
	jr   nc, jr_096_4378                             ; $43f6: $30 $80

	inc  e                                           ; $43f8: $1c
	dec  c                                           ; $43f9: $0d
	rst  $38                                         ; $43fa: $ff
	ld   c, e                                        ; $43fb: $4b
	ld   a, a                                        ; $43fc: $7f
	jr   jr_096_443e                                 ; $43fd: $18 $3f

	inc  b                                           ; $43ff: $04
	rra                                              ; $4400: $1f
	ld   bc, $0007                                   ; $4401: $01 $07 $00
	ld   bc, $0002                                   ; $4404: $01 $02 $00
	ld   [bc], a                                     ; $4407: $02
	add  b                                           ; $4408: $80
	nop                                              ; $4409: $00
	add  b                                           ; $440a: $80
	ret  nz                                          ; $440b: $c0

	add  b                                           ; $440c: $80
	ldh  [$09], a                                    ; $440d: $e0 $09
	ldh  a, [rSVBK]                                  ; $440f: $f0 $70
	ldh  a, [$30]                                    ; $4411: $f0 $30
	ld   hl, sp+$18                                  ; $4413: $f8 $18
	db   $fc                                         ; $4415: $fc
	ld   e, a                                        ; $4416: $5f
	ld   [hl], d                                     ; $4417: $72
	ld   [hl], b                                     ; $4418: $70
	add  b                                           ; $4419: $80
	ld   [hl], c                                     ; $441a: $71
	add  b                                           ; $441b: $80
	add  hl, de                                      ; $441c: $19
	ld   bc, $0809                                   ; $441d: $01 $09 $08
	add  l                                           ; $4420: $85
	nop                                              ; $4421: $00
	nop                                              ; $4422: $00
	rst  $38                                         ; $4423: $ff
	add  b                                           ; $4424: $80
	ld   h, l                                        ; $4425: $65
	add  b                                           ; $4426: $80
	add  hl, hl                                      ; $4427: $29
	add  b                                           ; $4428: $80
	xor  $80                                         ; $4429: $ee $80
	ld   [de], a                                     ; $442b: $12
	add  b                                           ; $442c: $80
	adc  d                                           ; $442d: $8a
	add  b                                           ; $442e: $80
	add  d                                           ; $442f: $82
	add  b                                           ; $4430: $80
	ld   c, c                                        ; $4431: $49
	add  b                                           ; $4432: $80

jr_096_4433:
	rra                                              ; $4433: $1f
	add  b                                           ; $4434: $80
	ld   bc, $0e80                                   ; $4435: $01 $80 $0e
	add  b                                           ; $4438: $80
	jr   nc, jr_096_43bb                             ; $4439: $30 $80

	ld   b, b                                        ; $443b: $40
	add  b                                           ; $443c: $80
	add  c                                           ; $443d: $81

jr_096_443e:
	add  b                                           ; $443e: $80
	add  d                                           ; $443f: $82
	add  b                                           ; $4440: $80
	dec  b                                           ; $4441: $05
	add  b                                           ; $4442: $80
	ld   a, [bc]                                     ; $4443: $0a
	add  b                                           ; $4444: $80
	ldh  [$80], a                                    ; $4445: $e0 $80
	nop                                              ; $4447: $00
	inc  b                                           ; $4448: $04
	rra                                              ; $4449: $1f
	ld   bc, $0e60                                   ; $444a: $01 $60 $0e
	adc  [hl]                                        ; $444d: $8e
	add  b                                           ; $444e: $80
	ld   [hl], c                                     ; $444f: $71
	inc  bc                                          ; $4450: $03
	add  b                                           ; $4451: $80
	adc  [hl]                                        ; $4452: $8e
	ld   b, b                                        ; $4453: $40
	jr   nc, jr_096_43db                             ; $4454: $30 $85

	add  b                                           ; $4456: $80
	add  hl, bc                                      ; $4457: $09
	db   $fc                                         ; $4458: $fc
	nop                                              ; $4459: $00
	rst  $38                                         ; $445a: $ff
	db   $fc                                         ; $445b: $fc
	rst  $38                                         ; $445c: $ff
	cp   $ff                                         ; $445d: $fe $ff
	ldh  a, [$fe]                                    ; $445f: $f0 $fe
	db   $10                                         ; $4461: $10
	add  c                                           ; $4462: $81
	jr   nz, jr_096_4465                             ; $4463: $20 $00

jr_096_4465:
	nop                                              ; $4465: $00
	add  b                                           ; $4466: $80
	ld   b, e                                        ; $4467: $43
	add  b                                           ; $4468: $80

jr_096_4469:
	ld   c, a                                        ; $4469: $4f
	inc  b                                           ; $446a: $04
	rst  $38                                         ; $446b: $ff
	cp   a                                           ; $446c: $bf
	rst  $38                                         ; $446d: $ff
	add  b                                           ; $446e: $80
	rst  $38                                         ; $446f: $ff
	add  b                                           ; $4470: $80
	nop                                              ; $4471: $00
	rla                                              ; $4472: $17
	inc  c                                           ; $4473: $0c
	ldh  a, [$8c]                                    ; $4474: $f0 $8c
	add  b                                           ; $4476: $80
	jr   nc, jr_096_4480                             ; $4477: $30 $07

	daa                                              ; $4479: $27
	rra                                              ; $447a: $1f
	ld   e, $00                                      ; $447b: $1e $00
	add  hl, de                                      ; $447d: $19
	nop                                              ; $447e: $00
	rlca                                             ; $447f: $07

Call_096_4480:
jr_096_4480:
	rst  $38                                         ; $4480: $ff
	inc  bc                                          ; $4481: $03
	nop                                              ; $4482: $00
	ld   [hl], b                                     ; $4483: $70
	inc  bc                                          ; $4484: $03
	ld   l, a                                        ; $4485: $6f
	nop                                              ; $4486: $00
	jr   jr_096_4469                                 ; $4487: $18 $e0

	db   $e4                                         ; $4489: $e4
	db   $fc                                         ; $448a: $fc
	add  b                                           ; $448b: $80
	nop                                              ; $448c: $00
	ld   [bc], a                                     ; $448d: $02
	add  b                                           ; $448e: $80
	nop                                              ; $448f: $00
	add  b                                           ; $4490: $80
	add  b                                           ; $4491: $80
	ret  nz                                          ; $4492: $c0

	ld   bc, $0300                                   ; $4493: $01 $00 $03
	add  b                                           ; $4496: $80
	nop                                              ; $4497: $00
	inc  bc                                          ; $4498: $03
	ldh  [$e1], a                                    ; $4499: $e0 $e1
	inc  e                                           ; $449b: $1c
	ld   e, $86                                      ; $449c: $1e $86
	nop                                              ; $449e: $00
	rlca                                             ; $449f: $07
	jr   c, jr_096_4518                              ; $44a0: $38 $76

	add  hl, de                                      ; $44a2: $19
	sbc  e                                           ; $44a3: $9b
	rra                                              ; $44a4: $1f
	sbc  b                                           ; $44a5: $98
	inc  e                                           ; $44a6: $1c
	ld   e, b                                        ; $44a7: $58
	add  b                                           ; $44a8: $80
	ld   e, $81                                      ; $44a9: $1e $81
	rra                                              ; $44ab: $1f
	nop                                              ; $44ac: $00
	db   $10                                         ; $44ad: $10
	add  b                                           ; $44ae: $80
	rra                                              ; $44af: $1f
	ld   a, [bc]                                     ; $44b0: $0a
	jr   jr_096_4433                                 ; $44b1: $18 $80

	ld   h, a                                        ; $44b3: $67
	xor  a                                           ; $44b4: $af
	xor  l                                           ; $44b5: $ad
	sub  l                                           ; $44b6: $95
	sbc  b                                           ; $44b7: $98
	add  sp, -$08                                    ; $44b8: $e8 $f8
	db   $10                                         ; $44ba: $10
	ldh  a, [$82]                                    ; $44bb: $f0 $82
	ldh  [$80], a                                    ; $44bd: $e0 $80
	ret  nz                                          ; $44bf: $c0

	nop                                              ; $44c0: $00
	cp   a                                           ; $44c1: $bf
	add  c                                           ; $44c2: $81
	ld   a, a                                        ; $44c3: $7f
	inc  b                                           ; $44c4: $04
	sbc  e                                           ; $44c5: $9b
	cp   e                                           ; $44c6: $bb
	ld   h, a                                        ; $44c7: $67
	rst  $30                                         ; $44c8: $f7
	adc  a                                           ; $44c9: $8f
	add  e                                           ; $44ca: $83
	rst  $38                                         ; $44cb: $ff
	ld   [bc], a                                     ; $44cc: $02
	cp   $ff                                         ; $44cd: $fe $ff
	ld   [bc], a                                     ; $44cf: $02
	add  b                                           ; $44d0: $80
	dec  bc                                          ; $44d1: $0b
	add  h                                           ; $44d2: $84
	inc  de                                          ; $44d3: $13
	add  c                                           ; $44d4: $81
	inc  sp                                          ; $44d5: $33
	nop                                              ; $44d6: $00
	ld   sp, $4980                                   ; $44d7: $31 $80 $49
	ld   bc, $07f9                                   ; $44da: $01 $f9 $07
	add  e                                           ; $44dd: $83
	rst  $38                                         ; $44de: $ff
	nop                                              ; $44df: $00
	rst  $10                                         ; $44e0: $d7
	add  b                                           ; $44e1: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44e2: $cf
	rlca                                             ; $44e3: $07
	rst  $28                                         ; $44e4: $ef
	di                                               ; $44e5: $f3
	and  a                                           ; $44e6: $a7
	jp   hl                                          ; $44e7: $e9


	jp   nz, $c3c7                                   ; $44e8: $c2 $c7 $c3

	cp   h                                           ; $44eb: $bc
	add  [hl]                                        ; $44ec: $86
	nop                                              ; $44ed: $00
	add  b                                           ; $44ee: $80

jr_096_44ef:
	ldh  [$80], a                                    ; $44ef: $e0 $80
	ld   hl, sp-$80                                  ; $44f1: $f8 $80
	db   $fc                                         ; $44f3: $fc
	inc  b                                           ; $44f4: $04
	rst  $38                                         ; $44f5: $ff
	adc  a                                           ; $44f6: $8f
	ld   a, a                                        ; $44f7: $7f
	rrca                                             ; $44f8: $0f
	nop                                              ; $44f9: $00
	add  b                                           ; $44fa: $80
	ld   bc, $0280                                   ; $44fb: $01 $80 $02
	add  d                                           ; $44fe: $82
	inc  b                                           ; $44ff: $04
	add  b                                           ; $4500: $80
	ld   [$3080], sp                                 ; $4501: $08 $80 $30
	add  b                                           ; $4504: $80
	nop                                              ; $4505: $00
	add  b                                           ; $4506: $80
	ld   sp, hl                                      ; $4507: $f9
	add  b                                           ; $4508: $80
	ld   b, $88                                      ; $4509: $06 $88
	nop                                              ; $450b: $00
	add  b                                           ; $450c: $80
	pop  hl                                          ; $450d: $e1
	add  b                                           ; $450e: $80
	ld   bc, $0200                                   ; $450f: $01 $00 $02
	add  b                                           ; $4512: $80
	ld   b, $03                                      ; $4513: $06 $03
	ld   e, $1f                                      ; $4515: $1e $1f
	ccf                                              ; $4517: $3f

jr_096_4518:
	ld   a, $81                                      ; $4518: $3e $81
	ld   a, [hl]                                     ; $451a: $7e
	add  b                                           ; $451b: $80
	ld   a, h                                        ; $451c: $7c
	dec  c                                           ; $451d: $0d
	add  e                                           ; $451e: $83
	db   $fc                                         ; $451f: $fc
	db   $fd                                         ; $4520: $fd
	add  hl, de                                      ; $4521: $19
	dec  de                                          ; $4522: $1b
	ld   [hl], e                                     ; $4523: $73
	inc  d                                           ; $4524: $14
	sub  a                                           ; $4525: $97
	dec  sp                                          ; $4526: $3b
	inc  l                                           ; $4527: $2c
	ld   h, h                                        ; $4528: $64
	ld   c, b                                        ; $4529: $48
	ld   c, e                                        ; $452a: $4b
	ld   d, e                                        ; $452b: $53
	add  b                                           ; $452c: $80
	ld   d, a                                        ; $452d: $57
	inc  b                                           ; $452e: $04
	scf                                              ; $452f: $37
	rst  $20                                         ; $4530: $e7
	ret  nz                                          ; $4531: $c0

	rst  $38                                         ; $4532: $ff
	ccf                                              ; $4533: $3f
	add  b                                           ; $4534: $80
	jp   nz, $0400                                   ; $4535: $c2 $00 $04

	add  b                                           ; $4538: $80
	ld   a, h                                        ; $4539: $7c
	add  b                                           ; $453a: $80
	rst  $38                                         ; $453b: $ff
	db   $10                                         ; $453c: $10
	ldh  a, [c]                                      ; $453d: $f2
	rst  $38                                         ; $453e: $ff
	ld   sp, hl                                      ; $453f: $f9
	cp   $80                                         ; $4540: $fe $80
	ldh  a, [$7e]                                    ; $4542: $f0 $7e
	add  b                                           ; $4544: $80
	add  a                                           ; $4545: $87
	rlca                                             ; $4546: $07
	inc  a                                           ; $4547: $3c
	ccf                                              ; $4548: $3f
	db   $e3                                         ; $4549: $e3
	db   $fc                                         ; $454a: $fc
	sbc  h                                           ; $454b: $9c
	ldh  [$60], a                                    ; $454c: $e0 $60
	add  b                                           ; $454e: $80
	add  b                                           ; $454f: $80
	inc  b                                           ; $4550: $04
	nop                                              ; $4551: $00
	rrca                                             ; $4552: $0f
	nop                                              ; $4553: $00
	jr   nc, jr_096_4556                             ; $4554: $30 $00

jr_096_4556:
	add  b                                           ; $4556: $80
	rst  $38                                         ; $4557: $ff
	ld   bc, $c000                                   ; $4558: $01 $00 $c0
	add  b                                           ; $455b: $80
	nop                                              ; $455c: $00
	nop                                              ; $455d: $00
	rst  $38                                         ; $455e: $ff
	add  b                                           ; $455f: $80
	rrca                                             ; $4560: $0f
	nop                                              ; $4561: $00
	nop                                              ; $4562: $00
	add  b                                           ; $4563: $80
	ld   hl, sp+$06                                  ; $4564: $f8 $06
	ret  nz                                          ; $4566: $c0

	nop                                              ; $4567: $00

jr_096_4568:
	ld   b, b                                        ; $4568: $40
	ld   a, a                                        ; $4569: $7f
	add  a                                           ; $456a: $87
	add  b                                           ; $456b: $80
	jr   jr_096_44ef                                 ; $456c: $18 $81

	nop                                              ; $456e: $00
	rlca                                             ; $456f: $07
	ld   e, $c0                                      ; $4570: $1e $c0
	ld   e, $ff                                      ; $4572: $1e $ff
	call z, $dc3f                                    ; $4574: $cc $3f $dc
	rrca                                             ; $4577: $0f
	add  b                                           ; $4578: $80
	ldh  a, [$82]                                    ; $4579: $f0 $82
	nop                                              ; $457b: $00
	add  b                                           ; $457c: $80
	rlca                                             ; $457d: $07
	add  b                                           ; $457e: $80
	db   $fc                                         ; $457f: $fc
	inc  b                                           ; $4580: $04
	pop  af                                          ; $4581: $f1
	ld   de, $6706                                   ; $4582: $11 $06 $67
	ld   a, [hl]                                     ; $4585: $7e

jr_096_4586:
	add  b                                           ; $4586: $80
	ret  nz                                          ; $4587: $c0

	ld   bc, $0103                                   ; $4588: $01 $03 $01
	add  b                                           ; $458b: $80
	rlca                                             ; $458c: $07
	inc  c                                           ; $458d: $0c
	adc  a                                           ; $458e: $8f
	add  a                                           ; $458f: $87
	ccf                                              ; $4590: $3f
	ld   de, $36fe                                   ; $4591: $11 $fe $36
	rst  $38                                         ; $4594: $ff
	ld   [$041f], sp                                 ; $4595: $08 $1f $04
	db   $10                                         ; $4598: $10
	ld   c, $3e                                      ; $4599: $0e $3e
	add  b                                           ; $459b: $80
	inc  a                                           ; $459c: $3c
	dec  bc                                          ; $459d: $0b
	db   $10                                         ; $459e: $10
	ld   [hl], b                                     ; $459f: $70
	nop                                              ; $45a0: $00
	ld   b, b                                        ; $45a1: $40
	nop                                              ; $45a2: $00
	ld   h, b                                        ; $45a3: $60
	jr   nz, jr_096_4586                             ; $45a4: $20 $e0

	jr   nz, jr_096_4568                             ; $45a6: $20 $c0

	add  b                                           ; $45a8: $80
	ret  nz                                          ; $45a9: $c0

	add  h                                           ; $45aa: $84
	add  b                                           ; $45ab: $80
	ld   a, [de]                                     ; $45ac: $1a
	nop                                              ; $45ad: $00
	inc  bc                                          ; $45ae: $03
	ld   [bc], a                                     ; $45af: $02
	ld   c, $0a                                      ; $45b0: $0e $0a
	ld   a, [hl-]                                    ; $45b2: $3a
	inc  c                                           ; $45b3: $0c
	call z, $07fe                                    ; $45b4: $cc $fe $07
	dec  b                                           ; $45b7: $05
	rra                                              ; $45b8: $1f
	rlca                                             ; $45b9: $07
	ccf                                              ; $45ba: $3f
	inc  de                                          ; $45bb: $13
	rst  $38                                         ; $45bc: $ff
	cp   a                                           ; $45bd: $bf
	rst  $38                                         ; $45be: $ff
	and  a                                           ; $45bf: $a7
	rst  $38                                         ; $45c0: $ff
	cp   a                                           ; $45c1: $bf
	rst  $38                                         ; $45c2: $ff

jr_096_45c3:
	cp   a                                           ; $45c3: $bf
	rst  $38                                         ; $45c4: $ff
	jr   z, jr_096_45c3                              ; $45c5: $28 $fc

	ld   hl, sp-$7f                                  ; $45c7: $f8 $81
	cp   $02                                         ; $45c9: $fe $02
	db   $fc                                         ; $45cb: $fc
	rst  $38                                         ; $45cc: $ff
	cp   $81                                         ; $45cd: $fe $81
	rst  $38                                         ; $45cf: $ff
	nop                                              ; $45d0: $00
	cp   $80                                         ; $45d1: $fe $80
	rst  $38                                         ; $45d3: $ff
	dec  b                                           ; $45d4: $05
	ei                                               ; $45d5: $fb
	add  h                                           ; $45d6: $84
	push bc                                          ; $45d7: $c5
	rst  ToBoot                                         ; $45d8: $c7
	adc  e                                           ; $45d9: $8b
	rst  $30                                         ; $45da: $f7
	add  b                                           ; $45db: $80
	rst  $28                                         ; $45dc: $ef
	ld   [$3fff], sp                                 ; $45dd: $08 $ff $3f
	rst  $38                                         ; $45e0: $ff
	add  b                                           ; $45e1: $80
	cp   h                                           ; $45e2: $bc
	ldh  a, [$03]                                    ; $45e3: $f0 $03
	rrca                                             ; $45e5: $0f
	nop                                              ; $45e6: $00
	add  b                                           ; $45e7: $80
	rst  $38                                         ; $45e8: $ff
	ld   [$ff3e], sp                                 ; $45e9: $08 $3e $ff
	call c, $2e3e                                    ; $45ec: $dc $3e $2e
	ld   e, $16                                      ; $45ef: $1e $16
	ld   c, $08                                      ; $45f1: $0e $08
	add  e                                           ; $45f3: $83
	inc  b                                           ; $45f4: $04
	ld   bc, $c038                                   ; $45f5: $01 $38 $c0
	add  h                                           ; $45f8: $84
	nop                                              ; $45f9: $00
	nop                                              ; $45fa: $00
	db   $10                                         ; $45fb: $10
	add  b                                           ; $45fc: $80
	jr   jr_096_4600                                 ; $45fd: $18 $01

	sbc  h                                           ; $45ff: $9c

jr_096_4600:
	add  h                                           ; $4600: $84
	add  b                                           ; $4601: $80
	sbc  [hl]                                        ; $4602: $9e
	ld   bc, $d6de                                   ; $4603: $01 $de $d6
	add  d                                           ; $4606: $82
	ld   b, b                                        ; $4607: $40
	add  b                                           ; $4608: $80
	jp   nz, $e684                                   ; $4609: $c2 $84 $e6

	add  b                                           ; $460c: $80
	rst  $28                                         ; $460d: $ef
	add  b                                           ; $460e: $80
	ld   c, a                                        ; $460f: $4f
	add  d                                           ; $4610: $82
	ld   a, h                                        ; $4611: $7c
	add  b                                           ; $4612: $80
	ld   a, b                                        ; $4613: $78
	add  h                                           ; $4614: $84
	jr   c, @+$0b                                    ; $4615: $38 $09

	jr   jr_096_4632                                 ; $4617: $18 $19

	sbc  c                                           ; $4619: $99
	ldh  [$67], a                                    ; $461a: $e0 $67
	ld   l, $2f                                      ; $461c: $2e $2f
	dec  b                                           ; $461e: $05
	ld   e, $42                                      ; $461f: $1e $42
	add  b                                           ; $4621: $80
	ld   b, h                                        ; $4622: $44
	nop                                              ; $4623: $00
	ld   b, l                                        ; $4624: $45
	add  d                                           ; $4625: $82
	add  l                                           ; $4626: $85
	rlca                                             ; $4627: $07
	ld   bc, $3f03                                   ; $4628: $01 $03 $3f
	ld   hl, sp+$38                                  ; $462b: $f8 $38
	ret  nc                                          ; $462d: $d0

	pop  de                                          ; $462e: $d1
	and  c                                           ; $462f: $a1
	add  b                                           ; $4630: $80
	and  a                                           ; $4631: $a7

jr_096_4632:
	add  hl, bc                                      ; $4632: $09
	xor  h                                           ; $4633: $ac
	cpl                                              ; $4634: $2f
	jr   c, jr_096_4696                              ; $4635: $38 $5f

	ld   h, d                                        ; $4637: $62
	ld   a, a                                        ; $4638: $7f
	ld   [hl], l                                     ; $4639: $75
	ld   a, a                                        ; $463a: $7f
	xor  h                                           ; $463b: $ac
	nop                                              ; $463c: $00
	add  b                                           ; $463d: $80
	inc  bc                                          ; $463e: $03
	ld   c, $3f                                      ; $463f: $0e $3f
	ld   a, $ce                                      ; $4641: $3e $ce
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4643: $cf
	ld   a, $37                                      ; $4644: $3e $37
	rst  $30                                         ; $4646: $f7
	ret                                              ; $4647: $c9


	jp   z, $9593                                    ; $4648: $ca $93 $95

	ld   h, $92                                      ; $464b: $26 $92
	ld   c, a                                        ; $464d: $4f
	rst  $38                                         ; $464e: $ff
	add  b                                           ; $464f: $80
	db   $fc                                         ; $4650: $fc
	nop                                              ; $4651: $00
	ld   a, a                                        ; $4652: $7f
	add  b                                           ; $4653: $80
	dec  bc                                          ; $4654: $0b
	dec  b                                           ; $4655: $05
	ld   [hl-], a                                    ; $4656: $32
	or   d                                           ; $4657: $b2
	rst  $30                                         ; $4658: $f7
	or   a                                           ; $4659: $b7
	rrca                                             ; $465a: $0f
	ld   c, a                                        ; $465b: $4f
	add  b                                           ; $465c: $80
	ld   e, d                                        ; $465d: $5a
	inc  bc                                          ; $465e: $03
	db   $f4                                         ; $465f: $f4
	sub  a                                           ; $4660: $97
	adc  b                                           ; $4661: $88
	dec  de                                          ; $4662: $1b
	add  b                                           ; $4663: $80
	ld   a, d                                        ; $4664: $7a
	rlca                                             ; $4665: $07
	ld   l, [hl]                                     ; $4666: $6e
	and  [hl]                                        ; $4667: $a6
	push hl                                          ; $4668: $e5
	push bc                                          ; $4669: $c5
	ld   e, a                                        ; $466a: $5f
	ld   d, a                                        ; $466b: $57
	ld   d, l                                        ; $466c: $55
	ld   d, a                                        ; $466d: $57
	add  b                                           ; $466e: $80
	scf                                              ; $466f: $37
	ld   [$8f9a], sp                                 ; $4670: $08 $9a $8f
	scf                                              ; $4673: $37
	ccf                                              ; $4674: $3f
	ld   c, a                                        ; $4675: $4f
	ld   a, a                                        ; $4676: $7f
	cp   a                                           ; $4677: $bf
	rst  $38                                         ; $4678: $ff
	ld   a, a                                        ; $4679: $7f
	add  l                                           ; $467a: $85
	rst  $38                                         ; $467b: $ff
	ld   [bc], a                                     ; $467c: $02
	ld   hl, sp-$05                                  ; $467d: $f8 $fb
	rst  $38                                         ; $467f: $ff
	add  b                                           ; $4680: $80
	db   $fd                                         ; $4681: $fd
	ld   bc, $f8fc                                   ; $4682: $01 $fc $f8
	add  c                                           ; $4685: $81
	ld   sp, hl                                      ; $4686: $f9
	add  b                                           ; $4687: $80
	pop  af                                          ; $4688: $f1
	nop                                              ; $4689: $00
	ldh  a, [$81]                                    ; $468a: $f0 $81
	di                                               ; $468c: $f3
	nop                                              ; $468d: $00
	ld   [bc], a                                     ; $468e: $02
	add  b                                           ; $468f: $80
	ret  nz                                          ; $4690: $c0

	add  b                                           ; $4691: $80
	sub  b                                           ; $4692: $90
	add  b                                           ; $4693: $80
	and  b                                           ; $4694: $a0
	add  b                                           ; $4695: $80

jr_096_4696:
	jr   nz, @-$7e                                   ; $4696: $20 $80

	jr   z, @-$7d                                    ; $4698: $28 $81

	ld   b, h                                        ; $469a: $44
	ld   [bc], a                                     ; $469b: $02
	ld   b, b                                        ; $469c: $40
	ld   b, d                                        ; $469d: $42
	cp   b                                           ; $469e: $b8
	add  c                                           ; $469f: $81
	rst  $38                                         ; $46a0: $ff
	add  hl, bc                                      ; $46a1: $09
	cp   $ff                                         ; $46a2: $fe $ff
	cp   $ff                                         ; $46a4: $fe $ff
	ld   a, $ff                                      ; $46a6: $3e $ff
	adc  a                                           ; $46a8: $8f
	cp   a                                           ; $46a9: $bf
	ld   b, b                                        ; $46aa: $40
	ld   c, a                                        ; $46ab: $4f
	add  b                                           ; $46ac: $80
	add  h                                           ; $46ad: $84
	nop                                              ; $46ae: $00
	jr   nz, jr_096_4632                             ; $46af: $20 $81

	rst  $38                                         ; $46b1: $ff
	inc  b                                           ; $46b2: $04
	ccf                                              ; $46b3: $3f
	rst  $38                                         ; $46b4: $ff
	nop                                              ; $46b5: $00
	rst  $38                                         ; $46b6: $ff
	ld   b, h                                        ; $46b7: $44
	add  c                                           ; $46b8: $81
	rst  $38                                         ; $46b9: $ff
	inc  b                                           ; $46ba: $04
	sbc  a                                           ; $46bb: $9f
	rst  $38                                         ; $46bc: $ff
	call nz, $43bf                                   ; $46bd: $c4 $bf $43
	add  b                                           ; $46c0: $80
	ldh  a, [c]                                      ; $46c1: $f2
	dec  c                                           ; $46c2: $0d
	ldh  [c], a                                      ; $46c3: $e2
	xor  $8c                                         ; $46c4: $ee $8c
	ld   [hl], h                                     ; $46c6: $74
	db   $f4                                         ; $46c7: $f4
	adc  h                                           ; $46c8: $8c
	ret  z                                           ; $46c9: $c8

	ld   [$c8f8], sp                                 ; $46ca: $08 $f8 $c8
	ld   hl, sp+$18                                  ; $46cd: $f8 $18
	sub  b                                           ; $46cf: $90
	ldh  a, [$82]                                    ; $46d0: $f0 $82
	nop                                              ; $46d2: $00
	add  c                                           ; $46d3: $81
	ld   bc, $0000                                   ; $46d4: $01 $00 $00
	add  e                                           ; $46d7: $83
	ld   [bc], a                                     ; $46d8: $02
	ld   bc, $0301                                   ; $46d9: $01 $01 $03
	ld   a, e                                        ; $46dc: $7b
	ld   [bc], a                                     ; $46dd: $02
	add  [hl]                                        ; $46de: $86
	nop                                              ; $46df: $00
	ld   bc, $639c                                   ; $46e0: $01 $9c $63
	add  b                                           ; $46e3: $80
	rst  ToBoot                                         ; $46e4: $c7
	add  b                                           ; $46e5: $80
	sbc  a                                           ; $46e6: $9f
	add  b                                           ; $46e7: $80
	ld   a, h                                        ; $46e8: $7c
	nop                                              ; $46e9: $00
	rst  $38                                         ; $46ea: $ff
	add  l                                           ; $46eb: $85
	nop                                              ; $46ec: $00
	ld   bc, $f807                                   ; $46ed: $01 $07 $f8
	add  b                                           ; $46f0: $80
	ldh  [$80], a                                    ; $46f1: $e0 $80
	inc  b                                           ; $46f3: $04

jr_096_46f4:
	add  b                                           ; $46f4: $80
	inc  de                                          ; $46f5: $13
	nop                                              ; $46f6: $00
	rst  $38                                         ; $46f7: $ff
	add  l                                           ; $46f8: $85
	nop                                              ; $46f9: $00
	ld   bc, $39c6                                   ; $46fa: $01 $c6 $39
	add  b                                           ; $46fd: $80
	cp   $80                                         ; $46fe: $fe $80
	ld   a, a                                        ; $4700: $7f
	add  b                                           ; $4701: $80
	sbc  a                                           ; $4702: $9f
	nop                                              ; $4703: $00
	rst  $38                                         ; $4704: $ff
	add  l                                           ; $4705: $85
	nop                                              ; $4706: $00
	ld   bc, $8976                                   ; $4707: $01 $76 $89
	add  b                                           ; $470a: $80
	ld   h, [hl]                                     ; $470b: $66
	add  b                                           ; $470c: $80
	xor  c                                           ; $470d: $a9
	add  b                                           ; $470e: $80
	xor  [hl]                                        ; $470f: $ae
	nop                                              ; $4710: $00
	rst  $38                                         ; $4711: $ff
	add  [hl]                                        ; $4712: $86
	nop                                              ; $4713: $00
	nop                                              ; $4714: $00
	rst  $38                                         ; $4715: $ff
	add  b                                           ; $4716: $80
	ld   a, a                                        ; $4717: $7f
	add  b                                           ; $4718: $80
	sbc  h                                           ; $4719: $9c
	add  b                                           ; $471a: $80
	ld   h, e                                        ; $471b: $63
	nop                                              ; $471c: $00
	rst  $38                                         ; $471d: $ff
	add  l                                           ; $471e: $85
	nop                                              ; $471f: $00
	ld   bc, $de21                                   ; $4720: $01 $21 $de
	add  b                                           ; $4723: $80
	call c, $0980                                    ; $4724: $dc $80 $09
	add  b                                           ; $4727: $80
	rst  ToBoot                                         ; $4728: $c7
	nop                                              ; $4729: $00
	rst  $38                                         ; $472a: $ff
	add  l                                           ; $472b: $85
	nop                                              ; $472c: $00
	ld   bc, $f30c                                   ; $472d: $01 $0c $f3
	add  b                                           ; $4730: $80
	rrca                                             ; $4731: $0f
	add  b                                           ; $4732: $80
	ldh  a, [$80]                                    ; $4733: $f0 $80
	db   $fc                                         ; $4735: $fc
	nop                                              ; $4736: $00
	rst  $38                                         ; $4737: $ff
	add  l                                           ; $4738: $85
	nop                                              ; $4739: $00
	ld   bc, $fe01                                   ; $473a: $01 $01 $fe
	add  b                                           ; $473d: $80
	ldh  [$80], a                                    ; $473e: $e0 $80
	dec  e                                           ; $4740: $1d
	add  b                                           ; $4741: $80
	ei                                               ; $4742: $fb
	nop                                              ; $4743: $00
	rst  $38                                         ; $4744: $ff
	add  l                                           ; $4745: $85
	nop                                              ; $4746: $00
	ld   bc, $0ff0                                   ; $4747: $01 $f0 $0f
	add  b                                           ; $474a: $80
	rst  $38                                         ; $474b: $ff
	add  b                                           ; $474c: $80
	db   $fc                                         ; $474d: $fc
	add  b                                           ; $474e: $80
	ei                                               ; $474f: $fb
	nop                                              ; $4750: $00
	rst  $38                                         ; $4751: $ff
	add  l                                           ; $4752: $85
	nop                                              ; $4753: $00
	ld   bc, $c738                                   ; $4754: $01 $38 $c7
	add  b                                           ; $4757: $80
	cpl                                              ; $4758: $2f
	add  b                                           ; $4759: $80
	rst  JumpTable                                         ; $475a: $df
	add  b                                           ; $475b: $80
	cp   h                                           ; $475c: $bc
	nop                                              ; $475d: $00
	rst  $38                                         ; $475e: $ff
	add  l                                           ; $475f: $85
	nop                                              ; $4760: $00
	ld   bc, $d12e                                   ; $4761: $01 $2e $d1
	add  b                                           ; $4764: $80
	pop  af                                          ; $4765: $f1
	add  b                                           ; $4766: $80
	sub  c                                           ; $4767: $91
	add  b                                           ; $4768: $80
	ld   [hl], c                                     ; $4769: $71
	nop                                              ; $476a: $00
	rst  $38                                         ; $476b: $ff
	add  l                                           ; $476c: $85
	nop                                              ; $476d: $00
	ld   bc, $07f8                                   ; $476e: $01 $f8 $07
	add  b                                           ; $4771: $80
	jr   jr_096_46f4                                 ; $4772: $18 $80

	rrca                                             ; $4774: $0f
	add  b                                           ; $4775: $80
	inc  de                                          ; $4776: $13
	add  b                                           ; $4777: $80
	ldh  [rTIMA], a                                  ; $4778: $e0 $05
	add  e                                           ; $477a: $83
	add  b                                           ; $477b: $80
	inc  c                                           ; $477c: $0c
	nop                                              ; $477d: $00
	jr   nc, jr_096_4780                             ; $477e: $30 $00

jr_096_4780:
	add  b                                           ; $4780: $80
	jr   nc, jr_096_478b                             ; $4781: $30 $08

	ccf                                              ; $4783: $3f
	rrca                                             ; $4784: $0f
	ld   c, $07                                      ; $4785: $0e $07
	ld   b, $1a                                      ; $4787: $06 $1a
	and  $0c                                         ; $4789: $e6 $0c

jr_096_478b:
	rrca                                             ; $478b: $0f
	add  b                                           ; $478c: $80
	inc  bc                                          ; $478d: $03
	add  l                                           ; $478e: $85
	nop                                              ; $478f: $00
	add  b                                           ; $4790: $80
	ldh  [$03], a                                    ; $4791: $e0 $03
	call c, $f83c                                    ; $4793: $dc $3c $f8
	rst  $20                                         ; $4796: $e7
	add  b                                           ; $4797: $80
	jr   @+$06                                       ; $4798: $18 $04

	rst  $20                                         ; $479a: $e7
	ld   h, a                                        ; $479b: $67
	ld   a, b                                        ; $479c: $78
	jr   jr_096_47be                                 ; $479d: $18 $1f

	add  b                                           ; $479f: $80
	inc  bc                                          ; $47a0: $03
	nop                                              ; $47a1: $00
	nop                                              ; $47a2: $00
	add  b                                           ; $47a3: $80
	ld   bc, $0e80                                   ; $47a4: $01 $80 $0e
	ld   bc, $a956                                   ; $47a7: $01 $56 $a9
	add  b                                           ; $47aa: $80
	xor  d                                           ; $47ab: $aa
	add  b                                           ; $47ac: $80
	dec  hl                                          ; $47ad: $2b

jr_096_47ae:
	add  b                                           ; $47ae: $80
	db   $eb                                         ; $47af: $eb
	add  b                                           ; $47b0: $80
	ld   [$e507], sp                                 ; $47b1: $08 $07 $e5
	ld   h, h                                        ; $47b4: $64
	ld   a, [$f999]                                  ; $47b5: $fa $99 $f9
	ldh  [$74], a                                    ; $47b8: $e0 $74
	adc  a                                           ; $47ba: $8f
	add  b                                           ; $47bb: $80
	ld   e, a                                        ; $47bc: $5f
	add  b                                           ; $47bd: $80

jr_096_47be:
	cp   a                                           ; $47be: $bf
	add  b                                           ; $47bf: $80
	ld   a, a                                        ; $47c0: $7f
	add  b                                           ; $47c1: $80
	db   $fc                                         ; $47c2: $fc
	rlca                                             ; $47c3: $07
	di                                               ; $47c4: $f3
	ldh  a, [$ec]                                    ; $47c5: $f0 $ec
	ldh  [$d0], a                                    ; $47c7: $e0 $d0
	ret  nz                                          ; $47c9: $c0

	or   b                                           ; $47ca: $b0
	xor  a                                           ; $47cb: $af
	add  b                                           ; $47cc: $80
	rst  JumpTable                                         ; $47cd: $df
	add  b                                           ; $47ce: $80
	cp   a                                           ; $47cf: $bf
	add  b                                           ; $47d0: $80
	rst  $38                                         ; $47d1: $ff
	add  b                                           ; $47d2: $80
	nop                                              ; $47d3: $00
	ld   bc, $1fe0                                   ; $47d4: $01 $e0 $1f
	add  d                                           ; $47d7: $82
	ccf                                              ; $47d8: $3f
	nop                                              ; $47d9: $00
	nop                                              ; $47da: $00
	add  l                                           ; $47db: $85
	rst  $38                                         ; $47dc: $ff
	add  b                                           ; $47dd: $80
	dec  a                                           ; $47de: $3d
	ld   [bc], a                                     ; $47df: $02
	ld   b, $c6                                      ; $47e0: $06 $c6

jr_096_47e2:
	ret  nz                                          ; $47e2: $c0

	add  b                                           ; $47e3: $80
	ld   hl, sp+$02                                  ; $47e4: $f8 $02
	cp   $c9                                         ; $47e6: $fe $c9
	scf                                              ; $47e8: $37
	add  b                                           ; $47e9: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47ea: $cf
	add  b                                           ; $47eb: $80
	rst  $30                                         ; $47ec: $f7
	add  b                                           ; $47ed: $80
	ld   hl, sp-$80                                  ; $47ee: $f8 $80
	db   $fc                                         ; $47f0: $fc
	nop                                              ; $47f1: $00
	cp   $80                                         ; $47f2: $fe $80
	or   $80                                         ; $47f4: $f6 $80
	ld   a, [$f602]                                  ; $47f6: $fa $02 $f6
	rst  $28                                         ; $47f9: $ef
	rst  $20                                         ; $47fa: $e7
	add  b                                           ; $47fb: $80
	sbc  [hl]                                        ; $47fc: $9e
	add  b                                           ; $47fd: $80
	ld   a, b                                        ; $47fe: $78
	add  b                                           ; $47ff: $80
	push bc                                          ; $4800: $c5
	add  b                                           ; $4801: $80
	dec  sp                                          ; $4802: $3b
	add  b                                           ; $4803: $80
	rst  $30                                         ; $4804: $f7
	add  b                                           ; $4805: $80
	rst  $28                                         ; $4806: $ef
	add  b                                           ; $4807: $80
	call c, Call_096_6780                            ; $4808: $dc $80 $67
	add  b                                           ; $480b: $80
	rra                                              ; $480c: $1f
	add  b                                           ; $480d: $80
	db   $fc                                         ; $480e: $fc
	add  b                                           ; $480f: $80
	ei                                               ; $4810: $fb
	add  b                                           ; $4811: $80
	rst  $20                                         ; $4812: $e7
	add  b                                           ; $4813: $80
	sbc  [hl]                                        ; $4814: $9e
	add  b                                           ; $4815: $80
	ld   a, b                                        ; $4816: $78
	add  b                                           ; $4817: $80
	push hl                                          ; $4818: $e5
	add  b                                           ; $4819: $80
	sub  c                                           ; $481a: $91
	add  b                                           ; $481b: $80
	ld   [hl], c                                     ; $481c: $71
	add  d                                           ; $481d: $82
	pop  de                                          ; $481e: $d1
	add  b                                           ; $481f: $80
	sub  c                                           ; $4820: $91
	add  b                                           ; $4821: $80
	ld   sp, $f180                                   ; $4822: $31 $80 $f1
	add  b                                           ; $4825: $80
	pop  de                                          ; $4826: $d1
	add  b                                           ; $4827: $80
	inc  c                                           ; $4828: $0c
	add  b                                           ; $4829: $80
	rlca                                             ; $482a: $07
	add  b                                           ; $482b: $80
	jr   jr_096_47ae                                 ; $482c: $18 $80

	rra                                              ; $482e: $1f
	add  b                                           ; $482f: $80
	rrca                                             ; $4830: $0f
	add  b                                           ; $4831: $80
	inc  de                                          ; $4832: $13
	add  b                                           ; $4833: $80
	db   $10                                         ; $4834: $10
	add  b                                           ; $4835: $80
	inc  de                                          ; $4836: $13
	inc  bc                                          ; $4837: $03
	jr   nz, jr_096_483c                             ; $4838: $20 $02

	jr   nz, jr_096_483c                             ; $483a: $20 $00

jr_096_483c:
	add  b                                           ; $483c: $80
	ld   [bc], a                                     ; $483d: $02
	ld   b, $20                                      ; $483e: $06 $20
	nop                                              ; $4840: $00
	dec  e                                           ; $4841: $1d
	jr   nz, jr_096_4860                             ; $4842: $20 $1c

	ld   [bc], a                                     ; $4844: $02
	ld   bc, $0082                                   ; $4845: $01 $82 $00
	add  b                                           ; $4848: $80
	inc  bc                                          ; $4849: $03
	add  b                                           ; $484a: $80
	ld   b, $80                                      ; $484b: $06 $80
	ld   a, [hl-]                                    ; $484d: $3a
	add  b                                           ; $484e: $80
	jp   nz, $020b                                   ; $484f: $c2 $0b $02

	ldh  [c], a                                      ; $4852: $e2
	inc  bc                                          ; $4853: $03
	jp   $1c3e                                       ; $4854: $c3 $3e $1c


	inc  bc                                          ; $4857: $03
	ld   c, l                                        ; $4858: $4d
	or   e                                           ; $4859: $b3
	ld   a, h                                        ; $485a: $7c
	db   $fc                                         ; $485b: $fc
	ld   a, a                                        ; $485c: $7f
	add  b                                           ; $485d: $80
	rrca                                             ; $485e: $0f
	add  b                                           ; $485f: $80

jr_096_4860:
	jr   jr_096_47e2                                 ; $4860: $18 $80

	ld   l, b                                        ; $4862: $68
	add  b                                           ; $4863: $80
	adc  b                                           ; $4864: $88
	add  b                                           ; $4865: $80
	dec  bc                                          ; $4866: $0b
	ld   b, $ec                                      ; $4867: $06 $ec
	dec  de                                          ; $4869: $1b
	ld   [bc], a                                     ; $486a: $02
	ld   [de], a                                     ; $486b: $12
	inc  de                                          ; $486c: $13
	ld   h, e                                        ; $486d: $63
	ld   h, a                                        ; $486e: $67
	add  b                                           ; $486f: $80
	rst  $30                                         ; $4870: $f7
	nop                                              ; $4871: $00
	or   $80                                         ; $4872: $f6 $80
	ld   [hl], $02                                   ; $4874: $36 $02
	sub  $d5                                         ; $4876: $d6 $d5
	dec  d                                           ; $4878: $15
	add  b                                           ; $4879: $80
	inc  de                                          ; $487a: $13
	rlca                                             ; $487b: $07
	adc  h                                           ; $487c: $8c
	and  b                                           ; $487d: $a0
	cpl                                              ; $487e: $2f
	ld   h, e                                        ; $487f: $63
	ld   a, a                                        ; $4880: $7f
	ld   l, a                                        ; $4881: $6f
	ld   a, a                                        ; $4882: $7f

jr_096_4883:
	rra                                              ; $4883: $1f
	add  b                                           ; $4884: $80

jr_096_4885:
	ld   a, a                                        ; $4885: $7f
	add  b                                           ; $4886: $80
	ei                                               ; $4887: $fb
	add  b                                           ; $4888: $80
	rst  $30                                         ; $4889: $f7
	inc  bc                                          ; $488a: $03
	rst  $28                                         ; $488b: $ef
	xor  a                                           ; $488c: $af
	ld   b, b                                        ; $488d: $40
	nop                                              ; $488e: $00
	adc  b                                           ; $488f: $88
	rst  $38                                         ; $4890: $ff
	add  d                                           ; $4891: $82
	rst  $30                                         ; $4892: $f7
	add  hl, bc                                      ; $4893: $09
	nop                                              ; $4894: $00
	ld   a, [hl]                                     ; $4895: $7e
	cp   $8f                                         ; $4896: $fe $8f
	rst  $38                                         ; $4898: $ff
	di                                               ; $4899: $f3
	rst  $38                                         ; $489a: $ff
	db   $fd                                         ; $489b: $fd
	rst  $38                                         ; $489c: $ff
	cp   $82                                         ; $489d: $fe $82
	rst  $38                                         ; $489f: $ff
	add  b                                           ; $48a0: $80
	ld   a, [$ff02]                                  ; $48a1: $fa $02 $ff
	db   $eb                                         ; $48a4: $eb
	ld   l, e                                        ; $48a5: $6b
	add  b                                           ; $48a6: $80
	ld   c, a                                        ; $48a7: $4f
	add  b                                           ; $48a8: $80
	ld   b, a                                        ; $48a9: $47
	add  b                                           ; $48aa: $80
	ld   d, a                                        ; $48ab: $57
	add  c                                           ; $48ac: $81
	ld   e, a                                        ; $48ad: $5f
	add  c                                           ; $48ae: $81
	sbc  a                                           ; $48af: $9f
	nop                                              ; $48b0: $00
	cp   a                                           ; $48b1: $bf
	add  b                                           ; $48b2: $80
	dec  sp                                          ; $48b3: $3b
	add  b                                           ; $48b4: $80
	inc  h                                           ; $48b5: $24
	add  b                                           ; $48b6: $80
	ld   b, e                                        ; $48b7: $43
	add  b                                           ; $48b8: $80
	sbc  l                                           ; $48b9: $9d
	add  b                                           ; $48ba: $80
	cp   l                                           ; $48bb: $bd
	dec  b                                           ; $48bc: $05
	cp   a                                           ; $48bd: $bf
	cp   b                                           ; $48be: $b8
	ret                                              ; $48bf: $c9


	call z, $d1d3                                    ; $48c0: $cc $d3 $d1
	add  b                                           ; $48c3: $80
	dec  de                                          ; $48c4: $1b
	add  b                                           ; $48c5: $80
	or   $80                                         ; $48c6: $f6 $80
	add  sp, -$80                                    ; $48c8: $e8 $80
	sub  $80                                         ; $48ca: $d6 $80
	call $9b80                                       ; $48cc: $cd $80 $9b
	add  b                                           ; $48cf: $80
	ld   d, a                                        ; $48d0: $57
	add  b                                           ; $48d1: $80
	adc  a                                           ; $48d2: $8f
	add  b                                           ; $48d3: $80
	or   c                                           ; $48d4: $b1
	add  b                                           ; $48d5: $80
	ld   sp, $5182                                   ; $48d6: $31 $82 $51
	add  [hl]                                        ; $48d9: $86
	ld   [hl], c                                     ; $48da: $71
	add  b                                           ; $48db: $80
	dec  d                                           ; $48dc: $15
	add  b                                           ; $48dd: $80
	ld   d, $82                                      ; $48de: $16 $82
	rla                                              ; $48e0: $17
	add  b                                           ; $48e1: $80
	ld   b, $80                                      ; $48e2: $06 $80
	dec  b                                           ; $48e4: $05
	add  b                                           ; $48e5: $80
	dec  d                                           ; $48e6: $15
	add  b                                           ; $48e7: $80
	inc  de                                          ; $48e8: $13
	add  h                                           ; $48e9: $84
	nop                                              ; $48ea: $00
	add  b                                           ; $48eb: $80
	rra                                              ; $48ec: $1f
	add  b                                           ; $48ed: $80
	inc  de                                          ; $48ee: $13
	add  b                                           ; $48ef: $80
	dec  d                                           ; $48f0: $15
	nop                                              ; $48f1: $00
	ccf                                              ; $48f2: $3f
	add  b                                           ; $48f3: $80
	rra                                              ; $48f4: $1f
	ld   [bc], a                                     ; $48f5: $02
	add  hl, de                                      ; $48f6: $19
	ld   h, $18                                      ; $48f7: $26 $18
	add  b                                           ; $48f9: $80
	nop                                              ; $48fa: $00
	ld   bc, $0018                                   ; $48fb: $01 $18 $00
	add  b                                           ; $48fe: $80
	rst  $38                                         ; $48ff: $ff
	add  b                                           ; $4900: $80
	jr   jr_096_4883                                 ; $4901: $18 $80

	jr   z, jr_096_4885                              ; $4903: $28 $80

	ret  z                                           ; $4905: $c8

	rlca                                             ; $4906: $07
	rst  $38                                         ; $4907: $ff
	cp   a                                           ; $4908: $bf
	ld   h, b                                        ; $4909: $60
	ld   a, $1c                                      ; $490a: $3e $1c
	inc  bc                                          ; $490c: $03
	ld   bc, $800c                                   ; $490d: $01 $0c $80
	di                                               ; $4910: $f3
	ld   bc, $ccc0                                   ; $4911: $01 $c0 $cc
	add  b                                           ; $4914: $80
	xor  d                                           ; $4915: $aa
	add  b                                           ; $4916: $80
	sbc  c                                           ; $4917: $99
	add  b                                           ; $4918: $80
	adc  c                                           ; $4919: $89
	rlca                                             ; $491a: $07
	daa                                              ; $491b: $27
	ld   [hl], $1e                                   ; $491c: $36 $1e
	db   $ed                                         ; $491e: $ed
	call $d12b                                       ; $491f: $cd $2b $d1
	call nc, Call_096_4a80                           ; $4922: $d4 $80 $4a
	ld   bc, $2b2a                                   ; $4925: $01 $2a $2b
	add  b                                           ; $4928: $80
	dec  de                                          ; $4929: $1b
	add  b                                           ; $492a: $80
	rla                                              ; $492b: $17
	inc  b                                           ; $492c: $04
	rst  $28                                         ; $492d: $ef
	cpl                                              ; $492e: $2f
	rra                                              ; $492f: $1f
	ld   c, a                                        ; $4930: $4f
	ld   c, d                                        ; $4931: $4a
	add  b                                           ; $4932: $80
	ld   b, b                                        ; $4933: $40
	nop                                              ; $4934: $00
	jp   z, $a280                                    ; $4935: $ca $80 $a2

	ld   [bc], a                                     ; $4938: $02
	and  c                                           ; $4939: $a1
	or   b                                           ; $493a: $b0
	inc  h                                           ; $493b: $24
	add  c                                           ; $493c: $81
	jr   nz, jr_096_493f                             ; $493d: $20 $00

jr_096_493f:
	ld   h, b                                        ; $493f: $60

Call_096_4940:
	add  b                                           ; $4940: $80
	ld   h, l                                        ; $4941: $65
	nop                                              ; $4942: $00
	ld   b, l                                        ; $4943: $45
	add  c                                           ; $4944: $81
	ld   b, h                                        ; $4945: $44
	ld   bc, $0604                                   ; $4946: $01 $04 $06
	add  b                                           ; $4949: $80
	ld   b, [hl]                                     ; $494a: $46
	ld   [bc], a                                     ; $494b: $02
	ld   h, [hl]                                     ; $494c: $66
	ld   l, d                                        ; $494d: $6a
	ld   h, d                                        ; $494e: $62
	add  b                                           ; $494f: $80
	ld   h, e                                        ; $4950: $63
	add  hl, bc                                      ; $4951: $09
	push af                                          ; $4952: $f5
	push de                                          ; $4953: $d5
	call c, Call_096_4240                            ; $4954: $dc $40 $42
	add  [hl]                                        ; $4957: $86
	adc  e                                           ; $4958: $8b
	di                                               ; $4959: $f3
	ld   d, c                                        ; $495a: $51
	ld   e, c                                        ; $495b: $59
	add  b                                           ; $495c: $80
	ld   l, h                                        ; $495d: $6c
	inc  b                                           ; $495e: $04
	and  [hl]                                        ; $495f: $a6
	ld   h, $d3                                      ; $4960: $26 $d3
	inc  de                                          ; $4962: $13
	ld   a, a                                        ; $4963: $7f
	add  l                                           ; $4964: $85
	ccf                                              ; $4965: $3f
	add  b                                           ; $4966: $80
	cp   a                                           ; $4967: $bf
	add  d                                           ; $4968: $82
	ccf                                              ; $4969: $3f
	add  b                                           ; $496a: $80
	scf                                              ; $496b: $37
	add  b                                           ; $496c: $80
	jp   $e082                                       ; $496d: $c3 $82 $e0


	add  b                                           ; $4970: $80
	jp   $d380                                       ; $4971: $c3 $80 $d3


	add  b                                           ; $4974: $80
	ret  nc                                          ; $4975: $d0

	add  b                                           ; $4976: $80
	ldh  [c], a                                      ; $4977: $e2
	inc  bc                                          ; $4978: $03
	jp   hl                                          ; $4979: $e9


	add  sp, -$22                                    ; $497a: $e8 $de
	rst  JumpTable                                         ; $497c: $df
	add  b                                           ; $497d: $80
	nop                                              ; $497e: $00
	add  b                                           ; $497f: $80
	ld   h, a                                        ; $4980: $67
	add  b                                           ; $4981: $80
	rst  ToBoot                                         ; $4982: $c7
	add  b                                           ; $4983: $80
	or   d                                           ; $4984: $b2
	add  b                                           ; $4985: $80
	ld   [hl], h                                     ; $4986: $74
	add  b                                           ; $4987: $80
	inc  de                                          ; $4988: $13
	inc  bc                                          ; $4989: $03
	nop                                              ; $498a: $00
	ldh  [$81], a                                    ; $498b: $e0 $81
	ld   [hl], c                                     ; $498d: $71
	add  b                                           ; $498e: $80
	ld   de, $9180                                   ; $498f: $11 $80 $91
	ld   bc, $5554                                   ; $4992: $01 $54 $55
	add  d                                           ; $4995: $82
	rst  $10                                         ; $4996: $d7
	add  b                                           ; $4997: $80
	rla                                              ; $4998: $17
	inc  bc                                          ; $4999: $03
	db   $d3                                         ; $499a: $d3
	rst  $10                                         ; $499b: $d7
	dec  d                                           ; $499c: $15
	nop                                              ; $499d: $00
	add  b                                           ; $499e: $80
	rla                                              ; $499f: $17
	add  b                                           ; $49a0: $80
	dec  de                                          ; $49a1: $1b
	add  b                                           ; $49a2: $80
	dec  e                                           ; $49a3: $1d
	add  b                                           ; $49a4: $80
	ld   c, $80                                      ; $49a5: $0e $80
	db   $10                                         ; $49a7: $10
	add  d                                           ; $49a8: $82
	rra                                              ; $49a9: $1f

jr_096_49aa:
	ld   b, $24                                      ; $49aa: $06 $24
	sub  b                                           ; $49ac: $90
	sub  a                                           ; $49ad: $97
	sub  b                                           ; $49ae: $90
	or   d                                           ; $49af: $b2
	sub  d                                           ; $49b0: $92
	sub  e                                           ; $49b1: $93
	add  c                                           ; $49b2: $81
	sub  b                                           ; $49b3: $90
	add  b                                           ; $49b4: $80
	or   a                                           ; $49b5: $b7
	add  b                                           ; $49b6: $80
	sub  b                                           ; $49b7: $90
	add  b                                           ; $49b8: $80
	or   a                                           ; $49b9: $b7
	nop                                              ; $49ba: $00
	ld   l, d                                        ; $49bb: $6a
	add  e                                           ; $49bc: $83
	dec  b                                           ; $49bd: $05
	inc  bc                                          ; $49be: $03
	db   $fd                                         ; $49bf: $fd
	inc  bc                                          ; $49c0: $03
	ld   bc, $8000                                   ; $49c1: $01 $00 $80
	ldh  [$80], a                                    ; $49c4: $e0 $80
	rra                                              ; $49c6: $1f
	add  b                                           ; $49c7: $80
	ldh  [$03], a                                    ; $49c8: $e0 $03
	add  b                                           ; $49ca: $80
	ld   a, [hl]                                     ; $49cb: $7e
	ld   a, [bc]                                     ; $49cc: $0a
	dec  bc                                          ; $49cd: $0b
	add  d                                           ; $49ce: $82
	ld   a, [bc]                                     ; $49cf: $0a
	ld   bc, $03fc                                   ; $49d0: $01 $fc $03
	add  b                                           ; $49d3: $80
	nop                                              ; $49d4: $00
	add  b                                           ; $49d5: $80
	ldh  a, [$80]                                    ; $49d6: $f0 $80
	rlca                                             ; $49d8: $07
	nop                                              ; $49d9: $00
	dec  d                                           ; $49da: $15
	add  c                                           ; $49db: $81
	sub  l                                           ; $49dc: $95
	add  b                                           ; $49dd: $80
	dec  h                                           ; $49de: $25
	dec  b                                           ; $49df: $05
	ld   bc, $5141                                   ; $49e0: $01 $41 $51
	ld   b, c                                        ; $49e3: $41
	call nc, $8044                                   ; $49e4: $d4 $44 $80
	ld   c, h                                        ; $49e7: $4c
	add  b                                           ; $49e8: $80
	ret  z                                           ; $49e9: $c8

	ld   bc, $5045                                   ; $49ea: $01 $45 $50
	add  b                                           ; $49ed: $80
	ld   b, b                                        ; $49ee: $40
	add  hl, de                                      ; $49ef: $19
	ld   [hl], h                                     ; $49f0: $74
	ld   h, c                                        ; $49f1: $61
	jr   z, jr_096_4a59                              ; $49f2: $28 $65

	cpl                                              ; $49f4: $2f
	ld   b, e                                        ; $49f5: $43
	add  hl, sp                                      ; $49f6: $39
	db   $10                                         ; $49f7: $10
	ld   [hl], d                                     ; $49f8: $72
	dec  hl                                          ; $49f9: $2b
	ld   l, $00                                      ; $49fa: $2e $00
	ld   d, $a5                                      ; $49fc: $16 $a5
	jr   c, jr_096_4a32                              ; $49fe: $38 $32

	ld   d, b                                        ; $4a00: $50
	db   $10                                         ; $4a01: $10
	xor  h                                           ; $4a02: $ac
	add  hl, bc                                      ; $4a03: $09
	inc  bc                                          ; $4a04: $03
	sub  e                                           ; $4a05: $93
	add  e                                           ; $4a06: $83
	adc  c                                           ; $4a07: $89
	dec  b                                           ; $4a08: $05
	inc  bc                                          ; $4a09: $03
	add  b                                           ; $4a0a: $80
	nop                                              ; $4a0b: $00
	inc  c                                           ; $4a0c: $0c
	sub  $69                                         ; $4a0d: $d6 $69
	jp   nc, $0492                                   ; $4a0f: $d2 $92 $04

	dec  a                                           ; $4a12: $3d
	ld   e, c                                        ; $4a13: $59
	ldh  [$34], a                                    ; $4a14: $e0 $34
	and  h                                           ; $4a16: $a4
	adc  $3f                                         ; $4a17: $ce $3f
	ld   e, $80                                      ; $4a19: $1e $80
	ld   bc, $0003                                   ; $4a1b: $01 $03 $00
	ld   c, b                                        ; $4a1e: $48
	or   a                                           ; $4a1f: $b7
	scf                                              ; $4a20: $37
	add  b                                           ; $4a21: $80
	inc  sp                                          ; $4a22: $33
	add  b                                           ; $4a23: $80
	or   e                                           ; $4a24: $b3
	add  b                                           ; $4a25: $80
	and  c                                           ; $4a26: $a1
	add  b                                           ; $4a27: $80
	jr   nz, jr_096_49aa                             ; $4a28: $20 $80

jr_096_4a2a:
	and  b                                           ; $4a2a: $a0
	add  c                                           ; $4a2b: $81
	add  c                                           ; $4a2c: $81
	inc  b                                           ; $4a2d: $04
	ld   e, [hl]                                     ; $4a2e: $5e
	db   $eb                                         ; $4a2f: $eb
	di                                               ; $4a30: $f3
	ret  nc                                          ; $4a31: $d0

jr_096_4a32:
	pop  de                                          ; $4a32: $d1
	add  b                                           ; $4a33: $80
	ld   d, c                                        ; $4a34: $51
	ld   bc, $5071                                   ; $4a35: $01 $71 $50
	add  b                                           ; $4a38: $80
	ld   d, c                                        ; $4a39: $51
	nop                                              ; $4a3a: $00
	ld   d, b                                        ; $4a3b: $50
	add  c                                           ; $4a3c: $81
	ld   e, b                                        ; $4a3d: $58
	nop                                              ; $4a3e: $00
	ret  c                                           ; $4a3f: $d8

	add  b                                           ; $4a40: $80
	inc  c                                           ; $4a41: $0c
	ld   c, $7f                                      ; $4a42: $0e $7f
	add  e                                           ; $4a44: $83
	ld   [hl], e                                     ; $4a45: $73
	ldh  a, [$7f]                                    ; $4a46: $f0 $7f
	rst  JumpTable                                         ; $4a48: $df
	ld   a, l                                        ; $4a49: $7d
	rst  $30                                         ; $4a4a: $f7
	ld   e, a                                        ; $4a4b: $5f
	rst  $38                                         ; $4a4c: $ff
	dec  d                                           ; $4a4d: $15
	rst  $38                                         ; $4a4e: $ff
	pop  hl                                          ; $4a4f: $e1
	rst  $38                                         ; $4a50: $ff
	rlca                                             ; $4a51: $07
	add  c                                           ; $4a52: $81
	rla                                              ; $4a53: $17
	inc  bc                                          ; $4a54: $03
	sub  c                                           ; $4a55: $91
	ld   de, $1777                                   ; $4a56: $11 $77 $17

jr_096_4a59:
	add  b                                           ; $4a59: $80
	rst  $10                                         ; $4a5a: $d7
	add  h                                           ; $4a5b: $84
	rst  $30                                         ; $4a5c: $f7
	nop                                              ; $4a5d: $00
	xor  $81                                         ; $4a5e: $ee $81
	rra                                              ; $4a60: $1f
	add  b                                           ; $4a61: $80
	ld   e, $80                                      ; $4a62: $1e $80
	db   $10                                         ; $4a64: $10
	add  b                                           ; $4a65: $80
	inc  de                                          ; $4a66: $13
	add  b                                           ; $4a67: $80
	db   $10                                         ; $4a68: $10
	dec  b                                           ; $4a69: $05
	inc  de                                          ; $4a6a: $13
	inc  bc                                          ; $4a6b: $03
	inc  de                                          ; $4a6c: $13
	db   $10                                         ; $4a6d: $10
	inc  sp                                          ; $4a6e: $33
	or   b                                           ; $4a6f: $b0
	add  e                                           ; $4a70: $83
	or   d                                           ; $4a71: $b2
	add  c                                           ; $4a72: $81
	ld   [hl-], a                                    ; $4a73: $32
	add  d                                           ; $4a74: $82
	ld   [hl], $80                                   ; $4a75: $36 $80
	jr   nc, jr_096_4a7b                             ; $4a77: $30 $02

	rst  $28                                         ; $4a79: $ef
	rst  $38                                         ; $4a7a: $ff

jr_096_4a7b:
	db   $ed                                         ; $4a7b: $ed
	add  c                                           ; $4a7c: $81
	pop  de                                          ; $4a7d: $d1
	add  c                                           ; $4a7e: $81
	db   $fd                                         ; $4a7f: $fd

Call_096_4a80:
	nop                                              ; $4a80: $00
	pop  bc                                          ; $4a81: $c1
	add  h                                           ; $4a82: $84
	rst  $38                                         ; $4a83: $ff
	add  b                                           ; $4a84: $80
	ld   hl, sp+$00                                  ; $4a85: $f8 $00
	or   [hl]                                        ; $4a87: $b6
	add  c                                           ; $4a88: $81
	ld   b, l                                        ; $4a89: $45
	add  c                                           ; $4a8a: $81
	rst  $30                                         ; $4a8b: $f7
	nop                                              ; $4a8c: $00
	inc  b                                           ; $4a8d: $04
	add  b                                           ; $4a8e: $80
	rst  $38                                         ; $4a8f: $ff
	add  c                                           ; $4a90: $81
	cp   $06                                         ; $4a91: $fe $06
	ld   b, $e1                                      ; $4a93: $06 $e1
	ld   e, c                                        ; $4a95: $59
	rst  $10                                         ; $4a96: $d7
	ld   d, a                                        ; $4a97: $57
	halt                                             ; $4a98: $76
	ld   [hl], $80                                   ; $4a99: $36 $80
	xor  [hl]                                        ; $4a9b: $ae
	ld   [$4eee], sp                                 ; $4a9c: $08 $ee $4e
	ld   e, [hl]                                     ; $4a9f: $5e
	ld   a, $be                                      ; $4aa0: $3e $be
	cp   d                                           ; $4aa2: $ba
	cp   c                                           ; $4aa3: $b9
	ld   a, c                                        ; $4aa4: $79
	cp   e                                           ; $4aa5: $bb
	add  c                                           ; $4aa6: $81
	jr   nz, jr_096_4a2a                             ; $4aa7: $20 $81

	nop                                              ; $4aa9: $00
	nop                                              ; $4aaa: $00
	db   $10                                         ; $4aab: $10
	add  c                                           ; $4aac: $81
	add  b                                           ; $4aad: $80
	nop                                              ; $4aae: $00
	adc  b                                           ; $4aaf: $88
	add  b                                           ; $4ab0: $80
	add  b                                           ; $4ab1: $80
	ld   [bc], a                                     ; $4ab2: $02
	add  h                                           ; $4ab3: $84
	add  b                                           ; $4ab4: $80
	db   $fc                                         ; $4ab5: $fc
	add  e                                           ; $4ab6: $83
	nop                                              ; $4ab7: $00
	add  b                                           ; $4ab8: $80
	jr   nz, jr_096_4ac2                             ; $4ab9: $20 $07

	ld   [hl], b                                     ; $4abb: $70
	jr   nc, jr_096_4b0e                             ; $4abc: $30 $50

	jr   nc, jr_096_4aec                             ; $4abe: $30 $2c

	rrca                                             ; $4ac0: $0f
	inc  b                                           ; $4ac1: $04

jr_096_4ac2:
	rlca                                             ; $4ac2: $07
	add  h                                           ; $4ac3: $84
	nop                                              ; $4ac4: $00
	add  h                                           ; $4ac5: $84
	ld   bc, $8380                                   ; $4ac6: $01 $80 $83
	add  b                                           ; $4ac9: $80
	inc  bc                                          ; $4aca: $03
	nop                                              ; $4acb: $00
	ret  z                                           ; $4acc: $c8

	add  h                                           ; $4acd: $84
	sub  l                                           ; $4ace: $95
	ld   [bc], a                                     ; $4acf: $02
	or   a                                           ; $4ad0: $b7
	rst  $30                                         ; $4ad1: $f7
	ld   [hl], a                                     ; $4ad2: $77
	add  h                                           ; $4ad3: $84
	ld   [hl], l                                     ; $4ad4: $75
	add  d                                           ; $4ad5: $82
	ld   l, b                                        ; $4ad6: $68
	add  b                                           ; $4ad7: $80
	ld   h, b                                        ; $4ad8: $60
	add  [hl]                                        ; $4ad9: $86
	and  b                                           ; $4ada: $a0
	add  b                                           ; $4adb: $80
	add  b                                           ; $4adc: $80
	add  c                                           ; $4add: $81
	rst  $38                                         ; $4ade: $ff
	ld   b, $7f                                      ; $4adf: $06 $7f
	ld   [de], a                                     ; $4ae1: $12
	ld   [$fa8b], a                                  ; $4ae2: $ea $8b $fa
	add  hl, bc                                      ; $4ae5: $09
	ei                                               ; $4ae6: $fb
	add  b                                           ; $4ae7: $80
	cp   d                                           ; $4ae8: $ba
	inc  b                                           ; $4ae9: $04
	sbc  e                                           ; $4aea: $9b
	ei                                               ; $4aeb: $fb

jr_096_4aec:
	sbc  d                                           ; $4aec: $9a
	ld   a, [$83fd]                                  ; $4aed: $fa $fd $83
	rla                                              ; $4af0: $17
	nop                                              ; $4af1: $00
	rst  $30                                         ; $4af2: $f7
	add  e                                           ; $4af3: $83
	rla                                              ; $4af4: $17
	add  b                                           ; $4af5: $80
	ld   [hl], a                                     ; $4af6: $77
	add  b                                           ; $4af7: $80
	scf                                              ; $4af8: $37
	nop                                              ; $4af9: $00
	push af                                          ; $4afa: $f5
	add  c                                           ; $4afb: $81
	rra                                              ; $4afc: $1f
	rlca                                             ; $4afd: $07
	rrca                                             ; $4afe: $0f
	rra                                              ; $4aff: $1f
	inc  e                                           ; $4b00: $1c
	rra                                              ; $4b01: $1f
	inc  e                                           ; $4b02: $1c
	rra                                              ; $4b03: $1f
	inc  e                                           ; $4b04: $1c
	inc  c                                           ; $4b05: $0c
	add  b                                           ; $4b06: $80
	rra                                              ; $4b07: $1f
	add  b                                           ; $4b08: $80
	ld   c, $00                                      ; $4b09: $0e $00
	add  hl, sp                                      ; $4b0b: $39
	add  l                                           ; $4b0c: $85
	ld   [hl-], a                                    ; $4b0d: $32

jr_096_4b0e:
	nop                                              ; $4b0e: $00
	db   $10                                         ; $4b0f: $10
	add  d                                           ; $4b10: $82
	scf                                              ; $4b11: $37
	add  c                                           ; $4b12: $81
	ccf                                              ; $4b13: $3f
	nop                                              ; $4b14: $00
	ret  nz                                          ; $4b15: $c0

	add  l                                           ; $4b16: $85
	rst  $38                                         ; $4b17: $ff
	nop                                              ; $4b18: $00
	nop                                              ; $4b19: $00
	add  l                                           ; $4b1a: $85
	rst  $38                                         ; $4b1b: $ff
	ld   [bc], a                                     ; $4b1c: $02
	ld   bc, $fdfe                                   ; $4b1d: $01 $fe $fd
	add  c                                           ; $4b20: $81
	db   $fc                                         ; $4b21: $fc
	add  b                                           ; $4b22: $80
	ld   a, [$0201]                                  ; $4b23: $fa $01 $02
	ei                                               ; $4b26: $fb
	add  b                                           ; $4b27: $80
	ld   a, [$fe00]                                  ; $4b28: $fa $00 $fe
	add  c                                           ; $4b2b: $81
	or   $00                                         ; $4b2c: $f6 $00
	ld   c, l                                        ; $4b2e: $4d
	add  b                                           ; $4b2f: $80
	dec  d                                           ; $4b30: $15
	add  b                                           ; $4b31: $80
	add  l                                           ; $4b32: $85
	inc  bc                                          ; $4b33: $03
	sub  l                                           ; $4b34: $95
	ld   d, c                                        ; $4b35: $51
	ld   [hl], c                                     ; $4b36: $71
	ld   [hl], b                                     ; $4b37: $70
	add  c                                           ; $4b38: $81
	ld   a, b                                        ; $4b39: $78
	add  b                                           ; $4b3a: $80
	ld   e, b                                        ; $4b3b: $58
	ld   bc, $5859                                   ; $4b3c: $01 $59 $58
	add  b                                           ; $4b3f: $80
	and  b                                           ; $4b40: $a0
	nop                                              ; $4b41: $00
	ld   h, c                                        ; $4b42: $61
	add  e                                           ; $4b43: $83
	ld   h, b                                        ; $4b44: $60
	add  b                                           ; $4b45: $80
	ld   b, b                                        ; $4b46: $40
	inc  bc                                          ; $4b47: $03

jr_096_4b48:
	nop                                              ; $4b48: $00
	inc  sp                                          ; $4b49: $33
	jr   nc, jr_096_4b48                             ; $4b4a: $30 $fc

	add  h                                           ; $4b4c: $84
	nop                                              ; $4b4d: $00
	ld   [$4080], sp                                 ; $4b4e: $08 $80 $40
	jr   nc, @+$12                                   ; $4b51: $30 $10

	inc  d                                           ; $4b53: $14
	db   $ec                                         ; $4b54: $ec
	push hl                                          ; $4b55: $e5
	ei                                               ; $4b56: $fb
	ld   bc, $0280                                   ; $4b57: $01 $80 $02
	dec  bc                                          ; $4b5a: $0b
	inc  bc                                          ; $4b5b: $03
	ld   [bc], a                                     ; $4b5c: $02
	rlca                                             ; $4b5d: $07
	inc  b                                           ; $4b5e: $04
	ld   b, $08                                      ; $4b5f: $06 $08
	dec  c                                           ; $4b61: $0d
	ld   de, $731b                                   ; $4b62: $11 $1b $73
	ld   h, [hl]                                     ; $4b65: $66
	and  $80                                         ; $4b66: $e6 $80
	sbc  [hl]                                        ; $4b68: $9e
	add  b                                           ; $4b69: $80
	ld   a, [hl]                                     ; $4b6a: $7e
	ld   [bc], a                                     ; $4b6b: $02
	db   $fc                                         ; $4b6c: $fc
	adc  c                                           ; $4b6d: $89
	ld   [hl], l                                     ; $4b6e: $75
	add  h                                           ; $4b6f: $84
	ld   h, h                                        ; $4b70: $64
	add  b                                           ; $4b71: $80
	db   $ec                                         ; $4b72: $ec
	add  b                                           ; $4b73: $80
	add  sp, -$7e                                    ; $4b74: $e8 $82
	ret  z                                           ; $4b76: $c8

	inc  b                                           ; $4b77: $04
	add  b                                           ; $4b78: $80
	add  c                                           ; $4b79: $81
	add  b                                           ; $4b7a: $80
	add  c                                           ; $4b7b: $81
	add  b                                           ; $4b7c: $80
	add  b                                           ; $4b7d: $80
	add  c                                           ; $4b7e: $81
	nop                                              ; $4b7f: $00
	add  e                                           ; $4b80: $83
	add  b                                           ; $4b81: $80
	add  b                                           ; $4b82: $80
	add  b                                           ; $4b83: $80
	nop                                              ; $4b84: $00
	nop                                              ; $4b85: $00
	inc  bc                                          ; $4b86: $03
	add  b                                           ; $4b87: $80
	dec  bc                                          ; $4b88: $0b
	add  b                                           ; $4b89: $80
	dec  hl                                          ; $4b8a: $2b
	ld   b, $fb                                      ; $4b8b: $06 $fb
	ld   a, [bc]                                     ; $4b8d: $0a
	ld   a, [$fb0b]                                  ; $4b8e: $fa $0b $fb
	ld   a, [$80fe]                                  ; $4b91: $fa $fe $80
	nop                                              ; $4b94: $00
	add  b                                           ; $4b95: $80
	ld   a, a                                        ; $4b96: $7f
	nop                                              ; $4b97: $00
	rst  $38                                         ; $4b98: $ff
	add  b                                           ; $4b99: $80
	cp   $01                                         ; $4b9a: $fe $01
	add  c                                           ; $4b9c: $81
	ld   h, a                                        ; $4b9d: $67
	add  c                                           ; $4b9e: $81
	rla                                              ; $4b9f: $17
	add  b                                           ; $4ba0: $80
	rst  $30                                         ; $4ba1: $f7
	add  d                                           ; $4ba2: $82
	rla                                              ; $4ba3: $17
	add  c                                           ; $4ba4: $81
	rst  $30                                         ; $4ba5: $f7
	add  b                                           ; $4ba6: $80
	rla                                              ; $4ba7: $17
	add  b                                           ; $4ba8: $80
	rst  $30                                         ; $4ba9: $f7
	nop                                              ; $4baa: $00
	dec  e                                           ; $4bab: $1d
	add  b                                           ; $4bac: $80
	rra                                              ; $4bad: $1f
	add  d                                           ; $4bae: $82
	inc  c                                           ; $4baf: $0c
	inc  b                                           ; $4bb0: $04
	rrca                                             ; $4bb1: $0f
	inc  e                                           ; $4bb2: $1c
	rrca                                             ; $4bb3: $0f
	inc  c                                           ; $4bb4: $0c
	inc  d                                           ; $4bb5: $14
	add  c                                           ; $4bb6: $81
	nop                                              ; $4bb7: $00
	ld   bc, $3e1e                                   ; $4bb8: $01 $1e $3e
	add  d                                           ; $4bbb: $82
	nop                                              ; $4bbc: $00
	add  b                                           ; $4bbd: $80
	ld   bc, $3f81                                   ; $4bbe: $01 $81 $3f
	add  b                                           ; $4bc1: $80
	ld   a, [hl+]                                    ; $4bc2: $2a
	add  b                                           ; $4bc3: $80
	dec  d                                           ; $4bc4: $15
	ld   bc, $d52a                                   ; $4bc5: $01 $2a $d5
	add  e                                           ; $4bc8: $83
	nop                                              ; $4bc9: $00
	add  c                                           ; $4bca: $81
	rst  $38                                         ; $4bcb: $ff
	add  b                                           ; $4bcc: $80
	ld   d, l                                        ; $4bcd: $55
	add  b                                           ; $4bce: $80
	xor  d                                           ; $4bcf: $aa
	add  b                                           ; $4bd0: $80
	ld   d, l                                        ; $4bd1: $55
	ld   bc, $55a0                                   ; $4bd2: $01 $a0 $55
	add  c                                           ; $4bd5: $81
	inc  b                                           ; $4bd6: $04
	add  b                                           ; $4bd7: $80
	dec  [hl]                                        ; $4bd8: $35
	nop                                              ; $4bd9: $00
	pop  af                                          ; $4bda: $f1
	add  b                                           ; $4bdb: $80
	ld   [$5180], a                                  ; $4bdc: $ea $80 $51
	add  b                                           ; $4bdf: $80
	xor  d                                           ; $4be0: $aa
	add  b                                           ; $4be1: $80
	ld   d, b                                        ; $4be2: $50
	dec  c                                           ; $4be3: $0d
	nop                                              ; $4be4: $00
	ld   e, c                                        ; $4be5: $59
	ld   e, b                                        ; $4be6: $58
	ld   d, c                                        ; $4be7: $51
	ld   d, e                                        ; $4be8: $53
	ld   h, e                                        ; $4be9: $63
	ld   h, h                                        ; $4bea: $64
	dec  h                                           ; $4beb: $25
	and  b                                           ; $4bec: $a0
	add  [hl]                                        ; $4bed: $86

jr_096_4bee:
	nop                                              ; $4bee: $00
	ld   [$1000], sp                                 ; $4bef: $08 $00 $10
	add  c                                           ; $4bf2: $81
	nop                                              ; $4bf3: $00
	ld   bc, $00e0                                   ; $4bf4: $01 $e0 $00
	add  c                                           ; $4bf7: $81
	rst  $38                                         ; $4bf8: $ff
	ld   bc, $ff00                                   ; $4bf9: $01 $00 $ff
	add  a                                           ; $4bfc: $87
	nop                                              ; $4bfd: $00
	nop                                              ; $4bfe: $00
	rst  $38                                         ; $4bff: $ff
	add  b                                           ; $4c00: $80
	ld   hl, sp-$80                                  ; $4c01: $f8 $80
	xor  e                                           ; $4c03: $ab
	add  b                                           ; $4c04: $80
	ld   d, e                                        ; $4c05: $53
	inc  bc                                          ; $4c06: $03
	ld   bc, $00fb                                   ; $4c07: $01 $fb $00
	ld   bc, $0083                                   ; $4c0a: $01 $83 $00
	ld   [bc], a                                     ; $4c0d: $02
	ei                                               ; $4c0e: $fb
	nop                                              ; $4c0f: $00
	dec  a                                           ; $4c10: $3d
	add  c                                           ; $4c11: $81
	db   $fd                                         ; $4c12: $fd
	dec  bc                                          ; $4c13: $0b
	db   $db                                         ; $4c14: $db
	ei                                               ; $4c15: $fb
	db   $e3                                         ; $4c16: $e3
	inc  bc                                          ; $4c17: $03
	db   $e4                                         ; $4c18: $e4
	inc  d                                           ; $4c19: $14
	jr   nc, jr_096_4c1f                             ; $4c1a: $30 $03

	dec  sp                                          ; $4c1c: $3b
	rlca                                             ; $4c1d: $07
	scf                                              ; $4c1e: $37

jr_096_4c1f:
	ret  z                                           ; $4c1f: $c8

	add  b                                           ; $4c20: $80
	ret  nz                                          ; $4c21: $c0

	inc  b                                           ; $4c22: $04
	add  d                                           ; $4c23: $82
	add  b                                           ; $4c24: $80
	add  e                                           ; $4c25: $83
	add  h                                           ; $4c26: $84
	dec  b                                           ; $4c27: $05
	add  b                                           ; $4c28: $80
	ld   d, [hl]                                     ; $4c29: $56
	add  b                                           ; $4c2a: $80
	cp   a                                           ; $4c2b: $bf
	add  d                                           ; $4c2c: $82
	rst  $38                                         ; $4c2d: $ff
	ld   [$9808], sp                                 ; $4c2e: $08 $08 $98
	res  3, e                                        ; $4c31: $cb $9b
	db   $ed                                         ; $4c33: $ed
	ld   l, d                                        ; $4c34: $6a
	ld   [hl], b                                     ; $4c35: $70
	ld   d, h                                        ; $4c36: $54
	ld   a, b                                        ; $4c37: $78
	add  b                                           ; $4c38: $80
	jr   c, jr_096_4c3d                              ; $4c39: $38 $02

	ld   a, [hl-]                                    ; $4c3b: $3a
	cp   h                                           ; $4c3c: $bc

jr_096_4c3d:
	sbc  h                                           ; $4c3d: $9c
	add  b                                           ; $4c3e: $80
	call c, $7e02                            ; $4c3f: $dc $02 $7e
	nop                                              ; $4c42: $00
	add  b                                           ; $4c43: $80
	add  b                                           ; $4c44: $80
	db   $fc                                         ; $4c45: $fc
	add  b                                           ; $4c46: $80
	inc  bc                                          ; $4c47: $03
	add  [hl]                                        ; $4c48: $86
	nop                                              ; $4c49: $00
	nop                                              ; $4c4a: $00
	add  hl, de                                      ; $4c4b: $19
	add  e                                           ; $4c4c: $83

Call_096_4c4d:
	rla                                              ; $4c4d: $17
	add  b                                           ; $4c4e: $80
	rst  $30                                         ; $4c4f: $f7
	add  d                                           ; $4c50: $82
	rla                                              ; $4c51: $17
	add  b                                           ; $4c52: $80
	ld   de, $1780                                   ; $4c53: $11 $80 $17
	nop                                              ; $4c56: $00
	xor  $83                                         ; $4c57: $ee $83
	nop                                              ; $4c59: $00
	add  b                                           ; $4c5a: $80
	inc  bc                                          ; $4c5b: $03
	add  b                                           ; $4c5c: $80
	rrca                                             ; $4c5d: $0f
	add  l                                           ; $4c5e: $85
	rra                                              ; $4c5f: $1f
	add  b                                           ; $4c60: $80
	db   $10                                         ; $4c61: $10
	add  c                                           ; $4c62: $81
	nop                                              ; $4c63: $00
	inc  bc                                          ; $4c64: $03
	rra                                              ; $4c65: $1f
	nop                                              ; $4c66: $00
	jr   nz, jr_096_4c69                             ; $4c67: $20 $00

jr_096_4c69:
	add  b                                           ; $4c69: $80
	ld   a, [de]                                     ; $4c6a: $1a
	add  b                                           ; $4c6b: $80
	jr   nz, jr_096_4bee                             ; $4c6c: $20 $80

	nop                                              ; $4c6e: $00
	nop                                              ; $4c6f: $00
	ccf                                              ; $4c70: $3f
	add  c                                           ; $4c71: $81
	nop                                              ; $4c72: $00
	inc  bc                                          ; $4c73: $03
	ccf                                              ; $4c74: $3f

jr_096_4c75:
	nop                                              ; $4c75: $00
	jp   $8003                                       ; $4c76: $c3 $03 $80


	ld   l, h                                        ; $4c79: $6c
	add  b                                           ; $4c7a: $80
	add  b                                           ; $4c7b: $80
	add  d                                           ; $4c7c: $82
	nop                                              ; $4c7d: $00
	dec  b                                           ; $4c7e: $05
	cp   $00                                         ; $4c7f: $fe $00
	db   $fc                                         ; $4c81: $fc
	nop                                              ; $4c82: $00
	ld   e, $19                                      ; $4c83: $1e $19
	add  b                                           ; $4c85: $80
	pop  hl                                          ; $4c86: $e1
	inc  b                                           ; $4c87: $04
	add  hl, bc                                      ; $4c88: $09
	inc  bc                                          ; $4c89: $03
	dec  sp                                          ; $4c8a: $3b
	inc  bc                                          ; $4c8b: $03
	ld   [hl], e                                     ; $4c8c: $73
	add  b                                           ; $4c8d: $80
	dec  hl                                          ; $4c8e: $2b
	ld   bc, $ef1b                                   ; $4c8f: $01 $1b $ef
	add  e                                           ; $4c92: $83
	ld   d, b                                        ; $4c93: $50
	add  b                                           ; $4c94: $80
	dec  de                                          ; $4c95: $1b
	ld   bc, $0f1f                                   ; $4c96: $01 $1f $0f
	add  c                                           ; $4c99: $81
	adc  a                                           ; $4c9a: $8f
	nop                                              ; $4c9b: $00
	add  l                                           ; $4c9c: $85
	add  b                                           ; $4c9d: $80
	push bc                                          ; $4c9e: $c5
	ld   bc, $01fb                                   ; $4c9f: $01 $fb $01
	add  h                                           ; $4ca2: $84
	nop                                              ; $4ca3: $00
	add  [hl]                                        ; $4ca4: $86
	add  b                                           ; $4ca5: $80
	db   $10                                         ; $4ca6: $10
	add  sp, -$20                                    ; $4ca7: $e8 $e0
	jp   hl                                          ; $4ca9: $e9


	ld   h, c                                        ; $4caa: $61
	db   $e3                                         ; $4cab: $e3
	inc  hl                                          ; $4cac: $23
	ld   [hl], a                                     ; $4cad: $77
	rla                                              ; $4cae: $17
	ccf                                              ; $4caf: $3f
	rrca                                             ; $4cb0: $0f
	rra                                              ; $4cb1: $1f
	rlca                                             ; $4cb2: $07
	ld   c, $06                                      ; $4cb3: $0e $06
	ld   bc, $0200                                   ; $4cb5: $01 $00 $02
	add  c                                           ; $4cb8: $81
	inc  bc                                          ; $4cb9: $03
	add  d                                           ; $4cba: $82
	rlca                                             ; $4cbb: $07
	add  b                                           ; $4cbc: $80
	rrca                                             ; $4cbd: $0f
	add  b                                           ; $4cbe: $80
	ccf                                              ; $4cbf: $3f
	inc  bc                                          ; $4cc0: $03
	rst  $38                                         ; $4cc1: $ff
	nop                                              ; $4cc2: $00
	rst  $38                                         ; $4cc3: $ff
	nop                                              ; $4cc4: $00
	add  b                                           ; $4cc5: $80
	rst  $38                                         ; $4cc6: $ff
	add  b                                           ; $4cc7: $80
	sbc  a                                           ; $4cc8: $9f
	add  d                                           ; $4cc9: $82
	add  b                                           ; $4cca: $80
	add  b                                           ; $4ccb: $80
	ld   hl, sp-$80                                  ; $4ccc: $f8 $80
	db   $fc                                         ; $4cce: $fc
	ld   de, $3eff                                   ; $4ccf: $11 $ff $3e
	adc  $00                                         ; $4cd2: $ce $00
	ldh  a, [$ee]                                    ; $4cd4: $f0 $ee
	sbc  $c6                                         ; $4cd6: $de $c6
	ld   c, $02                                      ; $4cd8: $0e $02
	ld   b, $00                                      ; $4cda: $06 $00
	ld   [bc], a                                     ; $4cdc: $02
	nop                                              ; $4cdd: $00
	ld   bc, $ff00                                   ; $4cde: $01 $00 $ff
	nop                                              ; $4ce1: $00
	add  b                                           ; $4ce2: $80
	add  b                                           ; $4ce3: $80
	nop                                              ; $4ce4: $00
	rst  $38                                         ; $4ce5: $ff
	add  c                                           ; $4ce6: $81
	nop                                              ; $4ce7: $00
	add  b                                           ; $4ce8: $80
	ld   bc, $0780                                   ; $4ce9: $01 $80 $07
	nop                                              ; $4cec: $00
	rst  $38                                         ; $4ced: $ff
	add  b                                           ; $4cee: $80
	inc  bc                                          ; $4cef: $03
	nop                                              ; $4cf0: $00
	nop                                              ; $4cf1: $00
	add  b                                           ; $4cf2: $80
	jr   jr_096_4c75                                 ; $4cf3: $18 $80

	ret  nz                                          ; $4cf5: $c0

	ld   bc, $17e6                                   ; $4cf6: $01 $e6 $17
	add  b                                           ; $4cf9: $80
	ld   [hl], a                                     ; $4cfa: $77
	add  a                                           ; $4cfb: $87
	rst  $30                                         ; $4cfc: $f7
	inc  bc                                          ; $4cfd: $03
	scf                                              ; $4cfe: $37
	or   a                                           ; $4cff: $b7
	sub  a                                           ; $4d00: $97
	ld   de, $1f88                                   ; $4d01: $11 $88 $1f
	add  b                                           ; $4d04: $80
	dec  e                                           ; $4d05: $1d
	add  b                                           ; $4d06: $80
	rla                                              ; $4d07: $17
	inc  b                                           ; $4d08: $04
	dec  e                                           ; $4d09: $1d
	ld   [hl+], a                                    ; $4d0a: $22
	nop                                              ; $4d0b: $00
	ret  nz                                          ; $4d0c: $c0

	ldh  [$80], a                                    ; $4d0d: $e0 $80
	db   $fc                                         ; $4d0f: $fc
	ld   bc, $ff1f                                   ; $4d10: $01 $1f $ff
	add  b                                           ; $4d13: $80
	rra                                              ; $4d14: $1f
	add  b                                           ; $4d15: $80
	ld   bc, $0088                                   ; $4d16: $01 $88 $00
	add  b                                           ; $4d19: $80
	ret  nz                                          ; $4d1a: $c0

	add  b                                           ; $4d1b: $80
	db   $fc                                         ; $4d1c: $fc
	add  b                                           ; $4d1d: $80
	rst  $38                                         ; $4d1e: $ff
	add  b                                           ; $4d1f: $80
	rra                                              ; $4d20: $1f
	add  b                                           ; $4d21: $80
	ld   bc, $4600                                   ; $4d22: $01 $00 $46
	add  c                                           ; $4d25: $81
	add  hl, de                                      ; $4d26: $19
	add  b                                           ; $4d27: $80
	ld   de, $1000                                   ; $4d28: $11 $00 $10
	add  c                                           ; $4d2b: $81
	jr   nc, jr_096_4d2f                             ; $4d2c: $30 $01

	ret  nc                                          ; $4d2e: $d0

jr_096_4d2f:
	ld   d, b                                        ; $4d2f: $50
	add  b                                           ; $4d30: $80
	ld   e, b                                        ; $4d31: $58
	add  b                                           ; $4d32: $80
	ld   c, b                                        ; $4d33: $48
	ld   bc, $c1c0                                   ; $4d34: $01 $c0 $c1
	add  d                                           ; $4d37: $82
	pop  hl                                          ; $4d38: $e1
	ld   bc, $f2f3                                   ; $4d39: $01 $f3 $f2
	add  b                                           ; $4d3c: $80
	ld   a, [$7902]                                  ; $4d3d: $fa $02 $79
	ld   e, c                                        ; $4d40: $59
	ld   e, h                                        ; $4d41: $5c
	add  c                                           ; $4d42: $81
	inc  e                                           ; $4d43: $1c
	nop                                              ; $4d44: $00
	sbc  a                                           ; $4d45: $9f
	add  e                                           ; $4d46: $83
	nop                                              ; $4d47: $00
	add  e                                           ; $4d48: $83
	add  b                                           ; $4d49: $80
	nop                                              ; $4d4a: $00
	nop                                              ; $4d4b: $00
	add  b                                           ; $4d4c: $80
	ld   b, b                                        ; $4d4d: $40
	ld   [bc], a                                     ; $4d4e: $02
	ret  nz                                          ; $4d4f: $c0

	add  b                                           ; $4d50: $80
	ret  nz                                          ; $4d51: $c0

	adc  c                                           ; $4d52: $89
	nop                                              ; $4d53: $00
	add  b                                           ; $4d54: $80
	jr   nz, @-$7e                                   ; $4d55: $20 $80

	ld   h, b                                        ; $4d57: $60
	add  d                                           ; $4d58: $82
	nop                                              ; $4d59: $00
	ld   d, $01                                      ; $4d5a: $16 $01
	nop                                              ; $4d5c: $00
	inc  bc                                          ; $4d5d: $03
	ld   bc, $0206                                   ; $4d5e: $01 $06 $02
	inc  c                                           ; $4d61: $0c
	inc  b                                           ; $4d62: $04
	add  hl, de                                      ; $4d63: $19
	ld   [$0122], sp                                 ; $4d64: $08 $22 $01
	inc  c                                           ; $4d67: $0c
	ld   c, $a0                                      ; $4d68: $0e $a0
	ld   h, b                                        ; $4d6a: $60
	add  a                                           ; $4d6b: $87
	add  c                                           ; $4d6c: $81
	add  hl, de                                      ; $4d6d: $19
	rlca                                             ; $4d6e: $07
	ld   h, a                                        ; $4d6f: $67
	rra                                              ; $4d70: $1f
	sbc  a                                           ; $4d71: $9f
	add  b                                           ; $4d72: $80
	ld   a, a                                        ; $4d73: $7f
	add  c                                           ; $4d74: $81
	rst  $38                                         ; $4d75: $ff
	add  b                                           ; $4d76: $80
	nop                                              ; $4d77: $00
	nop                                              ; $4d78: $00
	rst  $38                                         ; $4d79: $ff
	add  b                                           ; $4d7a: $80
	ccf                                              ; $4d7b: $3f
	add  b                                           ; $4d7c: $80
	rst  $38                                         ; $4d7d: $ff
	add  b                                           ; $4d7e: $80
	db   $fc                                         ; $4d7f: $fc
	add  b                                           ; $4d80: $80
	pop  hl                                          ; $4d81: $e1
	add  b                                           ; $4d82: $80
	jp   $cf04                                       ; $4d83: $c3 $04 $cf


	ret  z                                           ; $4d86: $c8

	cp   b                                           ; $4d87: $b8
	ld   e, a                                        ; $4d88: $5f
	rra                                              ; $4d89: $1f
	add  b                                           ; $4d8a: $80
	db   $fd                                         ; $4d8b: $fd
	add  b                                           ; $4d8c: $80
	cp   $80                                         ; $4d8d: $fe $80
	db   $f4                                         ; $4d8f: $f4
	add  b                                           ; $4d90: $80
	ld   a, [$d480]                                  ; $4d91: $fa $80 $d4
	add  b                                           ; $4d94: $80
	nop                                              ; $4d95: $00
	add  b                                           ; $4d96: $80
	ld   a, a                                        ; $4d97: $7f
	nop                                              ; $4d98: $00
	ld   b, $86                                      ; $4d99: $06 $86
	rla                                              ; $4d9b: $17
	add  b                                           ; $4d9c: $80
	scf                                              ; $4d9d: $37
	add  c                                           ; $4d9e: $81
	rla                                              ; $4d9f: $17
	ld   [bc], a                                     ; $4da0: $02
	rst  $10                                         ; $4da1: $d7
	rst  ToBoot                                         ; $4da2: $c7
	ld   bc, $0a80                                   ; $4da3: $01 $80 $0a
	add  b                                           ; $4da6: $80
	dec  d                                           ; $4da7: $15
	add  b                                           ; $4da8: $80
	ld   a, [bc]                                     ; $4da9: $0a
	add  b                                           ; $4daa: $80
	dec  d                                           ; $4dab: $15
	add  b                                           ; $4dac: $80
	ld   a, [bc]                                     ; $4dad: $0a
	add  b                                           ; $4dae: $80
	dec  d                                           ; $4daf: $15

jr_096_4db0:
	add  b                                           ; $4db0: $80
	ld   a, [bc]                                     ; $4db1: $0a
	ld   bc, $ea15                                   ; $4db2: $01 $15 $ea
	db   $fd                                         ; $4db5: $fd
	nop                                              ; $4db6: $00
	adc  e                                           ; $4db7: $8b
	ld   bc, $00ee                                   ; $4db8: $01 $ee $00
	ld   b, $01                                      ; $4dbb: $06 $01
	nop                                              ; $4dbd: $00
	inc  bc                                          ; $4dbe: $03
	ld   bc, $0107                                   ; $4dbf: $01 $07 $01
	inc  c                                           ; $4dc2: $0c
	add  c                                           ; $4dc3: $81
	ld   [bc], a                                     ; $4dc4: $02
	nop                                              ; $4dc5: $00
	ld   a, [de]                                     ; $4dc6: $1a
	add  b                                           ; $4dc7: $80
	nop                                              ; $4dc8: $00
	add  b                                           ; $4dc9: $80
	inc  b                                           ; $4dca: $04
	ld   [bc], a                                     ; $4dcb: $02
	ld   c, $1e                                      ; $4dcc: $0e $1e
	cp   $80                                         ; $4dce: $fe $80
	rst  $38                                         ; $4dd0: $ff
	add  b                                           ; $4dd1: $80
	ccf                                              ; $4dd2: $3f
	add  b                                           ; $4dd3: $80
	rst  ToBoot                                         ; $4dd4: $c7
	add  b                                           ; $4dd5: $80
	ei                                               ; $4dd6: $fb
	add  b                                           ; $4dd7: $80
	db   $fd                                         ; $4dd8: $fd
	add  b                                           ; $4dd9: $80
	and  $80                                         ; $4dda: $e6 $80
	jp   hl                                          ; $4ddc: $e9


	add  b                                           ; $4ddd: $80
	add  hl, de                                      ; $4dde: $19
	add  b                                           ; $4ddf: $80
	scf                                              ; $4de0: $37
	add  b                                           ; $4de1: $80
	or   a                                           ; $4de2: $b7
	add  b                                           ; $4de3: $80
	rst  $28                                         ; $4de4: $ef
	add  b                                           ; $4de5: $80
	reti                                             ; $4de6: $d9


	add  b                                           ; $4de7: $80
	push de                                          ; $4de8: $d5
	add  b                                           ; $4de9: $80
	jp   hl                                          ; $4dea: $e9


	add  hl, bc                                      ; $4deb: $09
	ld   d, b                                        ; $4dec: $50
	ld   d, h                                        ; $4ded: $54
	cp   l                                           ; $4dee: $bd
	cp   b                                           ; $4def: $b8
	rst  JumpTable                                         ; $4df0: $df
	call c, $dedd                                    ; $4df1: $dc $dd $de
	xor  $ef                                         ; $4df4: $ee $ef
	add  b                                           ; $4df6: $80
	rst  $30                                         ; $4df7: $f7
	ld   b, $fb                                      ; $4df8: $06 $fb
	ld   a, [$fdfc]                                  ; $4dfa: $fa $fc $fd
	cp   $fc                                         ; $4dfd: $fe $fc
	db   $fd                                         ; $4dff: $fd
	add  c                                           ; $4e00: $81
	nop                                              ; $4e01: $00
	ld   [bc], a                                     ; $4e02: $02
	add  b                                           ; $4e03: $80
	nop                                              ; $4e04: $00
	ret  nz                                          ; $4e05: $c0

	add  c                                           ; $4e06: $81
	nop                                              ; $4e07: $00
	nop                                              ; $4e08: $00
	ld   h, b                                        ; $4e09: $60
	add  b                                           ; $4e0a: $80
	add  b                                           ; $4e0b: $80
	inc  bc                                          ; $4e0c: $03
	nop                                              ; $4e0d: $00
	jr   nc, jr_096_4db0                             ; $4e0e: $30 $a0

	or   b                                           ; $4e10: $b0
	sbc  c                                           ; $4e11: $99
	nop                                              ; $4e12: $00
	inc  b                                           ; $4e13: $04
	inc  bc                                          ; $4e14: $03
	nop                                              ; $4e15: $00
	rra                                              ; $4e16: $1f
	inc  bc                                          ; $4e17: $03
	rra                                              ; $4e18: $1f
	adc  c                                           ; $4e19: $89
	nop                                              ; $4e1a: $00
	ld   bc, $00ff                                   ; $4e1b: $01 $ff $00
	add  c                                           ; $4e1e: $81
	rst  $38                                         ; $4e1f: $ff

jr_096_4e20:
	adc  e                                           ; $4e20: $8b
	nop                                              ; $4e21: $00
	ld   [bc], a                                     ; $4e22: $02
	ldh  [rP1], a                                    ; $4e23: $e0 $00
	ldh  [$a9], a                                    ; $4e25: $e0 $a9
	nop                                              ; $4e27: $00
	inc  b                                           ; $4e28: $04
	inc  bc                                          ; $4e29: $03
	nop                                              ; $4e2a: $00
	rlca                                             ; $4e2b: $07
	inc  bc                                          ; $4e2c: $03
	rlca                                             ; $4e2d: $07
	add  l                                           ; $4e2e: $85
	nop                                              ; $4e2f: $00
	ld   [$0003], sp                                 ; $4e30: $08 $03 $00
	rlca                                             ; $4e33: $07
	inc  bc                                          ; $4e34: $03
	adc  a                                           ; $4e35: $8f
	rlca                                             ; $4e36: $07
	rst  $38                                         ; $4e37: $ff
	adc  a                                           ; $4e38: $8f
	rst  $38                                         ; $4e39: $ff
	add  e                                           ; $4e3a: $83
	nop                                              ; $4e3b: $00
	inc  bc                                          ; $4e3c: $03
	ldh  a, [rP1]                                    ; $4e3d: $f0 $00
	rst  $38                                         ; $4e3f: $ff
	ldh  a, [$85]                                    ; $4e40: $f0 $85
	rst  $38                                         ; $4e42: $ff
	add  l                                           ; $4e43: $85
	nop                                              ; $4e44: $00
	ld   [$00c0], sp                                 ; $4e45: $08 $c0 $00
	ld   hl, sp-$40                                  ; $4e48: $f8 $c0
	db   $fc                                         ; $4e4a: $fc
	ld   hl, sp-$01                                  ; $4e4b: $f8 $ff
	ld   hl, sp-$05                                  ; $4e4d: $f8 $fb
	adc  l                                           ; $4e4f: $8d
	nop                                              ; $4e50: $00
	ld   bc, $0e11                                   ; $4e51: $01 $11 $0e
	add  b                                           ; $4e54: $80
	dec  c                                           ; $4e55: $0d
	nop                                              ; $4e56: $00
	dec  a                                           ; $4e57: $3d
	add  b                                           ; $4e58: $80
	dec  e                                           ; $4e59: $1d
	add  c                                           ; $4e5a: $81
	inc  e                                           ; $4e5b: $1c
	ld   [bc], a                                     ; $4e5c: $02
	ld   a, [de]                                     ; $4e5d: $1a
	jr   jr_096_4ed8                                 ; $4e5e: $18 $78

	add  c                                           ; $4e60: $81
	add  hl, sp                                      ; $4e61: $39
	dec  b                                           ; $4e62: $05
	ld   h, h                                        ; $4e63: $64
	and  $c1                                         ; $4e64: $e6 $c1
	adc  b                                           ; $4e66: $88
	adc  [hl]                                        ; $4e67: $8e
	adc  b                                           ; $4e68: $88
	add  e                                           ; $4e69: $83
	add  b                                           ; $4e6a: $80
	add  c                                           ; $4e6b: $81
	nop                                              ; $4e6c: $00
	ld   b, $40                                      ; $4e6d: $06 $40
	jr   nz, jr_096_4e20                             ; $4e6f: $20 $af

jr_096_4e71:
	sub  h                                           ; $4e71: $94
	add  b                                           ; $4e72: $80
	ld   c, d                                        ; $4e73: $4a
	and  d                                           ; $4e74: $a2
	add  c                                           ; $4e75: $81
	ld   [bc], a                                     ; $4e76: $02
	nop                                              ; $4e77: $00
	nop                                              ; $4e78: $00
	add  l                                           ; $4e79: $85
	ld   bc, $4200                                   ; $4e7a: $01 $00 $42
	add  c                                           ; $4e7d: $81
	cp   h                                           ; $4e7e: $bc
	ld   bc, $dedf                                   ; $4e7f: $01 $df $de
	add  b                                           ; $4e82: $80
	ld   e, [hl]                                     ; $4e83: $5e
	ld   bc, $4f6f                                   ; $4e84: $01 $6f $4f
	add  b                                           ; $4e87: $80
	rrca                                             ; $4e88: $0f
	ld   [$2217], sp                                 ; $4e89: $08 $17 $22
	ld   [bc], a                                     ; $4e8c: $02
	inc  bc                                          ; $4e8d: $03
	ld   a, e                                        ; $4e8e: $7b
	jr   nz, jr_096_4e71                             ; $4e8f: $20 $e0

	and  b                                           ; $4e91: $a0
	ret  nz                                          ; $4e92: $c0

	add  c                                           ; $4e93: $81
	ld   b, b                                        ; $4e94: $40
	inc  b                                           ; $4e95: $04
	ldh  [rAUD4LEN], a                               ; $4e96: $e0 $20
	jr   c, jr_096_4eca                              ; $4e98: $38 $30

	ldh  a, [$80]                                    ; $4e9a: $f0 $80
	sub  b                                           ; $4e9c: $90
	inc  c                                           ; $4e9d: $0c
	db   $10                                         ; $4e9e: $10
	ld   e, b                                        ; $4e9f: $58
	nop                                              ; $4ea0: $00
	ld   bc, $0300                                   ; $4ea1: $01 $00 $03
	ld   bc, $0307                                   ; $4ea4: $01 $07 $03
	rrca                                             ; $4ea7: $0f
	rlca                                             ; $4ea8: $07
	add  hl, de                                      ; $4ea9: $19
	add  hl, bc                                      ; $4eaa: $09
	add  b                                           ; $4eab: $80
	nop                                              ; $4eac: $00
	dec  b                                           ; $4ead: $05
	jr   nz, jr_096_4eb0                             ; $4eae: $20 $00

jr_096_4eb0:
	ld   e, a                                        ; $4eb0: $5f
	rra                                              ; $4eb1: $1f
	rst  $38                                         ; $4eb2: $ff
	ld   a, a                                        ; $4eb3: $7f
	adc  b                                           ; $4eb4: $88
	rst  $38                                         ; $4eb5: $ff
	add  b                                           ; $4eb6: $80
	pop  af                                          ; $4eb7: $f1
	adc  b                                           ; $4eb8: $88
	rst  $38                                         ; $4eb9: $ff
	add  b                                           ; $4eba: $80
	di                                               ; $4ebb: $f3
	dec  bc                                          ; $4ebc: $0b
	db   $ed                                         ; $4ebd: $ed
	pop  hl                                          ; $4ebe: $e1
	jp   nc, $f9c0                                   ; $4ebf: $d2 $c0 $f9

	ldh  [$fc], a                                    ; $4ec2: $e0 $fc
	ld   hl, sp-$02                                  ; $4ec4: $f8 $fe
	db   $fc                                         ; $4ec6: $fc
	rst  $38                                         ; $4ec7: $ff
	cp   $80                                         ; $4ec8: $fe $80

jr_096_4eca:
	di                                               ; $4eca: $f3
	ld   b, $cc                                      ; $4ecb: $06 $cc
	ret  nz                                          ; $4ecd: $c0

	sub  e                                           ; $4ece: $93
	add  b                                           ; $4ecf: $80
	jr   nz, jr_096_4ed2                             ; $4ed0: $20 $00

jr_096_4ed2:
	ret  nz                                          ; $4ed2: $c0

	adc  e                                           ; $4ed3: $8b
	nop                                              ; $4ed4: $00
	add  b                                           ; $4ed5: $80
	inc  b                                           ; $4ed6: $04
	adc  b                                           ; $4ed7: $88

jr_096_4ed8:
	nop                                              ; $4ed8: $00
	rrca                                             ; $4ed9: $0f
	ld   bc, $0300                                   ; $4eda: $01 $00 $03
	nop                                              ; $4edd: $00
	rlca                                             ; $4ede: $07
	nop                                              ; $4edf: $00
	dec  c                                           ; $4ee0: $0d
	rlca                                             ; $4ee1: $07
	rra                                              ; $4ee2: $1f
	rrca                                             ; $4ee3: $0f
	cpl                                              ; $4ee4: $2f
	rrca                                             ; $4ee5: $0f
	ld   e, a                                        ; $4ee6: $5f
	rra                                              ; $4ee7: $1f
	cp   e                                           ; $4ee8: $bb
	dec  sp                                          ; $4ee9: $3b
	add  b                                           ; $4eea: $80
	or   a                                           ; $4eeb: $b7
	dec  b                                           ; $4eec: $05
	ld   [hl], a                                     ; $4eed: $77
	ld   [hl], e                                     ; $4eee: $73
	ld   l, e                                        ; $4eef: $6b
	daa                                              ; $4ef0: $27
	add  a                                           ; $4ef1: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ef2: $cf
	add  b                                           ; $4ef3: $80
	rst  $38                                         ; $4ef4: $ff
	add  b                                           ; $4ef5: $80
	rst  $30                                         ; $4ef6: $f7
	add  d                                           ; $4ef7: $82
	rst  $20                                         ; $4ef8: $e7
	add  b                                           ; $4ef9: $80
	and  d                                           ; $4efa: $a2
	add  b                                           ; $4efb: $80
	add  d                                           ; $4efc: $82
	inc  bc                                          ; $4efd: $03
	ld   [bc], a                                     ; $4efe: $02
	ld   a, [bc]                                     ; $4eff: $0a
	rst  $30                                         ; $4f00: $f7
	rst  $38                                         ; $4f01: $ff
	add  b                                           ; $4f02: $80
	cp   [hl]                                        ; $4f03: $be
	add  b                                           ; $4f04: $80
	rst  JumpTable                                         ; $4f05: $df
	add  b                                           ; $4f06: $80
	rst  $28                                         ; $4f07: $ef
	ld   e, $f7                                      ; $4f08: $1e $f7
	di                                               ; $4f0a: $f3
	rst  $38                                         ; $4f0b: $ff
	ld   sp, hl                                      ; $4f0c: $f9
	ei                                               ; $4f0d: $fb
	ld   [hl], b                                     ; $4f0e: $70
	ld   [hl], l                                     ; $4f0f: $75
	ld   d, b                                        ; $4f10: $50
	ld   d, e                                        ; $4f11: $53
	db   $fc                                         ; $4f12: $fc
	inc  a                                           ; $4f13: $3c
	ld   l, $de                                      ; $4f14: $2e $de
	add  b                                           ; $4f16: $80
	cp   h                                           ; $4f17: $bc
	pop  bc                                          ; $4f18: $c1
	bit  4, b                                        ; $4f19: $cb $60
	ld   h, l                                        ; $4f1b: $65
	add  b                                           ; $4f1c: $80
	add  d                                           ; $4f1d: $82
	inc  l                                           ; $4f1e: $2c
	dec  l                                           ; $4f1f: $2d
	ld   a, [hl]                                     ; $4f20: $7e
	cp   [hl]                                        ; $4f21: $be
	nop                                              ; $4f22: $00
	ldh  [rP1], a                                    ; $4f23: $e0 $00
	jr   nc, jr_096_4f67                             ; $4f25: $30 $40

	ld   e, b                                        ; $4f27: $58
	add  c                                           ; $4f28: $81
	ldh  a, [rTAC]                                   ; $4f29: $f0 $07
	db   $fc                                         ; $4f2b: $fc
	ld   a, b                                        ; $4f2c: $78
	ld   hl, sp+$78                                  ; $4f2d: $f8 $78
	ld   a, $3c                                      ; $4f2f: $3e $3c
	cp   d                                           ; $4f31: $ba
	dec  sp                                          ; $4f32: $3b
	add  [hl]                                        ; $4f33: $86
	scf                                              ; $4f34: $37
	add  h                                           ; $4f35: $84
	cpl                                              ; $4f36: $2f
	db   $10                                         ; $4f37: $10
	rrca                                             ; $4f38: $0f
	jr   nz, @+$2a                                   ; $4f39: $20 $28

	jr   nc, jr_096_4f5d                             ; $4f3b: $30 $20

	and  b                                           ; $4f3d: $a0
	xor  h                                           ; $4f3e: $ac
	and  b                                           ; $4f3f: $a0
	cp   e                                           ; $4f40: $bb
	add  b                                           ; $4f41: $80
	inc  e                                           ; $4f42: $1c
	inc  hl                                          ; $4f43: $23
	ccf                                              ; $4f44: $3f
	ld   b, c                                        ; $4f45: $41
	ld   c, c                                        ; $4f46: $49
	dec  b                                           ; $4f47: $05
	di                                               ; $4f48: $f3
	add  d                                           ; $4f49: $82
	ld   bc, $0008                                   ; $4f4a: $01 $08 $00
	ld   bc, $8300                                   ; $4f4d: $01 $00 $83
	add  d                                           ; $4f50: $82
	add  $45                                         ; $4f51: $c6 $45
	add  d                                           ; $4f53: $82
	nop                                              ; $4f54: $00
	add  b                                           ; $4f55: $80
	ld   bc, $e410                                   ; $4f56: $01 $10 $e4
	ld   d, b                                        ; $4f59: $50
	ld   b, b                                        ; $4f5a: $40
	ld   b, c                                        ; $4f5b: $41
	ld   b, a                                        ; $4f5c: $47

jr_096_4f5d:
	add  sp, $60                                     ; $4f5d: $e8 $60
	ld   h, l                                        ; $4f5f: $65
	ldh  [c], a                                      ; $4f60: $e2
	ld   [bc], a                                     ; $4f61: $02
	jp   nz, $f332                                   ; $4f62: $c2 $32 $f3

	dec  bc                                          ; $4f65: $0b
	ld   c, e                                        ; $4f66: $4b

jr_096_4f67:
	inc  hl                                          ; $4f67: $23
	cp   e                                           ; $4f68: $bb
	add  b                                           ; $4f69: $80
	ld   e, b                                        ; $4f6a: $58
	add  b                                           ; $4f6b: $80
	sbc  b                                           ; $4f6c: $98
	ld   [bc], a                                     ; $4f6d: $02
	ret  c                                           ; $4f6e: $d8

	add  sp, $68                                     ; $4f6f: $e8 $68
	add  b                                           ; $4f71: $80
	ld   h, b                                        ; $4f72: $60
	ld   bc, $f070                                   ; $4f73: $01 $70 $f0
	add  d                                           ; $4f76: $82
	ld   [hl], b                                     ; $4f77: $70
	ld   [bc], a                                     ; $4f78: $02
	jp   Jump_096_4000                               ; $4f79: $c3 $00 $40


	add  l                                           ; $4f7c: $85
	nop                                              ; $4f7d: $00
	nop                                              ; $4f7e: $00
	add  b                                           ; $4f7f: $80
	add  e                                           ; $4f80: $83
	nop                                              ; $4f81: $00
	ld   a, [bc]                                     ; $4f82: $0a
	ld   l, [hl]                                     ; $4f83: $6e
	ld   h, b                                        ; $4f84: $60
	ld   d, b                                        ; $4f85: $50
	ld   b, b                                        ; $4f86: $40
	ld   b, c                                        ; $4f87: $41
	ld   b, b                                        ; $4f88: $40
	ld   hl, $4200                                   ; $4f89: $21 $00 $42
	nop                                              ; $4f8c: $00
	add  c                                           ; $4f8d: $81
	add  c                                           ; $4f8e: $81
	nop                                              ; $4f8f: $00
	ld   a, [bc]                                     ; $4f90: $0a
	ld   d, $00                                      ; $4f91: $16 $00
	call nc, Call_096_4100                           ; $4f93: $d4 $00 $41
	nop                                              ; $4f96: $00
	add  b                                           ; $4f97: $80
	nop                                              ; $4f98: $00
	ld   [$1800], sp                                 ; $4f99: $08 $00 $18
	add  l                                           ; $4f9c: $85
	nop                                              ; $4f9d: $00
	dec  c                                           ; $4f9e: $0d
	sub  b                                           ; $4f9f: $90
	nop                                              ; $4fa0: $00
	ld   sp, $d800                                   ; $4fa1: $31 $00 $d8
	nop                                              ; $4fa4: $00
	inc  [hl]                                        ; $4fa5: $34
	nop                                              ; $4fa6: $00
	ld   [bc], a                                     ; $4fa7: $02
	ld   [$a4b0], sp                                 ; $4fa8: $08 $b0 $a4
	add  c                                           ; $4fab: $81
	jp   nz, $8080                                   ; $4fac: $c2 $80 $80

	ld   bc, $0a0b                                   ; $4faf: $01 $0b $0a
	add  b                                           ; $4fb2: $80
	dec  b                                           ; $4fb3: $05
	add  b                                           ; $4fb4: $80
	ld   a, [bc]                                     ; $4fb5: $0a
	add  b                                           ; $4fb6: $80
	dec  c                                           ; $4fb7: $0d
	add  b                                           ; $4fb8: $80
	ld   c, $0d                                      ; $4fb9: $0e $0d
	rlca                                             ; $4fbb: $07
	rrca                                             ; $4fbc: $0f
	inc  bc                                          ; $4fbd: $03
	rrca                                             ; $4fbe: $0f
	ld   bc, $830f                                   ; $4fbf: $01 $0f $83
	add  b                                           ; $4fc2: $80
	ld   [bc], a                                     ; $4fc3: $02
	nop                                              ; $4fc4: $00
	cp   h                                           ; $4fc5: $bc
	and  b                                           ; $4fc6: $a0
	ld   bc, $8000                                   ; $4fc7: $01 $00 $80
	and  b                                           ; $4fca: $a0
	ld   bc, $407a                                   ; $4fcb: $01 $7a $40
	add  b                                           ; $4fce: $80
	add  b                                           ; $4fcf: $80
	add  b                                           ; $4fd0: $80
	ret  nz                                          ; $4fd1: $c0

	nop                                              ; $4fd2: $00
	inc  a                                           ; $4fd3: $3c
	add  b                                           ; $4fd4: $80
	ld   h, [hl]                                     ; $4fd5: $66
	ld   bc, $7342                                   ; $4fd6: $01 $42 $73
	add  b                                           ; $4fd9: $80
	ld   [$8c80], sp                                 ; $4fda: $08 $80 $8c
	add  b                                           ; $4fdd: $80
	call z, $de00                                    ; $4fde: $cc $00 $de
	add  d                                           ; $4fe1: $82
	sbc  [hl]                                        ; $4fe2: $9e
	ld   [bc], a                                     ; $4fe3: $02
	ld   [bc], a                                     ; $4fe4: $02
	ld   a, [de]                                     ; $4fe5: $1a
	ld   d, b                                        ; $4fe6: $50
	add  b                                           ; $4fe7: $80
	db   $10                                         ; $4fe8: $10
	add  b                                           ; $4fe9: $80
	ld   de, $5501                                   ; $4fea: $11 $01 $55
	ld   d, c                                        ; $4fed: $51
	add  b                                           ; $4fee: $80
	ld   d, b                                        ; $4fef: $50
	nop                                              ; $4ff0: $00
	ld   d, d                                        ; $4ff1: $52
	add  b                                           ; $4ff2: $80
	ld   d, b                                        ; $4ff3: $50
	ld   b, $10                                      ; $4ff4: $06 $10
	sub  c                                           ; $4ff6: $91
	db   $e3                                         ; $4ff7: $e3
	ld   [$3c0a], sp                                 ; $4ff8: $08 $0a $3c
	ld   a, l                                        ; $4ffb: $7d
	add  b                                           ; $4ffc: $80
	rra                                              ; $4ffd: $1f
	nop                                              ; $4ffe: $00
	cp   a                                           ; $4fff: $bf
	add  b                                           ; $5000: $80

Call_096_5001:
	sbc  a                                           ; $5001: $9f
	ld   [$4f0f], sp                                 ; $5002: $08 $0f $4f
	inc  b                                           ; $5005: $04
	inc  h                                           ; $5006: $24
	and  b                                           ; $5007: $a0
	inc  hl                                          ; $5008: $23
	inc  e                                           ; $5009: $1c
	ccf                                              ; $500a: $3f
	ld   a, a                                        ; $500b: $7f
	add  c                                           ; $500c: $81
	ccf                                              ; $500d: $3f
	add  b                                           ; $500e: $80
	sbc  a                                           ; $500f: $9f
	add  b                                           ; $5010: $80

jr_096_5011:
	adc  a                                           ; $5011: $8f
	add  b                                           ; $5012: $80
	rlca                                             ; $5013: $07
	rlca                                             ; $5014: $07
	ld   b, $56                                      ; $5015: $06 $56
	ld   d, b                                        ; $5017: $50
	ld   hl, sp+$65                                  ; $5018: $f8 $65
	sbc  h                                           ; $501a: $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $501b: $cf
	adc  $80                                         ; $501c: $ce $80
	xor  $82                                         ; $501e: $ee $82
	rst  $20                                         ; $5020: $e7
	add  b                                           ; $5021: $80
	adc  e                                           ; $5022: $8b
	add  b                                           ; $5023: $80
	dec  sp                                          ; $5024: $3b
	add  b                                           ; $5025: $80
	ld   a, l                                        ; $5026: $7d
	ld   [bc], a                                     ; $5027: $02
	xor  [hl]                                        ; $5028: $ae
	ld   l, $5e                                      ; $5029: $2e $5e
	add  c                                           ; $502b: $81
	ld   e, $00                                      ; $502c: $1e $00
	sbc  [hl]                                        ; $502e: $9e
	add  c                                           ; $502f: $81
	ld   e, $01                                      ; $5030: $1e $01
	sbc  $0e                                         ; $5032: $de $0e
	add  c                                           ; $5034: $81
	inc  c                                           ; $5035: $0c
	ld   [$b508], sp                                 ; $5036: $08 $08 $b5
	ld   [bc], a                                     ; $5039: $02
	ld   a, [bc]                                     ; $503a: $0a
	jp   z, $c2e2                                    ; $503b: $ca $e2 $c2

	call z, $85f0                                    ; $503e: $cc $f0 $85
	ldh  [rSB], a                                    ; $5041: $e0 $01
	ld   h, b                                        ; $5043: $60
	add  b                                           ; $5044: $80
	adc  c                                           ; $5045: $89
	nop                                              ; $5046: $00
	add  b                                           ; $5047: $80
	db   $10                                         ; $5048: $10
	add  hl, bc                                      ; $5049: $09
	jr   nc, jr_096_506c                             ; $504a: $30 $20

	and  $81                                         ; $504c: $e6 $81
	and  c                                           ; $504e: $a1
	and  l                                           ; $504f: $a5
	adc  l                                           ; $5050: $8d
	add  l                                           ; $5051: $85
	ld   h, h                                        ; $5052: $64
	ld   e, $80                                      ; $5053: $1e $80
	ld   c, $83                                      ; $5055: $0e $83
	ld   b, $02                                      ; $5057: $06 $02

jr_096_5059:
	inc  b                                           ; $5059: $04
	add  a                                           ; $505a: $87
	ld   a, b                                        ; $505b: $78
	add  b                                           ; $505c: $80
	cp   b                                           ; $505d: $b8
	nop                                              ; $505e: $00
	cp   d                                           ; $505f: $ba
	add  c                                           ; $5060: $81
	cp   b                                           ; $5061: $b8
	add  b                                           ; $5062: $80
	ret  c                                           ; $5063: $d8

	nop                                              ; $5064: $00
	db   $db                                         ; $5065: $db
	add  c                                           ; $5066: $81
	jp   c, $d380                                    ; $5067: $da $80 $d3

	inc  b                                           ; $506a: $04
	ld   [bc], a                                     ; $506b: $02

jr_096_506c:
	nop                                              ; $506c: $00
	inc  b                                           ; $506d: $04
	nop                                              ; $506e: $00
	dec  bc                                          ; $506f: $0b
	add  c                                           ; $5070: $81
	nop                                              ; $5071: $00
	inc  c                                           ; $5072: $0c
	jr   nz, jr_096_5075                             ; $5073: $20 $00

jr_096_5075:
	ld   b, h                                        ; $5075: $44
	nop                                              ; $5076: $00
	and  b                                           ; $5077: $a0
	nop                                              ; $5078: $00
	ldh  [rP1], a                                    ; $5079: $e0 $00
	jp   nz, $3000                                   ; $507b: $c2 $00 $30

	nop                                              ; $507e: $00
	ld   [$0085], sp                                 ; $507f: $08 $85 $00
	nop                                              ; $5082: $00
	ld   [bc], a                                     ; $5083: $02
	add  b                                           ; $5084: $80
	nop                                              ; $5085: $00
	ld   bc, $3b04                                   ; $5086: $01 $04 $3b
	add  c                                           ; $5089: $81
	nop                                              ; $508a: $00
	nop                                              ; $508b: $00
	jr   nz, jr_096_5011                             ; $508c: $20 $83

	nop                                              ; $508e: $00
	nop                                              ; $508f: $00
	ld   [$1081], sp                                 ; $5090: $08 $81 $10
	inc  bc                                          ; $5093: $03
	dec  d                                           ; $5094: $15
	jr   @-$59                                       ; $5095: $18 $a5

	add  c                                           ; $5097: $81
	add  [hl]                                        ; $5098: $86
	nop                                              ; $5099: $00
	ld   bc, $0001                                   ; $509a: $01 $01 $00
	add  b                                           ; $509d: $80
	ld   [bc], a                                     ; $509e: $02
	ld   a, [bc]                                     ; $509f: $0a
	add  b                                           ; $50a0: $80
	ld   [bc], a                                     ; $50a1: $02
	adc  c                                           ; $50a2: $89
	rrca                                             ; $50a3: $0f
	nop                                              ; $50a4: $00
	rrca                                             ; $50a5: $0f
	ld   [$0c0f], sp                                 ; $50a6: $08 $0f $0c
	rrca                                             ; $50a9: $0f
	ld   c, $85                                      ; $50aa: $0e $85
	rrca                                             ; $50ac: $0f
	db   $10                                         ; $50ad: $10
	db   $e3                                         ; $50ae: $e3
	ret  nz                                          ; $50af: $c0

	ld   b, b                                        ; $50b0: $40
	ret  nz                                          ; $50b1: $c0

	ld   bc, $10c0                                   ; $50b2: $01 $c0 $10
	ret  z                                           ; $50b5: $c8

	ld   [$03e8], sp                                 ; $50b6: $08 $e8 $03

jr_096_50b9:
	db   $ec                                         ; $50b9: $ec

jr_096_50ba:
	sub  b                                           ; $50ba: $90
	db   $fc                                         ; $50bb: $fc
	db   $d3                                         ; $50bc: $d3
	cp   $9a                                         ; $50bd: $fe $9a
	add  c                                           ; $50bf: $81
	sbc  [hl]                                        ; $50c0: $9e
	add  d                                           ; $50c1: $82
	adc  a                                           ; $50c2: $8f
	add  b                                           ; $50c3: $80
	add  $80                                         ; $50c4: $c6 $80
	ld   b, b                                        ; $50c6: $40
	add  b                                           ; $50c7: $80
	jr   nz, jr_096_50cc                             ; $50c8: $20 $02

	add  h                                           ; $50ca: $84
	add  b                                           ; $50cb: $80

jr_096_50cc:
	dec  bc                                          ; $50cc: $0b
	add  b                                           ; $50cd: $80
	ret  nc                                          ; $50ce: $d0

	inc  d                                           ; $50cf: $14
	ld   b, b                                        ; $50d0: $40
	ld   c, b                                        ; $50d1: $48
	jr   nz, jr_096_50e4                             ; $50d2: $20 $10

	ld   [$0838], sp                                 ; $50d4: $08 $38 $08
	jr   jr_096_5059                                 ; $50d7: $18 $80

	and  h                                           ; $50d9: $a4
	add  b                                           ; $50da: $80
	sub  b                                           ; $50db: $90
	ret  nz                                          ; $50dc: $c0

	inc  hl                                          ; $50dd: $23
	jr   @+$0c                                       ; $50de: $18 $0a

	add  hl, hl                                      ; $50e0: $29
	ld   [$0b04], sp                                 ; $50e1: $08 $04 $0b

jr_096_50e4:
	ld   [bc], a                                     ; $50e4: $02
	add  e                                           ; $50e5: $83
	nop                                              ; $50e6: $00
	nop                                              ; $50e7: $00
	ld   bc, $0080                                   ; $50e8: $01 $80 $00
	dec  c                                           ; $50eb: $0d
	rst  $38                                         ; $50ec: $ff
	ld   a, [de]                                     ; $50ed: $1a
	ld   e, $0a                                      ; $50ee: $1e $0a
	ld   a, [hl+]                                    ; $50f0: $2a
	ld   [bc], a                                     ; $50f1: $02
	jr   c, jr_096_50f5                              ; $50f2: $38 $01

	nop                                              ; $50f4: $00

jr_096_50f5:
	ret  nz                                          ; $50f5: $c0

	ret  nc                                          ; $50f6: $d0

	db   $10                                         ; $50f7: $10
	jr   nz, jr_096_50ba                             ; $50f8: $20 $c0

	add  b                                           ; $50fa: $80
	db   $10                                         ; $50fb: $10
	db   $10                                         ; $50fc: $10
	ld   h, d                                        ; $50fd: $62
	sbc  l                                           ; $50fe: $9d
	ld   c, $6e                                      ; $50ff: $0e $6e
	ld   [hl], $06                                   ; $5101: $36 $06
	ld   b, [hl]                                     ; $5103: $46
	add  [hl]                                        ; $5104: $86
	ld   [bc], a                                     ; $5105: $02
	ld   b, b                                        ; $5106: $40
	ld   b, c                                        ; $5107: $41
	ld   bc, $0131                                   ; $5108: $01 $31 $01
	ld   l, c                                        ; $510b: $69
	ld   a, [hl+]                                    ; $510c: $2a
	dec  a                                           ; $510d: $3d
	add  b                                           ; $510e: $80
	nop                                              ; $510f: $00
	add  b                                           ; $5110: $80
	ld   [$1881], sp                                 ; $5111: $08 $81 $18
	nop                                              ; $5114: $00
	adc  b                                           ; $5115: $88
	add  c                                           ; $5116: $81
	inc  c                                           ; $5117: $0c
	add  d                                           ; $5118: $82
	dec  c                                           ; $5119: $0d
	nop                                              ; $511a: $00
	ld   e, a                                        ; $511b: $5f
	add  c                                           ; $511c: $81
	ld   h, b                                        ; $511d: $60
	ld   bc, $a0e0                                   ; $511e: $01 $e0 $a0
	add  b                                           ; $5121: $80
	or   b                                           ; $5122: $b0
	rrca                                             ; $5123: $0f
	ld   [hl], b                                     ; $5124: $70
	ld   d, b                                        ; $5125: $50
	ld   e, b                                        ; $5126: $58
	ld   c, b                                        ; $5127: $48
	ld   c, h                                        ; $5128: $4c
	ld   b, b                                        ; $5129: $40
	and  e                                           ; $512a: $a3
	and  l                                           ; $512b: $a5
	jp   z, $1020                                    ; $512c: $ca $20 $10

	nop                                              ; $512f: $00
	ld   l, h                                        ; $5130: $6c
	jr   z, jr_096_51af                              ; $5131: $28 $7c

	jr   c, jr_096_50b9                              ; $5133: $38 $84

	nop                                              ; $5135: $00
	add  b                                           ; $5136: $80
	ld   bc, $0700                                   ; $5137: $01 $00 $07
	add  c                                           ; $513a: $81
	inc  b                                           ; $513b: $04
	nop                                              ; $513c: $00
	inc  c                                           ; $513d: $0c
	add  c                                           ; $513e: $81
	ld   [$1807], sp                                 ; $513f: $08 $07 $18
	db   $10                                         ; $5142: $10
	inc  [hl]                                        ; $5143: $34
	inc  h                                           ; $5144: $24
	ld   h, h                                        ; $5145: $64
	inc  b                                           ; $5146: $04
	add  h                                           ; $5147: $84
	inc  b                                           ; $5148: $04
	add  b                                           ; $5149: $80
	ld   d, e                                        ; $514a: $53
	nop                                              ; $514b: $00
	ld   d, l                                        ; $514c: $55
	add  c                                           ; $514d: $81
	ld   d, h                                        ; $514e: $54
	nop                                              ; $514f: $00
	ld   d, a                                        ; $5150: $57
	add  b                                           ; $5151: $80
	ld   d, [hl]                                     ; $5152: $56
	ld   bc, $4c54                                   ; $5153: $01 $54 $4c
	add  b                                           ; $5156: $80
	ld   b, h                                        ; $5157: $44
	add  b                                           ; $5158: $80
	ld   b, b                                        ; $5159: $40
	ld   de, $6146                                   ; $515a: $11 $46 $61
	nop                                              ; $515d: $00
	ret  nz                                          ; $515e: $c0

	add  b                                           ; $515f: $80
	and  b                                           ; $5160: $a0
	add  b                                           ; $5161: $80
	call nz, Call_096_4940                           ; $5162: $c4 $40 $49
	ld   b, b                                        ; $5165: $40
	ld   b, d                                        ; $5166: $42
	ld   b, b                                        ; $5167: $40
	ld   b, l                                        ; $5168: $45
	ret  nz                                          ; $5169: $c0

	jp   z, $c1c0                                    ; $516a: $ca $c0 $c1

	add  c                                           ; $516d: $81
	ld   [bc], a                                     ; $516e: $02
	inc  d                                           ; $516f: $14
	ld   c, $10                                      ; $5170: $0e $10
	inc  d                                           ; $5172: $14
	add  hl, de                                      ; $5173: $19
	add  hl, sp                                      ; $5174: $39
	dec  c                                           ; $5175: $0d
	inc  c                                           ; $5176: $0c
	rrca                                             ; $5177: $0f
	sbc  a                                           ; $5178: $9f
	ld   b, $f7                                      ; $5179: $06 $f7
	inc  bc                                          ; $517b: $03
	ld   b, d                                        ; $517c: $42
	nop                                              ; $517d: $00
	and  c                                           ; $517e: $a1
	inc  c                                           ; $517f: $0c
	ld   l, h                                        ; $5180: $6c
	add  e                                           ; $5181: $83
	ld   d, $82                                      ; $5182: $16 $82
	db   $10                                         ; $5184: $10
	add  b                                           ; $5185: $80
	nop                                              ; $5186: $00
	dec  b                                           ; $5187: $05
	ld   d, b                                        ; $5188: $50
	sub  h                                           ; $5189: $94
	inc  b                                           ; $518a: $04
	nop                                              ; $518b: $00
	ld   [$80f3], sp                                 ; $518c: $08 $f3 $80
	ld   b, b                                        ; $518f: $40
	ld   bc, $c101                                   ; $5190: $01 $01 $c1
	add  b                                           ; $5193: $80
	nop                                              ; $5194: $00
	ld   bc, $0102                                   ; $5195: $01 $02 $01
	add  e                                           ; $5198: $83
	nop                                              ; $5199: $00
	add  b                                           ; $519a: $80
	ld   bc, $0000                                   ; $519b: $01 $00 $00
	add  l                                           ; $519e: $85
	rrca                                             ; $519f: $0f
	dec  de                                          ; $51a0: $1b
	dec  c                                           ; $51a1: $0d
	rrca                                             ; $51a2: $0f
	ld   [$000f], sp                                 ; $51a3: $08 $0f $00
	rrca                                             ; $51a6: $0f
	nop                                              ; $51a7: $00
	rrca                                             ; $51a8: $0f
	ld   [$fcff], sp                                 ; $51a9: $08 $ff $fc
	rst  $38                                         ; $51ac: $ff
	db   $fc                                         ; $51ad: $fc
	rst  $38                                         ; $51ae: $ff

jr_096_51af:
	db   $fc                                         ; $51af: $fc
	rst  $38                                         ; $51b0: $ff
	call c, $8cff                                    ; $51b1: $dc $ff $8c
	rst  $38                                         ; $51b4: $ff
	ld   b, $ff                                      ; $51b5: $06 $ff
	add  d                                           ; $51b7: $82

jr_096_51b8:
	rst  $38                                         ; $51b8: $ff
	ret  nz                                          ; $51b9: $c0

	ld   a, [hl+]                                    ; $51ba: $2a
	dec  [hl]                                        ; $51bb: $35
	push af                                          ; $51bc: $f5
	add  b                                           ; $51bd: $80
	ld   a, [$7511]                                  ; $51be: $fa $11 $75
	push af                                          ; $51c1: $f5
	ld   a, e                                        ; $51c2: $7b
	ld   a, [$fc7c]                                  ; $51c3: $fa $7c $fc
	ld   a, $fe                                      ; $51c6: $3e $fe
	inc  e                                           ; $51c8: $1c
	db   $fc                                         ; $51c9: $fc
	ld   a, a                                        ; $51ca: $7f
	ld   c, d                                        ; $51cb: $4a
	ld   a, b                                        ; $51cc: $78
	ld   h, b                                        ; $51cd: $60
	ld   [hl], l                                     ; $51ce: $75
	add  hl, hl                                      ; $51cf: $29
	inc  hl                                          ; $51d0: $23
	inc  sp                                          ; $51d1: $33
	add  b                                           ; $51d2: $80
	or   c                                           ; $51d3: $b1
	ld   bc, $98b8                                   ; $51d4: $01 $b8 $98
	add  b                                           ; $51d7: $80
	sbc  d                                           ; $51d8: $9a
	inc  bc                                          ; $51d9: $03
	sbc  b                                           ; $51da: $98
	adc  b                                           ; $51db: $88
	ldh  a, [c]                                      ; $51dc: $f2
	ld   [bc], a                                     ; $51dd: $02
	add  d                                           ; $51de: $82
	nop                                              ; $51df: $00
	add  hl, bc                                      ; $51e0: $09
	add  b                                           ; $51e1: $80
	nop                                              ; $51e2: $00
	ld   b, b                                        ; $51e3: $40
	nop                                              ; $51e4: $00
	call nz, $3c00                                   ; $51e5: $c4 $00 $3c
	jr   jr_096_521a                                 ; $51e8: $18 $30

jr_096_51ea:
	db   $10                                         ; $51ea: $10
	add  d                                           ; $51eb: $82
	nop                                              ; $51ec: $00
	add  b                                           ; $51ed: $80
	ld   b, b                                        ; $51ee: $40
	add  b                                           ; $51ef: $80
	nop                                              ; $51f0: $00
	add  b                                           ; $51f1: $80
	ld   bc, $0084                                   ; $51f2: $01 $84 $00
	ld   bc, $0c32                                   ; $51f5: $01 $32 $0c
	add  c                                           ; $51f8: $81
	call z, $8c80                                    ; $51f9: $cc $80 $8c
	nop                                              ; $51fc: $00
	adc  l                                           ; $51fd: $8d
	add  h                                           ; $51fe: $84
	add  l                                           ; $51ff: $85
	ld   [bc], a                                     ; $5200: $02
	dec  b                                           ; $5201: $05
	ld   b, l                                        ; $5202: $45
	ld   b, h                                        ; $5203: $44
	add  c                                           ; $5204: $81
	inc  b                                           ; $5205: $04
	add  b                                           ; $5206: $80
	ld   a, [bc]                                     ; $5207: $0a
	ld   bc, $0aca                                   ; $5208: $01 $ca $0a
	add  b                                           ; $520b: $80
	dec  b                                           ; $520c: $05
	ld   bc, $0545                                   ; $520d: $01 $45 $05
	add  d                                           ; $5210: $82
	nop                                              ; $5211: $00
	inc  bc                                          ; $5212: $03
	add  b                                           ; $5213: $80
	add  [hl]                                        ; $5214: $86
	add  $c7                                         ; $5215: $c6 $c7
	add  b                                           ; $5217: $80
	ld   b, a                                        ; $5218: $47
	add  b                                           ; $5219: $80

jr_096_521a:
	and  a                                           ; $521a: $a7
	add  b                                           ; $521b: $80
	rlca                                             ; $521c: $07
	dec  c                                           ; $521d: $0d
	ld   h, a                                        ; $521e: $67
	inc  bc                                          ; $521f: $03
	ld   d, e                                        ; $5220: $53
	ld   bc, $0029                                   ; $5221: $01 $29 $00
	ld   h, h                                        ; $5224: $64
	ld   [bc], a                                     ; $5225: $02
	ld   l, [hl]                                     ; $5226: $6e
	xor  c                                           ; $5227: $a9
	cp   c                                           ; $5228: $b9
	rst  ToBoot                                         ; $5229: $c7
	ld   b, [hl]                                     ; $522a: $46
	ld   a, [hl]                                     ; $522b: $7e
	add  [hl]                                        ; $522c: $86
	nop                                              ; $522d: $00
	ld   bc, $c4fb                                   ; $522e: $01 $fb $c4
	add  b                                           ; $5231: $80
	sub  d                                           ; $5232: $92
	add  b                                           ; $5233: $80
	ld   [de], a                                     ; $5234: $12
	add  b                                           ; $5235: $80
	jr   jr_096_51b8                                 ; $5236: $18 $80

	nop                                              ; $5238: $00
	add  hl, bc                                      ; $5239: $09
	inc  c                                           ; $523a: $0c
	nop                                              ; $523b: $00
	dec  d                                           ; $523c: $15
	nop                                              ; $523d: $00
	ld   [bc], a                                     ; $523e: $02
	nop                                              ; $523f: $00
	add  [hl]                                        ; $5240: $86
	ld   d, l                                        ; $5241: $55
	sub  l                                           ; $5242: $95
	sbc  l                                           ; $5243: $9d
	add  b                                           ; $5244: $80
	sbc  c                                           ; $5245: $99
	add  b                                           ; $5246: $80
	dec  bc                                          ; $5247: $0b
	add  b                                           ; $5248: $80
	ld   b, d                                        ; $5249: $42
	dec  e                                           ; $524a: $1d
	ld   h, c                                        ; $524b: $61
	ld   h, b                                        ; $524c: $60
	ld   h, $20                                      ; $524d: $26 $20
	add  b                                           ; $524f: $80
	nop                                              ; $5250: $00
	ccf                                              ; $5251: $3f
	add  d                                           ; $5252: $82
	sbc  d                                           ; $5253: $9a
	add  c                                           ; $5254: $81
	dec  h                                           ; $5255: $25
	nop                                              ; $5256: $00
	jr   c, jr_096_5259                              ; $5257: $38 $00

jr_096_5259:
	ld   c, h                                        ; $5259: $4c
	nop                                              ; $525a: $00
	ldh  a, [rP1]                                    ; $525b: $f0 $00
	inc  bc                                          ; $525d: $03
	nop                                              ; $525e: $00
	ccf                                              ; $525f: $3f
	nop                                              ; $5260: $00
	or   e                                           ; $5261: $b3
	nop                                              ; $5262: $00
	jr   nc, jr_096_5265                             ; $5263: $30 $00

jr_096_5265:
	ldh  a, [rP1]                                    ; $5265: $f0 $00
	ret  c                                           ; $5267: $d8

	jr   nz, jr_096_51ea                             ; $5268: $20 $80

	jr   nc, jr_096_526e                             ; $526a: $30 $02

	ldh  a, [rP1]                                    ; $526c: $f0 $00

jr_096_526e:
	ret  nz                                          ; $526e: $c0

	add  c                                           ; $526f: $81
	nop                                              ; $5270: $00
	nop                                              ; $5271: $00
	ld   hl, sp-$7f                                  ; $5272: $f8 $81
	nop                                              ; $5274: $00
	add  d                                           ; $5275: $82
	add  b                                           ; $5276: $80
	add  d                                           ; $5277: $82
	ret  nz                                          ; $5278: $c0

	add  b                                           ; $5279: $80
	ldh  [$80], a                                    ; $527a: $e0 $80
	ld   [hl], b                                     ; $527c: $70
	nop                                              ; $527d: $00
	rlca                                             ; $527e: $07
	add  b                                           ; $527f: $80
	ld   b, $01                                      ; $5280: $06 $01
	inc  b                                           ; $5282: $04
	ld   bc, $0280                                   ; $5283: $01 $80 $02
	add  hl, bc                                      ; $5286: $09
	nop                                              ; $5287: $00
	ld   e, $0c                                      ; $5288: $1e $0c
	add  hl, de                                      ; $528a: $19
	ld   [$0407], sp                                 ; $528b: $08 $07 $04
	ld   c, $08                                      ; $528e: $0e $08
	dec  bc                                          ; $5290: $0b
	add  l                                           ; $5291: $85
	rrca                                             ; $5292: $0f
	add  b                                           ; $5293: $80
	ld   c, $80                                      ; $5294: $0e $80
	dec  c                                           ; $5296: $0d
	add  b                                           ; $5297: $80
	ld   a, [bc]                                     ; $5298: $0a
	add  b                                           ; $5299: $80
	inc  c                                           ; $529a: $0c
	ld   h, $fa                                      ; $529b: $26 $fa
	rst  $38                                         ; $529d: $ff
	ld   hl, sp-$01                                  ; $529e: $f8 $ff
	db   $fc                                         ; $52a0: $fc
	rst  $38                                         ; $52a1: $ff
	ld   a, h                                        ; $52a2: $7c
	ld   a, a                                        ; $52a3: $7f
	cp   h                                           ; $52a4: $bc
	cp   a                                           ; $52a5: $bf
	ld   e, [hl]                                     ; $52a6: $5e
	ld   e, a                                        ; $52a7: $5f
	xor  [hl]                                        ; $52a8: $ae
	xor  a                                           ; $52a9: $af
	ld   e, [hl]                                     ; $52aa: $5e
	ld   e, a                                        ; $52ab: $5f
	cp   a                                           ; $52ac: $bf
	db   $fc                                         ; $52ad: $fc
	inc  e                                           ; $52ae: $1c
	db   $fc                                         ; $52af: $fc
	adc  h                                           ; $52b0: $8c
	db   $fc                                         ; $52b1: $fc
	call nz, $c0fc                                   ; $52b2: $c4 $fc $c0
	db   $fc                                         ; $52b5: $fc
	ret  nc                                          ; $52b6: $d0

	db   $fc                                         ; $52b7: $fc
	ld   [hl], b                                     ; $52b8: $70
	db   $fc                                         ; $52b9: $fc
	ld   [hl], b                                     ; $52ba: $70
	db   $fc                                         ; $52bb: $fc
	add  a                                           ; $52bc: $87
	adc  h                                           ; $52bd: $8c
	sbc  [hl]                                        ; $52be: $9e
	sub  [hl]                                        ; $52bf: $96
	sbc  a                                           ; $52c0: $9f
	sbc  c                                           ; $52c1: $99
	sbc  l                                           ; $52c2: $9d
	add  c                                           ; $52c3: $81
	sbc  h                                           ; $52c4: $9c
	add  d                                           ; $52c5: $82
	or   [hl]                                        ; $52c6: $b6
	add  b                                           ; $52c7: $80
	sub  e                                           ; $52c8: $93
	nop                                              ; $52c9: $00
	rst  $38                                         ; $52ca: $ff
	add  c                                           ; $52cb: $81
	nop                                              ; $52cc: $00
	add  b                                           ; $52cd: $80
	add  b                                           ; $52ce: $80
	inc  b                                           ; $52cf: $04
	ldh  a, [$30]                                    ; $52d0: $f0 $30
	dec  a                                           ; $52d2: $3d
	dec  b                                           ; $52d3: $05
	ld   b, a                                        ; $52d4: $47
	add  b                                           ; $52d5: $80
	ld   b, b                                        ; $52d6: $40
	nop                                              ; $52d7: $00
	ld   b, c                                        ; $52d8: $41
	add  b                                           ; $52d9: $80
	ld   hl, $fe01                                   ; $52da: $21 $01 $fe
	nop                                              ; $52dd: $00
	add  b                                           ; $52de: $80
	ld   [$180d], sp                                 ; $52df: $08 $0d $18
	ld   [$5868], sp                                 ; $52e2: $08 $68 $58
	pop  de                                          ; $52e5: $d1
	or   b                                           ; $52e6: $b0
	or   d                                           ; $52e7: $b2
	ld   [hl], b                                     ; $52e8: $70
	ld   h, h                                        ; $52e9: $64
	ldh  [$c8], a                                    ; $52ea: $e0 $c8
	pop  bc                                          ; $52ec: $c1
	ld   a, b                                        ; $52ed: $78
	ld   c, c                                        ; $52ee: $49
	add  b                                           ; $52ef: $80
	nop                                              ; $52f0: $00
	rra                                              ; $52f1: $1f
	ld   bc, $6020                                   ; $52f2: $01 $20 $60
	nop                                              ; $52f5: $00
	add  b                                           ; $52f6: $80
	inc  e                                           ; $52f7: $1c
	dec  e                                           ; $52f8: $1d
	ld   [hl], b                                     ; $52f9: $70
	ld   a, a                                        ; $52fa: $7f
	ret  nz                                          ; $52fb: $c0

	rst  $30                                         ; $52fc: $f7
	add  a                                           ; $52fd: $87
	cp   c                                           ; $52fe: $b9
	ld   b, $6f                                      ; $52ff: $06 $6f
	rrca                                             ; $5301: $0f
	ccf                                              ; $5302: $3f
	rra                                              ; $5303: $1f

jr_096_5304:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5304: $cf
	ccf                                              ; $5305: $3f
	sub  c                                           ; $5306: $91
	ld   e, a                                        ; $5307: $5f
	ld   a, $3f                                      ; $5308: $3e $3f

jr_096_530a:
	rst  $38                                         ; $530a: $ff
	ccf                                              ; $530b: $3f
	cp   a                                           ; $530c: $bf
	rst  JumpTable                                         ; $530d: $df
	ld   [de], a                                     ; $530e: $12
	call z, $7e7f                            ; $530f: $cc $7f $7e
	add  b                                           ; $5312: $80
	cp   a                                           ; $5313: $bf
	add  b                                           ; $5314: $80
	rst  JumpTable                                         ; $5315: $df
	add  b                                           ; $5316: $80
	rst  $28                                         ; $5317: $ef
	inc  sp                                          ; $5318: $33
	rrca                                             ; $5319: $0f
	rst  $28                                         ; $531a: $ef
	rst  $20                                         ; $531b: $e7
	rst  $30                                         ; $531c: $f7
	di                                               ; $531d: $f3
	ei                                               ; $531e: $fb
	add  [hl]                                        ; $531f: $86
	ld   bc, $01c1                                   ; $5320: $01 $c1 $01
	db   $e3                                         ; $5323: $e3
	inc  bc                                          ; $5324: $03
	rst  $30                                         ; $5325: $f7
	rlca                                             ; $5326: $07
	rra                                              ; $5327: $1f
	rlca                                             ; $5328: $07
	ld   l, a                                        ; $5329: $6f
	ld   [bc], a                                     ; $532a: $02
	ld   [hl], $00                                   ; $532b: $36 $00
	ld   bc, $3b00                                   ; $532d: $01 $00 $3b
	nop                                              ; $5330: $00
	rra                                              ; $5331: $1f
	nop                                              ; $5332: $00
	ld   [$8580], a                                  ; $5333: $ea $80 $85
	add  b                                           ; $5336: $80
	push af                                          ; $5337: $f5
	nop                                              ; $5338: $00
	adc  b                                           ; $5339: $88
	nop                                              ; $533a: $00
	ld   [bc], a                                     ; $533b: $02
	nop                                              ; $533c: $00
	ld   h, l                                        ; $533d: $65
	nop                                              ; $533e: $00
	adc  h                                           ; $533f: $8c
	nop                                              ; $5340: $00
	add  a                                           ; $5341: $87
	nop                                              ; $5342: $00
	and  [hl]                                        ; $5343: $a6
	nop                                              ; $5344: $00
	add  $00                                         ; $5345: $c6 $00
	inc  d                                           ; $5347: $14
	nop                                              ; $5348: $00
	ld   e, e                                        ; $5349: $5b
	jr   jr_096_530a                                 ; $534a: $18 $be

	ld   a, $80                                      ; $534c: $3e $80
	ld   e, l                                        ; $534e: $5d
	ld   bc, $10cf                                   ; $534f: $01 $cf $10
	add  b                                           ; $5352: $80
	dec  b                                           ; $5353: $05
	inc  bc                                          ; $5354: $03
	ld   b, b                                        ; $5355: $40
	nop                                              ; $5356: $00
	dec  [hl]                                        ; $5357: $35
	dec  d                                           ; $5358: $15
	add  b                                           ; $5359: $80
	ld   a, $06                                      ; $535a: $3e $06
	dec  d                                           ; $535c: $15
	dec  a                                           ; $535d: $3d
	sub  a                                           ; $535e: $97
	ld   e, $72                                      ; $535f: $1e $72
	inc  c                                           ; $5361: $0c
	rst  $20                                         ; $5362: $e7
	add  b                                           ; $5363: $80
	jr   nc, jr_096_538d                             ; $5364: $30 $27

	jr   nz, jr_096_538c                             ; $5366: $20 $24

	jr   nc, jr_096_53dd                             ; $5368: $30 $73

	jr   jr_096_53c7                                 ; $536a: $18 $5b

	inc  e                                           ; $536c: $1c
	sbc  a                                           ; $536d: $9f
	ld   b, a                                        ; $536e: $47
	daa                                              ; $536f: $27
	sbc  b                                           ; $5370: $98
	db   $e4                                         ; $5371: $e4
	ld   h, e                                        ; $5372: $63
	sbc  b                                           ; $5373: $98
	nop                                              ; $5374: $00
	ld   e, $00                                      ; $5375: $1e $00
	rlca                                             ; $5377: $07
	nop                                              ; $5378: $00
	pop  hl                                          ; $5379: $e1
	nop                                              ; $537a: $00
	ret  c                                           ; $537b: $d8

	jr   nz, jr_096_5304                             ; $537c: $20 $86

	sbc  b                                           ; $537e: $98
	push hl                                          ; $537f: $e5
	ld   h, d                                        ; $5380: $62
	ld   a, [hl]                                     ; $5381: $7e
	adc  a                                           ; $5382: $8f
	ld   a, d                                        ; $5383: $7a
	ld   [bc], a                                     ; $5384: $02
	dec  e                                           ; $5385: $1d
	dec  b                                           ; $5386: $05
	xor  $02                                         ; $5387: $ee $02
	add  e                                           ; $5389: $83
	dec  c                                           ; $538a: $0d
	inc  c                                           ; $538b: $0c

jr_096_538c:
	inc  l                                           ; $538c: $2c

jr_096_538d:
	dec  l                                           ; $538d: $2d
	add  b                                           ; $538e: $80
	inc  e                                           ; $538f: $1c
	inc  b                                           ; $5390: $04
	ld   a, [de]                                     ; $5391: $1a
	sbc  d                                           ; $5392: $9a
	inc  b                                           ; $5393: $04
	pop  af                                          ; $5394: $f1
	ld   a, [bc]                                     ; $5395: $0a
	add  b                                           ; $5396: $80
	inc  c                                           ; $5397: $0c
	add  b                                           ; $5398: $80
	ld   a, [bc]                                     ; $5399: $0a
	add  b                                           ; $539a: $80
	inc  c                                           ; $539b: $0c
	add  b                                           ; $539c: $80
	ld   a, [bc]                                     ; $539d: $0a
	add  b                                           ; $539e: $80
	inc  c                                           ; $539f: $0c
	add  b                                           ; $53a0: $80
	ld   a, [bc]                                     ; $53a1: $0a
	add  b                                           ; $53a2: $80
	inc  c                                           ; $53a3: $0c
	jr   nz, jr_096_53d4                             ; $53a4: $20 $2e

	cpl                                              ; $53a6: $2f
	ld   e, $1f                                      ; $53a7: $1e $1f
	ld   l, $2f                                      ; $53a9: $2e $2f
	ld   e, $1f                                      ; $53ab: $1e $1f
	ld   l, $2f                                      ; $53ad: $2e $2f
	ld   e, [hl]                                     ; $53af: $5e
	ld   e, a                                        ; $53b0: $5f
	ld   l, $2f                                      ; $53b1: $2e $2f
	ld   e, [hl]                                     ; $53b3: $5e
	ld   e, a                                        ; $53b4: $5f
	add  e                                           ; $53b5: $83
	cp   $7c                                         ; $53b6: $fe $7c
	cp   $7e                                         ; $53b8: $fe $7e
	cp   $6e                                         ; $53ba: $fe $6e
	rst  $38                                         ; $53bc: $ff
	ld   b, h                                        ; $53bd: $44
	rst  $38                                         ; $53be: $ff
	nop                                              ; $53bf: $00
	rst  $38                                         ; $53c0: $ff
	ld   bc, $0afe                                   ; $53c1: $01 $fe $0a
	cp   $5e                                         ; $53c4: $fe $5e
	add  b                                           ; $53c6: $80

jr_096_53c7:
	nop                                              ; $53c7: $00
	rrca                                             ; $53c8: $0f
	ld   b, a                                        ; $53c9: $47
	rlca                                             ; $53ca: $07
	ld   l, a                                        ; $53cb: $6f
	rrca                                             ; $53cc: $0f
	ld   [hl], b                                     ; $53cd: $70
	ld   d, [hl]                                     ; $53ce: $56
	add  b                                           ; $53cf: $80
	db   $eb                                         ; $53d0: $eb
	nop                                              ; $53d1: $00
	or   [hl]                                        ; $53d2: $b6
	nop                                              ; $53d3: $00

jr_096_53d4:
	ld   l, l                                        ; $53d4: $6d
	nop                                              ; $53d5: $00
	or   d                                           ; $53d6: $b2
	inc  c                                           ; $53d7: $0c
	ld   [$f080], sp                                 ; $53d8: $08 $80 $f0
	ld   e, $80                                      ; $53db: $1e $80

jr_096_53dd:
	push hl                                          ; $53dd: $e5
	nop                                              ; $53de: $00
	xor  l                                           ; $53df: $ad
	nop                                              ; $53e0: $00
	ld   d, b                                        ; $53e1: $50
	nop                                              ; $53e2: $00
	add  b                                           ; $53e3: $80
	nop                                              ; $53e4: $00
	jr   nz, jr_096_53e7                             ; $53e5: $20 $00

jr_096_53e7:
	db   $db                                         ; $53e7: $db
	nop                                              ; $53e8: $00
	dec  h                                           ; $53e9: $25
	nop                                              ; $53ea: $00
	ld   c, e                                        ; $53eb: $4b
	nop                                              ; $53ec: $00

jr_096_53ed:
	sub  [hl]                                        ; $53ed: $96
	nop                                              ; $53ee: $00
	ld   hl, $0f01                                   ; $53ef: $21 $01 $0f
	inc  bc                                          ; $53f2: $03
	ld   b, e                                        ; $53f3: $43
	inc  bc                                          ; $53f4: $03
	sbc  a                                           ; $53f5: $9f
	rlca                                             ; $53f6: $07
	adc  a                                           ; $53f7: $8f
	rra                                              ; $53f8: $1f
	cp   a                                           ; $53f9: $bf
	ccf                                              ; $53fa: $3f
	add  b                                           ; $53fb: $80
	ld   a, a                                        ; $53fc: $7f
	inc  d                                           ; $53fd: $14
	rst  $38                                         ; $53fe: $ff
	rst  JumpTable                                         ; $53ff: $df
	rst  $10                                         ; $5400: $d7
	rst  $28                                         ; $5401: $ef
	db   $e3                                         ; $5402: $e3
	rst  $30                                         ; $5403: $f7
	pop  af                                          ; $5404: $f1
	ei                                               ; $5405: $fb
	ld   a, [$e8eb]                                  ; $5406: $fa $eb $e8
	rst  $28                                         ; $5409: $ef
	ld   l, a                                        ; $540a: $6f
	rst  $30                                         ; $540b: $f7
	scf                                              ; $540c: $37
	rst  $30                                         ; $540d: $f7
	add  a                                           ; $540e: $87
	ei                                               ; $540f: $fb
	db   $d3                                         ; $5410: $d3
	ei                                               ; $5411: $fb
	rst  $28                                         ; $5412: $ef
	add  c                                           ; $5413: $81
	db   $fd                                         ; $5414: $fd
	ld   b, $77                                      ; $5415: $06 $77
	cp   $7b                                         ; $5417: $fe $7b
	ei                                               ; $5419: $fb
	ld   sp, hl                                      ; $541a: $f9
	db   $fd                                         ; $541b: $fd
	db   $fc                                         ; $541c: $fc
	add  d                                           ; $541d: $82
	cp   $85                                         ; $541e: $fe $85
	rst  $38                                         ; $5420: $ff
	nop                                              ; $5421: $00
	inc  c                                           ; $5422: $0c
	add  c                                           ; $5423: $81
	ldh  a, [$82]                                    ; $5424: $f0 $82
	ld   hl, sp+$03                                  ; $5426: $f8 $03
	ld   a, a                                        ; $5428: $7f
	ld   a, h                                        ; $5429: $7c
	inc  a                                           ; $542a: $3c
	cp   h                                           ; $542b: $bc
	add  b                                           ; $542c: $80
	cp   c                                           ; $542d: $b9
	ld   [bc], a                                     ; $542e: $02
	sbc  e                                           ; $542f: $9b
	db   $db                                         ; $5430: $db
	ld   a, h                                        ; $5431: $7c
	add  c                                           ; $5432: $81
	inc  a                                           ; $5433: $3c
	nop                                              ; $5434: $00
	ld   sp, hl                                      ; $5435: $f9
	add  c                                           ; $5436: $81
	ld   a, c                                        ; $5437: $79
	add  h                                           ; $5438: $84
	ei                                               ; $5439: $fb
	add  b                                           ; $543a: $80
	ld   sp, hl                                      ; $543b: $f9
	add  b                                           ; $543c: $80
	db   $dd                                         ; $543d: $dd
	nop                                              ; $543e: $00
	sbc  [hl]                                        ; $543f: $9e
	add  d                                           ; $5440: $82
	sbc  h                                           ; $5441: $9c
	ld   bc, $1594                                   ; $5442: $01 $94 $15
	add  b                                           ; $5445: $80
	db   $10                                         ; $5446: $10
	add  b                                           ; $5447: $80
	ld   [de], a                                     ; $5448: $12
	inc  c                                           ; $5449: $0c
	ld   a, [de]                                     ; $544a: $1a
	ld   a, [bc]                                     ; $544b: $0a
	ld   c, $b2                                      ; $544c: $0e $b2
	add  b                                           ; $544e: $80
	xor  b                                           ; $544f: $a8
	jr   nz, jr_096_54c9                             ; $5450: $20 $77

	sub  c                                           ; $5452: $91
	dec  de                                          ; $5453: $1b
	jr   jr_096_5473                                 ; $5454: $18 $1d

	inc  e                                           ; $5456: $1c
	add  c                                           ; $5457: $81
	ld   e, $00                                      ; $5458: $1e $00
	ld   d, [hl]                                     ; $545a: $56
	add  b                                           ; $545b: $80
	ld   d, a                                        ; $545c: $57
	dec  c                                           ; $545d: $0d
	sbc  c                                           ; $545e: $99
	jr   nc, jr_096_54dd                             ; $545f: $30 $7c

	call $f3ff                                       ; $5461: $cd $ff $f3
	rst  $38                                         ; $5464: $ff
	db   $fc                                         ; $5465: $fc
	ld   a, a                                        ; $5466: $7f
	ld   h, a                                        ; $5467: $67
	ld   a, a                                        ; $5468: $7f
	ld   h, b                                        ; $5469: $60
	cp   a                                           ; $546a: $bf
	jr   c, jr_096_53ed                              ; $546b: $38 $80

	ld   a, $00                                      ; $546d: $3e $00
	add  b                                           ; $546f: $80
	add  b                                           ; $5470: $80
	ldh  [c], a                                      ; $5471: $e2
	add  b                                           ; $5472: $80

jr_096_5473:
	ld   e, $80                                      ; $5473: $1e $80
	db   $fc                                         ; $5475: $fc
	dec  d                                           ; $5476: $15
	ldh  [$f8], a                                    ; $5477: $e0 $f8
	ld   a, [de]                                     ; $5479: $1a
	or   $72                                         ; $547a: $f6 $72
	add  d                                           ; $547c: $82
	ld   bc, $050d                                   ; $547d: $01 $0d $05
	ld   l, h                                        ; $5480: $6c
	nop                                              ; $5481: $00
	sub  b                                           ; $5482: $90
	ld   bc, $9400                                   ; $5483: $01 $00 $94
	inc  b                                           ; $5486: $04
	ld   h, a                                        ; $5487: $67
	rlca                                             ; $5488: $07
	inc  bc                                          ; $5489: $03
	inc  hl                                          ; $548a: $23
	add  e                                           ; $548b: $83
	sub  e                                           ; $548c: $93
	add  b                                           ; $548d: $80
	add  l                                           ; $548e: $85
	nop                                              ; $548f: $00
	add  [hl]                                        ; $5490: $86
	ld   d, l                                        ; $5491: $55
	ld   [bc], a                                     ; $5492: $02
	add  [hl]                                        ; $5493: $86
	nop                                              ; $5494: $00
	ld   bc, $639c                                   ; $5495: $01 $9c $63
	add  b                                           ; $5498: $80
	rst  ToBoot                                         ; $5499: $c7
	add  b                                           ; $549a: $80
	sbc  a                                           ; $549b: $9f
	add  b                                           ; $549c: $80
	ld   a, h                                        ; $549d: $7c
	nop                                              ; $549e: $00
	rst  $38                                         ; $549f: $ff
	add  l                                           ; $54a0: $85
	nop                                              ; $54a1: $00
	ld   bc, $f807                                   ; $54a2: $01 $07 $f8
	add  b                                           ; $54a5: $80
	ldh  [$80], a                                    ; $54a6: $e0 $80
	inc  b                                           ; $54a8: $04
	add  b                                           ; $54a9: $80
	inc  de                                          ; $54aa: $13
	nop                                              ; $54ab: $00
	rst  $38                                         ; $54ac: $ff

jr_096_54ad:
	add  l                                           ; $54ad: $85
	nop                                              ; $54ae: $00
	ld   bc, $39c6                                   ; $54af: $01 $c6 $39
	add  b                                           ; $54b2: $80
	cp   $80                                         ; $54b3: $fe $80
	ld   a, a                                        ; $54b5: $7f
	add  b                                           ; $54b6: $80
	sbc  a                                           ; $54b7: $9f
	nop                                              ; $54b8: $00
	rst  $38                                         ; $54b9: $ff
	add  l                                           ; $54ba: $85
	nop                                              ; $54bb: $00
	ld   bc, $8976                                   ; $54bc: $01 $76 $89
	add  b                                           ; $54bf: $80
	ld   h, [hl]                                     ; $54c0: $66
	add  b                                           ; $54c1: $80
	xor  c                                           ; $54c2: $a9
	add  b                                           ; $54c3: $80
	xor  b                                           ; $54c4: $a8
	nop                                              ; $54c5: $00
	rst  $38                                         ; $54c6: $ff
	add  d                                           ; $54c7: $82
	nop                                              ; $54c8: $00

jr_096_54c9:
	nop                                              ; $54c9: $00
	ld   [bc], a                                     ; $54ca: $02
	add  c                                           ; $54cb: $81
	nop                                              ; $54cc: $00
	nop                                              ; $54cd: $00
	db   $fd                                         ; $54ce: $fd
	add  b                                           ; $54cf: $80
	add  hl, sp                                      ; $54d0: $39
	add  b                                           ; $54d1: $80
	ret  c                                           ; $54d2: $d8

	add  b                                           ; $54d3: $80
	ld   d, b                                        ; $54d4: $50
	nop                                              ; $54d5: $00
	rst  $38                                         ; $54d6: $ff
	add  l                                           ; $54d7: $85
	nop                                              ; $54d8: $00
	ld   bc, $de21                                   ; $54d9: $01 $21 $de
	add  b                                           ; $54dc: $80

jr_096_54dd:
	reti                                             ; $54dd: $d9


	add  b                                           ; $54de: $80
	sub  e                                           ; $54df: $93
	add  b                                           ; $54e0: $80
	and  a                                           ; $54e1: $a7
	nop                                              ; $54e2: $00
	rst  $38                                         ; $54e3: $ff
	add  l                                           ; $54e4: $85
	nop                                              ; $54e5: $00
	ld   bc, $f30c                                   ; $54e6: $01 $0c $f3
	add  b                                           ; $54e9: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54ea: $cf
	add  b                                           ; $54eb: $80
	xor  h                                           ; $54ec: $ac
	add  b                                           ; $54ed: $80
	ld   c, e                                        ; $54ee: $4b
	nop                                              ; $54ef: $00
	rst  $38                                         ; $54f0: $ff
	add  l                                           ; $54f1: $85
	nop                                              ; $54f2: $00
	ld   bc, $fe01                                   ; $54f3: $01 $01 $fe
	add  b                                           ; $54f6: $80
	ldh  [$80], a                                    ; $54f7: $e0 $80
	dec  e                                           ; $54f9: $1d
	add  b                                           ; $54fa: $80
	ld   a, e                                        ; $54fb: $7b

jr_096_54fc:
	nop                                              ; $54fc: $00
	rst  $38                                         ; $54fd: $ff
	add  l                                           ; $54fe: $85
	nop                                              ; $54ff: $00
	ld   bc, $0ff0                                   ; $5500: $01 $f0 $0f
	add  b                                           ; $5503: $80
	rst  $38                                         ; $5504: $ff
	add  b                                           ; $5505: $80
	db   $fc                                         ; $5506: $fc
	add  b                                           ; $5507: $80
	ei                                               ; $5508: $fb
	nop                                              ; $5509: $00
	rst  $38                                         ; $550a: $ff
	add  l                                           ; $550b: $85
	nop                                              ; $550c: $00
	ld   bc, $c738                                   ; $550d: $01 $38 $c7
	add  b                                           ; $5510: $80
	cpl                                              ; $5511: $2f
	add  b                                           ; $5512: $80
	rst  JumpTable                                         ; $5513: $df
	add  b                                           ; $5514: $80
	cp   h                                           ; $5515: $bc
	nop                                              ; $5516: $00
	rst  $38                                         ; $5517: $ff
	add  l                                           ; $5518: $85
	nop                                              ; $5519: $00
	ld   bc, $d12e                                   ; $551a: $01 $2e $d1
	add  b                                           ; $551d: $80
	pop  af                                          ; $551e: $f1
	add  b                                           ; $551f: $80
	sub  c                                           ; $5520: $91
	add  b                                           ; $5521: $80
	ld   [hl], c                                     ; $5522: $71
	nop                                              ; $5523: $00
	rst  $38                                         ; $5524: $ff
	add  l                                           ; $5525: $85
	nop                                              ; $5526: $00
	ld   bc, $07f8                                   ; $5527: $01 $f8 $07
	add  b                                           ; $552a: $80
	jr   jr_096_54ad                                 ; $552b: $18 $80

	rrca                                             ; $552d: $0f
	add  b                                           ; $552e: $80
	inc  de                                          ; $552f: $13
	add  b                                           ; $5530: $80
	ldh  [rTIMA], a                                  ; $5531: $e0 $05
	add  e                                           ; $5533: $83
	add  b                                           ; $5534: $80
	inc  c                                           ; $5535: $0c
	nop                                              ; $5536: $00
	jr   nc, jr_096_5539                             ; $5537: $30 $00

jr_096_5539:
	add  b                                           ; $5539: $80
	jr   nc, jr_096_5544                             ; $553a: $30 $08

	ccf                                              ; $553c: $3f
	rrca                                             ; $553d: $0f
	ld   c, $07                                      ; $553e: $0e $07
	ld   b, $1a                                      ; $5540: $06 $1a
	and  $0c                                         ; $5542: $e6 $0c

jr_096_5544:
	rrca                                             ; $5544: $0f
	add  b                                           ; $5545: $80
	inc  bc                                          ; $5546: $03
	add  l                                           ; $5547: $85
	nop                                              ; $5548: $00
	add  b                                           ; $5549: $80
	ldh  [$03], a                                    ; $554a: $e0 $03
	call c, $f83c                                    ; $554c: $dc $3c $f8
	rst  $20                                         ; $554f: $e7
	add  b                                           ; $5550: $80
	jr   @+$06                                       ; $5551: $18 $04

	rst  $20                                         ; $5553: $e7
	ld   h, a                                        ; $5554: $67
	ld   a, b                                        ; $5555: $78
	jr   @+$21                                       ; $5556: $18 $1f

	add  b                                           ; $5558: $80
	inc  bc                                          ; $5559: $03
	nop                                              ; $555a: $00
	nop                                              ; $555b: $00
	add  b                                           ; $555c: $80
	ld   bc, $0e80                                   ; $555d: $01 $80 $0e
	ld   bc, $ad52                                   ; $5560: $01 $52 $ad
	add  b                                           ; $5563: $80
	xor  c                                           ; $5564: $a9
	add  b                                           ; $5565: $80
	ld   l, d                                        ; $5566: $6a
	add  b                                           ; $5567: $80
	jp   c, $0c80                                    ; $5568: $da $80 $0c

	rlca                                             ; $556b: $07
	and  $66                                         ; $556c: $e6 $66
	rst  $30                                         ; $556e: $f7
	rst  $10                                         ; $556f: $d7
	sub  e                                           ; $5570: $93
	and  e                                           ; $5571: $a3
	jr   jr_096_54fc                                 ; $5572: $18 $88

	add  b                                           ; $5574: $80
	jp   nz, $e280                                   ; $5575: $c2 $80 $e2

	add  b                                           ; $5578: $80
	or   $80                                         ; $5579: $f6 $80
	ld   [hl], a                                     ; $557b: $77
	add  d                                           ; $557c: $82
	ld   a, a                                        ; $557d: $7f
	add  b                                           ; $557e: $80
	rst  $38                                         ; $557f: $ff
	add  d                                           ; $5580: $82
	ld   [bc], a                                     ; $5581: $02
	add  b                                           ; $5582: $80
	add  h                                           ; $5583: $84
	add  b                                           ; $5584: $80
	ret  z                                           ; $5585: $c8

	add  b                                           ; $5586: $80
	reti                                             ; $5587: $d9


	add  b                                           ; $5588: $80
	db   $d3                                         ; $5589: $d3
	add  c                                           ; $558a: $81
	rst  $38                                         ; $558b: $ff
	ld   [bc], a                                     ; $558c: $02
	halt                                             ; $558d: $76
	sbc  b                                           ; $558e: $98
	ld   de, $0084                                   ; $558f: $11 $84 $00
	add  b                                           ; $5592: $80

jr_096_5593:
	db   $10                                         ; $5593: $10
	add  b                                           ; $5594: $80
	ld   [hl], c                                     ; $5595: $71
	add  b                                           ; $5596: $80
	ei                                               ; $5597: $fb
	add  b                                           ; $5598: $80
	sbc  $80                                         ; $5599: $de $80
	ld   [hl], a                                     ; $559b: $77
	add  b                                           ; $559c: $80
	ld   l, l                                        ; $559d: $6d
	add  b                                           ; $559e: $80
	dec  bc                                          ; $559f: $0b
	add  b                                           ; $55a0: $80
	db   $10                                         ; $55a1: $10
	add  b                                           ; $55a2: $80
	add  d                                           ; $55a3: $82
	add  b                                           ; $55a4: $80
	inc  b                                           ; $55a5: $04
	add  b                                           ; $55a6: $80
	ld   [$0980], sp                                 ; $55a7: $08 $80 $09
	add  b                                           ; $55aa: $80
	rst  $20                                         ; $55ab: $e7
	add  b                                           ; $55ac: $80
	sbc  [hl]                                        ; $55ad: $9e
	add  b                                           ; $55ae: $80
	ld   a, b                                        ; $55af: $78
	add  b                                           ; $55b0: $80
	push bc                                          ; $55b1: $c5
	add  b                                           ; $55b2: $80
	dec  sp                                          ; $55b3: $3b
	add  b                                           ; $55b4: $80
	rst  $30                                         ; $55b5: $f7
	add  b                                           ; $55b6: $80
	rst  $28                                         ; $55b7: $ef
	add  b                                           ; $55b8: $80
	call c, Call_096_6780                            ; $55b9: $dc $80 $67
	add  b                                           ; $55bc: $80
	rra                                              ; $55bd: $1f
	add  b                                           ; $55be: $80
	db   $fc                                         ; $55bf: $fc
	add  b                                           ; $55c0: $80
	ei                                               ; $55c1: $fb
	add  b                                           ; $55c2: $80
	rst  $20                                         ; $55c3: $e7
	add  b                                           ; $55c4: $80
	sbc  [hl]                                        ; $55c5: $9e
	add  b                                           ; $55c6: $80
	ld   a, b                                        ; $55c7: $78
	add  b                                           ; $55c8: $80
	push hl                                          ; $55c9: $e5
	add  b                                           ; $55ca: $80
	sub  c                                           ; $55cb: $91
	add  b                                           ; $55cc: $80
	ld   [hl], c                                     ; $55cd: $71
	add  d                                           ; $55ce: $82
	pop  de                                          ; $55cf: $d1
	add  b                                           ; $55d0: $80
	sub  c                                           ; $55d1: $91
	add  b                                           ; $55d2: $80
	ld   sp, $f180                                   ; $55d3: $31 $80 $f1
	add  b                                           ; $55d6: $80
	pop  de                                          ; $55d7: $d1
	add  b                                           ; $55d8: $80
	inc  c                                           ; $55d9: $0c
	add  b                                           ; $55da: $80
	rlca                                             ; $55db: $07
	add  b                                           ; $55dc: $80
	jr   @-$7e                                       ; $55dd: $18 $80

	rra                                              ; $55df: $1f
	add  b                                           ; $55e0: $80
	rrca                                             ; $55e1: $0f
	add  b                                           ; $55e2: $80
	inc  de                                          ; $55e3: $13
	add  b                                           ; $55e4: $80
	db   $10                                         ; $55e5: $10
	add  b                                           ; $55e6: $80
	inc  de                                          ; $55e7: $13
	inc  bc                                          ; $55e8: $03
	jr   nz, jr_096_55ed                             ; $55e9: $20 $02

	jr   nz, jr_096_55ed                             ; $55eb: $20 $00

jr_096_55ed:
	add  b                                           ; $55ed: $80
	ld   [bc], a                                     ; $55ee: $02
	ld   b, $20                                      ; $55ef: $06 $20
	nop                                              ; $55f1: $00
	dec  e                                           ; $55f2: $1d
	jr   nz, jr_096_5611                             ; $55f3: $20 $1c

	ld   [bc], a                                     ; $55f5: $02
	ld   bc, $0082                                   ; $55f6: $01 $82 $00
	add  b                                           ; $55f9: $80
	inc  bc                                          ; $55fa: $03
	add  b                                           ; $55fb: $80
	ld   b, $80                                      ; $55fc: $06 $80
	ld   a, [hl-]                                    ; $55fe: $3a
	add  b                                           ; $55ff: $80
	jp   nz, $020b                                   ; $5600: $c2 $0b $02

	ldh  [c], a                                      ; $5603: $e2
	inc  bc                                          ; $5604: $03
	jp   $1c3e                                       ; $5605: $c3 $3e $1c


	inc  bc                                          ; $5608: $03
	ld   c, l                                        ; $5609: $4d
	or   e                                           ; $560a: $b3
	ld   a, h                                        ; $560b: $7c
	db   $fc                                         ; $560c: $fc
	ld   a, a                                        ; $560d: $7f
	add  b                                           ; $560e: $80
	rrca                                             ; $560f: $0f
	add  b                                           ; $5610: $80

jr_096_5611:
	jr   jr_096_5593                                 ; $5611: $18 $80

	ld   l, b                                        ; $5613: $68
	add  b                                           ; $5614: $80
	adc  b                                           ; $5615: $88
	add  b                                           ; $5616: $80
	dec  bc                                          ; $5617: $0b
	inc  b                                           ; $5618: $04
	db   $ec                                         ; $5619: $ec
	ccf                                              ; $561a: $3f
	ld   d, e                                        ; $561b: $53
	ld   e, e                                        ; $561c: $5b
	dec  de                                          ; $561d: $1b
	add  b                                           ; $561e: $80
	ld   c, [hl]                                     ; $561f: $4e
	add  b                                           ; $5620: $80
	xor  $05                                         ; $5621: $ee $05
	rst  $20                                         ; $5623: $e7
	daa                                              ; $5624: $27
	ld   b, h                                        ; $5625: $44
	push bc                                          ; $5626: $c5
	and  l                                           ; $5627: $a5
	dec  h                                           ; $5628: $25
	add  b                                           ; $5629: $80
	ld   bc, $fe05                                   ; $562a: $01 $05 $fe
	db   $f4                                         ; $562d: $f4
	cp   h                                           ; $562e: $bc
	or   e                                           ; $562f: $b3
	sub  c                                           ; $5630: $91
	sub  l                                           ; $5631: $95
	add  b                                           ; $5632: $80
	add  c                                           ; $5633: $81
	inc  b                                           ; $5634: $04
	ld   hl, $24e1                                   ; $5635: $21 $e1 $24
	inc  d                                           ; $5638: $14
	rrca                                             ; $5639: $0f
	add  b                                           ; $563a: $80
	ld   bc, $0080                                   ; $563b: $01 $80 $00
	add  b                                           ; $563e: $80
	ld   d, c                                        ; $563f: $51
	inc  b                                           ; $5640: $04
	dec  h                                           ; $5641: $25
	ld   h, l                                        ; $5642: $65

jr_096_5643:
	xor  a                                           ; $5643: $af
	ld   a, [hl+]                                    ; $5644: $2a

jr_096_5645:
	ld   a, [hl-]                                    ; $5645: $3a
	add  b                                           ; $5646: $80
	dec  d                                           ; $5647: $15
	rlca                                             ; $5648: $07
	add  e                                           ; $5649: $83
	add  d                                           ; $564a: $82
	ld   b, $88                                      ; $564b: $06 $88
	ld   b, b                                        ; $564d: $40
	db   $10                                         ; $564e: $10
	ld   l, e                                        ; $564f: $6b
	or   h                                           ; $5650: $b4
	add  b                                           ; $5651: $80
	inc  h                                           ; $5652: $24
	add  b                                           ; $5653: $80
	ld   bc, $3405                                   ; $5654: $01 $05 $34
	scf                                              ; $5657: $37
	ld   b, e                                        ; $5658: $43
	ld   a, a                                        ; $5659: $7f
	ld   c, a                                        ; $565a: $4f
	adc  a                                           ; $565b: $8f
	add  b                                           ; $565c: $80
	rlca                                             ; $565d: $07
	add  b                                           ; $565e: $80
	inc  bc                                          ; $565f: $03
	ld   [bc], a                                     ; $5660: $02
	xor  $11                                         ; $5661: $ee $11
	ld   bc, $0081                                   ; $5663: $01 $81 $00
	ld   bc, $8180                                   ; $5666: $01 $80 $81
	add  b                                           ; $5669: $80
	ld   bc, $020b                                   ; $566a: $01 $0b $02
	add  d                                           ; $566d: $82
	add  l                                           ; $566e: $85
	dec  b                                           ; $566f: $05
	add  hl, bc                                      ; $5670: $09
	adc  c                                           ; $5671: $89
	dec  sp                                          ; $5672: $3b
	cp   e                                           ; $5673: $bb
	and  h                                           ; $5674: $a4
	inc  h                                           ; $5675: $24
	ld   b, e                                        ; $5676: $43
	jp   $1d80                                       ; $5677: $c3 $80 $1d


	add  b                                           ; $567a: $80
	db   $fd                                         ; $567b: $fd
	dec  b                                           ; $567c: $05
	ccf                                              ; $567d: $3f
	jr   c, jr_096_56c9                              ; $567e: $38 $49

	ld   c, h                                        ; $5680: $4c
	inc  de                                          ; $5681: $13
	ld   de, $1b80                                   ; $5682: $11 $80 $1b
	add  b                                           ; $5685: $80
	or   $80                                         ; $5686: $f6 $80
	add  sp, -$80                                    ; $5688: $e8 $80
	sub  $80                                         ; $568a: $d6 $80
	call $9b80                                       ; $568c: $cd $80 $9b
	add  b                                           ; $568f: $80
	ld   d, a                                        ; $5690: $57
	add  b                                           ; $5691: $80
	adc  a                                           ; $5692: $8f
	add  b                                           ; $5693: $80
	or   c                                           ; $5694: $b1
	add  b                                           ; $5695: $80
	ld   sp, $5182                                   ; $5696: $31 $82 $51
	add  [hl]                                        ; $5699: $86
	ld   [hl], c                                     ; $569a: $71
	add  b                                           ; $569b: $80
	dec  d                                           ; $569c: $15
	add  b                                           ; $569d: $80
	ld   d, $82                                      ; $569e: $16 $82
	rla                                              ; $56a0: $17
	add  b                                           ; $56a1: $80
	ld   b, $80                                      ; $56a2: $06 $80
	dec  b                                           ; $56a4: $05
	add  b                                           ; $56a5: $80
	dec  d                                           ; $56a6: $15
	add  b                                           ; $56a7: $80
	inc  de                                          ; $56a8: $13
	add  h                                           ; $56a9: $84
	nop                                              ; $56aa: $00
	add  b                                           ; $56ab: $80
	rra                                              ; $56ac: $1f
	add  b                                           ; $56ad: $80
	inc  de                                          ; $56ae: $13
	add  b                                           ; $56af: $80
	dec  d                                           ; $56b0: $15
	nop                                              ; $56b1: $00
	ccf                                              ; $56b2: $3f
	add  b                                           ; $56b3: $80
	rra                                              ; $56b4: $1f
	ld   [bc], a                                     ; $56b5: $02
	add  hl, de                                      ; $56b6: $19
	ld   h, $18                                      ; $56b7: $26 $18
	add  b                                           ; $56b9: $80
	nop                                              ; $56ba: $00
	ld   bc, $0018                                   ; $56bb: $01 $18 $00
	add  b                                           ; $56be: $80
	rst  $38                                         ; $56bf: $ff
	add  b                                           ; $56c0: $80
	jr   jr_096_5643                                 ; $56c1: $18 $80

	jr   z, jr_096_5645                              ; $56c3: $28 $80

	ret  z                                           ; $56c5: $c8

	rlca                                             ; $56c6: $07
	rst  $38                                         ; $56c7: $ff
	cp   a                                           ; $56c8: $bf

jr_096_56c9:
	ld   h, b                                        ; $56c9: $60
	ld   a, $1c                                      ; $56ca: $3e $1c
	inc  bc                                          ; $56cc: $03
	ld   bc, $800c                                   ; $56cd: $01 $0c $80
	di                                               ; $56d0: $f3
	ld   bc, $ccc0                                   ; $56d1: $01 $c0 $cc
	add  b                                           ; $56d4: $80
	xor  d                                           ; $56d5: $aa
	add  b                                           ; $56d6: $80
	sbc  c                                           ; $56d7: $99
	add  b                                           ; $56d8: $80
	adc  c                                           ; $56d9: $89
	rlca                                             ; $56da: $07
	jr   nc, jr_096_570e                             ; $56db: $30 $31

	dec  b                                           ; $56dd: $05
	push af                                          ; $56de: $f5
	pop  de                                          ; $56df: $d1
	ld   sp, $c1d1                                   ; $56e0: $31 $d1 $c1
	add  b                                           ; $56e3: $80
	ld   b, l                                        ; $56e4: $45
	nop                                              ; $56e5: $00
	ld   bc, $4183                                   ; $56e6: $01 $83 $41
	nop                                              ; $56e9: $00
	cp   [hl]                                        ; $56ea: $be
	adc  e                                           ; $56eb: $8b
	nop                                              ; $56ec: $00
	add  b                                           ; $56ed: $80
	ldh  a, [$8e]                                    ; $56ee: $f0 $8e
	nop                                              ; $56f0: $00
	adc  b                                           ; $56f1: $88
	inc  bc                                          ; $56f2: $03
	add  b                                           ; $56f3: $80
	rlca                                             ; $56f4: $07
	add  b                                           ; $56f5: $80
	rra                                              ; $56f6: $1f
	inc  bc                                          ; $56f7: $03
	cp   a                                           ; $56f8: $bf
	ret  nz                                          ; $56f9: $c0

	sub  e                                           ; $56fa: $93
	inc  de                                          ; $56fb: $13
	add  b                                           ; $56fc: $80
	dec  b                                           ; $56fd: $05
	add  b                                           ; $56fe: $80
	inc  b                                           ; $56ff: $04
	dec  b                                           ; $5700: $05
	add  hl, bc                                      ; $5701: $09
	adc  c                                           ; $5702: $89
	add  b                                           ; $5703: $80
	add  c                                           ; $5704: $81
	add  b                                           ; $5705: $80
	ret  nz                                          ; $5706: $c0

	add  b                                           ; $5707: $80
	jp   nz, $c303                                   ; $5708: $c2 $03 $c3

	ld   b, e                                        ; $570b: $43
	ld   [hl+], a                                    ; $570c: $22
	ld   h, e                                        ; $570d: $63

jr_096_570e:
	add  d                                           ; $570e: $82
	ld   [hl], b                                     ; $570f: $70
	add  b                                           ; $5710: $80
	inc  de                                          ; $5711: $13
	add  hl, bc                                      ; $5712: $09
	db   $e3                                         ; $5713: $e3
	ld   h, e                                        ; $5714: $63
	ld   [hl], b                                     ; $5715: $70
	db   $10                                         ; $5716: $10
	ld   [de], a                                     ; $5717: $12
	ld   [bc], a                                     ; $5718: $02
	pop  hl                                          ; $5719: $e1
	add  sp, $26                                     ; $571a: $e8 $26
	rst  JumpTable                                         ; $571c: $df
	add  b                                           ; $571d: $80
	nop                                              ; $571e: $00
	add  b                                           ; $571f: $80
	ld   h, a                                        ; $5720: $67
	add  b                                           ; $5721: $80
	rst  ToBoot                                         ; $5722: $c7
	add  b                                           ; $5723: $80
	or   d                                           ; $5724: $b2
	add  b                                           ; $5725: $80
	ld   [hl], h                                     ; $5726: $74
	add  b                                           ; $5727: $80
	inc  de                                          ; $5728: $13
	inc  bc                                          ; $5729: $03
	nop                                              ; $572a: $00
	ldh  [$81], a                                    ; $572b: $e0 $81
	ld   [hl], c                                     ; $572d: $71
	add  b                                           ; $572e: $80
	ld   de, $9180                                   ; $572f: $11 $80 $91
	ld   bc, $5554                                   ; $5732: $01 $54 $55
	add  d                                           ; $5735: $82
	rst  $10                                         ; $5736: $d7
	add  b                                           ; $5737: $80
	rla                                              ; $5738: $17
	inc  bc                                          ; $5739: $03
	db   $d3                                         ; $573a: $d3
	rst  $10                                         ; $573b: $d7
	dec  d                                           ; $573c: $15
	nop                                              ; $573d: $00
	add  b                                           ; $573e: $80
	rla                                              ; $573f: $17
	add  b                                           ; $5740: $80
	dec  de                                          ; $5741: $1b
	add  b                                           ; $5742: $80
	dec  e                                           ; $5743: $1d
	add  b                                           ; $5744: $80
	ld   c, $80                                      ; $5745: $0e $80
	db   $10                                         ; $5747: $10
	add  d                                           ; $5748: $82
	rra                                              ; $5749: $1f
	ld   b, $24                                      ; $574a: $06 $24
	sub  b                                           ; $574c: $90
	sub  a                                           ; $574d: $97
	sub  b                                           ; $574e: $90
	or   d                                           ; $574f: $b2
	sub  d                                           ; $5750: $92
	sub  e                                           ; $5751: $93
	add  c                                           ; $5752: $81
	sub  b                                           ; $5753: $90
	add  b                                           ; $5754: $80
	or   a                                           ; $5755: $b7
	add  b                                           ; $5756: $80
	sub  b                                           ; $5757: $90
	add  b                                           ; $5758: $80
	or   a                                           ; $5759: $b7
	nop                                              ; $575a: $00
	ld   l, d                                        ; $575b: $6a
	add  e                                           ; $575c: $83
	dec  b                                           ; $575d: $05
	inc  bc                                          ; $575e: $03
	db   $fd                                         ; $575f: $fd
	inc  bc                                          ; $5760: $03
	ld   bc, $8000                                   ; $5761: $01 $00 $80
	ldh  [$80], a                                    ; $5764: $e0 $80
	rra                                              ; $5766: $1f
	add  b                                           ; $5767: $80
	ldh  [$03], a                                    ; $5768: $e0 $03
	add  b                                           ; $576a: $80
	ld   a, [hl]                                     ; $576b: $7e
	ld   a, [bc]                                     ; $576c: $0a
	dec  bc                                          ; $576d: $0b
	add  d                                           ; $576e: $82
	ld   a, [bc]                                     ; $576f: $0a
	ld   bc, $03fc                                   ; $5770: $01 $fc $03
	add  b                                           ; $5773: $80
	nop                                              ; $5774: $00
	add  b                                           ; $5775: $80
	ldh  a, [$80]                                    ; $5776: $f0 $80
	rlca                                             ; $5778: $07
	nop                                              ; $5779: $00
	nop                                              ; $577a: $00
	add  b                                           ; $577b: $80
	ret  nz                                          ; $577c: $c0

	ld   bc, $59c1                                   ; $577d: $01 $c1 $59
	add  b                                           ; $5780: $80
	ld   b, c                                        ; $5781: $41
	inc  bc                                          ; $5782: $03
	ld   b, d                                        ; $5783: $42
	ld   c, d                                        ; $5784: $4a
	ld   b, h                                        ; $5785: $44
	call nc, Call_096_4480                           ; $5786: $d4 $80 $44
	inc  bc                                          ; $5789: $03
	ld   b, l                                        ; $578a: $45
	db   $dd                                         ; $578b: $dd
	jp   c, $8042                                    ; $578c: $da $42 $80

	ld   bc, $e007                                   ; $578f: $01 $07 $e0
	ld   h, h                                        ; $5792: $64
	db   $10                                         ; $5793: $10
	ld   h, h                                        ; $5794: $64
	add  hl, bc                                      ; $5795: $09
	jr   jr_096_57a8                                 ; $5796: $18 $10

	adc  [hl]                                        ; $5798: $8e
	add  b                                           ; $5799: $80
	add  b                                           ; $579a: $80
	add  c                                           ; $579b: $81
	nop                                              ; $579c: $00
	inc  bc                                          ; $579d: $03
	add  d                                           ; $579e: $82
	inc  bc                                          ; $579f: $03
	add  d                                           ; $57a0: $82
	inc  bc                                          ; $57a1: $03
	add  b                                           ; $57a2: $80
	ld   b, a                                        ; $57a3: $47
	ld   bc, $c444                                   ; $57a4: $01 $44 $c4
	add  h                                           ; $57a7: $84

jr_096_57a8:
	nop                                              ; $57a8: $00
	add  b                                           ; $57a9: $80
	inc  b                                           ; $57aa: $04
	add  hl, bc                                      ; $57ab: $09
	db   $fd                                         ; $57ac: $fd
	inc  bc                                          ; $57ad: $03
	scf                                              ; $57ae: $37
	sub  [hl]                                        ; $57af: $96
	xor  [hl]                                        ; $57b0: $ae
	ld   c, c                                        ; $57b1: $49
	sbc  a                                           ; $57b2: $9f
	dec  sp                                          ; $57b3: $3b
	dec  e                                           ; $57b4: $1d
	ld   bc, $0080                                   ; $57b5: $01 $80 $00
	add  d                                           ; $57b8: $82
	ld   bc, $fc0a                                   ; $57b9: $01 $0a $fc
	jp   Jump_096_41c0                               ; $57bc: $c3 $c0 $41


	ld   b, e                                        ; $57bf: $43
	adc  $cc                                         ; $57c0: $ce $cc
	add  $ce                                         ; $57c2: $c6 $ce
	jp   c, $81d2                                    ; $57c4: $da $d2 $81

	ld   [$eb22], a                                  ; $57c7: $ea $22 $eb
	push af                                          ; $57ca: $f5
	db   $f4                                         ; $57cb: $f4
	cp   e                                           ; $57cc: $bb
	sbc  e                                           ; $57cd: $9b
	ld   hl, sp-$47                                  ; $57ce: $f8 $b9
	ei                                               ; $57d0: $fb
	sbc  e                                           ; $57d1: $9b
	ei                                               ; $57d2: $fb
	ld   a, [de]                                     ; $57d3: $1a
	ld   a, e                                        ; $57d4: $7b
	ld   l, c                                        ; $57d5: $69
	ei                                               ; $57d6: $fb
	cp   d                                           ; $57d7: $ba
	ei                                               ; $57d8: $fb
	sbc  e                                           ; $57d9: $9b
	db   $db                                         ; $57da: $db
	inc  b                                           ; $57db: $04
	inc  c                                           ; $57dc: $0c
	ld   a, a                                        ; $57dd: $7f
	add  e                                           ; $57de: $83
	ld   [hl], e                                     ; $57df: $73
	ldh  a, [$7f]                                    ; $57e0: $f0 $7f
	rst  JumpTable                                         ; $57e2: $df
	ld   a, l                                        ; $57e3: $7d
	rst  $30                                         ; $57e4: $f7
	ld   e, a                                        ; $57e5: $5f
	rst  $38                                         ; $57e6: $ff
	dec  d                                           ; $57e7: $15
	rst  $38                                         ; $57e8: $ff
	pop  hl                                          ; $57e9: $e1
	rst  $38                                         ; $57ea: $ff
	rlca                                             ; $57eb: $07
	add  c                                           ; $57ec: $81
	rla                                              ; $57ed: $17
	inc  bc                                          ; $57ee: $03
	sub  c                                           ; $57ef: $91
	ld   de, $1777                                   ; $57f0: $11 $77 $17
	add  b                                           ; $57f3: $80
	rst  $10                                         ; $57f4: $d7
	add  h                                           ; $57f5: $84
	rst  $30                                         ; $57f6: $f7
	nop                                              ; $57f7: $00
	xor  $81                                         ; $57f8: $ee $81
	rra                                              ; $57fa: $1f
	add  b                                           ; $57fb: $80
	ld   e, $80                                      ; $57fc: $1e $80
	db   $10                                         ; $57fe: $10
	add  b                                           ; $57ff: $80
	inc  de                                          ; $5800: $13
	add  b                                           ; $5801: $80
	db   $10                                         ; $5802: $10
	dec  b                                           ; $5803: $05
	inc  de                                          ; $5804: $13
	inc  bc                                          ; $5805: $03
	inc  de                                          ; $5806: $13
	db   $10                                         ; $5807: $10
	inc  sp                                          ; $5808: $33
	or   b                                           ; $5809: $b0
	add  e                                           ; $580a: $83
	or   d                                           ; $580b: $b2
	add  c                                           ; $580c: $81
	ld   [hl-], a                                    ; $580d: $32
	add  d                                           ; $580e: $82
	ld   [hl], $80                                   ; $580f: $36 $80
	jr   nc, jr_096_5815                             ; $5811: $30 $02

	rst  $28                                         ; $5813: $ef
	rst  $38                                         ; $5814: $ff

jr_096_5815:
	db   $ed                                         ; $5815: $ed
	add  c                                           ; $5816: $81
	pop  de                                          ; $5817: $d1
	add  c                                           ; $5818: $81
	db   $fd                                         ; $5819: $fd
	nop                                              ; $581a: $00
	pop  bc                                          ; $581b: $c1
	add  h                                           ; $581c: $84
	rst  $38                                         ; $581d: $ff
	add  b                                           ; $581e: $80
	ld   hl, sp+$00                                  ; $581f: $f8 $00
	or   [hl]                                        ; $5821: $b6
	add  c                                           ; $5822: $81
	ld   b, l                                        ; $5823: $45
	add  c                                           ; $5824: $81
	rst  $30                                         ; $5825: $f7
	nop                                              ; $5826: $00
	inc  b                                           ; $5827: $04
	add  e                                           ; $5828: $83
	rst  $38                                         ; $5829: $ff
	inc  b                                           ; $582a: $04
	rlca                                             ; $582b: $07
	ld   hl, sp+$41                                  ; $582c: $f8 $41
	db   $dd                                         ; $582e: $dd
	ld   d, h                                        ; $582f: $54
	add  b                                           ; $5830: $80
	ld   d, l                                        ; $5831: $55
	add  b                                           ; $5832: $80
	push de                                          ; $5833: $d5
	inc  bc                                          ; $5834: $03
	db   $dd                                         ; $5835: $dd
	ld   e, l                                        ; $5836: $5d
	reti                                             ; $5837: $d9


	pop  de                                          ; $5838: $d1
	add  d                                           ; $5839: $82
	db   $dd                                         ; $583a: $dd
	nop                                              ; $583b: $00
	ld   a, a                                        ; $583c: $7f
	add  b                                           ; $583d: $80
	ld   b, b                                        ; $583e: $40
	add  b                                           ; $583f: $80
	add  b                                           ; $5840: $80
	nop                                              ; $5841: $00
	nop                                              ; $5842: $00
	add  c                                           ; $5843: $81
	jr   nz, jr_096_5847                             ; $5844: $20 $01

	ld   b, b                                        ; $5846: $40

jr_096_5847:
	ld   d, b                                        ; $5847: $50
	add  b                                           ; $5848: $80
	db   $10                                         ; $5849: $10
	inc  b                                           ; $584a: $04
	nop                                              ; $584b: $00
	ld   [$f000], sp                                 ; $584c: $08 $00 $f0
	inc  c                                           ; $584f: $0c
	add  b                                           ; $5850: $80
	ld   [rRAMG], sp                                 ; $5851: $08 $00 $00
	add  c                                           ; $5854: $81
	ld   a, [bc]                                     ; $5855: $0a
	rlca                                             ; $5856: $07
	ld   c, $0c                                      ; $5857: $0e $0c
	ld   c, h                                        ; $5859: $4c
	ld   b, b                                        ; $585a: $40
	ld   d, l                                        ; $585b: $55
	ld   [hl], $63                                   ; $585c: $36 $63
	nop                                              ; $585e: $00
	adc  c                                           ; $585f: $89
	inc  bc                                          ; $5860: $03
	dec  c                                           ; $5861: $0d
	ld   b, e                                        ; $5862: $43
	add  a                                           ; $5863: $87
	ld   b, a                                        ; $5864: $47
	add  a                                           ; $5865: $87
	ld   b, $ff                                      ; $5866: $06 $ff
	ret  z                                           ; $5868: $c8

	ret  nz                                          ; $5869: $c0

	ld   sp, hl                                      ; $586a: $f9
	push af                                          ; $586b: $f5
	push hl                                          ; $586c: $e5
	db   $e4                                         ; $586d: $e4
	adc  l                                           ; $586e: $8d
	add  h                                           ; $586f: $84
	add  b                                           ; $5870: $80
	and  h                                           ; $5871: $a4
	ld   bc, $2d24                                   ; $5872: $01 $24 $2d
	add  b                                           ; $5875: $80
	inc  l                                           ; $5876: $2c
	ld   a, [bc]                                     ; $5877: $0a
	dec  l                                           ; $5878: $2d
	jp   c, $1b3b                                    ; $5879: $da $3b $1b

	add  sp, -$38                                    ; $587c: $e8 $c8
	ei                                               ; $587e: $fb
	dec  sp                                          ; $587f: $3b
	ei                                               ; $5880: $fb
	adc  b                                           ; $5881: $88
	cp   e                                           ; $5882: $bb
	add  b                                           ; $5883: $80
	cp   c                                           ; $5884: $b9
	inc  b                                           ; $5885: $04
	ret  c                                           ; $5886: $d8

	cp   e                                           ; $5887: $bb
	sbc  b                                           ; $5888: $98
	ei                                               ; $5889: $fb
	inc  b                                           ; $588a: $04
	add  b                                           ; $588b: $80
	rst  $38                                         ; $588c: $ff
	ld   b, $7f                                      ; $588d: $06 $7f
	ld   [de], a                                     ; $588f: $12
	ld   [$fa8b], a                                  ; $5890: $ea $8b $fa
	add  hl, bc                                      ; $5893: $09
	ei                                               ; $5894: $fb
	add  b                                           ; $5895: $80
	cp   d                                           ; $5896: $ba
	inc  b                                           ; $5897: $04
	sbc  e                                           ; $5898: $9b
	ei                                               ; $5899: $fb
	sbc  d                                           ; $589a: $9a
	ld   a, [$83fd]                                  ; $589b: $fa $fd $83
	rla                                              ; $589e: $17
	nop                                              ; $589f: $00
	rst  $30                                         ; $58a0: $f7
	add  e                                           ; $58a1: $83
	rla                                              ; $58a2: $17
	add  b                                           ; $58a3: $80
	ld   [hl], a                                     ; $58a4: $77
	add  b                                           ; $58a5: $80
	scf                                              ; $58a6: $37
	nop                                              ; $58a7: $00
	push af                                          ; $58a8: $f5
	add  c                                           ; $58a9: $81
	rra                                              ; $58aa: $1f
	rlca                                             ; $58ab: $07
	rrca                                             ; $58ac: $0f
	rra                                              ; $58ad: $1f
	inc  e                                           ; $58ae: $1c
	rra                                              ; $58af: $1f
	inc  e                                           ; $58b0: $1c
	rra                                              ; $58b1: $1f
	inc  e                                           ; $58b2: $1c
	inc  c                                           ; $58b3: $0c
	add  b                                           ; $58b4: $80
	rra                                              ; $58b5: $1f
	add  b                                           ; $58b6: $80
	ld   c, $00                                      ; $58b7: $0e $00
	add  hl, sp                                      ; $58b9: $39
	add  l                                           ; $58ba: $85
	ld   [hl-], a                                    ; $58bb: $32
	nop                                              ; $58bc: $00
	db   $10                                         ; $58bd: $10
	add  d                                           ; $58be: $82
	scf                                              ; $58bf: $37
	add  c                                           ; $58c0: $81
	ccf                                              ; $58c1: $3f
	nop                                              ; $58c2: $00
	ret  nz                                          ; $58c3: $c0

	add  l                                           ; $58c4: $85
	rst  $38                                         ; $58c5: $ff
	nop                                              ; $58c6: $00
	nop                                              ; $58c7: $00
	add  l                                           ; $58c8: $85
	rst  $38                                         ; $58c9: $ff
	nop                                              ; $58ca: $00
	nop                                              ; $58cb: $00
	add  l                                           ; $58cc: $85
	rst  $38                                         ; $58cd: $ff
	nop                                              ; $58ce: $00
	nop                                              ; $58cf: $00
	add  e                                           ; $58d0: $83
	rst  $38                                         ; $58d1: $ff
	add  b                                           ; $58d2: $80
	db   $fc                                         ; $58d3: $fc
	nop                                              ; $58d4: $00
	ld   h, d                                        ; $58d5: $62
	add  e                                           ; $58d6: $83
	db   $dd                                         ; $58d7: $dd
	ld   [bc], a                                     ; $58d8: $02
	ret  nz                                          ; $58d9: $c0

	rst  JumpTable                                         ; $58da: $df
	ld   e, a                                        ; $58db: $5f
	add  e                                           ; $58dc: $83
	rst  JumpTable                                         ; $58dd: $df
	add  b                                           ; $58de: $80
	ld   b, b                                        ; $58df: $40
	ld   b, $d4                                      ; $58e0: $06 $d4
	ld   [$0c0e], sp                                 ; $58e2: $08 $0e $0c
	dec  c                                           ; $58e5: $0d
	inc  c                                           ; $58e6: $0c
	nop                                              ; $58e7: $00
	add  b                                           ; $58e8: $80
	db   $fc                                         ; $58e9: $fc
	add  c                                           ; $58ea: $81
	ld   sp, hl                                      ; $58eb: $f9
	rlca                                             ; $58ec: $07
	db   $fd                                         ; $58ed: $fd
	ldh  a, [rSC]                                    ; $58ee: $f0 $02
	nop                                              ; $58f0: $00
	ld   b, $0b                                      ; $58f1: $06 $0b
	ld   [bc], a                                     ; $58f3: $02
	ld   b, $80                                      ; $58f4: $06 $80
	add  b                                           ; $58f6: $80
	ld   [$40c0], sp                                 ; $58f7: $08 $c0 $40
	ld   h, b                                        ; $58fa: $60
	and  b                                           ; $58fb: $a0
	ld   a, c                                        ; $58fc: $79
	add  hl, bc                                      ; $58fd: $09
	cpl                                              ; $58fe: $2f
	stop                                             ; $58ff: $10 $00
	add  b                                           ; $5901: $80
	rrca                                             ; $5902: $0f
	add  b                                           ; $5903: $80
	inc  c                                           ; $5904: $0c
	ld   de, $1909                                   ; $5905: $11 $09 $19
	inc  de                                          ; $5908: $13
	inc  sp                                          ; $5909: $33
	daa                                              ; $590a: $27
	ld   h, e                                        ; $590b: $63
	ld   c, e                                        ; $590c: $4b
	jp   $8692                                       ; $590d: $c3 $92 $86


	ld   h, l                                        ; $5910: $65
	ld   c, l                                        ; $5911: $4d
	jp   $adf7                                       ; $5912: $c3 $f7 $ad


	and  h                                           ; $5915: $a4
	xor  l                                           ; $5916: $ad
	and  h                                           ; $5917: $a4
	add  d                                           ; $5918: $82
	adc  l                                           ; $5919: $8d
	inc  b                                           ; $591a: $04
	xor  l                                           ; $591b: $ad
	and  h                                           ; $591c: $a4
	ld   h, h                                        ; $591d: $64
	ld   l, a                                        ; $591e: $6f
	pop  af                                          ; $591f: $f1
	add  c                                           ; $5920: $81
	rst  $30                                         ; $5921: $f7
	inc  bc                                          ; $5922: $03
	ei                                               ; $5923: $fb
	ld   [$08fb], sp                                 ; $5924: $08 $fb $08
	add  c                                           ; $5927: $81
	ei                                               ; $5928: $fb
	add  b                                           ; $5929: $80
	ld   hl, sp-$80                                  ; $592a: $f8 $80
	ld   [$fb84], sp                                 ; $592c: $08 $84 $fb
	dec  b                                           ; $592f: $05
	ld   a, [bc]                                     ; $5930: $0a
	ld   a, [$fb0b]                                  ; $5931: $fa $0b $fb
	ld   a, [$80fe]                                  ; $5934: $fa $fe $80
	nop                                              ; $5937: $00
	add  b                                           ; $5938: $80
	ld   a, a                                        ; $5939: $7f
	nop                                              ; $593a: $00
	rst  $38                                         ; $593b: $ff
	add  b                                           ; $593c: $80
	cp   $01                                         ; $593d: $fe $01
	add  c                                           ; $593f: $81
	ld   h, a                                        ; $5940: $67
	add  c                                           ; $5941: $81
	rla                                              ; $5942: $17
	add  b                                           ; $5943: $80
	rst  $30                                         ; $5944: $f7
	add  d                                           ; $5945: $82
	rla                                              ; $5946: $17
	add  c                                           ; $5947: $81
	rst  $30                                         ; $5948: $f7
	add  b                                           ; $5949: $80
	rla                                              ; $594a: $17
	add  b                                           ; $594b: $80
	rst  $30                                         ; $594c: $f7
	nop                                              ; $594d: $00
	dec  e                                           ; $594e: $1d
	add  b                                           ; $594f: $80
	rra                                              ; $5950: $1f
	add  d                                           ; $5951: $82
	inc  c                                           ; $5952: $0c
	inc  b                                           ; $5953: $04
	rrca                                             ; $5954: $0f
	inc  e                                           ; $5955: $1c
	rrca                                             ; $5956: $0f
	inc  c                                           ; $5957: $0c
	inc  d                                           ; $5958: $14
	add  c                                           ; $5959: $81
	nop                                              ; $595a: $00
	ld   bc, $3e1e                                   ; $595b: $01 $1e $3e
	add  d                                           ; $595e: $82
	nop                                              ; $595f: $00
	add  b                                           ; $5960: $80
	ld   bc, $3f81                                   ; $5961: $01 $81 $3f
	add  b                                           ; $5964: $80
	ld   a, [hl+]                                    ; $5965: $2a
	add  b                                           ; $5966: $80
	dec  d                                           ; $5967: $15
	ld   bc, $d52a                                   ; $5968: $01 $2a $d5
	add  e                                           ; $596b: $83
	nop                                              ; $596c: $00
	add  c                                           ; $596d: $81
	rst  $38                                         ; $596e: $ff
	add  b                                           ; $596f: $80
	ld   d, l                                        ; $5970: $55
	add  b                                           ; $5971: $80
	xor  d                                           ; $5972: $aa
	add  b                                           ; $5973: $80
	ld   d, l                                        ; $5974: $55
	ld   bc, $5fa0                                   ; $5975: $01 $a0 $5f
	add  c                                           ; $5978: $81
	nop                                              ; $5979: $00
	add  b                                           ; $597a: $80
	ccf                                              ; $597b: $3f
	nop                                              ; $597c: $00
	rst  $38                                         ; $597d: $ff
	add  b                                           ; $597e: $80
	ld   [$5580], a                                  ; $597f: $ea $80 $55
	add  hl, bc                                      ; $5982: $09
	xor  d                                           ; $5983: $aa
	xor  e                                           ; $5984: $ab
	ld   d, b                                        ; $5985: $50
	ld   e, [hl]                                     ; $5986: $5e
	nop                                              ; $5987: $00
	sub  b                                           ; $5988: $90
	ld   b, b                                        ; $5989: $40
	daa                                              ; $598a: $27
	rlca                                             ; $598b: $07
	rst  $38                                         ; $598c: $ff
	add  b                                           ; $598d: $80
	db   $fc                                         ; $598e: $fc
	dec  b                                           ; $598f: $05
	xor  b                                           ; $5990: $a8
	xor  d                                           ; $5991: $aa
	ld   b, d                                        ; $5992: $42
	ld   a, d                                        ; $5993: $7a
	ld   a, [bc]                                     ; $5994: $0a
	push bc                                          ; $5995: $c5
	add  b                                           ; $5996: $80
	inc  b                                           ; $5997: $04

jr_096_5998:
	add  hl, bc                                      ; $5998: $09
	ld   b, h                                        ; $5999: $44
	ld   e, a                                        ; $599a: $5f

jr_096_599b:
	nop                                              ; $599b: $00
	pop  hl                                          ; $599c: $e1
	ret  nz                                          ; $599d: $c0

	ret  nc                                          ; $599e: $d0

	nop                                              ; $599f: $00
	ld   b, b                                        ; $59a0: $40
	nop                                              ; $59a1: $00
	add  b                                           ; $59a2: $80
	add  e                                           ; $59a3: $83
	nop                                              ; $59a4: $00
	add  hl, bc                                      ; $59a5: $09
	ld   bc, $a100                                   ; $59a6: $01 $00 $a1
	nop                                              ; $59a9: $00
	ld   b, b                                        ; $59aa: $40
	add  b                                           ; $59ab: $80
	inc  hl                                          ; $59ac: $23
	ld   b, b                                        ; $59ad: $40
	ld   e, a                                        ; $59ae: $5f
	nop                                              ; $59af: $00
	add  b                                           ; $59b0: $80
	cp   d                                           ; $59b1: $ba
	nop                                              ; $59b2: $00
	cp   $81                                         ; $59b3: $fe $81
	ld   a, h                                        ; $59b5: $7c
	add  b                                           ; $59b6: $80
	ld   a, c                                        ; $59b7: $79
	inc  b                                           ; $59b8: $04
	call $f703                                       ; $59b9: $cd $03 $f7
	rlca                                             ; $59bc: $07
	rst  ToBoot                                         ; $59bd: $c7
	add  c                                           ; $59be: $81
	rlca                                             ; $59bf: $07
	add  d                                           ; $59c0: $82
	rrca                                             ; $59c1: $0f
	add  b                                           ; $59c2: $80
	inc  c                                           ; $59c3: $0c
	add  b                                           ; $59c4: $80
	nop                                              ; $59c5: $00
	nop                                              ; $59c6: $00
	rst  $38                                         ; $59c7: $ff
	add  b                                           ; $59c8: $80
	ei                                               ; $59c9: $fb
	add  b                                           ; $59ca: $80
	ld   hl, sp-$80                                  ; $59cb: $f8 $80
	ldh  a, [c]                                      ; $59cd: $f2
	inc  e                                           ; $59ce: $1c
	rst  $20                                         ; $59cf: $e7
	and  a                                           ; $59d0: $a7
	add  a                                           ; $59d1: $87
	ld   b, b                                        ; $59d2: $40
	db   $10                                         ; $59d3: $10
	sub  b                                           ; $59d4: $90
	jr   z, jr_096_5a37                              ; $59d5: $28 $60

	db   $10                                         ; $59d7: $10
	ld   e, a                                        ; $59d8: $5f
	ld   [$0b38], sp                                 ; $59d9: $08 $38 $0b
	db   $db                                         ; $59dc: $db
	dec  e                                           ; $59dd: $1d
	add  d                                           ; $59de: $82
	nop                                              ; $59df: $00
	ldh  a, [rP1]                                    ; $59e0: $f0 $00
	inc  l                                           ; $59e2: $2c
	jr   nz, jr_096_599b                             ; $59e3: $20 $b6

	inc  [hl]                                        ; $59e5: $34
	ld   l, a                                        ; $59e6: $6f
	ld   h, [hl]                                     ; $59e7: $66
	add  hl, bc                                      ; $59e8: $09
	ld   a, [hl]                                     ; $59e9: $7e
	nop                                              ; $59ea: $00
	add  b                                           ; $59eb: $80
	add  b                                           ; $59ec: $80
	db   $fc                                         ; $59ed: $fc
	add  b                                           ; $59ee: $80
	inc  bc                                          ; $59ef: $03
	add  h                                           ; $59f0: $84
	nop                                              ; $59f1: $00
	ld   [bc], a                                     ; $59f2: $02
	add  b                                           ; $59f3: $80
	nop                                              ; $59f4: $00
	sbc  c                                           ; $59f5: $99
	add  e                                           ; $59f6: $83
	rla                                              ; $59f7: $17
	add  b                                           ; $59f8: $80
	rst  $30                                         ; $59f9: $f7
	add  d                                           ; $59fa: $82
	rla                                              ; $59fb: $17
	add  b                                           ; $59fc: $80
	ld   de, $1780                                   ; $59fd: $11 $80 $17
	nop                                              ; $5a00: $00
	xor  $83                                         ; $5a01: $ee $83
	nop                                              ; $5a03: $00
	add  b                                           ; $5a04: $80
	inc  bc                                          ; $5a05: $03
	add  b                                           ; $5a06: $80
	rrca                                             ; $5a07: $0f
	add  l                                           ; $5a08: $85
	rra                                              ; $5a09: $1f
	add  b                                           ; $5a0a: $80
	db   $10                                         ; $5a0b: $10
	add  c                                           ; $5a0c: $81
	nop                                              ; $5a0d: $00
	inc  bc                                          ; $5a0e: $03
	rra                                              ; $5a0f: $1f
	nop                                              ; $5a10: $00
	jr   nz, jr_096_5a13                             ; $5a11: $20 $00

jr_096_5a13:
	add  b                                           ; $5a13: $80
	ld   a, [de]                                     ; $5a14: $1a
	add  b                                           ; $5a15: $80
	jr   nz, jr_096_5998                             ; $5a16: $20 $80

	nop                                              ; $5a18: $00
	nop                                              ; $5a19: $00
	ccf                                              ; $5a1a: $3f
	add  c                                           ; $5a1b: $81
	nop                                              ; $5a1c: $00
	inc  bc                                          ; $5a1d: $03
	dec  a                                           ; $5a1e: $3d
	nop                                              ; $5a1f: $00
	add  $00                                         ; $5a20: $c6 $00
	add  b                                           ; $5a22: $80
	ld   l, b                                        ; $5a23: $68
	ld   bc, $808c                                   ; $5a24: $01 $8c $80
	add  d                                           ; $5a27: $82
	nop                                              ; $5a28: $00
	ld   [bc], a                                     ; $5a29: $02
	add  sp, $00                                     ; $5a2a: $e8 $00
	ret  nz                                          ; $5a2c: $c0

	add  b                                           ; $5a2d: $80
	rlca                                             ; $5a2e: $07
	add  b                                           ; $5a2f: $80
	rrca                                             ; $5a30: $0f
	ld   bc, $7f1f                                   ; $5a31: $01 $1f $7f
	add  l                                           ; $5a34: $85
	ccf                                              ; $5a35: $3f
	nop                                              ; $5a36: $00

jr_096_5a37:
	ld   [hl], l                                     ; $5a37: $75
	add  b                                           ; $5a38: $80
	call nz, $e482                                   ; $5a39: $c4 $82 $e4
	ld   bc, $f7f4                                   ; $5a3c: $01 $f4 $f7
	add  e                                           ; $5a3f: $83
	or   $80                                         ; $5a40: $f6 $80
	cp   $09                                         ; $5a42: $fe $09
	call c, $3202                                    ; $5a44: $dc $02 $32
	ld   bc, $0305                                   ; $5a47: $01 $05 $03
	rrca                                             ; $5a4a: $0f
	inc  bc                                          ; $5a4b: $03
	dec  de                                          ; $5a4c: $1b
	inc  bc                                          ; $5a4d: $03
	add  h                                           ; $5a4e: $84
	ld   bc, $b70b                                   ; $5a4f: $01 $0b $b7
	ld   c, b                                        ; $5a52: $48
	jr   nz, jr_096_5a78                             ; $5a53: $20 $23

	ld   [hl+], a                                    ; $5a55: $22
	add  d                                           ; $5a56: $82
	sub  c                                           ; $5a57: $91
	sub  l                                           ; $5a58: $95
	rst  $10                                         ; $5a59: $d7
	ld   d, h                                        ; $5a5a: $54
	ld   d, l                                        ; $5a5b: $55
	ld   [hl], $80                                   ; $5a5c: $36 $80
	inc  [hl]                                        ; $5a5e: $34
	add  b                                           ; $5a5f: $80
	scf                                              ; $5a60: $37
	dec  bc                                          ; $5a61: $0b
	cp   c                                           ; $5a62: $b9
	nop                                              ; $5a63: $00
	add  e                                           ; $5a64: $83
	nop                                              ; $5a65: $00
	ld   b, [hl]                                     ; $5a66: $46
	add  b                                           ; $5a67: $80
	adc  h                                           ; $5a68: $8c
	nop                                              ; $5a69: $00
	ld   a, b                                        ; $5a6a: $78
	add  b                                           ; $5a6b: $80
	inc  l                                           ; $5a6c: $2c
	inc  e                                           ; $5a6d: $1c
	add  b                                           ; $5a6e: $80
	ld   hl, sp-$80                                  ; $5a6f: $f8 $80
	ldh  a, [rAUD1ENV]                               ; $5a71: $f0 $12
	ld   hl, $2000                                   ; $5a73: $21 $00 $20
	nop                                              ; $5a76: $00
	inc  bc                                          ; $5a77: $03

jr_096_5a78:
	ld   bc, $0307                                   ; $5a78: $01 $07 $03
	rrca                                             ; $5a7b: $0f
	ld   b, $1e                                      ; $5a7c: $06 $1e
	rrca                                             ; $5a7e: $0f
	ccf                                              ; $5a7f: $3f
	rra                                              ; $5a80: $1f
	ld   [hl], a                                     ; $5a81: $77
	scf                                              ; $5a82: $37
	rst  $38                                         ; $5a83: $ff
	ld   b, c                                        ; $5a84: $41
	pop  bc                                          ; $5a85: $c1
	add  b                                           ; $5a86: $80
	add  b                                           ; $5a87: $80
	add  b                                           ; $5a88: $80
	or   b                                           ; $5a89: $b0
	add  b                                           ; $5a8a: $80
	halt                                             ; $5a8b: $76
	add  b                                           ; $5a8c: $80
	cp   $83                                         ; $5a8d: $fe $83
	rst  $38                                         ; $5a8f: $ff
	inc  c                                           ; $5a90: $0c
	sbc  a                                           ; $5a91: $9f
	add  b                                           ; $5a92: $80
	ld   hl, sp+$60                                  ; $5a93: $f8 $60
	ld   a, a                                        ; $5a95: $7f
	add  hl, de                                      ; $5a96: $19
	rra                                              ; $5a97: $1f
	ld   b, $04                                      ; $5a98: $06 $04
	nop                                              ; $5a9a: $00
	ld   bc, $0600                                   ; $5a9b: $01 $00 $06
	add  b                                           ; $5a9e: $80
	ret  nc                                          ; $5a9f: $d0

	ld   [bc], a                                     ; $5aa0: $02
	ld   hl, sp-$1b                                  ; $5aa1: $f8 $e5
	rla                                              ; $5aa3: $17
	add  b                                           ; $5aa4: $80
	ld   [hl], a                                     ; $5aa5: $77
	add  c                                           ; $5aa6: $81
	rst  $30                                         ; $5aa7: $f7
	add  b                                           ; $5aa8: $80
	ld   [hl], a                                     ; $5aa9: $77
	rlca                                             ; $5aaa: $07
	rla                                              ; $5aab: $17
	di                                               ; $5aac: $f3
	inc  bc                                          ; $5aad: $03
	add  hl, de                                      ; $5aae: $19
	dec  b                                           ; $5aaf: $05
	ld   bc, $fe02                                   ; $5ab0: $01 $02 $fe
	adc  b                                           ; $5ab3: $88
	rra                                              ; $5ab4: $1f
	add  b                                           ; $5ab5: $80
	dec  e                                           ; $5ab6: $1d
	add  b                                           ; $5ab7: $80
	rla                                              ; $5ab8: $17
	inc  b                                           ; $5ab9: $04
	dec  e                                           ; $5aba: $1d
	ld   [hl+], a                                    ; $5abb: $22
	nop                                              ; $5abc: $00
	ret  nz                                          ; $5abd: $c0

	ldh  [$80], a                                    ; $5abe: $e0 $80
	db   $fc                                         ; $5ac0: $fc
	ld   bc, $ff1f                                   ; $5ac1: $01 $1f $ff
	add  b                                           ; $5ac4: $80
	rra                                              ; $5ac5: $1f
	add  b                                           ; $5ac6: $80
	ld   bc, $0082                                   ; $5ac7: $01 $82 $00
	nop                                              ; $5aca: $00
	db   $10                                         ; $5acb: $10
	add  c                                           ; $5acc: $81
	nop                                              ; $5acd: $00
	ld   bc, $0030                                   ; $5ace: $01 $30 $00
	add  e                                           ; $5ad1: $83
	ret  nz                                          ; $5ad2: $c0

	ld   bc, $30a0                                   ; $5ad3: $01 $a0 $30
	add  c                                           ; $5ad6: $81
	jr   nz, jr_096_5ada                             ; $5ad7: $20 $01

	db   $10                                         ; $5ad9: $10

jr_096_5ada:
	ccf                                              ; $5ada: $3f
	add  b                                           ; $5adb: $80
	ld   a, $80                                      ; $5adc: $3e $80
	inc  a                                           ; $5ade: $3c
	add  b                                           ; $5adf: $80
	add  hl, sp                                      ; $5ae0: $39
	add  b                                           ; $5ae1: $80
	ld   sp, $0081                                   ; $5ae2: $31 $81 $00
	add  b                                           ; $5ae5: $80
	inc  hl                                          ; $5ae6: $23
	ld   bc, $502f                                   ; $5ae7: $01 $2f $50
	add  e                                           ; $5aea: $83
	rst  $38                                         ; $5aeb: $ff
	add  b                                           ; $5aec: $80
	db   $fc                                         ; $5aed: $fc
	ld   [bc], a                                     ; $5aee: $02
	add  b                                           ; $5aef: $80
	add  c                                           ; $5af0: $81
	ld   bc, $7f80                                   ; $5af1: $01 $80 $7f
	add  c                                           ; $5af4: $81
	rst  $38                                         ; $5af5: $ff
	nop                                              ; $5af6: $00
	add  c                                           ; $5af7: $81
	add  e                                           ; $5af8: $83
	nop                                              ; $5af9: $00
	ld   [bc], a                                     ; $5afa: $02
	inc  bc                                          ; $5afb: $03
	ld   bc, $8141                                   ; $5afc: $01 $41 $81
	add  c                                           ; $5aff: $81
	nop                                              ; $5b00: $00
	add  a                                           ; $5b01: $87
	add  c                                           ; $5b02: $81
	add  e                                           ; $5b03: $83
	nop                                              ; $5b04: $00
	ld   c, e                                        ; $5b05: $4b
	add  b                                           ; $5b06: $80
	or   h                                           ; $5b07: $b4
	add  e                                           ; $5b08: $83
	db   $f4                                         ; $5b09: $f4
	add  [hl]                                        ; $5b0a: $86
	db   $e4                                         ; $5b0b: $e4
	ld   [$00f8], sp                                 ; $5b0c: $08 $f8 $00
	ld   bc, $0300                                   ; $5b0f: $01 $00 $03
	ld   bc, $0004                                   ; $5b12: $01 $04 $00
	ld   [$0280], sp                                 ; $5b15: $08 $80 $02
	ld   b, $06                                      ; $5b18: $06 $06
	ld   d, $0c                                      ; $5b1a: $16 $0c
	inc  l                                           ; $5b1c: $2c
	dec  e                                           ; $5b1d: $1d
	cp   d                                           ; $5b1e: $ba
	ld   h, a                                        ; $5b1f: $67
	add  b                                           ; $5b20: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b21: $cf
	add  b                                           ; $5b22: $80
	sbc  a                                           ; $5b23: $9f
	add  b                                           ; $5b24: $80
	rra                                              ; $5b25: $1f
	add  b                                           ; $5b26: $80
	ld   e, $02                                      ; $5b27: $1e $02
	ld   [bc], a                                     ; $5b29: $02
	ld   h, d                                        ; $5b2a: $62
	ld   h, b                                        ; $5b2b: $60
	add  b                                           ; $5b2c: $80
	db   $fc                                         ; $5b2d: $fc
	ld   bc, $01fe                                   ; $5b2e: $01 $fe $01
	add  c                                           ; $5b31: $81
	rst  $38                                         ; $5b32: $ff
	add  d                                           ; $5b33: $82
	ld   a, a                                        ; $5b34: $7f
	add  d                                           ; $5b35: $82
	ld   [hl], a                                     ; $5b36: $77
	add  b                                           ; $5b37: $80
	daa                                              ; $5b38: $27
	add  b                                           ; $5b39: $80
	rlca                                             ; $5b3a: $07
	nop                                              ; $5b3b: $00
	rst  $30                                         ; $5b3c: $f7
	add  c                                           ; $5b3d: $81
	ldh  a, [rP1]                                    ; $5b3e: $f0 $00
	add  sp, -$7f                                    ; $5b40: $e8 $81
	ldh  [rP1], a                                    ; $5b42: $e0 $00
	ret  nc                                          ; $5b44: $d0

	add  c                                           ; $5b45: $81
	ret  nz                                          ; $5b46: $c0

	nop                                              ; $5b47: $00
	and  b                                           ; $5b48: $a0
	add  c                                           ; $5b49: $81
	add  b                                           ; $5b4a: $80
	nop                                              ; $5b4b: $00
	jp   $0282                                       ; $5b4c: $c3 $82 $02


	add  c                                           ; $5b4f: $81
	inc  bc                                          ; $5b50: $03
	add  [hl]                                        ; $5b51: $86
	rlca                                             ; $5b52: $07
	nop                                              ; $5b53: $00
	rst  $38                                         ; $5b54: $ff
	add  b                                           ; $5b55: $80
	ld   a, [bc]                                     ; $5b56: $0a
	add  b                                           ; $5b57: $80
	dec  d                                           ; $5b58: $15
	add  b                                           ; $5b59: $80
	ld   a, [bc]                                     ; $5b5a: $0a
	add  b                                           ; $5b5b: $80
	dec  d                                           ; $5b5c: $15
	add  b                                           ; $5b5d: $80
	ld   a, [bc]                                     ; $5b5e: $0a
	add  b                                           ; $5b5f: $80
	sub  l                                           ; $5b60: $95
	add  b                                           ; $5b61: $80
	adc  d                                           ; $5b62: $8a
	ld   bc, $6a95                                   ; $5b63: $01 $95 $6a
	db   $fd                                         ; $5b66: $fd
	nop                                              ; $5b67: $00
	jr   z, jr_096_5b6c                              ; $5b68: $28 $02

	add  [hl]                                        ; $5b6a: $86
	nop                                              ; $5b6b: $00

jr_096_5b6c:
	ld   bc, $030c                                   ; $5b6c: $01 $0c $03
	add  h                                           ; $5b6f: $84
	nop                                              ; $5b70: $00
	nop                                              ; $5b71: $00
	rrca                                             ; $5b72: $0f
	add  l                                           ; $5b73: $85
	nop                                              ; $5b74: $00
	ld   [bc], a                                     ; $5b75: $02
	ld   a, a                                        ; $5b76: $7f
	rst  $38                                         ; $5b77: $ff
	ld   a, a                                        ; $5b78: $7f
	add  e                                           ; $5b79: $83
	nop                                              ; $5b7a: $00
	nop                                              ; $5b7b: $00
	rst  $38                                         ; $5b7c: $ff
	add  l                                           ; $5b7d: $85
	nop                                              ; $5b7e: $00
	add  b                                           ; $5b7f: $80
	rst  $38                                         ; $5b80: $ff
	inc  bc                                          ; $5b81: $03
	rst  ToBoot                                         ; $5b82: $c7
	ccf                                              ; $5b83: $3f
	rlca                                             ; $5b84: $07
	nop                                              ; $5b85: $00
	add  b                                           ; $5b86: $80
	ld   bc, $ff00                                   ; $5b87: $01 $00 $ff
	add  l                                           ; $5b8a: $85
	nop                                              ; $5b8b: $00
	add  d                                           ; $5b8c: $82
	rst  $38                                         ; $5b8d: $ff
	ld   bc, $03fc                                   ; $5b8e: $01 $fc $03
	add  b                                           ; $5b91: $80
	ld   d, h                                        ; $5b92: $54
	nop                                              ; $5b93: $00
	rst  $38                                         ; $5b94: $ff
	add  l                                           ; $5b95: $85
	nop                                              ; $5b96: $00
	add  d                                           ; $5b97: $82
	rst  $38                                         ; $5b98: $ff
	inc  b                                           ; $5b99: $04
	ld   a, a                                        ; $5b9a: $7f
	rst  $38                                         ; $5b9b: $ff
	ld   a, a                                        ; $5b9c: $7f
	nop                                              ; $5b9d: $00
	rst  $38                                         ; $5b9e: $ff
	add  l                                           ; $5b9f: $85
	nop                                              ; $5ba0: $00
	add  h                                           ; $5ba1: $84
	rst  $38                                         ; $5ba2: $ff
	ld   [bc], a                                     ; $5ba3: $02
	rst  ToBoot                                         ; $5ba4: $c7
	ccf                                              ; $5ba5: $3f
	ld   hl, sp-$7b                                  ; $5ba6: $f8 $85
	nop                                              ; $5ba8: $00
	add  [hl]                                        ; $5ba9: $86
	rst  $38                                         ; $5baa: $ff
	add  b                                           ; $5bab: $80
	ld   a, a                                        ; $5bac: $7f
	add  b                                           ; $5bad: $80
	rst  $38                                         ; $5bae: $ff
	add  b                                           ; $5baf: $80
	cp   a                                           ; $5bb0: $bf
	add  b                                           ; $5bb1: $80
	ld   a, a                                        ; $5bb2: $7f
	inc  bc                                          ; $5bb3: $03
	rst  $38                                         ; $5bb4: $ff
	ld   a, a                                        ; $5bb5: $7f
	rst  $28                                         ; $5bb6: $ef
	ld   l, a                                        ; $5bb7: $6f
	add  b                                           ; $5bb8: $80
	rra                                              ; $5bb9: $1f
	ld   [bc], a                                     ; $5bba: $02
	sbc  a                                           ; $5bbb: $9f
	adc  a                                           ; $5bbc: $8f
	rst  $28                                         ; $5bbd: $ef
	adc  d                                           ; $5bbe: $8a
	rst  $38                                         ; $5bbf: $ff
	add  b                                           ; $5bc0: $80
	cp   a                                           ; $5bc1: $bf
	add  b                                           ; $5bc2: $80
	ld   l, a                                        ; $5bc3: $6f
	add  [hl]                                        ; $5bc4: $86
	rst  $38                                         ; $5bc5: $ff
	add  b                                           ; $5bc6: $80
	rst  JumpTable                                         ; $5bc7: $df
	add  b                                           ; $5bc8: $80
	sbc  a                                           ; $5bc9: $9f
	add  d                                           ; $5bca: $82
	rrca                                             ; $5bcb: $0f
	adc  b                                           ; $5bcc: $88
	rst  $38                                         ; $5bcd: $ff
	add  d                                           ; $5bce: $82
	ld   a, a                                        ; $5bcf: $7f
	add  b                                           ; $5bd0: $80
	ld   a, l                                        ; $5bd1: $7d
	add  b                                           ; $5bd2: $80
	cp   $88                                         ; $5bd3: $fe $88
	rst  $38                                         ; $5bd5: $ff
	inc  bc                                          ; $5bd6: $03
	rst  $28                                         ; $5bd7: $ef
	db   $eb                                         ; $5bd8: $eb
	di                                               ; $5bd9: $f3
	rst  $30                                         ; $5bda: $f7
	add  b                                           ; $5bdb: $80
	cp   $05                                         ; $5bdc: $fe $05
	ld   a, [hl]                                     ; $5bde: $7e
	cp   $3f                                         ; $5bdf: $fe $3f
	rst  $38                                         ; $5be1: $ff
	sbc  a                                           ; $5be2: $9f
	rst  $38                                         ; $5be3: $ff
	add  b                                           ; $5be4: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5be5: $cf
	dec  d                                           ; $5be6: $15
	rst  ToBoot                                         ; $5be7: $c7
	sub  a                                           ; $5be8: $97
	add  a                                           ; $5be9: $87
	ccf                                              ; $5bea: $3f
	inc  sp                                          ; $5beb: $33
	inc  b                                           ; $5bec: $04
	nop                                              ; $5bed: $00
	inc  c                                           ; $5bee: $0c
	nop                                              ; $5bef: $00
	cp   h                                           ; $5bf0: $bc
	nop                                              ; $5bf1: $00
	ld   [hl], b                                     ; $5bf2: $70
	nop                                              ; $5bf3: $00
	inc  bc                                          ; $5bf4: $03
	add  b                                           ; $5bf5: $80
	cp   a                                           ; $5bf6: $bf
	add  b                                           ; $5bf7: $80
	adc  h                                           ; $5bf8: $8c
	ret  nz                                          ; $5bf9: $c0

	ret  z                                           ; $5bfa: $c8

	ldh  [rAUD2LOW], a                               ; $5bfb: $e0 $18
	add  l                                           ; $5bfd: $85
	nop                                              ; $5bfe: $00
	add  [hl]                                        ; $5bff: $86
	ldh  a, [rP1]                                    ; $5c00: $f0 $00
	rrca                                             ; $5c02: $0f
	adc  l                                           ; $5c03: $8d
	nop                                              ; $5c04: $00
	nop                                              ; $5c05: $00
	ldh  a, [$8f]                                    ; $5c06: $f0 $8f
	nop                                              ; $5c08: $00
	add  b                                           ; $5c09: $80
	ld   bc, $0082                                   ; $5c0a: $01 $82 $00
	add  b                                           ; $5c0d: $80
	ld   [bc], a                                     ; $5c0e: $02
	add  b                                           ; $5c0f: $80
	ld   bc, $0280                                   ; $5c10: $01 $80 $02
	add  b                                           ; $5c13: $80
	ld   bc, $aa80                                   ; $5c14: $01 $80 $aa
	add  b                                           ; $5c17: $80
	ld   d, l                                        ; $5c18: $55
	add  d                                           ; $5c19: $82
	nop                                              ; $5c1a: $00
	add  b                                           ; $5c1b: $80
	xor  d                                           ; $5c1c: $aa
	add  b                                           ; $5c1d: $80
	ld   d, l                                        ; $5c1e: $55
	add  b                                           ; $5c1f: $80
	xor  d                                           ; $5c20: $aa
	add  b                                           ; $5c21: $80
	ld   d, l                                        ; $5c22: $55
	add  b                                           ; $5c23: $80
	xor  a                                           ; $5c24: $af
	add  b                                           ; $5c25: $80
	ld   d, a                                        ; $5c26: $57
	add  b                                           ; $5c27: $80
	xor  a                                           ; $5c28: $af
	add  d                                           ; $5c29: $82
	nop                                              ; $5c2a: $00
	add  b                                           ; $5c2b: $80
	ld   e, a                                        ; $5c2c: $5f
	add  b                                           ; $5c2d: $80
	xor  a                                           ; $5c2e: $af
	add  b                                           ; $5c2f: $80
	ld   e, a                                        ; $5c30: $5f
	add  b                                           ; $5c31: $80
	ret  nz                                          ; $5c32: $c0

	add  d                                           ; $5c33: $82
	rst  $38                                         ; $5c34: $ff
	add  b                                           ; $5c35: $80
	rlca                                             ; $5c36: $07
	add  b                                           ; $5c37: $80
	nop                                              ; $5c38: $00
	add  b                                           ; $5c39: $80
	ld   hl, sp+$03                                  ; $5c3a: $f8 $03
	cp   $ff                                         ; $5c3c: $fe $ff
	cp   $ff                                         ; $5c3e: $fe $ff
	add  b                                           ; $5c40: $80
	inc  bc                                          ; $5c41: $03
	ld   b, $54                                      ; $5c42: $06 $54
	db   $fc                                         ; $5c44: $fc
	ld   [bc], a                                     ; $5c45: $02
	rst  $38                                         ; $5c46: $ff
	nop                                              ; $5c47: $00
	rst  $38                                         ; $5c48: $ff
	xor  d                                           ; $5c49: $aa
	add  c                                           ; $5c4a: $81
	nop                                              ; $5c4b: $00
	inc  e                                           ; $5c4c: $1c
	xor  d                                           ; $5c4d: $aa
	rst  $38                                         ; $5c4e: $ff
	nop                                              ; $5c4f: $00
	rst  $38                                         ; $5c50: $ff
	ld   a, [hl+]                                    ; $5c51: $2a
	rst  $38                                         ; $5c52: $ff
	ccf                                              ; $5c53: $3f
	ld   b, b                                        ; $5c54: $40
	xor  b                                           ; $5c55: $a8
	rst  $38                                         ; $5c56: $ff
	rlca                                             ; $5c57: $07
	rst  $38                                         ; $5c58: $ff
	add  a                                           ; $5c59: $87
	ccf                                              ; $5c5a: $3f
	rla                                              ; $5c5b: $17
	nop                                              ; $5c5c: $00
	add  b                                           ; $5c5d: $80
	ret  nz                                          ; $5c5e: $c0

	db   $10                                         ; $5c5f: $10
	rst  $38                                         ; $5c60: $ff
	db   $fd                                         ; $5c61: $fd
	adc  h                                           ; $5c62: $8c
	jp   nz, $a481                                   ; $5c63: $c2 $81 $a4

	nop                                              ; $5c66: $00
	dec  sp                                          ; $5c67: $3b
	add  hl, sp                                      ; $5c68: $39
	dec  sp                                          ; $5c69: $3b
	add  b                                           ; $5c6a: $80
	ld   [hl], e                                     ; $5c6b: $73
	add  d                                           ; $5c6c: $82
	halt                                             ; $5c6d: $76
	add  b                                           ; $5c6e: $80
	and  $02                                         ; $5c6f: $e6 $02
	sbc  $cc                                         ; $5c71: $de $cc
	adc  h                                           ; $5c73: $8c
	add  b                                           ; $5c74: $80
	adc  b                                           ; $5c75: $88
	ld   bc, $00a2                                   ; $5c76: $01 $a2 $00
	add  b                                           ; $5c79: $80
	db   $10                                         ; $5c7a: $10
	ld   bc, $3074                                   ; $5c7b: $01 $74 $30
	add  d                                           ; $5c7e: $82
	ld   a, d                                        ; $5c7f: $7a
	ld   bc, $4f38                                   ; $5c80: $01 $38 $4f
	add  b                                           ; $5c83: $80
	ld   b, a                                        ; $5c84: $47
	add  b                                           ; $5c85: $80
	add  [hl]                                        ; $5c86: $86
	add  d                                           ; $5c87: $82
	add  b                                           ; $5c88: $80
	add  b                                           ; $5c89: $80
	add  [hl]                                        ; $5c8a: $86
	nop                                              ; $5c8b: $00
	xor  a                                           ; $5c8c: $af
	add  c                                           ; $5c8d: $81
	and  a                                           ; $5c8e: $a7
	dec  b                                           ; $5c8f: $05
	inc  bc                                          ; $5c90: $03
	ld   a, [hl-]                                    ; $5c91: $3a
	dec  a                                           ; $5c92: $3d
	inc  a                                           ; $5c93: $3c
	ld   l, $0e                                      ; $5c94: $2e $0e
	add  b                                           ; $5c96: $80
	ld   b, h                                        ; $5c97: $44
	ld   bc, $4151                                   ; $5c98: $01 $51 $41
	add  b                                           ; $5c9b: $80
	ld   h, a                                        ; $5c9c: $67
	dec  bc                                          ; $5c9d: $0b
	xor  e                                           ; $5c9e: $ab
	dec  hl                                          ; $5c9f: $2b
	xor  a                                           ; $5ca0: $af
	and  a                                           ; $5ca1: $a7
	add  h                                           ; $5ca2: $84
	ld   hl, sp-$6e                                  ; $5ca3: $f8 $92
	db   $10                                         ; $5ca5: $10
	ld   b, l                                        ; $5ca6: $45
	nop                                              ; $5ca7: $00
	xor  [hl]                                        ; $5ca8: $ae
	inc  c                                           ; $5ca9: $0c
	add  b                                           ; $5caa: $80
	ld   e, $02                                      ; $5cab: $1e $02
	sbc  $8f                                         ; $5cad: $de $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5caf: $cf
	add  b                                           ; $5cb0: $80
	call $ed01                                       ; $5cb1: $cd $01 $ed
	ld   l, l                                        ; $5cb4: $6d
	add  b                                           ; $5cb5: $80
	ld   a, e                                        ; $5cb6: $7b
	add  b                                           ; $5cb7: $80
	ld   l, c                                        ; $5cb8: $69
	ld   bc, $f575                                   ; $5cb9: $01 $75 $f5
	add  b                                           ; $5cbc: $80
	ld   [hl], h                                     ; $5cbd: $74
	add  b                                           ; $5cbe: $80
	ld   [hl], d                                     ; $5cbf: $72
	add  d                                           ; $5cc0: $82
	ld   a, [hl-]                                    ; $5cc1: $3a
	rlca                                             ; $5cc2: $07
	cp   c                                           ; $5cc3: $b9
	cp   d                                           ; $5cc4: $ba
	ldh  a, [$f3]                                    ; $5cc5: $f0 $f3
	ldh  a, [$f2]                                    ; $5cc7: $f0 $f2
	ldh  a, [$f1]                                    ; $5cc9: $f0 $f1
	add  b                                           ; $5ccb: $80
	ldh  a, [rTAC]                                   ; $5ccc: $f0 $07
	ldh  [$e2], a                                    ; $5cce: $e0 $e2
	ret  nz                                          ; $5cd0: $c0

	jp   Jump_096_4140                               ; $5cd1: $c3 $40 $41


	ld   b, b                                        ; $5cd4: $40
	ld   b, e                                        ; $5cd5: $43
	adc  c                                           ; $5cd6: $89
	rst  $38                                         ; $5cd7: $ff
	ld   bc, $03fc                                   ; $5cd8: $01 $fc $03
	add  b                                           ; $5cdb: $80
	db   $fc                                         ; $5cdc: $fc
	nop                                              ; $5cdd: $00
	nop                                              ; $5cde: $00
	adc  c                                           ; $5cdf: $89
	rst  $38                                         ; $5ce0: $ff
	ld   [bc], a                                     ; $5ce1: $02
	ld   a, a                                        ; $5ce2: $7f
	rst  $38                                         ; $5ce3: $ff
	ld   a, a                                        ; $5ce4: $7f
	add  b                                           ; $5ce5: $80
	nop                                              ; $5ce6: $00
	adc  e                                           ; $5ce7: $8b
	rst  $38                                         ; $5ce8: $ff
	ld   [bc], a                                     ; $5ce9: $02
	db   $e3                                         ; $5cea: $e3
	rra                                              ; $5ceb: $1f
	inc  bc                                          ; $5cec: $03
	adc  l                                           ; $5ced: $8d
	rst  $38                                         ; $5cee: $ff
	adc  [hl]                                        ; $5cef: $8e
	ldh  a, [rSB]                                    ; $5cf0: $f0 $01
	db   $fd                                         ; $5cf2: $fd
	ld   [bc], a                                     ; $5cf3: $02
	add  b                                           ; $5cf4: $80
	dec  b                                           ; $5cf5: $05
	add  b                                           ; $5cf6: $80
	ld   [bc], a                                     ; $5cf7: $02
	add  b                                           ; $5cf8: $80
	dec  b                                           ; $5cf9: $05
	add  b                                           ; $5cfa: $80
	ld   [bc], a                                     ; $5cfb: $02
	add  b                                           ; $5cfc: $80
	dec  b                                           ; $5cfd: $05
	add  d                                           ; $5cfe: $82
	nop                                              ; $5cff: $00

Jump_096_5d00:
	add  b                                           ; $5d00: $80
	xor  d                                           ; $5d01: $aa
	add  b                                           ; $5d02: $80
	ld   d, l                                        ; $5d03: $55
	add  b                                           ; $5d04: $80
	xor  d                                           ; $5d05: $aa
	add  b                                           ; $5d06: $80
	ld   d, l                                        ; $5d07: $55
	add  b                                           ; $5d08: $80
	xor  d                                           ; $5d09: $aa
	add  b                                           ; $5d0a: $80
	ld   d, l                                        ; $5d0b: $55
	add  d                                           ; $5d0c: $82
	nop                                              ; $5d0d: $00
	add  b                                           ; $5d0e: $80
	cp   a                                           ; $5d0f: $bf
	add  b                                           ; $5d10: $80
	ld   e, a                                        ; $5d11: $5f
	add  b                                           ; $5d12: $80
	cp   a                                           ; $5d13: $bf
	add  b                                           ; $5d14: $80
	ld   a, a                                        ; $5d15: $7f
	add  b                                           ; $5d16: $80
	cp   a                                           ; $5d17: $bf
	add  b                                           ; $5d18: $80
	ld   a, a                                        ; $5d19: $7f
	add  b                                           ; $5d1a: $80
	cp   a                                           ; $5d1b: $bf
	add  b                                           ; $5d1c: $80
	nop                                              ; $5d1d: $00

jr_096_5d1e:
	jr   nc, jr_096_5d1e                             ; $5d1e: $30 $fe

	rst  $38                                         ; $5d20: $ff
	cp   $ff                                         ; $5d21: $fe $ff
	cp   $ff                                         ; $5d23: $fe $ff
	db   $fc                                         ; $5d25: $fc
	rst  $38                                         ; $5d26: $ff
	db   $fc                                         ; $5d27: $fc
	rst  $38                                         ; $5d28: $ff
	db   $fc                                         ; $5d29: $fc
	rst  $38                                         ; $5d2a: $ff
	db   $fc                                         ; $5d2b: $fc
	rst  $38                                         ; $5d2c: $ff
	inc  b                                           ; $5d2d: $04
	rlca                                             ; $5d2e: $07
	xor  b                                           ; $5d2f: $a8
	rst  $38                                         ; $5d30: $ff
	nop                                              ; $5d31: $00
	rst  $38                                         ; $5d32: $ff
	nop                                              ; $5d33: $00

jr_096_5d34:
	rst  $38                                         ; $5d34: $ff
	nop                                              ; $5d35: $00
	rst  $38                                         ; $5d36: $ff
	nop                                              ; $5d37: $00
	rst  $38                                         ; $5d38: $ff
	nop                                              ; $5d39: $00
	rst  $38                                         ; $5d3a: $ff
	nop                                              ; $5d3b: $00
	rst  $38                                         ; $5d3c: $ff
	nop                                              ; $5d3d: $00
	rst  $38                                         ; $5d3e: $ff
	ld   a, [bc]                                     ; $5d3f: $0a
	rst  $38                                         ; $5d40: $ff
	rrca                                             ; $5d41: $0f
	rst  $38                                         ; $5d42: $ff
	rrca                                             ; $5d43: $0f
	rst  $38                                         ; $5d44: $ff
	rra                                              ; $5d45: $1f
	rst  $38                                         ; $5d46: $ff
	rra                                              ; $5d47: $1f
	rst  $38                                         ; $5d48: $ff
	rra                                              ; $5d49: $1f
	rst  $38                                         ; $5d4a: $ff
	rra                                              ; $5d4b: $1f
	rst  $38                                         ; $5d4c: $ff
	rra                                              ; $5d4d: $1f
	rst  $38                                         ; $5d4e: $ff
	cp   a                                           ; $5d4f: $bf
	add  d                                           ; $5d50: $82
	xor  $80                                         ; $5d51: $ee $80
	db   $ec                                         ; $5d53: $ec
	add  d                                           ; $5d54: $82
	call z, $c080                                    ; $5d55: $cc $80 $c0
	inc  bc                                          ; $5d58: $03
	add  b                                           ; $5d59: $80
	add  e                                           ; $5d5a: $83
	inc  bc                                          ; $5d5b: $03
	add  d                                           ; $5d5c: $82
	add  h                                           ; $5d5d: $84
	cp   d                                           ; $5d5e: $ba
	inc  b                                           ; $5d5f: $04
	sbc  d                                           ; $5d60: $9a
	ret  c                                           ; $5d61: $d8

	pop  de                                          ; $5d62: $d1
	ld   de, $8003                                   ; $5d63: $11 $03 $80
	jp   $8380                                       ; $5d66: $c3 $80 $83


	ld   bc, $a7a3                                   ; $5d69: $01 $a3 $a7
	add  c                                           ; $5d6c: $81
	or   a                                           ; $5d6d: $b7
	nop                                              ; $5d6e: $00
	or   e                                           ; $5d6f: $b3
	add  b                                           ; $5d70: $80
	db   $d3                                         ; $5d71: $d3
	ld   bc, $595b                                   ; $5d72: $01 $5b $59
	add  b                                           ; $5d75: $80
	ld   d, c                                        ; $5d76: $51
	inc  b                                           ; $5d77: $04
	ld   b, l                                        ; $5d78: $45
	ld   l, l                                        ; $5d79: $6d
	dec  hl                                          ; $5d7a: $2b
	xor  [hl]                                        ; $5d7b: $ae
	sbc  h                                           ; $5d7c: $9c
	add  b                                           ; $5d7d: $80
	or   a                                           ; $5d7e: $b7
	ld   bc, $9bb3                                   ; $5d7f: $01 $b3 $9b
	add  b                                           ; $5d82: $80
	db   $db                                         ; $5d83: $db
	nop                                              ; $5d84: $00
	reti                                             ; $5d85: $d9


	add  c                                           ; $5d86: $81
	db   $dd                                         ; $5d87: $dd
	nop                                              ; $5d88: $00
	call c, $ce80                                    ; $5d89: $dc $80 $ce
	ld   [bc], a                                     ; $5d8c: $02
	jp   $0003                                       ; $5d8d: $c3 $03 $00


	add  b                                           ; $5d90: $80
	ld   h, [hl]                                     ; $5d91: $66
	add  b                                           ; $5d92: $80

jr_096_5d93:
	and  [hl]                                        ; $5d93: $a6
	add  b                                           ; $5d94: $80
	or   [hl]                                        ; $5d95: $b6
	add  h                                           ; $5d96: $84
	ret  nc                                          ; $5d97: $d0

	nop                                              ; $5d98: $00
	ld   b, b                                        ; $5d99: $40
	add  b                                           ; $5d9a: $80
	ld   d, b                                        ; $5d9b: $50
	nop                                              ; $5d9c: $00
	ld   b, b                                        ; $5d9d: $40
	add  d                                           ; $5d9e: $82
	sbc  l                                           ; $5d9f: $9d
	add  b                                           ; $5da0: $80
	sbc  h                                           ; $5da1: $9c
	add  b                                           ; $5da2: $80
	inc  e                                           ; $5da3: $1c
	add  b                                           ; $5da4: $80
	inc  c                                           ; $5da5: $0c
	add  b                                           ; $5da6: $80
	ld   [$0081], sp                                 ; $5da7: $08 $81 $00
	nop                                              ; $5daa: $00
	inc  bc                                          ; $5dab: $03
	add  b                                           ; $5dac: $80
	nop                                              ; $5dad: $00
	ld   bc, $1410                                   ; $5dae: $01 $10 $14
	add  b                                           ; $5db1: $80
	jr   nz, jr_096_5d34                             ; $5db2: $20 $80

	nop                                              ; $5db4: $00
	ld   bc, $2420                                   ; $5db5: $01 $20 $24
	add  b                                           ; $5db8: $80
	ld   h, b                                        ; $5db9: $60
	inc  b                                           ; $5dba: $04
	add  b                                           ; $5dbb: $80
	adc  b                                           ; $5dbc: $88
	jr   nz, jr_096_5d93                             ; $5dbd: $20 $d4

	rst  $38                                         ; $5dbf: $ff
	add  b                                           ; $5dc0: $80
	ld   a, a                                        ; $5dc1: $7f
	add  b                                           ; $5dc2: $80
	nop                                              ; $5dc3: $00
	add  b                                           ; $5dc4: $80
	ldh  [$86], a                                    ; $5dc5: $e0 $86
	rst  $38                                         ; $5dc7: $ff
	add  b                                           ; $5dc8: $80
	xor  d                                           ; $5dc9: $aa
	add  b                                           ; $5dca: $80
	push de                                          ; $5dcb: $d5
	add  b                                           ; $5dcc: $80
	ld   [bc], a                                     ; $5dcd: $02
	add  b                                           ; $5dce: $80
	nop                                              ; $5dcf: $00
	add  b                                           ; $5dd0: $80
	add  sp, -$80                                    ; $5dd1: $e8 $80
	push de                                          ; $5dd3: $d5
	add  b                                           ; $5dd4: $80
	ld   [$f580], a                                  ; $5dd5: $ea $80 $f5
	add  b                                           ; $5dd8: $80
	add  b                                           ; $5dd9: $80
	add  b                                           ; $5dda: $80
	ld   d, b                                        ; $5ddb: $50
	add  b                                           ; $5ddc: $80
	and  b                                           ; $5ddd: $a0
	add  d                                           ; $5dde: $82
	nop                                              ; $5ddf: $00
	add  b                                           ; $5de0: $80
	ld   d, b                                        ; $5de1: $50
	add  b                                           ; $5de2: $80
	and  b                                           ; $5de3: $a0
	add  b                                           ; $5de4: $80
	ld   d, b                                        ; $5de5: $50
	add  b                                           ; $5de6: $80
	inc  bc                                          ; $5de7: $03
	adc  h                                           ; $5de8: $8c
	nop                                              ; $5de9: $00
	ld   [bc], a                                     ; $5dea: $02
	adc  a                                           ; $5deb: $8f
	ldh  a, [rSVBK]                                  ; $5dec: $f0 $70
	adc  e                                           ; $5dee: $8b
	nop                                              ; $5def: $00
	ld   bc, $000f                                   ; $5df0: $01 $0f $00
	add  b                                           ; $5df3: $80
	dec  b                                           ; $5df4: $05
	add  b                                           ; $5df5: $80
	ld   a, [bc]                                     ; $5df6: $0a
	add  b                                           ; $5df7: $80
	dec  b                                           ; $5df8: $05
	add  b                                           ; $5df9: $80
	ld   a, [bc]                                     ; $5dfa: $0a
	add  b                                           ; $5dfb: $80
	dec  b                                           ; $5dfc: $05
	add  b                                           ; $5dfd: $80
	ld   a, [bc]                                     ; $5dfe: $0a
	add  b                                           ; $5dff: $80
	dec  b                                           ; $5e00: $05
	add  b                                           ; $5e01: $80
	nop                                              ; $5e02: $00
	add  b                                           ; $5e03: $80
	ld   d, c                                        ; $5e04: $51
	add  b                                           ; $5e05: $80
	xor  d                                           ; $5e06: $aa
	add  b                                           ; $5e07: $80
	ld   d, c                                        ; $5e08: $51
	add  b                                           ; $5e09: $80
	xor  d                                           ; $5e0a: $aa
	add  b                                           ; $5e0b: $80
	ld   d, c                                        ; $5e0c: $51
	add  b                                           ; $5e0d: $80
	xor  d                                           ; $5e0e: $aa
	add  b                                           ; $5e0f: $80
	ld   d, c                                        ; $5e10: $51
	add  d                                           ; $5e11: $82
	nop                                              ; $5e12: $00
	add  b                                           ; $5e13: $80

jr_096_5e14:
	cp   a                                           ; $5e14: $bf
	add  b                                           ; $5e15: $80
	ld   a, a                                        ; $5e16: $7f
	add  b                                           ; $5e17: $80
	cp   a                                           ; $5e18: $bf
	add  b                                           ; $5e19: $80
	ld   a, a                                        ; $5e1a: $7f
	add  b                                           ; $5e1b: $80
	cp   a                                           ; $5e1c: $bf
	add  b                                           ; $5e1d: $80
	ld   a, a                                        ; $5e1e: $7f
	add  d                                           ; $5e1f: $82
	nop                                              ; $5e20: $00
	add  b                                           ; $5e21: $80
	cp   b                                           ; $5e22: $b8
	add  b                                           ; $5e23: $80
	cp   a                                           ; $5e24: $bf
	ld   [$bfbe], sp                                 ; $5e25: $08 $be $bf
	cp   h                                           ; $5e28: $bc
	cp   a                                           ; $5e29: $bf
	cp   h                                           ; $5e2a: $bc
	cp   a                                           ; $5e2b: $bf
	cp   h                                           ; $5e2c: $bc
	cp   a                                           ; $5e2d: $bf
	ld   [bc], a                                     ; $5e2e: $02
	add  e                                           ; $5e2f: $83
	nop                                              ; $5e30: $00
	add  b                                           ; $5e31: $80
	rst  $28                                         ; $5e32: $ef
	ld   a, [bc]                                     ; $5e33: $0a
	xor  d                                           ; $5e34: $aa
	rst  $28                                         ; $5e35: $ef
	nop                                              ; $5e36: $00
	rst  $28                                         ; $5e37: $ef
	db   $10                                         ; $5e38: $10
	rst  $38                                         ; $5e39: $ff
	db   $10                                         ; $5e3a: $10
	rst  $38                                         ; $5e3b: $ff
	adc  d                                           ; $5e3c: $8a
	ld   a, a                                        ; $5e3d: $7f
	ld   e, a                                        ; $5e3e: $5f
	add  c                                           ; $5e3f: $81
	nop                                              ; $5e40: $00
	add  b                                           ; $5e41: $80
	add  b                                           ; $5e42: $80
	add  b                                           ; $5e43: $80
	db   $fd                                         ; $5e44: $fd
	ld   b, $40                                      ; $5e45: $06 $40
	db   $fd                                         ; $5e47: $fd
	dec  a                                           ; $5e48: $3d
	db   $fd                                         ; $5e49: $fd
	dec  a                                           ; $5e4a: $3d
	db   $fd                                         ; $5e4b: $fd
	cp   l                                           ; $5e4c: $bd
	add  b                                           ; $5e4d: $80
	rst  $38                                         ; $5e4e: $ff
	add  b                                           ; $5e4f: $80
	inc  bc                                          ; $5e50: $03
	add  c                                           ; $5e51: $81
	nop                                              ; $5e52: $00
	add  b                                           ; $5e53: $80
	db   $fc                                         ; $5e54: $fc
	ld   [bc], a                                     ; $5e55: $02
	inc  bc                                          ; $5e56: $03
	rst  $38                                         ; $5e57: $ff
	db   $fc                                         ; $5e58: $fc
	add  c                                           ; $5e59: $81
	rst  $38                                         ; $5e5a: $ff
	ld   a, [bc]                                     ; $5e5b: $0a
	ld   c, a                                        ; $5e5c: $4f
	rst  $38                                         ; $5e5d: $ff
	rst  JumpTable                                         ; $5e5e: $df
	rst  $38                                         ; $5e5f: $ff
	or   a                                           ; $5e60: $b7
	rst  $38                                         ; $5e61: $ff
	rst  ToBoot                                         ; $5e62: $c7
	rst  $38                                         ; $5e63: $ff
	rst  $28                                         ; $5e64: $ef
	rst  $38                                         ; $5e65: $ff
	rrca                                             ; $5e66: $0f
	add  e                                           ; $5e67: $83
	rst  $38                                         ; $5e68: $ff
	ld   [bc], a                                     ; $5e69: $02
	db   $fc                                         ; $5e6a: $fc
	rst  $38                                         ; $5e6b: $ff
	ei                                               ; $5e6c: $fb
	add  c                                           ; $5e6d: $81
	rst  $38                                         ; $5e6e: $ff
	nop                                              ; $5e6f: $00
	ld   hl, sp-$79                                  ; $5e70: $f8 $87
	rst  $38                                         ; $5e72: $ff
	ld   [$fc03], sp                                 ; $5e73: $08 $03 $fc
	ccf                                              ; $5e76: $3f
	rst  $38                                         ; $5e77: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e78: $cf
	rst  $38                                         ; $5e79: $ff
	ld   a, a                                        ; $5e7a: $7f
	rst  $38                                         ; $5e7b: $ff
	adc  a                                           ; $5e7c: $8f
	add  c                                           ; $5e7d: $81
	rst  $38                                         ; $5e7e: $ff
	dec  b                                           ; $5e7f: $05
	ccf                                              ; $5e80: $3f
	rst  $38                                         ; $5e81: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e82: $cf
	rst  $38                                         ; $5e83: $ff
	ldh  [rAUD1SWEEP], a                             ; $5e84: $e0 $10
	add  b                                           ; $5e86: $80
	jr   nc, jr_096_5e89                             ; $5e87: $30 $00

jr_096_5e89:
	ldh  a, [$85]                                    ; $5e89: $f0 $85
	ldh  a, [c]                                      ; $5e8b: $f2
	dec  b                                           ; $5e8c: $05
	or   $f2                                         ; $5e8d: $f6 $f2
	ldh  [$e1], a                                    ; $5e8f: $e0 $e1
	ccf                                              ; $5e91: $3f
	jr   c, jr_096_5e14                              ; $5e92: $38 $80

	ld   a, h                                        ; $5e94: $7c
	add  b                                           ; $5e95: $80
	ld   c, h                                        ; $5e96: $4c
	add  b                                           ; $5e97: $80
	ld   [hl], $80                                   ; $5e98: $36 $80
	ld   e, $80                                      ; $5e9a: $1e $80
	ld   l, $80                                      ; $5e9c: $2e $80
	ld   l, h                                        ; $5e9e: $6c
	add  b                                           ; $5e9f: $80
	jr   jr_096_5ea2                                 ; $5ea0: $18 $00

jr_096_5ea2:
	dec  c                                           ; $5ea2: $0d
	add  b                                           ; $5ea3: $80
	ld   b, b                                        ; $5ea4: $40
	add  b                                           ; $5ea5: $80
	ret  nz                                          ; $5ea6: $c0

	rlca                                             ; $5ea7: $07
	add  b                                           ; $5ea8: $80
	add  e                                           ; $5ea9: $83
	nop                                              ; $5eaa: $00
	stop                                             ; $5eab: $10 $00
	jr   nz, jr_096_5eaf                             ; $5ead: $20 $00

jr_096_5eaf:
	ld   b, c                                        ; $5eaf: $41
	add  c                                           ; $5eb0: $81
	nop                                              ; $5eb1: $00
	nop                                              ; $5eb2: $00
	add  b                                           ; $5eb3: $80
	add  a                                           ; $5eb4: $87
	rst  $38                                         ; $5eb5: $ff
	ld   [bc], a                                     ; $5eb6: $02
	ld   a, a                                        ; $5eb7: $7f
	rst  $38                                         ; $5eb8: $ff
	add  b                                           ; $5eb9: $80
	add  c                                           ; $5eba: $81
	nop                                              ; $5ebb: $00
	add  b                                           ; $5ebc: $80
	ld   [$f580], a                                  ; $5ebd: $ea $80 $f5
	add  b                                           ; $5ec0: $80
	ld   a, [$f580]                                  ; $5ec1: $fa $80 $f5
	add  b                                           ; $5ec4: $80
	ld   a, [$f580]                                  ; $5ec5: $fa $80 $f5
	add  b                                           ; $5ec8: $80
	ld   [bc], a                                     ; $5ec9: $02
	add  b                                           ; $5eca: $80
	nop                                              ; $5ecb: $00
	add  b                                           ; $5ecc: $80
	xor  b                                           ; $5ecd: $a8
	add  b                                           ; $5ece: $80
	ld   d, b                                        ; $5ecf: $50
	add  b                                           ; $5ed0: $80
	xor  b                                           ; $5ed1: $a8
	add  b                                           ; $5ed2: $80
	ld   d, h                                        ; $5ed3: $54
	add  b                                           ; $5ed4: $80
	xor  b                                           ; $5ed5: $a8
	add  b                                           ; $5ed6: $80
	ld   d, h                                        ; $5ed7: $54
	add  b                                           ; $5ed8: $80
	xor  d                                           ; $5ed9: $aa
	add  b                                           ; $5eda: $80
	nop                                              ; $5edb: $00
	add  b                                           ; $5edc: $80
	ld   a, [bc]                                     ; $5edd: $0a
	add  b                                           ; $5ede: $80
	dec  b                                           ; $5edf: $05
	add  b                                           ; $5ee0: $80
	ld   a, [bc]                                     ; $5ee1: $0a
	add  b                                           ; $5ee2: $80
	dec  b                                           ; $5ee3: $05
	add  b                                           ; $5ee4: $80
	ld   a, [bc]                                     ; $5ee5: $0a
	add  b                                           ; $5ee6: $80
	dec  b                                           ; $5ee7: $05
	add  b                                           ; $5ee8: $80
	ld   a, [bc]                                     ; $5ee9: $0a
	add  b                                           ; $5eea: $80
	dec  b                                           ; $5eeb: $05
	add  b                                           ; $5eec: $80
	xor  d                                           ; $5eed: $aa
	add  b                                           ; $5eee: $80
	ld   d, c                                        ; $5eef: $51
	add  b                                           ; $5ef0: $80
	xor  d                                           ; $5ef1: $aa
	add  b                                           ; $5ef2: $80
	ld   d, c                                        ; $5ef3: $51
	add  b                                           ; $5ef4: $80
	xor  d                                           ; $5ef5: $aa
	add  b                                           ; $5ef6: $80
	ld   d, c                                        ; $5ef7: $51
	add  b                                           ; $5ef8: $80
	xor  d                                           ; $5ef9: $aa
	add  b                                           ; $5efa: $80
	ld   d, c                                        ; $5efb: $51
	add  b                                           ; $5efc: $80
	cp   a                                           ; $5efd: $bf
	add  b                                           ; $5efe: $80

jr_096_5eff:
	ld   a, a                                        ; $5eff: $7f
	add  b                                           ; $5f00: $80
	cp   a                                           ; $5f01: $bf
	add  b                                           ; $5f02: $80
	ld   a, a                                        ; $5f03: $7f
	add  b                                           ; $5f04: $80
	cp   a                                           ; $5f05: $bf
	add  b                                           ; $5f06: $80
	ld   a, a                                        ; $5f07: $7f
	add  b                                           ; $5f08: $80
	cp   a                                           ; $5f09: $bf
	add  b                                           ; $5f0a: $80
	ld   e, a                                        ; $5f0b: $5f
	inc  [hl]                                        ; $5f0c: $34
	cp   [hl]                                        ; $5f0d: $be
	cp   a                                           ; $5f0e: $bf
	cp   h                                           ; $5f0f: $bc
	cp   a                                           ; $5f10: $bf
	cp   h                                           ; $5f11: $bc
	cp   a                                           ; $5f12: $bf
	cp   h                                           ; $5f13: $bc
	cp   a                                           ; $5f14: $bf
	cp   h                                           ; $5f15: $bc
	cp   a                                           ; $5f16: $bf
	cp   $ff                                         ; $5f17: $fe $ff
	cp   [hl]                                        ; $5f19: $be
	cp   a                                           ; $5f1a: $bf
	cp   $ff                                         ; $5f1b: $fe $ff
	cp   d                                           ; $5f1d: $ba
	rst  $38                                         ; $5f1e: $ff
	db   $10                                         ; $5f1f: $10
	rst  $38                                         ; $5f20: $ff
	nop                                              ; $5f21: $00
	rst  $38                                         ; $5f22: $ff
	db   $10                                         ; $5f23: $10
	rst  $28                                         ; $5f24: $ef
	nop                                              ; $5f25: $00
	rst  $38                                         ; $5f26: $ff
	db   $10                                         ; $5f27: $10
	rst  $28                                         ; $5f28: $ef
	db   $10                                         ; $5f29: $10
	rst  $38                                         ; $5f2a: $ff
	db   $10                                         ; $5f2b: $10
	rst  $38                                         ; $5f2c: $ff
	ld   a, [hl+]                                    ; $5f2d: $2a
	db   $fd                                         ; $5f2e: $fd
	dec  a                                           ; $5f2f: $3d
	db   $fd                                         ; $5f30: $fd
	dec  a                                           ; $5f31: $3d
	db   $fd                                         ; $5f32: $fd
	dec  a                                           ; $5f33: $3d
	db   $fd                                         ; $5f34: $fd
	dec  e                                           ; $5f35: $1d
	db   $fd                                         ; $5f36: $fd
	dec  e                                           ; $5f37: $1d
	db   $fd                                         ; $5f38: $fd
	dec  e                                           ; $5f39: $1d
	db   $fd                                         ; $5f3a: $fd
	dec  e                                           ; $5f3b: $1d
	db   $fd                                         ; $5f3c: $fd
	dec  e                                           ; $5f3d: $1d
	rst  $38                                         ; $5f3e: $ff
	rra                                              ; $5f3f: $1f
	cp   $be                                         ; $5f40: $fe $be
	add  b                                           ; $5f42: $80
	db   $fc                                         ; $5f43: $fc
	ld   [bc], a                                     ; $5f44: $02
	cp   $7e                                         ; $5f45: $fe $7e
	rst  $38                                         ; $5f47: $ff
	add  c                                           ; $5f48: $81
	ld   a, a                                        ; $5f49: $7f
	add  b                                           ; $5f4a: $80
	ccf                                              ; $5f4b: $3f
	add  b                                           ; $5f4c: $80
	rst  JumpTable                                         ; $5f4d: $df
	add  hl, bc                                      ; $5f4e: $09
	rst  $38                                         ; $5f4f: $ff
	cp   a                                           ; $5f50: $bf
	rst  $38                                         ; $5f51: $ff
	ld   a, a                                        ; $5f52: $7f
	rst  $38                                         ; $5f53: $ff
	rst  JumpTable                                         ; $5f54: $df
	rst  $38                                         ; $5f55: $ff
	rst  JumpTable                                         ; $5f56: $df
	rst  $38                                         ; $5f57: $ff
	ccf                                              ; $5f58: $3f
	add  l                                           ; $5f59: $85
	rst  $38                                         ; $5f5a: $ff
	ld   a, [bc]                                     ; $5f5b: $0a
	xor  a                                           ; $5f5c: $af
	rst  $38                                         ; $5f5d: $ff
	rlca                                             ; $5f5e: $07
	rst  $38                                         ; $5f5f: $ff
	ld   b, [hl]                                     ; $5f60: $46
	rst  $38                                         ; $5f61: $ff
	xor  $fc                                         ; $5f62: $ee $fc
	db   $fd                                         ; $5f64: $fd
	db   $e3                                         ; $5f65: $e3
	ldh  [c], a                                      ; $5f66: $e2
	add  b                                           ; $5f67: $80
	reti                                             ; $5f68: $d9


	ld   bc, $5ebc                                   ; $5f69: $01 $bc $5e
	add  c                                           ; $5f6c: $81
	push hl                                          ; $5f6d: $e5
	add  b                                           ; $5f6e: $80
	pop  hl                                          ; $5f6f: $e1
	add  b                                           ; $5f70: $80
	pop  de                                          ; $5f71: $d1
	add  b                                           ; $5f72: $80
	db   $d3                                         ; $5f73: $d3
	ld   bc, $0203                                   ; $5f74: $01 $03 $02
	add  b                                           ; $5f77: $80

jr_096_5f78:
	or   [hl]                                        ; $5f78: $b6
	ld   bc, $d8de                                   ; $5f79: $01 $de $d8
	add  b                                           ; $5f7c: $80
	jr   nc, jr_096_5eff                             ; $5f7d: $30 $80

	ld   h, b                                        ; $5f7f: $60
	add  d                                           ; $5f80: $82
	nop                                              ; $5f81: $00
	ld   [$0018], sp                                 ; $5f82: $08 $18 $00
	ld   c, $00                                      ; $5f85: $0e $00
	ld   d, b                                        ; $5f87: $50
	nop                                              ; $5f88: $00
	add  hl, bc                                      ; $5f89: $09
	nop                                              ; $5f8a: $00
	ld   [hl], b                                     ; $5f8b: $70
	add  c                                           ; $5f8c: $81
	nop                                              ; $5f8d: $00
	ld   b, $23                                      ; $5f8e: $06 $23
	nop                                              ; $5f90: $00
	inc  b                                           ; $5f91: $04
	inc  bc                                          ; $5f92: $03
	dec  sp                                          ; $5f93: $3b
	rlca                                             ; $5f94: $07
	daa                                              ; $5f95: $27
	add  b                                           ; $5f96: $80
	dec  bc                                          ; $5f97: $0b
	add  c                                           ; $5f98: $81
	nop                                              ; $5f99: $00
	inc  b                                           ; $5f9a: $04
	add  b                                           ; $5f9b: $80
	jr   jr_096_5ff6                                 ; $5f9c: $18 $58

	jr   jr_096_5f78                                 ; $5f9e: $18 $d8

	add  d                                           ; $5fa0: $82
	inc  e                                           ; $5fa1: $1c
	add  b                                           ; $5fa2: $80
	sbc  [hl]                                        ; $5fa3: $9e
	add  b                                           ; $5fa4: $80
	adc  [hl]                                        ; $5fa5: $8e
	add  b                                           ; $5fa6: $80
	adc  $80                                         ; $5fa7: $ce $80
	ld   h, $00                                      ; $5fa9: $26 $00

jr_096_5fab:
	nop                                              ; $5fab: $00
	add  b                                           ; $5fac: $80
	ld   hl, sp-$80                                  ; $5fad: $f8 $80
	ld   a, [$f980]                                  ; $5faf: $fa $80 $f9
	add  b                                           ; $5fb2: $80
	ld   a, [$fb84]                                  ; $5fb3: $fa $84 $fb
	add  d                                           ; $5fb6: $82
	nop                                              ; $5fb7: $00
	add  b                                           ; $5fb8: $80
	xor  d                                           ; $5fb9: $aa
	add  b                                           ; $5fba: $80
	ld   d, l                                        ; $5fbb: $55
	add  b                                           ; $5fbc: $80
	xor  d                                           ; $5fbd: $aa
	add  b                                           ; $5fbe: $80
	ld   d, l                                        ; $5fbf: $55
	add  b                                           ; $5fc0: $80
	xor  d                                           ; $5fc1: $aa
	add  b                                           ; $5fc2: $80
	ld   d, l                                        ; $5fc3: $55
	add  d                                           ; $5fc4: $82
	nop                                              ; $5fc5: $00
	add  b                                           ; $5fc6: $80
	add  b                                           ; $5fc7: $80
	add  b                                           ; $5fc8: $80
	ld   b, b                                        ; $5fc9: $40
	add  b                                           ; $5fca: $80
	add  b                                           ; $5fcb: $80
	add  b                                           ; $5fcc: $80
	ld   b, b                                        ; $5fcd: $40
	add  b                                           ; $5fce: $80
	add  b                                           ; $5fcf: $80
	add  b                                           ; $5fd0: $80
	ld   d, b                                        ; $5fd1: $50
	nop                                              ; $5fd2: $00
	rst  $38                                         ; $5fd3: $ff
	adc  l                                           ; $5fd4: $8d
	nop                                              ; $5fd5: $00
	ld   bc, $0af5                                   ; $5fd6: $01 $f5 $0a
	add  b                                           ; $5fd9: $80
	dec  b                                           ; $5fda: $05
	add  b                                           ; $5fdb: $80
	ld   [bc], a                                     ; $5fdc: $02
	add  b                                           ; $5fdd: $80
	dec  b                                           ; $5fde: $05
	add  b                                           ; $5fdf: $80
	ld   [bc], a                                     ; $5fe0: $02
	add  b                                           ; $5fe1: $80
	dec  b                                           ; $5fe2: $05
	add  b                                           ; $5fe3: $80
	ld   [bc], a                                     ; $5fe4: $02
	add  b                                           ; $5fe5: $80
	dec  b                                           ; $5fe6: $05
	add  b                                           ; $5fe7: $80
	cp   a                                           ; $5fe8: $bf
	add  b                                           ; $5fe9: $80
	ld   e, a                                        ; $5fea: $5f
	add  b                                           ; $5feb: $80
	cp   a                                           ; $5fec: $bf
	add  b                                           ; $5fed: $80
	ld   e, a                                        ; $5fee: $5f
	add  b                                           ; $5fef: $80
	cp   a                                           ; $5ff0: $bf
	add  b                                           ; $5ff1: $80
	ld   e, a                                        ; $5ff2: $5f
	add  b                                           ; $5ff3: $80
	xor  a                                           ; $5ff4: $af
	add  b                                           ; $5ff5: $80

jr_096_5ff6:
	ld   e, a                                        ; $5ff6: $5f
	ld   [bc], a                                     ; $5ff7: $02
	cp   [hl]                                        ; $5ff8: $be
	cp   a                                           ; $5ff9: $bf
	cp   [hl]                                        ; $5ffa: $be
	adc  c                                           ; $5ffb: $89
	cp   a                                           ; $5ffc: $bf
	add  b                                           ; $5ffd: $80
	rst  $38                                         ; $5ffe: $ff
	jr   z, jr_096_5fab                              ; $5fff: $28 $aa

	rst  $28                                         ; $6001: $ef
	db   $10                                         ; $6002: $10
	rst  $38                                         ; $6003: $ff
	nop                                              ; $6004: $00
	rst  $28                                         ; $6005: $ef
	nop                                              ; $6006: $00
	rst  $28                                         ; $6007: $ef
	nop                                              ; $6008: $00
	rst  $28                                         ; $6009: $ef
	nop                                              ; $600a: $00
	rst  $28                                         ; $600b: $ef
	nop                                              ; $600c: $00
	rst  $28                                         ; $600d: $ef
	add  b                                           ; $600e: $80
	rst  $28                                         ; $600f: $ef
	adc  d                                           ; $6010: $8a
	db   $fd                                         ; $6011: $fd
	dec  e                                           ; $6012: $1d
	db   $fd                                         ; $6013: $fd
	dec  e                                           ; $6014: $1d
	db   $fd                                         ; $6015: $fd
	dec  c                                           ; $6016: $0d
	db   $fd                                         ; $6017: $fd
	dec  c                                           ; $6018: $0d
	db   $fd                                         ; $6019: $fd
	dec  c                                           ; $601a: $0d
	db   $fd                                         ; $601b: $fd
	dec  c                                           ; $601c: $0d
	db   $fd                                         ; $601d: $fd
	dec  c                                           ; $601e: $0d
	db   $fd                                         ; $601f: $fd
	xor  c                                           ; $6020: $a9
	cp   l                                           ; $6021: $bd
	ld   sp, $22bb                                   ; $6022: $31 $bb $22
	ld   [hl], a                                     ; $6025: $77
	rst  $20                                         ; $6026: $e7
	rst  $28                                         ; $6027: $ef
	ld   l, a                                        ; $6028: $6f
	add  b                                           ; $6029: $80
	rst  $28                                         ; $602a: $ef
	ld   bc, $feff                                   ; $602b: $01 $ff $fe
	add  c                                           ; $602e: $81
	rst  $38                                         ; $602f: $ff
	dec  b                                           ; $6030: $05
	sbc  a                                           ; $6031: $9f
	rst  $28                                         ; $6032: $ef
	ld   a, e                                        ; $6033: $7b
	rst  $30                                         ; $6034: $f7
	sbc  c                                           ; $6035: $99
	sbc  e                                           ; $6036: $9b
	add  b                                           ; $6037: $80
	add  hl, sp                                      ; $6038: $39
	ld   [$c0c7], sp                                 ; $6039: $08 $c7 $c0
	add  sp, -$20                                    ; $603c: $e8 $e0
	ei                                               ; $603e: $fb
	ldh  a, [$7c]                                    ; $603f: $f0 $7c
	ld   hl, sp-$7f                                  ; $6041: $f8 $81
	add  e                                           ; $6043: $83
	rst  $38                                         ; $6044: $ff
	inc  c                                           ; $6045: $0c
	cp   $ff                                         ; $6046: $fe $ff
	ld   a, [$f87c]                                  ; $6048: $fa $7c $f8
	nop                                              ; $604b: $00
	ld   e, h                                        ; $604c: $5c
	nop                                              ; $604d: $00
	inc  b                                           ; $604e: $04
	ld   bc, $b7d8                                   ; $604f: $01 $d8 $b7
	or   [hl]                                        ; $6052: $b6
	add  b                                           ; $6053: $80
	ld   [hl], e                                     ; $6054: $73
	add  b                                           ; $6055: $80
	ld   l, a                                        ; $6056: $6f
	add  b                                           ; $6057: $80
	rrca                                             ; $6058: $0f
	ld   [$3e3f], sp                                 ; $6059: $08 $3f $3e
	ld   a, a                                        ; $605c: $7f
	ld   a, l                                        ; $605d: $7d
	rst  $38                                         ; $605e: $ff
	ei                                               ; $605f: $fb
	rst  $38                                         ; $6060: $ff
	sub  d                                           ; $6061: $92
	ld   l, d                                        ; $6062: $6a
	add  b                                           ; $6063: $80
	xor  d                                           ; $6064: $aa
	inc  bc                                          ; $6065: $03
	ld   [hl], l                                     ; $6066: $75
	push af                                          ; $6067: $f5
	ld   [hl], l                                     ; $6068: $75
	push af                                          ; $6069: $f5
	add  d                                           ; $606a: $82
	db   $fd                                         ; $606b: $fd
	add  d                                           ; $606c: $82
	rst  $38                                         ; $606d: $ff
	add  b                                           ; $606e: $80
	rrca                                             ; $606f: $0f
	add  h                                           ; $6070: $84
	ld   c, a                                        ; $6071: $4f
	add  b                                           ; $6072: $80
	ld   c, h                                        ; $6073: $4c
	add  b                                           ; $6074: $80
	ld   c, c                                        ; $6075: $49
	nop                                              ; $6076: $00
	ld   b, b                                        ; $6077: $40
	add  c                                           ; $6078: $81
	ld   b, a                                        ; $6079: $47
	ld   bc, $0007                                   ; $607a: $01 $07 $00
	add  b                                           ; $607d: $80
	add  b                                           ; $607e: $80
	add  b                                           ; $607f: $80
	cp   a                                           ; $6080: $bf
	ld   a, [bc]                                     ; $6081: $0a
	ld   a, h                                        ; $6082: $7c
	ld   a, a                                        ; $6083: $7f
	db   $e3                                         ; $6084: $e3
	rst  $38                                         ; $6085: $ff
	rra                                              ; $6086: $1f
	rst  $38                                         ; $6087: $ff
	cp   $ff                                         ; $6088: $fe $ff
	db   $fd                                         ; $608a: $fd
	rst  $38                                         ; $608b: $ff
	db   $fc                                         ; $608c: $fc
	add  h                                           ; $608d: $84
	nop                                              ; $608e: $00
	ld   b, $e0                                      ; $608f: $06 $e0
	add  sp, -$08                                    ; $6091: $e8 $f8
	db   $f4                                         ; $6093: $f4
	db   $fc                                         ; $6094: $fc
	ld   a, [$80fe]                                  ; $6095: $fa $fe $80
	rst  $38                                         ; $6098: $ff
	nop                                              ; $6099: $00
	rlca                                             ; $609a: $07
	adc  e                                           ; $609b: $8b
	ei                                               ; $609c: $fb
	inc  bc                                          ; $609d: $03
	ld   a, e                                        ; $609e: $7b

jr_096_609f:
	ei                                               ; $609f: $fb
	ld   a, [hl+]                                    ; $60a0: $2a
	xor  d                                           ; $60a1: $aa
	add  b                                           ; $60a2: $80
	push de                                          ; $60a3: $d5
	add  b                                           ; $60a4: $80
	ld   [$f580], a                                  ; $60a5: $ea $80 $f5
	add  b                                           ; $60a8: $80
	ld   a, [$f580]                                  ; $60a9: $fa $80 $f5
	add  b                                           ; $60ac: $80
	ld   a, [$fd80]                                  ; $60ad: $fa $80 $fd
	add  b                                           ; $60b0: $80
	adc  b                                           ; $60b1: $88
	add  b                                           ; $60b2: $80
	ld   d, h                                        ; $60b3: $54
	add  b                                           ; $60b4: $80
	adc  d                                           ; $60b5: $8a
	add  b                                           ; $60b6: $80
	ld   d, l                                        ; $60b7: $55
	add  b                                           ; $60b8: $80
	adc  d                                           ; $60b9: $8a
	add  b                                           ; $60ba: $80
	ld   d, l                                        ; $60bb: $55
	add  b                                           ; $60bc: $80
	adc  d                                           ; $60bd: $8a
	add  b                                           ; $60be: $80
	ld   d, l                                        ; $60bf: $55
	nop                                              ; $60c0: $00
	rrca                                             ; $60c1: $0f
	add  l                                           ; $60c2: $85
	nop                                              ; $60c3: $00
	add  b                                           ; $60c4: $80
	add  b                                           ; $60c5: $80
	add  b                                           ; $60c6: $80
	ld   b, b                                        ; $60c7: $40
	add  b                                           ; $60c8: $80
	and  b                                           ; $60c9: $a0
	add  b                                           ; $60ca: $80
	ld   b, b                                        ; $60cb: $40
	ld   bc, $020d                                   ; $60cc: $01 $0d $02
	add  b                                           ; $60cf: $80
	dec  b                                           ; $60d0: $05
	add  b                                           ; $60d1: $80
	ld   [bc], a                                     ; $60d2: $02
	add  b                                           ; $60d3: $80
	ld   bc, $0280                                   ; $60d4: $01 $80 $02
	add  b                                           ; $60d7: $80
	ld   bc, $0280                                   ; $60d8: $01 $80 $02
	add  b                                           ; $60db: $80
	ld   bc, $af80                                   ; $60dc: $01 $80 $af
	add  b                                           ; $60df: $80
	ld   e, a                                        ; $60e0: $5f
	add  b                                           ; $60e1: $80
	xor  a                                           ; $60e2: $af
	add  b                                           ; $60e3: $80
	ld   d, a                                        ; $60e4: $57
	add  b                                           ; $60e5: $80
	xor  a                                           ; $60e6: $af
	add  b                                           ; $60e7: $80
	ld   d, a                                        ; $60e8: $57
	add  b                                           ; $60e9: $80
	xor  a                                           ; $60ea: $af
	add  b                                           ; $60eb: $80
	ld   d, a                                        ; $60ec: $57
	add  h                                           ; $60ed: $84
	cp   a                                           ; $60ee: $bf
	add  b                                           ; $60ef: $80
	rst  $38                                         ; $60f0: $ff
	add  [hl]                                        ; $60f1: $86
	cp   a                                           ; $60f2: $bf
	jr   nz, jr_096_609f                             ; $60f3: $20 $aa

	rst  $28                                         ; $60f5: $ef
	add  b                                           ; $60f6: $80
	rst  $28                                         ; $60f7: $ef
	add  b                                           ; $60f8: $80
	rst  $28                                         ; $60f9: $ef
	add  b                                           ; $60fa: $80
	rst  $28                                         ; $60fb: $ef
	ret  nz                                          ; $60fc: $c0

	rst  $28                                         ; $60fd: $ef
	ret  nz                                          ; $60fe: $c0

	rst  $28                                         ; $60ff: $ef
	ret  nz                                          ; $6100: $c0

	rst  $28                                         ; $6101: $ef
	ldh  [$ef], a                                    ; $6102: $e0 $ef
	and  d                                           ; $6104: $a2
	db   $fd                                         ; $6105: $fd
	dec  b                                           ; $6106: $05
	rst  $38                                         ; $6107: $ff
	rlca                                             ; $6108: $07
	db   $fd                                         ; $6109: $fd
	ld   bc, $03ff                                   ; $610a: $01 $ff $03
	db   $fd                                         ; $610d: $fd
	ld   bc, $03ff                                   ; $610e: $01 $ff $03
	db   $fd                                         ; $6111: $fd
	inc  bc                                          ; $6112: $03
	rst  $38                                         ; $6113: $ff
	xor  c                                           ; $6114: $a9
	add  d                                           ; $6115: $82
	rst  $38                                         ; $6116: $ff
	ld   [$ff7f], sp                                 ; $6117: $08 $7f $ff
	ccf                                              ; $611a: $3f
	ld   a, a                                        ; $611b: $7f
	rra                                              ; $611c: $1f
	rla                                              ; $611d: $17
	rrca                                             ; $611e: $0f
	daa                                              ; $611f: $27
	rlca                                             ; $6120: $07
	add  b                                           ; $6121: $80
	rrca                                             ; $6122: $0f
	ld   b, $da                                      ; $6123: $06 $da
	db   $fc                                         ; $6125: $fc
	call c, $fffc                                    ; $6126: $dc $fc $ff
	cp   $ee                                         ; $6129: $fe $ee
	add  e                                           ; $612b: $83
	cp   $06                                         ; $612c: $fe $06
	xor  $fe                                         ; $612e: $ee $fe
	db   $fd                                         ; $6130: $fd
	db   $fc                                         ; $6131: $fc
	add  hl, bc                                      ; $6132: $09
	inc  bc                                          ; $6133: $03
	dec  de                                          ; $6134: $1b
	add  e                                           ; $6135: $83
	rlca                                             ; $6136: $07
	inc  b                                           ; $6137: $04
	rla                                              ; $6138: $17
	rrca                                             ; $6139: $0f
	ld   c, $0f                                      ; $613a: $0e $0f
	ld   c, $81                                      ; $613c: $0e $81
	rrca                                             ; $613e: $0f
	ld   [$ffe0], sp                                 ; $613f: $08 $e0 $ff
	rst  $28                                         ; $6142: $ef
	rst  $38                                         ; $6143: $ff
	rst  JumpTable                                         ; $6144: $df
	rst  $38                                         ; $6145: $ff
	cp   a                                           ; $6146: $bf
	rst  $38                                         ; $6147: $ff
	ld   a, a                                        ; $6148: $7f
	add  e                                           ; $6149: $83
	rst  $38                                         ; $614a: $ff
	add  b                                           ; $614b: $80
	cp   $14                                         ; $614c: $fe $14
	rst  $38                                         ; $614e: $ff
	nop                                              ; $614f: $00
	ld   bc, $0300                                   ; $6150: $01 $00 $03
	ld   bc, $0307                                   ; $6153: $01 $07 $03
	ld   a, [de]                                     ; $6156: $1a
	ld   [bc], a                                     ; $6157: $02
	ld   [hl+], a                                    ; $6158: $22
	ld   [bc], a                                     ; $6159: $02
	ld   b, h                                        ; $615a: $44
	dec  b                                           ; $615b: $05
	push bc                                          ; $615c: $c5
	ld   b, l                                        ; $615d: $45
	ld   bc, $8f0f                                   ; $615e: $01 $0f $8f
	sbc  a                                           ; $6161: $9f
	rra                                              ; $6162: $1f
	add  b                                           ; $6163: $80
	ld   e, a                                        ; $6164: $5f
	add  b                                           ; $6165: $80
	ld   e, l                                        ; $6166: $5d
	add  b                                           ; $6167: $80
	cp   l                                           ; $6168: $bd
	ld   bc, $b3bb                                   ; $6169: $01 $bb $b3
	add  b                                           ; $616c: $80
	cp   e                                           ; $616d: $bb
	rlca                                             ; $616e: $07
	ld   a, e                                        ; $616f: $7b
	ld   [hl], a                                     ; $6170: $77
	db   $fd                                         ; $6171: $fd
	pop  af                                          ; $6172: $f1
	ei                                               ; $6173: $fb
	db   $eb                                         ; $6174: $eb
	ei                                               ; $6175: $fb
	db   $d3                                         ; $6176: $d3
	add  c                                           ; $6177: $81
	rst  $30                                         ; $6178: $f7
	ld   b, $a7                                      ; $6179: $06 $a7
	rst  $28                                         ; $617b: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $617c: $cf
	rst  JumpTable                                         ; $617d: $df
	ld   e, [hl]                                     ; $617e: $5e
	rst  JumpTable                                         ; $617f: $df
	rra                                              ; $6180: $1f
	add  c                                           ; $6181: $81
	rst  $38                                         ; $6182: $ff
	ld   [$fffe], sp                                 ; $6183: $08 $fe $ff
	rst  $20                                         ; $6186: $e7
	rst  $38                                         ; $6187: $ff
	rst  JumpTable                                         ; $6188: $df
	rst  $38                                         ; $6189: $ff
	or   a                                           ; $618a: $b7
	rst  $38                                         ; $618b: $ff
	ld   l, a                                        ; $618c: $6f
	add  c                                           ; $618d: $81
	rst  $28                                         ; $618e: $ef
	ld   de, $fbf4                                   ; $618f: $11 $f4 $fb
	ld   a, e                                        ; $6192: $7b
	ei                                               ; $6193: $fb
	dec  sp                                          ; $6194: $3b
	ei                                               ; $6195: $fb
	dec  de                                          ; $6196: $1b
	ei                                               ; $6197: $fb
	dec  bc                                          ; $6198: $0b
	ei                                               ; $6199: $fb
	inc  bc                                          ; $619a: $03
	ei                                               ; $619b: $fb
	inc  bc                                          ; $619c: $03
	ei                                               ; $619d: $fb
	ld   bc, $54fb                                   ; $619e: $01 $fb $54
	cp   $8c                                         ; $61a1: $fe $8c
	rst  $38                                         ; $61a3: $ff
	add  b                                           ; $61a4: $80
	adc  d                                           ; $61a5: $8a
	add  b                                           ; $61a6: $80
	ld   d, l                                        ; $61a7: $55
	add  b                                           ; $61a8: $80
	adc  d                                           ; $61a9: $8a
	add  b                                           ; $61aa: $80
	push de                                          ; $61ab: $d5
	add  b                                           ; $61ac: $80
	jp   z, $d580                                    ; $61ad: $ca $80 $d5

	add  b                                           ; $61b0: $80
	jp   c, $df80                                    ; $61b1: $da $80 $df

	ld   bc, $a0af                                   ; $61b4: $01 $af $a0
	add  b                                           ; $61b7: $80
	ld   d, b                                        ; $61b8: $50
	add  b                                           ; $61b9: $80
	and  b                                           ; $61ba: $a0
	add  b                                           ; $61bb: $80
	ld   d, b                                        ; $61bc: $50
	add  b                                           ; $61bd: $80
	and  b                                           ; $61be: $a0
	add  b                                           ; $61bf: $80
	ld   d, b                                        ; $61c0: $50
	add  b                                           ; $61c1: $80
	and  b                                           ; $61c2: $a0
	add  b                                           ; $61c3: $80
	ld   d, b                                        ; $61c4: $50
	ld   bc, $000f                                   ; $61c5: $01 $0f $00
	add  b                                           ; $61c8: $80
	ld   bc, $008a                                   ; $61c9: $01 $8a $00
	add  b                                           ; $61cc: $80
	xor  d                                           ; $61cd: $aa
	add  b                                           ; $61ce: $80
	ld   d, c                                        ; $61cf: $51
	add  b                                           ; $61d0: $80
	xor  d                                           ; $61d1: $aa
	add  b                                           ; $61d2: $80
	ld   d, c                                        ; $61d3: $51
	add  b                                           ; $61d4: $80
	xor  d                                           ; $61d5: $aa
	add  b                                           ; $61d6: $80
	ld   d, c                                        ; $61d7: $51
	add  b                                           ; $61d8: $80
	ld   a, [hl+]                                    ; $61d9: $2a
	add  b                                           ; $61da: $80
	ld   d, c                                        ; $61db: $51
	add  b                                           ; $61dc: $80
	xor  e                                           ; $61dd: $ab
	add  b                                           ; $61de: $80
	ld   d, a                                        ; $61df: $57
	add  b                                           ; $61e0: $80
	xor  e                                           ; $61e1: $ab
	add  b                                           ; $61e2: $80
	ld   d, l                                        ; $61e3: $55
	add  b                                           ; $61e4: $80
	xor  e                                           ; $61e5: $ab
	add  b                                           ; $61e6: $80
	ld   d, l                                        ; $61e7: $55
	add  b                                           ; $61e8: $80
	xor  d                                           ; $61e9: $aa
	add  b                                           ; $61ea: $80
	ld   d, l                                        ; $61eb: $55
	add  b                                           ; $61ec: $80
	cp   a                                           ; $61ed: $bf
	add  b                                           ; $61ee: $80
	rst  $38                                         ; $61ef: $ff
	adc  b                                           ; $61f0: $88
	cp   a                                           ; $61f1: $bf
	add  b                                           ; $61f2: $80
	ccf                                              ; $61f3: $3f
	ld   [hl+], a                                    ; $61f4: $22
	ld   [$e0ef], a                                  ; $61f5: $ea $ef $e0
	rst  $28                                         ; $61f8: $ef
	ldh  [$ef], a                                    ; $61f9: $e0 $ef
	add  sp, -$11                                    ; $61fb: $e8 $ef
	db   $ec                                         ; $61fd: $ec
	rst  $28                                         ; $61fe: $ef
	db   $ec                                         ; $61ff: $ec
	rst  $28                                         ; $6200: $ef
	db   $ec                                         ; $6201: $ec
	rst  $28                                         ; $6202: $ef
	xor  $ef                                         ; $6203: $ee $ef
	xor  d                                           ; $6205: $aa
	rst  $38                                         ; $6206: $ff
	nop                                              ; $6207: $00
	db   $fd                                         ; $6208: $fd
	nop                                              ; $6209: $00
	db   $fd                                         ; $620a: $fd
	nop                                              ; $620b: $00
	db   $fd                                         ; $620c: $fd
	ld   [bc], a                                     ; $620d: $02
	rst  $38                                         ; $620e: $ff
	nop                                              ; $620f: $00
	db   $fd                                         ; $6210: $fd
	ld   [bc], a                                     ; $6211: $02
	rst  $38                                         ; $6212: $ff
	nop                                              ; $6213: $00
	db   $fd                                         ; $6214: $fd
	ld   c, b                                        ; $6215: $48
	rrca                                             ; $6216: $0f
	cpl                                              ; $6217: $2f
	add  c                                           ; $6218: $81
	rra                                              ; $6219: $1f
	nop                                              ; $621a: $00
	ld   e, a                                        ; $621b: $5f
	add  c                                           ; $621c: $81
	ccf                                              ; $621d: $3f
	nop                                              ; $621e: $00
	cp   a                                           ; $621f: $bf
	add  d                                           ; $6220: $82
	ld   a, a                                        ; $6221: $7f
	dec  b                                           ; $6222: $05
	ld   hl, sp-$1b                                  ; $6223: $f8 $e5
	db   $fc                                         ; $6225: $fc
	call c, $fafc                                    ; $6226: $dc $fc $fa
	add  c                                           ; $6229: $81
	ld   hl, sp+$07                                  ; $622a: $f8 $07
	or   [hl]                                        ; $622c: $b6
	ldh  a, [$f3]                                    ; $622d: $f0 $f3
	ldh  a, [$e8]                                    ; $622f: $f0 $e8
	ldh  [$8f], a                                    ; $6231: $e0 $8f
	nop                                              ; $6233: $00
	dec  bc                                          ; $6234: $0b
	ld   [bc], a                                     ; $6235: $02
	add  [hl]                                        ; $6236: $86
	nop                                              ; $6237: $00
	add  [hl]                                        ; $6238: $86
	rrca                                             ; $6239: $0f
	add  [hl]                                        ; $623a: $86
	nop                                              ; $623b: $00
	ld   [$9fe0], sp                                 ; $623c: $08 $e0 $9f
	add  a                                           ; $623f: $87
	rst  $20                                         ; $6240: $e7
	pop  hl                                          ; $6241: $e1
	ld   sp, hl                                      ; $6242: $f9
	ld   hl, sp-$02                                  ; $6243: $f8 $fe
	ld   bc, $0085                                   ; $6245: $01 $85 $00
	ld   bc, $38c7                                   ; $6248: $01 $c7 $38
	add  b                                           ; $624b: $80
	adc  $80                                         ; $624c: $ce $80
	di                                               ; $624e: $f3
	add  b                                           ; $624f: $80
	ld   a, h                                        ; $6250: $7c
	nop                                              ; $6251: $00
	rst  $38                                         ; $6252: $ff
	add  l                                           ; $6253: $85
	nop                                              ; $6254: $00
	ld   bc, $05fa                                   ; $6255: $01 $fa $05
	add  b                                           ; $6258: $80
	ld   a, [hl+]                                    ; $6259: $2a
	add  b                                           ; $625a: $80
	add  b                                           ; $625b: $80
	add  b                                           ; $625c: $80
	ccf                                              ; $625d: $3f
	nop                                              ; $625e: $00
	rst  $38                                         ; $625f: $ff
	add  l                                           ; $6260: $85
	nop                                              ; $6261: $00
	ld   bc, $7f80                                   ; $6262: $01 $80 $7f
	add  b                                           ; $6265: $80
	rst  $38                                         ; $6266: $ff
	add  b                                           ; $6267: $80
	nop                                              ; $6268: $00
	add  c                                           ; $6269: $81
	rst  $38                                         ; $626a: $ff
	add  [hl]                                        ; $626b: $86
	nop                                              ; $626c: $00
	add  c                                           ; $626d: $81
	rst  $38                                         ; $626e: $ff
	add  b                                           ; $626f: $80
	nop                                              ; $6270: $00
	add  c                                           ; $6271: $81
	rst  $38                                         ; $6272: $ff
	add  [hl]                                        ; $6273: $86
	nop                                              ; $6274: $00
	add  c                                           ; $6275: $81
	rst  $38                                         ; $6276: $ff
	add  b                                           ; $6277: $80
	nop                                              ; $6278: $00
	add  c                                           ; $6279: $81
	rst  $38                                         ; $627a: $ff
	add  [hl]                                        ; $627b: $86
	nop                                              ; $627c: $00
	add  b                                           ; $627d: $80
	rst  $38                                         ; $627e: $ff
	nop                                              ; $627f: $00
	ret  nz                                          ; $6280: $c0

	add  c                                           ; $6281: $81
	nop                                              ; $6282: $00
	ld   de, $c3c0                                   ; $6283: $11 $c0 $c3
	db   $fd                                         ; $6286: $fd
	reti                                             ; $6287: $d9


	ei                                               ; $6288: $fb
	db   $eb                                         ; $6289: $eb
	ei                                               ; $628a: $fb
	cp   e                                           ; $628b: $bb
	ei                                               ; $628c: $fb
	ld   c, d                                        ; $628d: $4a
	inc  bc                                          ; $628e: $03
	rrca                                             ; $628f: $0f
	dec  b                                           ; $6290: $05
	ld   d, $17                                      ; $6291: $16 $17
	jr   c, jr_096_62d4                              ; $6293: $38 $3f

	or   $80                                         ; $6295: $f6 $80
	rst  $38                                         ; $6297: $ff
	dec  c                                           ; $6298: $0d
	rst  $28                                         ; $6299: $ef
	db   $eb                                         ; $629a: $eb
	rst  $30                                         ; $629b: $f7
	ldh  a, [$fa]                                    ; $629c: $f0 $fa
	ld   hl, sp-$03                                  ; $629e: $f8 $fd
	cp   $7c                                         ; $62a0: $fe $7c
	push hl                                          ; $62a2: $e5
	and  h                                           ; $62a3: $a4
	ld   [hl], b                                     ; $62a4: $70
	ret  nc                                          ; $62a5: $d0

	sbc  a                                           ; $62a6: $9f
	add  b                                           ; $62a7: $80
	ei                                               ; $62a8: $fb
	add  b                                           ; $62a9: $80
	cp   $81                                         ; $62aa: $fe $81
	rst  $38                                         ; $62ac: $ff
	add  b                                           ; $62ad: $80
	cpl                                              ; $62ae: $2f
	ld   [$8303], sp                                 ; $62af: $08 $03 $83
	jr   nz, jr_096_6314                             ; $62b2: $20 $60

	xor  d                                           ; $62b4: $aa
	ld   e, d                                        ; $62b5: $5a
	adc  $ff                                         ; $62b6: $ce $ff
	cp   $80                                         ; $62b8: $fe $80
	rst  $38                                         ; $62ba: $ff
	add  b                                           ; $62bb: $80
	ld   a, a                                        ; $62bc: $7f
	add  hl, bc                                      ; $62bd: $09
	cp   l                                           ; $62be: $bd
	or   e                                           ; $62bf: $b3
	ret  nc                                          ; $62c0: $d0

	inc  hl                                          ; $62c1: $23
	ld   [de], a                                     ; $62c2: $12
	inc  bc                                          ; $62c3: $03
	dec  bc                                          ; $62c4: $0b
	di                                               ; $62c5: $f3
	rst  $20                                         ; $62c6: $e7
	inc  c                                           ; $62c7: $0c
	add  [hl]                                        ; $62c8: $86
	nop                                              ; $62c9: $00
	add  c                                           ; $62ca: $81
	rrca                                             ; $62cb: $0f
	add  b                                           ; $62cc: $80

jr_096_62cd:
	nop                                              ; $62cd: $00
	add  c                                           ; $62ce: $81
	rrca                                             ; $62cf: $0f
	add  [hl]                                        ; $62d0: $86
	nop                                              ; $62d1: $00
	add  c                                           ; $62d2: $81
	rst  $38                                         ; $62d3: $ff

jr_096_62d4:
	add  b                                           ; $62d4: $80
	nop                                              ; $62d5: $00
	add  c                                           ; $62d6: $81
	rst  $38                                         ; $62d7: $ff

jr_096_62d8:
	add  [hl]                                        ; $62d8: $86
	nop                                              ; $62d9: $00
	add  c                                           ; $62da: $81
	rst  $38                                         ; $62db: $ff
	add  b                                           ; $62dc: $80

jr_096_62dd:
	nop                                              ; $62dd: $00
	add  c                                           ; $62de: $81
	rst  $38                                         ; $62df: $ff
	add  [hl]                                        ; $62e0: $86
	nop                                              ; $62e1: $00
	add  c                                           ; $62e2: $81
	rst  $38                                         ; $62e3: $ff
	add  b                                           ; $62e4: $80
	nop                                              ; $62e5: $00
	add  b                                           ; $62e6: $80
	rst  $38                                         ; $62e7: $ff
	nop                                              ; $62e8: $00
	ldh  a, [$8d]                                    ; $62e9: $f0 $8d
	rrca                                             ; $62eb: $0f
	adc  [hl]                                        ; $62ec: $8e
	rst  $38                                         ; $62ed: $ff
	inc  b                                           ; $62ee: $04
	ldh  [$9f], a                                    ; $62ef: $e0 $9f
	add  a                                           ; $62f1: $87
	rst  $20                                         ; $62f2: $e7
	ldh  [$80], a                                    ; $62f3: $e0 $80
	ld   hl, sp+$00                                  ; $62f5: $f8 $00
	cp   $86                                         ; $62f7: $fe $86
	rst  $38                                         ; $62f9: $ff
	ld   bc, $00fe                                   ; $62fa: $01 $fe $00
	add  b                                           ; $62fd: $80
	ld   a, a                                        ; $62fe: $7f
	add  b                                           ; $62ff: $80
	rst  $38                                         ; $6300: $ff
	add  c                                           ; $6301: $81
	nop                                              ; $6302: $00
	add  e                                           ; $6303: $83
	rst  $38                                         ; $6304: $ff
	add  b                                           ; $6305: $80
	cp   $01                                         ; $6306: $fe $01
	rst  $38                                         ; $6308: $ff
	nop                                              ; $6309: $00
	add  d                                           ; $630a: $82
	rst  $38                                         ; $630b: $ff
	add  c                                           ; $630c: $81
	nop                                              ; $630d: $00
	nop                                              ; $630e: $00
	rst  $38                                         ; $630f: $ff
	add  b                                           ; $6310: $80
	ld   a, [$d580]                                  ; $6311: $fa $80 $d5

jr_096_6314:
	add  b                                           ; $6314: $80
	xor  d                                           ; $6315: $aa
	ld   bc, $00ff                                   ; $6316: $01 $ff $00
	add  d                                           ; $6319: $82
	rst  $38                                         ; $631a: $ff
	add  b                                           ; $631b: $80
	nop                                              ; $631c: $00
	ld   bc, $ff1f                                   ; $631d: $01 $1f $ff
	add  b                                           ; $6320: $80
	cp   a                                           ; $6321: $bf
	add  b                                           ; $6322: $80
	ld   e, a                                        ; $6323: $5f
	add  b                                           ; $6324: $80
	cp   a                                           ; $6325: $bf
	ld   bc, $00e0                                   ; $6326: $01 $e0 $00
	add  d                                           ; $6329: $82
	rst  $38                                         ; $632a: $ff
	add  b                                           ; $632b: $80
	nop                                              ; $632c: $00
	add  [hl]                                        ; $632d: $86
	rst  $38                                         ; $632e: $ff
	ld   [bc], a                                     ; $632f: $02
	ld   a, h                                        ; $6330: $7c
	nop                                              ; $6331: $00
	add  e                                           ; $6332: $83
	add  c                                           ; $6333: $81
	add  a                                           ; $6334: $87
	ld   bc, $0018                                   ; $6335: $01 $18 $00
	add  c                                           ; $6338: $81
	sbc  a                                           ; $6339: $9f
	nop                                              ; $633a: $00
	rst  $38                                         ; $633b: $ff
	add  d                                           ; $633c: $82
	nop                                              ; $633d: $00
	ld   bc, $56a1                                   ; $633e: $01 $a1 $56
	add  b                                           ; $6341: $80
	ld   d, h                                        ; $6342: $54
	add  b                                           ; $6343: $80
	call nc, Call_096_5001                           ; $6344: $d4 $01 $50
	call c, $9c80                                    ; $6347: $dc $80 $9c
	nop                                              ; $634a: $00
	jr   jr_096_62cd                                 ; $634b: $18 $80

	sbc  b                                           ; $634d: $98
	nop                                              ; $634e: $00
	sbc  [hl]                                        ; $634f: $9e
	add  b                                           ; $6350: $80
	inc  e                                           ; $6351: $1c
	ld   bc, $6062                                   ; $6352: $01 $62 $60
	add  b                                           ; $6355: $80
	jr   nc, jr_096_62d8                             ; $6356: $30 $80

	jr   c, jr_096_635b                              ; $6358: $38 $01

	inc  e                                           ; $635a: $1c

jr_096_635b:
	jr   jr_096_62dd                                 ; $635b: $18 $80

	ld   [$0a01], sp                                 ; $635d: $08 $01 $0a
	inc  c                                           ; $6360: $0c
	add  b                                           ; $6361: $80
	inc  b                                           ; $6362: $04
	ld   b, $01                                      ; $6363: $06 $01
	ld   [bc], a                                     ; $6365: $02
	or   $ef                                         ; $6366: $f6 $ef
	pop  hl                                          ; $6368: $e1
	rst  $30                                         ; $6369: $f7
	ldh  a, [c]                                      ; $636a: $f2
	add  b                                           ; $636b: $80
	ei                                               ; $636c: $fb
	add  hl, de                                      ; $636d: $19
	rst  $38                                         ; $636e: $ff
	push af                                          ; $636f: $f5
	db   $fd                                         ; $6370: $fd
	ld   [hl], b                                     ; $6371: $70
	cp   $fa                                         ; $6372: $fe $fa
	ei                                               ; $6374: $fb
	cp   e                                           ; $6375: $bb
	db   $fd                                         ; $6376: $fd
	dec  a                                           ; $6377: $3d
	ei                                               ; $6378: $fb
	rst  $38                                         ; $6379: $ff
	db   $fd                                         ; $637a: $fd
	ld   hl, sp-$03                                  ; $637b: $f8 $fd
	ld   l, [hl]                                     ; $637d: $6e
	cp   $a6                                         ; $637e: $fe $a6
	cp   $de                                         ; $6380: $fe $de
	cp   $72                                         ; $6382: $fe $72
	cp   $ee                                         ; $6384: $fe $ee
	cp   $88                                         ; $6386: $fe $88
	add  b                                           ; $6388: $80
	sbc  $07                                         ; $6389: $de $07
	rst  $28                                         ; $638b: $ef
	rst  $38                                         ; $638c: $ff
	rst  $30                                         ; $638d: $f7
	rst  $20                                         ; $638e: $e7
	or   $76                                         ; $638f: $f6 $76
	di                                               ; $6391: $f3
	dec  sp                                          ; $6392: $3b
	add  c                                           ; $6393: $81

jr_096_6394:
	ld   a, d                                        ; $6394: $7a
	add  b                                           ; $6395: $80
	cp   d                                           ; $6396: $ba
	ld   bc, $0032                                   ; $6397: $01 $32 $00
	add  d                                           ; $639a: $82
	rst  $38                                         ; $639b: $ff
	add  b                                           ; $639c: $80
	nop                                              ; $639d: $00
	add  [hl]                                        ; $639e: $86
	rst  $38                                         ; $639f: $ff
	add  b                                           ; $63a0: $80
	nop                                              ; $63a1: $00
	add  d                                           ; $63a2: $82
	rst  $38                                         ; $63a3: $ff
	add  b                                           ; $63a4: $80
	nop                                              ; $63a5: $00
	nop                                              ; $63a6: $00
	ld   hl, sp-$7f                                  ; $63a7: $f8 $81
	rst  $38                                         ; $63a9: $ff
	add  b                                           ; $63aa: $80
	db   $fd                                         ; $63ab: $fd
	add  b                                           ; $63ac: $80
	ld   a, [$0701]                                  ; $63ad: $fa $01 $07
	nop                                              ; $63b0: $00
	add  d                                           ; $63b1: $82
	rst  $38                                         ; $63b2: $ff

jr_096_63b3:
	add  c                                           ; $63b3: $81
	nop                                              ; $63b4: $00
	add  c                                           ; $63b5: $81
	rst  $38                                         ; $63b6: $ff
	add  b                                           ; $63b7: $80
	ld   d, a                                        ; $63b8: $57
	add  b                                           ; $63b9: $80
	xor  d                                           ; $63ba: $aa
	add  d                                           ; $63bb: $82
	rrca                                             ; $63bc: $0f
	ld   bc, $0f00                                   ; $63bd: $01 $00 $0f
	add  c                                           ; $63c0: $81
	nop                                              ; $63c1: $00
	add  b                                           ; $63c2: $80
	dec  b                                           ; $63c3: $05
	add  c                                           ; $63c4: $81
	rrca                                             ; $63c5: $0f
	ld   [bc], a                                     ; $63c6: $02
	dec  c                                           ; $63c7: $0d
	nop                                              ; $63c8: $00
	ldh  a, [c]                                      ; $63c9: $f2
	add  c                                           ; $63ca: $81
	rst  $38                                         ; $63cb: $ff
	dec  c                                           ; $63cc: $0d
	ld   a, a                                        ; $63cd: $7f
	rst  $38                                         ; $63ce: $ff
	nop                                              ; $63cf: $00
	ld   a, [hl]                                     ; $63d0: $7e
	ld   bc, $0500                                   ; $63d1: $01 $00 $05
	ld   [hl], e                                     ; $63d4: $73
	ld   [hl], h                                     ; $63d5: $74
	ld   h, c                                        ; $63d6: $61
	ld   a, a                                        ; $63d7: $7f
	nop                                              ; $63d8: $00
	dec  e                                           ; $63d9: $1d
	rst  $38                                         ; $63da: $ff
	add  b                                           ; $63db: $80
	db   $eb                                         ; $63dc: $eb
	add  b                                           ; $63dd: $80
	ld   d, l                                        ; $63de: $55
	add  b                                           ; $63df: $80
	xor  e                                           ; $63e0: $ab

jr_096_63e1:
	add  hl, bc                                      ; $63e1: $09
	ld   bc, $01fd                                   ; $63e2: $01 $fd $01
	inc  bc                                          ; $63e5: $03
	xor  b                                           ; $63e6: $a8
	nop                                              ; $63e7: $00
	jr   z, jr_096_6394                              ; $63e8: $28 $aa

	jr   nz, jr_096_63e1                             ; $63ea: $20 $f5

	add  b                                           ; $63ec: $80
	xor  d                                           ; $63ed: $aa
	add  b                                           ; $63ee: $80
	ld   d, l                                        ; $63ef: $55
	add  b                                           ; $63f0: $80
	xor  d                                           ; $63f1: $aa
	add  b                                           ; $63f2: $80
	ld   d, h                                        ; $63f3: $54
	ld   bc, $e808                                   ; $63f4: $01 $08 $e8
	add  b                                           ; $63f7: $80
	db   $10                                         ; $63f8: $10
	inc  bc                                          ; $63f9: $03
	ret  nz                                          ; $63fa: $c0

	ldh  [$95], a                                    ; $63fb: $e0 $95
	ld   d, l                                        ; $63fd: $55
	add  b                                           ; $63fe: $80
	xor  b                                           ; $63ff: $a8
	add  b                                           ; $6400: $80
	ld   b, b                                        ; $6401: $40
	add  b                                           ; $6402: $80
	add  b                                           ; $6403: $80
	add  [hl]                                        ; $6404: $86
	nop                                              ; $6405: $00
	nop                                              ; $6406: $00
	rrca                                             ; $6407: $0f
	add  b                                           ; $6408: $80
	nop                                              ; $6409: $00
	ld   bc, $0005                                   ; $640a: $01 $05 $00
	add  b                                           ; $640d: $80
	dec  b                                           ; $640e: $05
	add  a                                           ; $640f: $87
	dec  c                                           ; $6410: $0d
	nop                                              ; $6411: $00
	ld   hl, sp-$80                                  ; $6412: $f8 $80
	nop                                              ; $6414: $00
	ld   [bc], a                                     ; $6415: $02
	ld   b, c                                        ; $6416: $41
	ld   [$8049], sp                                 ; $6417: $08 $49 $80
	ld   c, l                                        ; $641a: $4d
	add  [hl]                                        ; $641b: $86
	ld   e, l                                        ; $641c: $5d
	add  c                                           ; $641d: $81
	nop                                              ; $641e: $00
	ld   bc, $04a3                                   ; $641f: $01 $a3 $04
	add  c                                           ; $6422: $81
	and  a                                           ; $6423: $a7

jr_096_6424:
	add  d                                           ; $6424: $82
	xor  a                                           ; $6425: $af
	add  d                                           ; $6426: $82
	rst  $28                                         ; $6427: $ef
	ld   b, $e5                                      ; $6428: $06 $e5
	dec  de                                          ; $642a: $1b
	rra                                              ; $642b: $1f
	dec  e                                           ; $642c: $1d
	ccf                                              ; $642d: $3f
	jr   nc, jr_096_6464                             ; $642e: $30 $34

	add  c                                           ; $6430: $81
	jr   c, jr_096_63b3                              ; $6431: $38 $80

	ld   [hl], b                                     ; $6433: $70
	add  b                                           ; $6434: $80
	jr   nz, @+$09                                   ; $6435: $20 $07

	inc  a                                           ; $6437: $3c
	inc  c                                           ; $6438: $0c
	inc  sp                                          ; $6439: $33
	ld   [bc], a                                     ; $643a: $02
	ld   [hl+], a                                    ; $643b: $22
	jp   nc, Jump_096_7a8a                           ; $643c: $d2 $8a $7a

	add  e                                           ; $643f: $83
	ld   [bc], a                                     ; $6440: $02
	nop                                              ; $6441: $00
	ld   bc, $0580                                   ; $6442: $01 $80 $05
	ld   [de], a                                     ; $6445: $12
	dec  d                                           ; $6446: $15
	inc  de                                          ; $6447: $13
	inc  sp                                          ; $6448: $33
	db   $fd                                         ; $6449: $fd
	ld   e, l                                        ; $644a: $5d
	ld   a, [hl]                                     ; $644b: $7e
	ld   a, d                                        ; $644c: $7a

jr_096_644d:
	ld   a, [hl]                                     ; $644d: $7e
	ld   a, $be                                      ; $644e: $3e $be
	xor  [hl]                                        ; $6450: $ae
	cp   [hl]                                        ; $6451: $be
	cp   a                                           ; $6452: $bf
	cp   l                                           ; $6453: $bd
	cp   c                                           ; $6454: $b9
	cp   l                                           ; $6455: $bd
	cp   $7a                                         ; $6456: $fe $7a
	ld   a, $81                                      ; $6458: $3e $81
	cp   $82                                         ; $645a: $fe $82
	db   $fd                                         ; $645c: $fd
	ld   bc, $fbdb                                   ; $645d: $01 $db $fb
	add  b                                           ; $6460: $80
	rst  $30                                         ; $6461: $f7
	inc  b                                           ; $6462: $04
	db   $ec                                         ; $6463: $ec

jr_096_6464:
	db   $fc                                         ; $6464: $fc
	ldh  a, [c]                                      ; $6465: $f2
	ld   a, [$80f8]                                  ; $6466: $fa $f8 $80
	nop                                              ; $6469: $00
	ld   [bc], a                                     ; $646a: $02
	adc  $00                                         ; $646b: $ce $00
	adc  $88                                         ; $646d: $ce $88
	xor  $81                                         ; $646f: $ee $81
	nop                                              ; $6471: $00
	inc  b                                           ; $6472: $04
	jr   nz, jr_096_6478                             ; $6473: $20 $03

	daa                                              ; $6475: $27
	and  e                                           ; $6476: $a3
	and  a                                           ; $6477: $a7

jr_096_6478:
	add  h                                           ; $6478: $84
	or   a                                           ; $6479: $b7
	add  b                                           ; $647a: $80
	rst  $30                                         ; $647b: $f7
	nop                                              ; $647c: $00
	rrca                                             ; $647d: $0f
	add  b                                           ; $647e: $80
	nop                                              ; $647f: $00
	inc  bc                                          ; $6480: $03
	and  b                                           ; $6481: $a0
	jr   nz, jr_096_6424                             ; $6482: $20 $a0

	add  b                                           ; $6484: $80
	add  c                                           ; $6485: $81
	and  b                                           ; $6486: $a0
	nop                                              ; $6487: $00
	ldh  [$83], a                                    ; $6488: $e0 $83
	ldh  a, [rSB]                                    ; $648a: $f0 $01
	or   l                                           ; $648c: $b5
	ld   d, l                                        ; $648d: $55
	add  b                                           ; $648e: $80
	ld   a, [bc]                                     ; $648f: $0a
	add  b                                           ; $6490: $80
	ld   bc, $0088                                   ; $6491: $01 $88 $00
	inc  bc                                          ; $6494: $03
	inc  c                                           ; $6495: $0c
	dec  c                                           ; $6496: $0d
	ld   [$8009], sp                                 ; $6497: $08 $09 $80
	nop                                              ; $649a: $00
	dec  b                                           ; $649b: $05
	ld   bc, $0600                                   ; $649c: $01 $00 $06
	nop                                              ; $649f: $00
	dec  bc                                          ; $64a0: $0b
	inc  bc                                          ; $64a1: $03
	add  b                                           ; $64a2: $80
	rlca                                             ; $64a3: $07
	add  b                                           ; $64a4: $80
	rrca                                             ; $64a5: $0f
	dec  b                                           ; $64a6: $05
	ei                                               ; $64a7: $fb
	db   $10                                         ; $64a8: $10
	ld   b, $20                                      ; $64a9: $06 $20
	inc  bc                                          ; $64ab: $03
	ret  nz                                          ; $64ac: $c0

	add  b                                           ; $64ad: $80
	add  b                                           ; $64ae: $80
	add  b                                           ; $64af: $80
	sub  h                                           ; $64b0: $94
	ld   [bc], a                                     ; $64b1: $02
	ld   c, d                                        ; $64b2: $4a
	ret  nz                                          ; $64b3: $c0

	or   h                                           ; $64b4: $b4
	add  b                                           ; $64b5: $80
	adc  h                                           ; $64b6: $8c
	ld   a, [bc]                                     ; $64b7: $0a
	cp   $32                                         ; $64b8: $fe $32
	ld   a, $f5                                      ; $64ba: $3e $f5
	ld   e, e                                        ; $64bc: $5b
	ld   l, e                                        ; $64bd: $6b
	ld   [hl], c                                     ; $64be: $71
	ld   a, l                                        ; $64bf: $7d
	inc  h                                           ; $64c0: $24
	cp   h                                           ; $64c1: $bc
	add  h                                           ; $64c2: $84
	add  d                                           ; $64c3: $82
	sbc  [hl]                                        ; $64c4: $9e
	rlca                                             ; $64c5: $07
	sbc  $5e                                         ; $64c6: $de $5e
	sbc  b                                           ; $64c8: $98
	ret  nz                                          ; $64c9: $c0

	nop                                              ; $64ca: $00
	jr   nz, jr_096_644d                             ; $64cb: $20 $80

	sub  b                                           ; $64cd: $90
	add  b                                           ; $64ce: $80
	ret  nc                                          ; $64cf: $d0

	ld   [bc], a                                     ; $64d0: $02
	ret  nz                                          ; $64d1: $c0

	ld   c, b                                        ; $64d2: $48
	ld   h, b                                        ; $64d3: $60
	add  c                                           ; $64d4: $81
	jr   nz, @-$7e                                   ; $64d5: $20 $80

	and  b                                           ; $64d7: $a0
	nop                                              ; $64d8: $00
	jr   c, @-$71                                    ; $64d9: $38 $8d

	nop                                              ; $64db: $00
	nop                                              ; $64dc: $00
	ld   a, [bc]                                     ; $64dd: $0a
	add  l                                           ; $64de: $85
	dec  c                                           ; $64df: $0d
	add  [hl]                                        ; $64e0: $86
	rrca                                             ; $64e1: $0f
	nop                                              ; $64e2: $00
	and  l                                           ; $64e3: $a5
	add  e                                           ; $64e4: $83
	ld   e, l                                        ; $64e5: $5d
	adc  b                                           ; $64e6: $88
	ld   a, l                                        ; $64e7: $7d
	adc  [hl]                                        ; $64e8: $8e
	rst  $28                                         ; $64e9: $ef
	inc  bc                                          ; $64ea: $03
	rst  ToBoot                                         ; $64eb: $c7
	jr   @-$61                                       ; $64ec: $18 $9d

	adc  l                                           ; $64ee: $8d
	add  b                                           ; $64ef: $80
	adc  $03                                         ; $64f0: $ce $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64f2: $cf
	call $228c                                       ; $64f3: $cd $8c $22
	add  b                                           ; $64f6: $80
	ld   b, e                                        ; $64f7: $43
	nop                                              ; $64f8: $00
	ld   h, e                                        ; $64f9: $63
	add  b                                           ; $64fa: $80
	sbc  l                                           ; $64fb: $9d
	ld   [bc], a                                     ; $64fc: $02
	ldh  [$b6], a                                    ; $64fd: $e0 $b6
	xor  d                                           ; $64ff: $aa
	add  b                                           ; $6500: $80
	ld   d, l                                        ; $6501: $55
	add  b                                           ; $6502: $80
	xor  d                                           ; $6503: $aa
	ld   bc, $4043                                   ; $6504: $01 $43 $40
	add  b                                           ; $6507: $80
	nop                                              ; $6508: $00
	add  hl, bc                                      ; $6509: $09
	jr   nz, jr_096_650c                             ; $650a: $20 $00

jr_096_650c:
	ret  nz                                          ; $650c: $c0

	and  b                                           ; $650d: $a0
	add  b                                           ; $650e: $80
	ld   b, b                                        ; $650f: $40
	ld   a, a                                        ; $6510: $7f
	dec  b                                           ; $6511: $05
	ld   c, c                                        ; $6512: $49
	or   e                                           ; $6513: $b3
	adc  d                                           ; $6514: $8a
	nop                                              ; $6515: $00
	dec  c                                           ; $6516: $0d
	rst  $38                                         ; $6517: $ff
	ld   sp, hl                                      ; $6518: $f9
	ld   a, c                                        ; $6519: $79
	ld   a, h                                        ; $651a: $7c
	dec  e                                           ; $651b: $1d
	jr   jr_096_6529                                 ; $651c: $18 $0b

	ld   [$050a], sp                                 ; $651e: $08 $0a $05
	inc  d                                           ; $6521: $14
	rla                                              ; $6522: $17
	inc  d                                           ; $6523: $14
	rrca                                             ; $6524: $0f
	add  b                                           ; $6525: $80
	cpl                                              ; $6526: $2f
	nop                                              ; $6527: $00
	inc  bc                                          ; $6528: $03

jr_096_6529:
	adc  l                                           ; $6529: $8d
	xor  $86                                         ; $652a: $ee $86
	rst  $38                                         ; $652c: $ff
	add  c                                           ; $652d: $81
	ldh  a, [rP1]                                    ; $652e: $f0 $00
	di                                               ; $6530: $f3
	add  d                                           ; $6531: $82
	or   b                                           ; $6532: $b0
	nop                                              ; $6533: $00
	cp   h                                           ; $6534: $bc
	add  e                                           ; $6535: $83
	or   b                                           ; $6536: $b0
	ld   a, [bc]                                     ; $6537: $0a
	xor  e                                           ; $6538: $ab
	cp   e                                           ; $6539: $bb
	ld   c, d                                        ; $653a: $4a
	ld   a, [hl]                                     ; $653b: $7e
	add  h                                           ; $653c: $84
	ld   a, d                                        ; $653d: $7a
	ld   [hl], b                                     ; $653e: $70
	cp   d                                           ; $653f: $ba
	xor  l                                           ; $6540: $ad
	cp   l                                           ; $6541: $bd
	ldh  a, [$83]                                    ; $6542: $f0 $83
	nop                                              ; $6544: $00
	add  b                                           ; $6545: $80
	add  b                                           ; $6546: $80
	add  b                                           ; $6547: $80
	ldh  [$80], a                                    ; $6548: $e0 $80
	or   b                                           ; $654a: $b0
	add  d                                           ; $654b: $82
	ld   c, b                                        ; $654c: $48
	nop                                              ; $654d: $00
	inc  b                                           ; $654e: $04
	add  c                                           ; $654f: $81
	dec  bc                                          ; $6550: $0b
	add  b                                           ; $6551: $80
	add  hl, bc                                      ; $6552: $09
	add  b                                           ; $6553: $80
	dec  bc                                          ; $6554: $0b
	add  b                                           ; $6555: $80
	add  hl, bc                                      ; $6556: $09
	add  b                                           ; $6557: $80
	dec  bc                                          ; $6558: $0b
	add  b                                           ; $6559: $80
	add  hl, bc                                      ; $655a: $09
	add  b                                           ; $655b: $80
	dec  bc                                          ; $655c: $0b
	nop                                              ; $655d: $00
	ld   [hl-], a                                    ; $655e: $32
	add  c                                           ; $655f: $81
	db   $fc                                         ; $6560: $fc
	nop                                              ; $6561: $00
	call c, $fc85                                    ; $6562: $dc $85 $fc
	add  d                                           ; $6565: $82
	cp   $01                                         ; $6566: $fe $01
	inc  h                                           ; $6568: $24
	ld   e, l                                        ; $6569: $5d
	add  b                                           ; $656a: $80
	ld   e, h                                        ; $656b: $5c
	add  b                                           ; $656c: $80
	ld   e, l                                        ; $656d: $5d
	add  b                                           ; $656e: $80
	ld   e, h                                        ; $656f: $5c
	nop                                              ; $6570: $00
	ld   d, h                                        ; $6571: $54
	add  d                                           ; $6572: $82
	ld   d, l                                        ; $6573: $55
	add  c                                           ; $6574: $81
	ld   e, l                                        ; $6575: $5d
	ld   bc, $60c9                                   ; $6576: $01 $c9 $60
	add  b                                           ; $6579: $80
	add  sp, $02                                     ; $657a: $e8 $02
	ret  z                                           ; $657c: $c8

	add  b                                           ; $657d: $80
	nop                                              ; $657e: $00
	add  l                                           ; $657f: $85
	add  b                                           ; $6580: $80
	ld   [bc], a                                     ; $6581: $02
	adc  b                                           ; $6582: $88
	add  b                                           ; $6583: $80
	ld   hl, sp-$73                                  ; $6584: $f8 $8d
	nop                                              ; $6586: $00
	nop                                              ; $6587: $00
	ld   [$0f8d], sp                                 ; $6588: $08 $8d $0f
	ld   [bc], a                                     ; $658b: $02
	ld   a, d                                        ; $658c: $7a
	rst  $38                                         ; $658d: $ff
	db   $dd                                         ; $658e: $dd
	add  h                                           ; $658f: $84
	rst  $38                                         ; $6590: $ff
	inc  b                                           ; $6591: $04
	ldh  a, [$d7]                                    ; $6592: $f0 $d7
	rst  ToBoot                                         ; $6594: $c7
	rst  JumpTable                                         ; $6595: $df
	sbc  a                                           ; $6596: $9f
	add  b                                           ; $6597: $80
	ld   a, a                                        ; $6598: $7f
	nop                                              ; $6599: $00
	db   $10                                         ; $659a: $10
	add  l                                           ; $659b: $85
	rst  $38                                         ; $659c: $ff
	dec  b                                           ; $659d: $05
	rst  $28                                         ; $659e: $ef
	rlca                                             ; $659f: $07
	rst  $30                                         ; $65a0: $f7
	pop  af                                          ; $65a1: $f1
	db   $fd                                         ; $65a2: $fd
	db   $fc                                         ; $65a3: $fc
	add  b                                           ; $65a4: $80
	cp   $04                                         ; $65a5: $fe $04
	ld   [$f7ff], sp                                 ; $65a7: $08 $ff $f7
	ldh  a, [rSVBK]                                  ; $65aa: $f0 $70
	add  d                                           ; $65ac: $82
	ldh  [$80], a                                    ; $65ad: $e0 $80
	ret  nz                                          ; $65af: $c0

	nop                                              ; $65b0: $00
	add  b                                           ; $65b1: $80
	add  b                                           ; $65b2: $80
	nop                                              ; $65b3: $00
	ld   a, [bc]                                     ; $65b4: $0a
	jr   jr_096_65b7                                 ; $65b5: $18 $00

jr_096_65b7:
	daa                                              ; $65b7: $27
	ld   b, b                                        ; $65b8: $40
	ld   [hl], b                                     ; $65b9: $70
	jr   nc, jr_096_65f8                             ; $65ba: $30 $3c

	inc  c                                           ; $65bc: $0c
	ld   c, $02                                      ; $65bd: $0e $02
	inc  bc                                          ; $65bf: $03
	add  c                                           ; $65c0: $81
	nop                                              ; $65c1: $00
	add  b                                           ; $65c2: $80
	rrca                                             ; $65c3: $0f
	add  b                                           ; $65c4: $80
	rra                                              ; $65c5: $1f
	nop                                              ; $65c6: $00
	rst  $38                                         ; $65c7: $ff
	add  e                                           ; $65c8: $83
	nop                                              ; $65c9: $00
	ld   de, $0001                                   ; $65ca: $11 $01 $00
	ld   b, [hl]                                     ; $65cd: $46
	push bc                                          ; $65ce: $c5
	ld   e, l                                        ; $65cf: $5d
	dec  sp                                          ; $65d0: $3b
	dec  de                                          ; $65d1: $1b
	rlca                                             ; $65d2: $07
	add  $de                                         ; $65d3: $c6 $de
	rst  JumpTable                                         ; $65d5: $df
	ld   bc, $2e4f                                   ; $65d6: $01 $4f $2e
	and  e                                           ; $65d9: $a3
	ld   h, e                                        ; $65da: $63
	ld   b, c                                        ; $65db: $41
	pop  bc                                          ; $65dc: $c1
	add  d                                           ; $65dd: $82
	add  e                                           ; $65de: $83
	add  b                                           ; $65df: $80
	rlca                                             ; $65e0: $07
	add  b                                           ; $65e1: $80
	rrca                                             ; $65e2: $0f
	nop                                              ; $65e3: $00
	pop  af                                          ; $65e4: $f1
	add  b                                           ; $65e5: $80
	rst  $38                                         ; $65e6: $ff
	ld   bc, $ff7f                                   ; $65e7: $01 $7f $ff
	add  e                                           ; $65ea: $83
	cp   a                                           ; $65eb: $bf
	nop                                              ; $65ec: $00
	ccf                                              ; $65ed: $3f
	add  b                                           ; $65ee: $80
	ld   a, a                                        ; $65ef: $7f
	inc  bc                                          ; $65f0: $03
	rra                                              ; $65f1: $1f
	ld   l, [hl]                                     ; $65f2: $6e
	ld   h, b                                        ; $65f3: $60
	or   b                                           ; $65f4: $b0
	add  c                                           ; $65f5: $81
	or   e                                           ; $65f6: $b3
	add  d                                           ; $65f7: $82

jr_096_65f8:
	or   b                                           ; $65f8: $b0
	add  d                                           ; $65f9: $82
	or   e                                           ; $65fa: $b3
	add  d                                           ; $65fb: $82
	or   b                                           ; $65fc: $b0
	nop                                              ; $65fd: $00
	add  c                                           ; $65fe: $81
	add  c                                           ; $65ff: $81
	ld   c, l                                        ; $6600: $4d
	nop                                              ; $6601: $00
	ld   a, [$3a81]                                  ; $6602: $fa $81 $3a
	nop                                              ; $6605: $00
	adc  d                                           ; $6606: $8a
	add  c                                           ; $6607: $81
	ld   c, d                                        ; $6608: $4a
	nop                                              ; $6609: $00
	ld   a, [$3a81]                                  ; $660a: $fa $81 $3a
	ld   bc, $24d4                                   ; $660d: $01 $d4 $24
	add  b                                           ; $6610: $80
	and  h                                           ; $6611: $a4
	add  b                                           ; $6612: $80
	sub  h                                           ; $6613: $94
	add  b                                           ; $6614: $80
	sub  d                                           ; $6615: $92
	add  b                                           ; $6616: $80
	jp   nz, $4280                                   ; $6617: $c2 $80 $42

	add  b                                           ; $661a: $80
	ld   c, c                                        ; $661b: $49
	add  b                                           ; $661c: $80
	ld   l, c                                        ; $661d: $69
	ld   bc, $0906                                   ; $661e: $01 $06 $09
	add  b                                           ; $6621: $80
	dec  bc                                          ; $6622: $0b
	adc  c                                           ; $6623: $89
	dec  c                                           ; $6624: $0d
	ld   bc, $110c                                   ; $6625: $01 $0c $11
	add  d                                           ; $6628: $82
	cp   $83                                         ; $6629: $fe $83
	db   $fc                                         ; $662b: $fc
	ld   [bc], a                                     ; $662c: $02
	xor  $cc                                         ; $662d: $ee $cc
	pop  de                                          ; $662f: $d1
	add  b                                           ; $6630: $80
	ret  nc                                          ; $6631: $d0

	ld   bc, $c410                                   ; $6632: $01 $10 $c4
	add  b                                           ; $6635: $80
	ld   e, h                                        ; $6636: $5c
	add  e                                           ; $6637: $83
	ld   c, h                                        ; $6638: $4c
	add  h                                           ; $6639: $84
	ld   c, [hl]                                     ; $663a: $4e
	ld   [bc], a                                     ; $663b: $02
	adc  $4e                                         ; $663c: $ce $4e
	ld   [hl], b                                     ; $663e: $70
	add  e                                           ; $663f: $83
	add  b                                           ; $6640: $80
	nop                                              ; $6641: $00
	add  h                                           ; $6642: $84
	add  l                                           ; $6643: $85
	nop                                              ; $6644: $00
	ld   [bc], a                                     ; $6645: $02
	ld   b, e                                        ; $6646: $43
	inc  bc                                          ; $6647: $03
	inc  a                                           ; $6648: $3c
	adc  e                                           ; $6649: $8b
	nop                                              ; $664a: $00
	add  b                                           ; $664b: $80
	rst  $38                                         ; $664c: $ff
	nop                                              ; $664d: $00
	rrca                                             ; $664e: $0f
	add  b                                           ; $664f: $80
	dec  c                                           ; $6650: $0d
	add  b                                           ; $6651: $80
	dec  bc                                          ; $6652: $0b
	inc  bc                                          ; $6653: $03
	rlca                                             ; $6654: $07
	rla                                              ; $6655: $17
	rrca                                             ; $6656: $0f
	cpl                                              ; $6657: $2f
	add  b                                           ; $6658: $80
	rra                                              ; $6659: $1f
	dec  b                                           ; $665a: $05
	ld   e, $5e                                      ; $665b: $1e $5e
	inc  a                                           ; $665d: $3c
	cp   l                                           ; $665e: $bd
	and  c                                           ; $665f: $a1
	and  b                                           ; $6660: $a0
	add  b                                           ; $6661: $80
	rst  $38                                         ; $6662: $ff
	dec  b                                           ; $6663: $05
	ldh  [rIE], a                                    ; $6664: $e0 $ff
	ret  nz                                          ; $6666: $c0

	ldh  [rP1], a                                    ; $6667: $e0 $00
	ld   b, b                                        ; $6669: $40
	add  c                                           ; $666a: $81
	nop                                              ; $666b: $00
	add  c                                           ; $666c: $81
	add  b                                           ; $666d: $80
	ld   bc, $fe01                                   ; $666e: $01 $01 $fe
	add  b                                           ; $6671: $80
	rst  $38                                         ; $6672: $ff
	dec  c                                           ; $6673: $0d
	nop                                              ; $6674: $00
	rst  ToBoot                                         ; $6675: $c7
	nop                                              ; $6676: $00
	ld   a, b                                        ; $6677: $78
	nop                                              ; $6678: $00
	ld   b, [hl]                                     ; $6679: $46
	add  hl, de                                      ; $667a: $19
	db   $10                                         ; $667b: $10
	ld   [hl], $26                                   ; $667c: $36 $26
	xor  $0e                                         ; $667e: $ee $0e
	nop                                              ; $6680: $00
	inc  a                                           ; $6681: $3c
	add  b                                           ; $6682: $80
	inc  e                                           ; $6683: $1c
	dec  bc                                          ; $6684: $0b
	inc  c                                           ; $6685: $0c
	cp   a                                           ; $6686: $bf
	rlca                                             ; $6687: $07
	add  hl, de                                      ; $6688: $19
	ld   bc, $004e                                   ; $6689: $01 $4e $00
	dec  sp                                          ; $668c: $3b
	add  b                                           ; $668d: $80
	add  h                                           ; $668e: $84
	ret  z                                           ; $668f: $c8

	add  hl, hl                                      ; $6690: $29
	add  b                                           ; $6691: $80
	nop                                              ; $6692: $00
	ld   b, $1f                                      ; $6693: $06 $1f
	sbc  a                                           ; $6695: $9f
	add  a                                           ; $6696: $87
	rst  ToBoot                                         ; $6697: $c7
	pop  bc                                          ; $6698: $c1
	db   $e3                                         ; $6699: $e3
	ldh  [c], a                                      ; $669a: $e2
	add  b                                           ; $669b: $80
	rst  $20                                         ; $669c: $e7
	add  b                                           ; $669d: $80
	ld   [hl], a                                     ; $669e: $77
	ld   bc, $0f8f                                   ; $669f: $01 $8f $0f
	add  b                                           ; $66a2: $80
	dec  [hl]                                        ; $66a3: $35
	ld   [bc], a                                     ; $66a4: $02
	ld   h, e                                        ; $66a5: $63
	db   $ec                                         ; $66a6: $ec
	ld   hl, sp-$7f                                  ; $66a7: $f8 $81
	ldh  a, [$03]                                    ; $66a9: $f0 $03
	db   $fd                                         ; $66ab: $fd
	ld   hl, sp+$7b                                  ; $66ac: $f8 $7b
	ld   a, c                                        ; $66ae: $79
	add  b                                           ; $66af: $80
	ld   a, e                                        ; $66b0: $7b
	add  b                                           ; $66b1: $80
	ld   [hl], a                                     ; $66b2: $77
	add  b                                           ; $66b3: $80
	daa                                              ; $66b4: $27
	dec  b                                           ; $66b5: $05
	rst  JumpTable                                         ; $66b6: $df
	rra                                              ; $66b7: $1f
	ld   a, a                                        ; $66b8: $7f
	ccf                                              ; $66b9: $3f
	rst  $38                                         ; $66ba: $ff
	ld   a, a                                        ; $66bb: $7f
	add  b                                           ; $66bc: $80
	cp   $82                                         ; $66bd: $fe $82
	db   $fc                                         ; $66bf: $fc
	add  b                                           ; $66c0: $80
	ld   sp, hl                                      ; $66c1: $f9
	add  b                                           ; $66c2: $80
	pop  af                                          ; $66c3: $f1
	nop                                              ; $66c4: $00
	nop                                              ; $66c5: $00
	add  b                                           ; $66c6: $80
	ld   [hl], a                                     ; $66c7: $77
	add  b                                           ; $66c8: $80
	dec  de                                          ; $66c9: $1b
	add  b                                           ; $66ca: $80
	ld   c, l                                        ; $66cb: $4d
	add  h                                           ; $66cc: $84
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66cd: $cf
	add  b                                           ; $66ce: $80
	sbc  a                                           ; $66cf: $9f
	inc  bc                                          ; $66d0: $03
	cp   a                                           ; $66d1: $bf
	cp   [hl]                                        ; $66d2: $be
	nop                                              ; $66d3: $00
	ld   bc, $fc80                                   ; $66d4: $01 $80 $fc
	adc  c                                           ; $66d7: $89
	rst  $38                                         ; $66d8: $ff
	ld   [bc], a                                     ; $66d9: $02
	ld   d, b                                        ; $66da: $50
	ld   [hl], b                                     ; $66db: $70
	ldh  [$80], a                                    ; $66dc: $e0 $80
	ld   h, b                                        ; $66de: $60
	nop                                              ; $66df: $00
	ld   [hl+], a                                    ; $66e0: $22
	add  b                                           ; $66e1: $80
	jp   nz, $f204                                   ; $66e2: $c2 $04 $f2

	ldh  [c], a                                      ; $66e5: $e2
	ld   a, [$f8f4]                                  ; $66e6: $fa $f4 $f8
	add  b                                           ; $66e9: $80
	ld   sp, hl                                      ; $66ea: $f9
	ld   bc, $9afb                                   ; $66eb: $01 $fb $9a
	add  c                                           ; $66ee: $81
	ld   h, l                                        ; $66ef: $65
	add  b                                           ; $66f0: $80
	ld   h, a                                        ; $66f1: $67
	ld   c, $43                                      ; $66f2: $0e $43
	ld   h, a                                        ; $66f4: $67
	ld   a, [hl]                                     ; $66f5: $7e
	ld   a, a                                        ; $66f6: $7f
	ld   [hl], d                                     ; $66f7: $72
	ld   l, a                                        ; $66f8: $6f
	ld   l, b                                        ; $66f9: $68
	ld   h, b                                        ; $66fa: $60
	or   b                                           ; $66fb: $b0
	ret  nz                                          ; $66fc: $c0

	ld   b, h                                        ; $66fd: $44
	ld   [$080a], sp                                 ; $66fe: $08 $0a $08
	ld   c, $83                                      ; $6701: $0e $83
	rrca                                             ; $6703: $0f
	add  h                                           ; $6704: $84
	dec  bc                                          ; $6705: $0b
	ld   [bc], a                                     ; $6706: $02
	dec  l                                           ; $6707: $2d
	ld   [bc], a                                     ; $6708: $02
	rst  JumpTable                                         ; $6709: $df
	add  d                                           ; $670a: $82
	ld   a, $80                                      ; $670b: $3e $80
	ld   a, [hl]                                     ; $670d: $7e
	add  b                                           ; $670e: $80
	ld   a, $80                                      ; $670f: $3e $80
	ld   a, [hl]                                     ; $6711: $7e
	add  b                                           ; $6712: $80
	ld   a, $01                                      ; $6713: $3e $01
	ld   a, [hl]                                     ; $6715: $7e
	ld   b, a                                        ; $6716: $47
	add  b                                           ; $6717: $80
	ld   l, $80                                      ; $6718: $2e $80
	ld   c, [hl]                                     ; $671a: $4e
	add  b                                           ; $671b: $80
	ld   e, [hl]                                     ; $671c: $5e
	ld   [bc], a                                     ; $671d: $02
	ld   c, [hl]                                     ; $671e: $4e
	ld   c, a                                        ; $671f: $4f
	ld   l, a                                        ; $6720: $6f
	add  b                                           ; $6721: $80
	ld   a, a                                        ; $6722: $7f
	inc  b                                           ; $6723: $04
	ld   c, a                                        ; $6724: $4f
	ld   a, a                                        ; $6725: $7f
	ld   b, a                                        ; $6726: $47
	ld   a, a                                        ; $6727: $7f
	sbc  a                                           ; $6728: $9f
	add  b                                           ; $6729: $80
	inc  bc                                          ; $672a: $03
	add  b                                           ; $672b: $80
	nop                                              ; $672c: $00
	adc  c                                           ; $672d: $89
	ld   bc, $3e01                                   ; $672e: $01 $01 $3e
	rst  $38                                         ; $6731: $ff
	add  b                                           ; $6732: $80
	nop                                              ; $6733: $00
	add  h                                           ; $6734: $84
	ld   d, l                                        ; $6735: $55
	add  d                                           ; $6736: $82
	ld   d, h                                        ; $6737: $54
	daa                                              ; $6738: $27
	ld   d, l                                        ; $6739: $55
	ld   d, h                                        ; $673a: $54
	ld   [bc], a                                     ; $673b: $02
	ld   b, b                                        ; $673c: $40
	ld   b, h                                        ; $673d: $44
	nop                                              ; $673e: $00
	ld   [$1201], sp                                 ; $673f: $08 $01 $12
	nop                                              ; $6742: $00
	daa                                              ; $6743: $27
	inc  bc                                          ; $6744: $03
	ld   c, a                                        ; $6745: $4f
	rlca                                             ; $6746: $07
	sbc  [hl]                                        ; $6747: $9e
	ld   c, $0c                                      ; $6748: $0e $0c
	dec  l                                           ; $674a: $2d
	dec  a                                           ; $674b: $3d
	nop                                              ; $674c: $00
	rra                                              ; $674d: $1f
	inc  bc                                          ; $674e: $03
	db   $ec                                         ; $674f: $ec
	rrca                                             ; $6750: $0f
	inc  de                                          ; $6751: $13
	rra                                              ; $6752: $1f
	cpl                                              ; $6753: $2f
	ccf                                              ; $6754: $3f
	ld   e, a                                        ; $6755: $5f
	ld   a, a                                        ; $6756: $7f
	cp   a                                           ; $6757: $bf
	rst  $38                                         ; $6758: $ff
	ld   a, a                                        ; $6759: $7f
	rst  $38                                         ; $675a: $ff
	or   c                                           ; $675b: $b1
	ld   [hl], c                                     ; $675c: $71
	cp   a                                           ; $675d: $bf
	ld   a, a                                        ; $675e: $7f
	rst  $30                                         ; $675f: $f7
	ld   hl, sp-$80                                  ; $6760: $f8 $80
	ldh  a, [rSB]                                    ; $6762: $f0 $01
	sub  b                                           ; $6764: $90
	sbc  a                                           ; $6765: $9f
	add  b                                           ; $6766: $80
	rst  $38                                         ; $6767: $ff
	inc  b                                           ; $6768: $04
	ei                                               ; $6769: $fb
	sbc  h                                           ; $676a: $9c
	sub  c                                           ; $676b: $91
	ld   hl, sp-$0f                                  ; $676c: $f8 $f1
	add  d                                           ; $676e: $82
	cp   $82                                         ; $676f: $fe $82
	nop                                              ; $6771: $00
	ld   [$feff], sp                                 ; $6772: $08 $ff $fe
	rst  $38                                         ; $6775: $ff
	cp   $00                                         ; $6776: $fe $00
	rst  $38                                         ; $6778: $ff
	nop                                              ; $6779: $00
	push bc                                          ; $677a: $c5
	ld   a, [hl-]                                    ; $677b: $3a
	add  b                                           ; $677c: $80
	dec  de                                          ; $677d: $1b
	inc  de                                          ; $677e: $13
	inc  bc                                          ; $677f: $03

Call_096_6780:
	db   $e3                                         ; $6780: $e3
	and  $36                                         ; $6781: $e6 $36
	ld   [hl-], a                                    ; $6783: $32
	sbc  d                                           ; $6784: $9a
	sbc  b                                           ; $6785: $98
	inc  b                                           ; $6786: $04
	ld   l, h                                        ; $6787: $6c
	ld   h, e                                        ; $6788: $63
	db   $e3                                         ; $6789: $e3
	pop  hl                                          ; $678a: $e1
	pop  bc                                          ; $678b: $c1
	bit  5, e                                        ; $678c: $cb $6b
	ld   l, d                                        ; $678e: $6a
	cpl                                              ; $678f: $2f
	inc  l                                           ; $6790: $2c
	sub  a                                           ; $6791: $97
	ld   d, $80                                      ; $6792: $16 $80
	dec  hl                                          ; $6794: $2b
	add  b                                           ; $6795: $80
	inc  b                                           ; $6796: $04
	dec  b                                           ; $6797: $05
	or   e                                           ; $6798: $b3
	inc  sp                                          ; $6799: $33
	inc  [hl]                                        ; $679a: $34
	or   h                                           ; $679b: $b4
	add  b                                           ; $679c: $80
	inc  bc                                          ; $679d: $03
	add  b                                           ; $679e: $80
	ld   b, e                                        ; $679f: $43
	ld   bc, $6763                                   ; $67a0: $01 $63 $67
	add  d                                           ; $67a3: $82
	rst  $30                                         ; $67a4: $f7
	inc  bc                                          ; $67a5: $03
	rst  $20                                         ; $67a6: $e7
	jp   hl                                          ; $67a7: $e9


	ld   l, a                                        ; $67a8: $6f
	ld   h, [hl]                                     ; $67a9: $66
	add  b                                           ; $67aa: $80
	and  a                                           ; $67ab: $a7
	nop                                              ; $67ac: $00
	nop                                              ; $67ad: $00
	add  d                                           ; $67ae: $82
	ld   a, a                                        ; $67af: $7f
	add  [hl]                                        ; $67b0: $86
	rst  $38                                         ; $67b1: $ff
	inc  bc                                          ; $67b2: $03
	rst  $20                                         ; $67b3: $e7
	rst  $38                                         ; $67b4: $ff
	ld   e, e                                        ; $67b5: $5b
	ld   b, e                                        ; $67b6: $43
	add  b                                           ; $67b7: $80
	ei                                               ; $67b8: $fb
	add  d                                           ; $67b9: $82

jr_096_67ba:
	reti                                             ; $67ba: $d9


	add  d                                           ; $67bb: $82
	ret                                              ; $67bc: $c9


	add  d                                           ; $67bd: $82
	pop  bc                                          ; $67be: $c1
	add  b                                           ; $67bf: $80
	add  b                                           ; $67c0: $80
	add  d                                           ; $67c1: $82
	db   $fd                                         ; $67c2: $fd
	add  h                                           ; $67c3: $84
	cp   $80                                         ; $67c4: $fe $80
	cp   [hl]                                        ; $67c6: $be
	add  b                                           ; $67c7: $80
	sbc  [hl]                                        ; $67c8: $9e
	ld   b, $0e                                      ; $67c9: $06 $0e
	ldh  a, [c]                                      ; $67cb: $f2
	nop                                              ; $67cc: $00
	inc  a                                           ; $67cd: $3c
	jr   nz, jr_096_67ba                             ; $67ce: $20 $ea

	ld   a, [bc]                                     ; $67d0: $0a
	add  c                                           ; $67d1: $81
	ld   a, [hl-]                                    ; $67d2: $3a
	add  c                                           ; $67d3: $81
	ld   a, [$3a00]                                  ; $67d4: $fa $00 $3a
	add  c                                           ; $67d7: $81
	jp   z, $cb00                                    ; $67d8: $ca $00 $cb

	add  e                                           ; $67db: $83
	dec  bc                                          ; $67dc: $0b
	adc  b                                           ; $67dd: $88
	add  hl, bc                                      ; $67de: $09
	ld   de, $38f7                                   ; $67df: $11 $f7 $38
	daa                                              ; $67e2: $27
	ld   b, b                                        ; $67e3: $40
	and  a                                           ; $67e4: $a7
	rra                                              ; $67e5: $1f
	ld   e, $e1                                      ; $67e6: $1e $e1
	rst  $28                                         ; $67e8: $ef

jr_096_67e9:
	rrca                                             ; $67e9: $0f
	inc  a                                           ; $67ea: $3c
	rst  $38                                         ; $67eb: $ff
	ldh  a, [rIE]                                    ; $67ec: $f0 $ff
	inc  bc                                          ; $67ee: $03
	ccf                                              ; $67ef: $3f
	jr   nc, jr_096_6831                             ; $67f0: $30 $3f

	add  b                                           ; $67f2: $80
	ld   a, a                                        ; $67f3: $7f
	add  b                                           ; $67f4: $80
	rst  $38                                         ; $67f5: $ff
	dec  b                                           ; $67f6: $05
	ccf                                              ; $67f7: $3f
	rst  $38                                         ; $67f8: $ff
	ccf                                              ; $67f9: $3f
	rst  $38                                         ; $67fa: $ff
	ccf                                              ; $67fb: $3f
	jp   $cf80                                       ; $67fc: $c3 $80 $cf


	ld   [bc], a                                     ; $67ff: $02
	cp   [hl]                                        ; $6800: $be
	rst  $38                                         ; $6801: $ff
	ld   a, l                                        ; $6802: $7d
	add  d                                           ; $6803: $82
	ld   bc, $0080                                   ; $6804: $01 $80 $00
	add  d                                           ; $6807: $82
	inc  bc                                          ; $6808: $03
	add  b                                           ; $6809: $80
	nop                                              ; $680a: $00
	jr   @+$41                                       ; $680b: $18 $3f

	rst  $38                                         ; $680d: $ff
	nop                                              ; $680e: $00
	ld   d, e                                        ; $680f: $53
	ld   d, b                                        ; $6810: $50
	ld   d, h                                        ; $6811: $54
	ld   d, b                                        ; $6812: $50
	ld   [$d000], sp                                 ; $6813: $08 $00 $d0
	ret  nz                                          ; $6816: $c0

	and  b                                           ; $6817: $a0
	add  b                                           ; $6818: $80
	ld   b, b                                        ; $6819: $40
	nop                                              ; $681a: $00
	add  c                                           ; $681b: $81
	nop                                              ; $681c: $00
	ld   [bc], a                                     ; $681d: $02
	nop                                              ; $681e: $00
	ld   a, $03                                      ; $681f: $3e $03
	dec  b                                           ; $6821: $05
	rlca                                             ; $6822: $07
	ld   c, e                                        ; $6823: $4b
	rrca                                             ; $6824: $0f
	add  b                                           ; $6825: $80
	cpl                                              ; $6826: $2f
	nop                                              ; $6827: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6828: $cf
	add  b                                           ; $6829: $80
	ld   l, a                                        ; $682a: $6f
	dec  b                                           ; $682b: $05
	ld   a, a                                        ; $682c: $7f
	inc  sp                                          ; $682d: $33
	ld   [hl], a                                     ; $682e: $77
	ld   [hl], $7f                                   ; $682f: $36 $7f

jr_096_6831:
	ld   a, [hl-]                                    ; $6831: $3a
	add  a                                           ; $6832: $87
	rst  $38                                         ; $6833: $ff
	inc  bc                                          ; $6834: $03
	db   $fc                                         ; $6835: $fc
	rst  $38                                         ; $6836: $ff
	add  d                                           ; $6837: $82
	ld   a, [hl]                                     ; $6838: $7e
	add  b                                           ; $6839: $80
	cp   h                                           ; $683a: $bc
	jr   nz, jr_096_6841                             ; $683b: $20 $04

	db   $fc                                         ; $683d: $fc
	ld   hl, sp-$01                                  ; $683e: $f8 $ff
	pop  af                                          ; $6840: $f1

jr_096_6841:
	rst  $38                                         ; $6841: $ff
	push af                                          ; $6842: $f5
	db   $fc                                         ; $6843: $fc
	ld   [$86fe], sp                                 ; $6844: $08 $fe $86
	adc  a                                           ; $6847: $8f
	inc  bc                                          ; $6848: $03
	rlca                                             ; $6849: $07
	ld   a, [hl-]                                    ; $684a: $3a
	ld   bc, $0047                                   ; $684b: $01 $47 $00
	ld   a, b                                        ; $684e: $78
	add  b                                           ; $684f: $80
	add  [hl]                                        ; $6850: $86
	ld   hl, sp-$07                                  ; $6851: $f8 $f9
	ld   a, $f8                                      ; $6853: $3e $f8
	ld   b, $b9                                      ; $6855: $06 $b9
	nop                                              ; $6857: $00
	ld   b, [hl]                                     ; $6858: $46
	add  b                                           ; $6859: $80
	and  b                                           ; $685a: $a0
	ret  nz                                          ; $685b: $c0

	dec  [hl]                                        ; $685c: $35
	add  b                                           ; $685d: $80
	and  b                                           ; $685e: $a0
	add  c                                           ; $685f: $81
	jr   nz, jr_096_6862                             ; $6860: $20 $00

jr_096_6862:
	daa                                              ; $6862: $27
	add  b                                           ; $6863: $80
	jr   nz, jr_096_67e9                             ; $6864: $20 $83

	nop                                              ; $6866: $00
	dec  d                                           ; $6867: $15
	ld   [bc], a                                     ; $6868: $02
	nop                                              ; $6869: $00
	ld   hl, sp-$29                                  ; $686a: $f8 $d7
	pop  bc                                          ; $686c: $c1
	ld   h, c                                        ; $686d: $61
	and  $b6                                         ; $686e: $e6 $b6
	ldh  a, [c]                                      ; $6870: $f2
	jp   c, Jump_096_6cf8                            ; $6871: $da $f8 $6c

	ld   a, h                                        ; $6874: $7c
	ld   h, $2e                                      ; $6875: $26 $2e
	inc  bc                                          ; $6877: $03
	rlca                                             ; $6878: $07
	ld   bc, $43a6                                   ; $6879: $01 $a6 $43
	sbc  [hl]                                        ; $687c: $9e
	add  [hl]                                        ; $687d: $86
	add  b                                           ; $687e: $80
	ld   h, $07                                      ; $687f: $26 $07
	reti                                             ; $6881: $d9


	add  hl, de                                      ; $6882: $19

jr_096_6883:
	ld   l, $0e                                      ; $6883: $2e $0e

jr_096_6885:
	rst  ToBoot                                         ; $6885: $c7
	rlca                                             ; $6886: $07
	dec  hl                                          ; $6887: $2b
	dec  bc                                          ; $6888: $0b
	add  b                                           ; $6889: $80
	ld   h, e                                        ; $688a: $63
	rlca                                             ; $688b: $07
	inc  a                                           ; $688c: $3c
	dec  a                                           ; $688d: $3d
	ccf                                              ; $688e: $3f
	ld   a, $5c                                      ; $688f: $3e $5c
	inc  e                                           ; $6891: $1c
	ret  c                                           ; $6892: $d8

	sbc  b                                           ; $6893: $98
	add  b                                           ; $6894: $80
	pop  de                                          ; $6895: $d1
	inc  bc                                          ; $6896: $03
	ld   l, $2c                                      ; $6897: $2e $2c
	push bc                                          ; $6899: $c5
	rst  ToBoot                                         ; $689a: $c7
	add  b                                           ; $689b: $80
	sbc  d                                           ; $689c: $9a
	dec  b                                           ; $689d: $05
	ld   h, e                                        ; $689e: $63
	inc  bc                                          ; $689f: $03
	or   a                                           ; $68a0: $b7
	ld   b, a                                        ; $68a1: $47
	rst  JumpTable                                         ; $68a2: $df
	ld   c, a                                        ; $68a3: $4f
	add  b                                           ; $68a4: $80
	ld   e, c                                        ; $68a5: $59
	add  b                                           ; $68a6: $80
	or   [hl]                                        ; $68a7: $b6
	add  b                                           ; $68a8: $80
	cpl                                              ; $68a9: $2f
	add  b                                           ; $68aa: $80
	ld   [hl], d                                     ; $68ab: $72
	add  b                                           ; $68ac: $80
	db   $fc                                         ; $68ad: $fc
	inc  bc                                          ; $68ae: $03
	nop                                              ; $68af: $00
	ld   c, $8e                                      ; $68b0: $0e $8e
	sbc  l                                           ; $68b2: $9d
	add  c                                           ; $68b3: $81
	db   $dd                                         ; $68b4: $dd
	nop                                              ; $68b5: $00
	sbc  $80                                         ; $68b6: $de $80
	ld   e, $80                                      ; $68b8: $1e $80
	sbc  [hl]                                        ; $68ba: $9e
	nop                                              ; $68bb: $00
	ld   e, $80                                      ; $68bc: $1e $80
	ld   a, $02                                      ; $68be: $3e $02
	ld   a, [hl]                                     ; $68c0: $7e
	add  h                                           ; $68c1: $84
	ld   a, [hl-]                                    ; $68c2: $3a
	add  c                                           ; $68c3: $81
	jr   nc, jr_096_68c6                             ; $68c4: $30 $00

jr_096_68c6:
	ret  nz                                          ; $68c6: $c0

	add  c                                           ; $68c7: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68c8: $cf
	nop                                              ; $68c9: $00
	ccf                                              ; $68ca: $3f
	add  b                                           ; $68cb: $80
	jr   nc, jr_096_68cf                             ; $68cc: $30 $01

	rst  ToBoot                                         ; $68ce: $c7

jr_096_68cf:
	rlca                                             ; $68cf: $07
	add  b                                           ; $68d0: $80
	ld   [hl], a                                     ; $68d1: $77
	and  l                                           ; $68d2: $a5
	ld   bc, $ff00                                   ; $68d3: $01 $00 $ff
	adc  b                                           ; $68d6: $88
	nop                                              ; $68d7: $00
	ld   b, $01                                      ; $68d8: $06 $01
	pop  bc                                          ; $68da: $c1
	jp   nz, $3c22                                   ; $68db: $c2 $22 $3c

	db   $10                                         ; $68de: $10
	inc  c                                           ; $68df: $0c
	add  b                                           ; $68e0: $80
	dec  bc                                          ; $68e1: $0b
	add  b                                           ; $68e2: $80
	jr   nc, @-$7e                                   ; $68e3: $30 $80

	ld   h, b                                        ; $68e5: $60
	add  b                                           ; $68e6: $80
	add  b                                           ; $68e7: $80
	add  a                                           ; $68e8: $87
	nop                                              ; $68e9: $00
	ld   b, $80                                      ; $68ea: $06 $80
	ret  nz                                          ; $68ec: $c0

	ld   a, b                                        ; $68ed: $78
	jr   nz, jr_096_690f                             ; $68ee: $20 $1f

	inc  b                                           ; $68f0: $04
	inc  bc                                          ; $68f1: $03
	adc  h                                           ; $68f2: $8c
	nop                                              ; $68f3: $00
	ld   b, $30                                      ; $68f4: $06 $30
	ret  nz                                          ; $68f6: $c0

	adc  [hl]                                        ; $68f7: $8e
	ld   [hl], b                                     ; $68f8: $70
	add  hl, bc                                      ; $68f9: $09
	ld   b, $01                                      ; $68fa: $06 $01
	adc  e                                           ; $68fc: $8b
	nop                                              ; $68fd: $00
	inc  b                                           ; $68fe: $04
	add  b                                           ; $68ff: $80
	nop                                              ; $6900: $00
	jr   nz, jr_096_6883                             ; $6901: $20 $80

	jr   nz, jr_096_6885                             ; $6903: $20 $80

	inc  a                                           ; $6905: $3c
	add  b                                           ; $6906: $80
	ld   b, $8c                                      ; $6907: $06 $8c
	nop                                              ; $6909: $00
	dec  b                                           ; $690a: $05
	add  b                                           ; $690b: $80
	ld   h, b                                        ; $690c: $60
	ldh  [rAUD1ENV], a                               ; $690d: $e0 $12

jr_096_690f:
	inc  e                                           ; $690f: $1c
	ld   c, $80                                      ; $6910: $0e $80
	inc  bc                                          ; $6912: $03
	adc  e                                           ; $6913: $8b
	nop                                              ; $6914: $00
	add  hl, bc                                      ; $6915: $09
	ret  nz                                          ; $6916: $c0

	nop                                              ; $6917: $00
	call c, $7f60                            ; $6918: $dc $60 $7f
	jr   jr_096_6938                                 ; $691b: $18 $1b

	rrca                                             ; $691d: $0f
	ld   c, $01                                      ; $691e: $0e $01
	adc  c                                           ; $6920: $89
	nop                                              ; $6921: $00
	add  b                                           ; $6922: $80
	inc  bc                                          ; $6923: $03
	ld   [bc], a                                     ; $6924: $02
	ldh  [rAUD4LEN], a                               ; $6925: $e0 $20
	ret  nz                                          ; $6927: $c0

	add  b                                           ; $6928: $80
	ld   [$0202], sp                                 ; $6929: $08 $02 $02
	inc  bc                                          ; $692c: $03
	ld   bc, $0084                                   ; $692d: $01 $84 $00
	add  b                                           ; $6930: $80
	add  b                                           ; $6931: $80
	add  b                                           ; $6932: $80
	ld   h, b                                        ; $6933: $60
	add  d                                           ; $6934: $82
	nop                                              ; $6935: $00
	ld   b, $c0                                      ; $6936: $06 $c0

jr_096_6938:
	ret  nc                                          ; $6938: $d0

	ld   [hl], b                                     ; $6939: $70
	ld   l, a                                        ; $693a: $6f
	ld   c, $00                                      ; $693b: $0e $00
	ld   bc, $008a                                   ; $693d: $01 $8a $00
	dec  bc                                          ; $6940: $0b
	add  b                                           ; $6941: $80
	nop                                              ; $6942: $00
	ld   b, b                                        ; $6943: $40
	ret  nz                                          ; $6944: $c0

	nop                                              ; $6945: $00
	jr   c, @+$30                                    ; $6946: $38 $2e

	ld   [hl], $1b                                   ; $6948: $36 $1b
	rst  $38                                         ; $694a: $ff
	dec  de                                          ; $694b: $1b
	cpl                                              ; $694c: $2f
	add  b                                           ; $694d: $80
	scf                                              ; $694e: $37
	ld   bc, $373f                                   ; $694f: $01 $3f $37
	add  b                                           ; $6952: $80
	rra                                              ; $6953: $1f
	add  b                                           ; $6954: $80
	ei                                               ; $6955: $fb
	ld   b, $f9                                      ; $6956: $06 $f9
	db   $fd                                         ; $6958: $fd
	db   $fc                                         ; $6959: $fc
	cp   $00                                         ; $695a: $fe $00
	db   $fd                                         ; $695c: $fd
	db   $fc                                         ; $695d: $fc
	add  b                                           ; $695e: $80
	cp   $87                                         ; $695f: $fe $87
	rst  $38                                         ; $6961: $ff
	add  b                                           ; $6962: $80
	ld   a, b                                        ; $6963: $78
	ld   bc, $00ff                                   ; $6964: $01 $ff $00
	add  b                                           ; $6967: $80
	pop  bc                                          ; $6968: $c1
	add  b                                           ; $6969: $80
	ld   a, $00                                      ; $696a: $3e $00
	nop                                              ; $696c: $00
	add  b                                           ; $696d: $80
	pop  bc                                          ; $696e: $c1
	add  e                                           ; $696f: $83
	rst  $38                                         ; $6970: $ff
	add  b                                           ; $6971: $80
	rrca                                             ; $6972: $0f
	inc  b                                           ; $6973: $04
	pop  hl                                          ; $6974: $e1
	ld   e, $e0                                      ; $6975: $1e $e0
	rst  $38                                         ; $6977: $ff
	rra                                              ; $6978: $1f
	add  b                                           ; $6979: $80
	ccf                                              ; $697a: $3f
	add  a                                           ; $697b: $87
	rst  $38                                         ; $697c: $ff
	inc  bc                                          ; $697d: $03
	nop                                              ; $697e: $00
	rlca                                             ; $697f: $07
	ld   b, $01                                      ; $6980: $06 $01
	add  [hl]                                        ; $6982: $86
	nop                                              ; $6983: $00
	add  b                                           ; $6984: $80
	ld   bc, $0280                                   ; $6985: $01 $80 $02
	dec  bc                                          ; $6988: $0b
	ld   h, b                                        ; $6989: $60
	nop                                              ; $698a: $00
	cp   b                                           ; $698b: $b8
	ret  nz                                          ; $698c: $c0

	ld   h, d                                        ; $698d: $62
	ld   a, b                                        ; $698e: $78
	dec  a                                           ; $698f: $3d
	ccf                                              ; $6990: $3f
	ld   h, d                                        ; $6991: $62
	ld   h, e                                        ; $6992: $63
	pop  bc                                          ; $6993: $c1
	ret  nz                                          ; $6994: $c0

	add  b                                           ; $6995: $80
	add  b                                           ; $6996: $80
	add  [hl]                                        ; $6997: $86
	nop                                              ; $6998: $00
	dec  b                                           ; $6999: $05
	ret  nz                                          ; $699a: $c0

	nop                                              ; $699b: $00
	db   $10                                         ; $699c: $10
	ret  nz                                          ; $699d: $c0

	ld   l, b                                        ; $699e: $68
	ld   a, b                                        ; $699f: $78
	add  b                                           ; $69a0: $80
	ld   c, $00                                      ; $69a1: $0e $00
	nop                                              ; $69a3: $00
	add  b                                           ; $69a4: $80
	ld   bc, $008b                                   ; $69a5: $01 $8b $00
	add  b                                           ; $69a8: $80
	pop  bc                                          ; $69a9: $c1
	dec  c                                           ; $69aa: $0d
	inc  a                                           ; $69ab: $3c
	jr   c, jr_096_69b5                              ; $69ac: $38 $07

	rra                                              ; $69ae: $1f
	inc  e                                           ; $69af: $1c
	rlca                                             ; $69b0: $07
	dec  b                                           ; $69b1: $05
	ld   c, $0c                                      ; $69b2: $0e $0c
	db   $10                                         ; $69b4: $10

jr_096_69b5:
	ld   d, b                                        ; $69b5: $50
	ld   h, b                                        ; $69b6: $60
	ldh  [$c0], a                                    ; $69b7: $e0 $c0
	add  b                                           ; $69b9: $80
	add  b                                           ; $69ba: $80
	add  b                                           ; $69bb: $80
	nop                                              ; $69bc: $00
	ld   bc, $0080                                   ; $69bd: $01 $80 $00
	add  b                                           ; $69c0: $80
	ret  nz                                          ; $69c1: $c0

	ld   bc, $70f0                                   ; $69c2: $01 $f0 $70

jr_096_69c5:
	add  b                                           ; $69c5: $80
	ld   c, $80                                      ; $69c6: $0e $80
	ld   bc, $0082                                   ; $69c8: $01 $82 $00
	nop                                              ; $69cb: $00
	rst  $38                                         ; $69cc: $ff
	add  l                                           ; $69cd: $85
	nop                                              ; $69ce: $00
	add  b                                           ; $69cf: $80
	inc  bc                                          ; $69d0: $03
	add  b                                           ; $69d1: $80
	adc  h                                           ; $69d2: $8c
	add  hl, bc                                      ; $69d3: $09
	ld   [hl], b                                     ; $69d4: $70
	ld   a, b                                        ; $69d5: $78
	dec  hl                                          ; $69d6: $2b
	inc  a                                           ; $69d7: $3c
	cpl                                              ; $69d8: $2f
	ccf                                              ; $69d9: $3f
	ldh  a, [$fc]                                    ; $69da: $f0 $fc
	nop                                              ; $69dc: $00
	inc  bc                                          ; $69dd: $03
	add  b                                           ; $69de: $80
	rst  $38                                         ; $69df: $ff
	nop                                              ; $69e0: $00
	nop                                              ; $69e1: $00
	add  b                                           ; $69e2: $80
	ld   a, a                                        ; $69e3: $7f
	add  b                                           ; $69e4: $80
	rst  $38                                         ; $69e5: $ff
	ld   a, [de]                                     ; $69e6: $1a
	ccf                                              ; $69e7: $3f
	jp   $1bfb                                       ; $69e8: $c3 $fb $1b


	db   $fc                                         ; $69eb: $fc
	db   $e3                                         ; $69ec: $e3
	rst  $38                                         ; $69ed: $ff
	inc  a                                           ; $69ee: $3c
	dec  a                                           ; $69ef: $3d
	dec  c                                           ; $69f0: $0d
	add  $ce                                         ; $69f1: $c6 $ce
	jr   nc, jr_096_69c5                             ; $69f3: $30 $d0

	db   $ed                                         ; $69f5: $ed
	ld   sp, hl                                      ; $69f6: $f9
	push af                                          ; $69f7: $f5
	db   $fd                                         ; $69f8: $fd
	rst  $38                                         ; $69f9: $ff
	swap b                                           ; $69fa: $cb $30
	jr   z, jr_096_6a36                              ; $69fc: $28 $38

	adc  b                                           ; $69fe: $88
	sbc  b                                           ; $69ff: $98
	ld   [hl], h                                     ; $6a00: $74
	db   $fc                                         ; $6a01: $fc
	add  b                                           ; $6a02: $80
	sbc  $01                                         ; $6a03: $de $01
	db   $fc                                         ; $6a05: $fc
	xor  h                                           ; $6a06: $ac
	add  b                                           ; $6a07: $80
	or   h                                           ; $6a08: $b4
	ld   [bc], a                                     ; $6a09: $02
	inc  [hl]                                        ; $6a0a: $34
	ld   d, h                                        ; $6a0b: $54
	ld   b, a                                        ; $6a0c: $47
	add  c                                           ; $6a0d: $81
	nop                                              ; $6a0e: $00
	add  b                                           ; $6a0f: $80
	ld   bc, $0380                                   ; $6a10: $01 $80 $03
	add  hl, bc                                      ; $6a13: $09
	nop                                              ; $6a14: $00
	ld   b, $02                                      ; $6a15: $06 $02
	call z, $38e8                                    ; $6a17: $cc $e8 $38
	dec  de                                          ; $6a1a: $1b
	rlca                                             ; $6a1b: $07
	ld   h, h                                        ; $6a1c: $64
	ld   h, b                                        ; $6a1d: $60
	add  b                                           ; $6a1e: $80
	ret  nz                                          ; $6a1f: $c0

	add  b                                           ; $6a20: $80
	add  b                                           ; $6a21: $80
	adc  c                                           ; $6a22: $89
	nop                                              ; $6a23: $00
	ld   [bc], a                                     ; $6a24: $02
	rst  $38                                         ; $6a25: $ff
	add  a                                           ; $6a26: $87
	add  l                                           ; $6a27: $85
	add  c                                           ; $6a28: $81
	dec  b                                           ; $6a29: $05
	nop                                              ; $6a2a: $00
	rlca                                             ; $6a2b: $07
	add  [hl]                                        ; $6a2c: $86
	nop                                              ; $6a2d: $00
	nop                                              ; $6a2e: $00
	rst  $38                                         ; $6a2f: $ff
	add  b                                           ; $6a30: $80
	add  b                                           ; $6a31: $80
	inc  b                                           ; $6a32: $04
	rst  $38                                         ; $6a33: $ff
	rst  JumpTable                                         ; $6a34: $df
	ld   e, a                                        ; $6a35: $5f

jr_096_6a36:
	inc  bc                                          ; $6a36: $03
	add  e                                           ; $6a37: $83
	add  b                                           ; $6a38: $80
	ld   bc, $0084                                   ; $6a39: $01 $84 $00
	nop                                              ; $6a3c: $00
	rst  $38                                         ; $6a3d: $ff
	add  b                                           ; $6a3e: $80
	nop                                              ; $6a3f: $00
	add  b                                           ; $6a40: $80
	add  b                                           ; $6a41: $80
	nop                                              ; $6a42: $00
	rst  $38                                         ; $6a43: $ff
	add  b                                           ; $6a44: $80
	ldh  [$80], a                                    ; $6a45: $e0 $80
	call z, $0280                                    ; $6a47: $cc $80 $02
	add  d                                           ; $6a4a: $82
	nop                                              ; $6a4b: $00
	ld   bc, $1fe0                                   ; $6a4c: $01 $e0 $1f
	add  c                                           ; $6a4f: $81
	nop                                              ; $6a50: $00
	ld   [bc], a                                     ; $6a51: $02
	ret  nz                                          ; $6a52: $c0

	nop                                              ; $6a53: $00
	ccf                                              ; $6a54: $3f
	add  d                                           ; $6a55: $82
	nop                                              ; $6a56: $00
	add  b                                           ; $6a57: $80
	ret  nz                                          ; $6a58: $c0

	add  b                                           ; $6a59: $80
	ld   h, b                                        ; $6a5a: $60
	nop                                              ; $6a5b: $00
	rst  $38                                         ; $6a5c: $ff
	add  b                                           ; $6a5d: $80
	inc  c                                           ; $6a5e: $0c
	ld   [$d818], sp                                 ; $6a5f: $08 $18 $d8
	ldh  a, [$c8]                                    ; $6a62: $f0 $c8
	ldh  [rAUD2ENV], a                               ; $6a64: $e0 $17
	ld   [$0304], sp                                 ; $6a66: $08 $04 $03
	adc  h                                           ; $6a69: $8c
	nop                                              ; $6a6a: $00
	ld   b, $c0                                      ; $6a6b: $06 $c0
	nop                                              ; $6a6d: $00
	or   b                                           ; $6a6e: $b0
	ld   h, b                                        ; $6a6f: $60
	ld   c, $18                                      ; $6a70: $0e $18
	ld   b, $8d                                      ; $6a72: $06 $8d
	nop                                              ; $6a74: $00
	ld   b, $43                                      ; $6a75: $06 $43
	ld   [hl], e                                     ; $6a77: $73
	ld   hl, $0d1e                                   ; $6a78: $21 $1e $0d
	inc  bc                                          ; $6a7b: $03
	ld   bc, $0089                                   ; $6a7c: $01 $89 $00
	ld   a, [bc]                                     ; $6a7f: $0a
	add  b                                           ; $6a80: $80
	nop                                              ; $6a81: $00
	ret  nz                                          ; $6a82: $c0

	add  b                                           ; $6a83: $80
	ld   d, b                                        ; $6a84: $50
	ldh  [$62], a                                    ; $6a85: $e0 $62
	inc  e                                           ; $6a87: $1c
	ld   a, [bc]                                     ; $6a88: $0a
	rlca                                             ; $6a89: $07
	inc  bc                                          ; $6a8a: $03
	add  c                                           ; $6a8b: $81
	nop                                              ; $6a8c: $00
	nop                                              ; $6a8d: $00
	rst  $38                                         ; $6a8e: $ff
	add  l                                           ; $6a8f: $85
	nop                                              ; $6a90: $00
	add  b                                           ; $6a91: $80
	ld   bc, $0203                                   ; $6a92: $01 $03 $02
	inc  bc                                          ; $6a95: $03
	push bc                                          ; $6a96: $c5
	rst  ToBoot                                         ; $6a97: $c7
	add  b                                           ; $6a98: $80
	rra                                              ; $6a99: $1f
	ld   [de], a                                     ; $6a9a: $12
	inc  l                                           ; $6a9b: $2c
	inc  sp                                          ; $6a9c: $33
	ld   d, e                                        ; $6a9d: $53
	ld   a, h                                        ; $6a9e: $7c
	ld   b, e                                        ; $6a9f: $43
	ld   h, e                                        ; $6aa0: $63
	sub  e                                           ; $6aa1: $93

jr_096_6aa2:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6aa2: $cf
	ld   c, a                                        ; $6aa3: $4f
	sbc  a                                           ; $6aa4: $9f
	sbc  b                                           ; $6aa5: $98
	add  b                                           ; $6aa6: $80
	sbc  b                                           ; $6aa7: $98
	add  b                                           ; $6aa8: $80
	db   $e3                                         ; $6aa9: $e3
	inc  bc                                          ; $6aaa: $03
	add  c                                           ; $6aab: $81
	dec  b                                           ; $6aac: $05
	ei                                               ; $6aad: $fb
	add  l                                           ; $6aae: $85
	rst  $38                                         ; $6aaf: $ff
	add  b                                           ; $6ab0: $80
	ccf                                              ; $6ab1: $3f
	add  b                                           ; $6ab2: $80
	rst  $38                                         ; $6ab3: $ff
	inc  b                                           ; $6ab4: $04
	rra                                              ; $6ab5: $1f
	rst  $38                                         ; $6ab6: $ff
	dec  de                                          ; $6ab7: $1b
	rst  $38                                         ; $6ab8: $ff
	ei                                               ; $6ab9: $fb
	adc  c                                           ; $6aba: $89
	rst  $38                                         ; $6abb: $ff
	add  hl, bc                                      ; $6abc: $09
	sbc  a                                           ; $6abd: $9f
	cp   a                                           ; $6abe: $bf
	ld   b, b                                        ; $6abf: $40
	ld   l, a                                        ; $6ac0: $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ac1: $cf
	ret  z                                           ; $6ac2: $c8

	add  hl, bc                                      ; $6ac3: $09
	pop  de                                          ; $6ac4: $d1
	ret  nc                                          ; $6ac5: $d0

	nop                                              ; $6ac6: $00
	add  b                                           ; $6ac7: $80
	and  $02                                         ; $6ac8: $e6 $02
	ei                                               ; $6aca: $fb
	ld   a, [$81fe]                                  ; $6acb: $fa $fe $81
	rst  $38                                         ; $6ace: $ff
	inc  c                                           ; $6acf: $0c
	ld   a, a                                        ; $6ad0: $7f
	add  b                                           ; $6ad1: $80
	ld   h, b                                        ; $6ad2: $60
	ldh  [$98], a                                    ; $6ad3: $e0 $98
	ld   hl, sp-$1a                                  ; $6ad5: $f8 $e6
	sbc  [hl]                                        ; $6ad7: $9e
	add  hl, de                                      ; $6ad8: $19
	ld   b, a                                        ; $6ad9: $47
	add  a                                           ; $6ada: $87
	adc  e                                           ; $6adb: $8b
	jp   z, $1f80                                    ; $6adc: $ca $80 $1f

	ld   [bc], a                                     ; $6adf: $02
	cp   a                                           ; $6ae0: $bf
	and  b                                           ; $6ae1: $a0
	ldh  [$80], a                                    ; $6ae2: $e0 $80
	inc  e                                           ; $6ae4: $1c
	add  b                                           ; $6ae5: $80
	inc  bc                                          ; $6ae6: $03
	add  l                                           ; $6ae7: $85
	nop                                              ; $6ae8: $00
	add  c                                           ; $6ae9: $81
	add  b                                           ; $6aea: $80
	nop                                              ; $6aeb: $00
	ld   a, a                                        ; $6aec: $7f
	adc  b                                           ; $6aed: $88
	nop                                              ; $6aee: $00
	add  b                                           ; $6aef: $80
	add  b                                           ; $6af0: $80
	add  b                                           ; $6af1: $80
	ldh  [$80], a                                    ; $6af2: $e0 $80
	jr   c, @-$60                                    ; $6af4: $38 $9e

	nop                                              ; $6af6: $00
	inc  bc                                          ; $6af7: $03
	inc  e                                           ; $6af8: $1c
	dec  e                                           ; $6af9: $1d
	rlca                                             ; $6afa: $07
	ld   b, $80                                      ; $6afb: $06 $80
	ld   bc, $0087                                   ; $6afd: $01 $87 $00
	nop                                              ; $6b00: $00
	rst  $38                                         ; $6b01: $ff
	adc  l                                           ; $6b02: $8d
	nop                                              ; $6b03: $00
	add  b                                           ; $6b04: $80
	rlca                                             ; $6b05: $07
	add  b                                           ; $6b06: $80
	ld   bc, $008a                                   ; $6b07: $01 $8a $00
	ld   c, $80                                      ; $6b0a: $0e $80
	nop                                              ; $6b0c: $00
	ld   d, b                                        ; $6b0d: $50
	ret  nz                                          ; $6b0e: $c0

	jr   nz, jr_096_6b41                             ; $6b0f: $20 $30

	ld   [$060e], sp                                 ; $6b11: $08 $0e $06
	rlca                                             ; $6b14: $07
	rrca                                             ; $6b15: $0f
	inc  c                                           ; $6b16: $0c
	inc  d                                           ; $6b17: $14
	stop                                             ; $6b18: $10 $00
	add  b                                           ; $6b1a: $80
	jr   nz, jr_096_6aa2                             ; $6b1b: $20 $85

	nop                                              ; $6b1d: $00
	add  b                                           ; $6b1e: $80
	add  b                                           ; $6b1f: $80
	add  b                                           ; $6b20: $80
	ld   h, b                                        ; $6b21: $60
	add  b                                           ; $6b22: $80
	inc  e                                           ; $6b23: $1c
	add  b                                           ; $6b24: $80
	inc  bc                                          ; $6b25: $03
	adc  [hl]                                        ; $6b26: $8e
	nop                                              ; $6b27: $00
	ld   bc, $0ef6                                   ; $6b28: $01 $f6 $0e
	add  b                                           ; $6b2b: $80
	inc  c                                           ; $6b2c: $0c
	inc  e                                           ; $6b2d: $1c
	ld   [$1809], sp                                 ; $6b2e: $08 $09 $18
	inc  de                                          ; $6b31: $13
	ld   de, $1217                                   ; $6b32: $11 $17 $12
	ld   e, $14                                      ; $6b35: $1e $14
	inc  e                                           ; $6b37: $1c
	jr   jr_096_6b53                                 ; $6b38: $18 $19

	db   $fd                                         ; $6b3a: $fd
	rra                                              ; $6b3b: $1f
	nop                                              ; $6b3c: $00
	ld   h, a                                        ; $6b3d: $67
	inc  de                                          ; $6b3e: $13
	adc  a                                           ; $6b3f: $8f
	daa                                              ; $6b40: $27

jr_096_6b41:
	ld   d, a                                        ; $6b41: $57
	rla                                              ; $6b42: $17
	cp   b                                           ; $6b43: $b8
	add  hl, hl                                      ; $6b44: $29
	ld   a, b                                        ; $6b45: $78
	ld   a, d                                        ; $6b46: $7a
	ret  c                                           ; $6b47: $d8

	db   $fc                                         ; $6b48: $fc
	pop  af                                          ; $6b49: $f1
	ld   [hl], $81                                   ; $6b4a: $36 $81
	nop                                              ; $6b4c: $00
	add  b                                           ; $6b4d: $80
	ld   bc, $1380                                   ; $6b4e: $01 $80 $13
	inc  bc                                          ; $6b51: $03
	daa                                              ; $6b52: $27

jr_096_6b53:
	dec  h                                           ; $6b53: $25
	inc  l                                           ; $6b54: $2c
	ld   a, [hl+]                                    ; $6b55: $2a
	add  b                                           ; $6b56: $80
	jp   z, $da02                                    ; $6b57: $ca $02 $da

	ld   d, d                                        ; $6b5a: $52
	ld   c, h                                        ; $6b5b: $4c
	add  b                                           ; $6b5c: $80
	ld   a, a                                        ; $6b5d: $7f
	nop                                              ; $6b5e: $00
	cp   a                                           ; $6b5f: $bf
	add  b                                           ; $6b60: $80
	cp   $01                                         ; $6b61: $fe $01
	db   $fd                                         ; $6b63: $fd
	ld   a, a                                        ; $6b64: $7f
	add  b                                           ; $6b65: $80
	ld   a, e                                        ; $6b66: $7b
	ld   b, $f9                                      ; $6b67: $06 $f9
	rst  $38                                         ; $6b69: $ff
	rst  $30                                         ; $6b6a: $f7
	ld   [hl], a                                     ; $6b6b: $77
	ld   d, e                                        ; $6b6c: $53
	ccf                                              ; $6b6d: $3f
	rla                                              ; $6b6e: $17
	add  a                                           ; $6b6f: $87
	rst  $38                                         ; $6b70: $ff
	add  b                                           ; $6b71: $80
	cp   a                                           ; $6b72: $bf
	add  b                                           ; $6b73: $80
	ccf                                              ; $6b74: $3f
	ld   [bc], a                                     ; $6b75: $02
	ld   [hl], a                                     ; $6b76: $77
	rst  $30                                         ; $6b77: $f7
	ld   a, l                                        ; $6b78: $7d
	add  b                                           ; $6b79: $80
	cp   l                                           ; $6b7a: $bd
	ld   bc, $fefd                                   ; $6b7b: $01 $fd $fe
	add  b                                           ; $6b7e: $80
	rst  $38                                         ; $6b7f: $ff
	nop                                              ; $6b80: $00
	cp   $80                                         ; $6b81: $fe $80
	rst  $38                                         ; $6b83: $ff
	ld   b, $df                                      ; $6b84: $06 $df
	rst  $38                                         ; $6b86: $ff
	jp   $e1f3                                       ; $6b87: $c3 $f3 $e1


	ld   sp, hl                                      ; $6b8a: $f9
	or   a                                           ; $6b8b: $b7
	add  c                                           ; $6b8c: $81
	ret  nz                                          ; $6b8d: $c0

	rlca                                             ; $6b8e: $07
	and  b                                           ; $6b8f: $a0
	ldh  [$60], a                                    ; $6b90: $e0 $60
	ldh  [hScriptOpcodeParams], a                                    ; $6b92: $e0 $a0
	ld   h, b                                        ; $6b94: $60
	ld   hl, sp-$48                                  ; $6b95: $f8 $b8
	add  b                                           ; $6b97: $80
	and  [hl]                                        ; $6b98: $a6
	ld   [bc], a                                     ; $6b99: $02
	ldh  a, [$d0]                                    ; $6b9a: $f0 $d0
	ldh  [$80], a                                    ; $6b9c: $e0 $80
	ld   c, $80                                      ; $6b9e: $0e $80
	inc  bc                                          ; $6ba0: $03
	add  b                                           ; $6ba1: $80
	ld   bc, $0305                                   ; $6ba2: $01 $05 $03
	dec  b                                           ; $6ba5: $05
	nop                                              ; $6ba6: $00
	ld   a, [bc]                                     ; $6ba7: $0a
	nop                                              ; $6ba8: $00
	inc  c                                           ; $6ba9: $0c
	add  h                                           ; $6baa: $84
	nop                                              ; $6bab: $00
	add  hl, bc                                      ; $6bac: $09
	add  b                                           ; $6bad: $80
	ret  nz                                          ; $6bae: $c0

	add  b                                           ; $6baf: $80
	ldh  a, [rP1]                                    ; $6bb0: $f0 $00
	inc  a                                           ; $6bb2: $3c
	nop                                              ; $6bb3: $00
	rrca                                             ; $6bb4: $0f
	nop                                              ; $6bb5: $00
	inc  bc                                          ; $6bb6: $03
	adc  a                                           ; $6bb7: $8f
	nop                                              ; $6bb8: $00
	ld   [bc], a                                     ; $6bb9: $02
	ld   h, b                                        ; $6bba: $60
	nop                                              ; $6bbb: $00
	ld   h, b                                        ; $6bbc: $60
	add  c                                           ; $6bbd: $81
	nop                                              ; $6bbe: $00
	add  b                                           ; $6bbf: $80
	ld   bc, $0380                                   ; $6bc0: $01 $80 $03
	add  b                                           ; $6bc3: $80
	ld   b, $80                                      ; $6bc4: $06 $80
	nop                                              ; $6bc6: $00
	add  b                                           ; $6bc7: $80
	rlca                                             ; $6bc8: $07
	ld   [$3f38], sp                                 ; $6bc9: $08 $38 $3f
	ld   a, b                                        ; $6bcc: $78
	nop                                              ; $6bcd: $00
	ld   [hl], b                                     ; $6bce: $70
	ret  nz                                          ; $6bcf: $c0

	add  $30                                         ; $6bd0: $c6 $30
	add  hl, sp                                      ; $6bd2: $39
	add  b                                           ; $6bd3: $80
	ld   b, $80                                      ; $6bd4: $06 $80
	ld   bc, $004a                                   ; $6bd6: $01 $4a $00
	ld   bc, $0b00                                   ; $6bd9: $01 $00 $0b
	nop                                              ; $6bdc: $00
	push af                                          ; $6bdd: $f5
	nop                                              ; $6bde: $00
	dec  b                                           ; $6bdf: $05
	ld   bc, $03af                                   ; $6be0: $01 $af $03
	rst  $38                                         ; $6be3: $ff
	ld   b, $ab                                      ; $6be4: $06 $ab
	sbc  b                                           ; $6be6: $98
	db   $ed                                         ; $6be7: $ed
	ld   a, b                                        ; $6be8: $78
	jr   nc, jr_096_6c07                             ; $6be9: $30 $1c

	adc  b                                           ; $6beb: $88
	rlca                                             ; $6bec: $07
	inc  h                                           ; $6bed: $24
	ld   b, b                                        ; $6bee: $40
	pop  af                                          ; $6bef: $f1
	add  b                                           ; $6bf0: $80
	xor  l                                           ; $6bf1: $ad
	nop                                              ; $6bf2: $00
	cp   [hl]                                        ; $6bf3: $be
	nop                                              ; $6bf4: $00
	rst  $38                                         ; $6bf5: $ff
	nop                                              ; $6bf6: $00
	ld   a, [$ed00]                                  ; $6bf7: $fa $00 $ed
	inc  bc                                          ; $6bfa: $03
	ld   h, h                                        ; $6bfb: $64
	rlca                                             ; $6bfc: $07
	reti                                             ; $6bfd: $d9


	inc  bc                                          ; $6bfe: $03
	halt                                             ; $6bff: $76
	ld   b, $70                                      ; $6c00: $06 $70
	nop                                              ; $6c02: $00
	ld   a, [bc]                                     ; $6c03: $0a
	db   $10                                         ; $6c04: $10
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c05: $cf
	ld   h, b                                        ; $6c06: $60

jr_096_6c07:
	sbc  a                                           ; $6c07: $9f
	ret  nz                                          ; $6c08: $c0

	cp   a                                           ; $6c09: $bf
	nop                                              ; $6c0a: $00
	xor  d                                           ; $6c0b: $aa
	nop                                              ; $6c0c: $00
	rra                                              ; $6c0d: $1f
	ldh  [rAUD3LEN], a                               ; $6c0e: $e0 $1b
	jr   jr_096_6c2e                                 ; $6c10: $18 $1c

	rlca                                             ; $6c12: $07
	or   b                                           ; $6c13: $b0
	nop                                              ; $6c14: $00
	db   $fc                                         ; $6c15: $fc
	nop                                              ; $6c16: $00
	db   $ec                                         ; $6c17: $ec
	nop                                              ; $6c18: $00
	and  $00                                         ; $6c19: $e6 $00
	and  e                                           ; $6c1b: $a3
	nop                                              ; $6c1c: $00
	inc  d                                           ; $6c1d: $14
	ld   a, [de]                                     ; $6c1e: $1a
	ld   [hl+], a                                    ; $6c1f: $22
	ld   [hl-], a                                    ; $6c20: $32
	jr   nc, jr_096_6c57                             ; $6c21: $30 $34

	add  b                                           ; $6c23: $80
	push hl                                          ; $6c24: $e5
	add  b                                           ; $6c25: $80
	dec  h                                           ; $6c26: $25
	ld   bc, $2f27                                   ; $6c27: $01 $27 $2f
	add  b                                           ; $6c2a: $80
	add  hl, hl                                      ; $6c2b: $29
	dec  bc                                          ; $6c2c: $0b
	add  hl, bc                                      ; $6c2d: $09

jr_096_6c2e:
	add  hl, de                                      ; $6c2e: $19
	adc  $b2                                         ; $6c2f: $ce $b2
	ldh  [$e4], a                                    ; $6c31: $e0 $e4
	push hl                                          ; $6c33: $e5
	db   $e4                                         ; $6c34: $e4
	rst  ToBoot                                         ; $6c35: $c7
	ld   c, b                                        ; $6c36: $48
	ld   c, [hl]                                     ; $6c37: $4e
	ld   e, b                                        ; $6c38: $58
	add  b                                           ; $6c39: $80
	add  hl, bc                                      ; $6c3a: $09
	ld   bc, $2b0b                                   ; $6c3b: $01 $0b $2b
	add  b                                           ; $6c3e: $80
	ld   a, $08                                      ; $6c3f: $3e $08
	ld   e, h                                        ; $6c41: $5c
	sub  h                                           ; $6c42: $94
	cp   h                                           ; $6c43: $bc
	xor  h                                           ; $6c44: $ac
	ld   a, h                                        ; $6c45: $7c
	ld   l, h                                        ; $6c46: $6c
	ld   c, h                                        ; $6c47: $4c
	call nc, $8074                                   ; $6c48: $d4 $74 $80
	call z, $e407                                    ; $6c4b: $cc $07 $e4
	and  h                                           ; $6c4e: $a4
	inc  h                                           ; $6c4f: $24
	inc  [hl]                                        ; $6c50: $34
	or   h                                           ; $6c51: $b4
	ld   e, b                                        ; $6c52: $58
	cpl                                              ; $6c53: $2f
	rrca                                             ; $6c54: $0f
	add  c                                           ; $6c55: $81
	ld   e, d                                        ; $6c56: $5a

jr_096_6c57:
	ld   a, [bc]                                     ; $6c57: $0a
	jp   z, $8c88                                    ; $6c58: $ca $88 $8c

	xor  b                                           ; $6c5b: $a8
	xor  c                                           ; $6c5c: $a9
	xor  b                                           ; $6c5d: $a8
	cp   d                                           ; $6c5e: $ba
	ld   c, h                                        ; $6c5f: $4c
	ld   [hl], h                                     ; $6c60: $74
	ld   b, h                                        ; $6c61: $44
	dec  bc                                          ; $6c62: $0b
	add  d                                           ; $6c63: $82
	rst  $30                                         ; $6c64: $f7
	add  b                                           ; $6c65: $80
	rst  $38                                         ; $6c66: $ff
	ld   bc, $bbbf                                   ; $6c67: $01 $bf $bb
	add  b                                           ; $6c6a: $80
	xor  c                                           ; $6c6b: $a9
	ld   de, $c989                                   ; $6c6c: $11 $89 $c9
	ret  z                                           ; $6c6f: $c8

	ret  c                                           ; $6c70: $d8

	ret  z                                           ; $6c71: $c8

	inc  de                                          ; $6c72: $13
	db   $fc                                         ; $6c73: $fc
	call c, $e0d4                                    ; $6c74: $dc $d4 $e0
	ld   [$f2e2], a                                  ; $6c77: $ea $e2 $f2
	ldh  a, [$d5]                                    ; $6c7a: $f0 $d5
	push bc                                          ; $6c7c: $c5
	adc  l                                           ; $6c7d: $8d
	adc  c                                           ; $6c7e: $89
	add  b                                           ; $6c7f: $80
	dec  bc                                          ; $6c80: $0b
	inc  bc                                          ; $6c81: $03
	dec  hl                                          ; $6c82: $2b
	ld   d, $90                                      ; $6c83: $16 $90
	cp   b                                           ; $6c85: $b8
	add  d                                           ; $6c86: $82
	ret  z                                           ; $6c87: $c8

	ld   [bc], a                                     ; $6c88: $02
	ld   [$2848], sp                                 ; $6c89: $08 $48 $28
	add  b                                           ; $6c8c: $80
	ld   [$8800], sp                                 ; $6c8d: $08 $00 $88
	add  c                                           ; $6c90: $81
	ld   [$f303], sp                                 ; $6c91: $08 $03 $f3
	inc  e                                           ; $6c94: $1c
	db   $10                                         ; $6c95: $10
	ldh  a, [$80]                                    ; $6c96: $f0 $80
	ldh  [$80], a                                    ; $6c98: $e0 $80
	pop  bc                                          ; $6c9a: $c1
	add  d                                           ; $6c9b: $82
	rst  $38                                         ; $6c9c: $ff
	add  b                                           ; $6c9d: $80
	db   $fc                                         ; $6c9e: $fc
	add  b                                           ; $6c9f: $80
	ldh  a, [$82]                                    ; $6ca0: $f0 $82
	ld   a, a                                        ; $6ca2: $7f
	add  d                                           ; $6ca3: $82
	rst  $38                                         ; $6ca4: $ff
	add  b                                           ; $6ca5: $80
	ld   hl, sp-$7c                                  ; $6ca6: $f8 $84
	nop                                              ; $6ca8: $00
	add  d                                           ; $6ca9: $82
	rst  $38                                         ; $6caa: $ff
	add  b                                           ; $6cab: $80
	ld   hl, sp-$80                                  ; $6cac: $f8 $80
	ret  nz                                          ; $6cae: $c0

	jr   nc, jr_096_6cb1                             ; $6caf: $30 $00

jr_096_6cb1:
	inc  bc                                          ; $6cb1: $03
	nop                                              ; $6cb2: $00
	rlca                                             ; $6cb3: $07
	inc  b                                           ; $6cb4: $04
	rra                                              ; $6cb5: $1f
	dec  b                                           ; $6cb6: $05
	rst  $20                                         ; $6cb7: $e7
	add  hl, sp                                      ; $6cb8: $39
	db   $db                                         ; $6cb9: $db
	ld   d, $1e                                      ; $6cba: $16 $1e
	dec  e                                           ; $6cbc: $1d
	dec  d                                           ; $6cbd: $15
	dec  de                                          ; $6cbe: $1b
	dec  sp                                          ; $6cbf: $3b
	ld   de, $b6d9                                   ; $6cc0: $11 $d9 $b6
	cp   [hl]                                        ; $6cc3: $be
	ld   h, l                                        ; $6cc4: $65
	rst  $20                                         ; $6cc5: $e7
	ld   a, $bf                                      ; $6cc6: $3e $bf
	ld   [bc], a                                     ; $6cc8: $02
	nop                                              ; $6cc9: $00
	dec  hl                                          ; $6cca: $2b
	nop                                              ; $6ccb: $00
	cpl                                              ; $6ccc: $2f
	nop                                              ; $6ccd: $00
	cpl                                              ; $6cce: $2f
	nop                                              ; $6ccf: $00
	ccf                                              ; $6cd0: $3f
	nop                                              ; $6cd1: $00
	cp   l                                           ; $6cd2: $bd
	nop                                              ; $6cd3: $00
	ld   hl, sp+$00                                  ; $6cd4: $f8 $00
	ret  nc                                          ; $6cd6: $d0

	nop                                              ; $6cd7: $00
	call nc, $fd01                                   ; $6cd8: $d4 $01 $fd
	nop                                              ; $6cdb: $00
	ld   hl, sp+$00                                  ; $6cdc: $f8 $00
	ret  nc                                          ; $6cde: $d0

	nop                                              ; $6cdf: $00
	add  b                                           ; $6ce0: $80
	add  l                                           ; $6ce1: $85
	nop                                              ; $6ce2: $00
	ld   b, $0c                                      ; $6ce3: $06 $0c
	adc  $da                                         ; $6ce5: $ce $da
	inc  a                                           ; $6ce7: $3c
	ld   a, [hl+]                                    ; $6ce8: $2a
	ld   c, $00                                      ; $6ce9: $0e $00
	add  b                                           ; $6ceb: $80
	inc  bc                                          ; $6cec: $03
	adc  e                                           ; $6ced: $8b
	nop                                              ; $6cee: $00
	add  b                                           ; $6cef: $80
	ret  nz                                          ; $6cf0: $c0

	ld   b, $30                                      ; $6cf1: $06 $30
	ldh  a, [$cc]                                    ; $6cf3: $f0 $cc
	inc  e                                           ; $6cf5: $1c
	inc  de                                          ; $6cf6: $13
	rlca                                             ; $6cf7: $07

Jump_096_6cf8:
	inc  b                                           ; $6cf8: $04
	add  b                                           ; $6cf9: $80
	ld   bc, $008b                                   ; $6cfa: $01 $8b $00
	inc  bc                                          ; $6cfd: $03
	pop  bc                                          ; $6cfe: $c1
	ret  nz                                          ; $6cff: $c0

	jr   jr_096_6d1b                                 ; $6d00: $18 $19

	add  b                                           ; $6d02: $80
	ld   [$0480], sp                                 ; $6d03: $08 $80 $04
	add  [hl]                                        ; $6d06: $86
	nop                                              ; $6d07: $00
	dec  c                                           ; $6d08: $0d
	add  b                                           ; $6d09: $80
	nop                                              ; $6d0a: $00
	ld   c, h                                        ; $6d0b: $4c
	call z, $ccc4                                    ; $6d0c: $cc $c4 $cc
	ret  z                                           ; $6d0f: $c8

	call z, Call_096_4c4d                            ; $6d10: $cc $4d $4c
	ld   [$2e0b], sp                                 ; $6d13: $08 $0b $2e
	daa                                              ; $6d16: $27
	add  b                                           ; $6d17: $80
	ld   d, [hl]                                     ; $6d18: $56
	inc  bc                                          ; $6d19: $03
	ld   d, a                                        ; $6d1a: $57

jr_096_6d1b:
	ld   e, b                                        ; $6d1b: $58
	db   $ec                                         ; $6d1c: $ec
	db   $fc                                         ; $6d1d: $fc
	add  b                                           ; $6d1e: $80
	ld   e, h                                        ; $6d1f: $5c
	inc  de                                          ; $6d20: $13
	cp   h                                           ; $6d21: $bc
	sub  h                                           ; $6d22: $94
	ld   [hl-], a                                    ; $6d23: $32
	ld   [hl], $b6                                   ; $6d24: $36 $b6
	xor  $6e                                         ; $6d26: $ee $6e
	xor  $ed                                         ; $6d28: $ee $ed
	sbc  a                                           ; $6d2a: $9f
	sbc  [hl]                                        ; $6d2b: $9e
	ld   a, a                                        ; $6d2c: $7f
	add  hl, de                                      ; $6d2d: $19
	ld   b, [hl]                                     ; $6d2e: $46
	ld   a, [hl]                                     ; $6d2f: $7e
	ld   b, d                                        ; $6d30: $42
	db   $d3                                         ; $6d31: $d3
	cp   a                                           ; $6d32: $bf
	xor  c                                           ; $6d33: $a9
	cp   c                                           ; $6d34: $b9
	add  b                                           ; $6d35: $80
	xor  e                                           ; $6d36: $ab
	ld   bc, $afef                                   ; $6d37: $01 $ef $af
	add  b                                           ; $6d3a: $80
	and  l                                           ; $6d3b: $a5
	add  b                                           ; $6d3c: $80
	and  c                                           ; $6d3d: $a1
	db   $10                                         ; $6d3e: $10
	ret  z                                           ; $6d3f: $c8

	xor  b                                           ; $6d40: $a8
	add  sp, -$58                                    ; $6d41: $e8 $a8
	add  sp, -$58                                    ; $6d43: $e8 $a8
	and  h                                           ; $6d45: $a4
	db   $e4                                         ; $6d46: $e4
	or   $d6                                         ; $6d47: $f6 $d6
	sbc  $5a                                         ; $6d49: $de $5a
	ld   e, e                                        ; $6d4b: $5b
	ld   a, c                                        ; $6d4c: $79
	ld   sp, hl                                      ; $6d4d: $f9
	ld   l, c                                        ; $6d4e: $69
	ld   e, c                                        ; $6d4f: $59
	add  e                                           ; $6d50: $83
	or   l                                           ; $6d51: $b5
	nop                                              ; $6d52: $00
	sub  l                                           ; $6d53: $95
	add  c                                           ; $6d54: $81
	sbc  e                                           ; $6d55: $9b
	ld   [bc], a                                     ; $6d56: $02
	dec  de                                          ; $6d57: $1b
	add  hl, de                                      ; $6d58: $19
	add  hl, bc                                      ; $6d59: $09
	add  b                                           ; $6d5a: $80
	ld   de, $9001                                   ; $6d5b: $11 $01 $90
	sbc  a                                           ; $6d5e: $9f
	add  c                                           ; $6d5f: $81
	db   $10                                         ; $6d60: $10
	add  b                                           ; $6d61: $80
	inc  e                                           ; $6d62: $1c
	add  b                                           ; $6d63: $80
	inc  de                                          ; $6d64: $13
	add  [hl]                                        ; $6d65: $86
	stop                                             ; $6d66: $10 $00
	rra                                              ; $6d68: $1f
	add  b                                           ; $6d69: $80
	nop                                              ; $6d6a: $00
	inc  b                                           ; $6d6b: $04
	ld   bc, $1e00                                   ; $6d6c: $01 $00 $1e

jr_096_6d6f:
	nop                                              ; $6d6f: $00
	ldh  [$86], a                                    ; $6d70: $e0 $86
	nop                                              ; $6d72: $00
	inc  bc                                          ; $6d73: $03
	rst  $38                                         ; $6d74: $ff
	rrca                                             ; $6d75: $0f
	nop                                              ; $6d76: $00
	ldh  a, [$8a]                                    ; $6d77: $f0 $8a
	nop                                              ; $6d79: $00
	add  b                                           ; $6d7a: $80
	add  hl, de                                      ; $6d7b: $19
	add  b                                           ; $6d7c: $80
	rlca                                             ; $6d7d: $07
	add  b                                           ; $6d7e: $80
	ld   bc, $0300                                   ; $6d7f: $01 $00 $03
	add  c                                           ; $6d82: $81
	ld   [bc], a                                     ; $6d83: $02
	nop                                              ; $6d84: $00
	rlca                                             ; $6d85: $07
	add  c                                           ; $6d86: $81
	dec  b                                           ; $6d87: $05
	dec  b                                           ; $6d88: $05
	dec  bc                                          ; $6d89: $0b
	rrca                                             ; $6d8a: $0f
	push bc                                          ; $6d8b: $c5
	ldh  a, [c]                                      ; $6d8c: $f2
	jr   nc, jr_096_6d6f                             ; $6d8d: $30 $e0

	add  b                                           ; $6d8f: $80
	ld   h, b                                        ; $6d90: $60
	add  c                                           ; $6d91: $81
	ldh  [$80], a                                    ; $6d92: $e0 $80
	db   $e3                                         ; $6d94: $e3
	nop                                              ; $6d95: $00
	rst  $38                                         ; $6d96: $ff
	add  b                                           ; $6d97: $80
	rst  $28                                         ; $6d98: $ef
	ld   [bc], a                                     ; $6d99: $02
	sbc  $9f                                         ; $6d9a: $de $9f
	cp   [hl]                                        ; $6d9c: $be
	add  b                                           ; $6d9d: $80
	add  b                                           ; $6d9e: $80
	add  b                                           ; $6d9f: $80
	ld   [hl], b                                     ; $6da0: $70
	add  b                                           ; $6da1: $80
	inc  e                                           ; $6da2: $1c
	add  b                                           ; $6da3: $80
	rlca                                             ; $6da4: $07
	add  b                                           ; $6da5: $80
	ld   bc, $008c                                   ; $6da6: $01 $8c $00
	add  b                                           ; $6da9: $80
	ret  nz                                          ; $6daa: $c0

	add  b                                           ; $6dab: $80
	ld   [hl], b                                     ; $6dac: $70
	add  b                                           ; $6dad: $80
	ld   c, $80                                      ; $6dae: $0e $80
	inc  bc                                          ; $6db0: $03
	adc  h                                           ; $6db1: $8c
	nop                                              ; $6db2: $00
	add  b                                           ; $6db3: $80

jr_096_6db4:
	add  c                                           ; $6db4: $81
	add  [hl]                                        ; $6db5: $86
	nop                                              ; $6db6: $00
	rla                                              ; $6db7: $17
	jr   nc, jr_096_6ded                             ; $6db8: $30 $33

	ld   b, b                                        ; $6dba: $40
	ld   b, d                                        ; $6dbb: $42
	add  b                                           ; $6dbc: $80
	adc  e                                           ; $6dbd: $8b
	add  b                                           ; $6dbe: $80
	sub  d                                           ; $6dbf: $92
	jr   c, jr_096_6dd8                              ; $6dc0: $38 $16

	ld   c, $41                                      ; $6dc2: $0e $41
	inc  bc                                          ; $6dc4: $03
	ld   [hl], d                                     ; $6dc5: $72
	nop                                              ; $6dc6: $00
	xor  b                                           ; $6dc7: $a8
	nop                                              ; $6dc8: $00
	ld   l, [hl]                                     ; $6dc9: $6e
	nop                                              ; $6dca: $00
	ld   [hl], d                                     ; $6dcb: $72
	nop                                              ; $6dcc: $00
	inc  d                                           ; $6dcd: $14
	nop                                              ; $6dce: $00
	xor  b                                           ; $6dcf: $a8
	add  c                                           ; $6dd0: $81
	nop                                              ; $6dd1: $00
	add  b                                           ; $6dd2: $80
	ret  nz                                          ; $6dd3: $c0

	ld   b, $30                                      ; $6dd4: $06 $30
	ldh  a, [$cc]                                    ; $6dd6: $f0 $cc

jr_096_6dd8:
	inc  a                                           ; $6dd8: $3c
	inc  sp                                          ; $6dd9: $33
	rlca                                             ; $6dda: $07
	inc  b                                           ; $6ddb: $04
	add  b                                           ; $6ddc: $80
	ld   bc, $0002                                   ; $6ddd: $01 $02 $00
	ld   d, h                                        ; $6de0: $54
	ld   e, e                                        ; $6de1: $5b
	add  b                                           ; $6de2: $80
	sbc  [hl]                                        ; $6de3: $9e
	add  b                                           ; $6de4: $80
	cp   a                                           ; $6de5: $bf
	nop                                              ; $6de6: $00
	and  a                                           ; $6de7: $a7
	add  c                                           ; $6de8: $81
	xor  a                                           ; $6de9: $af
	ld   bc, $4743                                   ; $6dea: $01 $43 $47

jr_096_6ded:
	add  b                                           ; $6ded: $80
	rst  ToBoot                                         ; $6dee: $c7
	ld   [$6361], sp                                 ; $6def: $08 $61 $63
	ld   hl, $c7ff                                   ; $6df2: $21 $ff $c7
	add  a                                           ; $6df5: $87
	and  a                                           ; $6df6: $a7
	rst  $20                                         ; $6df7: $e7
	rst  JumpTable                                         ; $6df8: $df
	add  b                                           ; $6df9: $80
	rst  $38                                         ; $6dfa: $ff
	ld   [hl+], a                                    ; $6dfb: $22
	rst  JumpTable                                         ; $6dfc: $df
	ei                                               ; $6dfd: $fb
	jp   $e8e3                                       ; $6dfe: $c3 $e3 $e8


	db   $fc                                         ; $6e01: $fc
	rst  $28                                         ; $6e02: $ef
	xor  l                                           ; $6e03: $ad
	ld   d, [hl]                                     ; $6e04: $56
	ld   c, $18                                      ; $6e05: $0e $18
	dec  d                                           ; $6e07: $15
	adc  a                                           ; $6e08: $8f
	adc  c                                           ; $6e09: $89
	adc  $cf                                         ; $6e0a: $ce $cf
	ldh  a, [$d0]                                    ; $6e0c: $f0 $d0
	rst  JumpTable                                         ; $6e0e: $df
	ld   a, e                                        ; $6e0f: $7b
	ei                                               ; $6e10: $fb
	ld   a, a                                        ; $6e11: $7f
	rst  $38                                         ; $6e12: $ff
	adc  [hl]                                        ; $6e13: $8e
	ld   h, c                                        ; $6e14: $61
	ld   h, a                                        ; $6e15: $67
	ld   h, e                                        ; $6e16: $63
	add  hl, de                                      ; $6e17: $19
	push hl                                          ; $6e18: $e5
	pop  af                                          ; $6e19: $f1
	adc  c                                           ; $6e1a: $89
	adc  e                                           ; $6e1b: $8b
	ld   l, d                                        ; $6e1c: $6a
	ld   h, [hl]                                     ; $6e1d: $66
	db   $f4                                         ; $6e1e: $f4
	add  b                                           ; $6e1f: $80
	call nc, $8c02                                   ; $6e20: $d4 $02 $8c
	xor  e                                           ; $6e23: $ab
	dec  sp                                          ; $6e24: $3b
	add  b                                           ; $6e25: $80
	sub  b                                           ; $6e26: $90
	add  h                                           ; $6e27: $84
	and  b                                           ; $6e28: $a0
	ld   [$a0e1], sp                                 ; $6e29: $08 $e1 $a0
	and  e                                           ; $6e2c: $a3
	and  d                                           ; $6e2d: $a2
	and  l                                           ; $6e2e: $a5
	ld   h, l                                        ; $6e2f: $65
	ld   e, b                                        ; $6e30: $58
	rst  ToBoot                                         ; $6e31: $c7
	jr   nz, jr_096_6db4                             ; $6e32: $20 $80

	inc  hl                                          ; $6e34: $23
	dec  c                                           ; $6e35: $0d
	inc  c                                           ; $6e36: $0c
	ld   c, a                                        ; $6e37: $4f
	ld   d, h                                        ; $6e38: $54
	ld   e, e                                        ; $6e39: $5b
	jr   nc, @-$07                                   ; $6e3a: $30 $f7

	ld   h, a                                        ; $6e3c: $67
	db   $eb                                         ; $6e3d: $eb
	ld   d, e                                        ; $6e3e: $53
	rst  $30                                         ; $6e3f: $f7
	dec  d                                           ; $6e40: $15
	push af                                          ; $6e41: $f5
	add  e                                           ; $6e42: $83
	nop                                              ; $6e43: $00
	add  b                                           ; $6e44: $80
	add  b                                           ; $6e45: $80
	inc  c                                           ; $6e46: $0c
	ld   h, b                                        ; $6e47: $60
	ldh  [$b8], a                                    ; $6e48: $e0 $b8
	ld   a, b                                        ; $6e4a: $78
	ld   c, [hl]                                     ; $6e4b: $4e
	ld   e, $1d                                      ; $6e4c: $1e $1d
	rrca                                             ; $6e4e: $0f
	ld   a, [bc]                                     ; $6e4f: $0a
	jr   jr_096_6e52                                 ; $6e50: $18 $00

jr_096_6e52:
	jr   nc, jr_096_6e74                             ; $6e52: $30 $20

	add  a                                           ; $6e54: $87
	nop                                              ; $6e55: $00
	add  b                                           ; $6e56: $80
	add  b                                           ; $6e57: $80
	inc  b                                           ; $6e58: $04
	ld   h, b                                        ; $6e59: $60
	ldh  [$90], a                                    ; $6e5a: $e0 $90
	jr   nc, jr_096_6e88                             ; $6e5c: $30 $2a

	add  b                                           ; $6e5e: $80
	rrca                                             ; $6e5f: $0f
	ld   [$080e], sp                                 ; $6e60: $08 $0e $08
	ld   c, $0f                                      ; $6e63: $0e $0f
	inc  c                                           ; $6e65: $0c
	ld   [$0e0c], sp                                 ; $6e66: $08 $0c $0e
	inc  c                                           ; $6e69: $0c
	add  d                                           ; $6e6a: $82
	dec  c                                           ; $6e6b: $0d
	inc  bc                                          ; $6e6c: $03
	ld   h, [hl]                                     ; $6e6d: $66
	rra                                              ; $6e6e: $1f
	sbc  h                                           ; $6e6f: $9c
	ld   e, $80                                      ; $6e70: $1e $80
	ld   a, $01                                      ; $6e72: $3e $01

jr_096_6e74:
	dec  a                                           ; $6e74: $3d
	ccf                                              ; $6e75: $3f
	add  b                                           ; $6e76: $80
	ld   a, a                                        ; $6e77: $7f
	add  b                                           ; $6e78: $80
	rst  $38                                         ; $6e79: $ff
	add  c                                           ; $6e7a: $81

jr_096_6e7b:
	cp   $80                                         ; $6e7b: $fe $80
	rst  $38                                         ; $6e7d: $ff
	add  a                                           ; $6e7e: $87
	nop                                              ; $6e7f: $00
	add  b                                           ; $6e80: $80
	rra                                              ; $6e81: $1f
	inc  b                                           ; $6e82: $04

jr_096_6e83:
	jr   nc, @+$31                                   ; $6e83: $30 $2f

	ld   h, a                                        ; $6e85: $67
	ld   a, a                                        ; $6e86: $7f
	rlca                                             ; $6e87: $07

jr_096_6e88:
	add  a                                           ; $6e88: $87
	nop                                              ; $6e89: $00
	add  b                                           ; $6e8a: $80
	ldh  [rDIV], a                                   ; $6e8b: $e0 $04

jr_096_6e8d:
	inc  a                                           ; $6e8d: $3c
	inc  e                                           ; $6e8e: $1c
	ld   [hl+], a                                    ; $6e8f: $22
	jp   c, $80d8                                    ; $6e90: $da $d8 $80

	db   $e3                                         ; $6e93: $e3
	add  b                                           ; $6e94: $80
	ld   a, $80                                      ; $6e95: $3e $80
	ld   c, $00                                      ; $6e97: $0e $00
	inc  bc                                          ; $6e99: $03
	add  b                                           ; $6e9a: $80
	nop                                              ; $6e9b: $00
	inc  hl                                          ; $6e9c: $23
	ld   b, $00                                      ; $6e9d: $06 $00
	inc  b                                           ; $6e9f: $04
	nop                                              ; $6ea0: $00
	ld   [bc], a                                     ; $6ea1: $02
	nop                                              ; $6ea2: $00
	inc  d                                           ; $6ea3: $14
	nop                                              ; $6ea4: $00
	jr   c, jr_096_6ea7                              ; $6ea5: $38 $00

jr_096_6ea7:
	ld   d, b                                        ; $6ea7: $50
	nop                                              ; $6ea8: $00
	ld   h, b                                        ; $6ea9: $60

jr_096_6eaa:
	add  b                                           ; $6eaa: $80
	ret  nc                                          ; $6eab: $d0

	and  b                                           ; $6eac: $a0
	ld   b, $14                                      ; $6ead: $06 $14
	dec  b                                           ; $6eaf: $05
	rlca                                             ; $6eb0: $07
	add  d                                           ; $6eb1: $82
	ld   bc, $00ac                                   ; $6eb2: $01 $ac $00

jr_096_6eb5:
	ld   l, $00                                      ; $6eb5: $2e $00
	ld   b, [hl]                                     ; $6eb7: $46
	nop                                              ; $6eb8: $00
	ld   c, b                                        ; $6eb9: $48
	nop                                              ; $6eba: $00
	jr   z, jr_096_6ebd                              ; $6ebb: $28 $00

jr_096_6ebd:
	jr   c, jr_096_6ebf                              ; $6ebd: $38 $00

jr_096_6ebf:
	rst  $38                                         ; $6ebf: $ff
	rra                                              ; $6ec0: $1f
	add  b                                           ; $6ec1: $80
	ldh  [$86], a                                    ; $6ec2: $e0 $86
	nop                                              ; $6ec4: $00
	add  b                                           ; $6ec5: $80
	inc  bc                                          ; $6ec6: $03
	add  b                                           ; $6ec7: $80
	inc  a                                           ; $6ec8: $3c
	dec  b                                           ; $6ec9: $05
	ret  nz                                          ; $6eca: $c0

	jp   $3f03                                       ; $6ecb: $c3 $03 $3f


	ld   [hl], $09                                   ; $6ece: $36 $09
	add  b                                           ; $6ed0: $80
	rlca                                             ; $6ed1: $07
	add  b                                           ; $6ed2: $80
	jr   c, jr_096_6ed7                              ; $6ed3: $38 $02

	ret  nz                                          ; $6ed5: $c0

	rst  ToBoot                                         ; $6ed6: $c7

jr_096_6ed7:
	rlca                                             ; $6ed7: $07
	add  b                                           ; $6ed8: $80
	ccf                                              ; $6ed9: $3f
	add  e                                           ; $6eda: $83
	rst  $38                                         ; $6edb: $ff
	add  b                                           ; $6edc: $80
	di                                               ; $6edd: $f3
	dec  bc                                          ; $6ede: $0b
	ld   a, a                                        ; $6edf: $7f
	rst  $38                                         ; $6ee0: $ff
	ccf                                              ; $6ee1: $3f
	ld   a, a                                        ; $6ee2: $7f
	rra                                              ; $6ee3: $1f
	rst  $38                                         ; $6ee4: $ff
	rst  ToBoot                                         ; $6ee5: $c7
	rst  $30                                         ; $6ee6: $f7
	ldh  [rIE], a                                    ; $6ee7: $e0 $ff
	db   $e4                                         ; $6ee9: $e4
	db   $f4                                         ; $6eea: $f4
	add  b                                           ; $6eeb: $80
	ldh  a, [c]                                      ; $6eec: $f2
	ld   bc, $ffe0                                   ; $6eed: $01 $e0 $ff
	add  b                                           ; $6ef0: $80
	cp   $80                                         ; $6ef1: $fe $80
	ld   hl, sp-$80                                  ; $6ef3: $f8 $80
	ldh  [rP1], a                                    ; $6ef5: $e0 $00
	nop                                              ; $6ef7: $00
	add  b                                           ; $6ef8: $80
	jr   nc, jr_096_6e7b                             ; $6ef9: $30 $80

	ret  nz                                          ; $6efb: $c0

	add  b                                           ; $6efc: $80
	add  c                                           ; $6efd: $81
	ld   [bc], a                                     ; $6efe: $02
	cp   $39                                         ; $6eff: $fe $39
	jr   c, jr_096_6e83                              ; $6f01: $38 $80

	inc  sp                                          ; $6f03: $33
	add  b                                           ; $6f04: $80
	dec  a                                           ; $6f05: $3d
	add  b                                           ; $6f06: $80
	ld   [hl], c                                     ; $6f07: $71
	add  b                                           ; $6f08: $80
	ld   h, $80                                      ; $6f09: $26 $80
	jr   c, jr_096_6e8d                              ; $6f0b: $38 $80

	ldh  [$08], a                                    ; $6f0d: $e0 $08

jr_096_6f0f:
	inc  hl                                          ; $6f0f: $23
	jr   nz, jr_096_6f0f                             ; $6f10: $20 $fd

	pop  hl                                          ; $6f12: $e1
	ldh  [rAUD3LEVEL], a                             ; $6f13: $e0 $1c
	db   $10                                         ; $6f15: $10
	adc  a                                           ; $6f16: $8f
	adc  h                                           ; $6f17: $8c
	add  b                                           ; $6f18: $80
	inc  c                                           ; $6f19: $0c
	jr   jr_096_6eaa                                 ; $6f1a: $18 $8e

	add  [hl]                                        ; $6f1c: $86
	add  b                                           ; $6f1d: $80
	add  h                                           ; $6f1e: $84
	jp   $e0c0                                       ; $6f1f: $c3 $c0 $e0


	nop                                              ; $6f22: $00
	sbc  h                                           ; $6f23: $9c
	adc  h                                           ; $6f24: $8c
	ret                                              ; $6f25: $c9


	ld   c, c                                        ; $6f26: $49
	jr   z, jr_096_6f91                              ; $6f27: $28 $68

	cp   h                                           ; $6f29: $bc
	inc  e                                           ; $6f2a: $1c
	ld   e, e                                        ; $6f2b: $5b
	ld   [$33f3], sp                                 ; $6f2c: $08 $f3 $33
	ld   [de], a                                     ; $6f2f: $12
	db   $10                                         ; $6f30: $10
	ld   a, c                                        ; $6f31: $79
	and  a                                           ; $6f32: $a7
	jr   nz, jr_096_6eb5                             ; $6f33: $20 $80

	ld   b, b                                        ; $6f35: $40
	add  b                                           ; $6f36: $80
	add  b                                           ; $6f37: $80
	add  b                                           ; $6f38: $80
	nop                                              ; $6f39: $00
	add  b                                           ; $6f3a: $80
	rlca                                             ; $6f3b: $07
	inc  bc                                          ; $6f3c: $03
	rst  $38                                         ; $6f3d: $ff
	ld   hl, sp+$18                                  ; $6f3e: $f8 $18
	ldh  [$80], a                                    ; $6f40: $e0 $80
	rst  $38                                         ; $6f42: $ff
	ld   bc, $06f9                                   ; $6f43: $01 $f9 $06
	add  b                                           ; $6f46: $80
	ld   bc, $0082                                   ; $6f47: $01 $82 $00
	add  c                                           ; $6f4a: $81
	rst  $38                                         ; $6f4b: $ff
	add  c                                           ; $6f4c: $81
	nop                                              ; $6f4d: $00
	add  b                                           ; $6f4e: $80
	add  e                                           ; $6f4f: $83
	ld   bc, $0ff7                                   ; $6f50: $01 $f7 $0f
	add  b                                           ; $6f53: $80
	adc  a                                           ; $6f54: $8f
	inc  c                                           ; $6f55: $0c
	ld   l, a                                        ; $6f56: $6f
	ld   l, e                                        ; $6f57: $6b
	rra                                              ; $6f58: $1f
	dec  e                                           ; $6f59: $1d
	add  l                                           ; $6f5a: $85
	add  h                                           ; $6f5b: $84
	ld   a, [$7e7a]                                  ; $6f5c: $fa $7a $7e
	ld   b, $f9                                      ; $6f5f: $06 $f9
	rst  $38                                         ; $6f61: $ff
	cp   $83                                         ; $6f62: $fe $83
	rst  $38                                         ; $6f64: $ff
	add  b                                           ; $6f65: $80
	cp   $80                                         ; $6f66: $fe $80
	db   $fc                                         ; $6f68: $fc
	add  b                                           ; $6f69: $80
	jr   c, @-$7c                                    ; $6f6a: $38 $82

	nop                                              ; $6f6c: $00
	ld   c, d                                        ; $6f6d: $4a
	ld   bc, $009a                                   ; $6f6e: $01 $9a $00
	inc  d                                           ; $6f71: $14
	ld   bc, $0200                                   ; $6f72: $01 $00 $02
	nop                                              ; $6f75: $00
	call z, $5040                                    ; $6f76: $cc $40 $50
	ld   b, b                                        ; $6f79: $40
	ret  nz                                          ; $6f7a: $c0

	nop                                              ; $6f7b: $00
	ld   h, b                                        ; $6f7c: $60
	nop                                              ; $6f7d: $00
	ld   b, d                                        ; $6f7e: $42
	nop                                              ; $6f7f: $00
	and  [hl]                                        ; $6f80: $a6
	nop                                              ; $6f81: $00
	ld   l, b                                        ; $6f82: $68
	nop                                              ; $6f83: $00
	ld   e, d                                        ; $6f84: $5a
	add  b                                           ; $6f85: $80
	sub  [hl]                                        ; $6f86: $96
	add  a                                           ; $6f87: $87
	nop                                              ; $6f88: $00
	ld   b, $02                                      ; $6f89: $06 $02
	nop                                              ; $6f8b: $00
	ld   b, b                                        ; $6f8c: $40
	nop                                              ; $6f8d: $00
	ret  nc                                          ; $6f8e: $d0

	nop                                              ; $6f8f: $00
	sub  d                                           ; $6f90: $92

jr_096_6f91:
	add  l                                           ; $6f91: $85
	nop                                              ; $6f92: $00
	ld   a, [bc]                                     ; $6f93: $0a
	stop                                             ; $6f94: $10 $00
	jr   jr_096_6f98                                 ; $6f96: $18 $00

jr_096_6f98:
	adc  l                                           ; $6f98: $8d
	nop                                              ; $6f99: $00
	ld   de, $9200                                   ; $6f9a: $11 $00 $92
	ld   bc, $8005                                   ; $6f9d: $01 $05 $80
	ld   bc, $000b                                   ; $6fa0: $01 $0b $00
	inc  bc                                          ; $6fa3: $03
	nop                                              ; $6fa4: $00
	add  b                                           ; $6fa5: $80
	nop                                              ; $6fa6: $00
	pop  bc                                          ; $6fa7: $c1
	nop                                              ; $6fa8: $00
	ld   l, b                                        ; $6fa9: $68
	nop                                              ; $6faa: $00
	sbc  b                                           ; $6fab: $98
	nop                                              ; $6fac: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fad: $cf
	add  c                                           ; $6fae: $81
	nop                                              ; $6faf: $00
	nop                                              ; $6fb0: $00
	add  b                                           ; $6fb1: $80
	add  l                                           ; $6fb2: $85
	nop                                              ; $6fb3: $00
	dec  b                                           ; $6fb4: $05
	add  b                                           ; $6fb5: $80
	nop                                              ; $6fb6: $00
	ld   b, b                                        ; $6fb7: $40

jr_096_6fb8:
	add  b                                           ; $6fb8: $80
	ld   b, b                                        ; $6fb9: $40
	nop                                              ; $6fba: $00
	add  d                                           ; $6fbb: $82
	ld   [$0088], sp                                 ; $6fbc: $08 $88 $00
	add  b                                           ; $6fbf: $80
	ld   bc, $0380                                   ; $6fc0: $01 $80 $03
	add  b                                           ; $6fc3: $80
	ld   b, c                                        ; $6fc4: $41
	add  b                                           ; $6fc5: $80
	nop                                              ; $6fc6: $00
	add  b                                           ; $6fc7: $80
	ld   [bc], a                                     ; $6fc8: $02
	add  b                                           ; $6fc9: $80
	rlca                                             ; $6fca: $07
	add  b                                           ; $6fcb: $80
	ld   [bc], a                                     ; $6fcc: $02
	add  b                                           ; $6fcd: $80
	dec  d                                           ; $6fce: $15
	add  b                                           ; $6fcf: $80
	ld   d, e                                        ; $6fd0: $53
	add  b                                           ; $6fd1: $80
	and  $12                                         ; $6fd2: $e6 $12
	ld   l, e                                        ; $6fd4: $6b
	ld   a, e                                        ; $6fd5: $7b
	ld   c, a                                        ; $6fd6: $4f
	ld   e, l                                        ; $6fd7: $5d
	dec  l                                           ; $6fd8: $2d
	cpl                                              ; $6fd9: $2f
	ld   a, [hl]                                     ; $6fda: $7e
	ld   a, a                                        ; $6fdb: $7f
	xor  d                                           ; $6fdc: $aa
	xor  a                                           ; $6fdd: $af
	ld   d, d                                        ; $6fde: $52
	ld   d, a                                        ; $6fdf: $57
	ld   e, $01                                      ; $6fe0: $1e $01
	ld   [$0604], sp                                 ; $6fe2: $08 $04 $06
	nop                                              ; $6fe5: $00
	ld   bc, $0081                                   ; $6fe6: $01 $81 $00
	ld   a, [bc]                                     ; $6fe9: $0a
	ld   e, $00                                      ; $6fea: $1e $00
	ld   b, $00                                      ; $6fec: $06 $00
	ld   e, $03                                      ; $6fee: $1e $03
	ld   l, b                                        ; $6ff0: $68
	nop                                              ; $6ff1: $00
	add  h                                           ; $6ff2: $84
	nop                                              ; $6ff3: $00
	inc  bc                                          ; $6ff4: $03
	add  [hl]                                        ; $6ff5: $86
	nop                                              ; $6ff6: $00
	rla                                              ; $6ff7: $17
	add  b                                           ; $6ff8: $80
	ld   b, c                                        ; $6ff9: $41
	nop                                              ; $6ffa: $00
	and  h                                           ; $6ffb: $a4
	nop                                              ; $6ffc: $00
	add  b                                           ; $6ffd: $80
	nop                                              ; $6ffe: $00
	and  b                                           ; $6fff: $a0
	nop                                              ; $7000: $00
	stop                                             ; $7001: $10 $00
	ld   b, b                                        ; $7003: $40
	nop                                              ; $7004: $00
	ld   b, b                                        ; $7005: $40
	nop                                              ; $7006: $00
	ld   d, d                                        ; $7007: $52
	nop                                              ; $7008: $00
	ld   e, h                                        ; $7009: $5c
	nop                                              ; $700a: $00
	pop  de                                          ; $700b: $d1
	nop                                              ; $700c: $00
	ld   b, b                                        ; $700d: $40
	nop                                              ; $700e: $00
	rrca                                             ; $700f: $0f
	add  e                                           ; $7010: $83
	nop                                              ; $7011: $00
	ld   a, [bc]                                     ; $7012: $0a
	dec  b                                           ; $7013: $05
	nop                                              ; $7014: $00
	inc  h                                           ; $7015: $24
	nop                                              ; $7016: $00
	add  hl, sp                                      ; $7017: $39
	nop                                              ; $7018: $00
	and  l                                           ; $7019: $a5
	nop                                              ; $701a: $00
	jr   nc, jr_096_701d                             ; $701b: $30 $00

jr_096_701d:
	ld   c, b                                        ; $701d: $48
	add  l                                           ; $701e: $85
	nop                                              ; $701f: $00
	dec  d                                           ; $7020: $15
	add  c                                           ; $7021: $81
	nop                                              ; $7022: $00
	jp   Jump_096_5d00                               ; $7023: $c3 $00 $5d


	ld   b, b                                        ; $7026: $40
	db   $10                                         ; $7027: $10
	jr   nz, jr_096_706c                             ; $7028: $20 $42

	ld   [bc], a                                     ; $702a: $02
	jr   nc, jr_096_706d                             ; $702b: $30 $40

	db   $10                                         ; $702d: $10
	jr   nz, jr_096_6fb8                             ; $702e: $20 $88

	db   $10                                         ; $7030: $10
	jr   nc, jr_096_7033                             ; $7031: $30 $00

jr_096_7033:
	ld   a, b                                        ; $7033: $78
	nop                                              ; $7034: $00
	ld   b, b                                        ; $7035: $40
	nop                                              ; $7036: $00
	add  b                                           ; $7037: $80
	ld   b, b                                        ; $7038: $40
	add  b                                           ; $7039: $80
	ret  nz                                          ; $703a: $c0

jr_096_703b:
	adc  b                                           ; $703b: $88
	nop                                              ; $703c: $00
	jr   z, jr_096_7079                              ; $703d: $28 $3a

	dec  sp                                          ; $703f: $3b
	ld   d, l                                        ; $7040: $55
	ld   d, a                                        ; $7041: $57
	db   $ed                                         ; $7042: $ed
	rst  $28                                         ; $7043: $ef
	ld   e, h                                        ; $7044: $5c
	ld   e, l                                        ; $7045: $5d
	adc  d                                           ; $7046: $8a
	sbc  a                                           ; $7047: $9f
	ld   b, h                                        ; $7048: $44
	ld   e, a                                        ; $7049: $5f
	or   h                                           ; $704a: $b4
	cp   a                                           ; $704b: $bf
	ld   d, c                                        ; $704c: $51
	ld   d, e                                        ; $704d: $53
	xor  d                                           ; $704e: $aa
	xor  a                                           ; $704f: $af
	ld   d, h                                        ; $7050: $54
	rst  $38                                         ; $7051: $ff
	ld   [$88ff], sp                                 ; $7052: $08 $ff $88
	rst  $38                                         ; $7055: $ff
	ldh  [$df], a                                    ; $7056: $e0 $df
	ld   b, h                                        ; $7058: $44
	cp   $41                                         ; $7059: $fe $41
	ld   sp, hl                                      ; $705b: $f9
	ld   l, [hl]                                     ; $705c: $6e
	db   $f4                                         ; $705d: $f4
	add  b                                           ; $705e: $80
	ld   [bc], a                                     ; $705f: $02
	ld   [$0600], sp                                 ; $7060: $08 $00 $06
	nop                                              ; $7063: $00
	ld   bc, $0300                                   ; $7064: $01 $00 $03
	add  l                                           ; $7067: $85
	nop                                              ; $7068: $00
	nop                                              ; $7069: $00
	inc  l                                           ; $706a: $2c
	add  c                                           ; $706b: $81

jr_096_706c:
	nop                                              ; $706c: $00

jr_096_706d:
	inc  b                                           ; $706d: $04
	ld   b, b                                        ; $706e: $40
	nop                                              ; $706f: $00
	ldh  a, [rP1]                                    ; $7070: $f0 $00
	sub  d                                           ; $7072: $92
	add  e                                           ; $7073: $83
	nop                                              ; $7074: $00
	ld   a, [bc]                                     ; $7075: $0a
	inc  de                                          ; $7076: $13
	nop                                              ; $7077: $00
	dec  d                                           ; $7078: $15

jr_096_7079:
	nop                                              ; $7079: $00
	ld   [$8800], sp                                 ; $707a: $08 $00 $88
	nop                                              ; $707d: $00
	ld   a, b                                        ; $707e: $78
	nop                                              ; $707f: $00
	ldh  a, [$85]                                    ; $7080: $f0 $85
	nop                                              ; $7082: $00
	ld   [$0010], sp                                 ; $7083: $08 $10 $00
	stop                                             ; $7086: $10 $00
	ld   de, $1e00                                   ; $7088: $11 $00 $1e
	nop                                              ; $708b: $00
	rrca                                             ; $708c: $0f
	add  c                                           ; $708d: $81
	nop                                              ; $708e: $00
	nop                                              ; $708f: $00
	add  b                                           ; $7090: $80
	add  c                                           ; $7091: $81
	nop                                              ; $7092: $00
	ld   bc, $02b6                                   ; $7093: $01 $b6 $02
	add  b                                           ; $7096: $80
	ld   bc, $0080                                   ; $7097: $01 $80 $00
	inc  b                                           ; $709a: $04
	ld   de, $4f00                                   ; $709b: $11 $00 $4f
	nop                                              ; $709e: $00
	ld   [de], a                                     ; $709f: $12
	add  c                                           ; $70a0: $81
	nop                                              ; $70a1: $00
	ld   [bc], a                                     ; $70a2: $02
	add  b                                           ; $70a3: $80
	nop                                              ; $70a4: $00
	ld   a, b                                        ; $70a5: $78
	add  c                                           ; $70a6: $81

jr_096_70a7:
	nop                                              ; $70a7: $00
	ld   bc, $8040                                   ; $70a8: $01 $40 $80
	add  b                                           ; $70ab: $80
	nop                                              ; $70ac: $00
	inc  bc                                          ; $70ad: $03
	ret  nz                                          ; $70ae: $c0

	nop                                              ; $70af: $00
	add  b                                           ; $70b0: $80
	nop                                              ; $70b1: $00
	add  b                                           ; $70b2: $80
	jr   nz, jr_096_703b                             ; $70b3: $20 $86

jr_096_70b5:
	nop                                              ; $70b5: $00
	add  b                                           ; $70b6: $80
	db   $10                                         ; $70b7: $10
	adc  d                                           ; $70b8: $8a
	nop                                              ; $70b9: $00
	add  b                                           ; $70ba: $80
	ld   [bc], a                                     ; $70bb: $02
	adc  c                                           ; $70bc: $89
	nop                                              ; $70bd: $00
	add  b                                           ; $70be: $80
	ld   bc, $0081                                   ; $70bf: $01 $81 $00
	add  b                                           ; $70c2: $80
	ld   bc, $0280                                   ; $70c3: $01 $80 $02
	inc  bc                                          ; $70c6: $03
	ld   bc, $0709                                   ; $70c7: $01 $09 $07
	rrca                                             ; $70ca: $0f
	add  b                                           ; $70cb: $80
	inc  bc                                          ; $70cc: $03
	db   $10                                         ; $70cd: $10
	push de                                          ; $70ce: $d5
	db   $d3                                         ; $70cf: $d3
	dec  l                                           ; $70d0: $2d
	dec  hl                                          ; $70d1: $2b
	inc  d                                           ; $70d2: $14
	dec  d                                           ; $70d3: $15
	ld   c, b                                        ; $70d4: $48
	ld   c, c                                        ; $70d5: $49
	or   l                                           ; $70d6: $b5
	cp   a                                           ; $70d7: $bf
	ld   h, b                                        ; $70d8: $60
	ld   a, a                                        ; $70d9: $7f
	or   h                                           ; $70da: $b4
	db   $eb                                         ; $70db: $eb
	ld   de, $bdfb                                   ; $70dc: $11 $fb $bd
	add  c                                           ; $70df: $81
	nop                                              ; $70e0: $00
	ld   b, $20                                      ; $70e1: $06 $20
	nop                                              ; $70e3: $00
	ld   b, $00                                      ; $70e4: $06 $00
	ld   b, b                                        ; $70e6: $40
	nop                                              ; $70e7: $00
	adc  h                                           ; $70e8: $8c
	add  c                                           ; $70e9: $81
	nop                                              ; $70ea: $00
	rrca                                             ; $70eb: $0f
	jr   jr_096_70ee                                 ; $70ec: $18 $00

jr_096_70ee:
	rst  $28                                         ; $70ee: $ef
	nop                                              ; $70ef: $00
	add  b                                           ; $70f0: $80
	nop                                              ; $70f1: $00
	ld   b, b                                        ; $70f2: $40
	nop                                              ; $70f3: $00
	jr   nc, jr_096_70f6                             ; $70f4: $30 $00

jr_096_70f6:
	inc  e                                           ; $70f6: $1c
	nop                                              ; $70f7: $00
	rrca                                             ; $70f8: $0f
	nop                                              ; $70f9: $00
	ld   b, e                                        ; $70fa: $43
	ld   b, b                                        ; $70fb: $40
	add  b                                           ; $70fc: $80
	add  b                                           ; $70fd: $80
	db   $10                                         ; $70fe: $10
	ldh  [rP1], a                                    ; $70ff: $e0 $00
	ld   b, c                                        ; $7101: $41
	nop                                              ; $7102: $00
	ld   b, [hl]                                     ; $7103: $46
	nop                                              ; $7104: $00
	ld   [$3800], sp                                 ; $7105: $08 $00 $38
	nop                                              ; $7108: $00
	ldh  a, [rP1]                                    ; $7109: $f0 $00
	ret  nz                                          ; $710b: $c0

	nop                                              ; $710c: $00
	ld   [$df00], sp                                 ; $710d: $08 $00 $df
	add  e                                           ; $7110: $83
	nop                                              ; $7111: $00
	nop                                              ; $7112: $00
	ld   [hl], b                                     ; $7113: $70
	add  c                                           ; $7114: $81
	nop                                              ; $7115: $00
	ld   b, $e0                                      ; $7116: $06 $e0
	nop                                              ; $7118: $00
	add  b                                           ; $7119: $80
	nop                                              ; $711a: $00
	ld   b, b                                        ; $711b: $40
	nop                                              ; $711c: $00
	add  b                                           ; $711d: $80
	add  l                                           ; $711e: $85
	nop                                              ; $711f: $00
	add  d                                           ; $7120: $82
	ld   [bc], a                                     ; $7121: $02
	sub  b                                           ; $7122: $90
	nop                                              ; $7123: $00
	add  b                                           ; $7124: $80
	jr   nc, jr_096_70a7                             ; $7125: $30 $80

	ld   h, b                                        ; $7127: $60
	adc  h                                           ; $7128: $8c
	nop                                              ; $7129: $00

jr_096_712a:
	add  b                                           ; $712a: $80
	dec  b                                           ; $712b: $05
	add  b                                           ; $712c: $80
	ld   [bc], a                                     ; $712d: $02
	add  b                                           ; $712e: $80
	nop                                              ; $712f: $00
	add  b                                           ; $7130: $80
	inc  b                                           ; $7131: $04
	add  b                                           ; $7132: $80
	jr   nz, jr_096_70b5                             ; $7133: $20 $80

	ld   d, b                                        ; $7135: $50
	add  b                                           ; $7136: $80
	jr   z, jr_096_713e                              ; $7137: $28 $05

	dec  d                                           ; $7139: $15
	dec  e                                           ; $713a: $1d
	ld   c, $46                                      ; $713b: $0e $46
	ld   c, e                                        ; $713d: $4b

jr_096_713e:
	dec  bc                                          ; $713e: $0b
	add  b                                           ; $713f: $80
	jr   nz, jr_096_714c                             ; $7140: $20 $0a

	ld   [hl], a                                     ; $7142: $77
	ld   [hl], l                                     ; $7143: $75
	jr   z, jr_096_7171                              ; $7144: $28 $2b

	ld   e, $1f                                      ; $7146: $1e $1f
	ret  z                                           ; $7148: $c8

	ld   a, [$7742]                                  ; $7149: $fa $42 $77

jr_096_714c:
	rlca                                             ; $714c: $07
	add  e                                           ; $714d: $83
	nop                                              ; $714e: $00
	inc  d                                           ; $714f: $14
	inc  bc                                          ; $7150: $03
	nop                                              ; $7151: $00
	inc  bc                                          ; $7152: $03
	nop                                              ; $7153: $00
	inc  bc                                          ; $7154: $03
	nop                                              ; $7155: $00
	inc  e                                           ; $7156: $1c
	nop                                              ; $7157: $00
	ld   h, b                                        ; $7158: $60
	nop                                              ; $7159: $00
	ld   a, d                                        ; $715a: $7a
	nop                                              ; $715b: $00
	ld   e, $00                                      ; $715c: $1e $00
	ld   a, h                                        ; $715e: $7c
	nop                                              ; $715f: $00
	ld   sp, hl                                      ; $7160: $f9
	nop                                              ; $7161: $00
	pop  hl                                          ; $7162: $e1
	nop                                              ; $7163: $00
	add  b                                           ; $7164: $80
	add  b                                           ; $7165: $80
	ld   bc, $0780                                   ; $7166: $01 $80 $07
	add  hl, bc                                      ; $7169: $09
	rrca                                             ; $716a: $0f
	cpl                                              ; $716b: $2f
	ld   bc, $0361                                   ; $716c: $01 $61 $03
	rst  ToBoot                                         ; $716f: $c7
	rlca                                             ; $7170: $07

jr_096_7171:
	add  a                                           ; $7171: $87
	rra                                              ; $7172: $1f
	add  hl, de                                      ; $7173: $19
	add  b                                           ; $7174: $80
	ld   a, a                                        ; $7175: $7f
	ld   bc, $fcff                                   ; $7176: $01 $ff $fc
	add  c                                           ; $7179: $81
	rst  $38                                         ; $717a: $ff
	inc  l                                           ; $717b: $2c
	pop  de                                          ; $717c: $d1
	add  b                                           ; $717d: $80
	sbc  b                                           ; $717e: $98
	add  b                                           ; $717f: $80
	xor  h                                           ; $7180: $ac
	ret  nz                                          ; $7181: $c0

	sub  $e0                                         ; $7182: $d6 $e0
	db   $eb                                         ; $7184: $eb
	ldh  a, [$f7]                                    ; $7185: $f0 $f7
	ld   hl, sp-$04                                  ; $7187: $f8 $fc
	ldh  [rIE], a                                    ; $7189: $e0 $ff
	add  b                                           ; $718b: $80
	ld   a, e                                        ; $718c: $7b
	ld   bc, $0131                                   ; $718d: $01 $31 $01
	ld   [hl], e                                     ; $7190: $73
	inc  bc                                          ; $7191: $03
	jp   $a403                                       ; $7192: $c3 $03 $a4


	rlca                                             ; $7195: $07
	ld   b, e                                        ; $7196: $43
	rlca                                             ; $7197: $07
	adc  a                                           ; $7198: $8f
	rrca                                             ; $7199: $0f
	rla                                              ; $719a: $17
	rra                                              ; $719b: $1f
	or   b                                           ; $719c: $b0
	add  b                                           ; $719d: $80
	ldh  [$c0], a                                    ; $719e: $e0 $c0
	ret  c                                           ; $71a0: $d8

	ret  nz                                          ; $71a1: $c0

	sbc  $d8                                         ; $71a2: $de $d8
	cp   a                                           ; $71a4: $bf
	cp   [hl]                                        ; $71a5: $be
	ld   c, a                                        ; $71a6: $4f
	rst  $38                                         ; $71a7: $ff
	jr   nc, jr_096_712a                             ; $71a8: $30 $80

	rst  $38                                         ; $71aa: $ff
	ld   bc, $84fb                                   ; $71ab: $01 $fb $84
	add  l                                           ; $71ae: $85
	nop                                              ; $71af: $00
	add  hl, bc                                      ; $71b0: $09
	add  b                                           ; $71b1: $80
	nop                                              ; $71b2: $00
	ldh  [$80], a                                    ; $71b3: $e0 $80
	ld   [hl], b                                     ; $71b5: $70
	ldh  [$b8], a                                    ; $71b6: $e0 $b8
	ldh  a, [$38]                                    ; $71b8: $f0 $38
	nop                                              ; $71ba: $00
	add  b                                           ; $71bb: $80
	ld   bc, $0080                                   ; $71bc: $01 $80 $00
	add  b                                           ; $71bf: $80
	inc  bc                                          ; $71c0: $03
	ld   l, $07                                      ; $71c1: $2e $07
	dec  b                                           ; $71c3: $05
	ld   bc, $0107                                   ; $71c4: $01 $07 $01
	rrca                                             ; $71c7: $0f
	dec  bc                                          ; $71c8: $0b
	dec  b                                           ; $71c9: $05
	cp   [hl]                                        ; $71ca: $be
	xor  [hl]                                        ; $71cb: $ae
	ld   h, d                                        ; $71cc: $62
	ld   a, a                                        ; $71cd: $7f
	xor  l                                           ; $71ce: $ad
	and  l                                           ; $71cf: $a5
	ld   [hl], c                                     ; $71d0: $71
	di                                               ; $71d1: $f3
	ld   a, c                                        ; $71d2: $79
	ld   a, [$a9fd]                                  ; $71d3: $fa $fd $a9
	or   c                                           ; $71d6: $b1
	rst  $28                                         ; $71d7: $ef
	ld   sp, $8c77                                   ; $71d8: $31 $77 $8c
	ldh  [c], a                                      ; $71db: $e2
	sbc  c                                           ; $71dc: $99
	cp   e                                           ; $71dd: $bb
	ld   d, [hl]                                     ; $71de: $56
	rst  $30                                         ; $71df: $f7
	rlca                                             ; $71e0: $07
	or   $0b                                         ; $71e1: $f6 $0b
	ld   a, a                                        ; $71e3: $7f
	sbc  e                                           ; $71e4: $9b
	rst  $38                                         ; $71e5: $ff
	push de                                          ; $71e6: $d5
	ld   a, a                                        ; $71e7: $7f
	ld   b, b                                        ; $71e8: $40
	rst  $38                                         ; $71e9: $ff
	ld   d, h                                        ; $71ea: $54
	nop                                              ; $71eb: $00
	inc  bc                                          ; $71ec: $03
	nop                                              ; $71ed: $00
	rlca                                             ; $71ee: $07
	nop                                              ; $71ef: $00
	ld   c, $83                                      ; $71f0: $0e $83
	nop                                              ; $71f2: $00
	jr   jr_096_71fe                                 ; $71f3: $18 $09

	nop                                              ; $71f5: $00
	ld   [bc], a                                     ; $71f6: $02
	nop                                              ; $71f7: $00
	rst  $38                                         ; $71f8: $ff
	nop                                              ; $71f9: $00
	ld   bc, $0700                                   ; $71fa: $01 $00 $07
	nop                                              ; $71fd: $00

jr_096_71fe:
	dec  bc                                          ; $71fe: $0b
	nop                                              ; $71ff: $00
	rla                                              ; $7200: $17
	nop                                              ; $7201: $00
	ld   l, $00                                      ; $7202: $2e $00
	jr   jr_096_7206                                 ; $7204: $18 $00

jr_096_7206:
	add  b                                           ; $7206: $80
	nop                                              ; $7207: $00
	db   $ec                                         ; $7208: $ec
	rrca                                             ; $7209: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $720a: $cf
	rra                                              ; $720b: $1f
	sbc  a                                           ; $720c: $9f
	add  c                                           ; $720d: $81
	rra                                              ; $720e: $1f
	nop                                              ; $720f: $00
	ld   a, [de]                                     ; $7210: $1a
	add  b                                           ; $7211: $80
	rra                                              ; $7212: $1f
	ld   de, $373f                                   ; $7213: $11 $3f $37
	ccf                                              ; $7216: $3f
	dec  sp                                          ; $7217: $3b
	ccf                                              ; $7218: $3f
	ld   [hl], $fe                                   ; $7219: $36 $fe
	rst  $38                                         ; $721b: $ff
	ld   hl, sp-$02                                  ; $721c: $f8 $fe
	ld   [hl], b                                     ; $721e: $70
	ld   [hl], c                                     ; $721f: $71
	ld   [hl], b                                     ; $7220: $70
	ld   [hl], c                                     ; $7221: $71
	ld   [hl], b                                     ; $7222: $70
	ld   a, b                                        ; $7223: $78
	ld   h, b                                        ; $7224: $60
	ldh  [$81], a                                    ; $7225: $e0 $81
	and  b                                           ; $7227: $a0
	db   $10                                         ; $7228: $10
	ld   e, c                                        ; $7229: $59
	nop                                              ; $722a: $00
	cp   d                                           ; $722b: $ba
	nop                                              ; $722c: $00
	db   $f4                                         ; $722d: $f4
	nop                                              ; $722e: $00
	db   $db                                         ; $722f: $db
	nop                                              ; $7230: $00
	ld   a, l                                        ; $7231: $7d
	nop                                              ; $7232: $00
	ld   l, [hl]                                     ; $7233: $6e
	nop                                              ; $7234: $00
	rrca                                             ; $7235: $0f
	nop                                              ; $7236: $00
	rlca                                             ; $7237: $07
	nop                                              ; $7238: $00
	reti                                             ; $7239: $d9


	add  c                                           ; $723a: $81
	ccf                                              ; $723b: $3f
	inc  c                                           ; $723c: $0c
	call c, $791f                                    ; $723d: $dc $1f $79
	ccf                                              ; $7240: $3f
	rst  JumpTable                                         ; $7241: $df
	ld   a, a                                        ; $7242: $7f
	inc  de                                          ; $7243: $13
	ccf                                              ; $7244: $3f
	rst  ToBoot                                         ; $7245: $c7
	rra                                              ; $7246: $1f
	cp   $3f                                         ; $7247: $fe $3f
	ld   c, $81                                      ; $7249: $0e $81
	ei                                               ; $724b: $fb
	nop                                              ; $724c: $00
	rst  $38                                         ; $724d: $ff
	add  c                                           ; $724e: $81
	db   $fd                                         ; $724f: $fd
	ld   a, [bc]                                     ; $7250: $0a
	call nc, $9dfd                                   ; $7251: $d4 $fd $9d
	db   $fd                                         ; $7254: $fd
	ld   l, l                                        ; $7255: $6d
	db   $fd                                         ; $7256: $fd
	cp   l                                           ; $7257: $bd
	db   $fd                                         ; $7258: $fd
	ld   [hl], a                                     ; $7259: $77
	ldh  a, [$fc]                                    ; $725a: $f0 $fc
	add  c                                           ; $725c: $81
	ld   hl, sp+$01                                  ; $725d: $f8 $01
	ret  c                                           ; $725f: $d8

	ld   hl, sp-$80                                  ; $7260: $f8 $80
	ret  c                                           ; $7262: $d8

	ld   b, $de                                      ; $7263: $06 $de
	call c, $eccc                                    ; $7265: $dc $cc $ec
	ld   l, h                                        ; $7268: $6c
	db   $ec                                         ; $7269: $ec
	sbc  [hl]                                        ; $726a: $9e
	add  l                                           ; $726b: $85
	nop                                              ; $726c: $00
	add  d                                           ; $726d: $82
	inc  b                                           ; $726e: $04
	add  d                                           ; $726f: $82
	nop                                              ; $7270: $00
	rlca                                             ; $7271: $07
	ld   a, [hl-]                                    ; $7272: $3a
	ld   a, d                                        ; $7273: $7a
	dec  b                                           ; $7274: $05
	ld   b, [hl]                                     ; $7275: $46
	and  a                                           ; $7276: $a7
	xor  l                                           ; $7277: $ad
	ld   d, a                                        ; $7278: $57
	ld   e, [hl]                                     ; $7279: $5e
	add  b                                           ; $727a: $80
	ld   a, [bc]                                     ; $727b: $0a
	add  b                                           ; $727c: $80
	inc  d                                           ; $727d: $14
	add  b                                           ; $727e: $80
	ld   [$0180], sp                                 ; $727f: $08 $80 $01
	add  hl, bc                                      ; $7282: $09
	ld   [hl], l                                     ; $7283: $75
	ld   a, a                                        ; $7284: $7f
	and  h                                           ; $7285: $a4
	cp   d                                           ; $7286: $ba
	rst  ToBoot                                         ; $7287: $c7
	rst  $38                                         ; $7288: $ff
	adc  $f2                                         ; $7289: $ce $f2
	sub  b                                           ; $728b: $90
	add  b                                           ; $728c: $80
	add  b                                           ; $728d: $80
	dec  b                                           ; $728e: $05
	inc  b                                           ; $728f: $04
	adc  d                                           ; $7290: $8a
	adc  e                                           ; $7291: $8b
	ld   e, [hl]                                     ; $7292: $5e
	ld   a, a                                        ; $7293: $7f
	jr   nz, @-$77                                   ; $7294: $20 $87

	nop                                              ; $7296: $00
	ld   [bc], a                                     ; $7297: $02
	ld   bc, $0200                                   ; $7298: $01 $00 $02
	add  b                                           ; $729b: $80
	nop                                              ; $729c: $00
	inc  bc                                          ; $729d: $03
	ld   bc, $40cd                                   ; $729e: $01 $cd $40
	ldh  a, [$81]                                    ; $72a1: $f0 $81
	jr   nz, jr_096_72af                             ; $72a3: $20 $0a

	ld   h, b                                        ; $72a5: $60
	nop                                              ; $72a6: $00
	ldh  [c], a                                      ; $72a7: $e2
	nop                                              ; $72a8: $00
	ld   h, [hl]                                     ; $72a9: $66
	nop                                              ; $72aa: $00
	ret  z                                           ; $72ab: $c8

	nop                                              ; $72ac: $00
	sbc  e                                           ; $72ad: $9b
	nop                                              ; $72ae: $00

jr_096_72af:
	rla                                              ; $72af: $17
	add  a                                           ; $72b0: $87
	nop                                              ; $72b1: $00
	ld   b, $02                                      ; $72b2: $06 $02
	nop                                              ; $72b4: $00
	add  b                                           ; $72b5: $80
	nop                                              ; $72b6: $00
	sub  b                                           ; $72b7: $90
	nop                                              ; $72b8: $00
	ld   [de], a                                     ; $72b9: $12
	add  l                                           ; $72ba: $85
	nop                                              ; $72bb: $00
	ld   a, [bc]                                     ; $72bc: $0a
	stop                                             ; $72bd: $10 $00
	jr   jr_096_72c1                                 ; $72bf: $18 $00

jr_096_72c1:
	add  c                                           ; $72c1: $81
	nop                                              ; $72c2: $00
	dec  e                                           ; $72c3: $1d
	nop                                              ; $72c4: $00
	sub  b                                           ; $72c5: $90
	ld   [bc], a                                     ; $72c6: $02
	ld   b, $81                                      ; $72c7: $06 $81
	ld   [bc], a                                     ; $72c9: $02
	ld   a, [bc]                                     ; $72ca: $0a
	inc  bc                                          ; $72cb: $03
	nop                                              ; $72cc: $00
	add  b                                           ; $72cd: $80
	nop                                              ; $72ce: $00
	pop  bc                                          ; $72cf: $c1
	nop                                              ; $72d0: $00
	ld   l, b                                        ; $72d1: $68
	nop                                              ; $72d2: $00
	sbc  b                                           ; $72d3: $98
	nop                                              ; $72d4: $00
	ld   c, a                                        ; $72d5: $4f
	adc  c                                           ; $72d6: $89
	nop                                              ; $72d7: $00
	inc  b                                           ; $72d8: $04
	add  b                                           ; $72d9: $80
	nop                                              ; $72da: $00
	ld   b, b                                        ; $72db: $40
	add  b                                           ; $72dc: $80
	ld   b, b                                        ; $72dd: $40
	add  l                                           ; $72de: $85
	nop                                              ; $72df: $00
	add  b                                           ; $72e0: $80
	ld   bc, $0084                                   ; $72e1: $01 $84 $00
	add  b                                           ; $72e4: $80
	ld   bc, $0380                                   ; $72e5: $01 $80 $03
	add  b                                           ; $72e8: $80
	ld   bc, $0080                                   ; $72e9: $01 $80 $00
	add  b                                           ; $72ec: $80
	ld   [bc], a                                     ; $72ed: $02
	add  b                                           ; $72ee: $80
	rlca                                             ; $72ef: $07
	add  b                                           ; $72f0: $80
	ld   [bc], a                                     ; $72f1: $02
	add  b                                           ; $72f2: $80
	dec  d                                           ; $72f3: $15
	inc  b                                           ; $72f4: $04
	ld   a, $00                                      ; $72f5: $3e $00
	inc  bc                                          ; $72f7: $03
	jr   jr_096_732a                                 ; $72f8: $18 $30

	add  c                                           ; $72fa: $81
	nop                                              ; $72fb: $00
	inc  c                                           ; $72fc: $0c
	inc  e                                           ; $72fd: $1c
	nop                                              ; $72fe: $00
	ld   b, $00                                      ; $72ff: $06 $00
	ld   e, $00                                      ; $7301: $1e $00
	ld   e, $07                                      ; $7303: $1e $07
	ld   hl, sp+$00                                  ; $7305: $f8 $00
	ld   [$0700], sp                                 ; $7307: $08 $00 $07
	add  [hl]                                        ; $730a: $86
	nop                                              ; $730b: $00
	dec  bc                                          ; $730c: $0b
	add  b                                           ; $730d: $80
	ld   b, e                                        ; $730e: $43
	nop                                              ; $730f: $00
	and  [hl]                                        ; $7310: $a6
	nop                                              ; $7311: $00
	add  b                                           ; $7312: $80
	nop                                              ; $7313: $00
	xor  b                                           ; $7314: $a8
	nop                                              ; $7315: $00
	add  $00                                         ; $7316: $c6 $00
	sub  c                                           ; $7318: $91
	add  c                                           ; $7319: $81
	nop                                              ; $731a: $00
	ld   b, $5c                                      ; $731b: $06 $5c
	nop                                              ; $731d: $00
	dec  e                                           ; $731e: $1d
	nop                                              ; $731f: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7320: $cf
	nop                                              ; $7321: $00
	add  d                                           ; $7322: $82
	add  e                                           ; $7323: $83
	nop                                              ; $7324: $00
	inc  c                                           ; $7325: $0c
	jr   nz, jr_096_7328                             ; $7326: $20 $00

jr_096_7328:
	ld   b, $00                                      ; $7328: $06 $00

jr_096_732a:
	sub  h                                           ; $732a: $94
	nop                                              ; $732b: $00
	ld   a, c                                        ; $732c: $79
	nop                                              ; $732d: $00
	dec  h                                           ; $732e: $25
	nop                                              ; $732f: $00
	ld   l, b                                        ; $7330: $68
	nop                                              ; $7331: $00
	sub  b                                           ; $7332: $90
	add  l                                           ; $7333: $85
	nop                                              ; $7334: $00
	dec  b                                           ; $7335: $05
	add  c                                           ; $7336: $81
	nop                                              ; $7337: $00
	pop  bc                                          ; $7338: $c1
	ld   [bc], a                                     ; $7339: $02
	ld   e, l                                        ; $733a: $5d
	ld   b, b                                        ; $733b: $40
	add  b                                           ; $733c: $80
	nop                                              ; $733d: $00
	rlca                                             ; $733e: $07
	ld   d, b                                        ; $733f: $50
	jr   nz, jr_096_73a2                             ; $7340: $20 $60

	nop                                              ; $7342: $00
	inc  d                                           ; $7343: $14
	inc  b                                           ; $7344: $04
	ldh  a, [rLCDC]                                  ; $7345: $f0 $40
	add  b                                           ; $7347: $80
	jr   nz, jr_096_734c                             ; $7348: $20 $02

	ld   h, b                                        ; $734a: $60
	nop                                              ; $734b: $00

jr_096_734c:
	ld   [hl], b                                     ; $734c: $70
	add  e                                           ; $734d: $83
	nop                                              ; $734e: $00
	add  d                                           ; $734f: $82
	ld   bc, $0084                                   ; $7350: $01 $84 $00
	ld   bc, $0206                                   ; $7353: $01 $06 $02
	add  b                                           ; $7356: $80
	nop                                              ; $7357: $00
	ld   [bc], a                                     ; $7358: $02
	rlca                                             ; $7359: $07
	nop                                              ; $735a: $00
	inc  bc                                          ; $735b: $03
	add  a                                           ; $735c: $87
	nop                                              ; $735d: $00
	nop                                              ; $735e: $00
	inc  l                                           ; $735f: $2c
	add  c                                           ; $7360: $81
	nop                                              ; $7361: $00

jr_096_7362:
	inc  b                                           ; $7362: $04
	ret  nz                                          ; $7363: $c0

	nop                                              ; $7364: $00
	ldh  a, [rP1]                                    ; $7365: $f0 $00
	ld   [de], a                                     ; $7367: $12
	add  c                                           ; $7368: $81
	nop                                              ; $7369: $00
	inc  c                                           ; $736a: $0c
	stop                                             ; $736b: $10 $00
	inc  bc                                          ; $736d: $03

jr_096_736e:
	nop                                              ; $736e: $00
	dec  c                                           ; $736f: $0d
	nop                                              ; $7370: $00
	stop                                             ; $7371: $10 $00
	ld   de, $1e00                                   ; $7373: $11 $00 $1e
	nop                                              ; $7376: $00
	rrca                                             ; $7377: $0f
	add  c                                           ; $7378: $81
	nop                                              ; $7379: $00
	inc  b                                           ; $737a: $04
	add  b                                           ; $737b: $80
	nop                                              ; $737c: $00
	inc  bc                                          ; $737d: $03
	nop                                              ; $737e: $00
	or   [hl]                                        ; $737f: $b6
	add  c                                           ; $7380: $81
	ld   bc, $0080                                   ; $7381: $01 $80 $00
	ld   a, [bc]                                     ; $7384: $0a
	ld   [de], a                                     ; $7385: $12
	nop                                              ; $7386: $00
	ld   c, e                                        ; $7387: $4b
	nop                                              ; $7388: $00
	dec  d                                           ; $7389: $15
	nop                                              ; $738a: $00
	add  b                                           ; $738b: $80
	nop                                              ; $738c: $00
	jr   z, jr_096_738f                              ; $738d: $28 $00

jr_096_738f:
	ld   d, b                                        ; $738f: $50
	add  l                                           ; $7390: $85
	nop                                              ; $7391: $00
	nop                                              ; $7392: $00
	add  b                                           ; $7393: $80
	add  e                                           ; $7394: $83
	nop                                              ; $7395: $00
	add  b                                           ; $7396: $80
	add  b                                           ; $7397: $80
	add  [hl]                                        ; $7398: $86
	nop                                              ; $7399: $00
	add  b                                           ; $739a: $80
	jr   nz, @-$74                                   ; $739b: $20 $8a

	nop                                              ; $739d: $00
	ld   [de], a                                     ; $739e: $12
	ld   bc, $0300                                   ; $739f: $01 $00 $03

jr_096_73a2:
	nop                                              ; $73a2: $00
	rrca                                             ; $73a3: $0f
	nop                                              ; $73a4: $00
	ld   a, $00                                      ; $73a5: $3e $00
	db   $fc                                         ; $73a7: $fc
	nop                                              ; $73a8: $00
	ldh  a, [c]                                      ; $73a9: $f2
	nop                                              ; $73aa: $00
	ld   b, b                                        ; $73ab: $40
	nop                                              ; $73ac: $00
	add  $00                                         ; $73ad: $c6 $00
	ret  nz                                          ; $73af: $c0

	nop                                              ; $73b0: $00
	adc  h                                           ; $73b1: $8c
	add  c                                           ; $73b2: $81
	nop                                              ; $73b3: $00
	db   $10                                         ; $73b4: $10
	jr   jr_096_73b7                                 ; $73b5: $18 $00

jr_096_73b7:
	jr   nc, jr_096_73b9                             ; $73b7: $30 $00

jr_096_73b9:
	rst  JumpTable                                         ; $73b9: $df
	nop                                              ; $73ba: $00
	ld   b, c                                        ; $73bb: $41
	nop                                              ; $73bc: $00
	ld   b, [hl]                                     ; $73bd: $46
	nop                                              ; $73be: $00
	ld   [$3800], sp                                 ; $73bf: $08 $00 $38
	nop                                              ; $73c2: $00
	ldh  a, [rP1]                                    ; $73c3: $f0 $00
	ret  z                                           ; $73c5: $c8

	add  c                                           ; $73c6: $81
	nop                                              ; $73c7: $00
	nop                                              ; $73c8: $00
	rst  JumpTable                                         ; $73c9: $df
	add  c                                           ; $73ca: $81
	nop                                              ; $73cb: $00
	ld   bc, $0070                                   ; $73cc: $01 $70 $00
	add  b                                           ; $73cf: $80
	inc  b                                           ; $73d0: $04
	nop                                              ; $73d1: $00
	ldh  [$81], a                                    ; $73d2: $e0 $81
	nop                                              ; $73d4: $00
	nop                                              ; $73d5: $00
	ret  nz                                          ; $73d6: $c0

	add  c                                           ; $73d7: $81
	nop                                              ; $73d8: $00
	nop                                              ; $73d9: $00
	add  b                                           ; $73da: $80
	adc  c                                           ; $73db: $89
	nop                                              ; $73dc: $00
	add  b                                           ; $73dd: $80
	jr   jr_096_7362                                 ; $73de: $18 $82

	nop                                              ; $73e0: $00
	add  d                                           ; $73e1: $82
	ld   bc, $0088                                   ; $73e2: $01 $88 $00
	add  b                                           ; $73e5: $80
	dec  b                                           ; $73e6: $05
	add  b                                           ; $73e7: $80
	ld   [bc], a                                     ; $73e8: $02
	add  d                                           ; $73e9: $82
	nop                                              ; $73ea: $00
	add  b                                           ; $73eb: $80
	jr   z, jr_096_736e                              ; $73ec: $28 $80

	ld   d, b                                        ; $73ee: $50
	add  b                                           ; $73ef: $80
	jr   z, jr_096_73f4                              ; $73f0: $28 $02

	dec  d                                           ; $73f2: $15
	dec  e                                           ; $73f3: $1d

jr_096_73f4:
	ld   [$0087], sp                                 ; $73f4: $08 $87 $00
	db   $10                                         ; $73f7: $10
	ld   bc, $0300                                   ; $73f8: $01 $00 $03
	nop                                              ; $73fb: $00
	rlca                                             ; $73fc: $07
	nop                                              ; $73fd: $00
	ld   a, [bc]                                     ; $73fe: $0a
	nop                                              ; $73ff: $00
	rrca                                             ; $7400: $0f
	nop                                              ; $7401: $00
	inc  bc                                          ; $7402: $03
	nop                                              ; $7403: $00
	inc  e                                           ; $7404: $1c
	nop                                              ; $7405: $00
	ld   h, b                                        ; $7406: $60
	nop                                              ; $7407: $00
	add  b                                           ; $7408: $80
	add  c                                           ; $7409: $81
	nop                                              ; $740a: $00
	ld   d, $13                                      ; $740b: $16 $13
	nop                                              ; $740d: $00
	db   $d3                                         ; $740e: $d3
	nop                                              ; $740f: $00
	ret  nz                                          ; $7410: $c0

	nop                                              ; $7411: $00
	ld   bc, $0300                                   ; $7412: $01 $00 $03
	nop                                              ; $7415: $00
	ld   c, $00                                      ; $7416: $0e $00
	inc  a                                           ; $7418: $3c
	ld   bc, $07f1                                   ; $7419: $01 $f1 $07
	rst  $20                                         ; $741c: $e7
	rrca                                             ; $741d: $0f
	ld   l, a                                        ; $741e: $6f
	ld   bc, $03c1                                   ; $741f: $01 $c1 $03
	add  a                                           ; $7422: $87
	add  b                                           ; $7423: $80
	rlca                                             ; $7424: $07
	ld   bc, $191f                                   ; $7425: $01 $1f $19
	add  b                                           ; $7428: $80
	ld   a, a                                        ; $7429: $7f
	ld   bc, $fcff                                   ; $742a: $01 $ff $fc
	add  c                                           ; $742d: $81
	rst  $38                                         ; $742e: $ff
	ld   de, $011f                                   ; $742f: $11 $1f $01
	inc  hl                                          ; $7432: $23
	inc  bc                                          ; $7433: $03
	ld   h, e                                        ; $7434: $63
	inc  bc                                          ; $7435: $03
	rst  $20                                         ; $7436: $e7
	rlca                                             ; $7437: $07
	call nz, $0b07                                   ; $7438: $c4 $07 $0b
	rrca                                             ; $743b: $0f
	sub  a                                           ; $743c: $97
	rra                                              ; $743d: $1f
	cpl                                              ; $743e: $2f
	ccf                                              ; $743f: $3f
	ldh  [rP1], a                                    ; $7440: $e0 $00
	add  b                                           ; $7442: $80
	add  b                                           ; $7443: $80
	adc  h                                           ; $7444: $8c
	nop                                              ; $7445: $00
	add  b                                           ; $7446: $80
	ld   bc, $0080                                   ; $7447: $01 $80 $00
	add  b                                           ; $744a: $80
	inc  bc                                          ; $744b: $03
	ld   [$0507], sp                                 ; $744c: $08 $07 $05
	ld   de, $0117                                   ; $744f: $11 $17 $01
	rrca                                             ; $7452: $0f
	dec  bc                                          ; $7453: $0b
	dec  b                                           ; $7454: $05
	rrca                                             ; $7455: $0f
	add  c                                           ; $7456: $81
	nop                                              ; $7457: $00
	inc  b                                           ; $7458: $04
	inc  e                                           ; $7459: $1c
	nop                                              ; $745a: $00
	ld   bc, $1200                                   ; $745b: $01 $00 $12
	add  c                                           ; $745e: $81
	nop                                              ; $745f: $00
	nop                                              ; $7460: $00
	inc  b                                           ; $7461: $04
	add  c                                           ; $7462: $81
	nop                                              ; $7463: $00
	ld   [de], a                                     ; $7464: $12
	db   $d3                                         ; $7465: $d3
	nop                                              ; $7466: $00
	ld   [hl], a                                     ; $7467: $77
	nop                                              ; $7468: $00
	db   $ed                                         ; $7469: $ed
	nop                                              ; $746a: $00
	ld   a, [de]                                     ; $746b: $1a
	nop                                              ; $746c: $00
	db   $f4                                         ; $746d: $f4
	nop                                              ; $746e: $00
	ld   [$a000], sp                                 ; $746f: $08 $00 $a0
	nop                                              ; $7472: $00
	inc  b                                           ; $7473: $04
	nop                                              ; $7474: $00
	inc  [hl]                                        ; $7475: $34
	rrca                                             ; $7476: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7477: $cf
	add  e                                           ; $7478: $83
	rra                                              ; $7479: $1f
	nop                                              ; $747a: $00
	ld   a, [de]                                     ; $747b: $1a
	add  b                                           ; $747c: $80
	rra                                              ; $747d: $1f
	dec  d                                           ; $747e: $15
	ccf                                              ; $747f: $3f
	scf                                              ; $7480: $37
	ccf                                              ; $7481: $3f
	dec  sp                                          ; $7482: $3b
	ccf                                              ; $7483: $3f
	ld   [hl], a                                     ; $7484: $77
	ld   a, a                                        ; $7485: $7f
	rra                                              ; $7486: $1f
	ccf                                              ; $7487: $3f
	call c, $791f                                    ; $7488: $dc $1f $79
	ccf                                              ; $748b: $3f
	rst  JumpTable                                         ; $748c: $df
	ld   a, a                                        ; $748d: $7f
	inc  de                                          ; $748e: $13
	ccf                                              ; $748f: $3f
	rst  ToBoot                                         ; $7490: $c7
	rra                                              ; $7491: $1f
	cp   $3f                                         ; $7492: $fe $3f
	pop  af                                          ; $7494: $f1
	adc  e                                           ; $7495: $8b
	nop                                              ; $7496: $00
	add  b                                           ; $7497: $80
	db   $10                                         ; $7498: $10
	add  [hl]                                        ; $7499: $86
	nop                                              ; $749a: $00
	add  b                                           ; $749b: $80
	inc  c                                           ; $749c: $0c
	adc  [hl]                                        ; $749d: $8e
	nop                                              ; $749e: $00
	ld   d, $03                                      ; $749f: $16 $03
	nop                                              ; $74a1: $00
	rlca                                             ; $74a2: $07
	nop                                              ; $74a3: $00
	rrca                                             ; $74a4: $0f
	nop                                              ; $74a5: $00
	ld   h, h                                        ; $74a6: $64
	jr   nz, @-$6e                                   ; $74a7: $20 $90

	ld   b, b                                        ; $74a9: $40
	ret  nz                                          ; $74aa: $c0

	nop                                              ; $74ab: $00
	jr   nz, jr_096_74ae                             ; $74ac: $20 $00

jr_096_74ae:
	add  d                                           ; $74ae: $82
	nop                                              ; $74af: $00
	adc  [hl]                                        ; $74b0: $8e
	nop                                              ; $74b1: $00
	sub  b                                           ; $74b2: $90
	nop                                              ; $74b3: $00
	inc  de                                          ; $74b4: $13

jr_096_74b5:
	nop                                              ; $74b5: $00
	rrca                                             ; $74b6: $0f
	add  a                                           ; $74b7: $87
	nop                                              ; $74b8: $00
	ld   [$0002], sp                                 ; $74b9: $08 $02 $00
	add  b                                           ; $74bc: $80
	nop                                              ; $74bd: $00
	sub  [hl]                                        ; $74be: $96
	nop                                              ; $74bf: $00
	dec  d                                           ; $74c0: $15
	inc  b                                           ; $74c1: $04
	dec  b                                           ; $74c2: $05
	add  c                                           ; $74c3: $81
	ld   [bc], a                                     ; $74c4: $02
	ld   a, [bc]                                     ; $74c5: $0a
	inc  bc                                          ; $74c6: $03
	nop                                              ; $74c7: $00
	add  b                                           ; $74c8: $80
	nop                                              ; $74c9: $00
	pop  bc                                          ; $74ca: $c1
	nop                                              ; $74cb: $00
	ld   l, b                                        ; $74cc: $68
	nop                                              ; $74cd: $00
	sbc  b                                           ; $74ce: $98
	nop                                              ; $74cf: $00
	ld   c, a                                        ; $74d0: $4f
	adc  c                                           ; $74d1: $89
	nop                                              ; $74d2: $00
	add  b                                           ; $74d3: $80
	ld   b, $80                                      ; $74d4: $06 $80
	nop                                              ; $74d6: $00
	ld   [bc], a                                     ; $74d7: $02
	rrca                                             ; $74d8: $0f
	ld   [bc], a                                     ; $74d9: $02
	ld   [de], a                                     ; $74da: $12
	add  c                                           ; $74db: $81
	inc  b                                           ; $74dc: $04
	ld   c, $01                                      ; $74dd: $0e $01
	ld   [$080a], sp                                 ; $74df: $08 $0a $08
	dec  de                                          ; $74e2: $1b
	nop                                              ; $74e3: $00
	ld   b, $00                                      ; $74e4: $06 $00
	inc  e                                           ; $74e6: $1c
	ld   bc, $00e0                                   ; $74e7: $01 $e0 $00
	ld   [$0700], sp                                 ; $74ea: $08 $00 $07
	add  l                                           ; $74ed: $85
	nop                                              ; $74ee: $00
	inc  d                                           ; $74ef: $14
	ld   bc, $c080                                   ; $74f0: $01 $80 $c0
	add  b                                           ; $74f3: $80
	and  h                                           ; $74f4: $a4
	nop                                              ; $74f5: $00
	xor  h                                           ; $74f6: $ac
	nop                                              ; $74f7: $00
	ld   e, e                                        ; $74f8: $5b
	nop                                              ; $74f9: $00
	or   h                                           ; $74fa: $b4
	nop                                              ; $74fb: $00
	ld   l, d                                        ; $74fc: $6a
	nop                                              ; $74fd: $00
	ld   d, h                                        ; $74fe: $54
	nop                                              ; $74ff: $00
	cp   l                                           ; $7500: $bd
	nop                                              ; $7501: $00
	sbc  $00                                         ; $7502: $de $00
	ld   l, a                                        ; $7504: $6f
	add  c                                           ; $7505: $81
	nop                                              ; $7506: $00
	inc  c                                           ; $7507: $0c
	jr   nz, jr_096_750a                             ; $7508: $20 $00

jr_096_750a:
	stop                                             ; $750a: $10 $00
	ld   c, b                                        ; $750c: $48
	nop                                              ; $750d: $00
	or   h                                           ; $750e: $b4
	nop                                              ; $750f: $00
	inc  a                                           ; $7510: $3c
	nop                                              ; $7511: $00
	add  hl, sp                                      ; $7512: $39
	nop                                              ; $7513: $00
	jp   nz, Jump_096_4081                           ; $7514: $c2 $81 $40

	inc  c                                           ; $7517: $0c
	db   $10                                         ; $7518: $10
	jr   nz, jr_096_757b                             ; $7519: $20 $60

	jr   nz, @+$62                                   ; $751b: $20 $60

	nop                                              ; $751d: $00
	db   $10                                         ; $751e: $10
	add  b                                           ; $751f: $80
	ld   [hl], b                                     ; $7520: $70
	ld   b, b                                        ; $7521: $40
	xor  b                                           ; $7522: $a8
	jr   z, jr_096_74b5                              ; $7523: $28 $90

	adc  c                                           ; $7525: $89
	nop                                              ; $7526: $00
	add  b                                           ; $7527: $80
	inc  b                                           ; $7528: $04
	add  b                                           ; $7529: $80
	ld   b, $06                                      ; $752a: $06 $06
	rrca                                             ; $752c: $0f
	inc  bc                                          ; $752d: $03
	ld   c, $00                                      ; $752e: $0e $00
	inc  bc                                          ; $7530: $03
	nop                                              ; $7531: $00
	ld   bc, $0087                                   ; $7532: $01 $87 $00
	nop                                              ; $7535: $00
	inc  l                                           ; $7536: $2c
	add  c                                           ; $7537: $81
	nop                                              ; $7538: $00
	ld   b, $c0                                      ; $7539: $06 $c0
	nop                                              ; $753b: $00
	ldh  a, [rP1]                                    ; $753c: $f0 $00
	ld   [de], a                                     ; $753e: $12
	nop                                              ; $753f: $00
	db   $10                                         ; $7540: $10
	add  c                                           ; $7541: $81
	nop                                              ; $7542: $00
	ld   a, [bc]                                     ; $7543: $0a
	inc  sp                                          ; $7544: $33
	nop                                              ; $7545: $00
	dec  a                                           ; $7546: $3d
	nop                                              ; $7547: $00
	stop                                             ; $7548: $10 $00
	ld   de, $1e00                                   ; $754a: $11 $00 $1e
	nop                                              ; $754d: $00
	rrca                                             ; $754e: $0f
	add  c                                           ; $754f: $81
	nop                                              ; $7550: $00
	dec  b                                           ; $7551: $05
	add  e                                           ; $7552: $83
	nop                                              ; $7553: $00
	inc  bc                                          ; $7554: $03
	nop                                              ; $7555: $00
	or   [hl]                                        ; $7556: $b6
	ld   [bc], a                                     ; $7557: $02
	add  c                                           ; $7558: $81
	ld   bc, $000d                                   ; $7559: $01 $0d $00
	inc  de                                          ; $755c: $13
	nop                                              ; $755d: $00

jr_096_755e:
	ld   c, d                                        ; $755e: $4a
	nop                                              ; $755f: $00
	sub  h                                           ; $7560: $94
	nop                                              ; $7561: $00
	adc  b                                           ; $7562: $88
	nop                                              ; $7563: $00
	and  b                                           ; $7564: $a0
	nop                                              ; $7565: $00
	jr   nc, jr_096_7568                             ; $7566: $30 $00

jr_096_7568:
	ld   h, b                                        ; $7568: $60
	add  c                                           ; $7569: $81
	nop                                              ; $756a: $00
	nop                                              ; $756b: $00
	add  b                                           ; $756c: $80
	sub  e                                           ; $756d: $93
	nop                                              ; $756e: $00
	add  b                                           ; $756f: $80
	ld   b, b                                        ; $7570: $40
	adc  [hl]                                        ; $7571: $8e
	nop                                              ; $7572: $00
	add  b                                           ; $7573: $80
	jr   jr_096_7578                                 ; $7574: $18 $02

	inc  b                                           ; $7576: $04
	dec  b                                           ; $7577: $05

jr_096_7578:
	ld   bc, $0081                                   ; $7578: $01 $81 $00

jr_096_757b:
	add  b                                           ; $757b: $80
	ld   bc, $0280                                   ; $757c: $01 $80 $02
	inc  bc                                          ; $757f: $03
	ld   bc, $0709                                   ; $7580: $01 $09 $07
	rrca                                             ; $7583: $0f
	add  b                                           ; $7584: $80
	inc  bc                                          ; $7585: $03
	adc  b                                           ; $7586: $88
	nop                                              ; $7587: $00
	ld   b, $01                                      ; $7588: $06 $01
	nop                                              ; $758a: $00
	rrca                                             ; $758b: $0f
	nop                                              ; $758c: $00
	rrca                                             ; $758d: $0f
	nop                                              ; $758e: $00
	ld   bc, $0081                                   ; $758f: $01 $81 $00
	cpl                                              ; $7592: $2f
	inc  bc                                          ; $7593: $03
	nop                                              ; $7594: $00
	rrca                                             ; $7595: $0f
	nop                                              ; $7596: $00
	ccf                                              ; $7597: $3f
	nop                                              ; $7598: $00
	db   $fc                                         ; $7599: $fc
	nop                                              ; $759a: $00
	ldh  a, [rP1]                                    ; $759b: $f0 $00
	ret  nz                                          ; $759d: $c0

	nop                                              ; $759e: $00
	and  d                                           ; $759f: $a2
	nop                                              ; $75a0: $00
	ldh  [rP1], a                                    ; $75a1: $e0 $00
	add  $00                                         ; $75a3: $c6 $00
	add  b                                           ; $75a5: $80
	nop                                              ; $75a6: $00
	inc  c                                           ; $75a7: $0c
	nop                                              ; $75a8: $00
	jr   jr_096_75ab                                 ; $75a9: $18 $00

jr_096_75ab:
	jr   nc, jr_096_75ad                             ; $75ab: $30 $00

jr_096_75ad:
	ld   h, b                                        ; $75ad: $60
	nop                                              ; $75ae: $00
	cp   a                                           ; $75af: $bf
	nop                                              ; $75b0: $00
	ld   b, c                                        ; $75b1: $41
	nop                                              ; $75b2: $00
	ld   b, [hl]                                     ; $75b3: $46
	nop                                              ; $75b4: $00
	ld   [$3800], sp                                 ; $75b5: $08 $00 $38
	nop                                              ; $75b8: $00
	ld   hl, sp+$00                                  ; $75b9: $f8 $00
	ret  nz                                          ; $75bb: $c0

	nop                                              ; $75bc: $00
	ld   de, $cf01                                   ; $75bd: $11 $01 $cf
	nop                                              ; $75c0: $00
	ld   [hl], c                                     ; $75c1: $71
	ld   bc, $0080                                   ; $75c2: $01 $80 $00
	nop                                              ; $75c5: $00
	ldh  [$81], a                                    ; $75c6: $e0 $81
	nop                                              ; $75c8: $00
	nop                                              ; $75c9: $00
	ret  nz                                          ; $75ca: $c0

	add  e                                           ; $75cb: $83
	nop                                              ; $75cc: $00
	nop                                              ; $75cd: $00
	add  b                                           ; $75ce: $80
	add  e                                           ; $75cf: $83
	nop                                              ; $75d0: $00
	add  d                                           ; $75d1: $82
	ld   [bc], a                                     ; $75d2: $02
	add  h                                           ; $75d3: $84
	nop                                              ; $75d4: $00
	add  b                                           ; $75d5: $80
	dec  b                                           ; $75d6: $05
	add  b                                           ; $75d7: $80
	ld   [bc], a                                     ; $75d8: $02
	add  d                                           ; $75d9: $82
	nop                                              ; $75da: $00
	add  b                                           ; $75db: $80
	jr   nz, jr_096_755e                             ; $75dc: $20 $80

	ld   d, b                                        ; $75de: $50
	add  b                                           ; $75df: $80
	jr   z, jr_096_75e4                              ; $75e0: $28 $02

	dec  d                                           ; $75e2: $15
	dec  e                                           ; $75e3: $1d

jr_096_75e4:
	ld   [$0081], sp                                 ; $75e4: $08 $81 $00
	ld   c, $03                                      ; $75e7: $0e $03
	nop                                              ; $75e9: $00
	rrca                                             ; $75ea: $0f
	nop                                              ; $75eb: $00
	rra                                              ; $75ec: $1f
	nop                                              ; $75ed: $00
	inc  a                                           ; $75ee: $3c
	nop                                              ; $75ef: $00
	ld   [hl], b                                     ; $75f0: $70
	nop                                              ; $75f1: $00
	ld   h, e                                        ; $75f2: $63
	nop                                              ; $75f3: $00
	inc  hl                                          ; $75f4: $23
	nop                                              ; $75f5: $00
	ldh  [$85], a                                    ; $75f6: $e0 $85
	nop                                              ; $75f8: $00
	dec  b                                           ; $75f9: $05
	inc  bc                                          ; $75fa: $03
	nop                                              ; $75fb: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75fc: $cf
	nop                                              ; $75fd: $00
	rst  $38                                         ; $75fe: $ff
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
	ld   [bc], a                                     ; $760c: $02
	ld   [bc], a                                     ; $760d: $02
	ld   [bc], a                                     ; $760e: $02
	ld   [bc], a                                     ; $760f: $02
	ld   [bc], a                                     ; $7610: $02
	ld   [bc], a                                     ; $7611: $02
	nop                                              ; $7612: $00
	nop                                              ; $7613: $00
	nop                                              ; $7614: $00
	nop                                              ; $7615: $00
	nop                                              ; $7616: $00
	nop                                              ; $7617: $00
	nop                                              ; $7618: $00
	nop                                              ; $7619: $00
	ld   bc, $0101                                   ; $761a: $01 $01 $01
	ld   bc, $0101                                   ; $761d: $01 $01 $01
	ld   [bc], a                                     ; $7620: $02
	ld   [bc], a                                     ; $7621: $02
	ld   [bc], a                                     ; $7622: $02
	ld   [bc], a                                     ; $7623: $02
	ld   [bc], a                                     ; $7624: $02
	ld   [bc], a                                     ; $7625: $02
	ld   [bc], a                                     ; $7626: $02
	nop                                              ; $7627: $00
	nop                                              ; $7628: $00
	nop                                              ; $7629: $00
	nop                                              ; $762a: $00
	nop                                              ; $762b: $00
	nop                                              ; $762c: $00
	nop                                              ; $762d: $00
	nop                                              ; $762e: $00
	ld   bc, $0101                                   ; $762f: $01 $01 $01
	ld   bc, $0201                                   ; $7632: $01 $01 $02
	ld   [bc], a                                     ; $7635: $02
	ld   [bc], a                                     ; $7636: $02
	ld   [bc], a                                     ; $7637: $02
	ld   [bc], a                                     ; $7638: $02
	ld   [bc], a                                     ; $7639: $02
	ld   [bc], a                                     ; $763a: $02
	ld   [bc], a                                     ; $763b: $02
	nop                                              ; $763c: $00
	nop                                              ; $763d: $00
	nop                                              ; $763e: $00
	nop                                              ; $763f: $00
	nop                                              ; $7640: $00
	nop                                              ; $7641: $00
	nop                                              ; $7642: $00
	ld   bc, $0101                                   ; $7643: $01 $01 $01
	ld   bc, $0201                                   ; $7646: $01 $01 $02
	ld   [bc], a                                     ; $7649: $02
	ld   [bc], a                                     ; $764a: $02
	ld   [bc], a                                     ; $764b: $02
	ld   [bc], a                                     ; $764c: $02
	ld   [bc], a                                     ; $764d: $02
	ld   [bc], a                                     ; $764e: $02
	ld   [bc], a                                     ; $764f: $02
	nop                                              ; $7650: $00
	nop                                              ; $7651: $00
	nop                                              ; $7652: $00
	nop                                              ; $7653: $00
	nop                                              ; $7654: $00
	nop                                              ; $7655: $00
	nop                                              ; $7656: $00
	ld   bc, $0101                                   ; $7657: $01 $01 $01
	ld   bc, $0101                                   ; $765a: $01 $01 $01
	ld   [bc], a                                     ; $765d: $02
	ld   [bc], a                                     ; $765e: $02
	ld   [bc], a                                     ; $765f: $02
	ld   [bc], a                                     ; $7660: $02
	ld   [bc], a                                     ; $7661: $02
	ld   [bc], a                                     ; $7662: $02
	ld   [bc], a                                     ; $7663: $02
	nop                                              ; $7664: $00
	nop                                              ; $7665: $00
	nop                                              ; $7666: $00
	inc  b                                           ; $7667: $04
	inc  b                                           ; $7668: $04
	inc  b                                           ; $7669: $04
	inc  b                                           ; $766a: $04
	inc  b                                           ; $766b: $04
	inc  bc                                          ; $766c: $03
	inc  bc                                          ; $766d: $03
	inc  bc                                          ; $766e: $03
	inc  bc                                          ; $766f: $03
	inc  bc                                          ; $7670: $03
	ld   [bc], a                                     ; $7671: $02
	ld   [bc], a                                     ; $7672: $02
	ld   [bc], a                                     ; $7673: $02
	ld   [bc], a                                     ; $7674: $02
	ld   [bc], a                                     ; $7675: $02
	ld   [bc], a                                     ; $7676: $02
	ld   [bc], a                                     ; $7677: $02
	nop                                              ; $7678: $00
	nop                                              ; $7679: $00
	inc  b                                           ; $767a: $04
	inc  b                                           ; $767b: $04
	inc  b                                           ; $767c: $04
	inc  b                                           ; $767d: $04
	inc  b                                           ; $767e: $04
	inc  b                                           ; $767f: $04
	inc  bc                                          ; $7680: $03
	inc  bc                                          ; $7681: $03
	inc  bc                                          ; $7682: $03
	inc  bc                                          ; $7683: $03
	inc  bc                                          ; $7684: $03
	inc  bc                                          ; $7685: $03
	ld   [bc], a                                     ; $7686: $02
	ld   [bc], a                                     ; $7687: $02
	ld   [bc], a                                     ; $7688: $02
	ld   [bc], a                                     ; $7689: $02
	ld   [bc], a                                     ; $768a: $02
	nop                                              ; $768b: $00
	nop                                              ; $768c: $00
	inc  b                                           ; $768d: $04
	inc  b                                           ; $768e: $04
	inc  b                                           ; $768f: $04
	inc  b                                           ; $7690: $04
	inc  b                                           ; $7691: $04
	inc  b                                           ; $7692: $04
	inc  b                                           ; $7693: $04
	inc  bc                                          ; $7694: $03
	inc  bc                                          ; $7695: $03
	inc  hl                                          ; $7696: $23
	inc  bc                                          ; $7697: $03
	inc  bc                                          ; $7698: $03
	nop                                              ; $7699: $00
	ld   [bc], a                                     ; $769a: $02
	ld   [bc], a                                     ; $769b: $02
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
	dec  c                                           ; $7768: $0d
	dec  c                                           ; $7769: $0d
	dec  c                                           ; $776a: $0d
	dec  c                                           ; $776b: $0d
	dec  c                                           ; $776c: $0d
	dec  c                                           ; $776d: $0d
	dec  c                                           ; $776e: $0d
	dec  c                                           ; $776f: $0d
	rrca                                             ; $7770: $0f
	dec  c                                           ; $7771: $0d
	rrca                                             ; $7772: $0f
	rrca                                             ; $7773: $0f
	rlca                                             ; $7774: $07
	rlca                                             ; $7775: $07
	rlca                                             ; $7776: $07
	rlca                                             ; $7777: $07
	rlca                                             ; $7778: $07
	rlca                                             ; $7779: $07
	ld   b, $06                                      ; $777a: $06 $06
	dec  c                                           ; $777c: $0d
	dec  c                                           ; $777d: $0d
	dec  c                                           ; $777e: $0d
	dec  c                                           ; $777f: $0d
	dec  c                                           ; $7780: $0d
	dec  c                                           ; $7781: $0d
	dec  c                                           ; $7782: $0d
	dec  c                                           ; $7783: $0d
	dec  c                                           ; $7784: $0d
	rrca                                             ; $7785: $0f
	rrca                                             ; $7786: $0f
	rrca                                             ; $7787: $0f
	rlca                                             ; $7788: $07
	rlca                                             ; $7789: $07
	rlca                                             ; $778a: $07
	ld   b, $06                                      ; $778b: $06 $06
	ld   b, $06                                      ; $778d: $06 $06
	ld   b, $0d                                      ; $778f: $06 $0d
	dec  c                                           ; $7791: $0d
	dec  c                                           ; $7792: $0d
	dec  c                                           ; $7793: $0d
	dec  c                                           ; $7794: $0d
	dec  c                                           ; $7795: $0d
	dec  c                                           ; $7796: $0d
	dec  c                                           ; $7797: $0d
	rrca                                             ; $7798: $0f
	rrca                                             ; $7799: $0f
	rrca                                             ; $779a: $0f
	rrca                                             ; $779b: $0f
	rlca                                             ; $779c: $07
	rlca                                             ; $779d: $07
	rlca                                             ; $779e: $07
	rlca                                             ; $779f: $07
	ld   b, $06                                      ; $77a0: $06 $06
	ld   b, $06                                      ; $77a2: $06 $06
	dec  c                                           ; $77a4: $0d
	dec  c                                           ; $77a5: $0d
	dec  c                                           ; $77a6: $0d
	dec  c                                           ; $77a7: $0d
	dec  c                                           ; $77a8: $0d
	dec  c                                           ; $77a9: $0d
	dec  c                                           ; $77aa: $0d
	rrca                                             ; $77ab: $0f
	rrca                                             ; $77ac: $0f
	rrca                                             ; $77ad: $0f
	rrca                                             ; $77ae: $0f
	rrca                                             ; $77af: $0f
	rlca                                             ; $77b0: $07
	rlca                                             ; $77b1: $07
	rlca                                             ; $77b2: $07
	rlca                                             ; $77b3: $07
	ld   b, $06                                      ; $77b4: $06 $06
	ld   b, $06                                      ; $77b6: $06 $06
	dec  c                                           ; $77b8: $0d
	dec  c                                           ; $77b9: $0d
	dec  c                                           ; $77ba: $0d
	dec  c                                           ; $77bb: $0d
	dec  c                                           ; $77bc: $0d
	dec  c                                           ; $77bd: $0d
	dec  c                                           ; $77be: $0d
	dec  c                                           ; $77bf: $0d
	dec  c                                           ; $77c0: $0d
	rrca                                             ; $77c1: $0f
	rrca                                             ; $77c2: $0f
	rrca                                             ; $77c3: $0f
	rlca                                             ; $77c4: $07
	rlca                                             ; $77c5: $07
	rlca                                             ; $77c6: $07
	rlca                                             ; $77c7: $07
	ld   b, $06                                      ; $77c8: $06 $06
	ld   b, $06                                      ; $77ca: $06 $06
	dec  c                                           ; $77cc: $0d
	dec  c                                           ; $77cd: $0d
	dec  c                                           ; $77ce: $0d
	dec  c                                           ; $77cf: $0d
	dec  c                                           ; $77d0: $0d
	dec  c                                           ; $77d1: $0d
	dec  c                                           ; $77d2: $0d
	dec  c                                           ; $77d3: $0d
	rrca                                             ; $77d4: $0f
	ld   c, a                                        ; $77d5: $4f
	rrca                                             ; $77d6: $0f
	rrca                                             ; $77d7: $0f
	rlca                                             ; $77d8: $07
	rlca                                             ; $77d9: $07
	rlca                                             ; $77da: $07
	rlca                                             ; $77db: $07
	ld   b, $06                                      ; $77dc: $06 $06
	ld   b, $06                                      ; $77de: $06 $06
	dec  c                                           ; $77e0: $0d
	dec  c                                           ; $77e1: $0d
	dec  c                                           ; $77e2: $0d
	dec  c                                           ; $77e3: $0d
	dec  c                                           ; $77e4: $0d
	dec  c                                           ; $77e5: $0d
	dec  c                                           ; $77e6: $0d
	dec  c                                           ; $77e7: $0d
	rrca                                             ; $77e8: $0f
	rrca                                             ; $77e9: $0f
	rrca                                             ; $77ea: $0f
	rrca                                             ; $77eb: $0f
	rlca                                             ; $77ec: $07
	rlca                                             ; $77ed: $07
	rlca                                             ; $77ee: $07
	rlca                                             ; $77ef: $07
	rlca                                             ; $77f0: $07
	rlca                                             ; $77f1: $07
	ld   b, $06                                      ; $77f2: $06 $06
	dec  c                                           ; $77f4: $0d
	dec  c                                           ; $77f5: $0d
	dec  c                                           ; $77f6: $0d
	dec  c                                           ; $77f7: $0d
	dec  c                                           ; $77f8: $0d
	dec  c                                           ; $77f9: $0d
	dec  c                                           ; $77fa: $0d
	dec  c                                           ; $77fb: $0d
	rrca                                             ; $77fc: $0f
	dec  c                                           ; $77fd: $0d
	rrca                                             ; $77fe: $0f
	rrca                                             ; $77ff: $0f
	rlca                                             ; $7800: $07
	rlca                                             ; $7801: $07
	rlca                                             ; $7802: $07
	ld   b, $06                                      ; $7803: $06 $06
	ld   b, $06                                      ; $7805: $06 $06
	ld   b, $0d                                      ; $7807: $06 $0d
	dec  c                                           ; $7809: $0d
	dec  c                                           ; $780a: $0d
	dec  c                                           ; $780b: $0d
	dec  c                                           ; $780c: $0d
	dec  c                                           ; $780d: $0d
	dec  c                                           ; $780e: $0d
	dec  c                                           ; $780f: $0d
	rrca                                             ; $7810: $0f
	rrca                                             ; $7811: $0f
	rrca                                             ; $7812: $0f
	rrca                                             ; $7813: $0f
	rlca                                             ; $7814: $07
	rlca                                             ; $7815: $07
	rlca                                             ; $7816: $07
	rlca                                             ; $7817: $07
	ld   b, $06                                      ; $7818: $06 $06
	ld   b, $06                                      ; $781a: $06 $06
	dec  c                                           ; $781c: $0d
	dec  c                                           ; $781d: $0d
	dec  c                                           ; $781e: $0d
	dec  c                                           ; $781f: $0d
	dec  c                                           ; $7820: $0d
	dec  c                                           ; $7821: $0d
	dec  c                                           ; $7822: $0d
	rrca                                             ; $7823: $0f
	rrca                                             ; $7824: $0f
	dec  c                                           ; $7825: $0d
	rrca                                             ; $7826: $0f
	rrca                                             ; $7827: $0f
	rlca                                             ; $7828: $07
	rlca                                             ; $7829: $07
	rlca                                             ; $782a: $07
	rlca                                             ; $782b: $07
	ld   b, $06                                      ; $782c: $06 $06
	ld   b, $06                                      ; $782e: $06 $06
	dec  c                                           ; $7830: $0d
	dec  c                                           ; $7831: $0d
	dec  c                                           ; $7832: $0d
	dec  c                                           ; $7833: $0d
	dec  c                                           ; $7834: $0d
	dec  c                                           ; $7835: $0d
	dec  c                                           ; $7836: $0d
	dec  c                                           ; $7837: $0d
	rrca                                             ; $7838: $0f
	rrca                                             ; $7839: $0f
	rrca                                             ; $783a: $0f
	rrca                                             ; $783b: $0f
	rlca                                             ; $783c: $07
	rlca                                             ; $783d: $07
	rlca                                             ; $783e: $07
	rlca                                             ; $783f: $07
	ld   b, $06                                      ; $7840: $06 $06
	ld   b, $06                                      ; $7842: $06 $06
	dec  c                                           ; $7844: $0d
	dec  c                                           ; $7845: $0d
	dec  c                                           ; $7846: $0d
	dec  c                                           ; $7847: $0d
	dec  c                                           ; $7848: $0d
	dec  c                                           ; $7849: $0d
	dec  c                                           ; $784a: $0d
	dec  c                                           ; $784b: $0d
	rrca                                             ; $784c: $0f
	rrca                                             ; $784d: $0f
	rrca                                             ; $784e: $0f
	rrca                                             ; $784f: $0f
	rlca                                             ; $7850: $07
	rlca                                             ; $7851: $07
	rlca                                             ; $7852: $07
	rlca                                             ; $7853: $07
	ld   b, $06                                      ; $7854: $06 $06
	ld   b, $06                                      ; $7856: $06 $06
	dec  c                                           ; $7858: $0d
	dec  c                                           ; $7859: $0d
	dec  c                                           ; $785a: $0d
	dec  c                                           ; $785b: $0d
	dec  c                                           ; $785c: $0d
	dec  c                                           ; $785d: $0d
	dec  c                                           ; $785e: $0d
	dec  c                                           ; $785f: $0d
	cpl                                              ; $7860: $2f
	rrca                                             ; $7861: $0f
	rrca                                             ; $7862: $0f
	rrca                                             ; $7863: $0f
	rlca                                             ; $7864: $07
	rlca                                             ; $7865: $07
	rlca                                             ; $7866: $07
	rlca                                             ; $7867: $07
	rlca                                             ; $7868: $07
	rlca                                             ; $7869: $07
	ld   b, $06                                      ; $786a: $06 $06
	dec  c                                           ; $786c: $0d
	dec  c                                           ; $786d: $0d
	dec  c                                           ; $786e: $0d
	dec  c                                           ; $786f: $0d
	dec  c                                           ; $7870: $0d
	dec  c                                           ; $7871: $0d
	dec  c                                           ; $7872: $0d
	dec  c                                           ; $7873: $0d
	rrca                                             ; $7874: $0f
	dec  c                                           ; $7875: $0d
	rrca                                             ; $7876: $0f
	rrca                                             ; $7877: $0f
	rlca                                             ; $7878: $07
	rlca                                             ; $7879: $07
	rlca                                             ; $787a: $07
	ld   b, $06                                      ; $787b: $06 $06
	ld   b, $06                                      ; $787d: $06 $06
	ld   b, $0d                                      ; $787f: $06 $0d
	dec  c                                           ; $7881: $0d
	dec  c                                           ; $7882: $0d
	dec  c                                           ; $7883: $0d
	dec  c                                           ; $7884: $0d
	dec  c                                           ; $7885: $0d
	dec  c                                           ; $7886: $0d
	dec  c                                           ; $7887: $0d
	rrca                                             ; $7888: $0f
	rrca                                             ; $7889: $0f
	rrca                                             ; $788a: $0f
	rrca                                             ; $788b: $0f
	rlca                                             ; $788c: $07
	rlca                                             ; $788d: $07
	rlca                                             ; $788e: $07
	rlca                                             ; $788f: $07
	ld   b, $06                                      ; $7890: $06 $06
	ld   b, $06                                      ; $7892: $06 $06
	dec  c                                           ; $7894: $0d
	dec  c                                           ; $7895: $0d
	dec  c                                           ; $7896: $0d
	dec  c                                           ; $7897: $0d
	dec  c                                           ; $7898: $0d
	dec  c                                           ; $7899: $0d
	dec  c                                           ; $789a: $0d
	dec  c                                           ; $789b: $0d
	rrca                                             ; $789c: $0f
	dec  c                                           ; $789d: $0d
	rrca                                             ; $789e: $0f
	rrca                                             ; $789f: $0f
	rlca                                             ; $78a0: $07
	rlca                                             ; $78a1: $07
	rlca                                             ; $78a2: $07
	rlca                                             ; $78a3: $07
	ld   b, $06                                      ; $78a4: $06 $06
	ld   b, $06                                      ; $78a6: $06 $06
	dec  c                                           ; $78a8: $0d
	dec  c                                           ; $78a9: $0d
	dec  c                                           ; $78aa: $0d
	dec  c                                           ; $78ab: $0d
	dec  c                                           ; $78ac: $0d
	dec  c                                           ; $78ad: $0d
	dec  c                                           ; $78ae: $0d
	dec  c                                           ; $78af: $0d
	dec  c                                           ; $78b0: $0d
	rrca                                             ; $78b1: $0f
	rrca                                             ; $78b2: $0f
	rrca                                             ; $78b3: $0f
	rlca                                             ; $78b4: $07
	rlca                                             ; $78b5: $07
	rlca                                             ; $78b6: $07
	rlca                                             ; $78b7: $07
	ld   b, $06                                      ; $78b8: $06 $06
	ld   b, $06                                      ; $78ba: $06 $06
	dec  c                                           ; $78bc: $0d
	dec  c                                           ; $78bd: $0d
	dec  c                                           ; $78be: $0d
	dec  c                                           ; $78bf: $0d
	dec  c                                           ; $78c0: $0d
	dec  c                                           ; $78c1: $0d
	dec  c                                           ; $78c2: $0d
	dec  c                                           ; $78c3: $0d
	dec  c                                           ; $78c4: $0d
	rrca                                             ; $78c5: $0f
	rrca                                             ; $78c6: $0f
	rrca                                             ; $78c7: $0f
	rlca                                             ; $78c8: $07
	rlca                                             ; $78c9: $07
	rlca                                             ; $78ca: $07
	rlca                                             ; $78cb: $07
	ld   b, $06                                      ; $78cc: $06 $06
	ld   b, $06                                      ; $78ce: $06 $06
	dec  c                                           ; $78d0: $0d
	dec  c                                           ; $78d1: $0d
	dec  c                                           ; $78d2: $0d
	dec  c                                           ; $78d3: $0d
	dec  c                                           ; $78d4: $0d
	dec  c                                           ; $78d5: $0d
	dec  c                                           ; $78d6: $0d
	dec  c                                           ; $78d7: $0d
	rrca                                             ; $78d8: $0f
	dec  c                                           ; $78d9: $0d
	rrca                                             ; $78da: $0f
	rrca                                             ; $78db: $0f
	rlca                                             ; $78dc: $07
	rlca                                             ; $78dd: $07
	rlca                                             ; $78de: $07
	rlca                                             ; $78df: $07
	rlca                                             ; $78e0: $07
	rlca                                             ; $78e1: $07
	ld   b, $06                                      ; $78e2: $06 $06
	dec  c                                           ; $78e4: $0d
	dec  c                                           ; $78e5: $0d
	dec  c                                           ; $78e6: $0d
	dec  c                                           ; $78e7: $0d
	dec  c                                           ; $78e8: $0d
	dec  c                                           ; $78e9: $0d
	dec  c                                           ; $78ea: $0d
	dec  c                                           ; $78eb: $0d
	dec  c                                           ; $78ec: $0d
	ld   c, a                                        ; $78ed: $4f
	rrca                                             ; $78ee: $0f
	rrca                                             ; $78ef: $0f
	rlca                                             ; $78f0: $07
	rlca                                             ; $78f1: $07
	rlca                                             ; $78f2: $07
	ld   b, $06                                      ; $78f3: $06 $06
	ld   b, $06                                      ; $78f5: $06 $06
	ld   b, $0d                                      ; $78f7: $06 $0d
	dec  c                                           ; $78f9: $0d
	dec  c                                           ; $78fa: $0d
	dec  c                                           ; $78fb: $0d
	dec  c                                           ; $78fc: $0d
	dec  c                                           ; $78fd: $0d
	dec  c                                           ; $78fe: $0d
	dec  c                                           ; $78ff: $0d
	rrca                                             ; $7900: $0f
	rrca                                             ; $7901: $0f
	rrca                                             ; $7902: $0f
	rrca                                             ; $7903: $0f
	rlca                                             ; $7904: $07
	rlca                                             ; $7905: $07
	rlca                                             ; $7906: $07
	rlca                                             ; $7907: $07
	ld   b, $06                                      ; $7908: $06 $06
	ld   b, $06                                      ; $790a: $06 $06
	dec  c                                           ; $790c: $0d
	dec  c                                           ; $790d: $0d
	dec  c                                           ; $790e: $0d
	dec  c                                           ; $790f: $0d
	dec  c                                           ; $7910: $0d
	dec  c                                           ; $7911: $0d
	dec  c                                           ; $7912: $0d
	rrca                                             ; $7913: $0f
	rrca                                             ; $7914: $0f
	ld   c, a                                        ; $7915: $4f
	rrca                                             ; $7916: $0f
	rrca                                             ; $7917: $0f
	rlca                                             ; $7918: $07
	rlca                                             ; $7919: $07
	rlca                                             ; $791a: $07
	rlca                                             ; $791b: $07
	ld   b, $06                                      ; $791c: $06 $06
	ld   b, $06                                      ; $791e: $06 $06
	dec  c                                           ; $7920: $0d
	dec  c                                           ; $7921: $0d
	dec  c                                           ; $7922: $0d
	dec  c                                           ; $7923: $0d
	dec  c                                           ; $7924: $0d
	dec  c                                           ; $7925: $0d
	dec  c                                           ; $7926: $0d
	dec  c                                           ; $7927: $0d
	dec  c                                           ; $7928: $0d
	rrca                                             ; $7929: $0f
	rrca                                             ; $792a: $0f
	rrca                                             ; $792b: $0f
	rlca                                             ; $792c: $07
	rlca                                             ; $792d: $07
	rlca                                             ; $792e: $07
	rlca                                             ; $792f: $07
	ld   b, $06                                      ; $7930: $06 $06
	ld   b, $06                                      ; $7932: $06 $06
	dec  c                                           ; $7934: $0d
	dec  c                                           ; $7935: $0d
	dec  c                                           ; $7936: $0d
	dec  c                                           ; $7937: $0d
	dec  c                                           ; $7938: $0d
	dec  c                                           ; $7939: $0d
	dec  c                                           ; $793a: $0d
	dec  c                                           ; $793b: $0d
	rrca                                             ; $793c: $0f
	rrca                                             ; $793d: $0f
	rrca                                             ; $793e: $0f
	rrca                                             ; $793f: $0f
	rlca                                             ; $7940: $07
	rlca                                             ; $7941: $07
	rlca                                             ; $7942: $07
	rlca                                             ; $7943: $07
	ld   b, $06                                      ; $7944: $06 $06
	ld   b, $06                                      ; $7946: $06 $06
	add  b                                           ; $7948: $80
	add  b                                           ; $7949: $80
	add  b                                           ; $794a: $80
	add  b                                           ; $794b: $80
	add  b                                           ; $794c: $80
	add  b                                           ; $794d: $80
	add  b                                           ; $794e: $80
	add  b                                           ; $794f: $80
	add  b                                           ; $7950: $80
	add  b                                           ; $7951: $80
	add  b                                           ; $7952: $80
	add  b                                           ; $7953: $80
	add  c                                           ; $7954: $81

jr_096_7955:
	add  d                                           ; $7955: $82
	add  e                                           ; $7956: $83
	add  h                                           ; $7957: $84
	pop  hl                                          ; $7958: $e1
	ldh  [c], a                                      ; $7959: $e2
	add  b                                           ; $795a: $80
	add  b                                           ; $795b: $80
	add  b                                           ; $795c: $80
	add  l                                           ; $795d: $85
	add  [hl]                                        ; $795e: $86
	add  b                                           ; $795f: $80
	add  b                                           ; $7960: $80
	add  b                                           ; $7961: $80
	add  b                                           ; $7962: $80
	add  a                                           ; $7963: $87
	adc  b                                           ; $7964: $88
	add  b                                           ; $7965: $80
	add  b                                           ; $7966: $80
	add  b                                           ; $7967: $80
	adc  c                                           ; $7968: $89
	adc  d                                           ; $7969: $8a
	adc  e                                           ; $796a: $8b
	adc  h                                           ; $796b: $8c
	db   $e3                                         ; $796c: $e3
	db   $e4                                         ; $796d: $e4
	push hl                                          ; $796e: $e5
	add  b                                           ; $796f: $80
	adc  l                                           ; $7970: $8d
	adc  [hl]                                        ; $7971: $8e
	adc  a                                           ; $7972: $8f
	sub  b                                           ; $7973: $90
	sub  c                                           ; $7974: $91
	sub  d                                           ; $7975: $92
	sub  e                                           ; $7976: $93
	sub  h                                           ; $7977: $94
	sub  l                                           ; $7978: $95
	sub  [hl]                                        ; $7979: $96
	sub  a                                           ; $797a: $97
	sbc  b                                           ; $797b: $98
	sbc  c                                           ; $797c: $99
	sbc  d                                           ; $797d: $9a
	sbc  e                                           ; $797e: $9b
	sbc  h                                           ; $797f: $9c
	and  $e7                                         ; $7980: $e6 $e7
	add  sp, -$80                                    ; $7982: $e8 $80
	sbc  l                                           ; $7984: $9d
	sbc  [hl]                                        ; $7985: $9e
	sbc  a                                           ; $7986: $9f
	and  b                                           ; $7987: $a0
	and  c                                           ; $7988: $a1
	and  d                                           ; $7989: $a2
	and  e                                           ; $798a: $a3
	and  h                                           ; $798b: $a4
	and  l                                           ; $798c: $a5
	and  [hl]                                        ; $798d: $a6
	and  a                                           ; $798e: $a7
	xor  b                                           ; $798f: $a8
	xor  c                                           ; $7990: $a9
	xor  d                                           ; $7991: $aa
	xor  e                                           ; $7992: $ab
	xor  h                                           ; $7993: $ac
	jp   hl                                          ; $7994: $e9


	ld   [$eceb], a                                  ; $7995: $ea $eb $ec
	add  b                                           ; $7998: $80
	add  b                                           ; $7999: $80
	xor  l                                           ; $799a: $ad
	xor  [hl]                                        ; $799b: $ae
	xor  a                                           ; $799c: $af
	or   b                                           ; $799d: $b0
	or   c                                           ; $799e: $b1
	or   d                                           ; $799f: $b2
	or   e                                           ; $79a0: $b3
	or   h                                           ; $79a1: $b4
	or   l                                           ; $79a2: $b5
	or   [hl]                                        ; $79a3: $b6
	or   a                                           ; $79a4: $b7
	cp   b                                           ; $79a5: $b8
	cp   c                                           ; $79a6: $b9
	cp   d                                           ; $79a7: $ba
	db   $ed                                         ; $79a8: $ed
	xor  $ef                                         ; $79a9: $ee $ef
	ldh  a, [$80]                                    ; $79ab: $f0 $80
	cp   e                                           ; $79ad: $bb
	cp   h                                           ; $79ae: $bc
	cp   l                                           ; $79af: $bd
	cp   [hl]                                        ; $79b0: $be
	cp   a                                           ; $79b1: $bf
	ret  nz                                          ; $79b2: $c0

	pop  bc                                          ; $79b3: $c1
	jp   nz, $c4c3                                   ; $79b4: $c2 $c3 $c4

	push bc                                          ; $79b7: $c5
	add  $c7                                         ; $79b8: $c6 $c7
	ret  z                                           ; $79ba: $c8

	ret                                              ; $79bb: $c9


	pop  af                                          ; $79bc: $f1
	ldh  a, [c]                                      ; $79bd: $f2
	di                                               ; $79be: $f3
	db   $f4                                         ; $79bf: $f4
	add  b                                           ; $79c0: $80
	add  b                                           ; $79c1: $80
	jp   z, $cccb                                    ; $79c2: $ca $cb $cc

	call $cfce                                       ; $79c5: $cd $ce $cf
	ret  nc                                          ; $79c8: $d0

	pop  de                                          ; $79c9: $d1
	jp   nc, $d4d3                                   ; $79ca: $d2 $d3 $d4

	push de                                          ; $79cd: $d5
	sub  $d7                                         ; $79ce: $d6 $d7
	push af                                          ; $79d0: $f5
	or   $f7                                         ; $79d1: $f6 $f7
	jr   z, jr_096_7955                              ; $79d3: $28 $80

	add  b                                           ; $79d5: $80
	ret  c                                           ; $79d6: $d8

	reti                                             ; $79d7: $d9


	jp   c, $dcdb                                    ; $79d8: $da $db $dc

	db   $dd                                         ; $79db: $dd
	sbc  $df                                         ; $79dc: $de $df
	call c, $dddd                                    ; $79de: $dc $dd $dd
	ldh  [$80], a                                    ; $79e1: $e0 $80
	add  b                                           ; $79e3: $80
	add  b                                           ; $79e4: $80
	add  b                                           ; $79e5: $80
	add  b                                           ; $79e6: $80
	add  b                                           ; $79e7: $80
	rrca                                             ; $79e8: $0f
	rrca                                             ; $79e9: $0f
	rrca                                             ; $79ea: $0f
	rrca                                             ; $79eb: $0f
	rrca                                             ; $79ec: $0f
	rrca                                             ; $79ed: $0f
	rrca                                             ; $79ee: $0f
	rrca                                             ; $79ef: $0f
	rrca                                             ; $79f0: $0f
	rrca                                             ; $79f1: $0f
	rrca                                             ; $79f2: $0f
	rrca                                             ; $79f3: $0f
	rrca                                             ; $79f4: $0f
	rrca                                             ; $79f5: $0f
	rrca                                             ; $79f6: $0f
	rrca                                             ; $79f7: $0f
	rrca                                             ; $79f8: $0f
	rrca                                             ; $79f9: $0f
	rrca                                             ; $79fa: $0f
	rrca                                             ; $79fb: $0f
	rrca                                             ; $79fc: $0f
	rrca                                             ; $79fd: $0f
	rrca                                             ; $79fe: $0f
	rrca                                             ; $79ff: $0f
	rrca                                             ; $7a00: $0f
	rrca                                             ; $7a01: $0f
	rrca                                             ; $7a02: $0f
	rrca                                             ; $7a03: $0f
	rrca                                             ; $7a04: $0f
	rrca                                             ; $7a05: $0f
	rrca                                             ; $7a06: $0f
	rrca                                             ; $7a07: $0f
	rrca                                             ; $7a08: $0f
	rrca                                             ; $7a09: $0f
	rrca                                             ; $7a0a: $0f
	rrca                                             ; $7a0b: $0f
	rrca                                             ; $7a0c: $0f
	rrca                                             ; $7a0d: $0f
	rrca                                             ; $7a0e: $0f
	rrca                                             ; $7a0f: $0f
	rrca                                             ; $7a10: $0f
	rrca                                             ; $7a11: $0f
	rrca                                             ; $7a12: $0f
	rrca                                             ; $7a13: $0f
	rrca                                             ; $7a14: $0f
	rrca                                             ; $7a15: $0f
	rrca                                             ; $7a16: $0f
	rrca                                             ; $7a17: $0f
	rrca                                             ; $7a18: $0f
	rrca                                             ; $7a19: $0f
	rrca                                             ; $7a1a: $0f
	rrca                                             ; $7a1b: $0f
	rrca                                             ; $7a1c: $0f
	rrca                                             ; $7a1d: $0f
	rrca                                             ; $7a1e: $0f
	rrca                                             ; $7a1f: $0f
	rrca                                             ; $7a20: $0f
	rrca                                             ; $7a21: $0f
	rrca                                             ; $7a22: $0f
	rrca                                             ; $7a23: $0f
	rrca                                             ; $7a24: $0f
	rrca                                             ; $7a25: $0f
	rrca                                             ; $7a26: $0f
	rrca                                             ; $7a27: $0f
	rrca                                             ; $7a28: $0f
	rrca                                             ; $7a29: $0f
	rrca                                             ; $7a2a: $0f
	rrca                                             ; $7a2b: $0f
	rrca                                             ; $7a2c: $0f
	rrca                                             ; $7a2d: $0f
	rrca                                             ; $7a2e: $0f
	rrca                                             ; $7a2f: $0f
	rrca                                             ; $7a30: $0f
	rrca                                             ; $7a31: $0f
	rrca                                             ; $7a32: $0f
	rrca                                             ; $7a33: $0f
	rrca                                             ; $7a34: $0f
	rrca                                             ; $7a35: $0f
	rrca                                             ; $7a36: $0f
	rrca                                             ; $7a37: $0f
	rrca                                             ; $7a38: $0f
	rrca                                             ; $7a39: $0f
	rrca                                             ; $7a3a: $0f
	rrca                                             ; $7a3b: $0f
	rrca                                             ; $7a3c: $0f
	rrca                                             ; $7a3d: $0f
	rrca                                             ; $7a3e: $0f
	rrca                                             ; $7a3f: $0f
	rrca                                             ; $7a40: $0f
	rrca                                             ; $7a41: $0f
	rrca                                             ; $7a42: $0f
	rrca                                             ; $7a43: $0f
	rrca                                             ; $7a44: $0f
	rrca                                             ; $7a45: $0f
	rrca                                             ; $7a46: $0f
	rrca                                             ; $7a47: $0f
	rrca                                             ; $7a48: $0f
	rrca                                             ; $7a49: $0f
	rrca                                             ; $7a4a: $0f
	rrca                                             ; $7a4b: $0f
	rrca                                             ; $7a4c: $0f
	rrca                                             ; $7a4d: $0f
	rrca                                             ; $7a4e: $0f
	rrca                                             ; $7a4f: $0f
	rrca                                             ; $7a50: $0f
	rrca                                             ; $7a51: $0f
	rrca                                             ; $7a52: $0f
	rrca                                             ; $7a53: $0f
	rrca                                             ; $7a54: $0f
	rrca                                             ; $7a55: $0f
	rrca                                             ; $7a56: $0f
	rrca                                             ; $7a57: $0f
	rrca                                             ; $7a58: $0f
	rrca                                             ; $7a59: $0f
	rrca                                             ; $7a5a: $0f
	rrca                                             ; $7a5b: $0f
	rrca                                             ; $7a5c: $0f
	rrca                                             ; $7a5d: $0f
	rrca                                             ; $7a5e: $0f
	rrca                                             ; $7a5f: $0f
	jr   nc, jr_096_7a93                             ; $7a60: $30 $31

	ld   [hl-], a                                    ; $7a62: $32
	inc  sp                                          ; $7a63: $33
	inc  [hl]                                        ; $7a64: $34
	dec  [hl]                                        ; $7a65: $35
	ld   [hl], $37                                   ; $7a66: $36 $37
	jr   c, jr_096_7aa3                              ; $7a68: $38 $39

	ld   a, [hl-]                                    ; $7a6a: $3a
	dec  sp                                          ; $7a6b: $3b
	inc  a                                           ; $7a6c: $3c
	dec  a                                           ; $7a6d: $3d
	ld   a, $3f                                      ; $7a6e: $3e $3f
	ld   e, [hl]                                     ; $7a70: $5e
	ld   e, a                                        ; $7a71: $5f
	add  hl, hl                                      ; $7a72: $29
	ld   a, [hl+]                                    ; $7a73: $2a
	ld   b, b                                        ; $7a74: $40
	ld   b, c                                        ; $7a75: $41
	ld   b, d                                        ; $7a76: $42
	ld   b, e                                        ; $7a77: $43
	ld   b, h                                        ; $7a78: $44
	ld   b, l                                        ; $7a79: $45
	ld   b, [hl]                                     ; $7a7a: $46
	ld   b, a                                        ; $7a7b: $47
	ld   c, b                                        ; $7a7c: $48
	ld   c, c                                        ; $7a7d: $49
	ld   c, d                                        ; $7a7e: $4a
	ld   c, e                                        ; $7a7f: $4b
	ld   c, h                                        ; $7a80: $4c
	ld   c, l                                        ; $7a81: $4d
	ld   c, [hl]                                     ; $7a82: $4e
	ld   c, a                                        ; $7a83: $4f
	ld   l, [hl]                                     ; $7a84: $6e
	ld   l, a                                        ; $7a85: $6f
	dec  hl                                          ; $7a86: $2b
	inc  l                                           ; $7a87: $2c
	add  b                                           ; $7a88: $80
	add  b                                           ; $7a89: $80

Jump_096_7a8a:
	add  b                                           ; $7a8a: $80
	ld   d, b                                        ; $7a8b: $50
	ld   d, c                                        ; $7a8c: $51
	ld   d, d                                        ; $7a8d: $52
	ld   d, e                                        ; $7a8e: $53
	ld   d, h                                        ; $7a8f: $54
	ld   d, l                                        ; $7a90: $55
	ld   d, [hl]                                     ; $7a91: $56
	ld   d, a                                        ; $7a92: $57

jr_096_7a93:
	ld   e, b                                        ; $7a93: $58
	ld   e, c                                        ; $7a94: $59
	ld   e, d                                        ; $7a95: $5a
	ld   e, e                                        ; $7a96: $5b
	ld   e, h                                        ; $7a97: $5c
	ld   e, l                                        ; $7a98: $5d
	add  b                                           ; $7a99: $80
	add  b                                           ; $7a9a: $80
	add  b                                           ; $7a9b: $80
	add  b                                           ; $7a9c: $80
	add  b                                           ; $7a9d: $80
	add  b                                           ; $7a9e: $80
	ld   h, b                                        ; $7a9f: $60
	ld   h, c                                        ; $7aa0: $61
	ld   h, d                                        ; $7aa1: $62
	ld   h, e                                        ; $7aa2: $63

jr_096_7aa3:
	ld   h, h                                        ; $7aa3: $64
	ld   h, l                                        ; $7aa4: $65
	ld   h, [hl]                                     ; $7aa5: $66
	ld   h, a                                        ; $7aa6: $67
	ld   l, b                                        ; $7aa7: $68
	ld   l, c                                        ; $7aa8: $69
	ld   l, d                                        ; $7aa9: $6a
	ld   l, e                                        ; $7aaa: $6b
	ld   l, h                                        ; $7aab: $6c
	ld   l, l                                        ; $7aac: $6d
	add  b                                           ; $7aad: $80
	add  b                                           ; $7aae: $80
	add  b                                           ; $7aaf: $80
	add  b                                           ; $7ab0: $80
	add  b                                           ; $7ab1: $80
	add  c                                           ; $7ab2: $81
	add  d                                           ; $7ab3: $82
	add  e                                           ; $7ab4: $83
	add  h                                           ; $7ab5: $84
	add  l                                           ; $7ab6: $85
	add  [hl]                                        ; $7ab7: $86
	add  a                                           ; $7ab8: $87
	add  b                                           ; $7ab9: $80
	adc  b                                           ; $7aba: $88
	adc  c                                           ; $7abb: $89
	ld   hl, sp-$07                                  ; $7abc: $f8 $f9
	ld   a, [$fcfb]                                  ; $7abe: $fa $fb $fc
	db   $fd                                         ; $7ac1: $fd
	cp   $ff                                         ; $7ac2: $fe $ff
	add  b                                           ; $7ac4: $80
	add  b                                           ; $7ac5: $80
	adc  d                                           ; $7ac6: $8a
	adc  e                                           ; $7ac7: $8b
	adc  h                                           ; $7ac8: $8c
	adc  l                                           ; $7ac9: $8d
	adc  [hl]                                        ; $7aca: $8e
	adc  a                                           ; $7acb: $8f
	add  b                                           ; $7acc: $80
	sub  b                                           ; $7acd: $90
	sub  c                                           ; $7ace: $91
	sub  d                                           ; $7acf: $92
	nop                                              ; $7ad0: $00
	ld   bc, $0302                                   ; $7ad1: $01 $02 $03
	inc  b                                           ; $7ad4: $04
	dec  b                                           ; $7ad5: $05
	ld   b, $07                                      ; $7ad6: $06 $07
	add  b                                           ; $7ad8: $80
	add  b                                           ; $7ad9: $80
	sub  e                                           ; $7ada: $93
	sub  h                                           ; $7adb: $94
	sub  l                                           ; $7adc: $95
	sub  [hl]                                        ; $7add: $96
	sub  a                                           ; $7ade: $97
	sbc  b                                           ; $7adf: $98
	sbc  c                                           ; $7ae0: $99
	sbc  d                                           ; $7ae1: $9a
	sbc  e                                           ; $7ae2: $9b
	sbc  h                                           ; $7ae3: $9c
	ld   [$0a09], sp                                 ; $7ae4: $08 $09 $0a
	dec  bc                                          ; $7ae7: $0b
	inc  c                                           ; $7ae8: $0c
	dec  c                                           ; $7ae9: $0d
	ld   c, $0f                                      ; $7aea: $0e $0f
	add  b                                           ; $7aec: $80
	add  b                                           ; $7aed: $80
	add  c                                           ; $7aee: $81
	sbc  l                                           ; $7aef: $9d
	sbc  [hl]                                        ; $7af0: $9e
	sbc  a                                           ; $7af1: $9f
	and  b                                           ; $7af2: $a0
	and  c                                           ; $7af3: $a1
	and  d                                           ; $7af4: $a2
	and  e                                           ; $7af5: $a3
	and  h                                           ; $7af6: $a4
	and  l                                           ; $7af7: $a5
	db   $10                                         ; $7af8: $10
	ld   de, $1312                                   ; $7af9: $11 $12 $13
	inc  d                                           ; $7afc: $14
	dec  d                                           ; $7afd: $15
	ld   d, $17                                      ; $7afe: $16 $17
	add  b                                           ; $7b00: $80
	and  [hl]                                        ; $7b01: $a6
	and  a                                           ; $7b02: $a7
	xor  b                                           ; $7b03: $a8
	xor  c                                           ; $7b04: $a9
	xor  d                                           ; $7b05: $aa
	xor  e                                           ; $7b06: $ab
	xor  h                                           ; $7b07: $ac
	add  b                                           ; $7b08: $80
	xor  l                                           ; $7b09: $ad
	xor  [hl]                                        ; $7b0a: $ae
	xor  a                                           ; $7b0b: $af
	jr   @+$1b                                       ; $7b0c: $18 $19

	ld   a, [de]                                     ; $7b0e: $1a
	dec  de                                          ; $7b0f: $1b
	inc  e                                           ; $7b10: $1c
	dec  e                                           ; $7b11: $1d
	ld   e, $1f                                      ; $7b12: $1e $1f
	or   b                                           ; $7b14: $b0
	or   c                                           ; $7b15: $b1
	or   d                                           ; $7b16: $b2
	or   e                                           ; $7b17: $b3
	or   h                                           ; $7b18: $b4
	or   l                                           ; $7b19: $b5
	or   [hl]                                        ; $7b1a: $b6
	or   a                                           ; $7b1b: $b7
	cp   b                                           ; $7b1c: $b8
	and  c                                           ; $7b1d: $a1
	cp   c                                           ; $7b1e: $b9
	cp   d                                           ; $7b1f: $ba
	jr   nz, jr_096_7b43                             ; $7b20: $20 $21

	ld   [hl+], a                                    ; $7b22: $22
	inc  hl                                          ; $7b23: $23
	inc  h                                           ; $7b24: $24
	dec  h                                           ; $7b25: $25
	ld   h, $27                                      ; $7b26: $26 $27
	add  b                                           ; $7b28: $80
	add  b                                           ; $7b29: $80
	cp   e                                           ; $7b2a: $bb
	cp   h                                           ; $7b2b: $bc
	cp   l                                           ; $7b2c: $bd
	cp   [hl]                                        ; $7b2d: $be
	cp   a                                           ; $7b2e: $bf
	ret  nz                                          ; $7b2f: $c0

	sbc  c                                           ; $7b30: $99
	pop  bc                                          ; $7b31: $c1
	jp   nz, $f889                                   ; $7b32: $c2 $89 $f8

	ld   sp, hl                                      ; $7b35: $f9
	ld   a, [$fcfb]                                  ; $7b36: $fa $fb $fc
	db   $fd                                         ; $7b39: $fd
	cp   $ff                                         ; $7b3a: $fe $ff
	add  b                                           ; $7b3c: $80
	add  b                                           ; $7b3d: $80
	jp   $c5c4                                       ; $7b3e: $c3 $c4 $c5


	add  $c7                                         ; $7b41: $c6 $c7

jr_096_7b43:
	ret  z                                           ; $7b43: $c8

	ret                                              ; $7b44: $c9


	add  b                                           ; $7b45: $80
	sub  c                                           ; $7b46: $91
	sub  d                                           ; $7b47: $92
	nop                                              ; $7b48: $00
	ld   bc, $0302                                   ; $7b49: $01 $02 $03
	inc  b                                           ; $7b4c: $04
	dec  b                                           ; $7b4d: $05
	ld   b, $07                                      ; $7b4e: $06 $07
	add  b                                           ; $7b50: $80
	add  b                                           ; $7b51: $80
	jp   z, $95cb                                    ; $7b52: $ca $cb $95

	call z, $cecd                                    ; $7b55: $cc $cd $ce
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b58: $cf
	cp   b                                           ; $7b59: $b8
	sbc  e                                           ; $7b5a: $9b
	sbc  h                                           ; $7b5b: $9c
	ld   [$0a09], sp                                 ; $7b5c: $08 $09 $0a
	dec  bc                                          ; $7b5f: $0b
	inc  c                                           ; $7b60: $0c
	dec  c                                           ; $7b61: $0d
	ld   c, $0f                                      ; $7b62: $0e $0f
	add  b                                           ; $7b64: $80
	add  b                                           ; $7b65: $80
	ret  nc                                          ; $7b66: $d0

	pop  de                                          ; $7b67: $d1
	sbc  [hl]                                        ; $7b68: $9e
	jp   nc, $d4d3                                   ; $7b69: $d2 $d3 $d4

	push de                                          ; $7b6c: $d5
	add  b                                           ; $7b6d: $80
	sub  $a5                                         ; $7b6e: $d6 $a5
	db   $10                                         ; $7b70: $10
	ld   de, $1312                                   ; $7b71: $11 $12 $13
	inc  d                                           ; $7b74: $14
	dec  d                                           ; $7b75: $15
	ld   d, $17                                      ; $7b76: $16 $17
	rst  $10                                         ; $7b78: $d7
	ret  c                                           ; $7b79: $d8

	reti                                             ; $7b7a: $d9


	jp   c, $dba9                                    ; $7b7b: $da $a9 $db

	xor  e                                           ; $7b7e: $ab
	xor  h                                           ; $7b7f: $ac
	call c, $aedd                                    ; $7b80: $dc $dd $ae
	xor  a                                           ; $7b83: $af
	jr   @+$1b                                       ; $7b84: $18 $19

	ld   a, [de]                                     ; $7b86: $1a
	dec  de                                          ; $7b87: $1b
	inc  e                                           ; $7b88: $1c
	dec  e                                           ; $7b89: $1d
	ld   e, $1f                                      ; $7b8a: $1e $1f
	sbc  $df                                         ; $7b8c: $de $df
	ldh  [$b3], a                                    ; $7b8e: $e0 $b3
	or   h                                           ; $7b90: $b4
	pop  hl                                          ; $7b91: $e1
	or   [hl]                                        ; $7b92: $b6
	or   a                                           ; $7b93: $b7
	ldh  [c], a                                      ; $7b94: $e2
	db   $e3                                         ; $7b95: $e3
	cp   c                                           ; $7b96: $b9
	cp   d                                           ; $7b97: $ba
	jr   nz, jr_096_7bbb                             ; $7b98: $20 $21

	ld   [hl+], a                                    ; $7b9a: $22
	inc  hl                                          ; $7b9b: $23
	inc  h                                           ; $7b9c: $24
	dec  h                                           ; $7b9d: $25
	ld   h, $27                                      ; $7b9e: $26 $27
	add  b                                           ; $7ba0: $80
	add  b                                           ; $7ba1: $80
	db   $e4                                         ; $7ba2: $e4
	push hl                                          ; $7ba3: $e5
	and  $be                                         ; $7ba4: $e6 $be
	rst  $20                                         ; $7ba6: $e7
	ret  nz                                          ; $7ba7: $c0

	cp   b                                           ; $7ba8: $b8
	add  sp, -$3e                                    ; $7ba9: $e8 $c2
	adc  c                                           ; $7bab: $89
	ld   hl, sp-$07                                  ; $7bac: $f8 $f9
	ld   a, [$fcfb]                                  ; $7bae: $fa $fb $fc
	db   $fd                                         ; $7bb1: $fd
	cp   $ff                                         ; $7bb2: $fe $ff
	add  b                                           ; $7bb4: $80
	add  b                                           ; $7bb5: $80
	jp   hl                                          ; $7bb6: $e9


	ld   [$eceb], a                                  ; $7bb7: $ea $eb $ec
	adc  [hl]                                        ; $7bba: $8e

jr_096_7bbb:
	db   $ed                                         ; $7bbb: $ed
	xor  $80                                         ; $7bbc: $ee $80
	sub  c                                           ; $7bbe: $91
	sub  d                                           ; $7bbf: $92
	nop                                              ; $7bc0: $00
	ld   bc, $0302                                   ; $7bc1: $01 $02 $03
	inc  b                                           ; $7bc4: $04
	dec  b                                           ; $7bc5: $05
	ld   b, $07                                      ; $7bc6: $06 $07
	add  b                                           ; $7bc8: $80
	add  b                                           ; $7bc9: $80
	rst  $28                                         ; $7bca: $ef
	ldh  a, [$95]                                    ; $7bcb: $f0 $95
	pop  af                                          ; $7bcd: $f1
	ldh  a, [c]                                      ; $7bce: $f2
	di                                               ; $7bcf: $f3
	db   $f4                                         ; $7bd0: $f4
	push af                                          ; $7bd1: $f5
	or   $9c                                         ; $7bd2: $f6 $9c
	ld   [$0a09], sp                                 ; $7bd4: $08 $09 $0a
	dec  bc                                          ; $7bd7: $0b
	inc  c                                           ; $7bd8: $0c
	dec  c                                           ; $7bd9: $0d
	ld   c, $0f                                      ; $7bda: $0e $0f
	add  b                                           ; $7bdc: $80
	rst  $30                                         ; $7bdd: $f7
	ld   hl, sp-$07                                  ; $7bde: $f8 $f9
	sbc  [hl]                                        ; $7be0: $9e
	ld   a, [$80fb]                                  ; $7be1: $fa $fb $80
	db   $fc                                         ; $7be4: $fc
	add  b                                           ; $7be5: $80
	db   $fd                                         ; $7be6: $fd
	and  l                                           ; $7be7: $a5
	db   $10                                         ; $7be8: $10
	ld   de, $1312                                   ; $7be9: $11 $12 $13
	inc  d                                           ; $7bec: $14
	dec  d                                           ; $7bed: $15
	ld   d, $17                                      ; $7bee: $16 $17
	cp   $ff                                         ; $7bf0: $fe $ff
	nop                                              ; $7bf2: $00
	ld   bc, $0302                                   ; $7bf3: $01 $02 $03
	xor  e                                           ; $7bf6: $ab
	inc  b                                           ; $7bf7: $04
	add  b                                           ; $7bf8: $80
	xor  l                                           ; $7bf9: $ad
	xor  [hl]                                        ; $7bfa: $ae
	xor  a                                           ; $7bfb: $af
	jr   @+$1b                                       ; $7bfc: $18 $19

	ld   a, [de]                                     ; $7bfe: $1a
	dec  de                                          ; $7bff: $1b
	inc  e                                           ; $7c00: $1c
	dec  e                                           ; $7c01: $1d
	ld   e, $1f                                      ; $7c02: $1e $1f
	dec  b                                           ; $7c04: $05
	ld   b, $07                                      ; $7c05: $06 $07
	or   e                                           ; $7c07: $b3
	or   h                                           ; $7c08: $b4
	ld   [$b7b6], sp                                 ; $7c09: $08 $b6 $b7
	add  b                                           ; $7c0c: $80
	add  hl, bc                                      ; $7c0d: $09
	cp   c                                           ; $7c0e: $b9
	cp   d                                           ; $7c0f: $ba
	jr   nz, jr_096_7c33                             ; $7c10: $20 $21

	ld   [hl+], a                                    ; $7c12: $22
	inc  hl                                          ; $7c13: $23
	inc  h                                           ; $7c14: $24
	dec  h                                           ; $7c15: $25
	ld   h, $27                                      ; $7c16: $26 $27
	add  b                                           ; $7c18: $80
	add  b                                           ; $7c19: $80
	cp   e                                           ; $7c1a: $bb
	cp   h                                           ; $7c1b: $bc
	cp   l                                           ; $7c1c: $bd
	cp   [hl]                                        ; $7c1d: $be
	cp   a                                           ; $7c1e: $bf
	ret  nz                                          ; $7c1f: $c0

	ld   a, [bc]                                     ; $7c20: $0a
	add  b                                           ; $7c21: $80
	dec  bc                                          ; $7c22: $0b
	adc  c                                           ; $7c23: $89
	ld   hl, sp-$07                                  ; $7c24: $f8 $f9
	ld   a, [$fcfb]                                  ; $7c26: $fa $fb $fc
	db   $fd                                         ; $7c29: $fd
	cp   $ff                                         ; $7c2a: $fe $ff
	add  b                                           ; $7c2c: $80
	add  b                                           ; $7c2d: $80
	inc  c                                           ; $7c2e: $0c
	call nz, $c6c5                                   ; $7c2f: $c4 $c5 $c6
	rst  ToBoot                                         ; $7c32: $c7

jr_096_7c33:
	dec  c                                           ; $7c33: $0d
	add  b                                           ; $7c34: $80
	push af                                          ; $7c35: $f5
	sub  c                                           ; $7c36: $91
	sub  d                                           ; $7c37: $92
	nop                                              ; $7c38: $00
	ld   bc, $0302                                   ; $7c39: $01 $02 $03
	inc  b                                           ; $7c3c: $04
	dec  b                                           ; $7c3d: $05
	ld   b, $07                                      ; $7c3e: $06 $07

jr_096_7c40:
	add  b                                           ; $7c40: $80
	add  b                                           ; $7c41: $80
	jp   z, $950e                                    ; $7c42: $ca $0e $95

	rrca                                             ; $7c45: $0f
	call $1110                                       ; $7c46: $cd $10 $11
	ldh  [c], a                                      ; $7c49: $e2
	ld   [de], a                                     ; $7c4a: $12
	sbc  h                                           ; $7c4b: $9c
	ld   [$0a09], sp                                 ; $7c4c: $08 $09 $0a
	dec  bc                                          ; $7c4f: $0b
	inc  c                                           ; $7c50: $0c
	dec  c                                           ; $7c51: $0d
	ld   c, $0f                                      ; $7c52: $0e $0f
	add  b                                           ; $7c54: $80
	add  b                                           ; $7c55: $80
	inc  de                                          ; $7c56: $13
	inc  d                                           ; $7c57: $14
	sbc  [hl]                                        ; $7c58: $9e
	jp   nc, $15d3                                   ; $7c59: $d2 $d3 $15

	call nc, $16e2                                   ; $7c5c: $d4 $e2 $16
	and  l                                           ; $7c5f: $a5
	db   $10                                         ; $7c60: $10
	ld   de, $1312                                   ; $7c61: $11 $12 $13
	inc  d                                           ; $7c64: $14
	dec  d                                           ; $7c65: $15
	ld   d, $17                                      ; $7c66: $16 $17
	rla                                              ; $7c68: $17
	jr   jr_096_7c84                                 ; $7c69: $18 $19

	xor  b                                           ; $7c6b: $a8
	xor  c                                           ; $7c6c: $a9
	ld   a, [de]                                     ; $7c6d: $1a
	xor  e                                           ; $7c6e: $ab
	dec  de                                          ; $7c6f: $1b
	add  b                                           ; $7c70: $80
	xor  l                                           ; $7c71: $ad
	xor  [hl]                                        ; $7c72: $ae
	xor  a                                           ; $7c73: $af
	jr   @+$1b                                       ; $7c74: $18 $19

	ld   a, [de]                                     ; $7c76: $1a
	dec  de                                          ; $7c77: $1b
	inc  e                                           ; $7c78: $1c
	dec  e                                           ; $7c79: $1d
	ld   e, $1f                                      ; $7c7a: $1e $1f
	inc  e                                           ; $7c7c: $1c
	dec  e                                           ; $7c7d: $1d
	ld   e, $b3                                      ; $7c7e: $1e $b3
	or   h                                           ; $7c80: $b4
	pop  hl                                          ; $7c81: $e1
	or   [hl]                                        ; $7c82: $b6
	or   a                                           ; $7c83: $b7

jr_096_7c84:
	rra                                              ; $7c84: $1f
	jr   nz, jr_096_7c40                             ; $7c85: $20 $b9

	cp   d                                           ; $7c87: $ba
	db $20, $21

	ld   [hl+], a                                    ; $7c8a: $22
	inc  hl                                          ; $7c8b: $23
	inc  h                                           ; $7c8c: $24
	dec  h                                           ; $7c8d: $25
	ld   h, $27                                      ; $7c8e: $26 $27


TileAttr_FileLoadDisplay::
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $00
	db $00, $05, $05, $06, $06, $06, $25, $05, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $05, $05
	db $00, $05, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $05, $05
	db $00, $05, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $05, $05, $00
	db $00, $05, $05, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $05, $05, $05
	db $00, $05, $05, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $05, $00
	db $00, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $00
	db $00, $05, $05, $05, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $05, $05, $05, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $01, $00, $00, $01, $01, $02, $02, $02, $02, $02, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $02, $02, $02, $02, $02, $02, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $02, $02, $02, $02, $02, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $04, $04, $01, $01, $01, $01, $02, $02, $02, $02, $02, $00, $00, $00
	db $00, $00, $00, $00, $04, $04, $04, $04, $03, $03, $03, $03, $03, $02, $02, $07, $07, $00, $00, $00
	db $00, $00, $00, $00, $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $01, $00, $00, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
	db $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $08, $00, $00, $00
	db $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $0a, $00, $00, $00
	db $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $0a, $00, $00, $00
	db $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $0a, $00, $00, $00


TileMap_FileLoadDisplay::
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $04, $ce, $05, $06, $07, $08, $be, $bf, $01, $02, $84, $84, $84, $84, $84, $84, $ff, $03, $80
	db $80, $09, $00, $80, $80, $80, $8d, $8d, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $82, $83
	db $80, $87, $0d, $0e, $0f, $10, $e0, $e1, $e2, $e3, $80, $80, $80, $80, $e4, $e5, $e6, $e7, $c0, $83
	db $80, $d0, $11, $12, $13, $14, $f0, $f1, $f2, $f3, $80, $80, $80, $80, $f4, $f5, $f6, $15, $b0, $80
	db $80, $16, $00, $80, $80, $80, $80, $80, $80, $e8, $e9, $e4, $e5, $80, $80, $80, $80, $ee, $de, $83
	db $80, $cf, $00, $80, $80, $80, $80, $80, $80, $f8, $f9, $f4, $f5, $80, $80, $80, $80, $80, $df, $80
	db $80, $fa, $fb, $fc, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $9e, $ef, $ef, $fe, $80
	db $80, $0a, $0b, $0c, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $ae, $8e, $8e, $8f, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $81, $80, $80, $80, $85, $86, $80, $88, $89, $8a, $8b, $8c, $80, $80, $80, $80
	db $80, $80, $80, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $80, $80, $80
	db $80, $80, $80, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $ad, $80, $80, $80
	db $80, $80, $80, $80, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $80, $80, $80
	db $80, $80, $80, $80, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $80, $80, $80
	db $80, $80, $80, $80, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $80, $80, $80, $80, $80, $80, $80
	db $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80
	db $0d, $0e, $0f, $10, $e0, $e1, $e2, $e3, $80, $80, $80, $80, $e4, $e5, $e6, $e7, $8e, $dd, $dd, $dd
	db $11, $12, $13, $14, $f0, $f1, $f2, $f3, $80, $80, $80, $80, $f4, $f5, $f6, $f7, $9e, $dd, $dd, $dd
	db $80, $80, $80, $80, $80, $da, $db, $dc, $dd, $e4, $e5, $80, $80, $80, $80, $80, $ae, $dd, $dd, $dd
	db $80, $80, $80, $80, $80, $ea, $eb, $ec, $ed, $f4, $f5, $80, $80, $80, $80, $80, $be, $dd, $dd, $dd
