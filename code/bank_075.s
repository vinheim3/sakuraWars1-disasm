; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $075", ROMX[$4000], BANK[$75]

	ld   b, c                                        ; $4000: $41
	ld   [bc], a                                     ; $4001: $02
	add  [hl]                                        ; $4002: $86
	nop                                              ; $4003: $00
	ld   bc, $000f                                   ; $4004: $01 $0f $00
	add  h                                           ; $4007: $84
	ld   c, $00                                      ; $4008: $0e $00
	rrca                                             ; $400a: $0f
	add  l                                           ; $400b: $85
	nop                                              ; $400c: $00
	inc  b                                           ; $400d: $04
	rst  JumpTable                                         ; $400e: $df
	nop                                              ; $400f: $00
	and  a                                           ; $4010: $a7
	add  a                                           ; $4011: $87
	rst  $38                                         ; $4012: $ff
	add  b                                           ; $4013: $80
	sub  a                                           ; $4014: $97
	add  b                                           ; $4015: $80
	ld   a, e                                        ; $4016: $7b
	add  l                                           ; $4017: $85
	nop                                              ; $4018: $00
	ld   bc, $00ff                                   ; $4019: $01 $ff $00
	add  l                                           ; $401c: $85
	rst  $38                                         ; $401d: $ff
	add  l                                           ; $401e: $85
	nop                                              ; $401f: $00
	ld   [bc], a                                     ; $4020: $02
	rst  $20                                         ; $4021: $e7
	ld   b, $46                                      ; $4022: $06 $46
	add  d                                           ; $4024: $82
	ld   b, l                                        ; $4025: $45
	ld   bc, $e047                                   ; $4026: $01 $47 $e0
	add  l                                           ; $4029: $85
	nop                                              ; $402a: $00
	nop                                              ; $402b: $00
	rst  $38                                         ; $402c: $ff
	add  b                                           ; $402d: $80
	ccf                                              ; $402e: $3f
	dec  b                                           ; $402f: $05
	cp   $ff                                         ; $4030: $fe $ff
	sbc  l                                           ; $4032: $9d
	sbc  a                                           ; $4033: $9f
	db   $db                                         ; $4034: $db
	daa                                              ; $4035: $27
	add  l                                           ; $4036: $85
	nop                                              ; $4037: $00
	ld   b, $ff                                      ; $4038: $06 $ff
	add  e                                           ; $403a: $83
	rst  $38                                         ; $403b: $ff
	ld   h, b                                        ; $403c: $60
	ldh  [c], a                                      ; $403d: $e2
	add  c                                           ; $403e: $81
	add  b                                           ; $403f: $80
	add  a                                           ; $4040: $87
	nop                                              ; $4041: $00
	nop                                              ; $4042: $00
	rst  $38                                         ; $4043: $ff
	add  b                                           ; $4044: $80
	ld   hl, sp-$80                                  ; $4045: $f8 $80
	rst  $38                                         ; $4047: $ff
	add  b                                           ; $4048: $80
	ld   [hl], e                                     ; $4049: $73
	ld   bc, $48b7                                   ; $404a: $01 $b7 $48
	add  l                                           ; $404d: $85
	nop                                              ; $404e: $00
	ld   [bc], a                                     ; $404f: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4050: $cf
	ret  nz                                          ; $4051: $c0

	adc  $82                                         ; $4052: $ce $82
	ld   c, [hl]                                     ; $4054: $4e
	ld   bc, $0fce                                   ; $4055: $01 $ce $0f
	add  l                                           ; $4058: $85
	nop                                              ; $4059: $00
	ld   bc, $07e0                                   ; $405a: $01 $e0 $07
	add  d                                           ; $405d: $82
	rst  $20                                         ; $405e: $e7
	add  b                                           ; $405f: $80
	and  $00                                         ; $4060: $e6 $00
	rst  $20                                         ; $4062: $e7
	add  l                                           ; $4063: $85
	nop                                              ; $4064: $00
	ld   bc, $8f70                                   ; $4065: $01 $70 $8f
	add  b                                           ; $4068: $80
	sbc  a                                           ; $4069: $9f
	add  b                                           ; $406a: $80
	ld   a, $80                                      ; $406b: $3e $80
	inc  a                                           ; $406d: $3c
	nop                                              ; $406e: $00
	rst  $38                                         ; $406f: $ff
	add  [hl]                                        ; $4070: $86
	nop                                              ; $4071: $00
	nop                                              ; $4072: $00
	rst  $38                                         ; $4073: $ff
	add  b                                           ; $4074: $80
	rst  $30                                         ; $4075: $f7
	add  b                                           ; $4076: $80
	db   $f4                                         ; $4077: $f4
	add  b                                           ; $4078: $80
	jp   hl                                          ; $4079: $e9


	nop                                              ; $407a: $00
	rst  $38                                         ; $407b: $ff
	add  l                                           ; $407c: $85
	nop                                              ; $407d: $00
	ld   bc, $fe01                                   ; $407e: $01 $01 $fe
	add  b                                           ; $4081: $80
	push af                                          ; $4082: $f5
	add  b                                           ; $4083: $80
	xor  d                                           ; $4084: $aa
	add  b                                           ; $4085: $80
	ld   d, h                                        ; $4086: $54
	nop                                              ; $4087: $00
	rst  $38                                         ; $4088: $ff
	add  l                                           ; $4089: $85
	nop                                              ; $408a: $00
	ld   bc, $804f                                   ; $408b: $01 $4f $80
	add  h                                           ; $408e: $84
	nop                                              ; $408f: $00
	nop                                              ; $4090: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4091: $cf
	add  l                                           ; $4092: $85
	nop                                              ; $4093: $00
	ld   [bc], a                                     ; $4094: $02
	sbc  a                                           ; $4095: $9f
	nop                                              ; $4096: $00
	rrca                                             ; $4097: $0f
	add  b                                           ; $4098: $80
	nop                                              ; $4099: $00
	add  b                                           ; $409a: $80
	ld   bc, $0301                                   ; $409b: $01 $01 $03
	sub  e                                           ; $409e: $93
	add  l                                           ; $409f: $85
	nop                                              ; $40a0: $00
	ld   bc, $3fc0                                   ; $40a1: $01 $c0 $3f
	add  b                                           ; $40a4: $80
	rst  $38                                         ; $40a5: $ff
	add  b                                           ; $40a6: $80
	cp   $80                                         ; $40a7: $fe $80
	ld   hl, sp+$00                                  ; $40a9: $f8 $00
	rst  $38                                         ; $40ab: $ff
	add  [hl]                                        ; $40ac: $86
	nop                                              ; $40ad: $00
	add  c                                           ; $40ae: $81
	rst  $38                                         ; $40af: $ff
	add  b                                           ; $40b0: $80
	ld   c, a                                        ; $40b1: $4f
	add  b                                           ; $40b2: $80
	inc  bc                                          ; $40b3: $03
	nop                                              ; $40b4: $00
	rst  $38                                         ; $40b5: $ff
	add  b                                           ; $40b6: $80
	inc  c                                           ; $40b7: $0c
	add  [hl]                                        ; $40b8: $86
	nop                                              ; $40b9: $00
	add  b                                           ; $40ba: $80
	inc  bc                                          ; $40bb: $03
	add  b                                           ; $40bc: $80
	inc  c                                           ; $40bd: $0c
	add  d                                           ; $40be: $82
	inc  b                                           ; $40bf: $04
	add  b                                           ; $40c0: $80
	ld   [bc], a                                     ; $40c1: $02
	add  b                                           ; $40c2: $80
	ld   bc, $0080                                   ; $40c3: $01 $80 $00
	add  b                                           ; $40c6: $80
	ld   bc, $ff80                                   ; $40c7: $01 $80 $ff
	add  b                                           ; $40ca: $80
	xor  a                                           ; $40cb: $af
	ld   bc, $0415                                   ; $40cc: $01 $15 $04
	add  b                                           ; $40cf: $80
	xor  $01                                         ; $40d0: $ee $01
	ld   l, $3e                                      ; $40d2: $2e $3e
	add  b                                           ; $40d4: $80
	adc  [hl]                                        ; $40d5: $8e
	add  d                                           ; $40d6: $82
	and  $05                                         ; $40d7: $e6 $05
	adc  [hl]                                        ; $40d9: $8e
	sbc  [hl]                                        ; $40da: $9e
	adc  $c6                                         ; $40db: $ce $c6
	xor  [hl]                                        ; $40dd: $ae
	db   $10                                         ; $40de: $10
	add  b                                           ; $40df: $80
	ld   b, a                                        ; $40e0: $47
	ld   bc, $0545                                   ; $40e1: $01 $45 $05
	add  d                                           ; $40e4: $82
	ld   b, $82                                      ; $40e5: $06 $82
	ld   [bc], a                                     ; $40e7: $02
	add  b                                           ; $40e8: $80
	inc  b                                           ; $40e9: $04
	ld   bc, $1906                                   ; $40ea: $01 $06 $19
	add  b                                           ; $40ed: $80
	halt                                             ; $40ee: $76
	dec  b                                           ; $40ef: $05
	inc  [hl]                                        ; $40f0: $34
	inc  a                                           ; $40f1: $3c
	inc  l                                           ; $40f2: $2c
	dec  l                                           ; $40f3: $2d
	ld   l, l                                        ; $40f4: $6d
	ld   a, h                                        ; $40f5: $7c
	add  b                                           ; $40f6: $80
	sbc  $0b                                         ; $40f7: $de $0b

jr_075_40f9:
	call c, Call_075_59dd                            ; $40f9: $dc $dd $59
	ld   e, e                                        ; $40fc: $5b
	jp   nc, $0031                                   ; $40fd: $d2 $31 $00

	inc  e                                           ; $4100: $1c
	ld   [hl], $55                                   ; $4101: $36 $55
	ld   b, c                                        ; $4103: $41
	pop  bc                                          ; $4104: $c1
	add  b                                           ; $4105: $80
	nop                                              ; $4106: $00
	rlca                                             ; $4107: $07
	stop                                             ; $4108: $10 $00
	ld   [de], a                                     ; $410a: $12
	db   $10                                         ; $410b: $10
	add  b                                           ; $410c: $80
	and  h                                           ; $410d: $a4
	jr   nz, @-$28                                   ; $410e: $20 $d6

	add  b                                           ; $4110: $80
	ld   e, [hl]                                     ; $4111: $5e
	ld   b, $5a                                      ; $4112: $06 $5a
	ld   a, d                                        ; $4114: $7a
	ld   l, b                                        ; $4115: $68
	add  sp, $6c                                     ; $4116: $e8 $6c
	ld   a, h                                        ; $4118: $7c
	halt                                             ; $4119: $76
	add  c                                           ; $411a: $81
	ld   [hl], $03                                   ; $411b: $36 $03
	inc  [hl]                                        ; $411d: $34
	or   h                                           ; $411e: $b4
	or   [hl]                                        ; $411f: $b6
	jr   c, @-$7e                                    ; $4120: $38 $80

	adc  $82                                         ; $4122: $ce $82
	ld   c, [hl]                                     ; $4124: $4e
	ld   [bc], a                                     ; $4125: $02
	adc  $c0                                         ; $4126: $ce $c0
	add  b                                           ; $4128: $80
	add  c                                           ; $4129: $81
	adc  a                                           ; $412a: $8f
	add  b                                           ; $412b: $80
	ld   c, a                                        ; $412c: $4f
	ld   bc, $0ecf                                   ; $412d: $01 $cf $0e
	add  e                                           ; $4130: $83
	and  $80                                         ; $4131: $e6 $80
	rst  $20                                         ; $4133: $e7
	add  b                                           ; $4134: $80
	rlca                                             ; $4135: $07
	add  b                                           ; $4136: $80
	rst  $20                                         ; $4137: $e7
	dec  b                                           ; $4138: $05
	and  $e7                                         ; $4139: $e6 $e7
	push hl                                          ; $413b: $e5
	rst  $20                                         ; $413c: $e7
	ld   h, $3d                                      ; $413d: $26 $3d
	add  d                                           ; $413f: $82
	add  hl, bc                                      ; $4140: $09
	add  b                                           ; $4141: $80
	ld   bc, $9e09                                   ; $4142: $01 $09 $9e
	sbc  d                                           ; $4145: $9a
	cp   e                                           ; $4146: $bb
	cp   b                                           ; $4147: $b8
	ld   a, b                                        ; $4148: $78
	ld   [hl], b                                     ; $4149: $70
	ld   [hl], l                                     ; $414a: $75
	ld   [hl], e                                     ; $414b: $73
	pop  bc                                          ; $414c: $c1
	ret  z                                           ; $414d: $c8

	add  b                                           ; $414e: $80
	sub  b                                           ; $414f: $90
	nop                                              ; $4150: $00
	ld   b, e                                        ; $4151: $43
	add  c                                           ; $4152: $81
	inc  bc                                          ; $4153: $03
	add  hl, bc                                      ; $4154: $09
	and  a                                           ; $4155: $a7
	rlca                                             ; $4156: $07
	ld   a, [hl+]                                    ; $4157: $2a
	ld   a, [bc]                                     ; $4158: $0a
	ld   e, h                                        ; $4159: $5c
	inc  d                                           ; $415a: $14
	ld   e, [hl]                                     ; $415b: $5e
	and  $30                                         ; $415c: $e6 $30
	nop                                              ; $415e: $00
	add  b                                           ; $415f: $80
	ret  nz                                          ; $4160: $c0

	add  b                                           ; $4161: $80
	nop                                              ; $4162: $00
	add  b                                           ; $4163: $80
	inc  e                                           ; $4164: $1c
	add  b                                           ; $4165: $80
	ld   c, $84                                      ; $4166: $0e $84
	inc  c                                           ; $4168: $0c
	nop                                              ; $4169: $00
	jr   nc, jr_075_40f9                             ; $416a: $30 $8d

	nop                                              ; $416c: $00
	nop                                              ; $416d: $00
	ld   e, a                                        ; $416e: $5f
	add  b                                           ; $416f: $80
	inc  bc                                          ; $4170: $03
	add  d                                           ; $4171: $82
	rlca                                             ; $4172: $07
	add  e                                           ; $4173: $83
	rrca                                             ; $4174: $0f
	add  d                                           ; $4175: $82
	rra                                              ; $4176: $1f
	ld   [bc], a                                     ; $4177: $02
	sbc  b                                           ; $4178: $98
	ld   sp, hl                                      ; $4179: $f9
	pop  af                                          ; $417a: $f1
	add  b                                           ; $417b: $80
	ldh  a, [c]                                      ; $417c: $f2
	add  b                                           ; $417d: $80
	db   $f4                                         ; $417e: $f4
	ld   b, $f0                                      ; $417f: $06 $f0
	pop  hl                                          ; $4181: $e1
	ldh  [$e1], a                                    ; $4182: $e0 $e1
	db   $e3                                         ; $4184: $e3
	ldh  [$e4], a                                    ; $4185: $e0 $e4
	add  b                                           ; $4187: $80
	call nz, $0402                                   ; $4188: $c4 $02 $04
	jp   $80c1                                       ; $418b: $c3 $c1 $80


	ld   sp, $0980                                   ; $418e: $31 $80 $09
	ld   bc, $8001                                   ; $4191: $01 $01 $80
	add  b                                           ; $4194: $80
	ld   h, b                                        ; $4195: $60
	inc  b                                           ; $4196: $04
	ld   e, b                                        ; $4197: $58
	jr   z, jr_075_41a6                              ; $4198: $28 $0c

	adc  h                                           ; $419a: $8c
	adc  b                                           ; $419b: $88
	add  b                                           ; $419c: $80
	ld   c, $82                                      ; $419d: $0e $82
	ld   b, $80                                      ; $419f: $06 $80
	ld   c, $02                                      ; $41a1: $0e $02
	ld   b, $0e                                      ; $41a3: $06 $0e
	nop                                              ; $41a5: $00

jr_075_41a6:
	add  c                                           ; $41a6: $81
	ld   c, $03                                      ; $41a7: $0e $03
	ld   bc, $9900                                   ; $41a9: $01 $00 $99
	xor  $82                                         ; $41ac: $ee $82
	ld   h, [hl]                                     ; $41ae: $66
	add  b                                           ; $41af: $80
	xor  $02                                         ; $41b0: $ee $02
	ld   h, [hl]                                     ; $41b2: $66
	xor  $00                                         ; $41b3: $ee $00
	add  c                                           ; $41b5: $81
	xor  $03                                         ; $41b6: $ee $03
	ld   de, $9100                                   ; $41b8: $11 $00 $91
	and  $80                                         ; $41bb: $e6 $80
	ld   l, [hl]                                     ; $41bd: $6e
	ld   [bc], a                                     ; $41be: $02
	and  $ee                                         ; $41bf: $e6 $ee
	ld   l, [hl]                                     ; $41c1: $6e
	add  c                                           ; $41c2: $81
	xor  $00                                         ; $41c3: $ee $00
	nop                                              ; $41c5: $00
	add  c                                           ; $41c6: $81
	xor  $02                                         ; $41c7: $ee $02
	ld   l, [hl]                                     ; $41c9: $6e
	ld   c, $96                                      ; $41ca: $0e $96
	add  b                                           ; $41cc: $80
	ld   [bc], a                                     ; $41cd: $02
	add  b                                           ; $41ce: $80
	nop                                              ; $41cf: $00
	add  d                                           ; $41d0: $82
	rlca                                             ; $41d1: $07
	add  b                                           ; $41d2: $80
	inc  bc                                          ; $41d3: $03
	add  b                                           ; $41d4: $80
	inc  b                                           ; $41d5: $04
	add  b                                           ; $41d6: $80
	ld   b, $01                                      ; $41d7: $06 $01
	rlca                                             ; $41d9: $07
	inc  bc                                          ; $41da: $03
	add  b                                           ; $41db: $80
	call nc, $dc02                                   ; $41dc: $d4 $02 $dc
	ret  c                                           ; $41df: $d8

	ld   e, b                                        ; $41e0: $58
	add  d                                           ; $41e1: $82
	ld   e, c                                        ; $41e2: $59
	nop                                              ; $41e3: $00
	ld   c, [hl]                                     ; $41e4: $4e
	add  b                                           ; $41e5: $80
	add  hl, hl                                      ; $41e6: $29
	inc  d                                           ; $41e7: $14
	ld   hl, $b129                                   ; $41e8: $21 $29 $b1
	call $c0c4                                       ; $41eb: $cd $c4 $c0
	ld   c, b                                        ; $41ee: $48
	ld   c, d                                        ; $41ef: $4a
	ld   h, b                                        ; $41f0: $60
	adc  [hl]                                        ; $41f1: $8e
	and  d                                           ; $41f2: $a2
	sbc  e                                           ; $41f3: $9b
	ld   d, l                                        ; $41f4: $55
	inc  a                                           ; $41f5: $3c
	dec  b                                           ; $41f6: $05
	inc  h                                           ; $41f7: $24
	inc  d                                           ; $41f8: $14
	call nc, $03d0                                   ; $41f9: $d4 $d0 $03
	or   $81                                         ; $41fc: $f6 $81
	halt                                             ; $41fe: $76
	nop                                              ; $41ff: $00
	ld   [hl], l                                     ; $4200: $75
	add  d                                           ; $4201: $82
	dec  [hl]                                        ; $4202: $35
	ld   [bc], a                                     ; $4203: $02
	dec  b                                           ; $4204: $05
	adc  b                                           ; $4205: $88
	ret  z                                           ; $4206: $c8

	add  b                                           ; $4207: $80
	adc  b                                           ; $4208: $88
	ld   bc, $e49b                                   ; $4209: $01 $9b $e4
	add  b                                           ; $420c: $80
	adc  a                                           ; $420d: $8f
	add  b                                           ; $420e: $80
	rrca                                             ; $420f: $0f
	add  c                                           ; $4210: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4211: $cf
	ld   [bc], a                                     ; $4212: $02
	ret  nz                                          ; $4213: $c0

	add  b                                           ; $4214: $80
	adc  [hl]                                        ; $4215: $8e
	add  b                                           ; $4216: $80
	ld   c, [hl]                                     ; $4217: $4e
	add  c                                           ; $4218: $81
	adc  $04                                         ; $4219: $ce $04
	ld   [$e3e5], sp                                 ; $421b: $08 $e5 $e3
	and  $e7                                         ; $421e: $e6 $e7
	add  b                                           ; $4220: $80
	ldh  [$15], a                                    ; $4221: $e0 $15
	and  $06                                         ; $4223: $e6 $06
	inc  b                                           ; $4225: $04
	db   $e4                                         ; $4226: $e4
	and  $e0                                         ; $4227: $e6 $e0
	rst  $20                                         ; $4229: $e7
	and  $e7                                         ; $422a: $e6 $e7
	cpl                                              ; $422c: $2f
	and  b                                           ; $422d: $a0
	sub  b                                           ; $422e: $90
	ld   c, d                                        ; $422f: $4a
	jp   z, $c383                                    ; $4230: $ca $83 $c3

	ld   b, a                                        ; $4233: $47
	ld   a, a                                        ; $4234: $7f
	dec  sp                                          ; $4235: $3b
	inc  bc                                          ; $4236: $03
	dec  sp                                          ; $4237: $3b
	dec  de                                          ; $4238: $1b
	add  b                                           ; $4239: $80
	sbc  l                                           ; $423a: $9d
	dec  b                                           ; $423b: $05
	db   $dd                                         ; $423c: $dd
	ld   c, a                                        ; $423d: $4f
	ld   [$4246], sp                                 ; $423e: $08 $46 $42
	ld   a, [hl]                                     ; $4241: $7e
	add  b                                           ; $4242: $80
	inc  a                                           ; $4243: $3c
	nop                                              ; $4244: $00
	nop                                              ; $4245: $00
	add  b                                           ; $4246: $80
	rlca                                             ; $4247: $07
	add  b                                           ; $4248: $80
	rrca                                             ; $4249: $0f
	add  b                                           ; $424a: $80
	rlca                                             ; $424b: $07
	inc  bc                                          ; $424c: $03
	db   $10                                         ; $424d: $10
	jr   c, @+$22                                    ; $424e: $38 $20

	ld   [$0080], sp                                 ; $4250: $08 $80 $00
	add  b                                           ; $4253: $80
	inc  c                                           ; $4254: $0c
	add  b                                           ; $4255: $80
	inc  a                                           ; $4256: $3c
	add  b                                           ; $4257: $80
	ld   a, b                                        ; $4258: $78
	add  c                                           ; $4259: $81
	add  b                                           ; $425a: $80
	add  c                                           ; $425b: $81
	adc  b                                           ; $425c: $88
	ld   bc, $01f7                                   ; $425d: $01 $f7 $01
	add  b                                           ; $4260: $80
	ld   b, c                                        ; $4261: $41
	ld   [$f551], sp                                 ; $4262: $08 $51 $f5
	ld   b, l                                        ; $4265: $45
	push af                                          ; $4266: $f5
	ld   b, l                                        ; $4267: $45
	db   $fd                                         ; $4268: $fd
	db   $ed                                         ; $4269: $ed
	db   $fd                                         ; $426a: $fd
	cp   [hl]                                        ; $426b: $be
	add  b                                           ; $426c: $80
	inc  bc                                          ; $426d: $03
	ld   bc, $7cff                                   ; $426e: $01 $ff $7c
	add  e                                           ; $4271: $83
	rra                                              ; $4272: $1f
	add  e                                           ; $4273: $83
	rrca                                             ; $4274: $0f
	add  d                                           ; $4275: $82
	rlca                                             ; $4276: $07
	inc  bc                                          ; $4277: $03
	inc  bc                                          ; $4278: $03
	xor  l                                           ; $4279: $ad
	ret  nz                                          ; $427a: $c0

	pop  bc                                          ; $427b: $c1
	add  c                                           ; $427c: $81
	ret  nz                                          ; $427d: $c0

	add  b                                           ; $427e: $80
	and  $80                                         ; $427f: $e6 $80
	db   $ed                                         ; $4281: $ed
	add  b                                           ; $4282: $80
	ld   hl, sp-$80                                  ; $4283: $f8 $80
	call $8680                                       ; $4285: $cd $80 $86
	ld   bc, $10e0                                   ; $4288: $01 $e0 $10
	add  b                                           ; $428b: $80
	jr   nc, jr_075_4290                             ; $428c: $30 $02

	ret  nz                                          ; $428e: $c0

	ld   d, b                                        ; $428f: $50

jr_075_4290:
	rla                                              ; $4290: $17
	add  b                                           ; $4291: $80
	sub  a                                           ; $4292: $97
	ld   [bc], a                                     ; $4293: $02
	rla                                              ; $4294: $17
	res  5, e                                        ; $4295: $cb $ab
	add  b                                           ; $4297: $80
	ld   d, l                                        ; $4298: $55
	add  b                                           ; $4299: $80
	and  h                                           ; $429a: $a4
	nop                                              ; $429b: $00
	rst  $30                                         ; $429c: $f7
	add  b                                           ; $429d: $80
	rrca                                             ; $429e: $0f
	ld   bc, $0008                                   ; $429f: $01 $08 $00
	add  b                                           ; $42a2: $80
	rlca                                             ; $42a3: $07
	inc  bc                                          ; $42a4: $03
	ld   b, $07                                      ; $42a5: $06 $07
	inc  b                                           ; $42a7: $04
	dec  b                                           ; $42a8: $05
	add  b                                           ; $42a9: $80
	inc  b                                           ; $42aa: $04
	add  c                                           ; $42ab: $81
	nop                                              ; $42ac: $00
	nop                                              ; $42ad: $00
	inc  bc                                          ; $42ae: $03
	add  b                                           ; $42af: $80
	rst  $38                                         ; $42b0: $ff
	ld   a, [bc]                                     ; $42b1: $0a
	inc  bc                                          ; $42b2: $03
	ld   h, b                                        ; $42b3: $60
	dec  e                                           ; $42b4: $1d
	cp   l                                           ; $42b5: $bd
	dec  c                                           ; $42b6: $0d
	dec  a                                           ; $42b7: $3d
	dec  b                                           ; $42b8: $05
	ld   d, l                                        ; $42b9: $55
	ld   b, l                                        ; $42ba: $45
	dec  b                                           ; $42bb: $05
	ld   bc, $e180                                   ; $42bc: $01 $80 $e1
	nop                                              ; $42bf: $00
	sbc  [hl]                                        ; $42c0: $9e
	adc  l                                           ; $42c1: $8d
	ld   b, b                                        ; $42c2: $40
	nop                                              ; $42c3: $00
	ret  c                                           ; $42c4: $d8

	add  d                                           ; $42c5: $82
	inc  b                                           ; $42c6: $04
	add  d                                           ; $42c7: $82
	rlca                                             ; $42c8: $07
	add  b                                           ; $42c9: $80
	inc  b                                           ; $42ca: $04
	nop                                              ; $42cb: $00
	rlca                                             ; $42cc: $07
	add  d                                           ; $42cd: $82
	nop                                              ; $42ce: $00
	ld   b, $18                                      ; $42cf: $06 $18
	ret  nc                                          ; $42d1: $d0

	call nc, Call_075_5a58                           ; $42d2: $d4 $58 $5a
	db   $ec                                         ; $42d5: $ec
	db   $ed                                         ; $42d6: $ed
	add  b                                           ; $42d7: $80
	add  $80                                         ; $42d8: $c6 $80
	inc  bc                                          ; $42da: $03
	nop                                              ; $42db: $00
	rst  $38                                         ; $42dc: $ff
	add  d                                           ; $42dd: $82
	nop                                              ; $42de: $00
	ld   bc, $494d                                   ; $42df: $01 $4d $49
	add  b                                           ; $42e2: $80
	adc  c                                           ; $42e3: $89
	inc  b                                           ; $42e4: $04
	ld   c, [hl]                                     ; $42e5: $4e
	ld   c, d                                        ; $42e6: $4a
	xor  e                                           ; $42e7: $ab
	jr   nz, jr_075_435e                             ; $42e8: $20 $74

	add  b                                           ; $42ea: $80
	add  e                                           ; $42eb: $83
	nop                                              ; $42ec: $00
	rst  $38                                         ; $42ed: $ff
	add  d                                           ; $42ee: $82
	nop                                              ; $42ef: $00
	inc  b                                           ; $42f0: $04
	cp   a                                           ; $42f1: $bf
	sub  [hl]                                        ; $42f2: $96
	ld   d, [hl]                                     ; $42f3: $56
	inc  [hl]                                        ; $42f4: $34
	or   h                                           ; $42f5: $b4
	add  b                                           ; $42f6: $80
	ld   l, a                                        ; $42f7: $6f
	add  b                                           ; $42f8: $80
	rst  ToBoot                                         ; $42f9: $c7
	add  b                                           ; $42fa: $80
	add  b                                           ; $42fb: $80
	nop                                              ; $42fc: $00
	rst  $38                                         ; $42fd: $ff
	add  d                                           ; $42fe: $82
	nop                                              ; $42ff: $00
	nop                                              ; $4300: $00
	pop  bc                                          ; $4301: $c1
	add  d                                           ; $4302: $82
	ld   c, [hl]                                     ; $4303: $4e
	add  c                                           ; $4304: $81
	adc  $80                                         ; $4305: $ce $80
	ret  nz                                          ; $4307: $c0

	add  b                                           ; $4308: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4309: $cf
	add  d                                           ; $430a: $82
	rrca                                             ; $430b: $0f
	ld   bc, $e708                                   ; $430c: $01 $08 $e7
	add  b                                           ; $430f: $80
	jp   hl                                          ; $4310: $e9


	add  b                                           ; $4311: $80
	rst  $28                                         ; $4312: $ef
	add  b                                           ; $4313: $80
	db   $eb                                         ; $4314: $eb
	add  b                                           ; $4315: $80
	inc  c                                           ; $4316: $0c
	add  b                                           ; $4317: $80
	rst  $20                                         ; $4318: $e7
	add  d                                           ; $4319: $82
	ldh  [$0b], a                                    ; $431a: $e0 $0b
	ld   l, a                                        ; $431c: $6f
	adc  $06                                         ; $431d: $ce $06
	ld   h, [hl]                                     ; $431f: $66
	ld   h, e                                        ; $4320: $63
	ld   h, c                                        ; $4321: $61
	db   $e3                                         ; $4322: $e3
	di                                               ; $4323: $f3
	db   $d3                                         ; $4324: $d3
	ei                                               ; $4325: $fb
	sbc  e                                           ; $4326: $9b
	add  b                                           ; $4327: $80
	add  d                                           ; $4328: $82
	nop                                              ; $4329: $00
	ld   a, [bc]                                     ; $432a: $0a
	add  e                                           ; $432b: $83
	ld   a, [hl]                                     ; $432c: $7e
	dec  c                                           ; $432d: $0d
	rrca                                             ; $432e: $0f
	push bc                                          ; $432f: $c5
	rst  $30                                         ; $4330: $f7
	ld   b, d                                        ; $4331: $42
	ld   a, b                                        ; $4332: $78
	cp   b                                           ; $4333: $b8
	cp   [hl]                                        ; $4334: $be
	pop  af                                          ; $4335: $f1
	add  e                                           ; $4336: $83
	nop                                              ; $4337: $00
	ld   a, [bc]                                     ; $4338: $0a
	rst  $38                                         ; $4339: $ff
	nop                                              ; $433a: $00
	jr   z, jr_075_434d                              ; $433b: $28 $10

	ld   h, b                                        ; $433d: $60
	jr   nz, jr_075_4390                             ; $433e: $20 $50

	ld   d, h                                        ; $4340: $54
	db   $ec                                         ; $4341: $ec
	xor  h                                           ; $4342: $ac
	jp   $0083                                       ; $4343: $c3 $83 $00


	nop                                              ; $4346: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4347: $cf
	add  a                                           ; $4348: $87
	nop                                              ; $4349: $00
	nop                                              ; $434a: $00
	ret  nz                                          ; $434b: $c0

	add  e                                           ; $434c: $83

jr_075_434d:
	nop                                              ; $434d: $00
	ld   bc, $21be                                   ; $434e: $01 $be $21
	add  b                                           ; $4351: $80
	ld   b, b                                        ; $4352: $40
	add  hl, bc                                      ; $4353: $09
	cpl                                              ; $4354: $2f
	jr   nz, jr_075_439f                             ; $4355: $20 $48

	ld   d, [hl]                                     ; $4357: $56
	ld   a, $3f                                      ; $4358: $3e $3f
	ld   e, a                                        ; $435a: $5f
	ld   e, [hl]                                     ; $435b: $5e
	ld   a, $3f                                      ; $435c: $3e $3f

jr_075_435e:
	add  b                                           ; $435e: $80
	ld   e, a                                        ; $435f: $5f
	ld   bc, $e39c                                   ; $4360: $01 $9c $e3
	add  b                                           ; $4363: $80
	ld   sp, hl                                      ; $4364: $f9
	add  b                                           ; $4365: $80
	db   $fc                                         ; $4366: $fc
	ld   b, $0e                                      ; $4367: $06 $0e
	ld   e, $10                                      ; $4369: $1e $10
	rra                                              ; $436b: $1f
	add  hl, de                                      ; $436c: $19
	rra                                              ; $436d: $1f
	add  hl, de                                      ; $436e: $19
	add  b                                           ; $436f: $80
	ldh  [rSC], a                                    ; $4370: $e0 $02
	rst  $38                                         ; $4372: $ff
	di                                               ; $4373: $f3
	inc  c                                           ; $4374: $0c
	add  b                                           ; $4375: $80
	sbc  b                                           ; $4376: $98
	add  b                                           ; $4377: $80
	or   d                                           ; $4378: $b2
	ld   b, $e6                                      ; $4379: $06 $e6
	rst  $20                                         ; $437b: $e7
	ld   bc, $95ff                                   ; $437c: $01 $ff $95
	rst  $38                                         ; $437f: $ff
	sub  l                                           ; $4380: $95
	add  b                                           ; $4381: $80
	nop                                              ; $4382: $00
	nop                                              ; $4383: $00
	rst  $38                                         ; $4384: $ff
	add  d                                           ; $4385: $82
	nop                                              ; $4386: $00
	ld   bc, $0401                                   ; $4387: $01 $01 $04
	add  b                                           ; $438a: $80
	dec  b                                           ; $438b: $05
	ld   bc, $0604                                   ; $438c: $01 $04 $06
	add  b                                           ; $438f: $80

jr_075_4390:
	rlca                                             ; $4390: $07
	nop                                              ; $4391: $00
	rrca                                             ; $4392: $0f
	add  b                                           ; $4393: $80
	ld   [$0f06], sp                                 ; $4394: $08 $06 $0f
	rlca                                             ; $4397: $07
	ld   bc, $0141                                   ; $4398: $01 $41 $01
	ld   de, $80a5                                   ; $439b: $11 $a5 $80
	dec  d                                           ; $439e: $15

jr_075_439f:
	ld   bc, $ada5                                   ; $439f: $01 $a5 $ad
	add  b                                           ; $43a2: $80
	cp   l                                           ; $43a3: $bd
	nop                                              ; $43a4: $00
	cp   $80                                         ; $43a5: $fe $80
	inc  bc                                          ; $43a7: $03
	ld   bc, $fcff                                   ; $43a8: $01 $ff $fc
	add  c                                           ; $43ab: $81
	nop                                              ; $43ac: $00
	ld   [$0501], sp                                 ; $43ad: $08 $01 $05
	inc  b                                           ; $43b0: $04
	dec  b                                           ; $43b1: $05
	inc  b                                           ; $43b2: $04
	rlca                                             ; $43b3: $07
	ld   b, $07                                      ; $43b4: $06 $07
	rrca                                             ; $43b6: $0f
	add  b                                           ; $43b7: $80
	ld   [$0f01], sp                                 ; $43b8: $08 $01 $0f
	rst  $38                                         ; $43bb: $ff
	add  b                                           ; $43bc: $80
	rlca                                             ; $43bd: $07
	add  h                                           ; $43be: $84
	nop                                              ; $43bf: $00
	add  b                                           ; $43c0: $80
	rlca                                             ; $43c1: $07
	add  b                                           ; $43c2: $80
	inc  bc                                          ; $43c3: $03
	inc  bc                                          ; $43c4: $03
	inc  b                                           ; $43c5: $04
	inc  c                                           ; $43c6: $0c
	ld   bc, $80f1                                   ; $43c7: $01 $f1 $80
	rst  $38                                         ; $43ca: $ff
	add  b                                           ; $43cb: $80
	rrca                                             ; $43cc: $0f
	add  d                                           ; $43cd: $82
	nop                                              ; $43ce: $00
	add  b                                           ; $43cf: $80
	rst  $38                                         ; $43d0: $ff
	add  b                                           ; $43d1: $80
	inc  bc                                          ; $43d2: $03
	add  b                                           ; $43d3: $80
	ld   a, b                                        ; $43d4: $78
	ld   bc, $7efe                                   ; $43d5: $01 $fe $7e
	add  c                                           ; $43d8: $81
	ld   a, a                                        ; $43d9: $7f
	add  c                                           ; $43da: $81
	rst  $38                                         ; $43db: $ff
	add  b                                           ; $43dc: $80
	add  a                                           ; $43dd: $87
	add  b                                           ; $43de: $80
	rst  $38                                         ; $43df: $ff
	add  b                                           ; $43e0: $80
	ld   bc, $4180                                   ; $43e1: $01 $80 $41
	add  b                                           ; $43e4: $80
	ld   hl, $ff85                                   ; $43e5: $21 $85 $ff
	add  b                                           ; $43e8: $80
	ldh  [rP1], a                                    ; $43e9: $e0 $00
	rst  $38                                         ; $43eb: $ff
	add  b                                           ; $43ec: $80
	rra                                              ; $43ed: $1f
	add  b                                           ; $43ee: $80
	inc  bc                                          ; $43ef: $03
	ld   bc, $8000                                   ; $43f0: $01 $00 $80
	add  l                                           ; $43f3: $85
	ld   a, a                                        ; $43f4: $7f
	add  b                                           ; $43f5: $80
	nop                                              ; $43f6: $00
	add  e                                           ; $43f7: $83
	cp   $01                                         ; $43f8: $fe $01
	ld   a, $3f                                      ; $43fa: $3e $3f
	add  l                                           ; $43fc: $85
	rst  $38                                         ; $43fd: $ff
	add  b                                           ; $43fe: $80
	nop                                              ; $43ff: $00
	add  h                                           ; $4400: $84
	rst  $38                                         ; $4401: $ff
	add  [hl]                                        ; $4402: $86
	ld   a, a                                        ; $4403: $7f
	add  b                                           ; $4404: $80
	nop                                              ; $4405: $00
	add  h                                           ; $4406: $84
	db   $fd                                         ; $4407: $fd
	add  [hl]                                        ; $4408: $86
	rst  $38                                         ; $4409: $ff
	add  b                                           ; $440a: $80
	nop                                              ; $440b: $00
	add  b                                           ; $440c: $80
	rst  $38                                         ; $440d: $ff
	add  d                                           ; $440e: $82
	ld   hl, sp-$77                                  ; $440f: $f8 $89
	nop                                              ; $4411: $00
	add  d                                           ; $4412: $82
	rst  $38                                         ; $4413: $ff
	adc  c                                           ; $4414: $89
	nop                                              ; $4415: $00
	ld   bc, $fc3c                                   ; $4416: $01 $3c $fc
	add  c                                           ; $4419: $81
	ret  nz                                          ; $441a: $c0

	add  b                                           ; $441b: $80
	nop                                              ; $441c: $00
	nop                                              ; $441d: $00
	ld   a, a                                        ; $441e: $7f
	add  h                                           ; $441f: $84
	ld   [hl], b                                     ; $4420: $70
	add  c                                           ; $4421: $81
	ld   a, a                                        ; $4422: $7f
	ld   bc, $7f70                                   ; $4423: $01 $70 $7f
	add  c                                           ; $4426: $81
	ld   [hl], b                                     ; $4427: $70
	nop                                              ; $4428: $00
	add  b                                           ; $4429: $80
	add  b                                           ; $442a: $80
	rst  $38                                         ; $442b: $ff
	add  b                                           ; $442c: $80
	daa                                              ; $442d: $27
	add  b                                           ; $442e: $80
	ld   c, [hl]                                     ; $442f: $4e
	add  b                                           ; $4430: $80
	inc  e                                           ; $4431: $1c
	rlca                                             ; $4432: $07
	rst  $38                                         ; $4433: $ff
	cp   $82                                         ; $4434: $fe $82
	adc  e                                           ; $4436: $8b
	sub  e                                           ; $4437: $93
	add  e                                           ; $4438: $83
	and  e                                           ; $4439: $a3
	db   $db                                         ; $443a: $db
	add  a                                           ; $443b: $87
	sbc  a                                           ; $443c: $9f
	add  b                                           ; $443d: $80
	db   $10                                         ; $443e: $10
	add  d                                           ; $443f: $82
	sbc  a                                           ; $4440: $9f
	ld   [bc], a                                     ; $4441: $02
	rst  $38                                         ; $4442: $ff
	nop                                              ; $4443: $00
	ld   c, $80                                      ; $4444: $0e $80
	inc  bc                                          ; $4446: $03
	nop                                              ; $4447: $00
	ld   bc, $0080                                   ; $4448: $01 $80 $00
	add  e                                           ; $444b: $83
	inc  b                                           ; $444c: $04
	dec  b                                           ; $444d: $05
	dec  c                                           ; $444e: $0d
	inc  b                                           ; $444f: $04
	dec  c                                           ; $4450: $0d
	rrca                                             ; $4451: $0f
	nop                                              ; $4452: $00
	xor  $80                                         ; $4453: $ee $80
	inc  sp                                          ; $4455: $33
	nop                                              ; $4456: $00
	ld   de, $0080                                   ; $4457: $11 $80 $00
	add  e                                           ; $445a: $83
	sub  d                                           ; $445b: $92
	dec  d                                           ; $445c: $15
	or   [hl]                                        ; $445d: $b6
	sub  d                                           ; $445e: $92
	or   [hl]                                        ; $445f: $b6
	add  b                                           ; $4460: $80
	ld   b, b                                        ; $4461: $40
	pop  bc                                          ; $4462: $c1
	ret  nz                                          ; $4463: $c0

	add  $c0                                         ; $4464: $c6 $c0
	reti                                             ; $4466: $d9


	pop  bc                                          ; $4467: $c1
	and  $c7                                         ; $4468: $e6 $c7
	adc  c                                           ; $446a: $89
	adc  d                                           ; $446b: $8a
	sub  d                                           ; $446c: $92
	sub  l                                           ; $446d: $95
	and  l                                           ; $446e: $a5
	xor  d                                           ; $446f: $aa
	pop  af                                          ; $4470: $f1
	inc  bc                                          ; $4471: $03
	ld   hl, sp-$80                                  ; $4472: $f8 $80
	ld   bc, $0000                                   ; $4474: $01 $00 $00
	add  b                                           ; $4477: $80
	cp   $80                                         ; $4478: $fe $80
	ld   bc, $0000                                   ; $447a: $01 $00 $00
	add  b                                           ; $447d: $80
	and  b                                           ; $447e: $a0
	add  b                                           ; $447f: $80
	ld   b, l                                        ; $4480: $45
	dec  hl                                          ; $4481: $2b
	xor  d                                           ; $4482: $aa
	xor  e                                           ; $4483: $ab
	rst  $38                                         ; $4484: $ff
	ld   sp, hl                                      ; $4485: $f9
	rst  $38                                         ; $4486: $ff
	add  h                                           ; $4487: $84
	ld   a, a                                        ; $4488: $7f
	dec  de                                          ; $4489: $1b
	rra                                              ; $448a: $1f
	sub  a                                           ; $448b: $97
	sbc  a                                           ; $448c: $9f
	ld   l, [hl]                                     ; $448d: $6e
	ld   a, a                                        ; $448e: $7f
	ld   a, $7f                                      ; $448f: $3e $7f
	ld   b, a                                        ; $4491: $47
	xor  a                                           ; $4492: $af
	ld   [hl], a                                     ; $4493: $77
	rst  $38                                         ; $4494: $ff
	ccf                                              ; $4495: $3f
	rst  $38                                         ; $4496: $ff
	cp   $ff                                         ; $4497: $fe $ff
	ei                                               ; $4499: $fb
	rst  $38                                         ; $449a: $ff
	ld   l, l                                        ; $449b: $6d
	rst  $38                                         ; $449c: $ff
	ldh  a, [c]                                      ; $449d: $f2
	rst  $38                                         ; $449e: $ff
	ld   c, d                                        ; $449f: $4a
	rst  $38                                         ; $44a0: $ff
	call z, $e2ff                                    ; $44a1: $cc $ff $e2
	pop  bc                                          ; $44a4: $c1
	jp   nz, $f0f7                                   ; $44a5: $c2 $f7 $f0

	rst  $38                                         ; $44a8: $ff
	ld   hl, sp-$01                                  ; $44a9: $f8 $ff
	call c, $deff                                    ; $44ab: $dc $ff $de
	add  c                                           ; $44ae: $81
	rst  $38                                         ; $44af: $ff
	ld   [de], a                                     ; $44b0: $12
	cp   $ff                                         ; $44b1: $fe $ff
	add  c                                           ; $44b3: $81
	ld   hl, sp+$38                                  ; $44b4: $f8 $38
	db   $fc                                         ; $44b6: $fc
	ccf                                              ; $44b7: $3f
	rst  $38                                         ; $44b8: $ff
	ld   [hl], e                                     ; $44b9: $73
	rst  $38                                         ; $44ba: $ff
	adc  $fe                                         ; $44bb: $ce $fe
	or   b                                           ; $44bd: $b0
	rst  $38                                         ; $44be: $ff
	rst  $30                                         ; $44bf: $f7
	ld   a, h                                        ; $44c0: $7c
	dec  sp                                          ; $44c1: $3b
	cp   a                                           ; $44c2: $bf
	add  b                                           ; $44c3: $80
	add  c                                           ; $44c4: $81
	rst  $38                                         ; $44c5: $ff
	rlca                                             ; $44c6: $07
	rlca                                             ; $44c7: $07
	rst  $38                                         ; $44c8: $ff
	cp   c                                           ; $44c9: $b9
	cp   a                                           ; $44ca: $bf
	ld   h, $a7                                      ; $44cb: $26 $a7
	db   $db                                         ; $44cd: $db
	ld   e, e                                        ; $44ce: $5b
	add  b                                           ; $44cf: $80
	rst  JumpTable                                         ; $44d0: $df
	add  b                                           ; $44d1: $80
	rst  $38                                         ; $44d2: $ff
	nop                                              ; $44d3: $00
	nop                                              ; $44d4: $00
	add  d                                           ; $44d5: $82
	rst  $38                                         ; $44d6: $ff
	add  b                                           ; $44d7: $80
	nop                                              ; $44d8: $00
	add  b                                           ; $44d9: $80
	rst  $38                                         ; $44da: $ff
	ld   bc, $ff7f                                   ; $44db: $01 $7f $ff
	add  b                                           ; $44de: $80
	add  b                                           ; $44df: $80
	inc  bc                                          ; $44e0: $03
	cp   a                                           ; $44e1: $bf
	rrca                                             ; $44e2: $0f
	ccf                                              ; $44e3: $3f
	rrca                                             ; $44e4: $0f
	add  d                                           ; $44e5: $82
	ei                                               ; $44e6: $fb
	add  b                                           ; $44e7: $80
	nop                                              ; $44e8: $00
	add  d                                           ; $44e9: $82
	ei                                               ; $44ea: $fb
	add  b                                           ; $44eb: $80
	nop                                              ; $44ec: $00
	add  d                                           ; $44ed: $82
	ei                                               ; $44ee: $fb
	add  d                                           ; $44ef: $82
	rst  $38                                         ; $44f0: $ff
	add  b                                           ; $44f1: $80
	nop                                              ; $44f2: $00
	add  d                                           ; $44f3: $82
	rst  $38                                         ; $44f4: $ff
	add  b                                           ; $44f5: $80
	nop                                              ; $44f6: $00
	add  c                                           ; $44f7: $81
	rst  $38                                         ; $44f8: $ff
	ld   bc, $fcc3                                   ; $44f9: $01 $c3 $fc
	add  c                                           ; $44fc: $81
	ret  nz                                          ; $44fd: $c0

	ld   [bc], a                                     ; $44fe: $02
	nop                                              ; $44ff: $00
	ld   a, h                                        ; $4500: $7c
	db   $fc                                         ; $4501: $fc
	add  c                                           ; $4502: $81
	add  b                                           ; $4503: $80
	nop                                              ; $4504: $00
	nop                                              ; $4505: $00
	add  b                                           ; $4506: $80
	db   $fc                                         ; $4507: $fc
	add  b                                           ; $4508: $80
	nop                                              ; $4509: $00
	nop                                              ; $450a: $00
	rrca                                             ; $450b: $0f
	adc  l                                           ; $450c: $8d
	ld   [hl], b                                     ; $450d: $70
	inc  b                                           ; $450e: $04
	add  b                                           ; $450f: $80
	add  e                                           ; $4510: $83
	sub  e                                           ; $4511: $93
	add  e                                           ; $4512: $83
	sub  e                                           ; $4513: $93
	add  b                                           ; $4514: $80
	add  d                                           ; $4515: $82
	nop                                              ; $4516: $00
	sub  e                                           ; $4517: $93
	add  b                                           ; $4518: $80
	add  e                                           ; $4519: $83
	nop                                              ; $451a: $00
	sub  e                                           ; $451b: $93
	add  b                                           ; $451c: $80
	add  e                                           ; $451d: $83
	add  b                                           ; $451e: $80
	rst  $38                                         ; $451f: $ff
	ld   bc, $daba                                   ; $4520: $01 $ba $da
	add  b                                           ; $4523: $80
	sbc  a                                           ; $4524: $9f
	add  b                                           ; $4525: $80
	rra                                              ; $4526: $1f
	add  b                                           ; $4527: $80
	sbc  a                                           ; $4528: $9f
	add  b                                           ; $4529: $80
	sbc  [hl]                                        ; $452a: $9e
	add  b                                           ; $452b: $80
	sbc  l                                           ; $452c: $9d
	add  b                                           ; $452d: $80
	sbc  d                                           ; $452e: $9a
	add  b                                           ; $452f: $80
	inc  d                                           ; $4530: $14
	ld   [bc], a                                     ; $4531: $02
	jr   jr_075_45ab                                 ; $4532: $18 $77

	ld   a, [bc]                                     ; $4534: $0a
	add  d                                           ; $4535: $82
	nop                                              ; $4536: $00
	add  b                                           ; $4537: $80
	ld   a, [bc]                                     ; $4538: $0a
	nop                                              ; $4539: $00

jr_075_453a:
	dec  b                                           ; $453a: $05
	add  l                                           ; $453b: $85
	rrca                                             ; $453c: $0f
	nop                                              ; $453d: $00
	ld   [hl], b                                     ; $453e: $70
	add  b                                           ; $453f: $80
	ld   [hl], $80                                   ; $4540: $36 $80
	ld   a, [de]                                     ; $4542: $1a
	nop                                              ; $4543: $00
	add  b                                           ; $4544: $80
	add  l                                           ; $4545: $85
	nop                                              ; $4546: $00
	add  b                                           ; $4547: $80
	rlca                                             ; $4548: $07
	ld   de, $001f                                   ; $4549: $11 $1f $00
	push de                                          ; $454c: $d5
	push bc                                          ; $454d: $c5
	jp   z, $c5c2                                    ; $454e: $ca $c2 $c5

	ret  nz                                          ; $4551: $c0

	jp   $c0c1                                       ; $4552: $c3 $c1 $c0


	push bc                                          ; $4555: $c5
	rst  ToBoot                                         ; $4556: $c7
	db   $dd                                         ; $4557: $dd
	rst  JumpTable                                         ; $4558: $df
	rlca                                             ; $4559: $07
	rst  $38                                         ; $455a: $ff
	rst  ToBoot                                         ; $455b: $c7
	add  b                                           ; $455c: $80
	ld   d, l                                        ; $455d: $55
	ld   de, $52aa                                   ; $455e: $11 $aa $52
	db   $fd                                         ; $4561: $fd
	ld   hl, sp-$02                                  ; $4562: $f8 $fe
	db   $fc                                         ; $4564: $fc
	nop                                              ; $4565: $00
	db   $fc                                         ; $4566: $fc
	rst  $38                                         ; $4567: $ff
	sbc  h                                           ; $4568: $9c
	rst  $38                                         ; $4569: $ff
	ld   e, c                                        ; $456a: $59
	rst  $38                                         ; $456b: $ff
	dec  b                                           ; $456c: $05
	ld   a, a                                        ; $456d: $7f
	dec  a                                           ; $456e: $3d
	ld   sp, hl                                      ; $456f: $f9
	ld   a, b                                        ; $4570: $78
	add  b                                           ; $4571: $80
	db   $10                                         ; $4572: $10
	add  c                                           ; $4573: $81
	nop                                              ; $4574: $00
	dec  b                                           ; $4575: $05
	inc  l                                           ; $4576: $2c
	db   $fc                                         ; $4577: $fc
	ld   h, b                                        ; $4578: $60
	ldh  a, [$80]                                    ; $4579: $f0 $80
	ret  nz                                          ; $457b: $c0

	add  b                                           ; $457c: $80
	rst  $38                                         ; $457d: $ff
	add  b                                           ; $457e: $80
	ldh  [rSC], a                                    ; $457f: $e0 $02
	ret  nz                                          ; $4581: $c0

	push de                                          ; $4582: $d5
	dec  d                                           ; $4583: $15
	add  b                                           ; $4584: $80
	ld   a, [hl+]                                    ; $4585: $2a
	add  b                                           ; $4586: $80
	dec  d                                           ; $4587: $15
	add  b                                           ; $4588: $80
	ld   c, $80                                      ; $4589: $0e $80
	ld   a, [bc]                                     ; $458b: $0a
	rlca                                             ; $458c: $07
	nop                                              ; $458d: $00
	db   $fc                                         ; $458e: $fc
	rst  $38                                         ; $458f: $ff
	ld   a, e                                        ; $4590: $7b
	ld   a, c                                        ; $4591: $79
	ld   sp, $0030                                   ; $4592: $31 $30 $00
	add  b                                           ; $4595: $80
	ret  nz                                          ; $4596: $c0

	add  hl, bc                                      ; $4597: $09
	add  b                                           ; $4598: $80
	add  h                                           ; $4599: $84
	ld   e, $10                                      ; $459a: $1e $10
	ccf                                              ; $459c: $3f
	adc  d                                           ; $459d: $8a
	rst  $38                                         ; $459e: $ff
	ld   e, h                                        ; $459f: $5c
	sbc  h                                           ; $45a0: $9c
	add  b                                           ; $45a1: $80
	add  b                                           ; $45a2: $80
	add  e                                           ; $45a3: $83
	add  b                                           ; $45a4: $80
	dec  b                                           ; $45a5: $05
	add  b                                           ; $45a6: $80
	ld   [bc], a                                     ; $45a7: $02
	add  b                                           ; $45a8: $80
	nop                                              ; $45a9: $00
	add  hl, bc                                      ; $45aa: $09

jr_075_45ab:
	ld   de, $feb9                                   ; $45ab: $11 $b9 $fe
	and  e                                           ; $45ae: $a3
	rst  $38                                         ; $45af: $ff
	inc  d                                           ; $45b0: $14
	ld   e, $04                                      ; $45b1: $1e $04
	ld   b, h                                        ; $45b3: $44
	ld   b, b                                        ; $45b4: $40
	add  b                                           ; $45b5: $80
	ld   e, b                                        ; $45b6: $58
	add  b                                           ; $45b7: $80
	jr   nc, jr_075_453a                             ; $45b8: $30 $80

	and  b                                           ; $45ba: $a0
	add  b                                           ; $45bb: $80
	ld   b, b                                        ; $45bc: $40
	add  b                                           ; $45bd: $80
	rlca                                             ; $45be: $07
	add  b                                           ; $45bf: $80
	rst  $38                                         ; $45c0: $ff
	dec  bc                                          ; $45c1: $0b
	nop                                              ; $45c2: $00
	ld   a, b                                        ; $45c3: $78
	ld   a, a                                        ; $45c4: $7f
	rst  $30                                         ; $45c5: $f7
	rst  $38                                         ; $45c6: $ff
	rrca                                             ; $45c7: $0f
	nop                                              ; $45c8: $00
	ret  nz                                          ; $45c9: $c0

	rst  $38                                         ; $45ca: $ff
	cp   a                                           ; $45cb: $bf
	rst  $38                                         ; $45cc: $ff
	ld   a, a                                        ; $45cd: $7f
	add  b                                           ; $45ce: $80
	nop                                              ; $45cf: $00
	add  b                                           ; $45d0: $80
	rst  $38                                         ; $45d1: $ff
	add  b                                           ; $45d2: $80
	nop                                              ; $45d3: $00
	add  d                                           ; $45d4: $82
	ei                                               ; $45d5: $fb
	add  b                                           ; $45d6: $80
	nop                                              ; $45d7: $00
	add  d                                           ; $45d8: $82
	ei                                               ; $45d9: $fb
	add  b                                           ; $45da: $80
	nop                                              ; $45db: $00
	add  b                                           ; $45dc: $80
	rst  $38                                         ; $45dd: $ff
	ld   [bc], a                                     ; $45de: $02
	nop                                              ; $45df: $00
	ld   bc, $81ff                                   ; $45e0: $01 $ff $81
	cp   $02                                         ; $45e3: $fe $02
	nop                                              ; $45e5: $00
	inc  bc                                          ; $45e6: $03
	rst  $38                                         ; $45e7: $ff
	add  c                                           ; $45e8: $81
	db   $fc                                         ; $45e9: $fc
	add  b                                           ; $45ea: $80
	nop                                              ; $45eb: $00
	add  b                                           ; $45ec: $80
	ldh  [rP1], a                                    ; $45ed: $e0 $00
	nop                                              ; $45ef: $00
	add  b                                           ; $45f0: $80
	db   $fc                                         ; $45f1: $fc
	add  d                                           ; $45f2: $82
	nop                                              ; $45f3: $00
	add  b                                           ; $45f4: $80
	db   $fc                                         ; $45f5: $fc
	add  h                                           ; $45f6: $84
	nop                                              ; $45f7: $00
	nop                                              ; $45f8: $00
	rrca                                             ; $45f9: $0f
	add  l                                           ; $45fa: $85
	ld   [hl], b                                     ; $45fb: $70
	add  l                                           ; $45fc: $85
	ld   a, a                                        ; $45fd: $7f
	ld   bc, $ff00                                   ; $45fe: $01 $00 $ff
	add  l                                           ; $4601: $85
	nop                                              ; $4602: $00
	add  l                                           ; $4603: $85
	rst  $38                                         ; $4604: $ff
	ld   [bc], a                                     ; $4605: $02
	nop                                              ; $4606: $00
	adc  a                                           ; $4607: $8f
	db   $10                                         ; $4608: $10
	add  h                                           ; $4609: $84
	nop                                              ; $460a: $00
	nop                                              ; $460b: $00
	sbc  a                                           ; $460c: $9f
	add  h                                           ; $460d: $84
	rst  $38                                         ; $460e: $ff
	ld   bc, $f000                                   ; $460f: $01 $00 $f0
	add  h                                           ; $4612: $84
	rrca                                             ; $4613: $0f
	add  b                                           ; $4614: $80
	inc  c                                           ; $4615: $0c
	add  l                                           ; $4616: $85
	nop                                              ; $4617: $00
	dec  bc                                          ; $4618: $0b
	rst  $30                                         ; $4619: $f7
	ld   a, a                                        ; $461a: $7f
	ld   [hl], a                                     ; $461b: $77
	ldh  a, [$f8]                                    ; $461c: $f0 $f8
	ret                                              ; $461e: $c9


	pop  bc                                          ; $461f: $c1
	nop                                              ; $4620: $00
	ld   [$030b], sp                                 ; $4621: $08 $0b $03
	nop                                              ; $4624: $00
	add  b                                           ; $4625: $80
	rrca                                             ; $4626: $0f
	add  hl, bc                                      ; $4627: $09
	ldh  a, [rP1]                                    ; $4628: $f0 $00
	inc  l                                           ; $462a: $2c
	rst  $38                                         ; $462b: $ff
	db   $d3                                         ; $462c: $d3
	nop                                              ; $462d: $00
	rrca                                             ; $462e: $0f
	rst  $38                                         ; $462f: $ff
	ldh  a, [rP1]                                    ; $4630: $f0 $00
	add  b                                           ; $4632: $80
	rst  $38                                         ; $4633: $ff
	add  b                                           ; $4634: $80
	nop                                              ; $4635: $00
	add  b                                           ; $4636: $80
	rst  $38                                         ; $4637: $ff
	add  b                                           ; $4638: $80
	nop                                              ; $4639: $00
	db   $10                                         ; $463a: $10
	inc  e                                           ; $463b: $1c
	rst  $38                                         ; $463c: $ff
	ldh  [rP1], a                                    ; $463d: $e0 $00
	db   $fc                                         ; $463f: $fc
	ldh  a, [rAUD1SWEEP]                             ; $4640: $f0 $10
	inc  e                                           ; $4642: $1c
	db   $fc                                         ; $4643: $fc
	add  b                                           ; $4644: $80
	ld   [hl], b                                     ; $4645: $70
	inc  c                                           ; $4646: $0c
	db   $fc                                         ; $4647: $fc
	ld   hl, sp+$1c                                  ; $4648: $f8 $1c
	inc  b                                           ; $464a: $04
	ldh  [$88], a                                    ; $464b: $e0 $88
	nop                                              ; $464d: $00
	add  b                                           ; $464e: $80
	inc  bc                                          ; $464f: $03
	add  b                                           ; $4650: $80
	rlca                                             ; $4651: $07
	add  b                                           ; $4652: $80
	rra                                              ; $4653: $1f
	add  h                                           ; $4654: $84

jr_075_4655:
	nop                                              ; $4655: $00
	rlca                                             ; $4656: $07
	ccf                                              ; $4657: $3f
	ld   b, a                                        ; $4658: $47
	rst  $38                                         ; $4659: $ff
	ld   h, [hl]                                     ; $465a: $66
	rst  $38                                         ; $465b: $ff
	add  hl, de                                      ; $465c: $19
	db   $fc                                         ; $465d: $fc
	ei                                               ; $465e: $fb
	add  b                                           ; $465f: $80
	rst  $38                                         ; $4660: $ff
	add  h                                           ; $4661: $84
	nop                                              ; $4662: $00
	rlca                                             ; $4663: $07
	rst  $38                                         ; $4664: $ff
	add  e                                           ; $4665: $83
	rst  ToBoot                                         ; $4666: $c7
	ld   c, b                                        ; $4667: $48
	rra                                              ; $4668: $1f
	inc  l                                           ; $4669: $2c
	ld   a, a                                        ; $466a: $7f
	cp   a                                           ; $466b: $bf
	add  b                                           ; $466c: $80
	rst  $38                                         ; $466d: $ff
	add  e                                           ; $466e: $83
	nop                                              ; $466f: $00
	ld   b, $01                                      ; $4670: $06 $01
	rst  $38                                         ; $4672: $ff
	ccf                                              ; $4673: $3f
	db   $fc                                         ; $4674: $fc
	db   $fd                                         ; $4675: $fd
	ld   hl, sp+$38                                  ; $4676: $f8 $38
	add  b                                           ; $4678: $80
	ldh  [$80], a                                    ; $4679: $e0 $80
	ret  nz                                          ; $467b: $c0

	add  e                                           ; $467c: $83
	nop                                              ; $467d: $00
	add  c                                           ; $467e: $81
	rst  $38                                         ; $467f: $ff
	ld   [bc], a                                     ; $4680: $02
	jr   nc, @+$66                                   ; $4681: $30 $64

	xor  e                                           ; $4683: $ab
	add  b                                           ; $4684: $80
	inc  b                                           ; $4685: $04
	add  [hl]                                        ; $4686: $86
	nop                                              ; $4687: $00
	add  c                                           ; $4688: $81
	cp   $04                                         ; $4689: $fe $04
	ld   c, $5a                                      ; $468b: $0e $5a
	adc  d                                           ; $468d: $8a
	ldh  [$c0], a                                    ; $468e: $e0 $c0
	add  [hl]                                        ; $4690: $86
	nop                                              ; $4691: $00
	add  c                                           ; $4692: $81
	ld   a, a                                        ; $4693: $7f
	inc  b                                           ; $4694: $04
	ld   b, e                                        ; $4695: $43
	ld   l, c                                        ; $4696: $69
	ld   b, l                                        ; $4697: $45
	jr   nc, jr_075_46ba                             ; $4698: $30 $20

	add  [hl]                                        ; $469a: $86
	nop                                              ; $469b: $00
	add  c                                           ; $469c: $81
	rst  $38                                         ; $469d: $ff
	inc  b                                           ; $469e: $04
	ret  nz                                          ; $469f: $c0

	ld   l, d                                        ; $46a0: $6a
	ld   d, b                                        ; $46a1: $50
	ld   c, $0b                                      ; $46a2: $0e $0b
	add  h                                           ; $46a4: $84
	nop                                              ; $46a5: $00
	add  b                                           ; $46a6: $80
	ld   b, $81                                      ; $46a7: $06 $81
	or   $04                                         ; $46a9: $f6 $04
	ld   [hl], $14                                   ; $46ab: $36 $14
	sub  h                                           ; $46ad: $94
	ret  nz                                          ; $46ae: $c0

	add  b                                           ; $46af: $80
	add  c                                           ; $46b0: $81
	nop                                              ; $46b1: $00
	add  b                                           ; $46b2: $80
	ld   a, a                                        ; $46b3: $7f
	add  d                                           ; $46b4: $82
	nop                                              ; $46b5: $00
	add  b                                           ; $46b6: $80
	ld   a, a                                        ; $46b7: $7f
	add  d                                           ; $46b8: $82
	ld   h, b                                        ; $46b9: $60

jr_075_46ba:
	add  b                                           ; $46ba: $80
	ld   h, l                                        ; $46bb: $65
	add  b                                           ; $46bc: $80
	ld   h, b                                        ; $46bd: $60
	add  b                                           ; $46be: $80
	rst  $38                                         ; $46bf: $ff
	add  d                                           ; $46c0: $82
	nop                                              ; $46c1: $00
	add  b                                           ; $46c2: $80
	rst  $38                                         ; $46c3: $ff
	add  b                                           ; $46c4: $80
	ld   bc, $0380                                   ; $46c5: $01 $80 $03
	add  b                                           ; $46c8: $80
	ld   d, a                                        ; $46c9: $57
	add  b                                           ; $46ca: $80
	rlca                                             ; $46cb: $07
	add  b                                           ; $46cc: $80
	rst  $38                                         ; $46cd: $ff
	add  b                                           ; $46ce: $80
	nop                                              ; $46cf: $00
	add  d                                           ; $46d0: $82
	rra                                              ; $46d1: $1f
	add  d                                           ; $46d2: $82
	jr   jr_075_4655                                 ; $46d3: $18 $80

	add  hl, de                                      ; $46d5: $19
	nop                                              ; $46d6: $00
	jr   jr_075_4758                                 ; $46d7: $18 $7f

	ld   [bc], a                                     ; $46d9: $02
	add  [hl]                                        ; $46da: $86
	nop                                              ; $46db: $00
	ld   bc, $000f                                   ; $46dc: $01 $0f $00
	add  b                                           ; $46df: $80
	dec  bc                                          ; $46e0: $0b
	add  e                                           ; $46e1: $83
	rrca                                             ; $46e2: $0f
	add  l                                           ; $46e3: $85
	nop                                              ; $46e4: $00
	ld   bc, $2bd4                                   ; $46e5: $01 $d4 $2b
	add  b                                           ; $46e8: $80
	add  l                                           ; $46e9: $85
	add  b                                           ; $46ea: $80
	jp   $f580                                       ; $46eb: $c3 $80 $f5


	nop                                              ; $46ee: $00
	rst  $38                                         ; $46ef: $ff
	add  l                                           ; $46f0: $85
	nop                                              ; $46f1: $00
	ld   bc, $c738                                   ; $46f2: $01 $38 $c7
	add  b                                           ; $46f5: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46f6: $cf
	add  b                                           ; $46f7: $80
	rst  JumpTable                                         ; $46f8: $df
	add  b                                           ; $46f9: $80
	ld   h, a                                        ; $46fa: $67
	nop                                              ; $46fb: $00
	rst  $38                                         ; $46fc: $ff
	add  l                                           ; $46fd: $85
	nop                                              ; $46fe: $00
	ld   bc, $9f60                                   ; $46ff: $01 $60 $9f
	add  b                                           ; $4702: $80
	rra                                              ; $4703: $1f
	add  e                                           ; $4704: $83
	rst  $38                                         ; $4705: $ff
	add  l                                           ; $4706: $85
	nop                                              ; $4707: $00
	add  b                                           ; $4708: $80
	rst  $38                                         ; $4709: $ff
	ld   [bc], a                                     ; $470a: $02
	ld   a, a                                        ; $470b: $7f
	rst  $38                                         ; $470c: $ff
	ld   a, a                                        ; $470d: $7f
	add  c                                           ; $470e: $81
	rst  $38                                         ; $470f: $ff
	add  [hl]                                        ; $4710: $86
	nop                                              ; $4711: $00
	nop                                              ; $4712: $00
	rst  $38                                         ; $4713: $ff
	add  d                                           ; $4714: $82
	db   $fc                                         ; $4715: $fc
	add  c                                           ; $4716: $81
	ld   sp, hl                                      ; $4717: $f9
	nop                                              ; $4718: $00
	ld   b, $85                                      ; $4719: $06 $85
	nop                                              ; $471b: $00
	ld   bc, $cab5                                   ; $471c: $01 $b5 $ca
	add  b                                           ; $471f: $80
	jp   nc, $1500                                   ; $4720: $d2 $00 $15

	add  c                                           ; $4723: $81
	sub  l                                           ; $4724: $95
	nop                                              ; $4725: $00
	rst  $38                                         ; $4726: $ff
	add  l                                           ; $4727: $85
	nop                                              ; $4728: $00
	nop                                              ; $4729: $00
	ld   d, l                                        ; $472a: $55
	add  c                                           ; $472b: $81
	xor  d                                           ; $472c: $aa
	add  b                                           ; $472d: $80
	ld   a, [hl+]                                    ; $472e: $2a
	add  b                                           ; $472f: $80
	ld   c, d                                        ; $4730: $4a
	nop                                              ; $4731: $00
	rst  $38                                         ; $4732: $ff
	add  l                                           ; $4733: $85
	nop                                              ; $4734: $00
	ld   bc, $956a                                   ; $4735: $01 $6a $95
	add  b                                           ; $4738: $80
	and  l                                           ; $4739: $a5
	add  b                                           ; $473a: $80
	xor  c                                           ; $473b: $a9
	add  b                                           ; $473c: $80
	xor  d                                           ; $473d: $aa
	nop                                              ; $473e: $00
	rst  $38                                         ; $473f: $ff
	add  l                                           ; $4740: $85

Jump_075_4741:
	nop                                              ; $4741: $00
	nop                                              ; $4742: $00
	xor  d                                           ; $4743: $aa
	add  l                                           ; $4744: $85
	ld   d, l                                        ; $4745: $55
	nop                                              ; $4746: $00
	rst  $38                                         ; $4747: $ff
	add  l                                           ; $4748: $85
	nop                                              ; $4749: $00
	nop                                              ; $474a: $00
	xor  d                                           ; $474b: $aa
	add  e                                           ; $474c: $83
	ld   d, l                                        ; $474d: $55
	add  b                                           ; $474e: $80
	ld   d, h                                        ; $474f: $54
	nop                                              ; $4750: $00
	rst  $38                                         ; $4751: $ff
	add  l                                           ; $4752: $85
	nop                                              ; $4753: $00
	ld   bc, $52ad                                   ; $4754: $01 $ad $52
	add  b                                           ; $4757: $80

jr_075_4758:
	ld   c, d                                        ; $4758: $4a
	add  b                                           ; $4759: $80
	ld   a, [hl+]                                    ; $475a: $2a
	add  b                                           ; $475b: $80
	xor  d                                           ; $475c: $aa
	nop                                              ; $475d: $00
	rst  $38                                         ; $475e: $ff
	add  l                                           ; $475f: $85
	nop                                              ; $4760: $00
	nop                                              ; $4761: $00
	ld   d, l                                        ; $4762: $55
	add  c                                           ; $4763: $81
	xor  d                                           ; $4764: $aa
	add  b                                           ; $4765: $80
	xor  c                                           ; $4766: $a9
	add  b                                           ; $4767: $80
	and  l                                           ; $4768: $a5
	nop                                              ; $4769: $00
	rst  $38                                         ; $476a: $ff
	add  l                                           ; $476b: $85
	nop                                              ; $476c: $00
	ld   bc, $a35e                                   ; $476d: $01 $5e $a3
	add  b                                           ; $4770: $80
	sub  e                                           ; $4771: $93
	nop                                              ; $4772: $00
	ld   d, d                                        ; $4773: $52
	add  c                                           ; $4774: $81
	ld   d, c                                        ; $4775: $51
	nop                                              ; $4776: $00
	cp   $85                                         ; $4777: $fe $85
	nop                                              ; $4779: $00
	nop                                              ; $477a: $00
	rst  $38                                         ; $477b: $ff
	add  c                                           ; $477c: $81
	ccf                                              ; $477d: $3f
	nop                                              ; $477e: $00
	cp   a                                           ; $477f: $bf
	add  c                                           ; $4780: $81
	sbc  a                                           ; $4781: $9f
	nop                                              ; $4782: $00
	ldh  [$85], a                                    ; $4783: $e0 $85
	nop                                              ; $4785: $00
	nop                                              ; $4786: $00
	rst  $38                                         ; $4787: $ff
	add  b                                           ; $4788: $80
	db   $fc                                         ; $4789: $fc
	add  b                                           ; $478a: $80
	cp   $04                                         ; $478b: $fe $04
	db   $fc                                         ; $478d: $fc
	rst  $20                                         ; $478e: $e7
	rst  $38                                         ; $478f: $ff
	inc  de                                          ; $4790: $13
	rlca                                             ; $4791: $07
	add  b                                           ; $4792: $80
	dec  bc                                          ; $4793: $0b
	add  b                                           ; $4794: $80
	dec  b                                           ; $4795: $05
	add  b                                           ; $4796: $80
	nop                                              ; $4797: $00
	add  b                                           ; $4798: $80
	dec  b                                           ; $4799: $05
	add  b                                           ; $479a: $80
	nop                                              ; $479b: $00
	add  b                                           ; $479c: $80
	ld   bc, $0080                                   ; $479d: $01 $80 $00
	ld   bc, $c232                                   ; $47a0: $01 $32 $c2
	add  b                                           ; $47a3: $80
	push af                                          ; $47a4: $f5
	add  b                                           ; $47a5: $80
	ld   [hl], b                                     ; $47a6: $70
	add  b                                           ; $47a7: $80
	or   c                                           ; $47a8: $b1
	add  b                                           ; $47a9: $80
	ld   c, b                                        ; $47aa: $48
	add  b                                           ; $47ab: $80
	and  c                                           ; $47ac: $a1
	add  b                                           ; $47ad: $80
	ld   b, d                                        ; $47ae: $42
	add  b                                           ; $47af: $80
	nop                                              ; $47b0: $00
	add  b                                           ; $47b1: $80
	rst  $38                                         ; $47b2: $ff
	add  b                                           ; $47b3: $80
	ld   l, a                                        ; $47b4: $6f
	add  b                                           ; $47b5: $80
	and  a                                           ; $47b6: $a7
	add  b                                           ; $47b7: $80
	dec  bc                                          ; $47b8: $0b

jr_075_47b9:
	add  b                                           ; $47b9: $80
	add  l                                           ; $47ba: $85
	add  b                                           ; $47bb: $80
	ld   a, [bc]                                     ; $47bc: $0a
	add  b                                           ; $47bd: $80
	dec  b                                           ; $47be: $05
	add  b                                           ; $47bf: $80
	ld   [bc], a                                     ; $47c0: $02
	add  b                                           ; $47c1: $80
	push af                                          ; $47c2: $f5
	add  b                                           ; $47c3: $80
	ld   [$f703], a                                  ; $47c4: $ea $03 $f7
	db   $f4                                         ; $47c7: $f4
	cp   c                                           ; $47c8: $b9
	cp   d                                           ; $47c9: $ba
	add  b                                           ; $47ca: $80
	rra                                              ; $47cb: $1f
	add  b                                           ; $47cc: $80
	adc  a                                           ; $47cd: $8f
	add  b                                           ; $47ce: $80
	ld   e, a                                        ; $47cf: $5f
	add  b                                           ; $47d0: $80
	ld   a, [bc]                                     ; $47d1: $0a
	ld   bc, $ff80                                   ; $47d2: $01 $80 $ff
	add  b                                           ; $47d5: $80
	xor  d                                           ; $47d6: $aa
	inc  b                                           ; $47d7: $04
	push de                                          ; $47d8: $d5
	ld   d, l                                        ; $47d9: $55
	ld   a, [hl+]                                    ; $47da: $2a
	xor  d                                           ; $47db: $aa
	add  b                                           ; $47dc: $80
	add  d                                           ; $47dd: $82
	ldh  a, [rDIV]                                   ; $47de: $f0 $04
	ldh  [$60], a                                    ; $47e0: $e0 $60
	ld   [hl], b                                     ; $47e2: $70
	ld   c, $f3                                      ; $47e3: $0e $f3
	add  b                                           ; $47e5: $80
	and  e                                           ; $47e6: $a3
	ld   bc, $4650                                   ; $47e7: $01 $50 $46
	add  b                                           ; $47ea: $80
	and  [hl]                                        ; $47eb: $a6
	ld   bc, $0c20                                   ; $47ec: $01 $20 $0c
	add  b                                           ; $47ef: $80
	inc  b                                           ; $47f0: $04
	dec  b                                           ; $47f1: $05
	ld   c, b                                        ; $47f2: $48
	nop                                              ; $47f3: $00
	db   $10                                         ; $47f4: $10
	ld   [$25bd], sp                                 ; $47f5: $08 $bd $25
	add  b                                           ; $47f8: $80
	add  hl, hl                                      ; $47f9: $29
	add  b                                           ; $47fa: $80
	ld   a, [hl+]                                    ; $47fb: $2a
	add  d                                           ; $47fc: $82
	ld   c, d                                        ; $47fd: $4a
	add  b                                           ; $47fe: $80
	ld   d, d                                        ; $47ff: $52
	add  b                                           ; $4800: $80
	sub  h                                           ; $4801: $94
	add  b                                           ; $4802: $80
	sub  l                                           ; $4803: $95
	add  b                                           ; $4804: $80
	ld   d, d                                        ; $4805: $52
	add  b                                           ; $4806: $80
	ld   d, h                                        ; $4807: $54
	add  b                                           ; $4808: $80
	ld   d, l                                        ; $4809: $55
	add  b                                           ; $480a: $80
	sub  l                                           ; $480b: $95
	add  b                                           ; $480c: $80
	and  l                                           ; $480d: $a5
	add  d                                           ; $480e: $82
	xor  c                                           ; $480f: $a9
	add  b                                           ; $4810: $80
	ld   a, [hl+]                                    ; $4811: $2a
	add  d                                           ; $4812: $82
	xor  d                                           ; $4813: $aa
	adc  d                                           ; $4814: $8a
	ld   a, [hl+]                                    ; $4815: $2a
	add  b                                           ; $4816: $80
	sub  l                                           ; $4817: $95
	add  b                                           ; $4818: $80
	and  l                                           ; $4819: $a5
	adc  d                                           ; $481a: $8a
	xor  d                                           ; $481b: $aa
	add  b                                           ; $481c: $80
	ld   d, d                                        ; $481d: $52
	add  b                                           ; $481e: $80
	ld   c, d                                        ; $481f: $4a
	adc  [hl]                                        ; $4820: $8e
	xor  d                                           ; $4821: $aa
	adc  b                                           ; $4822: $88
	xor  c                                           ; $4823: $a9
	add  b                                           ; $4824: $80
	xor  b                                           ; $4825: $a8
	add  b                                           ; $4826: $80
	sub  l                                           ; $4827: $95
	add  b                                           ; $4828: $80
	ld   d, l                                        ; $4829: $55
	add  b                                           ; $482a: $80
	ld   d, h                                        ; $482b: $54
	add  b                                           ; $482c: $80
	ld   d, d                                        ; $482d: $52
	add  b                                           ; $482e: $80
	ld   c, d                                        ; $482f: $4a
	add  d                                           ; $4830: $82
	ld   a, [hl+]                                    ; $4831: $2a
	add  b                                           ; $4832: $80
	xor  c                                           ; $4833: $a9
	add  b                                           ; $4834: $80
	ld   c, b                                        ; $4835: $48
	add  b                                           ; $4836: $80
	jr   z, jr_075_47b9                              ; $4837: $28 $80

	xor  b                                           ; $4839: $a8
	add  d                                           ; $483a: $82
	and  h                                           ; $483b: $a4
	add  b                                           ; $483c: $80
	sub  h                                           ; $483d: $94
	add  d                                           ; $483e: $82
	ld   d, d                                        ; $483f: $52
	ld   bc, $cf40                                   ; $4840: $01 $40 $cf
	add  b                                           ; $4843: $80
	push bc                                          ; $4844: $c5
	ld   bc, $62aa                                   ; $4845: $01 $aa $62
	add  b                                           ; $4848: $80
	ld   h, l                                        ; $4849: $65
	nop                                              ; $484a: $00
	ld   d, h                                        ; $484b: $54
	add  c                                           ; $484c: $81
	jr   nc, @+$06                                   ; $484d: $30 $04

	ld   [hl+], a                                    ; $484f: $22
	nop                                              ; $4850: $00
	db   $10                                         ; $4851: $10
	ld   [$81e6], sp                                 ; $4852: $08 $e6 $81
	rst  $38                                         ; $4855: $ff
	ld   bc, $7dfd                                   ; $4856: $01 $fd $7d
	add  b                                           ; $4859: $80
	ld   l, b                                        ; $485a: $68
	ld   bc, $d050                                   ; $485b: $01 $50 $d0
	add  b                                           ; $485e: $80
	and  b                                           ; $485f: $a0
	nop                                              ; $4860: $00
	ret  nz                                          ; $4861: $c0

	add  c                                           ; $4862: $81
	nop                                              ; $4863: $00
	nop                                              ; $4864: $00
	jr   nc, @-$7c                                   ; $4865: $30 $82

	nop                                              ; $4867: $00
	add  b                                           ; $4868: $80
	ld   [$0680], sp                                 ; $4869: $08 $80 $06
	inc  bc                                          ; $486c: $03
	ld   bc, $0003                                   ; $486d: $01 $03 $00
	ld   bc, $0481                                   ; $4870: $01 $81 $04
	ld   bc, $44b3                                   ; $4873: $01 $b3 $44
	add  b                                           ; $4876: $80
	xor  [hl]                                        ; $4877: $ae
	add  b                                           ; $4878: $80
	ld   e, a                                        ; $4879: $5f
	add  b                                           ; $487a: $80
	dec  hl                                          ; $487b: $2b
	ld   [bc], a                                     ; $487c: $02
	dec  b                                           ; $487d: $05
	add  l                                           ; $487e: $85
	add  b                                           ; $487f: $80
	add  b                                           ; $4880: $80
	ld   h, b                                        ; $4881: $60
	inc  b                                           ; $4882: $04
	jr   jr_075_48bd                                 ; $4883: $18 $38

	ld   b, $23                                      ; $4885: $06 $23
	dec  b                                           ; $4887: $05
	add  b                                           ; $4888: $80
	cpl                                              ; $4889: $2f
	add  b                                           ; $488a: $80
	sbc  a                                           ; $488b: $9f
	add  b                                           ; $488c: $80
	jp   z, $8580                                    ; $488d: $ca $80 $85

	add  b                                           ; $4890: $80
	jp   $0580                                       ; $4891: $c3 $80 $05


	inc  bc                                          ; $4894: $03
	ld   [$8088], sp                                 ; $4895: $08 $88 $80
	nop                                              ; $4898: $00
	add  b                                           ; $4899: $80
	and  b                                           ; $489a: $a0
	add  d                                           ; $489b: $82
	ldh  a, [$80]                                    ; $489c: $f0 $80
	ld   a, [hl]                                     ; $489e: $7e
	add  b                                           ; $489f: $80
	cp   a                                           ; $48a0: $bf
	add  b                                           ; $48a1: $80
	dec  hl                                          ; $48a2: $2b
	add  b                                           ; $48a3: $80
	add  e                                           ; $48a4: $83
	ld   [de], a                                     ; $48a5: $12
	rrca                                             ; $48a6: $0f
	nop                                              ; $48a7: $00
	ld   de, $2600                                   ; $48a8: $11 $00 $26
	ld   bc, $06d9                                   ; $48ab: $01 $d9 $06
	or   $08                                         ; $48ae: $f6 $08
	ld   a, l                                        ; $48b0: $7d
	dec  b                                           ; $48b1: $05
	ld   a, c                                        ; $48b2: $79
	add  hl, de                                      ; $48b3: $19
	nop                                              ; $48b4: $00
	ld   [hl+], a                                    ; $48b5: $22
	ld   e, $1c                                      ; $48b6: $1e $1c
	add  hl, hl                                      ; $48b8: $29
	add  b                                           ; $48b9: $80
	add  hl, bc                                      ; $48ba: $09
	ld   [bc], a                                     ; $48bb: $02
	adc  c                                           ; $48bc: $89

jr_075_48bd:
	sub  d                                           ; $48bd: $92
	ld   [de], a                                     ; $48be: $12
	add  b                                           ; $48bf: $80
	sub  d                                           ; $48c0: $92
	add  d                                           ; $48c1: $82
	inc  h                                           ; $48c2: $24
	inc  bc                                          ; $48c3: $03
	nop                                              ; $48c4: $00
	ld   c, c                                        ; $48c5: $49
	db   $ec                                         ; $48c6: $ec
	and  l                                           ; $48c7: $a5
	add  b                                           ; $48c8: $80
	dec  h                                           ; $48c9: $25
	add  b                                           ; $48ca: $80
	add  hl, hl                                      ; $48cb: $29
	add  d                                           ; $48cc: $82
	ld   c, d                                        ; $48cd: $4a
	add  b                                           ; $48ce: $80
	sub  d                                           ; $48cf: $92
	add  b                                           ; $48d0: $80
	and  l                                           ; $48d1: $a5
	ld   [bc], a                                     ; $48d2: $02
	nop                                              ; $48d3: $00
	dec  h                                           ; $48d4: $25
	ld   l, a                                        ; $48d5: $6f
	add  c                                           ; $48d6: $81
	ld   c, d                                        ; $48d7: $4a
	add  b                                           ; $48d8: $80
	ld   d, d                                        ; $48d9: $52
	add  h                                           ; $48da: $84
	sub  d                                           ; $48db: $92
	add  b                                           ; $48dc: $80
	inc  h                                           ; $48dd: $24
	ld   [bc], a                                     ; $48de: $02
	nop                                              ; $48df: $00
	inc  h                                           ; $48e0: $24
	ld   l, [hl]                                     ; $48e1: $6e
	add  e                                           ; $48e2: $83
	ld   c, d                                        ; $48e3: $4a
	add  h                                           ; $48e4: $84
	ld   d, d                                        ; $48e5: $52
	add  b                                           ; $48e6: $80
	sub  d                                           ; $48e7: $92
	ld   [bc], a                                     ; $48e8: $02
	nop                                              ; $48e9: $00
	and  l                                           ; $48ea: $a5
	rrca                                             ; $48eb: $0f
	adc  e                                           ; $48ec: $8b
	xor  d                                           ; $48ed: $aa
	ld   [bc], a                                     ; $48ee: $02
	nop                                              ; $48ef: $00
	ld   a, [hl+]                                    ; $48f0: $2a
	add  b                                           ; $48f1: $80
	adc  e                                           ; $48f2: $8b
	xor  d                                           ; $48f3: $aa
	ld   [bc], a                                     ; $48f4: $02
	nop                                              ; $48f5: $00
	xor  c                                           ; $48f6: $a9
	dec  c                                           ; $48f7: $0d
	add  e                                           ; $48f8: $83
	and  h                                           ; $48f9: $a4
	add  h                                           ; $48fa: $84
	sub  h                                           ; $48fb: $94
	add  b                                           ; $48fc: $80
	sub  d                                           ; $48fd: $92
	ld   [bc], a                                     ; $48fe: $02
	nop                                              ; $48ff: $00
	ld   c, d                                        ; $4900: $4a
	rst  $28                                         ; $4901: $ef
	add  c                                           ; $4902: $81
	and  l                                           ; $4903: $a5
	add  b                                           ; $4904: $80
	sub  l                                           ; $4905: $95
	add  h                                           ; $4906: $84
	sub  d                                           ; $4907: $92
	add  b                                           ; $4908: $80
	ld   c, c                                        ; $4909: $49
	inc  bc                                          ; $490a: $03
	nop                                              ; $490b: $00
	ld   c, c                                        ; $490c: $49
	inc  bc                                          ; $490d: $03
	ld   c, d                                        ; $490e: $4a
	add  b                                           ; $490f: $80
	ld   c, c                                        ; $4910: $49
	add  b                                           ; $4911: $80
	add  hl, hl                                      ; $4912: $29
	add  d                                           ; $4913: $82
	and  h                                           ; $4914: $a4
	add  b                                           ; $4915: $80
	sub  d                                           ; $4916: $92
	add  b                                           ; $4917: $80
	ld   c, d                                        ; $4918: $4a
	inc  b                                           ; $4919: $04
	nop                                              ; $491a: $00
	ld   c, c                                        ; $491b: $49
	ld   d, l                                        ; $491c: $55
	inc  a                                           ; $491d: $3c
	nop                                              ; $491e: $00
	add  b                                           ; $491f: $80
	jr   nz, @+$04                                   ; $4920: $20 $02

	ld   hl, $9091                                   ; $4922: $21 $91 $90
	add  b                                           ; $4925: $80
	sub  d                                           ; $4926: $92
	add  d                                           ; $4927: $82
	ld   c, c                                        ; $4928: $49
	dec  bc                                          ; $4929: $0b
	nop                                              ; $492a: $00
	inc  h                                           ; $492b: $24
	call nz, $9900                                   ; $492c: $c4 $00 $99
	nop                                              ; $492f: $00
	ld   h, [hl]                                     ; $4930: $66
	add  c                                           ; $4931: $81
	sbc  c                                           ; $4932: $99
	ld   h, a                                        ; $4933: $67
	ld   l, [hl]                                     ; $4934: $6e
	ld   c, $80                                      ; $4935: $0e $80
	daa                                              ; $4937: $27
	add  b                                           ; $4938: $80
	ld   e, $04                                      ; $4939: $1e $04
	dec  c                                           ; $493b: $0d
	adc  l                                           ; $493c: $8d
	ld   [hl], e                                     ; $493d: $73
	nop                                              ; $493e: $00
	inc  bc                                          ; $493f: $03
	add  b                                           ; $4940: $80
	ld   [$0e13], sp                                 ; $4941: $08 $13 $0e
	ld   b, $0f                                      ; $4944: $06 $0f
	rlca                                             ; $4946: $07
	rrca                                             ; $4947: $0f
	add  hl, bc                                      ; $4948: $09

jr_075_4949:
	rrca                                             ; $4949: $0f
	add  hl, bc                                      ; $494a: $09
	rrca                                             ; $494b: $0f
	ld   c, $0f                                      ; $494c: $0e $0f
	jp   z, Jump_075_4741                            ; $494e: $ca $41 $47

	ld   b, h                                        ; $4951: $44
	ld   d, h                                        ; $4952: $54
	inc  b                                           ; $4953: $04
	inc  h                                           ; $4954: $24
	call nz, $80c6                                   ; $4955: $c4 $c6 $80
	ldh  a, [rTIMA]                                  ; $4958: $f0 $05
	cp   $e6                                         ; $495a: $fe $e6
	rst  $38                                         ; $495c: $ff
	ld   h, a                                        ; $495d: $67
	rst  $38                                         ; $495e: $ff
	ld   a, a                                        ; $495f: $7f
	add  b                                           ; $4960: $80
	add  h                                           ; $4961: $84
	add  b                                           ; $4962: $80
	ldh  [c], a                                      ; $4963: $e2
	ld   bc, $8898                                   ; $4964: $01 $98 $88
	add  b                                           ; $4967: $80

jr_075_4968:
	and  [hl]                                        ; $4968: $a6
	inc  bc                                          ; $4969: $03
	and  c                                           ; $496a: $a1
	and  e                                           ; $496b: $a3

jr_075_496c:
	and  h                                           ; $496c: $a4
	or   h                                           ; $496d: $b4
	add  b                                           ; $496e: $80
	add  h                                           ; $496f: $84
	ld   [bc], a                                     ; $4970: $02
	ldh  [hScriptOpcodeParams+4], a                                    ; $4971: $e0 $a4
	ld   b, [hl]                                     ; $4973: $46
	add  b                                           ; $4974: $80
	and  c                                           ; $4975: $a1
	add  b                                           ; $4976: $80
	ld   b, d                                        ; $4977: $42
	add  b                                           ; $4978: $80
	ld   de, $0000                                   ; $4979: $11 $00 $00
	add  b                                           ; $497c: $80
	add  b                                           ; $497d: $80
	ld   bc, $2060                                   ; $497e: $01 $60 $20
	add  b                                           ; $4981: $80
	sbc  b                                           ; $4982: $98
	ld   [bc], a                                     ; $4983: $02
	sub  [hl]                                        ; $4984: $96
	add  hl, hl                                      ; $4985: $29
	rst  $38                                         ; $4986: $ff
	add  b                                           ; $4987: $80
	ret  nz                                          ; $4988: $c0

	add  b                                           ; $4989: $80
	rst  $38                                         ; $498a: $ff
	add  b                                           ; $498b: $80
	ld   d, b                                        ; $498c: $50
	add  b                                           ; $498d: $80
	adc  b                                           ; $498e: $88
	add  b                                           ; $498f: $80
	inc  b                                           ; $4990: $04
	add  b                                           ; $4991: $80
	add  hl, bc                                      ; $4992: $09
	inc  bc                                          ; $4993: $03
	nop                                              ; $4994: $00
	ld   b, b                                        ; $4995: $40
	cp   a                                           ; $4996: $bf
	rst  $38                                         ; $4997: $ff
	add  b                                           ; $4998: $80
	nop                                              ; $4999: $00
	add  b                                           ; $499a: $80
	rst  $38                                         ; $499b: $ff
	add  b                                           ; $499c: $80
	nop                                              ; $499d: $00
	add  d                                           ; $499e: $82
	ld   bc, $ff80                                   ; $499f: $01 $80 $ff
	add  b                                           ; $49a2: $80
	ld   bc, $ff80                                   ; $49a3: $01 $80 $ff
	add  b                                           ; $49a6: $80
	nop                                              ; $49a7: $00
	add  b                                           ; $49a8: $80
	rst  $38                                         ; $49a9: $ff
	add  b                                           ; $49aa: $80
	nop                                              ; $49ab: $00
	add  d                                           ; $49ac: $82
	add  b                                           ; $49ad: $80
	add  b                                           ; $49ae: $80
	cp   a                                           ; $49af: $bf
	add  b                                           ; $49b0: $80
	add  b                                           ; $49b1: $80
	add  b                                           ; $49b2: $80
	rst  $38                                         ; $49b3: $ff
	add  b                                           ; $49b4: $80
	nop                                              ; $49b5: $00
	add  b                                           ; $49b6: $80
	rst  $38                                         ; $49b7: $ff
	add  h                                           ; $49b8: $84
	nop                                              ; $49b9: $00
	add  b                                           ; $49ba: $80
	rst  $38                                         ; $49bb: $ff
	add  b                                           ; $49bc: $80
	inc  c                                           ; $49bd: $0c
	add  b                                           ; $49be: $80
	rst  $38                                         ; $49bf: $ff
	add  b                                           ; $49c0: $80
	nop                                              ; $49c1: $00
	add  b                                           ; $49c2: $80
	rst  $38                                         ; $49c3: $ff
	add  b                                           ; $49c4: $80
	nop                                              ; $49c5: $00
	add  d                                           ; $49c6: $82
	jr   jr_075_4949                                 ; $49c7: $18 $80

	ei                                               ; $49c9: $fb
	add  b                                           ; $49ca: $80
	jr   @-$7e                                       ; $49cb: $18 $80

	rst  $38                                         ; $49cd: $ff
	add  b                                           ; $49ce: $80
	nop                                              ; $49cf: $00
	add  b                                           ; $49d0: $80
	rst  $38                                         ; $49d1: $ff
	add  h                                           ; $49d2: $84
	nop                                              ; $49d3: $00
	add  b                                           ; $49d4: $80
	rst  $38                                         ; $49d5: $ff
	add  b                                           ; $49d6: $80
	nop                                              ; $49d7: $00
	ld   bc, $609f                                   ; $49d8: $01 $9f $60
	adc  l                                           ; $49db: $8d
	nop                                              ; $49dc: $00
	nop                                              ; $49dd: $00
	rst  $38                                         ; $49de: $ff
	add  b                                           ; $49df: $80
	nop                                              ; $49e0: $00
	add  b                                           ; $49e1: $80
	rst  $38                                         ; $49e2: $ff
	add  b                                           ; $49e3: $80
	nop                                              ; $49e4: $00
	add  d                                           ; $49e5: $82
	jr   jr_075_4968                                 ; $49e6: $18 $80

jr_075_49e8:
	ei                                               ; $49e8: $fb
	add  b                                           ; $49e9: $80
	jr   jr_075_496c                                 ; $49ea: $18 $80

	rst  $38                                         ; $49ec: $ff
	add  b                                           ; $49ed: $80
	nop                                              ; $49ee: $00
	add  b                                           ; $49ef: $80
	rst  $38                                         ; $49f0: $ff
	add  h                                           ; $49f1: $84
	nop                                              ; $49f2: $00
	add  b                                           ; $49f3: $80
	rst  $38                                         ; $49f4: $ff
	add  b                                           ; $49f5: $80
	ld   h, b                                        ; $49f6: $60
	add  b                                           ; $49f7: $80
	rst  $38                                         ; $49f8: $ff
	add  b                                           ; $49f9: $80
	nop                                              ; $49fa: $00
	add  b                                           ; $49fb: $80
	rst  $38                                         ; $49fc: $ff
	add  b                                           ; $49fd: $80
	nop                                              ; $49fe: $00
	add  d                                           ; $49ff: $82
	inc  bc                                          ; $4a00: $03
	add  b                                           ; $4a01: $80
	rst  $38                                         ; $4a02: $ff
	add  b                                           ; $4a03: $80
	inc  bc                                          ; $4a04: $03
	add  b                                           ; $4a05: $80
	rst  $38                                         ; $4a06: $ff
	add  b                                           ; $4a07: $80
	inc  bc                                          ; $4a08: $03
	add  b                                           ; $4a09: $80
	rst  $38                                         ; $4a0a: $ff
	add  b                                           ; $4a0b: $80
	inc  e                                           ; $4a0c: $1c
	add  b                                           ; $4a0d: $80
	inc  c                                           ; $4a0e: $0c
	add  b                                           ; $4a0f: $80
	nop                                              ; $4a10: $00
	add  b                                           ; $4a11: $80
	ld   a, b                                        ; $4a12: $78
	add  b                                           ; $4a13: $80
	nop                                              ; $4a14: $00
	add  b                                           ; $4a15: $80
	cp   h                                           ; $4a16: $bc
	add  b                                           ; $4a17: $80
	add  [hl]                                        ; $4a18: $86
	add  b                                           ; $4a19: $80
	ret  nz                                          ; $4a1a: $c0

	add  b                                           ; $4a1b: $80
	nop                                              ; $4a1c: $00
	add  b                                           ; $4a1d: $80
	ld   [$1580], sp                                 ; $4a1e: $08 $80 $15
	add  b                                           ; $4a21: $80
	add  [hl]                                        ; $4a22: $86
	add  b                                           ; $4a23: $80
	ld   c, a                                        ; $4a24: $4f
	inc  bc                                          ; $4a25: $03
	rst  $30                                         ; $4a26: $f7
	nop                                              ; $4a27: $00
	rrca                                             ; $4a28: $0f
	ld   [$0f81], sp                                 ; $4a29: $08 $81 $0f
	add  b                                           ; $4a2c: $80
	rlca                                             ; $4a2d: $07
	add  d                                           ; $4a2e: $82
	rrca                                             ; $4a2f: $0f
	add  b                                           ; $4a30: $80
	ld   b, $01                                      ; $4a31: $06 $01
	dec  b                                           ; $4a33: $05
	inc  b                                           ; $4a34: $04
	add  c                                           ; $4a35: $81
	nop                                              ; $4a36: $00

jr_075_4a37:
	ld   b, $e0                                      ; $4a37: $06 $e0
	nop                                              ; $4a39: $00
	db   $fc                                         ; $4a3a: $fc
	ret  nz                                          ; $4a3b: $c0

	sbc  $1c                                         ; $4a3c: $de $1c
	rra                                              ; $4a3e: $1f
	add  b                                           ; $4a3f: $80
	push bc                                          ; $4a40: $c5
	add  b                                           ; $4a41: $80
	or   [hl]                                        ; $4a42: $b6
	dec  d                                           ; $4a43: $15
	cp   a                                           ; $4a44: $bf
	add  b                                           ; $4a45: $80
	inc  a                                           ; $4a46: $3c
	adc  h                                           ; $4a47: $8c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4a48: $cf
	jp   hl                                          ; $4a49: $e9


	rst  $38                                         ; $4a4a: $ff
	ld   sp, hl                                      ; $4a4b: $f9
	rst  $38                                         ; $4a4c: $ff
	cp   $ff                                         ; $4a4d: $fe $ff
	cp   $7f                                         ; $4a4f: $fe $7f
	ld   h, a                                        ; $4a51: $67
	ld   a, c                                        ; $4a52: $79
	rra                                              ; $4a53: $1f
	ld   a, [hl]                                     ; $4a54: $7e
	jr   jr_075_49e8                                 ; $4a55: $18 $91

	ret  nc                                          ; $4a57: $d0

	ld   [de], a                                     ; $4a58: $12
	ld   a, [de]                                     ; $4a59: $1a
	add  b                                           ; $4a5a: $80
	ldh  [c], a                                      ; $4a5b: $e2
	add  hl, bc                                      ; $4a5c: $09
	ld   hl, sp+$61                                  ; $4a5d: $f8 $61

jr_075_4a5f:
	cp   $66                                         ; $4a5f: $fe $66
	rst  $38                                         ; $4a61: $ff
	adc  $ff                                         ; $4a62: $ce $ff
	jp   nz, $333f                                   ; $4a64: $c2 $3f $33

	add  b                                           ; $4a67: $80
	ret  nz                                          ; $4a68: $c0

	inc  bc                                          ; $4a69: $03
	ld   h, c                                        ; $4a6a: $61
	ld   h, b                                        ; $4a6b: $60
	ld   e, c                                        ; $4a6c: $59
	ld   c, b                                        ; $4a6d: $48
	add  b                                           ; $4a6e: $80
	ld   b, b                                        ; $4a6f: $40
	rlca                                             ; $4a70: $07
	ld   b, c                                        ; $4a71: $41
	ld   c, a                                        ; $4a72: $4f
	adc  e                                           ; $4a73: $8b
	adc  d                                           ; $4a74: $8a
	ei                                               ; $4a75: $fb
	ldh  [$f8], a                                    ; $4a76: $e0 $f8
	db   $fd                                         ; $4a78: $fd
	add  c                                           ; $4a79: $81
	rst  $38                                         ; $4a7a: $ff
	ld   bc, $ff01                                   ; $4a7b: $01 $01 $ff
	add  b                                           ; $4a7e: $80
	inc  bc                                          ; $4a7f: $03
	nop                                              ; $4a80: $00
	ld   bc, $fd80                                   ; $4a81: $01 $80 $fd
	ld   [bc], a                                     ; $4a84: $02
	rst  $38                                         ; $4a85: $ff
	ld   bc, $80ff                                   ; $4a86: $01 $ff $80
	ld   bc, $c000                                   ; $4a89: $01 $00 $c0
	add  c                                           ; $4a8c: $81
	rst  $38                                         ; $4a8d: $ff
	nop                                              ; $4a8e: $00
	ret  nz                                          ; $4a8f: $c0

	add  c                                           ; $4a90: $81
	rst  $38                                         ; $4a91: $ff
	add  b                                           ; $4a92: $80
	nop                                              ; $4a93: $00
	inc  bc                                          ; $4a94: $03
	add  b                                           ; $4a95: $80
	cp   a                                           ; $4a96: $bf
	add  b                                           ; $4a97: $80
	cp   a                                           ; $4a98: $bf
	add  b                                           ; $4a99: $80
	add  b                                           ; $4a9a: $80
	nop                                              ; $4a9b: $00
	inc  c                                           ; $4a9c: $0c
	add  c                                           ; $4a9d: $81
	db   $fd                                         ; $4a9e: $fd
	nop                                              ; $4a9f: $00
	ld   c, $81                                      ; $4aa0: $0e $81
	rst  $38                                         ; $4aa2: $ff
	add  b                                           ; $4aa3: $80
	nop                                              ; $4aa4: $00
	inc  bc                                          ; $4aa5: $03
	inc  c                                           ; $4aa6: $0c
	db   $fc                                         ; $4aa7: $fc
	inc  c                                           ; $4aa8: $0c
	db   $fc                                         ; $4aa9: $fc
	add  b                                           ; $4aaa: $80
	inc  c                                           ; $4aab: $0c
	inc  b                                           ; $4aac: $04
	inc  e                                           ; $4aad: $1c
	rst  $38                                         ; $4aae: $ff
	rst  $28                                         ; $4aaf: $ef
	rst  $38                                         ; $4ab0: $ff
	inc  e                                           ; $4ab1: $1c
	add  c                                           ; $4ab2: $81
	rst  $38                                         ; $4ab3: $ff
	add  d                                           ; $4ab4: $82
	jr   jr_075_4a37                                 ; $4ab5: $18 $80

	ret  c                                           ; $4ab7: $d8

	ld   [bc], a                                     ; $4ab8: $02
	ld   e, b                                        ; $4ab9: $58
	ret  c                                           ; $4aba: $d8

	sub  b                                           ; $4abb: $90
	add  c                                           ; $4abc: $81
	rst  $38                                         ; $4abd: $ff
	nop                                              ; $4abe: $00
	nop                                              ; $4abf: $00
	add  c                                           ; $4ac0: $81
	rst  $38                                         ; $4ac1: $ff
	add  d                                           ; $4ac2: $82
	nop                                              ; $4ac3: $00
	add  b                                           ; $4ac4: $80
	rlca                                             ; $4ac5: $07
	ld   [bc], a                                     ; $4ac6: $02
	inc  b                                           ; $4ac7: $04
	rlca                                             ; $4ac8: $07
	inc  bc                                          ; $4ac9: $03
	add  c                                           ; $4aca: $81
	rst  $38                                         ; $4acb: $ff
	nop                                              ; $4acc: $00
	nop                                              ; $4acd: $00
	add  c                                           ; $4ace: $81
	rst  $38                                         ; $4acf: $ff
	add  d                                           ; $4ad0: $82
	nop                                              ; $4ad1: $00
	add  d                                           ; $4ad2: $82
	ldh  [rDIV], a                                   ; $4ad3: $e0 $04
	inc  e                                           ; $4ad5: $1c
	rst  $38                                         ; $4ad6: $ff
	rst  $28                                         ; $4ad7: $ef
	rst  $38                                         ; $4ad8: $ff
	inc  e                                           ; $4ad9: $1c
	add  c                                           ; $4ada: $81
	rst  $38                                         ; $4adb: $ff
	add  d                                           ; $4adc: $82
	jr   jr_075_4a5f                                 ; $4add: $18 $80

	dec  de                                          ; $4adf: $1b
	ld   [bc], a                                     ; $4ae0: $02
	add  hl, de                                      ; $4ae1: $19
	dec  de                                          ; $4ae2: $1b
	ld   [hl], d                                     ; $4ae3: $72
	add  c                                           ; $4ae4: $81
	rst  $28                                         ; $4ae5: $ef
	inc  c                                           ; $4ae6: $0c
	ld   [hl], b                                     ; $4ae7: $70
	cp   $ff                                         ; $4ae8: $fe $ff
	cp   $01                                         ; $4aea: $fe $01
	nop                                              ; $4aec: $00
	ld   h, d                                        ; $4aed: $62
	ld   l, h                                        ; $4aee: $6c
	ld   h, b                                        ; $4aef: $60
	ld   l, b                                        ; $4af0: $68
	ld   h, b                                        ; $4af1: $60
	ld   h, a                                        ; $4af2: $67
	inc  bc                                          ; $4af3: $03
	add  c                                           ; $4af4: $81
	rst  $38                                         ; $4af5: $ff
	dec  c                                           ; $4af6: $0d
	inc  bc                                          ; $4af7: $03
	ld   a, a                                        ; $4af8: $7f
	rst  $38                                         ; $4af9: $ff
	ld   a, a                                        ; $4afa: $7f
	add  e                                           ; $4afb: $83
	inc  bc                                          ; $4afc: $03
	ld   b, e                                        ; $4afd: $43
	ccf                                              ; $4afe: $3f
	inc  bc                                          ; $4aff: $03
	rra                                              ; $4b00: $1f
	inc  bc                                          ; $4b01: $03
	db   $e3                                         ; $4b02: $e3
	add  b                                           ; $4b03: $80
	db   $fc                                         ; $4b04: $fc
	add  b                                           ; $4b05: $80
	db   $fd                                         ; $4b06: $fd
	ld   bc, $fe82                                   ; $4b07: $01 $82 $fe
	add  b                                           ; $4b0a: $80
	ret  nz                                          ; $4b0b: $c0

	nop                                              ; $4b0c: $00
	nop                                              ; $4b0d: $00
	add  b                                           ; $4b0e: $80
	jr   nc, @+$0d                                   ; $4b0f: $30 $0b

	ld   [hl], b                                     ; $4b11: $70
	db   $10                                         ; $4b12: $10
	ld   h, e                                        ; $4b13: $63
	inc  bc                                          ; $4b14: $03
	ld   [bc], a                                     ; $4b15: $02
	ld   [hl], $34                                   ; $4b16: $36 $34
	ld   l, b                                        ; $4b18: $68
	ld   l, c                                        ; $4b19: $69
	ld   hl, $0323                                   ; $4b1a: $21 $23 $03
	add  b                                           ; $4b1d: $80
	dec  c                                           ; $4b1e: $0d
	ld   bc, $3931                                   ; $4b1f: $01 $31 $39
	add  b                                           ; $4b22: $80
	push bc                                          ; $4b23: $c5
	dec  b                                           ; $4b24: $05
	dec  b                                           ; $4b25: $05
	ld   b, l                                        ; $4b26: $45
	inc  h                                           ; $4b27: $24
	sub  e                                           ; $4b28: $93
	inc  bc                                          ; $4b29: $03
	inc  c                                           ; $4b2a: $0c
	adc  e                                           ; $4b2b: $8b
	nop                                              ; $4b2c: $00
	nop                                              ; $4b2d: $00
	rrca                                             ; $4b2e: $0f
	add  b                                           ; $4b2f: $80
	ld   b, e                                        ; $4b30: $43
	nop                                              ; $4b31: $00
	rst  $38                                         ; $4b32: $ff
	add  b                                           ; $4b33: $80
	rlca                                             ; $4b34: $07
	add  d                                           ; $4b35: $82
	nop                                              ; $4b36: $00
	add  b                                           ; $4b37: $80
	inc  c                                           ; $4b38: $0c
	inc  b                                           ; $4b39: $04
	ld   b, $04                                      ; $4b3a: $06 $04
	nop                                              ; $4b3c: $00
	ld   [bc], a                                     ; $4b3d: $02
	ld   l, $84                                      ; $4b3e: $2e $84
	ld   a, h                                        ; $4b40: $7c
	nop                                              ; $4b41: $00
	ld   a, [hl]                                     ; $4b42: $7e
	add  c                                           ; $4b43: $81
	ld   a, b                                        ; $4b44: $78
	ld   bc, $5c58                                   ; $4b45: $01 $58 $5c
	add  c                                           ; $4b48: $81
	inc  d                                           ; $4b49: $14
	nop                                              ; $4b4a: $00
	ld   hl, sp-$80                                  ; $4b4b: $f8 $80
	rst  ToBoot                                         ; $4b4d: $c7
	add  h                                           ; $4b4e: $84
	add  b                                           ; $4b4f: $80
	nop                                              ; $4b50: $00
	ret  nz                                          ; $4b51: $c0

	add  c                                           ; $4b52: $81
	ld   bc, $0300                                   ; $4b53: $01 $00 $03
	add  b                                           ; $4b56: $80
	rlca                                             ; $4b57: $07
	ld   de, $ffda                                   ; $4b58: $11 $da $ff
	daa                                              ; $4b5b: $27
	rst  $38                                         ; $4b5c: $ff
	ld   sp, hl                                      ; $4b5d: $f9
	rra                                              ; $4b5e: $1f
	ld   a, c                                        ; $4b5f: $79
	ld   h, e                                        ; $4b60: $63
	ld   e, a                                        ; $4b61: $5f
	db   $fc                                         ; $4b62: $fc
	push af                                          ; $4b63: $f5
	db   $fd                                         ; $4b64: $fd
	db   $dd                                         ; $4b65: $dd
	db   $fd                                         ; $4b66: $fd
	push de                                          ; $4b67: $d5
	db   $fd                                         ; $4b68: $fd
	pop  bc                                          ; $4b69: $c1
	rst  $38                                         ; $4b6a: $ff
	add  b                                           ; $4b6b: $80
	ld   h, c                                        ; $4b6c: $61
	add  b                                           ; $4b6d: $80
	pop  hl                                          ; $4b6e: $e1
	nop                                              ; $4b6f: $00
	and  c                                           ; $4b70: $a1
	add  b                                           ; $4b71: $80
	pop  hl                                          ; $4b72: $e1
	inc  bc                                          ; $4b73: $03
	ld   hl, $f1e1                                   ; $4b74: $21 $e1 $f1
	or   $81                                         ; $4b77: $f6 $81
	ei                                               ; $4b79: $fb

jr_075_4b7a:
	ld   bc, $bf83                                   ; $4b7a: $01 $83 $bf
	adc  b                                           ; $4b7d: $88
	add  b                                           ; $4b7e: $80
	nop                                              ; $4b7f: $00
	nop                                              ; $4b80: $00
	add  b                                           ; $4b81: $80
	add  b                                           ; $4b82: $80
	ld   [bc], a                                     ; $4b83: $02
	cp   a                                           ; $4b84: $bf
	adc  h                                           ; $4b85: $8c
	db   $fc                                         ; $4b86: $fc
	adc  c                                           ; $4b87: $89
	inc  c                                           ; $4b88: $0c
	add  b                                           ; $4b89: $80
	ld   l, h                                        ; $4b8a: $6c
	ld   bc, $48fc                                   ; $4b8b: $01 $fc $48
	adc  c                                           ; $4b8e: $89
	ret  c                                           ; $4b8f: $d8

	nop                                              ; $4b90: $00
	sbc  b                                           ; $4b91: $98
	add  c                                           ; $4b92: $81
	jr   jr_075_4b98                                 ; $4b93: $18 $03

	inc  d                                           ; $4b95: $14
	rlca                                             ; $4b96: $07
	inc  b                                           ; $4b97: $04

jr_075_4b98:
	rlca                                             ; $4b98: $07
	add  b                                           ; $4b99: $80
	inc  bc                                          ; $4b9a: $03
	adc  b                                           ; $4b9b: $88
	nop                                              ; $4b9c: $00
	add  d                                           ; $4b9d: $82
	ldh  [$80], a                                    ; $4b9e: $e0 $80
	ret  nz                                          ; $4ba0: $c0

	adc  b                                           ; $4ba1: $88
	nop                                              ; $4ba2: $00
	nop                                              ; $4ba3: $00
	add  hl, bc                                      ; $4ba4: $09
	adc  c                                           ; $4ba5: $89
	dec  de                                          ; $4ba6: $1b
	nop                                              ; $4ba7: $00
	ld   a, [de]                                     ; $4ba8: $1a
	add  c                                           ; $4ba9: $81
	jr   jr_075_4baf                                 ; $4baa: $18 $03

	ld   [hl], h                                     ; $4bac: $74
	ld   l, a                                        ; $4bad: $6f
	ld   h, h                                        ; $4bae: $64

jr_075_4baf:
	ld   h, l                                        ; $4baf: $65
	add  h                                           ; $4bb0: $84
	ld   h, b                                        ; $4bb1: $60
	nop                                              ; $4bb2: $00
	ld   h, a                                        ; $4bb3: $67
	add  b                                           ; $4bb4: $80
	ld   h, c                                        ; $4bb5: $61
	ld   b, $65                                      ; $4bb6: $06 $65
	ld   h, a                                        ; $4bb8: $67
	ld   l, [hl]                                     ; $4bb9: $6e
	ld   [hl+], a                                    ; $4bba: $22
	rst  $38                                         ; $4bbb: $ff
	inc  hl                                          ; $4bbc: $23
	and  e                                           ; $4bbd: $a3
	add  h                                           ; $4bbe: $84
	inc  hl                                          ; $4bbf: $23
	nop                                              ; $4bc0: $00
	and  e                                           ; $4bc1: $a3
	add  d                                           ; $4bc2: $82
	jp   $7f02                                       ; $4bc3: $c3 $02 $7f


	add  c                                           ; $4bc6: $81
	ld   h, d                                        ; $4bc7: $62
	add  b                                           ; $4bc8: $80
	ld   [bc], a                                     ; $4bc9: $02
	nop                                              ; $4bca: $00
	inc  de                                          ; $4bcb: $13
	add  c                                           ; $4bcc: $81
	ld   [bc], a                                     ; $4bcd: $02
	rrca                                             ; $4bce: $0f
	ld   c, $00                                      ; $4bcf: $0e $00
	dec  a                                           ; $4bd1: $3d
	inc  bc                                          ; $4bd2: $03
	call nc, Call_075_5a5f                           ; $4bd3: $d4 $5f $5a
	ld   e, a                                        ; $4bd6: $5f
	adc  h                                           ; $4bd7: $8c
	jr   nz, jr_075_4c52                             ; $4bd8: $20 $78

	jr   jr_075_4c4c                                 ; $4bda: $18 $70

	ld   [hl], d                                     ; $4bdc: $72
	jp   nz, $80ce                                   ; $4bdd: $c2 $ce $80

	ld   a, $00                                      ; $4be0: $3e $00
	sbc  [hl]                                        ; $4be2: $9e
	add  b                                           ; $4be3: $80
	cp   $03                                         ; $4be4: $fe $03
	db   $fc                                         ; $4be6: $fc
	adc  b                                           ; $4be7: $88
	ld   hl, sp-$14                                  ; $4be8: $f8 $ec
	add  l                                           ; $4bea: $85
	nop                                              ; $4beb: $00
	add  b                                           ; $4bec: $80
	ld   bc, $0380                                   ; $4bed: $01 $80 $03
	add  b                                           ; $4bf0: $80
	rlca                                             ; $4bf1: $07
	add  b                                           ; $4bf2: $80
	rrca                                             ; $4bf3: $0f
	ld   bc, $18e8                                   ; $4bf4: $01 $e8 $18
	add  b                                           ; $4bf7: $80
	jr   c, jr_075_4b7a                              ; $4bf8: $38 $80

	ld   a, b                                        ; $4bfa: $78
	adc  b                                           ; $4bfb: $88
	ld   hl, sp+$03                                  ; $4bfc: $f8 $03
	inc  l                                           ; $4bfe: $2c
	inc  d                                           ; $4bff: $14
	inc  h                                           ; $4c00: $24
	dec  [hl]                                        ; $4c01: $35
	add  [hl]                                        ; $4c02: $86
	dec  a                                           ; $4c03: $3d
	ld   a, [bc]                                     ; $4c04: $0a
	dec  sp                                          ; $4c05: $3b
	ccf                                              ; $4c06: $3f
	ld   h, $1e                                      ; $4c07: $26 $1e
	db   $10                                         ; $4c09: $10
	rrca                                             ; $4c0a: $0f
	sbc  a                                           ; $4c0b: $9f
	rra                                              ; $4c0c: $1f
	dec  [hl]                                        ; $4c0d: $35
	ccf                                              ; $4c0e: $3f
	ld   d, l                                        ; $4c0f: $55
	add  e                                           ; $4c10: $83
	ld   a, a                                        ; $4c11: $7f
	add  b                                           ; $4c12: $80
	rst  $38                                         ; $4c13: $ff
	ld   [bc], a                                     ; $4c14: $02
	ld   a, a                                        ; $4c15: $7f
	cp   a                                           ; $4c16: $bf
	ld   a, $81                                      ; $4c17: $3e $81
	db   $fc                                         ; $4c19: $fc
	ld   [bc], a                                     ; $4c1a: $02
	ld   b, h                                        ; $4c1b: $44
	db   $f4                                         ; $4c1c: $f4
	ld   [hl], h                                     ; $4c1d: $74
	add  c                                           ; $4c1e: $81
	db   $f4                                         ; $4c1f: $f4
	inc  bc                                          ; $4c20: $03
	db   $e4                                         ; $4c21: $e4
	db   $f4                                         ; $4c22: $f4
	inc  a                                           ; $4c23: $3c
	ret  c                                           ; $4c24: $d8

	add  b                                           ; $4c25: $80
	jp   c, $1402                                    ; $4c26: $da $02 $14

	ld   a, e                                        ; $4c29: $7b
	inc  bc                                          ; $4c2a: $03
	add  b                                           ; $4c2b: $80
	dec  bc                                          ; $4c2c: $0b
	ld   bc, $1c1d                                   ; $4c2d: $01 $1d $1c
	add  b                                           ; $4c30: $80
	inc  a                                           ; $4c31: $3c
	ld   bc, $7d7c                                   ; $4c32: $01 $7c $7d
	add  b                                           ; $4c35: $80
	db   $fd                                         ; $4c36: $fd
	add  c                                           ; $4c37: $81
	ld   sp, hl                                      ; $4c38: $f9
	nop                                              ; $4c39: $00
	add  $80                                         ; $4c3a: $c6 $80
	add  b                                           ; $4c3c: $80
	add  b                                           ; $4c3d: $80
	cp   a                                           ; $4c3e: $bf
	ld   [bc], a                                     ; $4c3f: $02
	ret  nz                                          ; $4c40: $c0

	ld   b, b                                        ; $4c41: $40
	ld   a, a                                        ; $4c42: $7f
	add  b                                           ; $4c43: $80
	ld   a, [hl]                                     ; $4c44: $7e
	add  b                                           ; $4c45: $80
	ret  nz                                          ; $4c46: $c0

	add  b                                           ; $4c47: $80
	ld   hl, sp-$80                                  ; $4c48: $f8 $80
	ret  nz                                          ; $4c4a: $c0

	nop                                              ; $4c4b: $00

jr_075_4c4c:
	inc  a                                           ; $4c4c: $3c
	add  b                                           ; $4c4d: $80
	ld   l, h                                        ; $4c4e: $6c
	add  b                                           ; $4c4f: $80
	db   $fc                                         ; $4c50: $fc
	ld   [bc], a                                     ; $4c51: $02

jr_075_4c52:
	ld   l, h                                        ; $4c52: $6c
	ld   l, a                                        ; $4c53: $6f
	rst  $38                                         ; $4c54: $ff
	add  [hl]                                        ; $4c55: $86
	nop                                              ; $4c56: $00
	nop                                              ; $4c57: $00
	ld   [$1883], sp                                 ; $4c58: $08 $83 $18
	add  b                                           ; $4c5b: $80
	ei                                               ; $4c5c: $fb
	add  b                                           ; $4c5d: $80
	add  hl, de                                      ; $4c5e: $19
	add  h                                           ; $4c5f: $84
	jr   jr_075_4c62                                 ; $4c60: $18 $00

jr_075_4c62:
	db   $10                                         ; $4c62: $10
	add  e                                           ; $4c63: $83
	nop                                              ; $4c64: $00
	add  d                                           ; $4c65: $82
	rst  $38                                         ; $4c66: $ff
	add  b                                           ; $4c67: $80
	ld   a, a                                        ; $4c68: $7f
	add  b                                           ; $4c69: $80
	rra                                              ; $4c6a: $1f
	add  b                                           ; $4c6b: $80
	inc  bc                                          ; $4c6c: $03
	add  h                                           ; $4c6d: $84
	nop                                              ; $4c6e: $00
	add  b                                           ; $4c6f: $80
	rst  $38                                         ; $4c70: $ff
	add  b                                           ; $4c71: $80
	add  b                                           ; $4c72: $80
	add  b                                           ; $4c73: $80
	ld   hl, sp-$80                                  ; $4c74: $f8 $80
	nop                                              ; $4c76: $00
	add  b                                           ; $4c77: $80
	ret  nz                                          ; $4c78: $c0

	nop                                              ; $4c79: $00
	ld   [$1883], sp                                 ; $4c7a: $08 $83 $18
	add  b                                           ; $4c7d: $80
	ei                                               ; $4c7e: $fb
	add  [hl]                                        ; $4c7f: $86
	jr   @+$09                                       ; $4c80: $18 $07

	ld   a, a                                        ; $4c82: $7f
	ld   h, [hl]                                     ; $4c83: $66
	ld   h, h                                        ; $4c84: $64
	ld   l, l                                        ; $4c85: $6d
	ld   l, a                                        ; $4c86: $6f
	ld   h, [hl]                                     ; $4c87: $66
	or   $fe                                         ; $4c88: $f6 $fe
	add  [hl]                                        ; $4c8a: $86
	ld   [bc], a                                     ; $4c8b: $02
	inc  b                                           ; $4c8c: $04
	db   $fc                                         ; $4c8d: $fc
	inc  bc                                          ; $4c8e: $03
	ld   bc, $fdff                                   ; $4c8f: $01 $ff $fd
	add  b                                           ; $4c92: $80
	inc  bc                                          ; $4c93: $03
	add  c                                           ; $4c94: $81
	ld   a, [hl]                                     ; $4c95: $7e
	add  b                                           ; $4c96: $80
	ld   [bc], a                                     ; $4c97: $02
	add  b                                           ; $4c98: $80
	ld   e, $80                                      ; $4c99: $1e $80
	ld   [bc], a                                     ; $4c9b: $02
	ld   bc, $5c1f                                   ; $4c9c: $01 $1f $5c
	add  b                                           ; $4c9f: $80
	ld   b, b                                        ; $4ca0: $40
	add  b                                           ; $4ca1: $80
	ld   c, b                                        ; $4ca2: $48
	ld   bc, $88c8                                   ; $4ca3: $01 $c8 $88
	add  b                                           ; $4ca6: $80
	adc  d                                           ; $4ca7: $8a
	add  h                                           ; $4ca8: $84
	sbc  d                                           ; $4ca9: $9a
	ld   bc, $1884                                   ; $4caa: $01 $84 $18
	add  b                                           ; $4cad: $80
	ld   [$0082], sp                                 ; $4cae: $08 $82 $00
	add  d                                           ; $4cb1: $82
	inc  d                                           ; $4cb2: $14
	add  d                                           ; $4cb3: $82
	sbc  h                                           ; $4cb4: $9c
	inc  c                                           ; $4cb5: $0c
	ldh  [c], a                                      ; $4cb6: $e2
	rrca                                             ; $4cb7: $0f
	add  hl, bc                                      ; $4cb8: $09
	rrca                                             ; $4cb9: $0f
	ld   [$000f], sp                                 ; $4cba: $08 $0f $00
	rrca                                             ; $4cbd: $0f
	nop                                              ; $4cbe: $00
	rrca                                             ; $4cbf: $0f
	nop                                              ; $4cc0: $00
	rrca                                             ; $4cc1: $0f
	nop                                              ; $4cc2: $00
	add  b                                           ; $4cc3: $80
	rrca                                             ; $4cc4: $0f
	dec  c                                           ; $4cc5: $0d
	nop                                              ; $4cc6: $00
	rst  $30                                         ; $4cc7: $f7
	ld   hl, sp-$7a                                  ; $4cc8: $f8 $86
	adc  b                                           ; $4cca: $88
	halt                                             ; $4ccb: $76
	cp   $08                                         ; $4ccc: $fe $08
	adc  b                                           ; $4cce: $88
	ld   a, [hl]                                     ; $4ccf: $7e
	cp   $08                                         ; $4cd0: $fe $08
	adc  b                                           ; $4cd2: $88
	add  hl, bc                                      ; $4cd3: $09
	add  b                                           ; $4cd4: $80
	rst  $38                                         ; $4cd5: $ff
	ld   bc, $f400                                   ; $4cd6: $01 $00 $f4
	add  e                                           ; $4cd9: $83
	ld   e, $80                                      ; $4cda: $1e $80
	rra                                              ; $4cdc: $1f
	nop                                              ; $4cdd: $00
	ld   e, $80                                      ; $4cde: $1e $80
	rra                                              ; $4ce0: $1f
	ld   bc, $1c1e                                   ; $4ce1: $01 $1e $1c
	add  c                                           ; $4ce4: $81
	rra                                              ; $4ce5: $1f
	ld   [bc], a                                     ; $4ce6: $02
	jp   $9fbf                                       ; $4ce7: $c3 $bf $9f


	add  c                                           ; $4cea: $81
	cp   a                                           ; $4ceb: $bf
	add  b                                           ; $4cec: $80
	rst  $38                                         ; $4ced: $ff
	ld   [bc], a                                     ; $4cee: $02
	or   l                                           ; $4cef: $b5
	rst  $38                                         ; $4cf0: $ff
	push af                                          ; $4cf1: $f5
	add  e                                           ; $4cf2: $83
	ld   e, a                                        ; $4cf3: $5f
	nop                                              ; $4cf4: $00
	inc  e                                           ; $4cf5: $1c
	add  b                                           ; $4cf6: $80
	jp   c, $db03                                    ; $4cf7: $da $03 $db

	or   e                                           ; $4cfa: $b3
	ei                                               ; $4cfb: $fb
	ld   c, e                                        ; $4cfc: $4b
	add  b                                           ; $4cfd: $80
	or   h                                           ; $4cfe: $b4
	add  b                                           ; $4cff: $80
	or   l                                           ; $4d00: $b5
	add  b                                           ; $4d01: $80
	or   h                                           ; $4d02: $b4
	add  c                                           ; $4d03: $81
	or   l                                           ; $4d04: $b5
	nop                                              ; $4d05: $00
	db   $db                                         ; $4d06: $db
	add  b                                           ; $4d07: $80
	ld   a, [$7080]                                  ; $4d08: $fa $80 $70
	add  b                                           ; $4d0b: $80
	halt                                             ; $4d0c: $76
	add  b                                           ; $4d0d: $80
	ld   [hl], b                                     ; $4d0e: $70
	add  b                                           ; $4d0f: $80
	xor  [hl]                                        ; $4d10: $ae
	add  b                                           ; $4d11: $80
	jr   nz, jr_075_4d17                             ; $4d12: $20 $03

	xor  [hl]                                        ; $4d14: $ae
	or   b                                           ; $4d15: $b0
	cp   [hl]                                        ; $4d16: $be

jr_075_4d17:
	and  b                                           ; $4d17: $a0
	add  l                                           ; $4d18: $85
	ldh  [rP1], a                                    ; $4d19: $e0 $00
	rst  $38                                         ; $4d1b: $ff
	add  c                                           ; $4d1c: $81
	ldh  [$80], a                                    ; $4d1d: $e0 $80
	ldh  a, [$80]                                    ; $4d1f: $f0 $80
	pop  af                                          ; $4d21: $f1
	nop                                              ; $4d22: $00
	rst  $38                                         ; $4d23: $ff
	add  l                                           ; $4d24: $85
	nop                                              ; $4d25: $00
	ld   bc, $00ff                                   ; $4d26: $01 $ff $00
	add  b                                           ; $4d29: $80
	ld   bc, $1f80                                   ; $4d2a: $01 $80 $1f
	add  b                                           ; $4d2d: $80
	rst  $28                                         ; $4d2e: $ef
	nop                                              ; $4d2f: $00
	rst  $30                                         ; $4d30: $f7
	add  c                                           ; $4d31: $81
	jr   @+$09                                       ; $4d32: $18 $07

	ld   [$1418], sp                                 ; $4d34: $08 $18 $14
	inc  l                                           ; $4d37: $2c
	ld   sp, hl                                      ; $4d38: $f9
	ld   [bc], a                                     ; $4d39: $02
	jp   $80ff                                       ; $4d3a: $c3 $ff $80


	add  $80                                         ; $4d3d: $c6 $80
	ld   sp, hl                                      ; $4d3f: $f9
	nop                                              ; $4d40: $00
	rst  $38                                         ; $4d41: $ff
	add  l                                           ; $4d42: $85
	nop                                              ; $4d43: $00
	ld   bc, $6a95                                   ; $4d44: $01 $95 $6a
	add  b                                           ; $4d47: $80
	or   h                                           ; $4d48: $b4
	add  b                                           ; $4d49: $80
	ld   b, [hl]                                     ; $4d4a: $46
	add  b                                           ; $4d4b: $80
	ret  z                                           ; $4d4c: $c8

	nop                                              ; $4d4d: $00
	rst  $38                                         ; $4d4e: $ff
	add  l                                           ; $4d4f: $85
	nop                                              ; $4d50: $00
	ld   bc, $53ac                                   ; $4d51: $01 $ac $53
	add  b                                           ; $4d54: $80
	inc  l                                           ; $4d55: $2c
	add  b                                           ; $4d56: $80
	inc  hl                                          ; $4d57: $23
	add  b                                           ; $4d58: $80
	stop                                             ; $4d59: $10 $00
	rst  $30                                         ; $4d5b: $f7
	add  c                                           ; $4d5c: $81
	jr   jr_075_4d66                                 ; $4d5d: $18 $07

	ld   [$1418], sp                                 ; $4d5f: $08 $18 $14
	inc  l                                           ; $4d62: $2c
	ld   a, e                                        ; $4d63: $7b
	add  b                                           ; $4d64: $80
	ld   h, e                                        ; $4d65: $63

jr_075_4d66:
	ld   e, a                                        ; $4d66: $5f
	add  b                                           ; $4d67: $80
	db   $e3                                         ; $4d68: $e3
	add  b                                           ; $4d69: $80
	sbc  h                                           ; $4d6a: $9c
	ld   [bc], a                                     ; $4d6b: $02
	db   $fc                                         ; $4d6c: $fc
	ld   [bc], a                                     ; $4d6d: $02
	dec  b                                           ; $4d6e: $05
	add  e                                           ; $4d6f: $83
	rlca                                             ; $4d70: $07
	ld   bc, $07ff                                   ; $4d71: $01 $ff $07
	add  b                                           ; $4d74: $80
	add  a                                           ; $4d75: $87
	ld   b, $fb                                      ; $4d76: $06 $fb
	ld   hl, sp+$70                                  ; $4d78: $f8 $70
	ld   [hl], a                                     ; $4d7a: $77
	ld   a, [hl]                                     ; $4d7b: $7e
	ld   [bc], a                                     ; $4d7c: $02
	add  d                                           ; $4d7d: $82
	add  e                                           ; $4d7e: $83
	jp   nz, $fe01                                   ; $4d7f: $c2 $01 $fe

	jp   nz, $c381                                   ; $4d82: $c2 $81 $c3

	inc  de                                          ; $4d85: $13
	inc  bc                                          ; $4d86: $03
	ld   b, e                                        ; $4d87: $43
	add  e                                           ; $4d88: $83
	push bc                                          ; $4d89: $c5
	cp   d                                           ; $4d8a: $ba
	cp   b                                           ; $4d8b: $b8
	and  [hl]                                        ; $4d8c: $a6
	and  d                                           ; $4d8d: $a2
	and  e                                           ; $4d8e: $a3
	add  b                                           ; $4d8f: $80
	and  a                                           ; $4d90: $a7
	cp   b                                           ; $4d91: $b8
	cp   a                                           ; $4d92: $bf
	cp   b                                           ; $4d93: $b8
	add  a                                           ; $4d94: $87
	jp   nc, $0257                                   ; $4d95: $d2 $57 $02

	rlca                                             ; $4d98: $07
	add  c                                           ; $4d99: $81

jr_075_4d9a:
	add  l                                           ; $4d9a: $85
	cp   c                                           ; $4d9b: $b9
	rlca                                             ; $4d9c: $07
	jr   c, jr_075_4d9a                              ; $4d9d: $38 $fb

	ld   a, e                                        ; $4d9f: $7b
	ei                                               ; $4da0: $fb
	cp   e                                           ; $4da1: $bb
	ld   hl, sp-$46                                  ; $4da2: $f8 $ba
	ld   a, [$023a]                                  ; $4da4: $fa $3a $02
	add  [hl]                                        ; $4da7: $86
	nop                                              ; $4da8: $00
	nop                                              ; $4da9: $00
	rrca                                             ; $4daa: $0f
	add  c                                           ; $4dab: $81
	nop                                              ; $4dac: $00
	add  b                                           ; $4dad: $80
	ld   [$0080], sp                                 ; $4dae: $08 $80 $00
	nop                                              ; $4db1: $00
	rrca                                             ; $4db2: $0f
	add  l                                           ; $4db3: $85
	nop                                              ; $4db4: $00
	nop                                              ; $4db5: $00
	rst  $38                                         ; $4db6: $ff
	add  b                                           ; $4db7: $80
	nop                                              ; $4db8: $00
	nop                                              ; $4db9: $00
	ld   [bc], a                                     ; $4dba: $02
	add  d                                           ; $4dbb: $82
	ld   a, $00                                      ; $4dbc: $3e $00
	db   $fd                                         ; $4dbe: $fd
	add  l                                           ; $4dbf: $85
	nop                                              ; $4dc0: $00
	nop                                              ; $4dc1: $00
	inc  sp                                          ; $4dc2: $33
	add  l                                           ; $4dc3: $85
	xor  $00                                         ; $4dc4: $ee $00
	db   $dd                                         ; $4dc6: $dd
	add  l                                           ; $4dc7: $85

jr_075_4dc8:
	nop                                              ; $4dc8: $00
	nop                                              ; $4dc9: $00
	inc  sp                                          ; $4dca: $33
	add  l                                           ; $4dcb: $85
	xor  $00                                         ; $4dcc: $ee $00
	db   $dd                                         ; $4dce: $dd
	add  l                                           ; $4dcf: $85
	nop                                              ; $4dd0: $00
	nop                                              ; $4dd1: $00
	inc  sp                                          ; $4dd2: $33
	add  b                                           ; $4dd3: $80
	call z, $ee83                                    ; $4dd4: $cc $83 $ee
	nop                                              ; $4dd7: $00
	db   $dd                                         ; $4dd8: $dd
	add  [hl]                                        ; $4dd9: $86
	nop                                              ; $4dda: $00
	nop                                              ; $4ddb: $00
	rst  $38                                         ; $4ddc: $ff
	add  b                                           ; $4ddd: $80
	call $cc00                                       ; $4dde: $cd $00 $cc
	add  c                                           ; $4de1: $81
	xor  $00                                         ; $4de2: $ee $00
	db   $dd                                         ; $4de4: $dd
	add  l                                           ; $4de5: $85
	nop                                              ; $4de6: $00
	add  b                                           ; $4de7: $80
	rst  $38                                         ; $4de8: $ff
	ld   bc, $ff00                                   ; $4de9: $01 $00 $ff
	add  c                                           ; $4dec: $81
	call z, $ee01                                    ; $4ded: $cc $01 $ee
	db   $dd                                         ; $4df0: $dd
	add  l                                           ; $4df1: $85
	nop                                              ; $4df2: $00
	ld   [$3f1f], sp                                 ; $4df3: $08 $1f $3f
	rst  JumpTable                                         ; $4df6: $df
	rst  $38                                         ; $4df7: $ff
	ld   bc, $ccff                                   ; $4df8: $01 $ff $cc
	call $85ff                                       ; $4dfb: $cd $ff $85
	nop                                              ; $4dfe: $00
	nop                                              ; $4dff: $00
	db   $e3                                         ; $4e00: $e3
	add  c                                           ; $4e01: $81
	rst  $38                                         ; $4e02: $ff
	inc  b                                           ; $4e03: $04
	db   $e3                                         ; $4e04: $e3
	rst  $38                                         ; $4e05: $ff
	inc  bc                                          ; $4e06: $03
	rst  $38                                         ; $4e07: $ff
	db   $fc                                         ; $4e08: $fc
	add  l                                           ; $4e09: $85
	nop                                              ; $4e0a: $00
	add  b                                           ; $4e0b: $80
	rst  $38                                         ; $4e0c: $ff
	ld   [bc], a                                     ; $4e0d: $02
	db   $fc                                         ; $4e0e: $fc
	rst  $38                                         ; $4e0f: $ff
	ei                                               ; $4e10: $fb
	add  c                                           ; $4e11: $81
	db   $fd                                         ; $4e12: $fd
	nop                                              ; $4e13: $00
	dec  b                                           ; $4e14: $05
	add  l                                           ; $4e15: $85
	nop                                              ; $4e16: $00
	inc  b                                           ; $4e17: $04
	ld   hl, sp-$21                                  ; $4e18: $f8 $df
	ld   e, b                                        ; $4e1a: $58
	rst  JumpTable                                         ; $4e1b: $df
	sbc  a                                           ; $4e1c: $9f
	add  b                                           ; $4e1d: $80
	ld   e, a                                        ; $4e1e: $5f
	ld   bc, $201f                                   ; $4e1f: $01 $1f $20
	add  l                                           ; $4e22: $85
	nop                                              ; $4e23: $00
	ld   [$e614], sp                                 ; $4e24: $08 $14 $e6
	jp   nz, $e7e3                                   ; $4e27: $c2 $e3 $e7

	and  $e2                                         ; $4e2a: $e6 $e2
	db   $e3                                         ; $4e2c: $e3
	db   $d3                                         ; $4e2d: $d3
	add  l                                           ; $4e2e: $85
	nop                                              ; $4e2f: $00
	ld   [$350c], sp                                 ; $4e30: $08 $0c $35
	scf                                              ; $4e33: $37
	ld   d, a                                        ; $4e34: $57
	ld   d, l                                        ; $4e35: $55
	sub  l                                           ; $4e36: $95
	sub  a                                           ; $4e37: $97
	ld   d, a                                        ; $4e38: $57
	ld   e, c                                        ; $4e39: $59
	add  l                                           ; $4e3a: $85
	nop                                              ; $4e3b: $00
	nop                                              ; $4e3c: $00
	rst  $38                                         ; $4e3d: $ff
	add  l                                           ; $4e3e: $85
	rst  ToBoot                                         ; $4e3f: $c7
	nop                                              ; $4e40: $00
	jr   c, jr_075_4dc8                              ; $4e41: $38 $85

	nop                                              ; $4e43: $00
	nop                                              ; $4e44: $00
	rst  $38                                         ; $4e45: $ff
	add  l                                           ; $4e46: $85
	cp   [hl]                                        ; $4e47: $be
	nop                                              ; $4e48: $00
	ld   b, c                                        ; $4e49: $41
	add  l                                           ; $4e4a: $85
	nop                                              ; $4e4b: $00
	ld   [$fbff], sp                                 ; $4e4c: $08 $ff $fb
	db   $fc                                         ; $4e4f: $fc
	rst  $38                                         ; $4e50: $ff
	db   $e4                                         ; $4e51: $e4
	db   $fc                                         ; $4e52: $fc
	sub  c                                           ; $4e53: $91
	pop  af                                          ; $4e54: $f1
	ld   [hl], b                                     ; $4e55: $70
	add  a                                           ; $4e56: $87
	nop                                              ; $4e57: $00
	add  b                                           ; $4e58: $80
	ld   [bc], a                                     ; $4e59: $02
	add  b                                           ; $4e5a: $80
	nop                                              ; $4e5b: $00
	add  b                                           ; $4e5c: $80
	ld   c, $00                                      ; $4e5d: $0e $00
	call z, $3e86                                    ; $4e5f: $cc $86 $3e
	ld   bc, $3c3f                                   ; $4e62: $01 $3f $3c
	add  c                                           ; $4e65: $81
	ccf                                              ; $4e66: $3f
	add  b                                           ; $4e67: $80
	inc  a                                           ; $4e68: $3c
	nop                                              ; $4e69: $00
	call z, $ee85                                    ; $4e6a: $cc $85 $ee
	dec  b                                           ; $4e6d: $05
	ld   l, $fe                                      ; $4e6e: $2e $fe
	ld   [bc], a                                     ; $4e70: $02
	rst  $38                                         ; $4e71: $ff
	ldh  a, [rIE]                                    ; $4e72: $f0 $ff
	add  b                                           ; $4e74: $80
	nop                                              ; $4e75: $00
	nop                                              ; $4e76: $00
	call z, $ee87                                    ; $4e77: $cc $87 $ee
	ld   b, $22                                      ; $4e7a: $06 $22
	cp   $02                                         ; $4e7c: $fe $02
	rst  $38                                         ; $4e7e: $ff
	ld   a, h                                        ; $4e7f: $7c
	ld   a, a                                        ; $4e80: $7f
	call z, $ee89                                    ; $4e81: $cc $89 $ee
	inc  b                                           ; $4e84: $04
	ld   [hl+], a                                    ; $4e85: $22
	rst  $38                                         ; $4e86: $ff
	nop                                              ; $4e87: $00
	rst  $38                                         ; $4e88: $ff
	call z, $ee8b                                    ; $4e89: $cc $8b $ee
	ld   [bc], a                                     ; $4e8c: $02
	ld   [hl+], a                                    ; $4e8d: $22
	rst  $38                                         ; $4e8e: $ff
	inc  sp                                          ; $4e8f: $33
	adc  e                                           ; $4e90: $8b
	xor  $02                                         ; $4e91: $ee $02
	ld   l, $ee                                      ; $4e93: $2e $ee
	ld   l, $8d                                      ; $4e95: $2e $8d
	xor  $02                                         ; $4e97: $ee $02
	db   $ed                                         ; $4e99: $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e9a: $cf
	call z, $ec80                                    ; $4e9b: $cc $80 $ec
	adc  c                                           ; $4e9e: $89
	xor  $04                                         ; $4e9f: $ee $04
	jp   c, $c8ff                                    ; $4ea1: $da $ff $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ea4: $cf
	call z, $ec80                                    ; $4ea5: $cc $80 $ec
	add  a                                           ; $4ea8: $87
	xor  $05                                         ; $4ea9: $ee $05
	ld   [hl+], a                                    ; $4eab: $22
	rst  JumpTable                                         ; $4eac: $df
	rrca                                             ; $4ead: $0f
	rst  JumpTable                                         ; $4eae: $df
	ret  nz                                          ; $4eaf: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4eb0: $cf
	add  c                                           ; $4eb1: $81
	call z, $ce81                                    ; $4eb2: $cc $81 $ce
	rrca                                             ; $4eb5: $0f
	xor  $ce                                         ; $4eb6: $ee $ce
	cp   [hl]                                        ; $4eb8: $be
	adc  $99                                         ; $4eb9: $ce $99
	and  $22                                         ; $4ebb: $e6 $22
	di                                               ; $4ebd: $f3
	rlca                                             ; $4ebe: $07
	or   $c2                                         ; $4ebf: $f6 $c2
	jp   $e6c7                                       ; $4ec1: $c3 $c7 $e6


	ldh  [c], a                                      ; $4ec4: $e2
	db   $e3                                         ; $4ec5: $e3
	add  b                                           ; $4ec6: $80
	rst  $20                                         ; $4ec7: $e7
	ld   [de], a                                     ; $4ec8: $12
	ldh  [$e3], a                                    ; $4ec9: $e0 $e3
	call c, $3735                                    ; $4ecb: $dc $35 $37
	ld   d, a                                        ; $4ece: $57
	ld   d, l                                        ; $4ecf: $55
	sub  l                                           ; $4ed0: $95
	sub  a                                           ; $4ed1: $97
	ld   d, a                                        ; $4ed2: $57
	ld   d, l                                        ; $4ed3: $55
	dec  [hl]                                        ; $4ed4: $35
	scf                                              ; $4ed5: $37
	rst  $30                                         ; $4ed6: $f7
	push bc                                          ; $4ed7: $c5
	db   $fd                                         ; $4ed8: $fd
	dec  hl                                          ; $4ed9: $2b
	db   $eb                                         ; $4eda: $eb
	cp   $89                                         ; $4edb: $fe $89
	rst  ToBoot                                         ; $4edd: $c7
	dec  bc                                          ; $4ede: $0b
	add  $c7                                         ; $4edf: $c6 $c7
	ret  nz                                          ; $4ee1: $c0

	add  $c1                                         ; $4ee2: $c6 $c1
	cp   a                                           ; $4ee4: $bf
	cp   b                                           ; $4ee5: $b8
	cp   [hl]                                        ; $4ee6: $be
	or   l                                           ; $4ee7: $b5
	cp   l                                           ; $4ee8: $bd
	add  d                                           ; $4ee9: $82
	or   d                                           ; $4eea: $b2
	add  b                                           ; $4eeb: $80
	db   $e4                                         ; $4eec: $e4
	ld   bc, $ad2d                                   ; $4eed: $01 $2d $ad
	add  b                                           ; $4ef0: $80
	ld   c, c                                        ; $4ef1: $49
	add  b                                           ; $4ef2: $80
	ld   d, d                                        ; $4ef3: $52
	add  b                                           ; $4ef4: $80
	jp   c, $3580                                    ; $4ef5: $da $80 $35

	add  b                                           ; $4ef8: $80
	ld   l, c                                        ; $4ef9: $69
	add  b                                           ; $4efa: $80
	jp   nc, $9280                                   ; $4efb: $d2 $80 $92

	add  d                                           ; $4efe: $82
	inc  h                                           ; $4eff: $24
	add  b                                           ; $4f00: $80
	ld   c, b                                        ; $4f01: $48
	nop                                              ; $4f02: $00
	cp   $85                                         ; $4f03: $fe $85
	ld   c, $00                                      ; $4f05: $0e $00
	inc  c                                           ; $4f07: $0c
	add  d                                           ; $4f08: $82
	ld   c, $81                                      ; $4f09: $0e $81
	inc  c                                           ; $4f0b: $0c
	ld   bc, $3ece                                   ; $4f0c: $01 $ce $3e
	add  b                                           ; $4f0f: $80
	dec  a                                           ; $4f10: $3d
	add  d                                           ; $4f11: $82
	ccf                                              ; $4f12: $3f
	add  b                                           ; $4f13: $80
	inc  a                                           ; $4f14: $3c
	add  b                                           ; $4f15: $80
	ccf                                              ; $4f16: $3f
	nop                                              ; $4f17: $00
	ld   a, $80                                      ; $4f18: $3e $80
	ccf                                              ; $4f1a: $3f
	nop                                              ; $4f1b: $00
	ld   a, $80                                      ; $4f1c: $3e $80
	xor  d                                           ; $4f1e: $aa
	add  b                                           ; $4f1f: $80
	ld   d, l                                        ; $4f20: $55
	add  d                                           ; $4f21: $82
	rst  $38                                         ; $4f22: $ff
	add  b                                           ; $4f23: $80
	nop                                              ; $4f24: $00
	rlca                                             ; $4f25: $07
	inc  bc                                          ; $4f26: $03
	jp   $87c7                                       ; $4f27: $c3 $c7 $87


	sbc  [hl]                                        ; $4f2a: $9e
	rra                                              ; $4f2b: $1f
	add  c                                           ; $4f2c: $81
	add  b                                           ; $4f2d: $80
	add  b                                           ; $4f2e: $80
	ld   d, l                                        ; $4f2f: $55
	add  b                                           ; $4f30: $80
	xor  d                                           ; $4f31: $aa
	add  b                                           ; $4f32: $80
	rst  $38                                         ; $4f33: $ff
	add  b                                           ; $4f34: $80
	ld   a, a                                        ; $4f35: $7f
	add  b                                           ; $4f36: $80
	add  b                                           ; $4f37: $80
	dec  b                                           ; $4f38: $05
	ret  nz                                          ; $4f39: $c0

	db   $fc                                         ; $4f3a: $fc
	inc  l                                           ; $4f3b: $2c
	ldh  a, [rIE]                                    ; $4f3c: $f0 $ff
	rra                                              ; $4f3e: $1f
	add  b                                           ; $4f3f: $80
	ld   b, b                                        ; $4f40: $40
	add  b                                           ; $4f41: $80
	xor  d                                           ; $4f42: $aa
	add  b                                           ; $4f43: $80
	push af                                          ; $4f44: $f5
	add  b                                           ; $4f45: $80
	rst  $38                                         ; $4f46: $ff
	add  b                                           ; $4f47: $80
	rrca                                             ; $4f48: $0f
	add  b                                           ; $4f49: $80
	nop                                              ; $4f4a: $00
	inc  bc                                          ; $4f4b: $03
	inc  a                                           ; $4f4c: $3c
	ccf                                              ; $4f4d: $3f
	db   $fc                                         ; $4f4e: $fc
	rst  $38                                         ; $4f4f: $ff
	add  b                                           ; $4f50: $80
	inc  bc                                          ; $4f51: $03
	add  b                                           ; $4f52: $80
	xor  b                                           ; $4f53: $a8
	add  b                                           ; $4f54: $80
	ld   d, l                                        ; $4f55: $55
	add  b                                           ; $4f56: $80
	cp   $80                                         ; $4f57: $fe $80
	rst  $38                                         ; $4f59: $ff
	add  b                                           ; $4f5a: $80
	nop                                              ; $4f5b: $00
	dec  b                                           ; $4f5c: $05
	ld   bc, $00c1                                   ; $4f5d: $01 $c1 $00
	rst  $38                                         ; $4f60: $ff
	ret  nz                                          ; $4f61: $c0

	rst  $38                                         ; $4f62: $ff
	add  b                                           ; $4f63: $80
	nop                                              ; $4f64: $00
	add  b                                           ; $4f65: $80
	ld   d, l                                        ; $4f66: $55
	add  b                                           ; $4f67: $80
	xor  d                                           ; $4f68: $aa
	add  b                                           ; $4f69: $80
	rst  $38                                         ; $4f6a: $ff
	add  b                                           ; $4f6b: $80
	ld   a, a                                        ; $4f6c: $7f
	add  b                                           ; $4f6d: $80
	add  b                                           ; $4f6e: $80
	dec  b                                           ; $4f6f: $05
	inc  c                                           ; $4f70: $0c
	cp   $02                                         ; $4f71: $fe $02
	rst  $38                                         ; $4f73: $ff
	ld   [hl], b                                     ; $4f74: $70
	ld   a, a                                        ; $4f75: $7f
	add  b                                           ; $4f76: $80
	nop                                              ; $4f77: $00
	add  b                                           ; $4f78: $80
	xor  d                                           ; $4f79: $aa
	add  b                                           ; $4f7a: $80
	ld   d, l                                        ; $4f7b: $55
	add  b                                           ; $4f7c: $80
	rst  $38                                         ; $4f7d: $ff
	add  b                                           ; $4f7e: $80
	rrca                                             ; $4f7f: $0f
	db   $10                                         ; $4f80: $10
	call z, $26ee                                    ; $4f81: $cc $ee $26
	cp   $02                                         ; $4f84: $fe $02
	rst  $38                                         ; $4f86: $ff
	ld   [$000f], sp                                 ; $4f87: $08 $0f $00
	and  b                                           ; $4f8a: $a0
	ret  z                                           ; $4f8b: $c8

	ld   a, l                                        ; $4f8c: $7d
	ld   b, c                                        ; $4f8d: $41
	cp   $48                                         ; $4f8e: $fe $48
	rst  $38                                         ; $4f90: $ff
	pop  de                                          ; $4f91: $d1
	add  c                                           ; $4f92: $81
	xor  $05                                         ; $4f93: $ee $05
	ld   [hl+], a                                    ; $4f95: $22
	cp   $00                                         ; $4f96: $fe $00
	rst  $38                                         ; $4f98: $ff
	ld   b, $07                                      ; $4f99: $06 $07
	add  b                                           ; $4f9b: $80
	ld   d, b                                        ; $4f9c: $50
	add  b                                           ; $4f9d: $80
	xor  d                                           ; $4f9e: $aa
	add  b                                           ; $4f9f: $80
	push af                                          ; $4fa0: $f5
	add  hl, bc                                      ; $4fa1: $09
	inc  c                                           ; $4fa2: $0c
	sub  $de                                         ; $4fa3: $d6 $de
	ld   b, $ae                                      ; $4fa5: $06 $ae
	ld   b, $02                                      ; $4fa7: $06 $02
	rlca                                             ; $4fa9: $07
	nop                                              ; $4faa: $00
	rlca                                             ; $4fab: $07
	add  b                                           ; $4fac: $80
	ld   bc, $0280                                   ; $4fad: $01 $80 $02
	inc  bc                                          ; $4fb0: $03
	xor  l                                           ; $4fb1: $ad
	dec  b                                           ; $4fb2: $05
	jp   z, $80e5                                    ; $4fb3: $ca $e5 $80

	ldh  [c], a                                      ; $4fb6: $e2
	add  b                                           ; $4fb7: $80
	push hl                                          ; $4fb8: $e5
	dec  b                                           ; $4fb9: $05
	ld   h, d                                        ; $4fba: $62
	ldh  [c], a                                      ; $4fbb: $e2
	inc  h                                           ; $4fbc: $24
	db   $f4                                         ; $4fbd: $f4
	add  b                                           ; $4fbe: $80
	ldh  a, [$80]                                    ; $4fbf: $f0 $80
	nop                                              ; $4fc1: $00
	add  b                                           ; $4fc2: $80
	ld   d, b                                        ; $4fc3: $50
	ld   bc, $55a4                                   ; $4fc4: $01 $a4 $55
	add  b                                           ; $4fc7: $80
	xor  e                                           ; $4fc8: $ab
	add  b                                           ; $4fc9: $80
	ld   d, l                                        ; $4fca: $55
	add  b                                           ; $4fcb: $80
	xor  e                                           ; $4fcc: $ab
	add  b                                           ; $4fcd: $80
	ld   b, l                                        ; $4fce: $45
	add  h                                           ; $4fcf: $84
	ld   bc, $f401                                   ; $4fd0: $01 $01 $f4
	jp   z, $d280                                    ; $4fd3: $ca $80 $d2

	add  b                                           ; $4fd6: $80
	db   $f4                                         ; $4fd7: $f4
	dec  bc                                          ; $4fd8: $0b
	sub  h                                           ; $4fd9: $94
	call nc, $9514                                   ; $4fda: $d4 $14 $95
	or   [hl]                                        ; $4fdd: $b6
	or   a                                           ; $4fde: $b7
	cp   h                                           ; $4fdf: $bc
	cp   a                                           ; $4fe0: $bf
	xor  h                                           ; $4fe1: $ac
	cp   a                                           ; $4fe2: $bf
	add  d                                           ; $4fe3: $82
	sub  d                                           ; $4fe4: $92
	add  b                                           ; $4fe5: $80
	add  b                                           ; $4fe6: $80
	add  b                                           ; $4fe7: $80
	add  e                                           ; $4fe8: $83
	add  b                                           ; $4fe9: $80
	inc  l                                           ; $4fea: $2c
	add  hl, bc                                      ; $4feb: $09
	ld   [hl-], a                                    ; $4fec: $32
	ldh  a, [c]                                      ; $4fed: $f2
	dec  b                                           ; $4fee: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fef: $cf
	sbc  a                                           ; $4ff0: $9f
	cp   a                                           ; $4ff1: $bf
	ld   [hl], l                                     ; $4ff2: $75
	ld   a, a                                        ; $4ff3: $7f
	jr   z, jr_075_4ffe                              ; $4ff4: $28 $08

	add  b                                           ; $4ff6: $80
	pop  hl                                          ; $4ff7: $e1
	add  b                                           ; $4ff8: $80
	nop                                              ; $4ff9: $00
	add  b                                           ; $4ffa: $80
	ld   bc, $1880                                   ; $4ffb: $01 $80 $18

jr_075_4ffe:
	add  b                                           ; $4ffe: $80
	ld   h, e                                        ; $4fff: $63
	add  b                                           ; $5000: $80
	adc  b                                           ; $5001: $88
	ld   [bc], a                                     ; $5002: $02
	ld   h, $27                                      ; $5003: $26 $27
	db   $fd                                         ; $5005: $fd
	adc  l                                           ; $5006: $8d
	ld   c, $00                                      ; $5007: $0e $00
	adc  $8d                                         ; $5009: $ce $8d
	ccf                                              ; $500b: $3f
	ld   [bc], a                                     ; $500c: $02
	inc  e                                           ; $500d: $1c
	rst  $38                                         ; $500e: $ff
	ldh  [$84], a                                    ; $500f: $e0 $84
	rst  $38                                         ; $5011: $ff
	add  b                                           ; $5012: $80
	rst  $30                                         ; $5013: $f7
	ld   bc, $ffe3                                   ; $5014: $01 $e3 $ff
	add  c                                           ; $5017: $81

jr_075_5018:
	rst  $30                                         ; $5018: $f7
	ld   [bc], a                                     ; $5019: $02
	inc  d                                           ; $501a: $14
	rst  $38                                         ; $501b: $ff
	nop                                              ; $501c: $00
	add  l                                           ; $501d: $85
	rst  $38                                         ; $501e: $ff
	ld   [bc], a                                     ; $501f: $02
	rst  $20                                         ; $5020: $e7
	rst  $38                                         ; $5021: $ff
	db   $db                                         ; $5022: $db
	add  c                                           ; $5023: $81
	rst  $20                                         ; $5024: $e7
	inc  b                                           ; $5025: $04
	dec  sp                                          ; $5026: $3b
	rst  $38                                         ; $5027: $ff
	nop                                              ; $5028: $00
	rst  $38                                         ; $5029: $ff
	ldh  [$87], a                                    ; $502a: $e0 $87
	rst  $38                                         ; $502c: $ff
	ld   [$ffe0], sp                                 ; $502d: $08 $e0 $ff
	rst  $20                                         ; $5030: $e7
	rlca                                             ; $5031: $07
	cp   $ff                                         ; $5032: $fe $ff
	nop                                              ; $5034: $00
	rst  $38                                         ; $5035: $ff
	cp   $85                                         ; $5036: $fe $85
	rst  $38                                         ; $5038: $ff
	ld   [$ff1f], sp                                 ; $5039: $08 $1f $ff
	sbc  a                                           ; $503c: $9f
	ldh  a, [$71]                                    ; $503d: $f0 $71
	pop  bc                                          ; $503f: $c1
	ccf                                              ; $5040: $3f
	rst  $38                                         ; $5041: $ff
	nop                                              ; $5042: $00
	add  d                                           ; $5043: $82
	rst  $38                                         ; $5044: $ff
	dec  c                                           ; $5045: $0d
	cp   $9e                                         ; $5046: $fe $9e
	db   $fc                                         ; $5048: $fc
	ld   l, a                                        ; $5049: $6f
	sbc  [hl]                                        ; $504a: $9e
	dec  e                                           ; $504b: $1d
	ld   [hl], b                                     ; $504c: $70
	ldh  [$fe], a                                    ; $504d: $e0 $fe
	sbc  [hl]                                        ; $504f: $9e
	ld   hl, sp+$07                                  ; $5050: $f8 $07
	rst  $38                                         ; $5052: $ff
	add  c                                           ; $5053: $81
	add  d                                           ; $5054: $82
	rst  $38                                         ; $5055: $ff
	nop                                              ; $5056: $00
	ld   a, a                                        ; $5057: $7f
	add  b                                           ; $5058: $80
	rst  $38                                         ; $5059: $ff
	ld   [$007e], sp                                 ; $505a: $08 $7e $00
	ld   e, $1f                                      ; $505d: $1e $1f
	ld   a, c                                        ; $505f: $79
	ld   a, a                                        ; $5060: $7f
	ld   hl, sp-$01                                  ; $5061: $f8 $ff
	nop                                              ; $5063: $00
	add  b                                           ; $5064: $80
	rst  $38                                         ; $5065: $ff
	add  b                                           ; $5066: $80
	ei                                               ; $5067: $fb
	dec  bc                                          ; $5068: $0b
	pop  af                                          ; $5069: $f1
	rst  $38                                         ; $506a: $ff
	ei                                               ; $506b: $fb
	jp   z, $003f                                    ; $506c: $ca $3f $00

	add  b                                           ; $506f: $80
	add  hl, de                                      ; $5070: $19
	sbc  l                                           ; $5071: $9d
	sbc  h                                           ; $5072: $9c
	sbc  [hl]                                        ; $5073: $9e
	ld   e, $85                                      ; $5074: $1e $85
	sbc  a                                           ; $5076: $9f
	ld   bc, $fa7d                                   ; $5077: $01 $7d $fa
	add  b                                           ; $507a: $80
	rra                                              ; $507b: $1f
	dec  c                                           ; $507c: $0d
	add  b                                           ; $507d: $80
	ldh  [$a6], a                                    ; $507e: $e0 $a6
	rst  $30                                         ; $5080: $f7
	ld   d, a                                        ; $5081: $57
	ld   [hl], a                                     ; $5082: $77
	ld   l, $bf                                      ; $5083: $2e $bf
	sbc  a                                           ; $5085: $9f
	rst  JumpTable                                         ; $5086: $df
	adc  $ee                                         ; $5087: $ce $ee
	ld   c, a                                        ; $5089: $4f
	and  b                                           ; $508a: $a0
	add  b                                           ; $508b: $80
	ldh  a, [$80]                                    ; $508c: $f0 $80
	nop                                              ; $508e: $00
	ld   b, $60                                      ; $508f: $06 $60
	ldh  [rLCDC], a                                  ; $5091: $e0 $40
	ret  nc                                          ; $5093: $d0

	sub  b                                           ; $5094: $90
	or   b                                           ; $5095: $b0
	jr   nc, jr_075_5018                             ; $5096: $30 $80

	ld   [hl], b                                     ; $5098: $70
	ld   bc, $00f0                                   ; $5099: $01 $f0 $00
	add  d                                           ; $509c: $82
	inc  bc                                          ; $509d: $03
	add  b                                           ; $509e: $80
	ld   b, $82                                      ; $509f: $06 $82
	inc  b                                           ; $50a1: $04
	add  e                                           ; $50a2: $83
	nop                                              ; $50a3: $00
	ld   [bc], a                                     ; $50a4: $02
	ld   bc, $ebea                                   ; $50a5: $01 $ea $eb
	add  b                                           ; $50a8: $80
	add  a                                           ; $50a9: $87
	add  b                                           ; $50aa: $80
	cp   l                                           ; $50ab: $bd
	add  b                                           ; $50ac: $80
	call $3480                                       ; $50ad: $cd $80 $34
	add  b                                           ; $50b0: $80
	ld   d, a                                        ; $50b1: $57
	add  b                                           ; $50b2: $80
	and  h                                           ; $50b3: $a4
	dec  c                                           ; $50b4: $0d
	inc  hl                                          ; $50b5: $23
	ld   [hl+], a                                    ; $50b6: $22
	ld   d, [hl]                                     ; $50b7: $56
	ld   d, h                                        ; $50b8: $54
	ld   a, l                                        ; $50b9: $7d
	ld   a, e                                        ; $50ba: $7b
	ld   e, e                                        ; $50bb: $5b
	ld   d, h                                        ; $50bc: $54
	rlca                                             ; $50bd: $07
	ld   a, [de]                                     ; $50be: $1a
	db   $eb                                         ; $50bf: $eb
	rst  $28                                         ; $50c0: $ef
	dec  c                                           ; $50c1: $0d
	ld   a, $80                                      ; $50c2: $3e $80
	db   $db                                         ; $50c4: $db
	ld   [bc], a                                     ; $50c5: $02
	adc  l                                           ; $50c6: $8d
	adc  d                                           ; $50c7: $8a
	ret  c                                           ; $50c8: $d8

	add  b                                           ; $50c9: $80
	db   $e3                                         ; $50ca: $e3
	inc  c                                           ; $50cb: $0c
	inc  c                                           ; $50cc: $0c
	adc  h                                           ; $50cd: $8c
	ld   [hl-], a                                    ; $50ce: $32
	ldh  a, [c]                                      ; $50cf: $f2
	add  h                                           ; $50d0: $84
	call z, $e1e9                                    ; $50d1: $cc $e9 $e1
	adc  h                                           ; $50d4: $8c
	adc  l                                           ; $50d5: $8d
	inc  de                                          ; $50d6: $13
	ld   [hl-], a                                    ; $50d7: $32
	call c, $0e8d                                    ; $50d8: $dc $8d $0e
	nop                                              ; $50db: $00
	adc  $8b                                         ; $50dc: $ce $8b
	ccf                                              ; $50de: $3f
	add  b                                           ; $50df: $80
	ld   a, $03                                      ; $50e0: $3e $03
	rra                                              ; $50e2: $1f
	rst  $30                                         ; $50e3: $f7
	db   $eb                                         ; $50e4: $eb
	rst  $30                                         ; $50e5: $f7
	add  b                                           ; $50e6: $80
	rst  $38                                         ; $50e7: $ff
	inc  bc                                          ; $50e8: $03
	ldh  [c], a                                      ; $50e9: $e2
	ld   a, [$f5e5]                                  ; $50ea: $fa $e5 $f5
	add  b                                           ; $50ed: $80
	xor  d                                           ; $50ee: $aa
	add  b                                           ; $50ef: $80
	ld   d, l                                        ; $50f0: $55
	add  b                                           ; $50f1: $80
	xor  d                                           ; $50f2: $aa
	dec  b                                           ; $50f3: $05
	jp   $c3e7                                       ; $50f4: $c3 $e7 $c3


	rst  $38                                         ; $50f7: $ff
	and  $ff                                         ; $50f8: $e6 $ff
	add  b                                           ; $50fa: $80
	xor  e                                           ; $50fb: $ab
	add  b                                           ; $50fc: $80
	ld   d, l                                        ; $50fd: $55
	add  b                                           ; $50fe: $80
	xor  e                                           ; $50ff: $ab
	ld   bc, $5554                                   ; $5100: $01 $54 $55
	add  b                                           ; $5103: $80
	xor  d                                           ; $5104: $aa
	rlca                                             ; $5105: $07
	adc  d                                           ; $5106: $8a
	ld   a, [$d565]                                  ; $5107: $fa $65 $d5
	ld   [$d5aa], a                                  ; $510a: $ea $aa $d5
	ld   d, l                                        ; $510d: $55
	add  b                                           ; $510e: $80
	adc  b                                           ; $510f: $88
	nop                                              ; $5110: $00
	nop                                              ; $5111: $00
	add  b                                           ; $5112: $80
	add  b                                           ; $5113: $80
	add  b                                           ; $5114: $80
	ret  nz                                          ; $5115: $c0

	ld   [$f770], sp                                 ; $5116: $08 $70 $f7
	cp   a                                           ; $5119: $bf
	ld   l, e                                        ; $511a: $6b
	ld   e, a                                        ; $511b: $5f
	and  l                                           ; $511c: $a5
	xor  a                                           ; $511d: $af
	ld   d, d                                        ; $511e: $52
	ld   d, [hl]                                     ; $511f: $56
	add  b                                           ; $5120: $80
	adc  e                                           ; $5121: $8b
	ld   b, $02                                      ; $5122: $06 $02
	ld   b, $07                                      ; $5124: $06 $07
	dec  c                                           ; $5126: $0d
	ld   c, $3a                                      ; $5127: $0e $3a
	inc  [hl]                                        ; $5129: $34
	add  c                                           ; $512a: $81
	sbc  [hl]                                        ; $512b: $9e
	inc  bc                                          ; $512c: $03
	dec  c                                           ; $512d: $0d
	cp   $df                                         ; $512e: $fe $df
	cp   a                                           ; $5130: $bf
	add  b                                           ; $5131: $80
	ld   d, l                                        ; $5132: $55
	ld   bc, $aaab                                   ; $5133: $01 $ab $aa
	add  b                                           ; $5136: $80
	ld   d, l                                        ; $5137: $55
	add  b                                           ; $5138: $80
	xor  d                                           ; $5139: $aa
	nop                                              ; $513a: $00
	ld   a, [hl]                                     ; $513b: $7e
	add  c                                           ; $513c: $81
	rst  $38                                         ; $513d: $ff
	nop                                              ; $513e: $00
	ld   l, e                                        ; $513f: $6b
	add  e                                           ; $5140: $83
	rst  $38                                         ; $5141: $ff
	ld   b, $95                                      ; $5142: $06 $95
	cp   a                                           ; $5144: $bf
	ld   a, a                                        ; $5145: $7f
	ld   h, c                                        ; $5146: $61
	and  c                                           ; $5147: $a1
	xor  e                                           ; $5148: $ab
	jp   c, $fb81                                    ; $5149: $da $81 $fb

	ld   bc, $fbb5                                   ; $514c: $01 $b5 $fb
	add  b                                           ; $514f: $80
	rst  $38                                         ; $5150: $ff
	ld   [bc], a                                     ; $5151: $02
	ld   sp, hl                                      ; $5152: $f9
	rst  $38                                         ; $5153: $ff
	ld   e, l                                        ; $5154: $5d
	add  b                                           ; $5155: $80
	rst  $38                                         ; $5156: $ff
	add  b                                           ; $5157: $80
	ccf                                              ; $5158: $3f
	inc  bc                                          ; $5159: $03
	ld   a, a                                        ; $515a: $7f
	add  a                                           ; $515b: $87
	sbc  a                                           ; $515c: $9f
	sbc  h                                           ; $515d: $9c
	add  c                                           ; $515e: $81
	sbc  e                                           ; $515f: $9b
	add  b                                           ; $5160: $80
	sbc  b                                           ; $5161: $98
	add  [hl]                                        ; $5162: $86
	sbc  e                                           ; $5163: $9b
	ld   [bc], a                                     ; $5164: $02
	add  [hl]                                        ; $5165: $86
	rst  $30                                         ; $5166: $f7
	ld   c, $81                                      ; $5167: $0e $81
	rst  $38                                         ; $5169: $ff
	add  b                                           ; $516a: $80
	nop                                              ; $516b: $00
	add  d                                           ; $516c: $82
	rst  $38                                         ; $516d: $ff
	add  b                                           ; $516e: $80
	add  a                                           ; $516f: $87
	inc  b                                           ; $5170: $04
	ld   a, e                                        ; $5171: $7b
	inc  bc                                          ; $5172: $03
	ld   [hl], a                                     ; $5173: $77
	ldh  a, [rP1]                                    ; $5174: $f0 $00
	add  b                                           ; $5176: $80
	pop  af                                          ; $5177: $f1
	nop                                              ; $5178: $00
	di                                               ; $5179: $f3
	add  b                                           ; $517a: $80
	inc  bc                                          ; $517b: $03
	nop                                              ; $517c: $00
	ld   h, e                                        ; $517d: $63
	add  h                                           ; $517e: $84
	ld   [hl], d                                     ; $517f: $72
	dec  b                                           ; $5180: $05
	ld   [hl], e                                     ; $5181: $73
	add  e                                           ; $5182: $83
	and  b                                           ; $5183: $a0
	ldh  a, [$d0]                                    ; $5184: $f0 $d0
	ld   hl, sp-$7e                                  ; $5186: $f8 $82
	add  sp, -$7c                                    ; $5188: $e8 $84
	xor  b                                           ; $518a: $a8
	ld   bc, $f0e8                                   ; $518b: $01 $e8 $f0
	add  b                                           ; $518e: $80
	ld   b, h                                        ; $518f: $44
	add  b                                           ; $5190: $80
	ld   b, c                                        ; $5191: $41
	add  b                                           ; $5192: $80
	ld   b, $80                                      ; $5193: $06 $80
	ld   [$0380], sp                                 ; $5195: $08 $80 $03
	add  b                                           ; $5198: $80
	dec  b                                           ; $5199: $05
	add  b                                           ; $519a: $80
	add  hl, bc                                      ; $519b: $09
	dec  c                                           ; $519c: $0d
	inc  bc                                          ; $519d: $03
	ld   b, b                                        ; $519e: $40
	inc  h                                           ; $519f: $24
	or   $47                                         ; $51a0: $f6 $47
	sub  $d3                                         ; $51a2: $d6 $d3
	jp   nc, wPocketSakuraRewardsStruct                                   ; $51a4: $d2 $ca $c8

	xor  b                                           ; $51a7: $a8
	xor  e                                           ; $51a8: $ab
	and  l                                           ; $51a9: $a5
	and  h                                           ; $51aa: $a4
	add  b                                           ; $51ab: $80
	ld   d, h                                        ; $51ac: $54
	ld   de, $c05e                                   ; $51ad: $11 $5e $c0
	ldh  [c], a                                      ; $51b0: $e2
	inc  b                                           ; $51b1: $04
	add  a                                           ; $51b2: $87
	ld   de, $6a34                                   ; $51b3: $11 $34 $6a
	ld   c, [hl]                                     ; $51b6: $4e
	add  c                                           ; $51b7: $81
	adc  c                                           ; $51b8: $89
	inc  h                                           ; $51b9: $24
	ld   l, h                                        ; $51ba: $6c
	ret  nc                                          ; $51bb: $d0

	sub  d                                           ; $51bc: $92
	ld   a, [bc]                                     ; $51bd: $0a
	add  hl, de                                      ; $51be: $19
	db   $ed                                         ; $51bf: $ed
	adc  c                                           ; $51c0: $89
	ld   c, $80                                      ; $51c1: $0e $80
	inc  c                                           ; $51c3: $0c
	add  b                                           ; $51c4: $80
	ld   c, $01                                      ; $51c5: $0e $01
	call z, $803d                                    ; $51c7: $cc $3d $80
	ld   a, $80                                      ; $51ca: $3e $80
	dec  a                                           ; $51cc: $3d
	add  b                                           ; $51cd: $80
	ld   a, $80                                      ; $51ce: $3e $80
	dec  a                                           ; $51d0: $3d
	add  b                                           ; $51d1: $80
	ld   a, $80                                      ; $51d2: $3e $80
	dec  a                                           ; $51d4: $3d
	add  b                                           ; $51d5: $80
	ld   a, $01                                      ; $51d6: $3e $01
	xor  c                                           ; $51d8: $a9
	ld   d, l                                        ; $51d9: $55
	add  b                                           ; $51da: $80
	xor  d                                           ; $51db: $aa
	add  b                                           ; $51dc: $80
	ld   d, l                                        ; $51dd: $55
	add  b                                           ; $51de: $80
	xor  d                                           ; $51df: $aa
	add  b                                           ; $51e0: $80
	ld   d, l                                        ; $51e1: $55
	add  b                                           ; $51e2: $80
	xor  d                                           ; $51e3: $aa
	add  b                                           ; $51e4: $80
	ld   d, l                                        ; $51e5: $55
	add  b                                           ; $51e6: $80
	xor  d                                           ; $51e7: $aa
	add  b                                           ; $51e8: $80
	ld   d, l                                        ; $51e9: $55
	add  b                                           ; $51ea: $80
	xor  d                                           ; $51eb: $aa
	add  b                                           ; $51ec: $80
	ld   d, l                                        ; $51ed: $55
	add  b                                           ; $51ee: $80
	xor  d                                           ; $51ef: $aa
	ld   bc, $5554                                   ; $51f0: $01 $54 $55
	add  b                                           ; $51f3: $80
	xor  d                                           ; $51f4: $aa
	add  b                                           ; $51f5: $80
	ld   d, h                                        ; $51f6: $54
	add  b                                           ; $51f7: $80
	xor  d                                           ; $51f8: $aa
	inc  bc                                          ; $51f9: $03
	ld   b, c                                        ; $51fa: $41
	ld   e, a                                        ; $51fb: $5f
	or   l                                           ; $51fc: $b5
	xor  d                                           ; $51fd: $aa
	add  b                                           ; $51fe: $80
	ld   d, l                                        ; $51ff: $55
	add  b                                           ; $5200: $80
	xor  d                                           ; $5201: $aa
	ld   bc, $ff00                                   ; $5202: $01 $00 $ff
	add  b                                           ; $5205: $80
	nop                                              ; $5206: $00
	add  b                                           ; $5207: $80
	inc  e                                           ; $5208: $1c
	add  b                                           ; $5209: $80
	ld   [hl+], a                                    ; $520a: $22
	inc  bc                                          ; $520b: $03
	ld   [$4af5], a                                  ; $520c: $ea $f5 $4a
	xor  d                                           ; $520f: $aa
	add  b                                           ; $5210: $80
	ld   d, l                                        ; $5211: $55
	add  b                                           ; $5212: $80
	xor  d                                           ; $5213: $aa
	ld   bc, $ff00                                   ; $5214: $01 $00 $ff
	add  b                                           ; $5217: $80
	nop                                              ; $5218: $00
	ld   bc, $7f6f                                   ; $5219: $01 $6f $7f
	add  b                                           ; $521c: $80
	ld   a, h                                        ; $521d: $7c
	ld   bc, $55ba                                   ; $521e: $01 $ba $55
	add  b                                           ; $5221: $80
	xor  d                                           ; $5222: $aa
	add  b                                           ; $5223: $80
	ld   d, l                                        ; $5224: $55
	add  b                                           ; $5225: $80
	xor  d                                           ; $5226: $aa
	ld   bc, $ff00                                   ; $5227: $01 $00 $ff
	add  b                                           ; $522a: $80
	nop                                              ; $522b: $00
	add  b                                           ; $522c: $80
	rst  $38                                         ; $522d: $ff
	add  b                                           ; $522e: $80
	ld   a, h                                        ; $522f: $7c
	dec  b                                           ; $5230: $05
	cp   a                                           ; $5231: $bf
	ld   l, e                                        ; $5232: $6b
	xor  e                                           ; $5233: $ab
	cp   a                                           ; $5234: $bf
	ld   a, a                                        ; $5235: $7f
	ld   l, e                                        ; $5236: $6b
	add  b                                           ; $5237: $80
	xor  e                                           ; $5238: $ab
	ld   bc, $ff2b                                   ; $5239: $01 $2b $ff
	add  b                                           ; $523c: $80
	nop                                              ; $523d: $00
	add  b                                           ; $523e: $80
	rst  $38                                         ; $523f: $ff
	add  b                                           ; $5240: $80
	ld   a, h                                        ; $5241: $7c
	nop                                              ; $5242: $00
	ldh  [$80], a                                    ; $5243: $e0 $80
	ld   a, a                                        ; $5245: $7f
	add  b                                           ; $5246: $80
	rst  $38                                         ; $5247: $ff
	add  c                                           ; $5248: $81
	ld   a, a                                        ; $5249: $7f
	ld   bc, $ff60                                   ; $524a: $01 $60 $ff
	add  b                                           ; $524d: $80
	nop                                              ; $524e: $00
	add  b                                           ; $524f: $80
	ei                                               ; $5250: $fb
	add  b                                           ; $5251: $80
	ld   a, e                                        ; $5252: $7b
	inc  c                                           ; $5253: $0c
	dec  de                                          ; $5254: $1b
	sbc  e                                           ; $5255: $9b
	adc  e                                           ; $5256: $8b
	sbc  e                                           ; $5257: $9b
	sbc  c                                           ; $5258: $99
	sbc  e                                           ; $5259: $9b
	sub  c                                           ; $525a: $91
	sbc  e                                           ; $525b: $9b
	sub  c                                           ; $525c: $91
	sbc  e                                           ; $525d: $9b
	sbc  c                                           ; $525e: $99
	sbc  e                                           ; $525f: $9b
	adc  e                                           ; $5260: $8b
	add  c                                           ; $5261: $81
	sbc  e                                           ; $5262: $9b
	nop                                              ; $5263: $00
	ld   a, h                                        ; $5264: $7c
	add  b                                           ; $5265: $80
	inc  hl                                          ; $5266: $23
	add  b                                           ; $5267: $80
	ld   [hl], e                                     ; $5268: $73
	add  b                                           ; $5269: $80
	xor  e                                           ; $526a: $ab
	add  b                                           ; $526b: $80
	ld   h, e                                        ; $526c: $63
	add  b                                           ; $526d: $80
	dec  sp                                          ; $526e: $3b
	add  b                                           ; $526f: $80
	dec  hl                                          ; $5270: $2b
	add  b                                           ; $5271: $80
	inc  sp                                          ; $5272: $33
	ld   bc, $b023                                   ; $5273: $01 $23 $b0
	add  d                                           ; $5276: $82
	ld   [hl], d                                     ; $5277: $72
	ld   [bc], a                                     ; $5278: $02
	ld   [hl], e                                     ; $5279: $73
	ld   [hl], b                                     ; $527a: $70
	ld   [hl], e                                     ; $527b: $73
	add  [hl]                                        ; $527c: $86
	ld   [hl], b                                     ; $527d: $70
	nop                                              ; $527e: $00
	ld   hl, sp-$7e                                  ; $527f: $f8 $82
	xor  b                                           ; $5281: $a8
	ld   [bc], a                                     ; $5282: $02
	add  sp, $08                                     ; $5283: $e8 $08
	ld   hl, sp-$7b                                  ; $5285: $f8 $85
	nop                                              ; $5287: $00
	add  b                                           ; $5288: $80
	ld   bc, $0580                                   ; $5289: $01 $80 $05
	ld   d, $09                                      ; $528c: $16 $09
	ld   [$0006], sp                                 ; $528e: $08 $06 $00
	jr   jr_075_5294                                 ; $5291: $18 $01

	dec  h                                           ; $5293: $25

jr_075_5294:
	dec  b                                           ; $5294: $05
	ld   c, c                                        ; $5295: $49
	ld   a, [bc]                                     ; $5296: $0a
	xor  d                                           ; $5297: $aa
	ld   [bc], a                                     ; $5298: $02
	ld   a, [hl+]                                    ; $5299: $2a
	ldh  a, [rSVBK]                                  ; $529a: $f0 $70
	add  hl, bc                                      ; $529c: $09
	adc  c                                           ; $529d: $89
	ld   [bc], a                                     ; $529e: $02
	ld   d, d                                        ; $529f: $52
	ld   h, b                                        ; $52a0: $60
	or   b                                           ; $52a1: $b0
	xor  c                                           ; $52a2: $a9
	add  hl, hl                                      ; $52a3: $29
	add  b                                           ; $52a4: $80
	ld   d, d                                        ; $52a5: $52
	add  b                                           ; $52a6: $80
	or   d                                           ; $52a7: $b2
	add  b                                           ; $52a8: $80
	xor  c                                           ; $52a9: $a9
	ld   de, $9414                                   ; $52aa: $11 $14 $94
	and  b                                           ; $52ad: $a0
	ld   [hl+], a                                    ; $52ae: $22
	ld   a, [bc]                                     ; $52af: $0a
	add  hl, hl                                      ; $52b0: $29
	inc  bc                                          ; $52b1: $03
	and  [hl]                                        ; $52b2: $a6
	xor  l                                           ; $52b3: $ad
	dec  hl                                          ; $52b4: $2b
	ld   c, a                                        ; $52b5: $4f
	ld   c, l                                        ; $52b6: $4d
	ld   [hl+], a                                    ; $52b7: $22
	ld   h, [hl]                                     ; $52b8: $66
	inc  d                                           ; $52b9: $14
	ld   d, d                                        ; $52ba: $52
	db   $fc                                         ; $52bb: $fc
	inc  c                                           ; $52bc: $0c
	add  b                                           ; $52bd: $80
	ld   c, $80                                      ; $52be: $0e $80
	inc  c                                           ; $52c0: $0c
	add  b                                           ; $52c1: $80
	ld   c, $80                                      ; $52c2: $0e $80
	inc  c                                           ; $52c4: $0c
	add  b                                           ; $52c5: $80
	ld   c, $81                                      ; $52c6: $0e $81
	inc  c                                           ; $52c8: $0c
	ld   [bc], a                                     ; $52c9: $02
	ld   c, $ce                                      ; $52ca: $0e $ce
	dec  a                                           ; $52cc: $3d
	add  b                                           ; $52cd: $80
	ld   a, $80                                      ; $52ce: $3e $80
	dec  a                                           ; $52d0: $3d
	add  b                                           ; $52d1: $80
	ld   a, $80                                      ; $52d2: $3e $80
	dec  a                                           ; $52d4: $3d
	add  b                                           ; $52d5: $80
	ld   a, $80                                      ; $52d6: $3e $80
	dec  a                                           ; $52d8: $3d
	inc  bc                                          ; $52d9: $03
	inc  a                                           ; $52da: $3c
	ccf                                              ; $52db: $3f
	xor  d                                           ; $52dc: $aa
	ld   d, l                                        ; $52dd: $55
	add  b                                           ; $52de: $80
	xor  d                                           ; $52df: $aa
	add  b                                           ; $52e0: $80
	ld   d, l                                        ; $52e1: $55
	add  b                                           ; $52e2: $80
	xor  d                                           ; $52e3: $aa
	add  b                                           ; $52e4: $80
	ld   d, l                                        ; $52e5: $55
	add  b                                           ; $52e6: $80
	xor  d                                           ; $52e7: $aa
	dec  b                                           ; $52e8: $05
	ld   d, h                                        ; $52e9: $54
	ld   d, a                                        ; $52ea: $57
	inc  bc                                          ; $52eb: $03
	rst  $38                                         ; $52ec: $ff
	xor  d                                           ; $52ed: $aa
	ld   d, h                                        ; $52ee: $54
	add  b                                           ; $52ef: $80
	xor  d                                           ; $52f0: $aa
	add  b                                           ; $52f1: $80
	ld   d, h                                        ; $52f2: $54
	add  b                                           ; $52f3: $80
	xor  d                                           ; $52f4: $aa
	add  b                                           ; $52f5: $80
	ld   d, h                                        ; $52f6: $54
	add  b                                           ; $52f7: $80
	xor  d                                           ; $52f8: $aa
	ld   bc, $fe00                                   ; $52f9: $01 $00 $fe
	add  b                                           ; $52fc: $80
	rst  $38                                         ; $52fd: $ff
	adc  d                                           ; $52fe: $8a
	ld   b, b                                        ; $52ff: $40
	add  b                                           ; $5300: $80
	nop                                              ; $5301: $00
	add  b                                           ; $5302: $80
	ldh  [rSB], a                                    ; $5303: $e0 $01
	ld   l, e                                        ; $5305: $6b
	ld   a, e                                        ; $5306: $7b
	adc  h                                           ; $5307: $8c
	ld   a, a                                        ; $5308: $7f
	ld   bc, $bbab                                   ; $5309: $01 $ab $bb
	add  b                                           ; $530c: $80
	rst  JumpTable                                         ; $530d: $df
	add  b                                           ; $530e: $80
	rst  ToBoot                                         ; $530f: $c7
	add  [hl]                                        ; $5310: $86
	rst  JumpTable                                         ; $5311: $df
	inc  bc                                          ; $5312: $03
	ldh  [rIE], a                                    ; $5313: $e0 $ff
	and  h                                           ; $5315: $a4
	cp   e                                           ; $5316: $bb
	add  b                                           ; $5317: $80
	rst  JumpTable                                         ; $5318: $df
	add  b                                           ; $5319: $80
	rst  ToBoot                                         ; $531a: $c7
	add  h                                           ; $531b: $84
	rst  JumpTable                                         ; $531c: $df
	add  b                                           ; $531d: $80
	rst  $38                                         ; $531e: $ff
	inc  bc                                          ; $531f: $03
	nop                                              ; $5320: $00
	rst  $38                                         ; $5321: $ff
	ld   b, h                                        ; $5322: $44
	cp   e                                           ; $5323: $bb
	add  b                                           ; $5324: $80
	jp   $db84                                       ; $5325: $c3 $84 $db


	add  b                                           ; $5328: $80
	ei                                               ; $5329: $fb
	inc  b                                           ; $532a: $04
	nop                                              ; $532b: $00
	rst  $38                                         ; $532c: $ff
	nop                                              ; $532d: $00
	rst  $38                                         ; $532e: $ff
	dec  de                                          ; $532f: $1b
	adc  l                                           ; $5330: $8d
	sbc  e                                           ; $5331: $9b
	nop                                              ; $5332: $00
	ld   a, h                                        ; $5333: $7c
	add  b                                           ; $5334: $80
	ld   h, e                                        ; $5335: $63
	add  b                                           ; $5336: $80
	and  a                                           ; $5337: $a7
	add  b                                           ; $5338: $80
	ld   l, e                                        ; $5339: $6b
	add  b                                           ; $533a: $80
	inc  sp                                          ; $533b: $33
	add  b                                           ; $533c: $80
	ld   l, e                                        ; $533d: $6b
	add  b                                           ; $533e: $80
	or   e                                           ; $533f: $b3
	add  b                                           ; $5340: $80
	ldh  [c], a                                      ; $5341: $e2
	ld   bc, $b122                                   ; $5342: $01 $22 $b1
	add  l                                           ; $5345: $85
	ld   [hl], b                                     ; $5346: $70
	dec  bc                                          ; $5347: $0b
	ld   d, b                                        ; $5348: $50
	ld   b, b                                        ; $5349: $40
	ld   [$0400], sp                                 ; $534a: $08 $00 $04
	nop                                              ; $534d: $00
	ld   [bc], a                                     ; $534e: $02
	nop                                              ; $534f: $00
	rst  $38                                         ; $5350: $ff
	ld   [bc], a                                     ; $5351: $02
	ld   bc, $8005                                   ; $5352: $01 $05 $80
	ld   bc, $0509                                   ; $5355: $01 $09 $05
	inc  c                                           ; $5358: $0c
	ld   d, $02                                      ; $5359: $16 $02
	ld   h, $00                                      ; $535b: $26 $00
	ld   b, d                                        ; $535d: $42
	nop                                              ; $535e: $00
	add  c                                           ; $535f: $81
	nop                                              ; $5360: $00
	add  b                                           ; $5361: $80
	ld   l, d                                        ; $5362: $6a
	nop                                              ; $5363: $00
	ld   a, a                                        ; $5364: $7f
	add  b                                           ; $5365: $80
	ld   a, [hl]                                     ; $5366: $7e
	db   $10                                         ; $5367: $10
	inc  [hl]                                        ; $5368: $34
	or   h                                           ; $5369: $b4
	add  e                                           ; $536a: $83
	add  d                                           ; $536b: $82
	ld   c, $08                                      ; $536c: $0e $08
	add  hl, de                                      ; $536e: $19
	db   $10                                         ; $536f: $10
	scf                                              ; $5370: $37
	ld   [bc], a                                     ; $5371: $02
	ld   c, h                                        ; $5372: $4c
	ldh  [rBCPD], a                                  ; $5373: $e0 $69
	jp   $3202                                       ; $5375: $c3 $02 $32


	ldh  a, [c]                                      ; $5378: $f2
	add  b                                           ; $5379: $80
	ret  nz                                          ; $537a: $c0

	add  b                                           ; $537b: $80
	ld   hl, $4a03                                   ; $537c: $21 $03 $4a
	jp   z, $3aba                                    ; $537f: $ca $ba $3a

	add  b                                           ; $5382: $80
	xor  b                                           ; $5383: $a8
	inc  bc                                          ; $5384: $03
	ld   d, d                                        ; $5385: $52
	ld   e, d                                        ; $5386: $5a
	ld   b, c                                        ; $5387: $41
	ld   c, c                                        ; $5388: $49
	add  b                                           ; $5389: $80
	and  h                                           ; $538a: $a4
	add  d                                           ; $538b: $82
	sub  h                                           ; $538c: $94
	add  b                                           ; $538d: $80
	xor  b                                           ; $538e: $a8
	add  b                                           ; $538f: $80

jr_075_5390:
	sub  h                                           ; $5390: $94
	add  b                                           ; $5391: $80
	sub  b                                           ; $5392: $90
	nop                                              ; $5393: $00
	cp   $85                                         ; $5394: $fe $85
	ld   c, $80                                      ; $5396: $0e $80
	inc  c                                           ; $5398: $0c
	add  b                                           ; $5399: $80
	ld   c, $80                                      ; $539a: $0e $80
	inc  c                                           ; $539c: $0c
	add  b                                           ; $539d: $80
	ld   c, $00                                      ; $539e: $0e $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53a0: $cf
	adc  c                                           ; $53a1: $89
	ccf                                              ; $53a2: $3f
	add  b                                           ; $53a3: $80
	inc  a                                           ; $53a4: $3c
	add  b                                           ; $53a5: $80
	ccf                                              ; $53a6: $3f
	adc  d                                           ; $53a7: $8a
	rst  $38                                         ; $53a8: $ff
	add  b                                           ; $53a9: $80
	nop                                              ; $53aa: $00
	add  b                                           ; $53ab: $80
	rst  $38                                         ; $53ac: $ff
	add  d                                           ; $53ad: $82
	cp   $84                                         ; $53ae: $fe $84
	rst  $38                                         ; $53b0: $ff
	add  b                                           ; $53b1: $80
	ret  nz                                          ; $53b2: $c0

	add  b                                           ; $53b3: $80
	rra                                              ; $53b4: $1f
	add  b                                           ; $53b5: $80
	ldh  [$80], a                                    ; $53b6: $e0 $80
	rra                                              ; $53b8: $1f
	add  b                                           ; $53b9: $80
	nop                                              ; $53ba: $00
	add  b                                           ; $53bb: $80
	ret  nz                                          ; $53bc: $c0

	add  b                                           ; $53bd: $80
	rst  $38                                         ; $53be: $ff
	add  b                                           ; $53bf: $80
	cp   $80                                         ; $53c0: $fe $80
	nop                                              ; $53c2: $00
	add  b                                           ; $53c3: $80
	rst  $38                                         ; $53c4: $ff
	add  b                                           ; $53c5: $80
	nop                                              ; $53c6: $00
	inc  bc                                          ; $53c7: $03
	add  b                                           ; $53c8: $80
	rst  $38                                         ; $53c9: $ff
	nop                                              ; $53ca: $00
	ld   a, a                                        ; $53cb: $7f
	add  b                                           ; $53cc: $80
	nop                                              ; $53cd: $00
	add  b                                           ; $53ce: $80
	rst  $38                                         ; $53cf: $ff
	add  b                                           ; $53d0: $80
	nop                                              ; $53d1: $00
	add  b                                           ; $53d2: $80
	ld   a, a                                        ; $53d3: $7f
	add  b                                           ; $53d4: $80
	ret  nz                                          ; $53d5: $c0

	add  b                                           ; $53d6: $80
	rrca                                             ; $53d7: $0f
	inc  bc                                          ; $53d8: $03
	rra                                              ; $53d9: $1f
	rst  $38                                         ; $53da: $ff
	nop                                              ; $53db: $00
	ldh  [$80], a                                    ; $53dc: $e0 $80
	rra                                              ; $53de: $1f
	add  b                                           ; $53df: $80
	ldh  a, [$80]                                    ; $53e0: $f0 $80
	rrca                                             ; $53e2: $0f
	add  b                                           ; $53e3: $80
	cp   $80                                         ; $53e4: $fe $80
	ld   bc, $ff82                                   ; $53e6: $01 $82 $ff
	add  b                                           ; $53e9: $80
	nop                                              ; $53ea: $00
	add  b                                           ; $53eb: $80
	rst  $38                                         ; $53ec: $ff
	add  b                                           ; $53ed: $80
	nop                                              ; $53ee: $00
	add  b                                           ; $53ef: $80
	rst  $38                                         ; $53f0: $ff
	add  b                                           ; $53f1: $80
	nop                                              ; $53f2: $00
	add  d                                           ; $53f3: $82
	rst  $38                                         ; $53f4: $ff
	add  b                                           ; $53f5: $80
	nop                                              ; $53f6: $00
	add  b                                           ; $53f7: $80
	rst  $38                                         ; $53f8: $ff
	add  b                                           ; $53f9: $80
	add  b                                           ; $53fa: $80
	add  b                                           ; $53fb: $80
	ld   a, a                                        ; $53fc: $7f
	add  b                                           ; $53fd: $80
	ret  nz                                          ; $53fe: $c0

	add  b                                           ; $53ff: $80
	ccf                                              ; $5400: $3f
	add  b                                           ; $5401: $80
	rst  $38                                         ; $5402: $ff
	add  b                                           ; $5403: $80
	db   $fc                                         ; $5404: $fc
	add  d                                           ; $5405: $82
	sbc  e                                           ; $5406: $9b
	add  b                                           ; $5407: $80
	dec  de                                          ; $5408: $1b
	add  b                                           ; $5409: $80
	sbc  e                                           ; $540a: $9b
	add  b                                           ; $540b: $80
	jr   jr_075_5390                                 ; $540c: $18 $82

	rst  $38                                         ; $540e: $ff
	add  b                                           ; $540f: $80
	nop                                              ; $5410: $00
	add  h                                           ; $5411: $84
	cp   $80                                         ; $5412: $fe $80
	add  b                                           ; $5414: $80
	add  b                                           ; $5415: $80
	ld   a, [hl]                                     ; $5416: $7e
	add  b                                           ; $5417: $80
	db   $fc                                         ; $5418: $fc
	add  d                                           ; $5419: $82
	nop                                              ; $541a: $00
	nop                                              ; $541b: $00
	ld   bc, $0083                                   ; $541c: $01 $83 $00
	nop                                              ; $541f: $00
	ld   a, b                                        ; $5420: $78
	add  d                                           ; $5421: $82
	nop                                              ; $5422: $00
	nop                                              ; $5423: $00
	ld   a, c                                        ; $5424: $79
	add  b                                           ; $5425: $80
	ld   bc, $0082                                   ; $5426: $01 $82 $00
	add  b                                           ; $5429: $80
	ld   bc, $0280                                   ; $542a: $01 $80 $02
	inc  bc                                          ; $542d: $03
	dec  b                                           ; $542e: $05
	inc  b                                           ; $542f: $04
	ld   a, $01                                      ; $5430: $3e $01
	add  b                                           ; $5432: $80
	nop                                              ; $5433: $00
	ld   bc, $3f01                                   ; $5434: $01 $01 $3f
	add  b                                           ; $5437: $80
	ld   bc, $8011                                   ; $5438: $01 $11 $80
	or   d                                           ; $543b: $b2
	ld   d, $6d                                      ; $543c: $16 $6d
	add  b                                           ; $543e: $80
	db   $db                                         ; $543f: $db
	add  l                                           ; $5440: $85
	or   e                                           ; $5441: $b3
	ld   c, [hl]                                     ; $5442: $4e
	ld   h, [hl]                                     ; $5443: $66
	rst  $10                                         ; $5444: $d7
	ld   b, a                                        ; $5445: $47
	ld   c, d                                        ; $5446: $4a
	call $8d84                                       ; $5447: $cd $84 $8d
	ld   c, d                                        ; $544a: $4a
	ld   e, b                                        ; $544b: $58
	add  b                                           ; $544c: $80
	or   d                                           ; $544d: $b2
	dec  b                                           ; $544e: $05
	inc  b                                           ; $544f: $04
	inc  h                                           ; $5450: $24
	add  hl, bc                                      ; $5451: $09
	ld   l, c                                        ; $5452: $69
	db   $10                                         ; $5453: $10
	ret  nc                                          ; $5454: $d0

	add  b                                           ; $5455: $80
	jp   nc, Jump_075_6405                           ; $5456: $d2 $05 $64

	db   $e4                                         ; $5459: $e4
	jp   hl                                          ; $545a: $e9


	ret                                              ; $545b: $c9


	and  e                                           ; $545c: $a3
	add  e                                           ; $545d: $83
	add  b                                           ; $545e: $80
	inc  c                                           ; $545f: $0c
	add  b                                           ; $5460: $80
	inc  bc                                          ; $5461: $03
	add  b                                           ; $5462: $80
	ld   e, $80                                      ; $5463: $1e $80
	ld   sp, $c905                                   ; $5465: $31 $05 $c9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5468: $cf
	ld   [hl+], a                                    ; $5469: $22
	inc  a                                           ; $546a: $3c
	ld   l, b                                        ; $546b: $68
	ld   [hl], b                                     ; $546c: $70
	rlc  c                                           ; $546d: $cb $01
	add  [hl]                                        ; $546f: $86
	nop                                              ; $5470: $00
	add  b                                           ; $5471: $80
	dec  c                                           ; $5472: $0d
	nop                                              ; $5473: $00
	rrca                                             ; $5474: $0f
	add  b                                           ; $5475: $80
	ld   c, $80                                      ; $5476: $0e $80
	rrca                                             ; $5478: $0f
	ld   bc, $0d02                                   ; $5479: $01 $02 $0d
	add  l                                           ; $547c: $85
	nop                                              ; $547d: $00
	ld   [bc], a                                     ; $547e: $02
	ld   a, a                                        ; $547f: $7f
	ld   b, [hl]                                     ; $5480: $46
	add  $80                                         ; $5481: $c6 $80
	add  e                                           ; $5483: $83
	add  b                                           ; $5484: $80
	ld   b, l                                        ; $5485: $45
	ld   bc, $7f80                                   ; $5486: $01 $80 $7f
	add  l                                           ; $5489: $85
	nop                                              ; $548a: $00
	ld   bc, $07f8                                   ; $548b: $01 $f8 $07
	add  b                                           ; $548e: $80
	rrca                                             ; $548f: $0f
	inc  b                                           ; $5490: $04
	ld   a, a                                        ; $5491: $7f
	ld   a, e                                        ; $5492: $7b
	dec  de                                          ; $5493: $1b
	cp   a                                           ; $5494: $bf
	ld   e, a                                        ; $5495: $5f
	add  l                                           ; $5496: $85
	nop                                              ; $5497: $00
	ld   [$fe7e], sp                                 ; $5498: $08 $7e $fe
	daa                                              ; $549b: $27
	or   $44                                         ; $549c: $f6 $44
	db   $fd                                         ; $549e: $fd
	ld   b, a                                        ; $549f: $47
	rst  $38                                         ; $54a0: $ff
	ld   d, b                                        ; $54a1: $50
	add  l                                           ; $54a2: $85
	nop                                              ; $54a3: $00
	ld   [$030c], sp                                 ; $54a4: $08 $0c $03
	rst  $30                                         ; $54a7: $f7
	rlca                                             ; $54a8: $07
	inc  c                                           ; $54a9: $0c
	nop                                              ; $54aa: $00
	sub  l                                           ; $54ab: $95
	sub  b                                           ; $54ac: $90
	or   $85                                         ; $54ad: $f6 $85
	nop                                              ; $54af: $00
	nop                                              ; $54b0: $00
	inc  bc                                          ; $54b1: $03
	add  c                                           ; $54b2: $81
	ldh  a, [rDIV]                                   ; $54b3: $f0 $04
	ldh  a, [c]                                      ; $54b5: $f2
	ldh  a, [$91]                                    ; $54b6: $f0 $91
	jr   @+$7a                                       ; $54b8: $18 $78

	add  l                                           ; $54ba: $85
	nop                                              ; $54bb: $00
	nop                                              ; $54bc: $00
	rst  $38                                         ; $54bd: $ff
	add  b                                           ; $54be: $80
	inc  sp                                          ; $54bf: $33
	inc  b                                           ; $54c0: $04
	inc  a                                           ; $54c1: $3c
	ld   a, h                                        ; $54c2: $7c
	jr   c, @+$01                                    ; $54c3: $38 $ff

	ld   a, b                                        ; $54c5: $78
	add  [hl]                                        ; $54c6: $86
	nop                                              ; $54c7: $00
	ld   [$f5df], sp                                 ; $54c8: $08 $df $f5
	and  l                                           ; $54cb: $a5
	ld   hl, sp-$4c                                  ; $54cc: $f8 $b4
	dec  a                                           ; $54ce: $3d
	add  $47                                         ; $54cf: $c6 $47
	ld   a, a                                        ; $54d1: $7f
	add  l                                           ; $54d2: $85
	nop                                              ; $54d3: $00
	ld   [$54dd], sp                                 ; $54d4: $08 $dd $54
	halt                                             ; $54d7: $76
	and  d                                           ; $54d8: $a2
	or   b                                           ; $54d9: $b0
	dec  d                                           ; $54da: $15
	and  a                                           ; $54db: $a7
	xor  e                                           ; $54dc: $ab
	db   $f4                                         ; $54dd: $f4
	add  [hl]                                        ; $54de: $86
	nop                                              ; $54df: $00
	add  d                                           ; $54e0: $82
	rst  $38                                         ; $54e1: $ff
	inc  bc                                          ; $54e2: $03
	xor  d                                           ; $54e3: $aa
	ld   l, d                                        ; $54e4: $6a
	dec  d                                           ; $54e5: $15
	push de                                          ; $54e6: $d5
	add  [hl]                                        ; $54e7: $86
	nop                                              ; $54e8: $00
	add  d                                           ; $54e9: $82
	rst  $38                                         ; $54ea: $ff
	add  b                                           ; $54eb: $80
	xor  d                                           ; $54ec: $aa
	add  b                                           ; $54ed: $80
	ld   d, l                                        ; $54ee: $55
	add  l                                           ; $54ef: $85
	nop                                              ; $54f0: $00
	nop                                              ; $54f1: $00
	ld   [bc], a                                     ; $54f2: $02
	add  d                                           ; $54f3: $82
	db   $fd                                         ; $54f4: $fd
	inc  bc                                          ; $54f5: $03
	xor  b                                           ; $54f6: $a8
	and  l                                           ; $54f7: $a5
	ld   d, b                                        ; $54f8: $50
	ld   e, a                                        ; $54f9: $5f
	add  [hl]                                        ; $54fa: $86
	nop                                              ; $54fb: $00
	add  d                                           ; $54fc: $82
	rst  $38                                         ; $54fd: $ff
	inc  bc                                          ; $54fe: $03
	xor  d                                           ; $54ff: $aa
	add  $01                                         ; $5500: $c6 $01
	ld   l, l                                        ; $5502: $6d
	add  [hl]                                        ; $5503: $86
	nop                                              ; $5504: $00
	add  d                                           ; $5505: $82
	rst  $38                                         ; $5506: $ff
	inc  bc                                          ; $5507: $03
	xor  d                                           ; $5508: $aa
	xor  [hl]                                        ; $5509: $ae
	ld   d, c                                        ; $550a: $51
	ld   d, l                                        ; $550b: $55
	add  [hl]                                        ; $550c: $86
	nop                                              ; $550d: $00
	add  d                                           ; $550e: $82
	rst  $38                                         ; $550f: $ff
	add  b                                           ; $5510: $80
	xor  d                                           ; $5511: $aa
	add  b                                           ; $5512: $80
	ld   d, l                                        ; $5513: $55
	add  [hl]                                        ; $5514: $86
	nop                                              ; $5515: $00
	add  d                                           ; $5516: $82
	rst  $38                                         ; $5517: $ff
	add  b                                           ; $5518: $80
	xor  d                                           ; $5519: $aa
	ld   bc, $5a55                                   ; $551a: $01 $55 $5a
	add  b                                           ; $551d: $80
	ld   [rRAMG], sp                                 ; $551e: $08 $00 $00
	add  b                                           ; $5521: $80
	inc  b                                           ; $5522: $04
	add  b                                           ; $5523: $80
	ld   a, [bc]                                     ; $5524: $0a
	add  b                                           ; $5525: $80
	inc  b                                           ; $5526: $04
	add  b                                           ; $5527: $80
	rlca                                             ; $5528: $07
	dec  b                                           ; $5529: $05
	ld   [bc], a                                     ; $552a: $02
	rlca                                             ; $552b: $07
	nop                                              ; $552c: $00
	add  hl, bc                                      ; $552d: $09
	ld   hl, sp+$04                                  ; $552e: $f8 $04
	add  b                                           ; $5530: $80
	ld   l, $80                                      ; $5531: $2e $80
	ld   e, $80                                      ; $5533: $1e $80
	ld   a, $80                                      ; $5535: $3e $80

jr_075_5537:
	ld   e, [hl]                                     ; $5537: $5e
	dec  bc                                          ; $5538: $0b
	ld   a, [hl-]                                    ; $5539: $3a
	ld   a, $70                                      ; $553a: $3e $70
	ld   a, h                                        ; $553c: $7c
	ld   l, e                                        ; $553d: $6b
	ld   a, h                                        ; $553e: $7c
	ld   c, l                                        ; $553f: $4d
	ld   d, a                                        ; $5540: $57
	nop                                              ; $5541: $00
	rrca                                             ; $5542: $0f
	ld   a, [de]                                     ; $5543: $1a
	db   $10                                         ; $5544: $10
	add  b                                           ; $5545: $80
	jr   nz, jr_075_5566                             ; $5546: $20 $1e

	jr   jr_075_554a                                 ; $5548: $18 $00

jr_075_554a:
	ld   a, [hl]                                     ; $554a: $7e
	ld   b, $bd                                      ; $554b: $06 $bd
	dec  e                                           ; $554d: $1d
	ld   b, [hl]                                     ; $554e: $46
	ld   b, $fa                                      ; $554f: $06 $fa
	cp   a                                           ; $5551: $bf
	jp   c, Jump_075_6e5f                            ; $5552: $da $5f $6e

	cp   e                                           ; $5555: $bb
	and  c                                           ; $5556: $a1
	ccf                                              ; $5557: $3f
	db   $eb                                         ; $5558: $eb
	rst  $28                                         ; $5559: $ef
	sbc  l                                           ; $555a: $9d
	sub  a                                           ; $555b: $97
	dec  b                                           ; $555c: $05
	dec  bc                                          ; $555d: $0b
	add  c                                           ; $555e: $81
	sbc  $cb                                         ; $555f: $de $cb
	add  [hl]                                        ; $5561: $86
	ld   h, [hl]                                     ; $5562: $66
	add  b                                           ; $5563: $80
	nop                                              ; $5564: $00
	add  b                                           ; $5565: $80

jr_075_5566:
	ld   b, b                                        ; $5566: $40
	add  c                                           ; $5567: $81
	nop                                              ; $5568: $00
	nop                                              ; $5569: $00
	ret  nz                                          ; $556a: $c0

	add  c                                           ; $556b: $81
	nop                                              ; $556c: $00
	dec  c                                           ; $556d: $0d
	add  b                                           ; $556e: $80
	nop                                              ; $556f: $00

jr_075_5570:
	ld   c, a                                        ; $5570: $4f
	nop                                              ; $5571: $00
	ret  nc                                          ; $5572: $d0

	call nz, $1fd8                                   ; $5573: $c4 $d8 $1f
	dec  de                                          ; $5576: $1b
	rra                                              ; $5577: $1f
	ld   c, $0a                                      ; $5578: $0e $0a

jr_075_557a:
	daa                                              ; $557a: $27
	inc  b                                           ; $557b: $04
	add  b                                           ; $557c: $80
	ld   hl, $3a80                                   ; $557d: $21 $80 $3a
	jr   jr_075_5570                                 ; $5580: $18 $ee

	ld   d, b                                        ; $5582: $50
	ld   [hl], d                                     ; $5583: $72
	ldh  a, [$f2]                                    ; $5584: $f0 $f2
	ldh  a, [$79]                                    ; $5586: $f0 $79

jr_075_5588:
	ld   a, b                                        ; $5588: $78
	cp   a                                           ; $5589: $bf
	ld   hl, sp+$10                                  ; $558a: $f8 $10
	db   $f4                                         ; $558c: $f4
	xor  b                                           ; $558d: $a8
	ei                                               ; $558e: $fb
	and  l                                           ; $558f: $a5
	push af                                          ; $5590: $f5
	daa                                              ; $5591: $27
	jr   c, jr_075_5610                              ; $5592: $38 $7c

	inc  a                                           ; $5594: $3c
	ld   d, a                                        ; $5595: $57
	inc  a                                           ; $5596: $3c
	call z, $d878                                    ; $5597: $cc $78 $d8
	add  b                                           ; $559a: $80
	ld   a, b                                        ; $559b: $78
	add  hl, bc                                      ; $559c: $09
	ld   hl, sp-$4b                                  ; $559d: $f8 $b5
	or   h                                           ; $559f: $b4
	ld   e, [hl]                                     ; $55a0: $5e
	ld   d, b                                        ; $55a1: $50
	jr   @+$01                                       ; $55a2: $18 $ff

	inc  bc                                          ; $55a4: $03
	rra                                              ; $55a5: $1f
	db   $eb                                         ; $55a6: $eb
	add  b                                           ; $55a7: $80
	ld   hl, $1c02                                   ; $55a8: $21 $02 $1c
	dec  e                                           ; $55ab: $1d
	ld   e, $80                                      ; $55ac: $1e $80
	inc  e                                           ; $55ae: $1c
	nop                                              ; $55af: $00
	db   $fc                                         ; $55b0: $fc
	add  b                                           ; $55b1: $80
	inc  a                                           ; $55b2: $3c
	dec  c                                           ; $55b3: $0d
	inc  c                                           ; $55b4: $0c
	jr   nc, jr_075_5537                             ; $55b5: $30 $80

	cp   b                                           ; $55b7: $b8
	ld   c, c                                        ; $55b8: $49
	ld   [$f5b3], sp                                 ; $55b9: $08 $b3 $f5
	rra                                              ; $55bc: $1f
	sbc  a                                           ; $55bd: $9f
	ld   h, b                                        ; $55be: $60
	ld   h, $38                                      ; $55bf: $26 $38
	ld   sp, $3081                                   ; $55c1: $31 $81 $30
	add  c                                           ; $55c4: $81
	nop                                              ; $55c5: $00
	jr   nz, jr_075_5588                             ; $55c6: $20 $c0

	sub  e                                           ; $55c8: $93
	ldh  a, [hScriptOpcodeParams+1]                                    ; $55c9: $f0 $a1
	halt                                             ; $55cb: $76
	and  d                                           ; $55cc: $a2
	cp   $d6                                         ; $55cd: $fe $d6
	ld   b, $37                                      ; $55cf: $06 $37
	ret  nz                                          ; $55d1: $c0

	jp   hl                                          ; $55d2: $e9


	ld   b, $f3                                      ; $55d3: $06 $f3
	nop                                              ; $55d5: $00
	ld   bc, $e800                                   ; $55d6: $01 $00 $e8
	nop                                              ; $55d9: $00
	ld   [$0a00], a                                  ; $55da: $ea $00 $0a
	inc  c                                           ; $55dd: $0c
	ld   [$ce0c], sp                                 ; $55de: $08 $0c $ce
	inc  c                                           ; $55e1: $0c
	ld   l, $00                                      ; $55e2: $2e $00
	sub  [hl]                                        ; $55e4: $96
	nop                                              ; $55e5: $00
	ld   h, b                                        ; $55e6: $60
	nop                                              ; $55e7: $00
	add  b                                           ; $55e8: $80
	ld   b, b                                        ; $55e9: $40
	add  d                                           ; $55ea: $82
	ldh  [$80], a                                    ; $55eb: $e0 $80
	ld   b, b                                        ; $55ed: $40
	add  b                                           ; $55ee: $80
	ldh  [$80], a                                    ; $55ef: $e0 $80
	nop                                              ; $55f1: $00
	inc  b                                           ; $55f2: $04
	inc  l                                           ; $55f3: $2c
	nop                                              ; $55f4: $00
	inc  e                                           ; $55f5: $1c
	nop                                              ; $55f6: $00
	jr   nz, jr_075_557a                             ; $55f7: $20 $81

	nop                                              ; $55f9: $00
	ld   [$000a], sp                                 ; $55fa: $08 $0a $00
	jr   nc, jr_075_55ff                             ; $55fd: $30 $00

jr_075_55ff:
	ld   [bc], a                                     ; $55ff: $02
	nop                                              ; $5600: $00
	ld   a, h                                        ; $5601: $7c
	nop                                              ; $5602: $00
	ld   e, h                                        ; $5603: $5c
	adc  c                                           ; $5604: $89
	nop                                              ; $5605: $00
	inc  b                                           ; $5606: $04
	add  b                                           ; $5607: $80
	nop                                              ; $5608: $00
	ld   b, b                                        ; $5609: $40
	nop                                              ; $560a: $00
	pop  bc                                          ; $560b: $c1
	add  c                                           ; $560c: $81
	nop                                              ; $560d: $00
	ld   [bc], a                                     ; $560e: $02
	inc  bc                                          ; $560f: $03

jr_075_5610:
	nop                                              ; $5610: $00
	inc  bc                                          ; $5611: $03
	add  c                                           ; $5612: $81
	nop                                              ; $5613: $00
	ld   b, $01                                      ; $5614: $06 $01
	nop                                              ; $5616: $00
	ld   bc, $3a00                                   ; $5617: $01 $00 $3a
	nop                                              ; $561a: $00
	inc  [hl]                                        ; $561b: $34
	add  b                                           ; $561c: $80
	dec  c                                           ; $561d: $0d
	nop                                              ; $561e: $00
	dec  bc                                          ; $561f: $0b
	add  b                                           ; $5620: $80
	add  hl, bc                                      ; $5621: $09
	inc  bc                                          ; $5622: $03
	dec  bc                                          ; $5623: $0b
	inc  bc                                          ; $5624: $03
	ld   bc, $8204                                   ; $5625: $01 $04 $82
	nop                                              ; $5628: $00
	dec  c                                           ; $5629: $0d
	inc  bc                                          ; $562a: $03
	ld   [bc], a                                     ; $562b: $02
	and  a                                           ; $562c: $a7
	ld   a, a                                        ; $562d: $7f
	ld   b, l                                        ; $562e: $45
	ld   a, [hl]                                     ; $562f: $7e
	ld   b, d                                        ; $5630: $42
	ld   a, [hl]                                     ; $5631: $7e
	dec  l                                           ; $5632: $2d
	ld   a, a                                        ; $5633: $7f
	ei                                               ; $5634: $fb
	db   $fc                                         ; $5635: $fc
	ld   a, b                                        ; $5636: $78
	ld   hl, sp-$80                                  ; $5637: $f8 $80
	ld   d, b                                        ; $5639: $50
	add  b                                           ; $563a: $80
	xor  b                                           ; $563b: $a8
	dec  bc                                          ; $563c: $0b
	ldh  a, [c]                                      ; $563d: $f2
	ld   c, a                                        ; $563e: $4f
	ld   c, [hl]                                     ; $563f: $4e
	ld   e, a                                        ; $5640: $5f
	ld   d, a                                        ; $5641: $57
	xor  $ca                                         ; $5642: $ee $ca
	or   $54                                         ; $5644: $f6 $54
	ld   [hl], h                                     ; $5646: $74
	or   h                                           ; $5647: $b4
	cp   c                                           ; $5648: $b9
	add  b                                           ; $5649: $80
	ld   d, c                                        ; $564a: $51
	inc  d                                           ; $564b: $14
	ld   [$0d02], sp                                 ; $564c: $08 $02 $0d
	cp   $ff                                         ; $564f: $fe $ff
	cp   $c6                                         ; $5651: $fe $c6
	and  $2d                                         ; $5653: $e6 $2d
	inc  e                                           ; $5655: $1c
	inc  b                                           ; $5656: $04
	ld   l, h                                        ; $5657: $6c
	ld   [hl], e                                     ; $5658: $73
	db   $fc                                         ; $5659: $fc
	ret  nc                                          ; $565a: $d0

	call c, $b8ba                                    ; $565b: $dc $ba $b8
	add  [hl]                                        ; $565e: $86
	nop                                              ; $565f: $00
	add  b                                           ; $5660: $80
	adc  e                                           ; $5661: $8b
	nop                                              ; $5662: $00
	ld   a, [de]                                     ; $5663: $1a
	db   $10                                         ; $5664: $10
	ccf                                              ; $5665: $3f
	daa                                              ; $5666: $27
	ld   a, l                                        ; $5667: $7d
	ld   l, b                                        ; $5668: $68
	ld   a, a                                        ; $5669: $7f
	ld   l, b                                        ; $566a: $68
	ld   a, a                                        ; $566b: $7f
	ld   [hl], d                                     ; $566c: $72
	ld   a, b                                        ; $566d: $78
	ld   b, b                                        ; $566e: $40
	ret  nz                                          ; $566f: $c0

	ld   [bc], a                                     ; $5670: $02
	nop                                              ; $5671: $00
	rlca                                             ; $5672: $07
	nop                                              ; $5673: $00
	ld   d, d                                        ; $5674: $52
	cp   b                                           ; $5675: $b8
	ld   b, a                                        ; $5676: $47
	ld   a, h                                        ; $5677: $7c
	call nc, $e3e0                                   ; $5678: $d4 $e0 $e3
	nop                                              ; $567b: $00
	inc  e                                           ; $567c: $1c
	nop                                              ; $567d: $00
	ldh  [$83], a                                    ; $567e: $e0 $83
	nop                                              ; $5680: $00
	ld   [$007e], sp                                 ; $5681: $08 $7e $00
	adc  [hl]                                        ; $5684: $8e
	dec  c                                           ; $5685: $0d
	dec  h                                           ; $5686: $25
	ld   a, $28                                      ; $5687: $3e $28
	ccf                                              ; $5689: $3f
	ld   a, $83                                      ; $568a: $3e $83
	ccf                                              ; $568c: $3f
	add  b                                           ; $568d: $80
	rrca                                             ; $568e: $0f
	ld   [bc], a                                     ; $568f: $02
	rst  $38                                         ; $5690: $ff
	nop                                              ; $5691: $00
	rrca                                             ; $5692: $0f
	add  b                                           ; $5693: $80
	ld   d, b                                        ; $5694: $50
	dec  b                                           ; $5695: $05
	xor  d                                           ; $5696: $aa
	xor  e                                           ; $5697: $ab
	db   $fc                                         ; $5698: $fc
	ld   [hl-], a                                    ; $5699: $32
	ld   [hl], b                                     ; $569a: $70
	ld   b, b                                        ; $569b: $40
	add  h                                           ; $569c: $84
	ld   a, e                                        ; $569d: $7b
	dec  b                                           ; $569e: $05
	nop                                              ; $569f: $00
	ld   hl, sp+$00                                  ; $56a0: $f8 $00
	jr   c, @-$7c                                    ; $56a2: $38 $82

	ld   b, d                                        ; $56a4: $42
	add  b                                           ; $56a5: $80
	ld   b, $80                                      ; $56a6: $06 $80
	ld   e, $01                                      ; $56a8: $1e $01
	sbc  $df                                         ; $56aa: $de $df
	add  c                                           ; $56ac: $81
	sbc  $65                                         ; $56ad: $de $65
	call nz, $2c04                                   ; $56af: $c4 $04 $2c
	call z, $f0be                                    ; $56b2: $cc $be $f0
	ld   [hl-], a                                    ; $56b5: $32
	add  $58                                         ; $56b6: $c6 $58
	ld   e, $42                                      ; $56b8: $1e $42
	nop                                              ; $56ba: $00
	adc  a                                           ; $56bb: $8f
	nop                                              ; $56bc: $00
	ld   bc, $6600                                   ; $56bd: $01 $00 $66
	inc  b                                           ; $56c0: $04
	ld   [de], a                                     ; $56c1: $12
	nop                                              ; $56c2: $00
	sub  $04                                         ; $56c3: $d6 $04
	add  h                                           ; $56c5: $84
	inc  c                                           ; $56c6: $0c
	ld   [bc], a                                     ; $56c7: $02
	inc  c                                           ; $56c8: $0c
	ld   b, $0c                                      ; $56c9: $06 $0c
	db   $ec                                         ; $56cb: $ec
	inc  c                                           ; $56cc: $0c
	pop  af                                          ; $56cd: $f1
	nop                                              ; $56ce: $00
	rlca                                             ; $56cf: $07
	nop                                              ; $56d0: $00
	ldh  [$e6], a                                    ; $56d1: $e0 $e6
	inc  h                                           ; $56d3: $24
	daa                                              ; $56d4: $27
	ret  nz                                          ; $56d5: $c0

	add  $44                                         ; $56d6: $c6 $44
	ld   b, [hl]                                     ; $56d8: $46
	ld   h, a                                        ; $56d9: $67
	inc  b                                           ; $56da: $04
	and  h                                           ; $56db: $a4
	inc  b                                           ; $56dc: $04
	ld   b, a                                        ; $56dd: $47

jr_075_56de:
	nop                                              ; $56de: $00
	ret  nc                                          ; $56df: $d0

	nop                                              ; $56e0: $00
	ret  nz                                          ; $56e1: $c0

	nop                                              ; $56e2: $00
	ld   e, $00                                      ; $56e3: $1e $00
	ldh  [rSB], a                                    ; $56e5: $e0 $01
	db   $e4                                         ; $56e7: $e4
	inc  bc                                          ; $56e8: $03
	ld   [hl-], a                                    ; $56e9: $32
	inc  bc                                          ; $56ea: $03
	ld   l, e                                        ; $56eb: $6b
	rlca                                             ; $56ec: $07
	rst  $10                                         ; $56ed: $d7
	nop                                              ; $56ee: $00
	ld   e, a                                        ; $56ef: $5f
	inc  e                                           ; $56f0: $1c
	ld   b, a                                        ; $56f1: $47
	ccf                                              ; $56f2: $3f
	ld   c, $75                                      ; $56f3: $0e $75
	ld   h, b                                        ; $56f5: $60
	ld   [$ff52], a                                  ; $56f6: $ea $52 $ff
	ld   a, [hl+]                                    ; $56f9: $2a
	rst  $38                                         ; $56fa: $ff
	ld   e, l                                        ; $56fb: $5d
	rst  $38                                         ; $56fc: $ff
	ldh  [rP1], a                                    ; $56fd: $e0 $00
	and  c                                           ; $56ff: $a1
	ld   a, [bc]                                     ; $5700: $0a
	dec  hl                                          ; $5701: $2b
	dec  a                                           ; $5702: $3d
	cp   l                                           ; $5703: $bd
	ld   a, [$f4b2]                                  ; $5704: $fa $b2 $f4
	ld   [hl], b                                     ; $5707: $70
	rst  $38                                         ; $5708: $ff
	ld   l, d                                        ; $5709: $6a
	db   $fd                                         ; $570a: $fd
	ld   c, [hl]                                     ; $570b: $4e
	ld   a, [$0010]                                  ; $570c: $fa $10 $00
	push af                                          ; $570f: $f5
	ld   [$080d], sp                                 ; $5710: $08 $0d $08
	dec  bc                                          ; $5713: $0b
	inc  c                                           ; $5714: $0c
	adc  b                                           ; $5715: $88

jr_075_5716:
	rrca                                             ; $5716: $0f
	dec  b                                           ; $5717: $05
	ld   [bc], a                                     ; $5718: $02

jr_075_5719:
	nop                                              ; $5719: $00
	db   $fd                                         ; $571a: $fd
	ld   h, c                                        ; $571b: $61
	rst  $38                                         ; $571c: $ff
	ld   h, c                                        ; $571d: $61
	add  [hl]                                        ; $571e: $86
	rst  $38                                         ; $571f: $ff
	add  b                                           ; $5720: $80
	rrca                                             ; $5721: $0f
	dec  b                                           ; $5722: $05
	inc  e                                           ; $5723: $1c
	nop                                              ; $5724: $00
	db   $e3                                         ; $5725: $e3
	add  [hl]                                        ; $5726: $86
	rst  $38                                         ; $5727: $ff
	add  [hl]                                        ; $5728: $86
	add  [hl]                                        ; $5729: $86
	rst  $38                                         ; $572a: $ff
	add  b                                           ; $572b: $80
	add  a                                           ; $572c: $87
	rlca                                             ; $572d: $07
	ld   e, $18                                      ; $572e: $1e $18
	cp   $18                                         ; $5730: $fe $18
	ret  c                                           ; $5732: $d8

	jr   nz, jr_075_5719                             ; $5733: $20 $e4

	nop                                              ; $5735: $00
	add  b                                           ; $5736: $80
	stop                                             ; $5737: $10 $00
	inc  a                                           ; $5739: $3c
	add  c                                           ; $573a: $81
	jr   nc, jr_075_5741                             ; $573b: $30 $04

	jr   z, jr_075_575f                              ; $573d: $28 $20

	ld   hl, sp+$00                                  ; $573f: $f8 $00

jr_075_5741:
	ld   bc, $0085                                   ; $5741: $01 $85 $00
	nop                                              ; $5744: $00
	ld   [bc], a                                     ; $5745: $02
	add  e                                           ; $5746: $83
	nop                                              ; $5747: $00
	dec  bc                                          ; $5748: $0b
	rst  $30                                         ; $5749: $f7
	ld   [$0504], sp                                 ; $574a: $08 $04 $05
	dec  c                                           ; $574d: $0d
	ld   c, $16                                      ; $574e: $0e $16
	dec  d                                           ; $5750: $15
	dec  c                                           ; $5751: $0d
	dec  bc                                          ; $5752: $0b
	dec  de                                          ; $5753: $1b
	rra                                              ; $5754: $1f
	add  b                                           ; $5755: $80
	cpl                                              ; $5756: $2f
	add  b                                           ; $5757: $80
	rra                                              ; $5758: $1f
	nop                                              ; $5759: $00
	rst  $38                                         ; $575a: $ff
	add  b                                           ; $575b: $80
	jr   nz, jr_075_56de                             ; $575c: $20 $80

	ld   d, l                                        ; $575e: $55

jr_075_575f:
	add  b                                           ; $575f: $80
	xor  d                                           ; $5760: $aa
	nop                                              ; $5761: $00
	rst  $38                                         ; $5762: $ff
	add  b                                           ; $5763: $80
	pop  hl                                          ; $5764: $e1
	add  b                                           ; $5765: $80
	add  b                                           ; $5766: $80
	add  b                                           ; $5767: $80
	nop                                              ; $5768: $00
	inc  b                                           ; $5769: $04
	stop                                             ; $576a: $10 $00
	db   $10                                         ; $576c: $10
	rrca                                             ; $576d: $0f
	ccf                                              ; $576e: $3f
	add  c                                           ; $576f: $81
	rrca                                             ; $5770: $0f
	add  b                                           ; $5771: $80
	inc  bc                                          ; $5772: $03
	add  b                                           ; $5773: $80
	nop                                              ; $5774: $00
	ld   [bc], a                                     ; $5775: $02
	ld   e, $18                                      ; $5776: $1e $18
	add  hl, sp                                      ; $5778: $39
	add  b                                           ; $5779: $80
	ld   [$0080], sp                                 ; $577a: $08 $80 $00
	add  l                                           ; $577d: $85
	ld   a, e                                        ; $577e: $7b
	ld   [bc], a                                     ; $577f: $02
	ei                                               ; $5780: $fb
	ld   a, e                                        ; $5781: $7b

jr_075_5782:
	inc  b                                           ; $5782: $04
	add  e                                           ; $5783: $83
	nop                                              ; $5784: $00
	nop                                              ; $5785: $00
	cp   $81                                         ; $5786: $fe $81
	sbc  $80                                         ; $5788: $de $80
	call c, $d880                                    ; $578a: $dc $80 $d8
	ld   bc, $80b8                                   ; $578d: $01 $b8 $80
	add  h                                           ; $5790: $84
	nop                                              ; $5791: $00
	nop                                              ; $5792: $00
	jr   z, jr_075_5716                              ; $5793: $28 $81

	nop                                              ; $5795: $00
	ld   [bc], a                                     ; $5796: $02
	inc  c                                           ; $5797: $0c
	nop                                              ; $5798: $00
	inc  bc                                          ; $5799: $03
	add  d                                           ; $579a: $82
	nop                                              ; $579b: $00
	dec  b                                           ; $579c: $05
	ld   e, $02                                      ; $579d: $1e $02
	ld   e, $1a                                      ; $579f: $1e $1a
	jr   jr_075_57e2                                 ; $57a1: $18 $3f

	add  e                                           ; $57a3: $83
	nop                                              ; $57a4: $00
	ld   a, [de]                                     ; $57a5: $1a
	add  e                                           ; $57a6: $83
	nop                                              ; $57a7: $00
	ld   a, l                                        ; $57a8: $7d
	nop                                              ; $57a9: $00
	inc  a                                           ; $57aa: $3c
	nop                                              ; $57ab: $00
	ret  nz                                          ; $57ac: $c0

	nop                                              ; $57ad: $00
	ldh  a, [rP1]                                    ; $57ae: $f0 $00
	ld   e, $60                                      ; $57b0: $1e $60
	dec  h                                           ; $57b2: $25
	jr   nz, jr_075_57f6                             ; $57b3: $20 $41

	ld   b, b                                        ; $57b5: $40
	sbc  e                                           ; $57b6: $9b
	nop                                              ; $57b7: $00
	rst  ToBoot                                         ; $57b8: $c7
	ret  nz                                          ; $57b9: $c0

	cp   [hl]                                        ; $57ba: $be
	add  b                                           ; $57bb: $80
	add  h                                           ; $57bc: $84
	add  b                                           ; $57bd: $80
	db   $fc                                         ; $57be: $fc
	add  b                                           ; $57bf: $80
	adc  l                                           ; $57c0: $8d
	add  b                                           ; $57c1: $80
	rra                                              ; $57c2: $1f
	ld   [bc], a                                     ; $57c3: $02
	nop                                              ; $57c4: $00
	ld   e, a                                        ; $57c5: $5f
	ccf                                              ; $57c6: $3f
	add  b                                           ; $57c7: $80
	nop                                              ; $57c8: $00
	inc  b                                           ; $57c9: $04
	ret  nz                                          ; $57ca: $c0

	nop                                              ; $57cb: $00
	inc  sp                                          ; $57cc: $33
	nop                                              ; $57cd: $00
	add  b                                           ; $57ce: $80
	add  c                                           ; $57cf: $81
	nop                                              ; $57d0: $00
	nop                                              ; $57d1: $00
	inc  sp                                          ; $57d2: $33
	add  b                                           ; $57d3: $80
	rst  $38                                         ; $57d4: $ff
	nop                                              ; $57d5: $00
	nop                                              ; $57d6: $00
	add  b                                           ; $57d7: $80
	rst  $38                                         ; $57d8: $ff
	add  d                                           ; $57d9: $82
	nop                                              ; $57da: $00
	nop                                              ; $57db: $00
	inc  sp                                          ; $57dc: $33
	add  e                                           ; $57dd: $83
	nop                                              ; $57de: $00
	ld   [$3df3], sp                                 ; $57df: $08 $f3 $3d

jr_075_57e2:
	dec  l                                           ; $57e2: $2d

jr_075_57e3:
	dec  c                                           ; $57e3: $0d
	dec  e                                           ; $57e4: $1d
	dec  c                                           ; $57e5: $0d
	dec  e                                           ; $57e6: $1d
	dec  b                                           ; $57e7: $05
	ld   d, l                                        ; $57e8: $55
	add  b                                           ; $57e9: $80
	ld   bc, $0381                                   ; $57ea: $01 $81 $03
	ld   bc, $037f                                   ; $57ed: $01 $7f $03
	sbc  [hl]                                        ; $57f0: $9e
	rrca                                             ; $57f1: $0f
	adc  [hl]                                        ; $57f2: $8e
	add  a                                           ; $57f3: $87
	ld   [bc], a                                     ; $57f4: $02
	ret  c                                           ; $57f5: $d8

jr_075_57f6:
	jr   nz, @+$3a                                   ; $57f6: $20 $38

	add  c                                           ; $57f8: $81
	jr   nz, jr_075_57fb                             ; $57f9: $20 $00

jr_075_57fb:
	db   $10                                         ; $57fb: $10
	add  c                                           ; $57fc: $81
	nop                                              ; $57fd: $00
	nop                                              ; $57fe: $00
	jr   nc, jr_075_5782                             ; $57ff: $30 $81

	nop                                              ; $5801: $00
	ld   [bc], a                                     ; $5802: $02
	jr   nz, jr_075_5805                             ; $5803: $20 $00

jr_075_5805:
	db   $e3                                         ; $5805: $e3
	adc  b                                           ; $5806: $88
	nop                                              ; $5807: $00
	add  e                                           ; $5808: $83
	ld   [$cb01], sp                                 ; $5809: $08 $01 $cb
	ccf                                              ; $580c: $3f
	add  b                                           ; $580d: $80
	rra                                              ; $580e: $1f
	add  b                                           ; $580f: $80
	ccf                                              ; $5810: $3f
	add  b                                           ; $5811: $80
	rra                                              ; $5812: $1f
	add  b                                           ; $5813: $80
	cpl                                              ; $5814: $2f
	add  b                                           ; $5815: $80
	rra                                              ; $5816: $1f
	add  b                                           ; $5817: $80
	rrca                                             ; $5818: $0f
	add  b                                           ; $5819: $80
	dec  d                                           ; $581a: $15
	inc  bc                                          ; $581b: $03

jr_075_581c:
	jr   c, jr_075_581e                              ; $581c: $38 $00

jr_075_581e:
	add  [hl]                                        ; $581e: $86
	add  b                                           ; $581f: $80
	add  d                                           ; $5820: $82

jr_075_5821:
	ret  nz                                          ; $5821: $c0

	nop                                              ; $5822: $00
	pop  bc                                          ; $5823: $c1
	add  b                                           ; $5824: $80
	ldh  [rP1], a                                    ; $5825: $e0 $00
	ld   hl, sp-$80                                  ; $5827: $f8 $80
	ldh  a, [$0c]                                    ; $5829: $f0 $0c
	ld   c, c                                        ; $582b: $49
	ld   b, b                                        ; $582c: $40
	rrca                                             ; $582d: $0f
	nop                                              ; $582e: $00
	ld   bc, $c000                                   ; $582f: $01 $00 $c0
	nop                                              ; $5832: $00
	jr   nz, jr_075_5835                             ; $5833: $20 $00

jr_075_5835:
	jr   jr_075_5837                                 ; $5835: $18 $00

jr_075_5837:
	ld   bc, $0081                                   ; $5837: $01 $81 $00
	ld   a, [bc]                                     ; $583a: $0a
	add  l                                           ; $583b: $85
	nop                                              ; $583c: $00
	add  e                                           ; $583d: $83
	nop                                              ; $583e: $00
	inc  bc                                          ; $583f: $03
	nop                                              ; $5840: $00
	inc  b                                           ; $5841: $04
	nop                                              ; $5842: $00
	inc  bc                                          ; $5843: $03
	nop                                              ; $5844: $00
	inc  b                                           ; $5845: $04
	add  c                                           ; $5846: $81
	nop                                              ; $5847: $00
	inc  b                                           ; $5848: $04
	ld   [bc], a                                     ; $5849: $02
	ld   bc, $0185                                   ; $584a: $01 $85 $01
	sbc  a                                           ; $584d: $9f
	add  b                                           ; $584e: $80
	ld   [bc], a                                     ; $584f: $02
	ld   bc, $8505                                   ; $5850: $01 $05 $85
	add  b                                           ; $5853: $80
	ld   b, $05                                      ; $5854: $06 $05
	rlca                                             ; $5856: $07
	add  a                                           ; $5857: $87
	ld   b, $c6                                      ; $5858: $06 $c6
	rlca                                             ; $585a: $07
	and  a                                           ; $585b: $a7
	add  c                                           ; $585c: $81
	add  a                                           ; $585d: $87
	ld   [bc], a                                     ; $585e: $02
	ret  c                                           ; $585f: $d8

	dec  de                                          ; $5860: $1b
	jr   jr_075_57e3                                 ; $5861: $18 $80

	dec  de                                          ; $5863: $1b
	add  b                                           ; $5864: $80
	sbc  e                                           ; $5865: $9b
	add  b                                           ; $5866: $80
	dec  de                                          ; $5867: $1b
	add  hl, bc                                      ; $5868: $09
	sbc  e                                           ; $5869: $9b
	sbc  c                                           ; $586a: $99
	ld   e, c                                        ; $586b: $59
	ld   d, b                                        ; $586c: $50
	sub  b                                           ; $586d: $90
	sbc  b                                           ; $586e: $98
	ld   d, b                                        ; $586f: $50
	add  l                                           ; $5870: $85
	ldh  [$6c], a                                    ; $5871: $e0 $6c
	add  b                                           ; $5873: $80
	add  b                                           ; $5874: $80
	ld   d, $bc                                      ; $5875: $16 $bc
	add  l                                           ; $5877: $85
	cp   h                                           ; $5878: $bc
	add  h                                           ; $5879: $84
	add  b                                           ; $587a: $80
	add  c                                           ; $587b: $81
	cp   h                                           ; $587c: $bc
	add  h                                           ; $587d: $84
	cp   h                                           ; $587e: $bc
	add  l                                           ; $587f: $85

jr_075_5880:
	add  b                                           ; $5880: $80
	xor  d                                           ; $5881: $aa
	nop                                              ; $5882: $00
	db   $f4                                         ; $5883: $f4
	nop                                              ; $5884: $00
	ld   [de], a                                     ; $5885: $12
	jr   nz, jr_075_5880                             ; $5886: $20 $f8

	ld   h, b                                        ; $5888: $60
	ld   h, $20                                      ; $5889: $26 $20
	ret  nz                                          ; $588b: $c0

	pop  bc                                          ; $588c: $c1
	add  b                                           ; $588d: $80
	inc  bc                                          ; $588e: $03
	ld   [bc], a                                     ; $588f: $02
	di                                               ; $5890: $f3
	inc  bc                                          ; $5891: $03
	jr   nc, jr_075_581c                             ; $5892: $30 $88

	nop                                              ; $5894: $00
	add  b                                           ; $5895: $80
	add  b                                           ; $5896: $80
	add  c                                           ; $5897: $81
	ret  nz                                          ; $5898: $c0

	nop                                              ; $5899: $00
	ldh  a, [$81]                                    ; $589a: $f0 $81
	nop                                              ; $589c: $00
	nop                                              ; $589d: $00
	jr   nc, jr_075_5821                             ; $589e: $30 $81

	nop                                              ; $58a0: $00
	ld   [bc], a                                     ; $58a1: $02
	jr   nz, jr_075_58a4                             ; $58a2: $20 $00

jr_075_58a4:
	ld   de, $3080                                   ; $58a4: $11 $80 $30
	add  b                                           ; $58a7: $80
	ld   a, b                                        ; $58a8: $78
	inc  bc                                          ; $58a9: $03
	jr   jr_075_58c5                                 ; $58aa: $18 $19

	nop                                              ; $58ac: $00
	jr   nc, @-$7d                                   ; $58ad: $30 $81

	nop                                              ; $58af: $00
	inc  b                                           ; $58b0: $04
	jr   nz, jr_075_58b3                             ; $58b1: $20 $00

jr_075_58b3:
	jr   nc, jr_075_58b5                             ; $58b3: $30 $00

jr_075_58b5:
	db   $10                                         ; $58b5: $10
	add  d                                           ; $58b6: $82
	jr   nc, jr_075_58bb                             ; $58b7: $30 $02

	nop                                              ; $58b9: $00
	sub  d                                           ; $58ba: $92

jr_075_58bb:
	ld   e, a                                        ; $58bb: $5f
	add  b                                           ; $58bc: $80
	rst  $38                                         ; $58bd: $ff
	add  b                                           ; $58be: $80
	ld   e, a                                        ; $58bf: $5f
	ld   bc, $3f3e                                   ; $58c0: $01 $3e $3f
	add  b                                           ; $58c3: $80
	ld   e, a                                        ; $58c4: $5f

jr_075_58c5:
	add  b                                           ; $58c5: $80
	ccf                                              ; $58c6: $3f
	add  b                                           ; $58c7: $80
	ld   a, a                                        ; $58c8: $7f
	add  b                                           ; $58c9: $80
	cp   a                                           ; $58ca: $bf
	nop                                              ; $58cb: $00
	ld   h, b                                        ; $58cc: $60
	add  c                                           ; $58cd: $81
	add  b                                           ; $58ce: $80
	nop                                              ; $58cf: $00
	ret  nc                                          ; $58d0: $d0

	add  c                                           ; $58d1: $81
	ret  nz                                          ; $58d2: $c0

	add  d                                           ; $58d3: $82
	ldh  [rSB], a                                    ; $58d4: $e0 $01
	ld   h, b                                        ; $58d6: $60
	ldh  [$80], a                                    ; $58d7: $e0 $80
	ldh  a, [rP1]                                    ; $58d9: $f0 $00
	rst  $30                                         ; $58db: $f7
	adc  l                                           ; $58dc: $8d
	add  a                                           ; $58dd: $87
	ld   [bc], a                                     ; $58de: $02
	ldh  [rP1], a                                    ; $58df: $e0 $00
	ld   h, b                                        ; $58e1: $60
	add  c                                           ; $58e2: $81
	nop                                              ; $58e3: $00
	nop                                              ; $58e4: $00
	ld   b, b                                        ; $58e5: $40
	add  c                                           ; $58e6: $81
	nop                                              ; $58e7: $00
	nop                                              ; $58e8: $00
	ret  nz                                          ; $58e9: $c0

	add  c                                           ; $58ea: $81
	nop                                              ; $58eb: $00
	ld   [bc], a                                     ; $58ec: $02
	add  b                                           ; $58ed: $80
	nop                                              ; $58ee: $00
	add  e                                           ; $58ef: $83
	add  b                                           ; $58f0: $80
	ld   [$1886], sp                                 ; $58f1: $08 $86 $18
	add  e                                           ; $58f4: $83
	jr   c, @+$03                                    ; $58f5: $38 $01

	adc  $0a                                         ; $58f7: $ce $0a
	add  b                                           ; $58f9: $80
	ld   bc, $0082                                   ; $58fa: $01 $82 $00
	nop                                              ; $58fd: $00
	ld   bc, $0081                                   ; $58fe: $01 $81 $00
	add  hl, bc                                      ; $5901: $09
	ld   [bc], a                                     ; $5902: $02
	nop                                              ; $5903: $00
	ld   hl, sp+$00                                  ; $5904: $f8 $00
	rst  $30                                         ; $5906: $f7
	nop                                              ; $5907: $00
	ld   b, h                                        ; $5908: $44
	nop                                              ; $5909: $00
	adc  b                                           ; $590a: $88
	nop                                              ; $590b: $00
	add  c                                           ; $590c: $81
	ld   bc, $0302                                   ; $590d: $01 $02 $03
	dec  bc                                          ; $5910: $0b
	inc  bc                                          ; $5911: $03
	add  b                                           ; $5912: $80
	rlca                                             ; $5913: $07
	ld   b, $13                                      ; $5914: $06 $13
	rrca                                             ; $5916: $0f
	db   $db                                         ; $5917: $db
	ld   bc, $2327                                   ; $5918: $01 $27 $23
	ld   l, $81                                      ; $591b: $2e $81
	and  [hl]                                        ; $591d: $a6
	ld   bc, $adac                                   ; $591e: $01 $ac $ad
	add  b                                           ; $5921: $80
	sbc  l                                           ; $5922: $9d
	ld   b, $99                                      ; $5923: $06 $99
	sbc  e                                           ; $5925: $9b
	cp   b                                           ; $5926: $b8
	cp   e                                           ; $5927: $bb
	add  hl, de                                      ; $5928: $19
	add  c                                           ; $5929: $81
	add  hl, de                                      ; $592a: $19
	add  b                                           ; $592b: $80
	ld   h, c                                        ; $592c: $61
	ld   [bc], a                                     ; $592d: $02
	pop  de                                          ; $592e: $d1
	sub  c                                           ; $592f: $91
	ld   sp, hl                                      ; $5930: $f9
	add  b                                           ; $5931: $80
	ld   hl, sp+$07                                  ; $5932: $f8 $07
	add  hl, sp                                      ; $5934: $39
	db   $fc                                         ; $5935: $fc
	db   $fd                                         ; $5936: $fd
	ldh  [c], a                                      ; $5937: $e2
	add  d                                           ; $5938: $82
	db   $fc                                         ; $5939: $fc
	sbc  e                                           ; $593a: $9b
	add  a                                           ; $593b: $87
	add  h                                           ; $593c: $84
	rlca                                             ; $593d: $07
	add  b                                           ; $593e: $80
	ld   bc, $f00c                                   ; $593f: $01 $0c $f0
	nop                                              ; $5942: $00
	cp   $00                                         ; $5943: $fe $00
	ldh  a, [rP1]                                    ; $5945: $f0 $00
	ld   h, $90                                      ; $5947: $26 $90
	sub  l                                           ; $5949: $95
	reti                                             ; $594a: $d9


	call nc, $c090                                   ; $594b: $d4 $90 $c0
	add  l                                           ; $594e: $85
	add  b                                           ; $594f: $80
	add  b                                           ; $5950: $80

jr_075_5951:
	ret  nz                                          ; $5951: $c0

	inc  b                                           ; $5952: $04
	add  c                                           ; $5953: $81
	cp   h                                           ; $5954: $bc
	add  h                                           ; $5955: $84
	cp   h                                           ; $5956: $bc
	dec  b                                           ; $5957: $05
	add  b                                           ; $5958: $80
	ld   hl, sp+$09                                  ; $5959: $f8 $09
	ld   b, $36                                      ; $595b: $06 $36
	ld   a, $3a                                      ; $595d: $3e $3a
	ld   a, $32                                      ; $595f: $3e $32
	ld   a, $32                                      ; $5961: $3e $32
	ld   a, $3a                                      ; $5963: $3e $3a
	add  l                                           ; $5965: $85
	inc  bc                                          ; $5966: $03
	nop                                              ; $5967: $00
	nop                                              ; $5968: $00
	add  [hl]                                        ; $5969: $86
	ld   bc, $c081                                   ; $596a: $01 $81 $c0
	nop                                              ; $596d: $00
	pop  bc                                          ; $596e: $c1
	add  e                                           ; $596f: $83
	ret  nz                                          ; $5970: $c0

	nop                                              ; $5971: $00
	nop                                              ; $5972: $00
	add  e                                           ; $5973: $83
	ret  nz                                          ; $5974: $c0

jr_075_5975:
	nop                                              ; $5975: $00
	and  b                                           ; $5976: $a0
	add  c                                           ; $5977: $81
	ld   [$9805], sp                                 ; $5978: $08 $05 $98
	jr   jr_075_5975                                 ; $597b: $18 $f8

	add  sp, -$17                                    ; $597d: $e8 $e9
	add  sp, -$7e                                    ; $597f: $e8 $82
	adc  b                                           ; $5981: $88
	add  b                                           ; $5982: $80
	add  sp, $02                                     ; $5983: $e8 $02
	ld   [rROMB1], sp                                 ; $5985: $08 $00 $30
	add  b                                           ; $5988: $80
	nop                                              ; $5989: $00
	add  c                                           ; $598a: $81
	jr   nc, jr_075_598d                             ; $598b: $30 $00

jr_075_598d:
	ld   sp, $3081                                   ; $598d: $31 $81 $30
	add  b                                           ; $5990: $80
	ld   [hl], b                                     ; $5991: $70
	inc  bc                                          ; $5992: $03
	ld   [hl], h                                     ; $5993: $74
	ld   [hl], b                                     ; $5994: $70
	and  [hl]                                        ; $5995: $a6
	ld   e, a                                        ; $5996: $5f
	add  b                                           ; $5997: $80
	cp   a                                           ; $5998: $bf
	add  d                                           ; $5999: $82
	rst  $38                                         ; $599a: $ff
	add  b                                           ; $599b: $80
	ld   a, a                                        ; $599c: $7f
	add  h                                           ; $599d: $84
	rst  $38                                         ; $599e: $ff
	ld   [bc], a                                     ; $599f: $02
	add  b                                           ; $59a0: $80
	ldh  a, [$b0]                                    ; $59a1: $f0 $b0
	add  l                                           ; $59a3: $85
	ldh  a, [rP1]                                    ; $59a4: $f0 $00
	ret  nc                                          ; $59a6: $d0

	add  e                                           ; $59a7: $83
	ldh  a, [rP1]                                    ; $59a8: $f0 $00
	sub  a                                           ; $59aa: $97
	add  c                                           ; $59ab: $81
	add  [hl]                                        ; $59ac: $86
	nop                                              ; $59ad: $00
	add  a                                           ; $59ae: $87
	add  c                                           ; $59af: $81
	add  [hl]                                        ; $59b0: $86
	nop                                              ; $59b1: $00
	add  a                                           ; $59b2: $87
	add  l                                           ; $59b3: $85

jr_075_59b4:
	add  h                                           ; $59b4: $84
	nop                                              ; $59b5: $00
	add  e                                           ; $59b6: $83
	add  c                                           ; $59b7: $81
	nop                                              ; $59b8: $00
	nop                                              ; $59b9: $00
	add  b                                           ; $59ba: $80
	add  c                                           ; $59bb: $81
	nop                                              ; $59bc: $00
	nop                                              ; $59bd: $00
	ret  nz                                          ; $59be: $c0

	add  b                                           ; $59bf: $80
	nop                                              ; $59c0: $00
	ld   bc, $2738                                   ; $59c1: $01 $38 $27
	add  c                                           ; $59c4: $81
	jr   nz, jr_075_59c7                             ; $59c5: $20 $00

jr_075_59c7:
	db   $fc                                         ; $59c7: $fc
	add  b                                           ; $59c8: $80
	jr   c, jr_075_5951                              ; $59c9: $38 $86

	ld   a, b                                        ; $59cb: $78
	add  c                                           ; $59cc: $81
	ld   hl, sp-$80                                  ; $59cd: $f8 $80
	ld   a, b                                        ; $59cf: $78
	nop                                              ; $59d0: $00
	cp   $81                                         ; $59d1: $fe $81
	ld   hl, sp+$01                                  ; $59d3: $f8 $01
	db   $f4                                         ; $59d5: $f4
	ldh  a, [$80]                                    ; $59d6: $f0 $80
	ld   [hl], b                                     ; $59d8: $70
	add  b                                           ; $59d9: $80
	ldh  a, [$80]                                    ; $59da: $f0 $80
	ld   [hl], b                                     ; $59dc: $70

Call_075_59dd:
	ld   bc, $a0a8                                   ; $59dd: $01 $a8 $a0
	add  b                                           ; $59e0: $80
	ld   h, b                                        ; $59e1: $60
	inc  c                                           ; $59e2: $0c
	rst  $10                                         ; $59e3: $d7
	rrca                                             ; $59e4: $0f
	ld   l, d                                        ; $59e5: $6a
	rrca                                             ; $59e6: $0f
	nop                                              ; $59e7: $00
	rra                                              ; $59e8: $1f
	ret  c                                           ; $59e9: $d8

	rra                                              ; $59ea: $1f
	inc  de                                          ; $59eb: $13
	rra                                              ; $59ec: $1f
	sub  a                                           ; $59ed: $97
	rra                                              ; $59ee: $1f
	rrca                                             ; $59ef: $0f
	add  c                                           ; $59f0: $81
	ccf                                              ; $59f1: $3f
	inc  b                                           ; $59f2: $04
	and  e                                           ; $59f3: $a3
	rst  $38                                         ; $59f4: $ff
	ld   b, e                                        ; $59f5: $43
	rst  $38                                         ; $59f6: $ff
	ld   a, a                                        ; $59f7: $7f
	add  e                                           ; $59f8: $83
	rst  $38                                         ; $59f9: $ff
	ld   b, $9f                                      ; $59fa: $06 $9f
	ccf                                              ; $59fc: $3f
	cpl                                              ; $59fd: $2f
	ccf                                              ; $59fe: $3f
	daa                                              ; $59ff: $27
	ccf                                              ; $5a00: $3f
	rla                                              ; $5a01: $17
	add  c                                           ; $5a02: $81
	cp   $00                                         ; $5a03: $fe $00
	ld   a, [$fe85]                                  ; $5a05: $fa $85 $fe
	ld   bc, $fefc                                   ; $5a08: $01 $fc $fe
	add  b                                           ; $5a0b: $80
	db   $fc                                         ; $5a0c: $fc
	nop                                              ; $5a0d: $00
	ld   b, $80                                      ; $5a0e: $06 $80
	ld   d, h                                        ; $5a10: $54
	add  b                                           ; $5a11: $80
	ld   hl, sp-$80                                  ; $5a12: $f8 $80
	db   $f4                                         ; $5a14: $f4
	add  b                                           ; $5a15: $80
	ld   hl, sp+$07                                  ; $5a16: $f8 $07
	db   $f4                                         ; $5a18: $f4
	ld   [hl], h                                     ; $5a19: $74
	ld   a, b                                        ; $5a1a: $78
	xor  b                                           ; $5a1b: $a8
	and  h                                           ; $5a1c: $a4
	ld   e, h                                        ; $5a1d: $5c
	ld   d, b                                        ; $5a1e: $50
	add  $81                                         ; $5a1f: $c6 $81
	ret  nz                                          ; $5a21: $c0

	adc  d                                           ; $5a22: $8a
	ret  nc                                          ; $5a23: $d0

	ld   a, [bc]                                     ; $5a24: $0a
	jr   c, jr_075_5a65                              ; $5a25: $38 $3e

	ld   [hl], d                                     ; $5a27: $72
	ld   a, [hl]                                     ; $5a28: $7e
	ld   [hl], d                                     ; $5a29: $72
	ld   a, [hl]                                     ; $5a2a: $7e
	ld   a, d                                        ; $5a2b: $7a
	ld   a, [hl]                                     ; $5a2c: $7e
	ld   a, l                                        ; $5a2d: $7d
	ld   a, b                                        ; $5a2e: $78

jr_075_5a2f:
	jr   c, jr_075_59b4                              ; $5a2f: $38 $83

	nop                                              ; $5a31: $00
	nop                                              ; $5a32: $00
	ret  nz                                          ; $5a33: $c0

	add  b                                           ; $5a34: $80
	ld   bc, $0003                                   ; $5a35: $01 $03 $00
	ld   bc, $0100                                   ; $5a38: $01 $00 $01
	add  a                                           ; $5a3b: $87
	nop                                              ; $5a3c: $00
	ld   b, $01                                      ; $5a3d: $06 $01
	ret  nz                                          ; $5a3f: $c0

	pop  bc                                          ; $5a40: $c1
	nop                                              ; $5a41: $00
	ret  nz                                          ; $5a42: $c0

	nop                                              ; $5a43: $00
	ret  nz                                          ; $5a44: $c0

	add  a                                           ; $5a45: $87
	nop                                              ; $5a46: $00
	ld   a, [bc]                                     ; $5a47: $0a
	sbc  h                                           ; $5a48: $9c
	ld   l, b                                        ; $5a49: $68
	add  sp, -$20                                    ; $5a4a: $e8 $e0
	inc  c                                           ; $5a4c: $0c
	nop                                              ; $5a4d: $00
	add  sp, $00                                     ; $5a4e: $e8 $00
	ld   hl, sp+$00                                  ; $5a50: $f8 $00
	ldh  [$83], a                                    ; $5a52: $e0 $83
	nop                                              ; $5a54: $00
	ld   [bc], a                                     ; $5a55: $02
	add  hl, bc                                      ; $5a56: $09
	ld   [hl], b                                     ; $5a57: $70

Call_075_5a58:
	ld   [hl], c                                     ; $5a58: $71
	add  e                                           ; $5a59: $83
	ld   [hl], b                                     ; $5a5a: $70
	add  b                                           ; $5a5b: $80
	ld   bc, $4b04                                   ; $5a5c: $01 $04 $4b

Call_075_5a5f:
	inc  bc                                          ; $5a5f: $03
	scf                                              ; $5a60: $37
	inc  bc                                          ; $5a61: $03
	dec  bc                                          ; $5a62: $0b
	add  b                                           ; $5a63: $80
	dec  c                                           ; $5a64: $0d

jr_075_5a65:
	inc  c                                           ; $5a65: $0c
	nop                                              ; $5a66: $00
	ld   c, $00                                      ; $5a67: $0e $00
	rrca                                             ; $5a69: $0f
	nop                                              ; $5a6a: $00
	ld   c, $00                                      ; $5a6b: $0e $00
	inc  bc                                          ; $5a6d: $03
	inc  c                                           ; $5a6e: $0c
	inc  bc                                          ; $5a6f: $03
	nop                                              ; $5a70: $00
	ld   c, $02                                      ; $5a71: $0e $02
	add  b                                           ; $5a73: $80
	ld   c, $00                                      ; $5a74: $0e $00
	adc  a                                           ; $5a76: $8f
	adc  l                                           ; $5a77: $8d
	rrca                                             ; $5a78: $0f
	nop                                              ; $5a79: $00
	rlca                                             ; $5a7a: $07
	add  l                                           ; $5a7b: $85
	add  c                                           ; $5a7c: $81
	nop                                              ; $5a7d: $00
	adc  c                                           ; $5a7e: $89
	add  e                                           ; $5a7f: $83
	add  e                                           ; $5a80: $83
	add  b                                           ; $5a81: $80
	add  b                                           ; $5a82: $80
	nop                                              ; $5a83: $00

jr_075_5a84:
	di                                               ; $5a84: $f3
	add  c                                           ; $5a85: $81
	nop                                              ; $5a86: $00
	inc  b                                           ; $5a87: $04
	jr   z, jr_075_5aaa                              ; $5a88: $28 $20

	ld   [hl], $20                                   ; $5a8a: $36 $20
	inc  hl                                          ; $5a8c: $23
	add  b                                           ; $5a8d: $80
	ld   hl, $3180                                   ; $5a8e: $21 $80 $31
	nop                                              ; $5a91: $00
	dec  a                                           ; $5a92: $3d
	add  b                                           ; $5a93: $80
	nop                                              ; $5a94: $00
	ld   bc, $787c                                   ; $5a95: $01 $7c $78
	add  b                                           ; $5a98: $80
	nop                                              ; $5a99: $00
	ld   bc, $f8fc                                   ; $5a9a: $01 $fc $f8
	add  b                                           ; $5a9d: $80
	or   $80                                         ; $5a9e: $f6 $80
	db   $eb                                         ; $5aa0: $eb
	add  b                                           ; $5aa1: $80
	di                                               ; $5aa2: $f3
	add  b                                           ; $5aa3: $80
	cp   e                                           ; $5aa4: $bb
	add  b                                           ; $5aa5: $80
	ld   a, c                                        ; $5aa6: $79
	ld   bc, $a0ae                                   ; $5aa7: $01 $ae $a0

jr_075_5aaa:
	add  b                                           ; $5aaa: $80
	ld   b, b                                        ; $5aab: $40
	add  b                                           ; $5aac: $80
	jr   nz, jr_075_5a2f                             ; $5aad: $20 $80

	ld   b, b                                        ; $5aaf: $40
	add  b                                           ; $5ab0: $80
	nop                                              ; $5ab1: $00
	ld   [bc], a                                     ; $5ab2: $02
	adc  b                                           ; $5ab3: $88
	add  b                                           ; $5ab4: $80
	add  h                                           ; $5ab5: $84
	add  c                                           ; $5ab6: $81
	add  b                                           ; $5ab7: $80
	ld   b, $e2                                      ; $5ab8: $06 $e2
	ccf                                              ; $5aba: $3f
	cpl                                              ; $5abb: $2f
	rra                                              ; $5abc: $1f
	sub  a                                           ; $5abd: $97
	rra                                              ; $5abe: $1f
	rla                                              ; $5abf: $17
	add  c                                           ; $5ac0: $81
	rra                                              ; $5ac1: $1f
	nop                                              ; $5ac2: $00
	sbc  $81                                         ; $5ac3: $de $81
	rra                                              ; $5ac5: $1f
	ld   b, $7d                                      ; $5ac6: $06 $7d
	rra                                              ; $5ac8: $1f
	jr   z, jr_075_5b0a                              ; $5ac9: $28 $3f

	rst  $38                                         ; $5acb: $ff
	ccf                                              ; $5acc: $3f
	dec  bc                                          ; $5acd: $0b
	add  e                                           ; $5ace: $83
	ccf                                              ; $5acf: $3f
	nop                                              ; $5ad0: $00
	rst  $20                                         ; $5ad1: $e7
	add  c                                           ; $5ad2: $81
	rst  $38                                         ; $5ad3: $ff
	inc  b                                           ; $5ad4: $04
	di                                               ; $5ad5: $f3
	rst  $38                                         ; $5ad6: $ff
	ccf                                              ; $5ad7: $3f
	db   $fc                                         ; $5ad8: $fc
	ldh  a, [$81]                                    ; $5ad9: $f0 $81
	db   $fc                                         ; $5adb: $fc
	ld   bc, $fce0                                   ; $5adc: $01 $e0 $fc
	add  b                                           ; $5adf: $80
	ld   hl, sp+$07                                  ; $5ae0: $f8 $07
	set  7, b                                        ; $5ae2: $cb $f8
	call c, $f8f0                                    ; $5ae4: $dc $f0 $f8
	ldh  [$c1], a                                    ; $5ae7: $e0 $c1
	inc  l                                           ; $5ae9: $2c
	add  b                                           ; $5aea: $80
	inc  b                                           ; $5aeb: $04
	ld   b, $03                                      ; $5aec: $06 $03
	nop                                              ; $5aee: $00
	ld   c, $00                                      ; $5aef: $0e $00
	ld   [hl], b                                     ; $5af1: $70
	nop                                              ; $5af2: $00
	add  b                                           ; $5af3: $80
	add  e                                           ; $5af4: $83
	nop                                              ; $5af5: $00
	nop                                              ; $5af6: $00
	inc  b                                           ; $5af7: $04
	add  c                                           ; $5af8: $81
	nop                                              ; $5af9: $00
	ld   [bc], a                                     ; $5afa: $02
	jr   jr_075_5afd                                 ; $5afb: $18 $00

jr_075_5afd:
	inc  e                                           ; $5afd: $1c
	add  a                                           ; $5afe: $87
	nop                                              ; $5aff: $00
	nop                                              ; $5b00: $00
	jr   nc, jr_075_5a84                             ; $5b01: $30 $81

	nop                                              ; $5b03: $00
	ld   [bc], a                                     ; $5b04: $02
	ld   d, b                                        ; $5b05: $50
	nop                                              ; $5b06: $00
	ld   h, b                                        ; $5b07: $60
	sub  a                                           ; $5b08: $97
	nop                                              ; $5b09: $00

jr_075_5b0a:
	add  a                                           ; $5b0a: $87
	inc  bc                                          ; $5b0b: $03
	ld   bc, $0300                                   ; $5b0c: $01 $00 $03
	add  c                                           ; $5b0f: $81
	nop                                              ; $5b10: $00
	ld   [bc], a                                     ; $5b11: $02
	ld   bc, $f900                                   ; $5b12: $01 $00 $f9
	add  h                                           ; $5b15: $84
	ldh  a, [$0b]                                    ; $5b16: $f0 $0b
	ldh  [$e8], a                                    ; $5b18: $e0 $e8
	nop                                              ; $5b1a: $00
	ld   b, b                                        ; $5b1b: $40
	nop                                              ; $5b1c: $00
	sub  b                                           ; $5b1d: $90
	nop                                              ; $5b1e: $00
	ldh  [rP1], a                                    ; $5b1f: $e0 $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b21: $cf
	dec  c                                           ; $5b22: $0d
	ld   e, $83                                      ; $5b23: $1e $83
	inc  e                                           ; $5b25: $1c
	add  b                                           ; $5b26: $80
	inc  a                                           ; $5b27: $3c
	nop                                              ; $5b28: $00
	ld   a, $81                                      ; $5b29: $3e $81
	inc  a                                           ; $5b2b: $3c
	ld   bc, $3c3d                                   ; $5b2c: $01 $3d $3c
	ld   c, c                                        ; $5b2f: $49
	ld   [bc], a                                     ; $5b30: $02
	add  [hl]                                        ; $5b31: $86
	nop                                              ; $5b32: $00
	add  h                                           ; $5b33: $84
	rrca                                             ; $5b34: $0f
	nop                                              ; $5b35: $00
	nop                                              ; $5b36: $00
	add  b                                           ; $5b37: $80
	rrca                                             ; $5b38: $0f
	add  l                                           ; $5b39: $85
	nop                                              ; $5b3a: $00
	add  b                                           ; $5b3b: $80
	ld   [$d580], a                                  ; $5b3c: $ea $80 $d5
	add  b                                           ; $5b3f: $80
	ld   [$d580], a                                  ; $5b40: $ea $80 $d5
	add  [hl]                                        ; $5b43: $86
	nop                                              ; $5b44: $00
	inc  bc                                          ; $5b45: $03
	xor  a                                           ; $5b46: $af
	xor  b                                           ; $5b47: $a8
	ld   d, d                                        ; $5b48: $52
	ld   d, l                                        ; $5b49: $55
	add  b                                           ; $5b4a: $80
	xor  d                                           ; $5b4b: $aa
	add  b                                           ; $5b4c: $80
	ld   d, l                                        ; $5b4d: $55
	add  a                                           ; $5b4e: $87
	nop                                              ; $5b4f: $00
	ld   [bc], a                                     ; $5b50: $02
	rst  $38                                         ; $5b51: $ff
	rra                                              ; $5b52: $1f
	inc  bc                                          ; $5b53: $03
	add  b                                           ; $5b54: $80
	ld   b, b                                        ; $5b55: $40
	ld   [bc], a                                     ; $5b56: $02
	ld   b, d                                        ; $5b57: $42
	ld   b, c                                        ; $5b58: $41
	ldh  [$85], a                                    ; $5b59: $e0 $85
	nop                                              ; $5b5b: $00
	ld   bc, $e11e                                   ; $5b5c: $01 $1e $e1
	add  b                                           ; $5b5f: $80
	cp   $80                                         ; $5b60: $fe $80
	rst  $38                                         ; $5b62: $ff
	add  b                                           ; $5b63: $80
	rra                                              ; $5b64: $1f
	nop                                              ; $5b65: $00
	rst  $38                                         ; $5b66: $ff
	add  [hl]                                        ; $5b67: $86
	nop                                              ; $5b68: $00
	nop                                              ; $5b69: $00
	rst  $38                                         ; $5b6a: $ff
	add  b                                           ; $5b6b: $80
	ccf                                              ; $5b6c: $3f
	add  b                                           ; $5b6d: $80
	rst  ToBoot                                         ; $5b6e: $c7
	add  b                                           ; $5b6f: $80
	ld   hl, sp+$00                                  ; $5b70: $f8 $00
	rst  $38                                         ; $5b72: $ff
	add  l                                           ; $5b73: $85
	nop                                              ; $5b74: $00
	dec  b                                           ; $5b75: $05
	rst  $28                                         ; $5b76: $ef
	rst  $30                                         ; $5b77: $f7
	scf                                              ; $5b78: $37
	rst  $10                                         ; $5b79: $d7
	push de                                          ; $5b7a: $d5
	jp   nc, $d180                                   ; $5b7b: $d2 $80 $d1

	nop                                              ; $5b7e: $00
	rst  $38                                         ; $5b7f: $ff
	add  l                                           ; $5b80: $85
	nop                                              ; $5b81: $00
	add  d                                           ; $5b82: $82
	rst  $38                                         ; $5b83: $ff
	ld   bc, $bf40                                   ; $5b84: $01 $40 $bf
	add  b                                           ; $5b87: $80
	ld   d, a                                        ; $5b88: $57
	nop                                              ; $5b89: $00
	rst  $38                                         ; $5b8a: $ff
	add  l                                           ; $5b8b: $85
	nop                                              ; $5b8c: $00
	add  d                                           ; $5b8d: $82
	rst  $38                                         ; $5b8e: $ff
	nop                                              ; $5b8f: $00
	nop                                              ; $5b90: $00
	add  c                                           ; $5b91: $81
	rst  $38                                         ; $5b92: $ff
	ld   bc, $708f                                   ; $5b93: $01 $8f $70
	add  b                                           ; $5b96: $80
	and  b                                           ; $5b97: $a0
	add  c                                           ; $5b98: $81
	ld   d, b                                        ; $5b99: $50
	add  b                                           ; $5b9a: $80
	ldh  a, [rP1]                                    ; $5b9b: $f0 $00
	ld   d, b                                        ; $5b9d: $50
	add  b                                           ; $5b9e: $80
	and  b                                           ; $5b9f: $a0
	add  b                                           ; $5ba0: $80
	ld   d, b                                        ; $5ba1: $50
	nop                                              ; $5ba2: $00
	nop                                              ; $5ba3: $00
	add  b                                           ; $5ba4: $80
	ldh  a, [$85]                                    ; $5ba5: $f0 $85
	nop                                              ; $5ba7: $00
	add  d                                           ; $5ba8: $82
	rst  $38                                         ; $5ba9: $ff
	nop                                              ; $5baa: $00
	ld   bc, $fe81                                   ; $5bab: $01 $81 $fe
	ld   bc, $55aa                                   ; $5bae: $01 $aa $55
	add  b                                           ; $5bb1: $80
	ld   [$d580], a                                  ; $5bb2: $ea $80 $d5
	ld   b, l                                        ; $5bb5: $45
	dec  d                                           ; $5bb6: $15
	rst  $38                                         ; $5bb7: $ff
	sbc  a                                           ; $5bb8: $9f
	push af                                          ; $5bb9: $f5
	ld   a, [hl-]                                    ; $5bba: $3a
	ld   a, [$ff9f]                                  ; $5bbb: $fa $9f $ff
	jr   nz, @+$01                                   ; $5bbe: $20 $ff

	db   $ec                                         ; $5bc0: $ec
	rst  $38                                         ; $5bc1: $ff
	dec  [hl]                                        ; $5bc2: $35
	rst  $38                                         ; $5bc3: $ff
	inc  h                                           ; $5bc4: $24
	rst  $38                                         ; $5bc5: $ff
	dec  h                                           ; $5bc6: $25
	rst  $38                                         ; $5bc7: $ff
	inc  h                                           ; $5bc8: $24
	rst  $38                                         ; $5bc9: $ff
	daa                                              ; $5bca: $27
	rst  $38                                         ; $5bcb: $ff
	daa                                              ; $5bcc: $27
	rst  $38                                         ; $5bcd: $ff
	inc  h                                           ; $5bce: $24
	rst  $38                                         ; $5bcf: $ff
	daa                                              ; $5bd0: $27
	rst  $38                                         ; $5bd1: $ff
	ld   c, c                                        ; $5bd2: $49
	rst  $38                                         ; $5bd3: $ff
	ld   c, c                                        ; $5bd4: $49
	rst  $38                                         ; $5bd5: $ff
	ld   c, e                                        ; $5bd6: $4b
	rst  $38                                         ; $5bd7: $ff
	ld   c, e                                        ; $5bd8: $4b
	rst  $38                                         ; $5bd9: $ff
	ld   e, e                                        ; $5bda: $5b
	rst  $38                                         ; $5bdb: $ff
	ld   e, e                                        ; $5bdc: $5b
	rst  $38                                         ; $5bdd: $ff
	ld   e, e                                        ; $5bde: $5b
	rst  $38                                         ; $5bdf: $ff
	xor  e                                           ; $5be0: $ab
	ldh  a, [rP1]                                    ; $5be1: $f0 $00
	ldh  a, [rP1]                                    ; $5be3: $f0 $00
	ldh  a, [rSVBK]                                  ; $5be5: $f0 $70
	ldh  a, [$80]                                    ; $5be7: $f0 $80
	ldh  a, [rAUD1SWEEP]                             ; $5be9: $f0 $10
	ldh  a, [$e0]                                    ; $5beb: $f0 $e0
	ldh  a, [rLCDC]                                  ; $5bed: $f0 $40
	ldh  a, [rPCM34]                                 ; $5bef: $f0 $77
	rst  $38                                         ; $5bf1: $ff
	jr   c, @+$01                                    ; $5bf2: $38 $ff

	inc  bc                                          ; $5bf4: $03
	rst  $38                                         ; $5bf5: $ff
	db   $fc                                         ; $5bf6: $fc
	rst  $38                                         ; $5bf7: $ff
	nop                                              ; $5bf8: $00
	rst  $38                                         ; $5bf9: $ff
	nop                                              ; $5bfa: $00
	rst  $38                                         ; $5bfb: $ff
	add  b                                           ; $5bfc: $80
	ld   d, a                                        ; $5bfd: $57
	ld   [bc], a                                     ; $5bfe: $02
	ld   d, l                                        ; $5bff: $55
	rst  $38                                         ; $5c00: $ff
	xor  d                                           ; $5c01: $aa
	add  b                                           ; $5c02: $80
	rrca                                             ; $5c03: $0f
	add  d                                           ; $5c04: $82
	nop                                              ; $5c05: $00
	add  a                                           ; $5c06: $87
	rrca                                             ; $5c07: $0f
	ld   bc, $fa0d                                   ; $5c08: $01 $0d $fa
	add  b                                           ; $5c0b: $80
	db   $fd                                         ; $5c0c: $fd
	ld   bc, $1ada                                   ; $5c0d: $01 $da $1a
	add  b                                           ; $5c10: $80
	dec  e                                           ; $5c11: $1d
	add  b                                           ; $5c12: $80
	ld   a, [de]                                     ; $5c13: $1a
	add  b                                           ; $5c14: $80
	dec  e                                           ; $5c15: $1d
	add  b                                           ; $5c16: $80
	ld   a, [de]                                     ; $5c17: $1a
	add  b                                           ; $5c18: $80
	dec  e                                           ; $5c19: $1d
	ld   bc, $aa92                                   ; $5c1a: $01 $92 $aa
	add  b                                           ; $5c1d: $80
	ld   d, l                                        ; $5c1e: $55
	add  b                                           ; $5c1f: $80
	xor  d                                           ; $5c20: $aa
	add  b                                           ; $5c21: $80
	ld   d, l                                        ; $5c22: $55
	add  b                                           ; $5c23: $80
	xor  d                                           ; $5c24: $aa
	add  b                                           ; $5c25: $80
	ld   d, l                                        ; $5c26: $55
	add  b                                           ; $5c27: $80
	xor  d                                           ; $5c28: $aa
	add  b                                           ; $5c29: $80
	ld   d, l                                        ; $5c2a: $55
	ld   bc, $42a2                                   ; $5c2b: $01 $a2 $42
	add  b                                           ; $5c2e: $80
	ld   b, c                                        ; $5c2f: $41
	add  hl, bc                                      ; $5c30: $09
	ld   a, d                                        ; $5c31: $7a
	ld   h, [hl]                                     ; $5c32: $66
	ld   e, c                                        ; $5c33: $59
	ld   h, l                                        ; $5c34: $65
	ld   a, [hl]                                     ; $5c35: $7e
	ld   c, d                                        ; $5c36: $4a
	ld   b, c                                        ; $5c37: $41
	ld   [hl], l                                     ; $5c38: $75
	ld   c, d                                        ; $5c39: $4a
	ld   a, d                                        ; $5c3a: $7a
	add  b                                           ; $5c3b: $80
	ld   [hl], l                                     ; $5c3c: $75
	inc  bc                                          ; $5c3d: $03
	ld   c, [hl]                                     ; $5c3e: $4e
	and  c                                           ; $5c3f: $a1
	ld   c, b                                        ; $5c40: $48
	ld   d, h                                        ; $5c41: $54
	add  b                                           ; $5c42: $80
	xor  e                                           ; $5c43: $ab
	add  b                                           ; $5c44: $80
	ld   d, a                                        ; $5c45: $57
	add  b                                           ; $5c46: $80
	xor  e                                           ; $5c47: $ab
	add  b                                           ; $5c48: $80
	ld   d, a                                        ; $5c49: $57
	add  b                                           ; $5c4a: $80
	xor  e                                           ; $5c4b: $ab
	add  b                                           ; $5c4c: $80
	ld   d, a                                        ; $5c4d: $57
	ld   bc, $ff03                                   ; $5c4e: $01 $03 $ff
	add  b                                           ; $5c51: $80
	dec  e                                           ; $5c52: $1d
	dec  b                                           ; $5c53: $05
	and  d                                           ; $5c54: $a2
	ld   b, d                                        ; $5c55: $42
	and  b                                           ; $5c56: $a0
	cp   h                                           ; $5c57: $bc
	ld   e, h                                        ; $5c58: $5c
	ld   e, a                                        ; $5c59: $5f
	add  b                                           ; $5c5a: $80
	cp   a                                           ; $5c5b: $bf
	add  b                                           ; $5c5c: $80
	ld   e, a                                        ; $5c5d: $5f
	add  b                                           ; $5c5e: $80
	cp   a                                           ; $5c5f: $bf
	ld   bc, $10ef                                   ; $5c60: $01 $ef $10
	add  b                                           ; $5c63: $80
	ld   b, b                                        ; $5c64: $40
	add  b                                           ; $5c65: $80
	sub  d                                           ; $5c66: $92
	add  b                                           ; $5c67: $80
	ld   de, $1002                                   ; $5c68: $11 $02 $10
	sub  b                                           ; $5c6b: $90
	or   b                                           ; $5c6c: $b0
	add  e                                           ; $5c6d: $83
	rst  $30                                         ; $5c6e: $f7
	ld   bc, $ab6c                                   ; $5c6f: $01 $6c $ab
	add  b                                           ; $5c72: $80
	nop                                              ; $5c73: $00
	add  b                                           ; $5c74: $80
	xor  d                                           ; $5c75: $aa
	add  b                                           ; $5c76: $80
	ld   d, l                                        ; $5c77: $55
	add  c                                           ; $5c78: $81
	nop                                              ; $5c79: $00
	add  e                                           ; $5c7a: $83
	rst  $38                                         ; $5c7b: $ff
	ld   bc, $ff00                                   ; $5c7c: $01 $00 $ff
	add  b                                           ; $5c7f: $80
	nop                                              ; $5c80: $00
	add  b                                           ; $5c81: $80
	cp   a                                           ; $5c82: $bf
	add  b                                           ; $5c83: $80
	ld   e, a                                        ; $5c84: $5f
	add  c                                           ; $5c85: $81
	nop                                              ; $5c86: $00
	add  e                                           ; $5c87: $83
	rst  $38                                         ; $5c88: $ff
	ld   bc, $ff00                                   ; $5c89: $01 $00 $ff
	add  b                                           ; $5c8c: $80
	nop                                              ; $5c8d: $00
	add  d                                           ; $5c8e: $82
	rst  $38                                         ; $5c8f: $ff
	add  c                                           ; $5c90: $81
	nop                                              ; $5c91: $00
	add  e                                           ; $5c92: $83
	rst  $38                                         ; $5c93: $ff
	ld   bc, $fe01                                   ; $5c94: $01 $01 $fe
	add  b                                           ; $5c97: $80
	ld   b, $82                                      ; $5c98: $06 $82
	cp   $81                                         ; $5c9a: $fe $81
	ld   b, $83                                      ; $5c9c: $06 $83
	cp   $00                                         ; $5c9e: $fe $00
	rlca                                             ; $5ca0: $07
	add  c                                           ; $5ca1: $81
	rst  $38                                         ; $5ca2: $ff
	add  c                                           ; $5ca3: $81
	nop                                              ; $5ca4: $00
	inc  b                                           ; $5ca5: $04
	rst  $38                                         ; $5ca6: $ff
	nop                                              ; $5ca7: $00
	rst  $38                                         ; $5ca8: $ff
	jp   z, $8035                                    ; $5ca9: $ca $35 $80

	ld   a, [hl-]                                    ; $5cac: $3a
	add  b                                           ; $5cad: $80
	dec  [hl]                                        ; $5cae: $35
	nop                                              ; $5caf: $00
	nop                                              ; $5cb0: $00
	add  c                                           ; $5cb1: $81
	rst  $38                                         ; $5cb2: $ff
	add  c                                           ; $5cb3: $81
	nop                                              ; $5cb4: $00
	inc  b                                           ; $5cb5: $04
	rst  $38                                         ; $5cb6: $ff
	nop                                              ; $5cb7: $00
	rst  $38                                         ; $5cb8: $ff
	adc  d                                           ; $5cb9: $8a
	ld   [hl], l                                     ; $5cba: $75
	add  b                                           ; $5cbb: $80
	ld   [$7580], a                                  ; $5cbc: $ea $80 $75
	nop                                              ; $5cbf: $00
	nop                                              ; $5cc0: $00
	add  c                                           ; $5cc1: $81
	rst  $38                                         ; $5cc2: $ff
	add  c                                           ; $5cc3: $81
	nop                                              ; $5cc4: $00
	inc  bc                                          ; $5cc5: $03
	rst  $38                                         ; $5cc6: $ff
	nop                                              ; $5cc7: $00
	rst  $38                                         ; $5cc8: $ff
	ccf                                              ; $5cc9: $3f
	add  e                                           ; $5cca: $83
	ret  nz                                          ; $5ccb: $c0

	nop                                              ; $5ccc: $00
	nop                                              ; $5ccd: $00
	add  c                                           ; $5cce: $81
	rst  $38                                         ; $5ccf: $ff
	add  c                                           ; $5cd0: $81
	nop                                              ; $5cd1: $00
	ld   bc, $00ff                                   ; $5cd2: $01 $ff $00
	add  b                                           ; $5cd5: $80
	rst  $38                                         ; $5cd6: $ff
	add  h                                           ; $5cd7: $84
	nop                                              ; $5cd8: $00
	add  c                                           ; $5cd9: $81
	rst  $38                                         ; $5cda: $ff
	add  c                                           ; $5cdb: $81
	nop                                              ; $5cdc: $00
	inc  b                                           ; $5cdd: $04
	rst  $38                                         ; $5cde: $ff
	nop                                              ; $5cdf: $00
	rst  $38                                         ; $5ce0: $ff
	jp   z, $8035                                    ; $5ce1: $ca $35 $80

	ld   a, [hl-]                                    ; $5ce4: $3a
	add  b                                           ; $5ce5: $80
	dec  [hl]                                        ; $5ce6: $35
	nop                                              ; $5ce7: $00
	nop                                              ; $5ce8: $00
	add  b                                           ; $5ce9: $80
	rlca                                             ; $5cea: $07
	add  b                                           ; $5ceb: $80
	dec  bc                                          ; $5cec: $0b
	add  b                                           ; $5ced: $80
	dec  b                                           ; $5cee: $05
	add  b                                           ; $5cef: $80
	ld   a, [bc]                                     ; $5cf0: $0a
	add  b                                           ; $5cf1: $80
	rlca                                             ; $5cf2: $07
	add  d                                           ; $5cf3: $82
	rrca                                             ; $5cf4: $0f
	ld   [bc], a                                     ; $5cf5: $02
	dec  bc                                          ; $5cf6: $0b
	add  hl, hl                                      ; $5cf7: $29
	ld   a, [de]                                     ; $5cf8: $1a
	add  b                                           ; $5cf9: $80
	dec  e                                           ; $5cfa: $1d
	add  b                                           ; $5cfb: $80
	ld   a, [de]                                     ; $5cfc: $1a
	add  b                                           ; $5cfd: $80
	dec  e                                           ; $5cfe: $1d
	add  b                                           ; $5cff: $80
	ld   a, [de]                                     ; $5d00: $1a
	add  b                                           ; $5d01: $80
	dec  e                                           ; $5d02: $1d
	add  b                                           ; $5d03: $80
	ld   a, [de]                                     ; $5d04: $1a
	add  b                                           ; $5d05: $80
	dec  e                                           ; $5d06: $1d
	ld   de, $ffc7                                   ; $5d07: $11 $c7 $ff
	nop                                              ; $5d0a: $00
	rst  $38                                         ; $5d0b: $ff
	nop                                              ; $5d0c: $00
	rst  $38                                         ; $5d0d: $ff
	ld   a, a                                        ; $5d0e: $7f
	rst  $38                                         ; $5d0f: $ff
	add  b                                           ; $5d10: $80
	rst  $38                                         ; $5d11: $ff
	ldh  [$3f], a                                    ; $5d12: $e0 $3f
	cpl                                              ; $5d14: $2f
	rst  $38                                         ; $5d15: $ff
	pop  af                                          ; $5d16: $f1
	ld   c, a                                        ; $5d17: $4f
	and  h                                           ; $5d18: $a4
	ld   a, [bc]                                     ; $5d19: $0a
	add  b                                           ; $5d1a: $80
	push af                                          ; $5d1b: $f5
	add  b                                           ; $5d1c: $80
	ld   [$f580], a                                  ; $5d1d: $ea $80 $f5
	add  b                                           ; $5d20: $80
	ld   [$f580], a                                  ; $5d21: $ea $80 $f5
	add  b                                           ; $5d24: $80
	ld   [$f580], a                                  ; $5d25: $ea $80 $f5
	ld   bc, $ab48                                   ; $5d28: $01 $48 $ab
	add  b                                           ; $5d2b: $80
	ld   d, a                                        ; $5d2c: $57
	add  b                                           ; $5d2d: $80
	xor  e                                           ; $5d2e: $ab
	add  b                                           ; $5d2f: $80
	ld   d, a                                        ; $5d30: $57
	add  b                                           ; $5d31: $80
	xor  e                                           ; $5d32: $ab
	add  b                                           ; $5d33: $80
	ld   d, a                                        ; $5d34: $57
	add  b                                           ; $5d35: $80
	xor  e                                           ; $5d36: $ab
	add  b                                           ; $5d37: $80
	ld   d, a                                        ; $5d38: $57
	ld   bc, $7f7c                                   ; $5d39: $01 $7c $7f
	add  b                                           ; $5d3c: $80
	cp   a                                           ; $5d3d: $bf
	add  b                                           ; $5d3e: $80
	ld   a, a                                        ; $5d3f: $7f
	add  b                                           ; $5d40: $80
	cp   a                                           ; $5d41: $bf
	add  b                                           ; $5d42: $80
	ld   a, a                                        ; $5d43: $7f
	add  b                                           ; $5d44: $80
	rst  $38                                         ; $5d45: $ff
	add  b                                           ; $5d46: $80
	ld   a, a                                        ; $5d47: $7f
	add  b                                           ; $5d48: $80
	rst  $38                                         ; $5d49: $ff
	nop                                              ; $5d4a: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d4b: $cf
	adc  l                                           ; $5d4c: $8d
	rst  $30                                         ; $5d4d: $f7
	rlca                                             ; $5d4e: $07
	jp   $95ff                                       ; $5d4f: $c3 $ff $95


	sub  e                                           ; $5d52: $93
	cp   $fd                                         ; $5d53: $fe $fd
	ld   c, e                                        ; $5d55: $4b
	ld   c, d                                        ; $5d56: $4a
	add  b                                           ; $5d57: $80
	rst  $38                                         ; $5d58: $ff
	add  b                                           ; $5d59: $80
	sub  l                                           ; $5d5a: $95
	add  b                                           ; $5d5b: $80
	rst  $38                                         ; $5d5c: $ff
	add  b                                           ; $5d5d: $80
	ld   c, c                                        ; $5d5e: $49
	ld   bc, $00f0                                   ; $5d5f: $01 $f0 $00
	add  b                                           ; $5d62: $80
	ldh  a, [$80]                                    ; $5d63: $f0 $80
	nop                                              ; $5d65: $00
	add  b                                           ; $5d66: $80
	ldh  a, [$09]                                    ; $5d67: $f0 $09
	nop                                              ; $5d69: $00
	ldh  a, [rP1]                                    ; $5d6a: $f0 $00
	ldh  a, [rP1]                                    ; $5d6c: $f0 $00
	ldh  a, [rP1]                                    ; $5d6e: $f0 $00
	ldh  a, [$8f]                                    ; $5d70: $f0 $8f
	add  b                                           ; $5d72: $80
	add  b                                           ; $5d73: $80
	rst  $38                                         ; $5d74: $ff
	add  b                                           ; $5d75: $80
	nop                                              ; $5d76: $00
	add  b                                           ; $5d77: $80
	rst  $38                                         ; $5d78: $ff
	ld   [$ff00], sp                                 ; $5d79: $08 $00 $ff
	nop                                              ; $5d7c: $00
	rst  $38                                         ; $5d7d: $ff
	add  b                                           ; $5d7e: $80
	rst  $38                                         ; $5d7f: $ff
	add  b                                           ; $5d80: $80
	rst  $38                                         ; $5d81: $ff
	ld   b, $8d                                      ; $5d82: $06 $8d
	cp   $01                                         ; $5d84: $fe $01
	dec  a                                           ; $5d86: $3d
	ld   a, [$f580]                                  ; $5d87: $fa $80 $f5
	ld   bc, $3afa                                   ; $5d8a: $01 $fa $3a
	add  b                                           ; $5d8d: $80
	dec  [hl]                                        ; $5d8e: $35
	add  b                                           ; $5d8f: $80
	ld   a, [hl-]                                    ; $5d90: $3a
	add  b                                           ; $5d91: $80
	dec  [hl]                                        ; $5d92: $35
	add  b                                           ; $5d93: $80
	dec  sp                                          ; $5d94: $3b
	add  b                                           ; $5d95: $80
	dec  [hl]                                        ; $5d96: $35
	add  b                                           ; $5d97: $80
	ld   [$7580], a                                  ; $5d98: $ea $80 $75
	add  b                                           ; $5d9b: $80
	ld   [$7580], a                                  ; $5d9c: $ea $80 $75
	add  b                                           ; $5d9f: $80
	ld   [$7d80], a                                  ; $5da0: $ea $80 $7d
	add  b                                           ; $5da3: $80
	ld   [$7d80], a                                  ; $5da4: $ea $80 $7d
	nop                                              ; $5da7: $00
	ret  nz                                          ; $5da8: $c0

	add  d                                           ; $5da9: $82
	rst  $38                                         ; $5daa: $ff
	adc  c                                           ; $5dab: $89
	push bc                                          ; $5dac: $c5
	nop                                              ; $5dad: $00
	dec  b                                           ; $5dae: $05
	add  d                                           ; $5daf: $82
	rst  $38                                         ; $5db0: $ff
	adc  c                                           ; $5db1: $89
	nop                                              ; $5db2: $00
	ld   bc, $fa3a                                   ; $5db3: $01 $3a $fa
	add  b                                           ; $5db6: $80
	push af                                          ; $5db7: $f5
	ld   bc, $3afa                                   ; $5db8: $01 $fa $3a
	add  b                                           ; $5dbb: $80
	dec  [hl]                                        ; $5dbc: $35
	add  b                                           ; $5dbd: $80
	ld   a, [hl-]                                    ; $5dbe: $3a

jr_075_5dbf:
	add  b                                           ; $5dbf: $80
	dec  [hl]                                        ; $5dc0: $35
	add  b                                           ; $5dc1: $80
	dec  sp                                          ; $5dc2: $3b
	add  b                                           ; $5dc3: $80
	dec  [hl]                                        ; $5dc4: $35
	nop                                              ; $5dc5: $00
	nop                                              ; $5dc6: $00
	add  b                                           ; $5dc7: $80
	rlca                                             ; $5dc8: $07
	add  b                                           ; $5dc9: $80
	dec  c                                           ; $5dca: $0d
	add  b                                           ; $5dcb: $80
	rrca                                             ; $5dcc: $0f
	add  b                                           ; $5dcd: $80
	dec  bc                                          ; $5dce: $0b
	add  b                                           ; $5dcf: $80
	dec  c                                           ; $5dd0: $0d
	add  d                                           ; $5dd1: $82
	nop                                              ; $5dd2: $00
	ld   [bc], a                                     ; $5dd3: $02
	rrca                                             ; $5dd4: $0f
	dec  l                                           ; $5dd5: $2d
	ld   a, [de]                                     ; $5dd6: $1a
	add  b                                           ; $5dd7: $80
	dec  e                                           ; $5dd8: $1d
	add  b                                           ; $5dd9: $80
	ld   a, [de]                                     ; $5dda: $1a
	add  b                                           ; $5ddb: $80
	dec  e                                           ; $5ddc: $1d
	add  b                                           ; $5ddd: $80
	ld   e, $80                                      ; $5dde: $1e $80
	dec  e                                           ; $5de0: $1d
	add  b                                           ; $5de1: $80
	ld   e, $02                                      ; $5de2: $1e $02
	ccf                                              ; $5de4: $3f
	rst  $38                                         ; $5de5: $ff
	or   c                                           ; $5de6: $b1
	add  c                                           ; $5de7: $81
	or   [hl]                                        ; $5de8: $b6
	add  b                                           ; $5de9: $80
	nop                                              ; $5dea: $00
	add  b                                           ; $5deb: $80
	cp   $09                                         ; $5dec: $fe $09
	ld   c, $ff                                      ; $5dee: $0e $ff
	ld   c, $ff                                      ; $5df0: $0e $ff
	ld   bc, $01ff                                   ; $5df2: $01 $ff $01
	rst  $38                                         ; $5df5: $ff
	push af                                          ; $5df6: $f5
	ld   [$f580], a                                  ; $5df7: $ea $80 $f5
	add  b                                           ; $5dfa: $80
	ld   [$f580], a                                  ; $5dfb: $ea $80 $f5
	add  b                                           ; $5dfe: $80
	ld   [$f580], a                                  ; $5dff: $ea $80 $f5
	add  b                                           ; $5e02: $80
	ld   [$f580], a                                  ; $5e03: $ea $80 $f5
	ld   bc, $ab48                                   ; $5e06: $01 $48 $ab
	add  b                                           ; $5e09: $80
	ld   d, a                                        ; $5e0a: $57
	add  b                                           ; $5e0b: $80
	xor  e                                           ; $5e0c: $ab
	add  b                                           ; $5e0d: $80
	ld   d, a                                        ; $5e0e: $57
	add  b                                           ; $5e0f: $80
	xor  a                                           ; $5e10: $af
	add  b                                           ; $5e11: $80
	ld   d, a                                        ; $5e12: $57
	add  b                                           ; $5e13: $80
	xor  a                                           ; $5e14: $af
	add  b                                           ; $5e15: $80
	ld   e, a                                        ; $5e16: $5f
	nop                                              ; $5e17: $00
	db   $fc                                         ; $5e18: $fc
	adc  l                                           ; $5e19: $8d
	rst  $38                                         ; $5e1a: $ff
	ld   bc, $6d92                                   ; $5e1b: $01 $92 $6d
	add  b                                           ; $5e1e: $80
	db   $ed                                         ; $5e1f: $ed
	add  b                                           ; $5e20: $80
	add  b                                           ; $5e21: $80
	add  b                                           ; $5e22: $80
	rst  $38                                         ; $5e23: $ff
	ld   [hScriptOpcodeParams], sp                                 ; $5e24: $08 $a0 $ff
	and  b                                           ; $5e27: $a0
	rst  $38                                         ; $5e28: $ff
	or   b                                           ; $5e29: $b0
	rst  $38                                         ; $5e2a: $ff
	or   b                                           ; $5e2b: $b0
	rst  $38                                         ; $5e2c: $ff
	rlca                                             ; $5e2d: $07
	add  b                                           ; $5e2e: $80
	rst  $38                                         ; $5e2f: $ff
	add  b                                           ; $5e30: $80
	db   $fc                                         ; $5e31: $fc
	add  b                                           ; $5e32: $80
	db   $fd                                         ; $5e33: $fd
	add  b                                           ; $5e34: $80
	rst  $38                                         ; $5e35: $ff
	add  d                                           ; $5e36: $82
	db   $fd                                         ; $5e37: $fd
	nop                                              ; $5e38: $00
	rst  $38                                         ; $5e39: $ff
	add  b                                           ; $5e3a: $80
	ld   hl, sp+$00                                  ; $5e3b: $f8 $00
	jr   c, jr_075_5dbf                              ; $5e3d: $38 $80

	rst  $38                                         ; $5e3f: $ff
	add  b                                           ; $5e40: $80
	ld   e, a                                        ; $5e41: $5f
	add  b                                           ; $5e42: $80
	rst  JumpTable                                         ; $5e43: $df
	add  b                                           ; $5e44: $80
	ld   e, a                                        ; $5e45: $5f
	add  b                                           ; $5e46: $80
	rst  JumpTable                                         ; $5e47: $df
	add  b                                           ; $5e48: $80
	ld   e, a                                        ; $5e49: $5f
	nop                                              ; $5e4a: $00
	rst  JumpTable                                         ; $5e4b: $df
	add  b                                           ; $5e4c: $80
	rra                                              ; $5e4d: $1f
	nop                                              ; $5e4e: $00
	rst  $20                                         ; $5e4f: $e7
	add  b                                           ; $5e50: $80
	rst  $38                                         ; $5e51: $ff
	add  b                                           ; $5e52: $80
	xor  e                                           ; $5e53: $ab
	add  b                                           ; $5e54: $80
	cp   e                                           ; $5e55: $bb
	add  b                                           ; $5e56: $80
	xor  e                                           ; $5e57: $ab
	add  b                                           ; $5e58: $80
	sbc  e                                           ; $5e59: $9b
	add  b                                           ; $5e5a: $80
	db   $db                                         ; $5e5b: $db
	nop                                              ; $5e5c: $00
	ei                                               ; $5e5d: $fb
	add  b                                           ; $5e5e: $80
	inc  bc                                          ; $5e5f: $03
	nop                                              ; $5e60: $00
	dec  b                                           ; $5e61: $05
	adc  l                                           ; $5e62: $8d
	cp   $03                                         ; $5e63: $fe $03
	dec  a                                           ; $5e65: $3d
	ld   a, [$35f5]                                  ; $5e66: $fa $f5 $35
	add  b                                           ; $5e69: $80
	ld   a, [hl-]                                    ; $5e6a: $3a
	add  b                                           ; $5e6b: $80
	dec  [hl]                                        ; $5e6c: $35
	add  b                                           ; $5e6d: $80
	ld   a, [hl-]                                    ; $5e6e: $3a
	add  b                                           ; $5e6f: $80
	dec  [hl]                                        ; $5e70: $35
	add  d                                           ; $5e71: $82
	ccf                                              ; $5e72: $3f
	add  b                                           ; $5e73: $80
	ld   [$7580], a                                  ; $5e74: $ea $80 $75
	add  b                                           ; $5e77: $80
	ld   [$7580], a                                  ; $5e78: $ea $80 $75
	add  b                                           ; $5e7b: $80
	ld   [$7580], a                                  ; $5e7c: $ea $80 $75
	add  d                                           ; $5e7f: $82
	rst  $38                                         ; $5e80: $ff
	nop                                              ; $5e81: $00
	ret  nz                                          ; $5e82: $c0

	add  b                                           ; $5e83: $80
	db   $fd                                         ; $5e84: $fd
	add  h                                           ; $5e85: $84
	push bc                                          ; $5e86: $c5
	add  b                                           ; $5e87: $80
	pop  bc                                          ; $5e88: $c1
	add  b                                           ; $5e89: $80
	push bc                                          ; $5e8a: $c5
	add  b                                           ; $5e8b: $80
	pop  bc                                          ; $5e8c: $c1
	ld   bc, $05c5                                   ; $5e8d: $01 $c5 $05
	add  b                                           ; $5e90: $80
	rst  $38                                         ; $5e91: $ff
	adc  e                                           ; $5e92: $8b
	nop                                              ; $5e93: $00
	inc  bc                                          ; $5e94: $03
	ld   a, [hl-]                                    ; $5e95: $3a
	ld   a, [$35f5]                                  ; $5e96: $fa $f5 $35
	add  b                                           ; $5e99: $80
	ld   a, [hl-]                                    ; $5e9a: $3a
	add  b                                           ; $5e9b: $80
	dec  [hl]                                        ; $5e9c: $35
	add  b                                           ; $5e9d: $80
	ld   a, [hl-]                                    ; $5e9e: $3a
	add  b                                           ; $5e9f: $80
	dec  [hl]                                        ; $5ea0: $35
	add  d                                           ; $5ea1: $82
	ccf                                              ; $5ea2: $3f
	ld   [bc], a                                     ; $5ea3: $02
	inc  bc                                          ; $5ea4: $03
	inc  c                                           ; $5ea5: $0c
	nop                                              ; $5ea6: $00
	add  b                                           ; $5ea7: $80
	inc  bc                                          ; $5ea8: $03
	add  c                                           ; $5ea9: $81
	rrca                                             ; $5eaa: $0f

jr_075_5eab:
	add  b                                           ; $5eab: $80
	rlca                                             ; $5eac: $07
	add  b                                           ; $5ead: $80
	ld   a, [bc]                                     ; $5eae: $0a
	add  b                                           ; $5eaf: $80
	dec  b                                           ; $5eb0: $05

jr_075_5eb1:
	add  b                                           ; $5eb1: $80
	nop                                              ; $5eb2: $00
	nop                                              ; $5eb3: $00
	rst  $38                                         ; $5eb4: $ff
	add  b                                           ; $5eb5: $80
	rlca                                             ; $5eb6: $07
	add  l                                           ; $5eb7: $85
	rst  $38                                         ; $5eb8: $ff
	rlca                                             ; $5eb9: $07
	cp   a                                           ; $5eba: $bf
	cp   h                                           ; $5ebb: $bc
	ld   e, h                                        ; $5ebc: $5c
	ld   e, b                                        ; $5ebd: $58
	xor  b                                           ; $5ebe: $a8
	and  b                                           ; $5ebf: $a0
	and  l                                           ; $5ec0: $a5
	xor  d                                           ; $5ec1: $aa
	add  b                                           ; $5ec2: $80
	push de                                          ; $5ec3: $d5
	add  b                                           ; $5ec4: $80
	ld   [$f580], a                                  ; $5ec5: $ea $80 $f5
	add  b                                           ; $5ec8: $80
	cp   $81                                         ; $5ec9: $fe $81
	rst  $38                                         ; $5ecb: $ff
	add  b                                           ; $5ecc: $80
	ccf                                              ; $5ecd: $3f
	nop                                              ; $5ece: $00
	rra                                              ; $5ecf: $1f
	add  b                                           ; $5ed0: $80
	ld   [$f580], a                                  ; $5ed1: $ea $80 $f5
	add  b                                           ; $5ed4: $80
	ld   [$f580], a                                  ; $5ed5: $ea $80 $f5
	add  b                                           ; $5ed8: $80
	db   $eb                                         ; $5ed9: $eb
	add  h                                           ; $5eda: $84
	rst  $38                                         ; $5edb: $ff
	ld   bc, $bf5c                                   ; $5edc: $01 $5c $bf
	add  b                                           ; $5edf: $80
	ld   a, a                                        ; $5ee0: $7f
	adc  c                                           ; $5ee1: $89
	rst  $38                                         ; $5ee2: $ff
	ld   bc, $f30f                                   ; $5ee3: $01 $0f $f3
	add  c                                           ; $5ee6: $81
	ldh  a, [$80]                                    ; $5ee7: $f0 $80
	nop                                              ; $5ee9: $00
	adc  b                                           ; $5eea: $88
	and  b                                           ; $5eeb: $a0
	ld   [$0f40], sp                                 ; $5eec: $08 $40 $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5eef: $cf
	xor  a                                           ; $5ef0: $af
	ldh  [hScriptOpcodeParams], a                                    ; $5ef1: $e0 $a0
	ld   [$eaaa], a                                  ; $5ef3: $ea $aa $ea
	add  c                                           ; $5ef6: $81
	xor  d                                           ; $5ef7: $aa
	ld   bc, $8aea                                   ; $5ef8: $01 $ea $8a
	add  b                                           ; $5efb: $80
	xor  d                                           ; $5efc: $aa
	nop                                              ; $5efd: $00
	cp   $87                                         ; $5efe: $fe $87
	ld   b, $00                                      ; $5f00: $06 $00
	ld   c, $81                                      ; $5f02: $0e $81
	or   $80                                         ; $5f04: $f6 $80
	ld   b, $00                                      ; $5f06: $06 $00
	rst  $38                                         ; $5f08: $ff
	adc  b                                           ; $5f09: $88
	nop                                              ; $5f0a: $00
	add  c                                           ; $5f0b: $81
	rst  $38                                         ; $5f0c: $ff
	add  b                                           ; $5f0d: $80
	nop                                              ; $5f0e: $00
	nop                                              ; $5f0f: $00
	rst  $38                                         ; $5f10: $ff
	add  d                                           ; $5f11: $82
	nop                                              ; $5f12: $00
	add  b                                           ; $5f13: $80
	db   $10                                         ; $5f14: $10
	add  b                                           ; $5f15: $80
	jr   nz, @-$7e                                   ; $5f16: $20 $80

	ld   b, b                                        ; $5f18: $40
	add  b                                           ; $5f19: $80
	add  b                                           ; $5f1a: $80
	add  c                                           ; $5f1b: $81
	nop                                              ; $5f1c: $00
	nop                                              ; $5f1d: $00
	ld   sp, hl                                      ; $5f1e: $f9
	adc  l                                           ; $5f1f: $8d
	cp   $00                                         ; $5f20: $fe $00
	rlca                                             ; $5f22: $07
	add  c                                           ; $5f23: $81
	nop                                              ; $5f24: $00
	ld   [bc], a                                     ; $5f25: $02
	rlca                                             ; $5f26: $07
	nop                                              ; $5f27: $00
	jr   jr_075_5eab                                 ; $5f28: $18 $81

	nop                                              ; $5f2a: $00
	nop                                              ; $5f2b: $00
	jr   nz, jr_075_5eb1                             ; $5f2c: $20 $83

	nop                                              ; $5f2e: $00
	nop                                              ; $5f2f: $00
	ccf                                              ; $5f30: $3f
	add  c                                           ; $5f31: $81
	nop                                              ; $5f32: $00
	inc  b                                           ; $5f33: $04
	add  b                                           ; $5f34: $80
	nop                                              ; $5f35: $00
	ld   h, b                                        ; $5f36: $60
	nop                                              ; $5f37: $00
	db   $10                                         ; $5f38: $10
	add  c                                           ; $5f39: $81
	nop                                              ; $5f3a: $00
	nop                                              ; $5f3b: $00
	ld   [$0080], sp                                 ; $5f3c: $08 $80 $00
	ld   bc, $f008                                   ; $5f3f: $01 $08 $f0
	adc  b                                           ; $5f42: $88
	nop                                              ; $5f43: $00
	add  b                                           ; $5f44: $80
	rlca                                             ; $5f45: $07
	add  b                                           ; $5f46: $80
	rrca                                             ; $5f47: $0f
	add  b                                           ; $5f48: $80
	jr   @-$76                                       ; $5f49: $18 $88

	nop                                              ; $5f4b: $00
	nop                                              ; $5f4c: $00
	add  b                                           ; $5f4d: $80
	add  b                                           ; $5f4e: $80
	nop                                              ; $5f4f: $00
	ld   [bc], a                                     ; $5f50: $02
	ret  nz                                          ; $5f51: $c0

	add  b                                           ; $5f52: $80
	ret  nz                                          ; $5f53: $c0

	adc  b                                           ; $5f54: $88
	jr   @-$7e                                       ; $5f55: $18 $80

	db   $10                                         ; $5f57: $10
	add  b                                           ; $5f58: $80
	ld   [$1080], sp                                 ; $5f59: $08 $80 $10
	adc  h                                           ; $5f5c: $8c
	nop                                              ; $5f5d: $00
	ld   bc, $1e01                                   ; $5f5e: $01 $01 $1e
	add  e                                           ; $5f61: $83
	nop                                              ; $5f62: $00
	nop                                              ; $5f63: $00
	db   $10                                         ; $5f64: $10
	add  c                                           ; $5f65: $81
	nop                                              ; $5f66: $00

jr_075_5f67:
	ld   b, $0f                                      ; $5f67: $06 $0f
	ccf                                              ; $5f69: $3f
	nop                                              ; $5f6a: $00
	ld   b, b                                        ; $5f6b: $40
	ld   e, a                                        ; $5f6c: $5f
	rst  JumpTable                                         ; $5f6d: $df
	nop                                              ; $5f6e: $00
	add  b                                           ; $5f6f: $80
	rra                                              ; $5f70: $1f
	add  c                                           ; $5f71: $81
	ccf                                              ; $5f72: $3f
	add  b                                           ; $5f73: $80
	rra                                              ; $5f74: $1f
	ld   [$2fef], sp                                 ; $5f75: $08 $ef $2f
	rla                                              ; $5f78: $17
	rst  $10                                         ; $5f79: $d7
	ld   l, d                                        ; $5f7a: $6a
	ld   a, [hl+]                                    ; $5f7b: $2a

jr_075_5f7c:
	dec  d                                           ; $5f7c: $15
	push de                                          ; $5f7d: $d5
	ld   e, a                                        ; $5f7e: $5f
	add  b                                           ; $5f7f: $80
	cp   $84                                         ; $5f80: $fe $84
	db   $fc                                         ; $5f82: $fc
	add  h                                           ; $5f83: $84
	cp   $01                                         ; $5f84: $fe $01
	rst  $38                                         ; $5f86: $ff
	inc  e                                           ; $5f87: $1c
	add  c                                           ; $5f88: $81
	rlca                                             ; $5f89: $07
	ld   [bc], a                                     ; $5f8a: $02
	ld   b, a                                        ; $5f8b: $47
	rlca                                             ; $5f8c: $07
	or   a                                           ; $5f8d: $b7
	add  b                                           ; $5f8e: $80
	rlca                                             ; $5f8f: $07
	add  b                                           ; $5f90: $80
	and  a                                           ; $5f91: $a7
	dec  b                                           ; $5f92: $05
	rlca                                             ; $5f93: $07
	rla                                              ; $5f94: $17
	add  a                                           ; $5f95: $87
	rra                                              ; $5f96: $1f
	rst  JumpTable                                         ; $5f97: $df
	and  h                                           ; $5f98: $a4
	adc  c                                           ; $5f99: $89
	rst  $38                                         ; $5f9a: $ff
	inc  b                                           ; $5f9b: $04
	ld   hl, sp-$01                                  ; $5f9c: $f8 $ff
	rlca                                             ; $5f9e: $07
	rst  $38                                         ; $5f9f: $ff
	jr   nc, @-$77                                   ; $5fa0: $30 $87

	rst  $30                                         ; $5fa2: $f7
	inc  bc                                          ; $5fa3: $03
	ldh  a, [$f7]                                    ; $5fa4: $f0 $f7
	scf                                              ; $5fa6: $37
	rst  $30                                         ; $5fa7: $f7
	add  b                                           ; $5fa8: $80
	ldh  a, [rP1]                                    ; $5fa9: $f0 $00
	nop                                              ; $5fab: $00
	add  a                                           ; $5fac: $87
	rst  $38                                         ; $5fad: $ff
	nop                                              ; $5fae: $00
	nop                                              ; $5faf: $00
	add  c                                           ; $5fb0: $81
	rst  $38                                         ; $5fb1: $ff
	add  b                                           ; $5fb2: $80
	nop                                              ; $5fb3: $00
	nop                                              ; $5fb4: $00
	ld   a, $8d                                      ; $5fb5: $3e $8d
	add  $01                                         ; $5fb7: $c6 $01
	db   $ed                                         ; $5fb9: $ed
	ld   [$7580], a                                  ; $5fba: $ea $80 $75
	add  b                                           ; $5fbd: $80
	ld   [$7580], a                                  ; $5fbe: $ea $80 $75
	add  b                                           ; $5fc1: $80
	ld   [$7580], a                                  ; $5fc2: $ea $80 $75
	add  d                                           ; $5fc5: $82
	rst  $38                                         ; $5fc6: $ff
	nop                                              ; $5fc7: $00
	ld   sp, hl                                      ; $5fc8: $f9
	add  a                                           ; $5fc9: $87
	cp   $00                                         ; $5fca: $fe $00
	rlca                                             ; $5fcc: $07
	add  c                                           ; $5fcd: $81
	rst  $38                                         ; $5fce: $ff
	add  b                                           ; $5fcf: $80
	nop                                              ; $5fd0: $00
	nop                                              ; $5fd1: $00
	ret  nz                                          ; $5fd2: $c0

	add  l                                           ; $5fd3: $85
	nop                                              ; $5fd4: $00
	add  b                                           ; $5fd5: $80
	jr   nz, jr_075_5fd8                             ; $5fd6: $20 $00

jr_075_5fd8:
	cpl                                              ; $5fd8: $2f
	add  b                                           ; $5fd9: $80
	ldh  [rP1], a                                    ; $5fda: $e0 $00
	rst  $38                                         ; $5fdc: $ff
	add  b                                           ; $5fdd: $80
	rra                                              ; $5fde: $1f
	dec  b                                           ; $5fdf: $05
	rla                                              ; $5fe0: $17
	ld   [$0818], sp                                 ; $5fe1: $08 $18 $08
	db   $10                                         ; $5fe4: $10
	jr   c, jr_075_5f67                              ; $5fe5: $38 $80

	jr   jr_075_5ff2                                 ; $5fe7: $18 $09

	nop                                              ; $5fe9: $00
	jr   jr_075_5f7c                                 ; $5fea: $18 $90

	rra                                              ; $5fec: $1f
	ld   e, a                                        ; $5fed: $5f
	rst  JumpTable                                         ; $5fee: $df
	ret  nz                                          ; $5fef: $c0

	ldh  [rIE], a                                    ; $5ff0: $e0 $ff

jr_075_5ff2:
	ccf                                              ; $5ff2: $3f
	add  b                                           ; $5ff3: $80
	ld   a, [hl-]                                    ; $5ff4: $3a
	add  b                                           ; $5ff5: $80
	inc  [hl]                                        ; $5ff6: $34
	ld   bc, $123f                                   ; $5ff7: $01 $3f $12
	add  b                                           ; $5ffa: $80
	jr   nz, jr_075_6003                             ; $5ffb: $20 $06

	ld   [hl+], a                                    ; $5ffd: $22
	ldh  a, [$d9]                                    ; $5ffe: $f0 $d9
	ret                                              ; $6000: $c9


	ld   a, [de]                                     ; $6001: $1a
	rlca                                             ; $6002: $07

jr_075_6003:
	adc  l                                           ; $6003: $8d
	add  c                                           ; $6004: $81
	add  b                                           ; $6005: $80
	add  d                                           ; $6006: $82
	nop                                              ; $6007: $00
	add  b                                           ; $6008: $80
	ret  nz                                          ; $6009: $c0

	ld   bc, $bf80                                   ; $600a: $01 $80 $bf
	add  b                                           ; $600d: $80
	ccf                                              ; $600e: $3f
	add  b                                           ; $600f: $80
	add  b                                           ; $6010: $80
	nop                                              ; $6011: $00
	rst  $38                                         ; $6012: $ff
	adc  b                                           ; $6013: $88
	nop                                              ; $6014: $00
	add  c                                           ; $6015: $81
	rst  $38                                         ; $6016: $ff
	add  b                                           ; $6017: $80
	nop                                              ; $6018: $00
	nop                                              ; $6019: $00
	rst  $38                                         ; $601a: $ff
	add  b                                           ; $601b: $80
	inc  bc                                          ; $601c: $03
	add  c                                           ; $601d: $81
	rlca                                             ; $601e: $07
	add  b                                           ; $601f: $80
	rla                                              ; $6020: $17
	nop                                              ; $6021: $00
	rlca                                             ; $6022: $07
	add  c                                           ; $6023: $81
	rrca                                             ; $6024: $0f
	add  d                                           ; $6025: $82
	ld   c, $01                                      ; $6026: $0e $01
	cpl                                              ; $6028: $2f
	rst  JumpTable                                         ; $6029: $df
	add  b                                           ; $602a: $80
	cp   a                                           ; $602b: $bf
	add  d                                           ; $602c: $82
	ld   a, a                                        ; $602d: $7f
	add  b                                           ; $602e: $80
	ld   a, d                                        ; $602f: $7a
	add  b                                           ; $6030: $80
	ld   d, h                                        ; $6031: $54
	add  b                                           ; $6032: $80
	xor  b                                           ; $6033: $a8
	dec  b                                           ; $6034: $05
	ld   e, h                                        ; $6035: $5c
	ld   d, b                                        ; $6036: $50
	db   $d3                                         ; $6037: $d3
	ret  nz                                          ; $6038: $c0

	ldh  a, [$ef]                                    ; $6039: $f0 $ef
	add  b                                           ; $603b: $80
	rst  $10                                         ; $603c: $d7
	add  b                                           ; $603d: $80
	jr   c, @-$7a                                    ; $603e: $38 $84

	ld   a, [hl-]                                    ; $6040: $3a
	add  b                                           ; $6041: $80
	inc  e                                           ; $6042: $1c
	rlca                                             ; $6043: $07
	pop  hl                                          ; $6044: $e1
	rst  $38                                         ; $6045: $ff
	pop  hl                                          ; $6046: $e1
	rst  $38                                         ; $6047: $ff
	db   $fd                                         ; $6048: $fd
	rst  $38                                         ; $6049: $ff
	nop                                              ; $604a: $00
	rlca                                             ; $604b: $07
	add  d                                           ; $604c: $82
	db   $ed                                         ; $604d: $ed
	dec  d                                           ; $604e: $15
	push hl                                          ; $604f: $e5
	db   $ec                                         ; $6050: $ec
	rst  $28                                         ; $6051: $ef
	add  sp, -$0c                                    ; $6052: $e8 $f4
	ld   h, a                                        ; $6054: $67
	dec  h                                           ; $6055: $25
	rrca                                             ; $6056: $0f
	ld   c, d                                        ; $6057: $4a
	ld   c, l                                        ; $6058: $4d
	rlca                                             ; $6059: $07
	ld   sp, hl                                      ; $605a: $f9
	ld   c, c                                        ; $605b: $49
	ld   sp, hl                                      ; $605c: $f9
	rst  $38                                         ; $605d: $ff
	di                                               ; $605e: $f3
	rst  $20                                         ; $605f: $e7
	rst  $30                                         ; $6060: $f7
	rra                                              ; $6061: $1f
	or   $fe                                         ; $6062: $f6 $fe
	ldh  a, [$80]                                    ; $6064: $f0 $80
	dec  bc                                          ; $6066: $0b
	dec  c                                           ; $6067: $0d
	cp   c                                           ; $6068: $b9
	cp   l                                           ; $6069: $bd
	cp   b                                           ; $606a: $b8
	cp   a                                           ; $606b: $bf
	or   [hl]                                        ; $606c: $b6
	xor  l                                           ; $606d: $ad
	or   h                                           ; $606e: $b4
	ld   d, h                                        ; $606f: $54
	xor  l                                           ; $6070: $ad
	xor  h                                           ; $6071: $ac
	ld   d, l                                        ; $6072: $55
	push de                                          ; $6073: $d5
	ld   c, [hl]                                     ; $6074: $4e
	scf                                              ; $6075: $37
	add  b                                           ; $6076: $80
	or   a                                           ; $6077: $b7
	dec  b                                           ; $6078: $05
	or   e                                           ; $6079: $b3
	cp   e                                           ; $607a: $bb
	inc  bc                                          ; $607b: $03
	ei                                               ; $607c: $fb
	add  hl, bc                                      ; $607d: $09
	ld   a, [$8980]                                  ; $607e: $fa $80 $89
	ld   bc, $aa9a                                   ; $6081: $01 $9a $aa
	add  b                                           ; $6084: $80
	sbc  c                                           ; $6085: $99
	inc  b                                           ; $6086: $04
	rrca                                             ; $6087: $0f
	cp   [hl]                                        ; $6088: $be
	add  d                                           ; $6089: $82
	cp   $82                                         ; $608a: $fe $82
	add  c                                           ; $608c: $81
	cp   $01                                         ; $608d: $fe $01
	rst  $10                                         ; $608f: $d7
	xor  d                                           ; $6090: $aa
	add  b                                           ; $6091: $80
	ld   d, l                                        ; $6092: $55
	add  b                                           ; $6093: $80
	xor  d                                           ; $6094: $aa
	ld   [bc], a                                     ; $6095: $02
	ld   d, h                                        ; $6096: $54
	ld   d, a                                        ; $6097: $57
	inc  de                                          ; $6098: $13
	add  l                                           ; $6099: $85
	rst  $28                                         ; $609a: $ef
	ld   [$aa55], sp                                 ; $609b: $08 $55 $aa
	ld   d, h                                        ; $609e: $54
	ld   d, a                                        ; $609f: $57
	add  c                                           ; $60a0: $81
	cp   a                                           ; $60a1: $bf
	dec  [hl]                                        ; $60a2: $35
	rst  $38                                         ; $60a3: $ff
	ld   [hl], e                                     ; $60a4: $73
	add  l                                           ; $60a5: $85
	ld   a, e                                        ; $60a6: $7b
	ld   [de], a                                     ; $60a7: $12
	cp   e                                           ; $60a8: $bb
	ei                                               ; $60a9: $fb
	dec  sp                                          ; $60aa: $3b
	ei                                               ; $60ab: $fb
	dec  sp                                          ; $60ac: $3b
	ei                                               ; $60ad: $fb
	ld   a, [hl-]                                    ; $60ae: $3a
	ei                                               ; $60af: $fb
	ld   e, a                                        ; $60b0: $5f
	sbc  $dc                                         ; $60b1: $de $dc
	rst  JumpTable                                         ; $60b3: $df
	ret  nc                                          ; $60b4: $d0

	rst  JumpTable                                         ; $60b5: $df
	jp   $8fdf                                       ; $60b6: $c3 $df $8f


	rst  $38                                         ; $60b9: $ff
	rra                                              ; $60ba: $1f
	add  c                                           ; $60bb: $81
	rst  $38                                         ; $60bc: $ff
	inc  b                                           ; $60bd: $04
	ccf                                              ; $60be: $3f
	cp   a                                           ; $60bf: $bf
	nop                                              ; $60c0: $00
	ldh  [rAUD3LEN], a                               ; $60c1: $e0 $1b
	add  e                                           ; $60c3: $83
	ei                                               ; $60c4: $fb
	add  [hl]                                        ; $60c5: $86
	rst  $30                                         ; $60c6: $f7
	add  b                                           ; $60c7: $80
	inc  bc                                          ; $60c8: $03
	add  b                                           ; $60c9: $80
	ld   hl, sp-$76                                  ; $60ca: $f8 $8a
	rst  $38                                         ; $60cc: $ff
	add  hl, bc                                      ; $60cd: $09
	ld   a, [hl]                                     ; $60ce: $7e
	ld   c, b                                        ; $60cf: $48
	dec  bc                                          ; $60d0: $0b
	add  hl, hl                                      ; $60d1: $29
	ld   l, a                                        ; $60d2: $6f
	dec  hl                                          ; $60d3: $2b
	adc  [hl]                                        ; $60d4: $8e
	adc  $fc                                         ; $60d5: $ce $fc
	db   $ed                                         ; $60d7: $ed
	add  c                                           ; $60d8: $81
	ei                                               ; $60d9: $fb
	inc  bc                                          ; $60da: $03
	rst  $38                                         ; $60db: $ff
	db   $e3                                         ; $60dc: $e3
	rst  $20                                         ; $60dd: $e7
	or   a                                           ; $60de: $b7
	add  b                                           ; $60df: $80
	or   [hl]                                        ; $60e0: $b6
	ld   [bc], a                                     ; $60e1: $02
	or   $66                                         ; $60e2: $f6 $66
	halt                                             ; $60e4: $76
	add  b                                           ; $60e5: $80
	cp   $08                                         ; $60e6: $fe $08
	ld   sp, hl                                      ; $60e8: $f9
	db   $fd                                         ; $60e9: $fd
	pop  af                                          ; $60ea: $f1
	db   $f4                                         ; $60eb: $f4
	pop  af                                          ; $60ec: $f1
	push af                                          ; $60ed: $f5
	db   $fc                                         ; $60ee: $fc
	db   $ec                                         ; $60ef: $ec
	sbc  [hl]                                        ; $60f0: $9e
	add  a                                           ; $60f1: $87
	db   $db                                         ; $60f2: $db
	dec  b                                           ; $60f3: $05
	ld   d, a                                        ; $60f4: $57
	xor  e                                           ; $60f5: $ab
	ld   d, a                                        ; $60f6: $57
	ld   d, l                                        ; $60f7: $55
	xor  e                                           ; $60f8: $ab
	xor  d                                           ; $60f9: $aa
	add  b                                           ; $60fa: $80
	rrca                                             ; $60fb: $0f
	nop                                              ; $60fc: $00
	nop                                              ; $60fd: $00
	add  c                                           ; $60fe: $81
	rrca                                             ; $60ff: $0f
	add  b                                           ; $6100: $80
	nop                                              ; $6101: $00
	add  b                                           ; $6102: $80
	ld   b, $80                                      ; $6103: $06 $80
	ld   a, [bc]                                     ; $6105: $0a
	add  d                                           ; $6106: $82
	ld   [bc], a                                     ; $6107: $02
	add  b                                           ; $6108: $80
	ld   hl, sp+$00                                  ; $6109: $f8 $00
	ld   [$f881], sp                                 ; $610b: $08 $81 $f8
	add  b                                           ; $610e: $80
	ld   [$5880], sp                                 ; $610f: $08 $80 $58
	add  b                                           ; $6112: $80
	xor  b                                           ; $6113: $a8
	add  d                                           ; $6114: $82
	ld   [$0e80], sp                                 ; $6115: $08 $80 $0e
	add  b                                           ; $6118: $80
	rrca                                             ; $6119: $0f
	add  b                                           ; $611a: $80
	rlca                                             ; $611b: $07
	nop                                              ; $611c: $00
	ld   bc, $2180                                   ; $611d: $01 $80 $21
	ld   [bc], a                                     ; $6120: $02
	ld   a, c                                        ; $6121: $79
	ld   a, b                                        ; $6122: $78
	ld   a, a                                        ; $6123: $7f
	add  b                                           ; $6124: $80
	xor  d                                           ; $6125: $aa
	dec  bc                                          ; $6126: $0b
	ld   a, a                                        ; $6127: $7f
	nop                                              ; $6128: $00
	ldh  [c], a                                      ; $6129: $e2
	db   $ec                                         ; $612a: $ec
	ld   l, [hl]                                     ; $612b: $6e
	ld   h, h                                        ; $612c: $64
	pop  de                                          ; $612d: $d1
	xor  e                                           ; $612e: $ab
	call nc, $2ad5                                   ; $612f: $d4 $d5 $2a
	xor  d                                           ; $6132: $aa
	add  b                                           ; $6133: $80
	ld   d, l                                        ; $6134: $55
	add  b                                           ; $6135: $80
	xor  d                                           ; $6136: $aa
	dec  bc                                          ; $6137: $0b
	nop                                              ; $6138: $00
	rst  $38                                         ; $6139: $ff
	ld   e, $00                                      ; $613a: $1e $00
	rlca                                             ; $613c: $07
	ld   bc, $02d9                                   ; $613d: $01 $d9 $02
	add  hl, hl                                      ; $6140: $29
	push af                                          ; $6141: $f5
	ld   c, d                                        ; $6142: $4a
	xor  d                                           ; $6143: $aa
	add  b                                           ; $6144: $80
	ld   d, c                                        ; $6145: $51
	inc  b                                           ; $6146: $04
	nop                                              ; $6147: $00
	rrca                                             ; $6148: $0f
	dec  b                                           ; $6149: $05
	rst  $38                                         ; $614a: $ff
	rst  $30                                         ; $614b: $f7
	add  c                                           ; $614c: $81
	db   $fd                                         ; $614d: $fd
	ld   c, e                                        ; $614e: $4b
	ld   d, l                                        ; $614f: $55
	xor  d                                           ; $6150: $aa
	ld   d, h                                        ; $6151: $54
	ld   d, l                                        ; $6152: $55
	and  e                                           ; $6153: $a3
	xor  a                                           ; $6154: $af
	dec  b                                           ; $6155: $05
	rst  $38                                         ; $6156: $ff
	ld   d, l                                        ; $6157: $55
	rst  $38                                         ; $6158: $ff
	ld   d, h                                        ; $6159: $54
	rst  $38                                         ; $615a: $ff
	or   d                                           ; $615b: $b2
	cp   e                                           ; $615c: $bb
	cp   c                                           ; $615d: $b9
	cp   e                                           ; $615e: $bb
	cp   c                                           ; $615f: $b9
	ld   a, e                                        ; $6160: $7b
	cp   c                                           ; $6161: $b9
	ei                                               ; $6162: $fb
	ld   a, c                                        ; $6163: $79
	ei                                               ; $6164: $fb
	ld   a, c                                        ; $6165: $79
	ei                                               ; $6166: $fb
	add  hl, sp                                      ; $6167: $39
	ei                                               ; $6168: $fb
	cp   a                                           ; $6169: $bf
	rst  $38                                         ; $616a: $ff
	db   $fd                                         ; $616b: $fd
	rst  $38                                         ; $616c: $ff
	ld   d, a                                        ; $616d: $57
	rst  $38                                         ; $616e: $ff
	ld   d, a                                        ; $616f: $57
	rst  $38                                         ; $6170: $ff
	ld   [hl], a                                     ; $6171: $77
	rst  $38                                         ; $6172: $ff
	ld   [hl], a                                     ; $6173: $77
	rst  $38                                         ; $6174: $ff
	halt                                             ; $6175: $76
	rst  $38                                         ; $6176: $ff
	halt                                             ; $6177: $76
	rst  $38                                         ; $6178: $ff
	halt                                             ; $6179: $76
	rst  $38                                         ; $617a: $ff
	sub  $ff                                         ; $617b: $d6 $ff
	push de                                          ; $617d: $d5
	rst  $38                                         ; $617e: $ff
	ld   d, l                                        ; $617f: $55
	rst  $38                                         ; $6180: $ff
	ld   d, l                                        ; $6181: $55
	rst  $38                                         ; $6182: $ff
	ld   d, l                                        ; $6183: $55
	rst  $38                                         ; $6184: $ff
	ld   d, h                                        ; $6185: $54
	cp   $54                                         ; $6186: $fe $54
	db   $fd                                         ; $6188: $fd
	ld   d, c                                        ; $6189: $51
	pop  af                                          ; $618a: $f1
	ld   e, e                                        ; $618b: $5b
	ei                                               ; $618c: $fb
	ld   e, b                                        ; $618d: $58
	ei                                               ; $618e: $fb
	ld   b, e                                        ; $618f: $43
	db   $e3                                         ; $6190: $e3
	ld   e, l                                        ; $6191: $5d
	rst  $38                                         ; $6192: $ff
	pop  de                                          ; $6193: $d1
	rst  $38                                         ; $6194: $ff
	ld   d, c                                        ; $6195: $51
	rst  $38                                         ; $6196: $ff
	rst  ToBoot                                         ; $6197: $c7
	rst  $38                                         ; $6198: $ff
	dec  h                                           ; $6199: $25
	dec  e                                           ; $619a: $1d
	add  b                                           ; $619b: $80
	add  a                                           ; $619c: $87
	dec  b                                           ; $619d: $05
	add  e                                           ; $619e: $83
	cp   e                                           ; $619f: $bb
	xor  b                                           ; $61a0: $a8
	or   a                                           ; $61a1: $b7
	sub  b                                           ; $61a2: $90
	or   a                                           ; $61a3: $b7
	add  h                                           ; $61a4: $84
	rst  $30                                         ; $61a5: $f7
	add  b                                           ; $61a6: $80
	or   a                                           ; $61a7: $b7
	add  d                                           ; $61a8: $82
	rst  $30                                         ; $61a9: $f7
	ld   [bc], a                                     ; $61aa: $02
	nop                                              ; $61ab: $00
	rst  $38                                         ; $61ac: $ff
	nop                                              ; $61ad: $00
	adc  c                                           ; $61ae: $89
	rst  $38                                         ; $61af: $ff
	inc  b                                           ; $61b0: $04
	cp   $ff                                         ; $61b1: $fe $ff
	ld   bc, $00ff                                   ; $61b3: $01 $ff $00
	add  a                                           ; $61b6: $87
	rst  $38                                         ; $61b7: $ff
	rlca                                             ; $61b8: $07
	sub  $d7                                         ; $61b9: $d6 $d7
	ld   h, $e7                                      ; $61bb: $26 $e7
	ld   b, a                                        ; $61bd: $47
	add  [hl]                                        ; $61be: $86
	adc  d                                           ; $61bf: $8a
	adc  e                                           ; $61c0: $8b
	add  b                                           ; $61c1: $80
	sub  e                                           ; $61c2: $93
	add  b                                           ; $61c3: $80
	add  [hl]                                        ; $61c4: $86
	add  b                                           ; $61c5: $80
	adc  l                                           ; $61c6: $8d
	add  b                                           ; $61c7: $80
	add  d                                           ; $61c8: $82
	ld   [$4e42], sp                                 ; $61c9: $08 $42 $4e
	ld   [$eaee], a                                  ; $61cc: $ea $ee $ea
	ld   a, [bc]                                     ; $61cf: $0a
	ld   [$d21a], a                                  ; $61d0: $ea $1a $d2
	add  c                                           ; $61d3: $81
	ld   a, [de]                                     ; $61d4: $1a
	ld   bc, $3aea                                   ; $61d5: $01 $ea $3a
	add  b                                           ; $61d8: $80
	cp   d                                           ; $61d9: $ba
	add  b                                           ; $61da: $80
	rst  $38                                         ; $61db: $ff
	ld   a, [bc]                                     ; $61dc: $0a
	xor  d                                           ; $61dd: $aa
	rst  $38                                         ; $61de: $ff
	xor  d                                           ; $61df: $aa
	rst  $38                                         ; $61e0: $ff
	xor  d                                           ; $61e1: $aa
	rst  $38                                         ; $61e2: $ff
	xor  d                                           ; $61e3: $aa
	rst  $38                                         ; $61e4: $ff
	cp   d                                           ; $61e5: $ba
	rst  $38                                         ; $61e6: $ff
	cp   d                                           ; $61e7: $ba
	add  c                                           ; $61e8: $81
	rst  $38                                         ; $61e9: $ff
	rst  JumpTable                                         ; $61ea: $df
	ld   bc, $0087                                   ; $61eb: $01 $87 $00
	add  [hl]                                        ; $61ee: $86
	rrca                                             ; $61ef: $0f
	add  [hl]                                        ; $61f0: $86
	nop                                              ; $61f1: $00
	add  l                                           ; $61f2: $85
	rst  $38                                         ; $61f3: $ff
	add  b                                           ; $61f4: $80
	rlca                                             ; $61f5: $07
	add  b                                           ; $61f6: $80
	ld   h, c                                        ; $61f7: $61
	add  b                                           ; $61f8: $80
	ld   b, b                                        ; $61f9: $40
	add  b                                           ; $61fa: $80
	add  b                                           ; $61fb: $80
	add  b                                           ; $61fc: $80
	ld   [de], a                                     ; $61fd: $12
	add  d                                           ; $61fe: $82
	ld   a, a                                        ; $61ff: $7f
	add  c                                           ; $6200: $81
	rst  $38                                         ; $6201: $ff
	add  [hl]                                        ; $6202: $86
	nop                                              ; $6203: $00
	inc  bc                                          ; $6204: $03
	rst  $38                                         ; $6205: $ff
	ld   [$eaff], a                                  ; $6206: $ea $ff $ea
	add  d                                           ; $6209: $82
	rst  $38                                         ; $620a: $ff
	add  [hl]                                        ; $620b: $86
	nop                                              ; $620c: $00
	rlca                                             ; $620d: $07
	rst  $38                                         ; $620e: $ff
	xor  d                                           ; $620f: $aa
	rst  $38                                         ; $6210: $ff
	xor  d                                           ; $6211: $aa
	rst  $38                                         ; $6212: $ff
	ld   [$eaff], a                                  ; $6213: $ea $ff $ea
	add  l                                           ; $6216: $85
	nop                                              ; $6217: $00
	ld   [$ffaa], sp                                 ; $6218: $08 $aa $ff
	nop                                              ; $621b: $00
	rst  $38                                         ; $621c: $ff
	nop                                              ; $621d: $00
	rst  $38                                         ; $621e: $ff
	nop                                              ; $621f: $00
	rst  $38                                         ; $6220: $ff
	xor  d                                           ; $6221: $aa
	add  l                                           ; $6222: $85
	nop                                              ; $6223: $00
	ld   [$bfb8], sp                                 ; $6224: $08 $b8 $bf
	ld   c, e                                        ; $6227: $4b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6228: $cf
	dec  h                                           ; $6229: $25
	rst  $30                                         ; $622a: $f7
	ld   [bc], a                                     ; $622b: $02
	ei                                               ; $622c: $fb
	xor  b                                           ; $622d: $a8
	add  [hl]                                        ; $622e: $86
	nop                                              ; $622f: $00
	nop                                              ; $6230: $00
	rst  $38                                         ; $6231: $ff
	add  b                                           ; $6232: $80
	nop                                              ; $6233: $00
	inc  b                                           ; $6234: $04
	sbc  a                                           ; $6235: $9f
	rst  $38                                         ; $6236: $ff
	xor  b                                           ; $6237: $a8
	rst  $38                                         ; $6238: $ff
	ret  z                                           ; $6239: $c8

	add  l                                           ; $623a: $85
	nop                                              ; $623b: $00
	ld   [$ff20], sp                                 ; $623c: $08 $20 $ff
	nop                                              ; $623f: $00
	ccf                                              ; $6240: $3f
	nop                                              ; $6241: $00
	ld   e, $0e                                      ; $6242: $1e $0e
	cp   $0e                                         ; $6244: $fe $0e
	add  l                                           ; $6246: $85
	nop                                              ; $6247: $00
	inc  b                                           ; $6248: $04
	ld   [hl], b                                     ; $6249: $70
	db   $fc                                         ; $624a: $fc
	add  b                                           ; $624b: $80
	inc  c                                           ; $624c: $0c
	ld   h, b                                        ; $624d: $60
	add  b                                           ; $624e: $80
	ld   h, [hl]                                     ; $624f: $66
	ld   bc, $0363                                   ; $6250: $01 $63 $03
	add  l                                           ; $6253: $85
	nop                                              ; $6254: $00
	ld   [$cfc2], sp                                 ; $6255: $08 $c2 $cf
	inc  bc                                          ; $6258: $03
	rrca                                             ; $6259: $0f
	ld   [bc], a                                     ; $625a: $02
	ld   e, $09                                      ; $625b: $1e $09
	db   $fd                                         ; $625d: $fd

jr_075_625e:
	jp   hl                                          ; $625e: $e9


	add  l                                           ; $625f: $85
	nop                                              ; $6260: $00
	ld   [$f921], sp                                 ; $6261: $08 $21 $f9
	jr   c, jr_075_625e                              ; $6264: $38 $f8

	ld   a, b                                        ; $6266: $78
	cp   h                                           ; $6267: $bc
	ld   e, b                                        ; $6268: $58
	ld   e, a                                        ; $6269: $5f
	db   $db                                         ; $626a: $db
	add  l                                           ; $626b: $85
	nop                                              ; $626c: $00
	add  b                                           ; $626d: $80
	sbc  e                                           ; $626e: $9b
	add  b                                           ; $626f: $80
	db   $10                                         ; $6270: $10
	add  b                                           ; $6271: $80
	ld   h, $02                                      ; $6272: $26 $02
	ld   b, $e6                                      ; $6274: $06 $e6
	ldh  [$86], a                                    ; $6276: $e0 $86
	nop                                              ; $6278: $00
	rlca                                             ; $6279: $07
	rst  $38                                         ; $627a: $ff
	nop                                              ; $627b: $00
	rst  $38                                         ; $627c: $ff
	nop                                              ; $627d: $00
	ld   a, a                                        ; $627e: $7f
	ld   a, [hl]                                     ; $627f: $7e
	ld   a, a                                        ; $6280: $7f
	ld   a, [hl]                                     ; $6281: $7e
	add  l                                           ; $6282: $85
	nop                                              ; $6283: $00
	ld   [$ff80], sp                                 ; $6284: $08 $80 $ff
	nop                                              ; $6287: $00
	add  b                                           ; $6288: $80
	ld   e, $1f                                      ; $6289: $1e $1f
	ld   [bc], a                                     ; $628b: $02
	rst  $38                                         ; $628c: $ff
	inc  bc                                          ; $628d: $03
	add  l                                           ; $628e: $85
	nop                                              ; $628f: $00
	ld   [$ff03], sp                                 ; $6290: $08 $03 $ff
	dec  de                                          ; $6293: $1b
	rra                                              ; $6294: $1f
	ld   [hl], $fe                                   ; $6295: $36 $fe
	xor  b                                           ; $6297: $a8
	ld   sp, hl                                      ; $6298: $f9
	ld   h, c                                        ; $6299: $61
	add  a                                           ; $629a: $87
	rrca                                             ; $629b: $0f
	ld   b, $00                                      ; $629c: $06 $00
	rrca                                             ; $629e: $0f
	nop                                              ; $629f: $00
	rrca                                             ; $62a0: $0f
	nop                                              ; $62a1: $00
	rrca                                             ; $62a2: $0f
	nop                                              ; $62a3: $00
	add  a                                           ; $62a4: $87
	rst  $38                                         ; $62a5: $ff
	rlca                                             ; $62a6: $07
	nop                                              ; $62a7: $00
	rst  $38                                         ; $62a8: $ff
	nop                                              ; $62a9: $00
	rst  $38                                         ; $62aa: $ff
	nop                                              ; $62ab: $00
	rst  $38                                         ; $62ac: $ff
	ret  nz                                          ; $62ad: $c0

	ccf                                              ; $62ae: $3f
	add  b                                           ; $62af: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62b0: $cf
	add  b                                           ; $62b1: $80
	ld   [hl], e                                     ; $62b2: $73

jr_075_62b3:
	add  b                                           ; $62b3: $80
	dec  e                                           ; $62b4: $1d
	add  b                                           ; $62b5: $80
	ld   c, $80                                      ; $62b6: $0e $80
	inc  hl                                          ; $62b8: $23
	add  d                                           ; $62b9: $82
	ld   hl, sp-$7a                                  ; $62ba: $f8 $86
	rst  $38                                         ; $62bc: $ff
	add  b                                           ; $62bd: $80
	ld   a, a                                        ; $62be: $7f
	add  b                                           ; $62bf: $80
	sbc  a                                           ; $62c0: $9f
	add  b                                           ; $62c1: $80
	rst  $20                                         ; $62c2: $e7
	add  b                                           ; $62c3: $80
	dec  sp                                          ; $62c4: $3b
	add  b                                           ; $62c5: $80
	rst  $38                                         ; $62c6: $ff
	jr   nc, jr_075_62b3                             ; $62c7: $30 $ea

	rst  $38                                         ; $62c9: $ff
	ld   [$aaff], a                                  ; $62ca: $ea $ff $aa
	rst  $38                                         ; $62cd: $ff
	xor  d                                           ; $62ce: $aa
	rst  $38                                         ; $62cf: $ff
	nop                                              ; $62d0: $00
	rst  $38                                         ; $62d1: $ff
	nop                                              ; $62d2: $00
	rst  $38                                         ; $62d3: $ff
	nop                                              ; $62d4: $00
	rst  $38                                         ; $62d5: $ff
	ld   a, [bc]                                     ; $62d6: $0a
	rst  $38                                         ; $62d7: $ff
	and  b                                           ; $62d8: $a0
	rst  $38                                         ; $62d9: $ff
	xor  d                                           ; $62da: $aa
	rst  $38                                         ; $62db: $ff
	xor  d                                           ; $62dc: $aa
	rst  $38                                         ; $62dd: $ff
	push de                                          ; $62de: $d5
	rst  $38                                         ; $62df: $ff
	nop                                              ; $62e0: $00
	rst  $38                                         ; $62e1: $ff
	ld   b, b                                        ; $62e2: $40
	rst  $38                                         ; $62e3: $ff
	ld   bc, $96fe                                   ; $62e4: $01 $fe $96
	db   $fd                                         ; $62e7: $fd
	ld   bc, $aaff                                   ; $62e8: $01 $ff $aa
	rst  $38                                         ; $62eb: $ff
	xor  e                                           ; $62ec: $ab
	rst  $38                                         ; $62ed: $ff
	dec  hl                                          ; $62ee: $2b
	ld   a, a                                        ; $62ef: $7f
	nop                                              ; $62f0: $00
	ld   a, a                                        ; $62f1: $7f
	nop                                              ; $62f2: $00
	ld   a, a                                        ; $62f3: $7f
	nop                                              ; $62f4: $00
	ld   a, a                                        ; $62f5: $7f
	nop                                              ; $62f6: $00
	rst  $38                                         ; $62f7: $ff
	add  b                                           ; $62f8: $80
	add  c                                           ; $62f9: $81
	rst  $38                                         ; $62fa: $ff
	dec  c                                           ; $62fb: $0d
	nop                                              ; $62fc: $00
	rst  $38                                         ; $62fd: $ff
	nop                                              ; $62fe: $00
	cp   $00                                         ; $62ff: $fe $00
	cp   $80                                         ; $6301: $fe $80
	cp   $02                                         ; $6303: $fe $02
	db   $fc                                         ; $6305: $fc
	ld   a, a                                        ; $6306: $7f
	cp   $00                                         ; $6307: $fe $00
	cp   $80                                         ; $6309: $fe $80
	rst  $38                                         ; $630b: $ff
	nop                                              ; $630c: $00
	nop                                              ; $630d: $00
	add  c                                           ; $630e: $81
	rst  $38                                         ; $630f: $ff
	inc  c                                           ; $6310: $0c
	nop                                              ; $6311: $00
	rst  $38                                         ; $6312: $ff
	add  b                                           ; $6313: $80
	ld   a, a                                        ; $6314: $7f
	nop                                              ; $6315: $00
	rst  $38                                         ; $6316: $ff
	nop                                              ; $6317: $00
	inc  bc                                          ; $6318: $03

jr_075_6319:
	dec  b                                           ; $6319: $05
	rlca                                             ; $631a: $07
	rrca                                             ; $631b: $0f
	ld   c, $00                                      ; $631c: $0e $00
	add  c                                           ; $631e: $81
	rst  $38                                         ; $631f: $ff
	add  hl, hl                                      ; $6320: $29
	nop                                              ; $6321: $00
	rst  $38                                         ; $6322: $ff
	nop                                              ; $6323: $00
	rst  $38                                         ; $6324: $ff
	nop                                              ; $6325: $00
	rst  $38                                         ; $6326: $ff
	nop                                              ; $6327: $00
	di                                               ; $6328: $f3
	inc  de                                          ; $6329: $13
	rst  $38                                         ; $632a: $ff
	rla                                              ; $632b: $17
	rst  $28                                         ; $632c: $ef
	push hl                                          ; $632d: $e5
	ld   e, $1c                                      ; $632e: $1e $1c
	ei                                               ; $6330: $fb
	di                                               ; $6331: $f3
	dec  c                                           ; $6332: $0d
	dec  b                                           ; $6333: $05
	ld   a, [$fc06]                                  ; $6334: $fa $06 $fc
	nop                                              ; $6337: $00
	rst  $20                                         ; $6338: $e7
	ldh  [rIE], a                                    ; $6339: $e0 $ff
	ld   l, b                                        ; $633b: $68
	sbc  a                                           ; $633c: $9f
	ld   b, a                                        ; $633d: $47
	ld   hl, sp-$70                                  ; $633e: $f8 $90
	ld   a, a                                        ; $6340: $7f
	ld   b, a                                        ; $6341: $47
	jr   c, jr_075_63a4                              ; $6342: $38 $60

	rst  JumpTable                                         ; $6344: $df
	ret  nz                                          ; $6345: $c0

	ld   e, a                                        ; $6346: $5f
	nop                                              ; $6347: $00
	ldh  [rAUD1SWEEP], a                             ; $6348: $e0 $10
	ldh  a, [$80]                                    ; $634a: $f0 $80
	ld   a, b                                        ; $634c: $78
	nop                                              ; $634d: $00
	nop                                              ; $634e: $00
	add  b                                           ; $634f: $80
	rst  $38                                         ; $6350: $ff
	ld   a, [bc]                                     ; $6351: $0a
	sbc  a                                           ; $6352: $9f
	ldh  [$7f], a                                    ; $6353: $e0 $7f
	nop                                              ; $6355: $00
	rst  $38                                         ; $6356: $ff
	nop                                              ; $6357: $00
	rst  $38                                         ; $6358: $ff
	nop                                              ; $6359: $00
	ld   a, a                                        ; $635a: $7f
	nop                                              ; $635b: $00
	ld   a, a                                        ; $635c: $7f
	add  b                                           ; $635d: $80
	rst  $38                                         ; $635e: $ff
	nop                                              ; $635f: $00
	nop                                              ; $6360: $00
	add  c                                           ; $6361: $81
	rst  $38                                         ; $6362: $ff
	ld   [$ff00], sp                                 ; $6363: $08 $00 $ff
	nop                                              ; $6366: $00
	rst  $38                                         ; $6367: $ff
	nop                                              ; $6368: $00
	rst  $38                                         ; $6369: $ff
	nop                                              ; $636a: $00
	rst  $38                                         ; $636b: $ff
	nop                                              ; $636c: $00
	add  c                                           ; $636d: $81
	rst  $38                                         ; $636e: $ff
	ld   a, [de]                                     ; $636f: $1a
	nop                                              ; $6370: $00
	rst  $38                                         ; $6371: $ff
	add  b                                           ; $6372: $80
	cp   a                                           ; $6373: $bf
	nop                                              ; $6374: $00
	cp   a                                           ; $6375: $bf
	nop                                              ; $6376: $00
	cp   a                                           ; $6377: $bf
	jr   nz, jr_075_6319                             ; $6378: $20 $9f

	ld   c, a                                        ; $637a: $4f
	rst  $30                                         ; $637b: $f7
	daa                                              ; $637c: $27
	rst  $28                                         ; $637d: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $637e: $cf
	rst  JumpTable                                         ; $637f: $df
	rra                                              ; $6380: $1f
	rst  $38                                         ; $6381: $ff
	ld   a, b                                        ; $6382: $78
	ei                                               ; $6383: $fb
	nop                                              ; $6384: $00
	ei                                               ; $6385: $fb
	add  b                                           ; $6386: $80
	ei                                               ; $6387: $fb
	ld   [bc], a                                     ; $6388: $02
	ld   sp, hl                                      ; $6389: $f9
	ld   [$0f80], sp                                 ; $638a: $08 $80 $0f
	add  c                                           ; $638d: $81
	nop                                              ; $638e: $00
	add  d                                           ; $638f: $82
	dec  c                                           ; $6390: $0d
	add  b                                           ; $6391: $80
	rrca                                             ; $6392: $0f
	add  b                                           ; $6393: $80
	dec  c                                           ; $6394: $0d
	add  b                                           ; $6395: $80
	nop                                              ; $6396: $00
	nop                                              ; $6397: $00
	ldh  a, [$80]                                    ; $6398: $f0 $80
	rst  $38                                         ; $639a: $ff
	add  c                                           ; $639b: $81
	nop                                              ; $639c: $00
	add  b                                           ; $639d: $80
	rst  $38                                         ; $639e: $ff
	ld   [$fff5], sp                                 ; $639f: $08 $f5 $ff
	and  b                                           ; $63a2: $a0
	rst  $38                                         ; $63a3: $ff

jr_075_63a4:
	nop                                              ; $63a4: $00
	ld   a, [$57f8]                                  ; $63a5: $fa $f8 $57
	nop                                              ; $63a8: $00
	add  b                                           ; $63a9: $80
	rst  $38                                         ; $63aa: $ff
	add  c                                           ; $63ab: $81
	nop                                              ; $63ac: $00
	add  b                                           ; $63ad: $80
	cp   a                                           ; $63ae: $bf
	ld   [$fd7d], sp                                 ; $63af: $08 $7d $fd
	dec  a                                           ; $63b2: $3d
	db   $fd                                         ; $63b3: $fd
	dec  e                                           ; $63b4: $1d
	cp   l                                           ; $63b5: $bd
	rst  JumpTable                                         ; $63b6: $df
	rst  $38                                         ; $63b7: $ff
	ret  nz                                          ; $63b8: $c0

	add  b                                           ; $63b9: $80
	rst  $38                                         ; $63ba: $ff
	add  c                                           ; $63bb: $81
	nop                                              ; $63bc: $00
	add  b                                           ; $63bd: $80
	rst  $38                                         ; $63be: $ff
	add  h                                           ; $63bf: $84
	ld   d, l                                        ; $63c0: $55
	add  b                                           ; $63c1: $80
	rst  $38                                         ; $63c2: $ff
	nop                                              ; $63c3: $00
	nop                                              ; $63c4: $00
	add  b                                           ; $63c5: $80
	rst  $38                                         ; $63c6: $ff
	add  c                                           ; $63c7: $81
	nop                                              ; $63c8: $00
	add  b                                           ; $63c9: $80
	rst  $30                                         ; $63ca: $f7
	dec  bc                                          ; $63cb: $0b
	xor  e                                           ; $63cc: $ab
	rst  $38                                         ; $63cd: $ff
	ld   bc, $feff                                   ; $63ce: $01 $ff $fe
	xor  e                                           ; $63d1: $ab
	and  d                                           ; $63d2: $a2
	rst  $30                                         ; $63d3: $f7
	adc  d                                           ; $63d4: $8a
	cp   $de                                         ; $63d5: $fe $de
	nop                                              ; $63d7: $00
	add  b                                           ; $63d8: $80
	ld   e, $82                                      ; $63d9: $1e $82
	cp   $06                                         ; $63db: $fe $06
	ld   a, [hl]                                     ; $63dd: $7e
	cp   $3e                                         ; $63de: $fe $3e
	xor  $c6                                         ; $63e0: $ee $c6
	sbc  [hl]                                        ; $63e2: $9e
	ld   [$7f80], sp                                 ; $63e3: $08 $80 $7f
	add  c                                           ; $63e6: $81
	nop                                              ; $63e7: $00
	add  [hl]                                        ; $63e8: $86
	ld   [hl], a                                     ; $63e9: $77
	add  b                                           ; $63ea: $80
	ld   [hl+], a                                    ; $63eb: $22
	ld   [bc], a                                     ; $63ec: $02
	ld   b, b                                        ; $63ed: $40
	db   $fc                                         ; $63ee: $fc
	cp   h                                           ; $63ef: $bc
	add  b                                           ; $63f0: $80
	nop                                              ; $63f1: $00
	nop                                              ; $63f2: $00
	inc  a                                           ; $63f3: $3c
	add  [hl]                                        ; $63f4: $86
	db   $fc                                         ; $63f5: $fc
	add  b                                           ; $63f6: $80
	jr   c, jr_075_63f9                              ; $63f7: $38 $00

jr_075_63f9:
	inc  a                                           ; $63f9: $3c
	add  b                                           ; $63fa: $80
	rst  $38                                         ; $63fb: $ff
	add  b                                           ; $63fc: $80
	nop                                              ; $63fd: $00
	ld   [$cc0c], sp                                 ; $63fe: $08 $0c $cc
	adc  $a4                                         ; $6401: $ce $a4
	xor  a                                           ; $6403: $af
	ld   c, a                                        ; $6404: $4f

Jump_075_6405:
	ld   l, a                                        ; $6405: $6f
	and  h                                           ; $6406: $a4
	pop  bc                                          ; $6407: $c1
	add  b                                           ; $6408: $80
	ret                                              ; $6409: $c9


	nop                                              ; $640a: $00
	ld   b, b                                        ; $640b: $40
	add  b                                           ; $640c: $80
	rst  $38                                         ; $640d: $ff
	add  b                                           ; $640e: $80
	nop                                              ; $640f: $00
	ld   d, $03                                      ; $6410: $16 $03
	ei                                               ; $6412: $fb
	db   $fc                                         ; $6413: $fc
	ld   [hl], a                                     ; $6414: $77
	ld   a, e                                        ; $6415: $7b
	ld   l, [hl]                                     ; $6416: $6e
	rst  $30                                         ; $6417: $f7
	sbc  l                                           ; $6418: $9d
	xor  [hl]                                        ; $6419: $ae
	xor  l                                           ; $641a: $ad
	adc  a                                           ; $641b: $8f
	add  d                                           ; $641c: $82
	ld   hl, sp-$01                                  ; $641d: $f8 $ff
	rst  ToBoot                                         ; $641f: $c7
	ldh  a, [c]                                      ; $6420: $f2
	ccf                                              ; $6421: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6422: $cf
	ldh  [rIF], a                                    ; $6423: $e0 $0f
	rst  $28                                         ; $6425: $ef
	ldh  a, [$30]                                    ; $6426: $f0 $30
	add  b                                           ; $6428: $80
	ld   c, e                                        ; $6429: $4b
	add  b                                           ; $642a: $80
	adc  h                                           ; $642b: $8c
	dec  bc                                          ; $642c: $0b
	ld   b, b                                        ; $642d: $40
	cpl                                              ; $642e: $2f
	cp   a                                           ; $642f: $bf
	pop  af                                          ; $6430: $f1
	and  a                                           ; $6431: $a7
	cp   $f9                                         ; $6432: $fe $f9
	add  e                                           ; $6434: $83
	ld   hl, sp-$05                                  ; $6435: $f8 $fb
	add  a                                           ; $6437: $87
	add  [hl]                                        ; $6438: $86
	add  b                                           ; $6439: $80
	jp   hl                                          ; $643a: $e9


	add  b                                           ; $643b: $80
	sbc  b                                           ; $643c: $98
	nop                                              ; $643d: $00
	nop                                              ; $643e: $00

jr_075_643f:
	add  b                                           ; $643f: $80
	rst  $38                                         ; $6440: $ff
	add  b                                           ; $6441: $80
	add  b                                           ; $6442: $80
	dec  bc                                          ; $6443: $0b
	ld   h, b                                        ; $6444: $60
	rst  $28                                         ; $6445: $ef
	sbc  a                                           ; $6446: $9f
	ld   [hl], a                                     ; $6447: $77
	rst  $28                                         ; $6448: $ef
	cp   e                                           ; $6449: $bb
	ld   [hl], a                                     ; $644a: $77
	ld   e, h                                        ; $644b: $5c
	ld   a, [hl-]                                    ; $644c: $3a
	sbc  $fc                                         ; $644d: $de $fc
	nop                                              ; $644f: $00
	add  b                                           ; $6450: $80
	rst  $38                                         ; $6451: $ff
	add  b                                           ; $6452: $80
	nop                                              ; $6453: $00
	ld   [$9918], sp                                 ; $6454: $08 $18 $99
	cp   c                                           ; $6457: $b9
	ld   [de], a                                     ; $6458: $12
	ld   a, d                                        ; $6459: $7a
	ld   a, c                                        ; $645a: $79
	ei                                               ; $645b: $fb
	or   b                                           ; $645c: $b0
	db   $e3                                         ; $645d: $e3
	add  b                                           ; $645e: $80
	push de                                          ; $645f: $d5
	ld   [bc], a                                     ; $6460: $02
	add  b                                           ; $6461: $80
	sbc  a                                           ; $6462: $9f
	sbc  [hl]                                        ; $6463: $9e
	add  b                                           ; $6464: $80
	nop                                              ; $6465: $00
	nop                                              ; $6466: $00
	ld   e, $82                                      ; $6467: $1e $82
	sbc  a                                           ; $6469: $9f
	add  b                                           ; $646a: $80
	rra                                              ; $646b: $1f
	add  b                                           ; $646c: $80
	sbc  a                                           ; $646d: $9f
	add  b                                           ; $646e: $80
	adc  [hl]                                        ; $646f: $8e
	nop                                              ; $6470: $00
	ld   e, $80                                      ; $6471: $1e $80

jr_075_6473:
	ld   sp, hl                                      ; $6473: $f9
	nop                                              ; $6474: $00
	nop                                              ; $6475: $00
	add  b                                           ; $6476: $80
	ld   bc, $7982                                   ; $6477: $01 $82 $79
	inc  hl                                          ; $647a: $23
	ld   a, b                                        ; $647b: $78
	ld   a, c                                        ; $647c: $79
	ld   a, b                                        ; $647d: $78
	ld   a, c                                        ; $647e: $79
	ld   b, b                                        ; $647f: $40
	ld   b, c                                        ; $6480: $41

Call_075_6481:
	db   $fc                                         ; $6481: $fc
	rrca                                             ; $6482: $0f
	ld   [$080f], sp                                 ; $6483: $08 $0f $08
	rrca                                             ; $6486: $0f
	ld   [$0e0f], sp                                 ; $6487: $08 $0f $0e
	dec  bc                                          ; $648a: $0b
	ld   [$000d], sp                                 ; $648b: $08 $0d $00
	ld   c, $01                                      ; $648e: $0e $01
	rrca                                             ; $6490: $0f
	adc  a                                           ; $6491: $8f
	push de                                          ; $6492: $d5
	ld   c, d                                        ; $6493: $4a
	cp   d                                           ; $6494: $ba
	and  l                                           ; $6495: $a5
	ld   d, h                                        ; $6496: $54
	ld   h, d                                        ; $6497: $62
	cp   b                                           ; $6498: $b8
	inc  l                                           ; $6499: $2c
	ld   hl, sp+$0d                                  ; $649a: $f8 $0d
	ret  nc                                          ; $649c: $d0

	jr   nz, jr_075_643f                             ; $649d: $20 $a0

	add  b                                           ; $649f: $80
	ld   d, b                                        ; $64a0: $50
	ld   bc, $5f52                                   ; $64a1: $01 $52 $5f
	add  b                                           ; $64a4: $80
	xor  h                                           ; $64a5: $ac
	add  b                                           ; $64a6: $80
	ld   c, h                                        ; $64a7: $4c
	dec  b                                           ; $64a8: $05
	adc  h                                           ; $64a9: $8c
	inc  c                                           ; $64aa: $0c
	ld   e, a                                        ; $64ab: $5f
	rra                                              ; $64ac: $1f
	adc  h                                           ; $64ad: $8c
	ld   c, h                                        ; $64ae: $4c
	add  d                                           ; $64af: $82
	inc  c                                           ; $64b0: $0c
	ld   bc, $ff0f                                   ; $64b1: $01 $0f $ff
	add  h                                           ; $64b4: $84
	ld   hl, $ff80                                   ; $64b5: $21 $80 $ff
	add  h                                           ; $64b8: $84
	ld   hl, $d401                                   ; $64b9: $21 $01 $d4
	dec  hl                                          ; $64bc: $2b
	add  b                                           ; $64bd: $80
	ld   d, l                                        ; $64be: $55
	rlca                                             ; $64bf: $07
	ld   a, [hl+]                                    ; $64c0: $2a
	ld   h, $51                                      ; $64c1: $26 $51
	ld   b, e                                        ; $64c3: $43
	ld   h, b                                        ; $64c4: $60
	ld   b, c                                        ; $64c5: $41
	ld   a, [de]                                     ; $64c6: $1a
	ld   hl, $0280                                   ; $64c7: $21 $80 $02
	add  c                                           ; $64ca: $81
	ld   bc, $ee0f                                   ; $64cb: $01 $0f $ee
	ld   h, d                                        ; $64ce: $62
	cp   [hl]                                        ; $64cf: $be
	ldh  a, [c]                                      ; $64d0: $f2
	xor  $80                                         ; $64d1: $ee $80
	xor  $68                                         ; $64d3: $ee $68
	adc  $e4                                         ; $64d5: $ce $e4
	ld   h, [hl]                                     ; $64d7: $66
	and  $a6                                         ; $64d8: $e6 $a6
	ld   b, [hl]                                     ; $64da: $46
	ld   h, [hl]                                     ; $64db: $66
	add  c                                           ; $64dc: $81
	add  l                                           ; $64dd: $85
	ld   a, a                                        ; $64de: $7f
	add  b                                           ; $64df: $80
	inc  bc                                          ; $64e0: $03
	add  h                                           ; $64e1: $84
	ld   [hl], a                                     ; $64e2: $77
	ld   bc, $7945                                   ; $64e3: $01 $45 $79
	add  b                                           ; $64e6: $80
	pop  af                                          ; $64e7: $f1
	add  b                                           ; $64e8: $80
	jp   hl                                          ; $64e9: $e9


	add  b                                           ; $64ea: $80
	ld   d, b                                        ; $64eb: $50
	add  b                                           ; $64ec: $80
	jr   z, jr_075_6473                              ; $64ed: $28 $84

	ret  nz                                          ; $64ef: $c0

	ld   bc, $902c                                   ; $64f0: $01 $2c $90
	add  b                                           ; $64f3: $80
	adc  e                                           ; $64f4: $8b
	ld   [$9515], sp                                 ; $64f5: $08 $15 $95
	ld   bc, $feff                                   ; $64f8: $01 $ff $fe
	nop                                              ; $64fb: $00
	ld   bc, $feff                                   ; $64fc: $01 $ff $fe
	add  c                                           ; $64ff: $81
	nop                                              ; $6500: $00
	ld   a, [bc]                                     ; $6501: $0a
	ld   d, c                                        ; $6502: $51
	reti                                             ; $6503: $d9


	ld   c, d                                        ; $6504: $4a
	ldh  a, [c]                                      ; $6505: $f2
	ld   [hl], d                                     ; $6506: $72
	sub  d                                           ; $6507: $92
	sub  b                                           ; $6508: $90
	sbc  a                                           ; $6509: $9f
	rst  JumpTable                                         ; $650a: $df
	nop                                              ; $650b: $00
	ld   b, b                                        ; $650c: $40
	add  b                                           ; $650d: $80
	sbc  a                                           ; $650e: $9f
	ld   [bc], a                                     ; $650f: $02
	add  b                                           ; $6510: $80
	ret  nz                                          ; $6511: $c0

	nop                                              ; $6512: $00
	add  b                                           ; $6513: $80
	jp   nc, $3980                                   ; $6514: $d2 $80 $39

	add  b                                           ; $6517: $80
	ld   b, a                                        ; $6518: $47
	ld   [bc], a                                     ; $6519: $02
	rrca                                             ; $651a: $0f
	ldh  a, [rIE]                                    ; $651b: $f0 $ff
	add  b                                           ; $651d: $80
	nop                                              ; $651e: $00
	add  b                                           ; $651f: $80
	rst  $38                                         ; $6520: $ff
	add  c                                           ; $6521: $81
	nop                                              ; $6522: $00
	add  b                                           ; $6523: $80
	and  l                                           ; $6524: $a5
	add  b                                           ; $6525: $80
	adc  $80                                         ; $6526: $ce $80
	pop  af                                          ; $6528: $f1
	ld   [bc], a                                     ; $6529: $02
	ld   hl, sp+$07                                  ; $652a: $f8 $07
	rst  $38                                         ; $652c: $ff
	add  b                                           ; $652d: $80
	nop                                              ; $652e: $00
	add  b                                           ; $652f: $80
	rst  $38                                         ; $6530: $ff
	nop                                              ; $6531: $00
	nop                                              ; $6532: $00
	add  b                                           ; $6533: $80
	add  b                                           ; $6534: $80
	ld   a, [bc]                                     ; $6535: $0a
	call nz, $2acd                                   ; $6536: $c4 $cd $2a
	daa                                              ; $6539: $27
	dec  h                                           ; $653a: $25
	inc  h                                           ; $653b: $24
	inc  b                                           ; $653c: $04
	db   $fc                                         ; $653d: $fc
	db   $fd                                         ; $653e: $fd
	nop                                              ; $653f: $00
	ld   bc, $fc80                                   ; $6540: $01 $80 $fc
	rrca                                             ; $6543: $0f
	nop                                              ; $6544: $00
	ld   bc, $1800                                   ; $6545: $01 $00 $18
	ret  c                                           ; $6548: $d8

	ld   a, [hl+]                                    ; $6549: $2a
	ld   [$9414], a                                  ; $654a: $ea $14 $94
	ret  nz                                          ; $654d: $c0

	rst  $38                                         ; $654e: $ff
	cp   a                                           ; $654f: $bf
	nop                                              ; $6550: $00
	ld   b, b                                        ; $6551: $40
	rst  $38                                         ; $6552: $ff
	cp   a                                           ; $6553: $bf
	add  b                                           ; $6554: $80
	add  b                                           ; $6555: $80
	ld   [bc], a                                     ; $6556: $02
	nop                                              ; $6557: $00
	ld   d, c                                        ; $6558: $51
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6559: $cf
	add  b                                           ; $655a: $80
	rst  ToBoot                                         ; $655b: $c7
	ld   b, $0b                                      ; $655c: $06 $0b
	adc  e                                           ; $655e: $8b
	dec  b                                           ; $655f: $05
	add  l                                           ; $6560: $85
	adc  d                                           ; $6561: $8a
	ld   a, [bc]                                     ; $6562: $0a

jr_075_6563:
	ld   bc, $8180                                   ; $6563: $01 $80 $81
	add  c                                           ; $6566: $81
	ld   bc, $f600                                   ; $6567: $01 $00 $f6
	add  l                                           ; $656a: $85
	jp   hl                                          ; $656b: $e9


	add  b                                           ; $656c: $80
	ld   b, c                                        ; $656d: $41
	add  h                                           ; $656e: $84
	ld   a, c                                        ; $656f: $79
	inc  hl                                          ; $6570: $23
	db   $fc                                         ; $6571: $fc
	ld   c, $04                                      ; $6572: $0e $04
	rlca                                             ; $6574: $07
	ld   c, $0f                                      ; $6575: $0e $0f
	ld   c, $0f                                      ; $6577: $0e $0f
	ld   c, $07                                      ; $6579: $0e $07
	ld   c, $0b                                      ; $657b: $0e $0b
	rrca                                             ; $657d: $0f
	inc  c                                           ; $657e: $0c
	rrca                                             ; $657f: $0f
	rlca                                             ; $6580: $07
	xor  c                                           ; $6581: $a9
	and  b                                           ; $6582: $a0
	ld   c, [hl]                                     ; $6583: $4e
	cp   $bb                                         ; $6584: $fe $bb
	xor  d                                           ; $6586: $aa
	ld   hl, $01d5                                   ; $6587: $21 $d5 $01
	rst  $38                                         ; $658a: $ff
	add  c                                           ; $658b: $81
	rst  $38                                         ; $658c: $ff
	db   $dd                                         ; $658d: $dd
	xor  $e3                                         ; $658e: $ee $e3
	rlca                                             ; $6590: $07
	jp   $7c4f                                       ; $6591: $c3 $4f $7c


	db   $fc                                         ; $6594: $fc
	add  b                                           ; $6595: $80
	sbc  h                                           ; $6596: $9c
	add  b                                           ; $6597: $80
	ld   l, h                                        ; $6598: $6c
	add  hl, bc                                      ; $6599: $09
	xor  a                                           ; $659a: $af
	rst  $38                                         ; $659b: $ff
	inc  e                                           ; $659c: $1c
	db   $fc                                         ; $659d: $fc
	inc  c                                           ; $659e: $0c
	ld   c, h                                        ; $659f: $4c
	ldh  [rIE], a                                    ; $65a0: $e0 $ff
	ldh  [rIE], a                                    ; $65a2: $e0 $ff
	add  h                                           ; $65a4: $84
	ld   hl, $ff80                                   ; $65a5: $21 $80 $ff
	add  c                                           ; $65a8: $81
	ld   hl, $2013                                   ; $65a9: $21 $13 $20
	ld   b, $fc                                      ; $65ac: $06 $fc
	ld   a, [hl]                                     ; $65ae: $7e
	ld   h, d                                        ; $65af: $62
	ld   [hl], d                                     ; $65b0: $72
	ld   [hl], a                                     ; $65b1: $77
	or   a                                           ; $65b2: $b7
	xor  d                                           ; $65b3: $aa
	nop                                              ; $65b4: $00
	ld   d, l                                        ; $65b5: $55
	push bc                                          ; $65b6: $c5
	cp   d                                           ; $65b7: $ba
	add  e                                           ; $65b8: $83
	db   $fd                                         ; $65b9: $fd
	sub  l                                           ; $65ba: $95
	cp   [hl]                                        ; $65bb: $be
	nop                                              ; $65bc: $00
	ld   a, a                                        ; $65bd: $7f
	and  a                                           ; $65be: $a7
	add  b                                           ; $65bf: $80
	and  $0e                                         ; $65c0: $e6 $0e
	add  $ce                                         ; $65c2: $c6 $ce
	xor  $0e                                         ; $65c4: $ee $0e
	xor  $3e                                         ; $65c6: $ee $3e
	cp   $a6                                         ; $65c8: $fe $a6
	ld   l, [hl]                                     ; $65ca: $6e
	ld   b, d                                        ; $65cb: $42
	ld   e, $10                                      ; $65cc: $1e $10
	cp   $93                                         ; $65ce: $fe $93
	ld   [hl], a                                     ; $65d0: $77
	add  b                                           ; $65d1: $80
	ld   [bc], a                                     ; $65d2: $02
	add  [hl]                                        ; $65d3: $86
	ld   a, a                                        ; $65d4: $7f
	add  b                                           ; $65d5: $80
	inc  hl                                          ; $65d6: $23
	add  b                                           ; $65d7: $80
	ld   [hl], a                                     ; $65d8: $77
	ld   bc, $c0fc                                   ; $65d9: $01 $fc $c0
	add  b                                           ; $65dc: $80
	nop                                              ; $65dd: $00
	add  [hl]                                        ; $65de: $86
	ld   b, b                                        ; $65df: $40
	add  b                                           ; $65e0: $80
	jr   z, jr_075_6563                              ; $65e1: $28 $80

	ret  nc                                          ; $65e3: $d0

	nop                                              ; $65e4: $00
	inc  a                                           ; $65e5: $3c
	adc  h                                           ; $65e6: $8c
	ld   [bc], a                                     ; $65e7: $02
	add  b                                           ; $65e8: $80
	ld   a, $8c                                      ; $65e9: $3e $8c
	pop  bc                                          ; $65eb: $c1
	add  b                                           ; $65ec: $80
	rst  JumpTable                                         ; $65ed: $df
	adc  h                                           ; $65ee: $8c
	ld   [bc], a                                     ; $65ef: $02
	add  b                                           ; $65f0: $80
	ld   a, $8c                                      ; $65f1: $3e $8c
	add  d                                           ; $65f3: $82
	add  b                                           ; $65f4: $80
	cp   [hl]                                        ; $65f5: $be
	adc  h                                           ; $65f6: $8c
	dec  b                                           ; $65f7: $05
	add  b                                           ; $65f8: $80
	ld   a, l                                        ; $65f9: $7d
	adc  h                                           ; $65fa: $8c
	add  d                                           ; $65fb: $82
	ld   bc, $a1be                                   ; $65fc: $01 $be $a1
	adc  c                                           ; $65ff: $89
	ld   bc, $0a80                                   ; $6600: $01 $80 $0a
	add  b                                           ; $6603: $80
	dec  b                                           ; $6604: $05
	ld   bc, $7966                                   ; $6605: $01 $66 $79
	add  b                                           ; $6608: $80
	ld   bc, $e986                                   ; $6609: $01 $86 $e9
	add  b                                           ; $660c: $80
	ld   b, c                                        ; $660d: $41
	add  b                                           ; $660e: $80
	ld   a, c                                        ; $660f: $79
	nop                                              ; $6610: $00
	pop  af                                          ; $6611: $f1
	add  b                                           ; $6612: $80
	inc  bc                                          ; $6613: $03
	nop                                              ; $6614: $00
	inc  b                                           ; $6615: $04
	add  b                                           ; $6616: $80
	nop                                              ; $6617: $00
	dec  c                                           ; $6618: $0d
	rlca                                             ; $6619: $07
	inc  b                                           ; $661a: $04
	inc  bc                                          ; $661b: $03
	dec  bc                                          ; $661c: $0b
	rlca                                             ; $661d: $07
	ld   b, $0f                                      ; $661e: $06 $0f
	add  hl, bc                                      ; $6620: $09
	ld   [$cf00], sp                                 ; $6621: $08 $00 $cf
	rst  $38                                         ; $6624: $ff
	cp   e                                           ; $6625: $bb
	add  a                                           ; $6626: $87
	add  b                                           ; $6627: $80
	ld   a, a                                        ; $6628: $7f
	inc  bc                                          ; $6629: $03
	call z, $adbc                                    ; $662a: $cc $bc $ad
	dec  a                                           ; $662d: $3d
	add  b                                           ; $662e: $80
	and  h                                           ; $662f: $a4
	dec  bc                                          ; $6630: $0b
	db   $e4                                         ; $6631: $e4
	and  h                                           ; $6632: $a4
	db   $fc                                         ; $6633: $fc
	cp   $a9                                         ; $6634: $fe $a9
	rst  $38                                         ; $6636: $ff
	ldh  a, [$f8]                                    ; $6637: $f0 $f8
	cp   e                                           ; $6639: $bb
	cp   a                                           ; $663a: $bf
	inc  b                                           ; $663b: $04
	nop                                              ; $663c: $00
	add  d                                           ; $663d: $82
	rst  $38                                         ; $663e: $ff
	add  b                                           ; $663f: $80
	ccf                                              ; $6640: $3f
	inc  d                                           ; $6641: $14
	rrca                                             ; $6642: $0f
	ld   c, $fe                                      ; $6643: $0e $fe
	rst  $38                                         ; $6645: $ff
	rlca                                             ; $6646: $07
	nop                                              ; $6647: $00
	ei                                               ; $6648: $fb
	di                                               ; $6649: $f3
	rla                                              ; $664a: $17
	ld   b, $ee                                      ; $664b: $06 $ee
	call $98dc                                       ; $664d: $cd $dc $98
	cp   h                                           ; $6650: $bc
	ld   [hl], $7c                                   ; $6651: $36 $7c
	ld   l, h                                        ; $6653: $6c
	ld   e, h                                        ; $6654: $5c
	ret  nz                                          ; $6655: $c0

	ld   a, a                                        ; $6656: $7f
	add  b                                           ; $6657: $80
	rst  $38                                         ; $6658: $ff
	inc  b                                           ; $6659: $04
	ret  nz                                          ; $665a: $c0

	db   $ed                                         ; $665b: $ed
	ld   l, l                                        ; $665c: $6d
	ld   a, a                                        ; $665d: $7f
	db   $ed                                         ; $665e: $ed
	add  b                                           ; $665f: $80
	ld   l, l                                        ; $6660: $6d
	add  c                                           ; $6661: $81
	ld   a, a                                        ; $6662: $7f
	ld   bc, $f25f                                   ; $6663: $01 $5f $f2
	add  b                                           ; $6666: $80
	cp   $80                                         ; $6667: $fe $80
	ld   a, [$0280]                                  ; $6669: $fa $80 $02
	add  b                                           ; $666c: $80
	xor  [hl]                                        ; $666d: $ae
	add  e                                           ; $666e: $83
	cp   $02                                         ; $666f: $fe $02
	adc  [hl]                                        ; $6671: $8e
	cp   $f1                                         ; $6672: $fe $f1
	add  c                                           ; $6674: $81
	ld   a, a                                        ; $6675: $7f
	add  b                                           ; $6676: $80
	ld   [hl], a                                     ; $6677: $77
	add  b                                           ; $6678: $80
	ld   bc, $7f80                                   ; $6679: $01 $80 $7f
	add  b                                           ; $667c: $80
	cp   a                                           ; $667d: $bf
	add  b                                           ; $667e: $80
	add  b                                           ; $667f: $80
	add  b                                           ; $6680: $80
	cp   a                                           ; $6681: $bf
	ld   bc, $e8d4                                   ; $6682: $01 $d4 $e8
	add  b                                           ; $6685: $80
	ldh  a, [$82]                                    ; $6686: $f0 $82
	ld   hl, sp-$7e                                  ; $6688: $f8 $82
	db   $fc                                         ; $668a: $fc
	add  b                                           ; $668b: $80
	inc  a                                           ; $668c: $3c
	add  b                                           ; $668d: $80
	db   $fc                                         ; $668e: $fc
	nop                                              ; $668f: $00
	inc  a                                           ; $6690: $3c
	add  b                                           ; $6691: $80
	nop                                              ; $6692: $00
	add  [hl]                                        ; $6693: $86
	ld   [bc], a                                     ; $6694: $02
	add  b                                           ; $6695: $80
	ld   a, $80                                      ; $6696: $3e $80
	nop                                              ; $6698: $00
	add  b                                           ; $6699: $80
	ld   [bc], a                                     ; $669a: $02
	add  b                                           ; $669b: $80
	ret  nz                                          ; $669c: $c0

	add  [hl]                                        ; $669d: $86
	pop  bc                                          ; $669e: $c1
	add  b                                           ; $669f: $80
	rst  JumpTable                                         ; $66a0: $df
	add  b                                           ; $66a1: $80
	ret  nz                                          ; $66a2: $c0

	add  b                                           ; $66a3: $80
	pop  bc                                          ; $66a4: $c1
	add  b                                           ; $66a5: $80
	nop                                              ; $66a6: $00
	add  [hl]                                        ; $66a7: $86
	ld   [bc], a                                     ; $66a8: $02
	add  b                                           ; $66a9: $80
	ld   a, $80                                      ; $66aa: $3e $80
	nop                                              ; $66ac: $00
	add  b                                           ; $66ad: $80
	ld   [bc], a                                     ; $66ae: $02
	add  b                                           ; $66af: $80
	add  b                                           ; $66b0: $80
	add  [hl]                                        ; $66b1: $86
	add  d                                           ; $66b2: $82
	add  b                                           ; $66b3: $80
	cp   [hl]                                        ; $66b4: $be
	add  b                                           ; $66b5: $80
	add  b                                           ; $66b6: $80
	add  b                                           ; $66b7: $80
	add  d                                           ; $66b8: $82
	add  b                                           ; $66b9: $80
	ld   bc, $0586                                   ; $66ba: $01 $86 $05
	add  b                                           ; $66bd: $80
	ld   a, l                                        ; $66be: $7d
	add  b                                           ; $66bf: $80
	ld   bc, $0580                                   ; $66c0: $01 $80 $05
	add  b                                           ; $66c3: $80
	add  b                                           ; $66c4: $80
	add  [hl]                                        ; $66c5: $86
	add  d                                           ; $66c6: $82
	add  b                                           ; $66c7: $80
	cp   [hl]                                        ; $66c8: $be
	add  b                                           ; $66c9: $80
	add  b                                           ; $66ca: $80
	ld   [bc], a                                     ; $66cb: $02
	add  d                                           ; $66cc: $82
	sub  a                                           ; $66cd: $97
	dec  bc                                          ; $66ce: $0b
	add  b                                           ; $66cf: $80
	rlca                                             ; $66d0: $07
	add  b                                           ; $66d1: $80
	rrca                                             ; $66d2: $0f
	add  b                                           ; $66d3: $80
	ld   c, $82                                      ; $66d4: $0e $82
	rra                                              ; $66d6: $1f
	add  b                                           ; $66d7: $80
	ld   e, $80                                      ; $66d8: $1e $80
	rra                                              ; $66da: $1f
	nop                                              ; $66db: $00
	ld   h, [hl]                                     ; $66dc: $66
	add  e                                           ; $66dd: $83
	ld   a, c                                        ; $66de: $79
	add  b                                           ; $66df: $80
	ld   sp, $f982                                   ; $66e0: $31 $82 $f9
	add  b                                           ; $66e3: $80
	ld   bc, $f980                                   ; $66e4: $01 $80 $f9
	ld   bc, $00f3                                   ; $66e7: $01 $f3 $00
	add  c                                           ; $66ea: $81
	ld   [bc], a                                     ; $66eb: $02
	add  d                                           ; $66ec: $82
	inc  bc                                          ; $66ed: $03
	add  b                                           ; $66ee: $80
	ld   b, $80                                      ; $66ef: $06 $80
	inc  c                                           ; $66f1: $0c
	add  c                                           ; $66f2: $81
	nop                                              ; $66f3: $00
	nop                                              ; $66f4: $00
	ldh  a, [$80]                                    ; $66f5: $f0 $80
	ld   [hl], b                                     ; $66f7: $70
	inc  bc                                          ; $66f8: $03
	ldh  [$ef], a                                    ; $66f9: $e0 $ef
	adc  a                                           ; $66fb: $8f
	add  b                                           ; $66fc: $80
	add  c                                           ; $66fd: $81
	nop                                              ; $66fe: $00
	add  b                                           ; $66ff: $80
	rst  $38                                         ; $6700: $ff
	add  d                                           ; $6701: $82
	nop                                              ; $6702: $00
	inc  c                                           ; $6703: $0c
	inc  bc                                          ; $6704: $03
	nop                                              ; $6705: $00
	dec  b                                           ; $6706: $05
	ld   bc, $e3eb                                   ; $6707: $01 $eb $e3
	scf                                              ; $670a: $37
	ld   d, [hl]                                     ; $670b: $56
	ld   e, [hl]                                     ; $670c: $5e
	ld   c, h                                        ; $670d: $4c
	adc  h                                           ; $670e: $8c

jr_075_670f:
	ld   hl, sp+$18                                  ; $670f: $f8 $18
	add  c                                           ; $6711: $81
	db   $e4                                         ; $6712: $e4
	jr   nz, jr_075_670f                             ; $6713: $20 $fa

	call $92c2                                       ; $6715: $cd $c2 $92
	add  d                                           ; $6718: $82
	ld   [bc], a                                     ; $6719: $02
	dec  b                                           ; $671a: $05
	nop                                              ; $671b: $00
	dec  de                                          ; $671c: $1b
	sub  b                                           ; $671d: $90
	ld   d, $10                                      ; $671e: $16 $10
	dec  l                                           ; $6720: $2d
	nop                                              ; $6721: $00
	jp   c, $1c81                                    ; $6722: $da $81 $1c

	rrca                                             ; $6725: $0f
	ld   [hl], d                                     ; $6726: $72
	inc  c                                           ; $6727: $0c
	di                                               ; $6728: $f3
	rrca                                             ; $6729: $0f
	and  h                                           ; $672a: $a4
	jr   jr_075_6771                                 ; $672b: $18 $44

	inc  a                                           ; $672d: $3c
	add  e                                           ; $672e: $83
	ld   a, e                                        ; $672f: $7b
	adc  h                                           ; $6730: $8c
	db   $fc                                         ; $6731: $fc
	push de                                          ; $6732: $d5
	push hl                                          ; $6733: $e5
	ld   [hl], b                                     ; $6734: $70
	add  c                                           ; $6735: $81
	ld   a, [hl]                                     ; $6736: $7e
	ld   bc, $7c7d                                   ; $6737: $01 $7d $7c
	add  b                                           ; $673a: $80
	ld   h, b                                        ; $673b: $60
	jr   @+$52                                       ; $673c: $18 $50

	ld   b, b                                        ; $673e: $40
	ld   b, e                                        ; $673f: $43
	ld   b, b                                        ; $6740: $40
	ld   b, e                                        ; $6741: $43
	ld   b, b                                        ; $6742: $40
	ld   b, d                                        ; $6743: $42
	ld   b, b                                        ; $6744: $40
	ld   [de], a                                     ; $6745: $12
	nop                                              ; $6746: $00
	ld   [hl], b                                     ; $6747: $70
	nop                                              ; $6748: $00
	add  c                                           ; $6749: $81
	nop                                              ; $674a: $00
	ld   b, $00                                      ; $674b: $06 $00
	dec  d                                           ; $674d: $15
	nop                                              ; $674e: $00
	ldh  [rP1], a                                    ; $674f: $e0 $00
	jp   nc, $0400                                   ; $6751: $d2 $00 $04

	nop                                              ; $6754: $00
	dec  hl                                          ; $6755: $2b
	add  c                                           ; $6756: $81
	inc  c                                           ; $6757: $0c
	nop                                              ; $6758: $00
	ld   c, h                                        ; $6759: $4c
	add  a                                           ; $675a: $87
	inc  c                                           ; $675b: $0c
	ld   [bc], a                                     ; $675c: $02
	sbc  h                                           ; $675d: $9c
	inc  c                                           ; $675e: $0c
	inc  l                                           ; $675f: $2c
	adc  d                                           ; $6760: $8a
	ld   [bc], a                                     ; $6761: $02
	add  b                                           ; $6762: $80
	ld   a, $80                                      ; $6763: $3e $80
	nop                                              ; $6765: $00
	adc  d                                           ; $6766: $8a
	pop  bc                                          ; $6767: $c1
	add  b                                           ; $6768: $80
	rst  JumpTable                                         ; $6769: $df
	add  b                                           ; $676a: $80
	ret  nz                                          ; $676b: $c0

	adc  d                                           ; $676c: $8a
	ld   [bc], a                                     ; $676d: $02
	add  b                                           ; $676e: $80
	ld   a, $80                                      ; $676f: $3e $80

jr_075_6771:
	nop                                              ; $6771: $00
	adc  d                                           ; $6772: $8a
	add  d                                           ; $6773: $82
	add  b                                           ; $6774: $80
	cp   [hl]                                        ; $6775: $be
	add  b                                           ; $6776: $80
	add  b                                           ; $6777: $80
	adc  d                                           ; $6778: $8a
	dec  b                                           ; $6779: $05
	add  b                                           ; $677a: $80
	ld   a, l                                        ; $677b: $7d
	add  b                                           ; $677c: $80
	ld   bc, $828a                                   ; $677d: $01 $8a $82
	add  b                                           ; $6780: $80
	cp   [hl]                                        ; $6781: $be
	add  b                                           ; $6782: $80
	add  b                                           ; $6783: $80
	add  c                                           ; $6784: $81
	ld   e, $04                                      ; $6785: $1e $04
	ld   de, $1610                                   ; $6787: $11 $10 $16
	db   $10                                         ; $678a: $10
	inc  d                                           ; $678b: $14
	add  l                                           ; $678c: $85
	stop                                             ; $678d: $10 $00
	dec  e                                           ; $678f: $1d
	add  b                                           ; $6790: $80
	ld   bc, $f902                                   ; $6791: $01 $02 $f9
	rlca                                             ; $6794: $07
	ld   bc, $0080                                   ; $6795: $01 $80 $00
	add  hl, bc                                      ; $6798: $09
	ld   b, b                                        ; $6799: $40
	nop                                              ; $679a: $00
	ld   a, b                                        ; $679b: $78
	nop                                              ; $679c: $00
	rla                                              ; $679d: $17
	nop                                              ; $679e: $00
	xor  e                                           ; $679f: $ab
	nop                                              ; $67a0: $00
	add  h                                           ; $67a1: $84
	rrca                                             ; $67a2: $0f
	add  d                                           ; $67a3: $82
	nop                                              ; $67a4: $00
	add  b                                           ; $67a5: $80
	rrca                                             ; $67a6: $0f

jr_075_67a7:
	add  d                                           ; $67a7: $82
	nop                                              ; $67a8: $00
	add  b                                           ; $67a9: $80
	rrca                                             ; $67aa: $0f
	add  b                                           ; $67ab: $80
	nop                                              ; $67ac: $00
	ld   bc, $ff0f                                   ; $67ad: $01 $0f $ff
	add  d                                           ; $67b0: $82
	nop                                              ; $67b1: $00
	add  b                                           ; $67b2: $80
	rst  $38                                         ; $67b3: $ff
	add  d                                           ; $67b4: $82
	nop                                              ; $67b5: $00
	add  b                                           ; $67b6: $80
	cp   $80                                         ; $67b7: $fe $80
	nop                                              ; $67b9: $00
	inc  e                                           ; $67ba: $1c
	db   $f4                                         ; $67bb: $f4
	ldh  a, [rAUD1LEN]                               ; $67bc: $f0 $11
	ldh  [$e6], a                                    ; $67be: $e0 $e6
	db   $e4                                         ; $67c0: $e4
	db   $ed                                         ; $67c1: $ed
	db   $e4                                         ; $67c2: $e4
	db   $e3                                         ; $67c3: $e3
	ldh  [$e6], a                                    ; $67c4: $e0 $e6

jr_075_67c6:
	add  sp, -$14                                    ; $67c6: $e8 $ec
	add  sp, $08                                     ; $67c8: $e8 $08
	ld   sp, hl                                      ; $67ca: $f9
	ld   e, h                                        ; $67cb: $5c
	add  e                                           ; $67cc: $83
	ld   l, b                                        ; $67cd: $68
	rlca                                             ; $67ce: $07
	call c, $a00f                                    ; $67cf: $dc $0f $a0
	ld   e, $64                                      ; $67d2: $1e $64
	jr   nc, jr_075_67c6                             ; $67d4: $30 $f0

	rlca                                             ; $67d6: $07
	add  a                                           ; $67d7: $87
	add  b                                           ; $67d8: $80
	ccf                                              ; $67d9: $3f
	dec  b                                           ; $67da: $05
	rst  $38                                         ; $67db: $ff
	sbc  d                                           ; $67dc: $9a
	ld   a, [$ef08]                                  ; $67dd: $fa $08 $ef
	ld   h, a                                        ; $67e0: $67
	add  b                                           ; $67e1: $80
	db   $fc                                         ; $67e2: $fc
	ld   [bc], a                                     ; $67e3: $02
	nop                                              ; $67e4: $00
	jr   nz, jr_075_67a7                             ; $67e5: $20 $c0

	add  b                                           ; $67e7: $80
	add  b                                           ; $67e8: $80
	add  b                                           ; $67e9: $80
	nop                                              ; $67ea: $00
	add  b                                           ; $67eb: $80
	ldh  a, [rP1]                                    ; $67ec: $f0 $00
	dec  a                                           ; $67ee: $3d
	add  b                                           ; $67ef: $80
	nop                                              ; $67f0: $00
	ld   bc, $8480                                   ; $67f1: $01 $80 $84
	add  e                                           ; $67f4: $83
	nop                                              ; $67f5: $00
	ld   bc, $0039                                   ; $67f6: $01 $39 $00
	add  b                                           ; $67f9: $80
	ld   bc, $3f80                                   ; $67fa: $01 $80 $3f
	rlca                                             ; $67fd: $07
	rlc  b                                           ; $67fe: $cb $00
	ld   [bc], a                                     ; $6800: $02
	nop                                              ; $6801: $00
	ld   bc, $0900                                   ; $6802: $01 $00 $09
	ld   bc, $0680                                   ; $6805: $01 $80 $06
	ld   bc, $19d9                                   ; $6808: $01 $d9 $19
	add  b                                           ; $680b: $80
	rst  $20                                         ; $680c: $e7
	add  b                                           ; $680d: $80
	call c, $0080                                    ; $680e: $dc $80 $00
	add  b                                           ; $6811: $80
	rra                                              ; $6812: $1f
	add  b                                           ; $6813: $80
	ld   h, b                                        ; $6814: $60
	add  b                                           ; $6815: $80
	sbc  h                                           ; $6816: $9c
	add  b                                           ; $6817: $80
	ld   [hl], b                                     ; $6818: $70
	add  b                                           ; $6819: $80
	jp   nz, $0880                                   ; $681a: $c2 $80 $08

	add  b                                           ; $681d: $80
	inc  b                                           ; $681e: $04
	add  b                                           ; $681f: $80
	nop                                              ; $6820: $00
	add  b                                           ; $6821: $80
	rst  $38                                         ; $6822: $ff
	add  b                                           ; $6823: $80
	nop                                              ; $6824: $00
	add  b                                           ; $6825: $80
	ld   a, [bc]                                     ; $6826: $0a
	add  b                                           ; $6827: $80
	ld   b, $80                                      ; $6828: $06 $80
	call $fd80                                       ; $682a: $cd $80 $fd
	add  b                                           ; $682d: $80
	rst  ToBoot                                         ; $682e: $c7
	add  b                                           ; $682f: $80
	nop                                              ; $6830: $00
	add  b                                           ; $6831: $80
	rst  $38                                         ; $6832: $ff
	add  b                                           ; $6833: $80
	nop                                              ; $6834: $00
	add  b                                           ; $6835: $80
	inc  b                                           ; $6836: $04
	add  b                                           ; $6837: $80
	cp   d                                           ; $6838: $ba
	add  b                                           ; $6839: $80
	db   $fc                                         ; $683a: $fc
	add  b                                           ; $683b: $80
	sbc  c                                           ; $683c: $99
	add  b                                           ; $683d: $80
	rst  $38                                         ; $683e: $ff
	add  b                                           ; $683f: $80
	nop                                              ; $6840: $00
	add  b                                           ; $6841: $80
	rst  $38                                         ; $6842: $ff
	add  d                                           ; $6843: $82
	nop                                              ; $6844: $00
	add  b                                           ; $6845: $80
	inc  d                                           ; $6846: $14
	add  b                                           ; $6847: $80
	rrca                                             ; $6848: $0f
	add  b                                           ; $6849: $80
	res  0, b                                        ; $684a: $cb $80
	inc  h                                           ; $684c: $24
	add  b                                           ; $684d: $80
	nop                                              ; $684e: $00
	add  b                                           ; $684f: $80
	rst  $38                                         ; $6850: $ff
	add  d                                           ; $6851: $82
	nop                                              ; $6852: $00
	add  b                                           ; $6853: $80
	dec  bc                                          ; $6854: $0b
	add  b                                           ; $6855: $80
	ei                                               ; $6856: $fb
	add  b                                           ; $6857: $80
	ld   l, a                                        ; $6858: $6f
	add  b                                           ; $6859: $80
	ld   a, [de]                                     ; $685a: $1a
	add  b                                           ; $685b: $80
	nop                                              ; $685c: $00
	add  b                                           ; $685d: $80
	rst  $38                                         ; $685e: $ff
	add  b                                           ; $685f: $80
	nop                                              ; $6860: $00
	add  b                                           ; $6861: $80
	dec  c                                           ; $6862: $0d
	add  b                                           ; $6863: $80
	ld   d, a                                        ; $6864: $57
	add  b                                           ; $6865: $80
	cp   h                                           ; $6866: $bc
	add  b                                           ; $6867: $80
	db   $fd                                         ; $6868: $fd
	add  b                                           ; $6869: $80

jr_075_686a:
	sbc  [hl]                                        ; $686a: $9e
	add  b                                           ; $686b: $80
	nop                                              ; $686c: $00
	add  b                                           ; $686d: $80
	rst  $38                                         ; $686e: $ff
	add  b                                           ; $686f: $80

jr_075_6870:
	nop                                              ; $6870: $00
	add  b                                           ; $6871: $80
	inc  bc                                          ; $6872: $03
	add  b                                           ; $6873: $80

jr_075_6874:
	ld   h, b                                        ; $6874: $60
	add  b                                           ; $6875: $80
	ld   hl, sp-$80                                  ; $6876: $f8 $80
	ret  nz                                          ; $6878: $c0

	add  b                                           ; $6879: $80
	ldh  [c], a                                      ; $687a: $e2
	ld   bc, $000d                                   ; $687b: $01 $0d $00
	add  b                                           ; $687e: $80
	ldh  a, [rSB]                                    ; $687f: $f0 $01
	ld   a, h                                        ; $6881: $7c
	ld   [hl], b                                     ; $6882: $70
	add  b                                           ; $6883: $80
	sbc  b                                           ; $6884: $98
	ld   bc, $e6e7                                   ; $6885: $01 $e7 $e6
	add  b                                           ; $6888: $80
	add  hl, de                                      ; $6889: $19
	add  b                                           ; $688a: $80
	ld   c, $80                                      ; $688b: $0e $80
	add  e                                           ; $688d: $83
	inc  b                                           ; $688e: $04
	ld   e, e                                        ; $688f: $5b
	nop                                              ; $6890: $00
	inc  b                                           ; $6891: $04
	nop                                              ; $6892: $00
	db   $10                                         ; $6893: $10
	add  c                                           ; $6894: $81
	nop                                              ; $6895: $00
	ld   bc, $0040                                   ; $6896: $01 $40 $00
	add  b                                           ; $6899: $80
	add  b                                           ; $689a: $80
	ld   bc, $e0ef                                   ; $689b: $01 $ef $e0
	add  b                                           ; $689e: $80
	ccf                                              ; $689f: $3f
	ld   e, c                                        ; $68a0: $59
	ld   [bc], a                                     ; $68a1: $02
	add  a                                           ; $68a2: $87
	nop                                              ; $68a3: $00
	add  [hl]                                        ; $68a4: $86
	rrca                                             ; $68a5: $0f
	add  [hl]                                        ; $68a6: $86
	nop                                              ; $68a7: $00
	nop                                              ; $68a8: $00
	rst  $38                                         ; $68a9: $ff
	add  b                                           ; $68aa: $80
	cp   $80                                         ; $68ab: $fe $80
	rst  $38                                         ; $68ad: $ff
	add  b                                           ; $68ae: $80
	cp   $00                                         ; $68af: $fe $00
	rst  $38                                         ; $68b1: $ff
	add  l                                           ; $68b2: $85
	nop                                              ; $68b3: $00
	ld   [$fd57], sp                                 ; $68b4: $08 $57 $fd
	ld   bc, $01fd                                   ; $68b7: $01 $fd $01
	ei                                               ; $68ba: $fb
	inc  bc                                          ; $68bb: $03
	ei                                               ; $68bc: $fb
	ld   d, h                                        ; $68bd: $54
	add  l                                           ; $68be: $85
	nop                                              ; $68bf: $00
	nop                                              ; $68c0: $00
	rst  $38                                         ; $68c1: $ff
	add  d                                           ; $68c2: $82
	rst  JumpTable                                         ; $68c3: $df
	add  c                                           ; $68c4: $81
	cp   a                                           ; $68c5: $bf
	nop                                              ; $68c6: $00
	ld   b, b                                        ; $68c7: $40
	add  l                                           ; $68c8: $85
	nop                                              ; $68c9: $00
	add  [hl]                                        ; $68ca: $86
	rst  $38                                         ; $68cb: $ff
	nop                                              ; $68cc: $00
	nop                                              ; $68cd: $00
	add  c                                           ; $68ce: $81
	ldh  a, [$80]                                    ; $68cf: $f0 $80
	nop                                              ; $68d1: $00
	add  h                                           ; $68d2: $84
	ldh  a, [$80]                                    ; $68d3: $f0 $80
	nop                                              ; $68d5: $00
	add  b                                           ; $68d6: $80
	ldh  a, [rSB]                                    ; $68d7: $f0 $01
	and  [hl]                                        ; $68d9: $a6
	xor  c                                           ; $68da: $a9
	add  b                                           ; $68db: $80
	or   d                                           ; $68dc: $b2
	inc  bc                                          ; $68dd: $03
	ld   l, c                                        ; $68de: $69
	jp   hl                                          ; $68df: $e9


	ld   [hl-], a                                    ; $68e0: $32
	ldh  a, [c]                                      ; $68e1: $f2
	add  b                                           ; $68e2: $80
	db   $eb                                         ; $68e3: $eb
	ld   bc, $7535                                   ; $68e4: $01 $35 $75
	add  b                                           ; $68e7: $80
	jr   nz, jr_075_686a                             ; $68e8: $20 $80

	ret  nz                                          ; $68ea: $c0

	add  b                                           ; $68eb: $80
	ld   b, l                                        ; $68ec: $45
	add  b                                           ; $68ed: $80
	jr   z, jr_075_6870                              ; $68ee: $28 $80

	ld   b, l                                        ; $68f0: $45
	add  b                                           ; $68f1: $80
	jr   z, jr_075_6874                              ; $68f2: $28 $80

	rst  $38                                         ; $68f4: $ff
	add  b                                           ; $68f5: $80
	ld   d, l                                        ; $68f6: $55
	add  d                                           ; $68f7: $82
	nop                                              ; $68f8: $00
	add  b                                           ; $68f9: $80
	inc  d                                           ; $68fa: $14
	add  b                                           ; $68fb: $80
	and  d                                           ; $68fc: $a2
	add  b                                           ; $68fd: $80
	inc  d                                           ; $68fe: $14
	add  b                                           ; $68ff: $80
	and  d                                           ; $6900: $a2
	add  b                                           ; $6901: $80
	rst  $38                                         ; $6902: $ff
	add  b                                           ; $6903: $80
	ld   d, l                                        ; $6904: $55
	add  d                                           ; $6905: $82
	nop                                              ; $6906: $00

jr_075_6907:
	ld   bc, $808f                                   ; $6907: $01 $8f $80
	add  b                                           ; $690a: $80
	nop                                              ; $690b: $00
	add  b                                           ; $690c: $80
	add  b                                           ; $690d: $80
	add  b                                           ; $690e: $80
	nop                                              ; $690f: $00
	add  b                                           ; $6910: $80
	add  b                                           ; $6911: $80
	add  h                                           ; $6912: $84
	nop                                              ; $6913: $00
	nop                                              ; $6914: $00
	ldh  a, [$85]                                    ; $6915: $f0 $85
	nop                                              ; $6917: $00
	ld   [$fffd], sp                                 ; $6918: $08 $fd $ff
	db   $fc                                         ; $691b: $fc
	rst  $38                                         ; $691c: $ff
	db   $fc                                         ; $691d: $fc
	rst  $38                                         ; $691e: $ff
	db   $fc                                         ; $691f: $fc
	rst  $38                                         ; $6920: $ff
	ld   bc, $0085                                   ; $6921: $01 $85 $00
	ld   bc, $5fa0                                   ; $6924: $01 $a0 $5f
	add  b                                           ; $6927: $80
	ld   a, [hl+]                                    ; $6928: $2a
	add  b                                           ; $6929: $80
	ld   d, l                                        ; $692a: $55
	add  b                                           ; $692b: $80
	nop                                              ; $692c: $00
	nop                                              ; $692d: $00
	rst  $38                                         ; $692e: $ff
	add  l                                           ; $692f: $85
	nop                                              ; $6930: $00
	ld   bc, $ff03                                   ; $6931: $01 $03 $ff
	add  b                                           ; $6934: $80
	ei                                               ; $6935: $fb
	inc  b                                           ; $6936: $04
	ld   d, [hl]                                     ; $6937: $56
	ld   d, a                                        ; $6938: $57
	nop                                              ; $6939: $00
	inc  bc                                          ; $693a: $03
	cp   $85                                         ; $693b: $fe $85
	nop                                              ; $693d: $00
	ld   [$efb0], sp                                 ; $693e: $08 $b0 $ef
	nop                                              ; $6941: $00
	ldh  [rAUD2ENV], a                               ; $6942: $e0 $17
	rst  $30                                         ; $6944: $f7
	jr   nz, jr_075_6907                             ; $6945: $20 $c0

	cp   a                                           ; $6947: $bf
	add  l                                           ; $6948: $85
	nop                                              ; $6949: $00
	ld   [$ded1], sp                                 ; $694a: $08 $d1 $de
	ldh  a, [rP1]                                    ; $694d: $f0 $00
	cpl                                              ; $694f: $2f
	rst  JumpTable                                         ; $6950: $df
	ldh  a, [rP1]                                    ; $6951: $f0 $00
	rst  $38                                         ; $6953: $ff
	add  l                                           ; $6954: $85
	nop                                              ; $6955: $00
	ld   bc, $17e8                                   ; $6956: $01 $e8 $17
	add  b                                           ; $6959: $80
	ld   a, [bc]                                     ; $695a: $0a
	add  b                                           ; $695b: $80
	dec  d                                           ; $695c: $15
	add  b                                           ; $695d: $80
	nop                                              ; $695e: $00
	nop                                              ; $695f: $00
	rst  $38                                         ; $6960: $ff
	adc  c                                           ; $6961: $89
	rrca                                             ; $6962: $0f
	add  b                                           ; $6963: $80
	rlca                                             ; $6964: $07
	add  b                                           ; $6965: $80
	ld   [$0f01], sp                                 ; $6966: $08 $01 $0f
	rst  $38                                         ; $6969: $ff
	add  b                                           ; $696a: $80
	cp   $80                                         ; $696b: $fe $80
	rst  $38                                         ; $696d: $ff
	add  b                                           ; $696e: $80
	cp   $80                                         ; $696f: $fe $80
	rst  $38                                         ; $6971: $ff
	add  b                                           ; $6972: $80
	cp   $80                                         ; $6973: $fe $80
	rst  $38                                         ; $6975: $ff
	add  b                                           ; $6976: $80
	cp   $06                                         ; $6977: $fe $06
	and  b                                           ; $6979: $a0
	ei                                               ; $697a: $fb
	dec  de                                          ; $697b: $1b
	rst  $30                                         ; $697c: $f7
	scf                                              ; $697d: $37
	or   $76                                         ; $697e: $f6 $76
	add  b                                           ; $6980: $80
	xor  $80                                         ; $6981: $ee $80
	db   $ed                                         ; $6983: $ed
	dec  b                                           ; $6984: $05
	db   $db                                         ; $6985: $db
	ld   a, e                                        ; $6986: $7b
	and  a                                           ; $6987: $a7
	rra                                              ; $6988: $1f
	ld   e, $06                                      ; $6989: $1e $06
	add  d                                           ; $698b: $82
	ld   a, a                                        ; $698c: $7f
	add  a                                           ; $698d: $87
	rst  $38                                         ; $698e: $ff
	ld   [bc], a                                     ; $698f: $02
	rra                                              ; $6990: $1f
	rst  $38                                         ; $6991: $ff
	rra                                              ; $6992: $1f
	sbc  c                                           ; $6993: $99
	rst  $38                                         ; $6994: $ff
	add  b                                           ; $6995: $80
	cp   $80                                         ; $6996: $fe $80
	db   $fd                                         ; $6998: $fd
	nop                                              ; $6999: $00
	db   $fc                                         ; $699a: $fc
	add  c                                           ; $699b: $81
	rst  $38                                         ; $699c: $ff
	add  b                                           ; $699d: $80
	ei                                               ; $699e: $fb
	add  b                                           ; $699f: $80
	rst  $30                                         ; $69a0: $f7
	add  b                                           ; $69a1: $80
	res  0, b                                        ; $69a2: $cb $80
	or   a                                           ; $69a4: $b7
	add  b                                           ; $69a5: $80
	ld   c, e                                        ; $69a6: $4b
	add  b                                           ; $69a7: $80
	or   e                                           ; $69a8: $b3
	inc  bc                                          ; $69a9: $03
	inc  bc                                          ; $69aa: $03
	rst  $38                                         ; $69ab: $ff
	ld   a, a                                        ; $69ac: $7f
	rst  $38                                         ; $69ad: $ff
	add  b                                           ; $69ae: $80
	add  b                                           ; $69af: $80
	add  d                                           ; $69b0: $82
	cp   a                                           ; $69b1: $bf
	add  b                                           ; $69b2: $80
	or   b                                           ; $69b3: $b0
	nop                                              ; $69b4: $00
	or   a                                           ; $69b5: $b7
	add  c                                           ; $69b6: $81
	cp   a                                           ; $69b7: $bf
	nop                                              ; $69b8: $00
	ld   [hl], a                                     ; $69b9: $77
	add  c                                           ; $69ba: $81
	rst  $38                                         ; $69bb: $ff
	add  b                                           ; $69bc: $80
	nop                                              ; $69bd: $00
	add  d                                           ; $69be: $82
	rst  $38                                         ; $69bf: $ff
	add  b                                           ; $69c0: $80
	nop                                              ; $69c1: $00
	add  [hl]                                        ; $69c2: $86
	rst  $38                                         ; $69c3: $ff
	add  b                                           ; $69c4: $80
	nop                                              ; $69c5: $00
	add  d                                           ; $69c6: $82
	rst  $38                                         ; $69c7: $ff
	add  b                                           ; $69c8: $80
	ld   bc, $fd82                                   ; $69c9: $01 $82 $fd
	inc  bc                                          ; $69cc: $03
	ldh  a, [c]                                      ; $69cd: $f2
	rst  $30                                         ; $69ce: $f7
	push af                                          ; $69cf: $f5
	or   $80                                         ; $69d0: $f6 $80
	ld   [hl], $02                                   ; $69d2: $36 $02
	or   h                                           ; $69d4: $b4
	or   [hl]                                        ; $69d5: $b6
	or   d                                           ; $69d6: $b2
	add  l                                           ; $69d7: $85
	or   [hl]                                        ; $69d8: $b6
	inc  bc                                          ; $69d9: $03
	nop                                              ; $69da: $00
	ld   a, a                                        ; $69db: $7f
	ld   b, b                                        ; $69dc: $40
	ld   a, a                                        ; $69dd: $7f
	add  d                                           ; $69de: $82
	ld   b, b                                        ; $69df: $40
	dec  bc                                          ; $69e0: $0b
	ld   b, c                                        ; $69e1: $41
	ld   b, b                                        ; $69e2: $40
	ld   b, [hl]                                     ; $69e3: $46
	ld   b, c                                        ; $69e4: $41
	ld   b, l                                        ; $69e5: $45
	ld   c, h                                        ; $69e6: $4c
	ld   c, [hl]                                     ; $69e7: $4e
	ld   b, [hl]                                     ; $69e8: $46
	ld   b, a                                        ; $69e9: $47
	rst  $38                                         ; $69ea: $ff
	nop                                              ; $69eb: $00
	rst  $38                                         ; $69ec: $ff
	add  b                                           ; $69ed: $80
	nop                                              ; $69ee: $00
	dec  c                                           ; $69ef: $0d
	ld   a, l                                        ; $69f0: $7d
	ld   c, e                                        ; $69f1: $4b
	ld   e, e                                        ; $69f2: $5b
	db   $db                                         ; $69f3: $db
	ld   [$2b6b], sp                                 ; $69f4: $08 $6b $2b
	xor  e                                           ; $69f7: $ab
	ret  z                                           ; $69f8: $c8

	ld   a, a                                        ; $69f9: $7f
	rst  $20                                         ; $69fa: $e7
	rst  $38                                         ; $69fb: $ff
	dec  b                                           ; $69fc: $05
	rst  $38                                         ; $69fd: $ff
	add  d                                           ; $69fe: $82
	nop                                              ; $69ff: $00
	dec  bc                                          ; $6a00: $0b
	ld   b, b                                        ; $6a01: $40
	ret  nz                                          ; $6a02: $c0

	ret  nc                                          ; $6a03: $d0

	ldh  a, [rP1]                                    ; $6a04: $f0 $00
	ld   hl, sp+$18                                  ; $6a06: $f8 $18
	ldh  a, [$ef]                                    ; $6a08: $f0 $ef
	rst  $38                                         ; $6a0a: $ff
	ld   e, a                                        ; $6a0b: $5f
	rst  $38                                         ; $6a0c: $ff
	add  h                                           ; $6a0d: $84
	nop                                              ; $6a0e: $00
	add  b                                           ; $6a0f: $80
	ld   bc, $4803                                   ; $6a10: $01 $03 $48
	ret  c                                           ; $6a13: $d8

	ld   c, c                                        ; $6a14: $49
	reti                                             ; $6a15: $d9


	add  d                                           ; $6a16: $82
	rst  $38                                         ; $6a17: $ff
	add  h                                           ; $6a18: $84
	nop                                              ; $6a19: $00
	add  b                                           ; $6a1a: $80
	ld   d, l                                        ; $6a1b: $55
	add  b                                           ; $6a1c: $80
	xor  d                                           ; $6a1d: $aa
	add  b                                           ; $6a1e: $80
	ld   d, l                                        ; $6a1f: $55
	nop                                              ; $6a20: $00
	rst  $38                                         ; $6a21: $ff
	adc  c                                           ; $6a22: $89
	rrca                                             ; $6a23: $0f
	add  b                                           ; $6a24: $80
	ld   [$0780], sp                                 ; $6a25: $08 $80 $07
	ld   bc, $00f0                                   ; $6a28: $01 $f0 $00
	add  b                                           ; $6a2b: $80
	db   $f4                                         ; $6a2c: $f4
	add  b                                           ; $6a2d: $80
	ld   [$f480], a                                  ; $6a2e: $ea $80 $f4
	add  b                                           ; $6a31: $80
	jp   z, $3080                                    ; $6a32: $ca $80 $30

	add  b                                           ; $6a35: $80
	and  b                                           ; $6a36: $a0
	add  b                                           ; $6a37: $80
	ret  nc                                          ; $6a38: $d0

	add  b                                           ; $6a39: $80
	ld   l, $84                                      ; $6a3a: $2e $84
	rla                                              ; $6a3c: $17
	add  b                                           ; $6a3d: $80
	dec  bc                                          ; $6a3e: $0b
	add  d                                           ; $6a3f: $82
	ld   c, e                                        ; $6a40: $4b
	add  b                                           ; $6a41: $80
	ld   b, l                                        ; $6a42: $45
	ld   bc, $ffe0                                   ; $6a43: $01 $e0 $ff
	add  b                                           ; $6a46: $80
	ld   a, a                                        ; $6a47: $7f
	nop                                              ; $6a48: $00
	ld   l, a                                        ; $6a49: $6f
	add  c                                           ; $6a4a: $81
	ld   a, a                                        ; $6a4b: $7f
	add  b                                           ; $6a4c: $80
	cp   a                                           ; $6a4d: $bf
	nop                                              ; $6a4e: $00
	or   a                                           ; $6a4f: $b7
	add  c                                           ; $6a50: $81
	cp   a                                           ; $6a51: $bf
	add  b                                           ; $6a52: $80
	rst  JumpTable                                         ; $6a53: $df
	nop                                              ; $6a54: $00
	rlca                                             ; $6a55: $07
	adc  c                                           ; $6a56: $89
	rst  $38                                         ; $6a57: $ff
	add  b                                           ; $6a58: $80
	db   $fc                                         ; $6a59: $fc
	add  b                                           ; $6a5a: $80
	ei                                               ; $6a5b: $fb
	add  b                                           ; $6a5c: $80
	ldh  a, [c]                                      ; $6a5d: $f2
	add  b                                           ; $6a5e: $80
	db   $ed                                         ; $6a5f: $ed
	add  b                                           ; $6a60: $80
	ldh  a, [c]                                      ; $6a61: $f2
	add  b                                           ; $6a62: $80
	db   $ec                                         ; $6a63: $ec
	add  b                                           ; $6a64: $80
	sub  b                                           ; $6a65: $90
	add  b                                           ; $6a66: $80
	ld   h, b                                        ; $6a67: $60
	add  b                                           ; $6a68: $80
	add  b                                           ; $6a69: $80
	add  b                                           ; $6a6a: $80
	nop                                              ; $6a6b: $00
	ld   bc, $4340                                   ; $6a6c: $01 $40 $43
	add  b                                           ; $6a6f: $80
	add  e                                           ; $6a70: $83
	adc  d                                           ; $6a71: $8a
	inc  bc                                          ; $6a72: $03
	nop                                              ; $6a73: $00
	res  1, l                                        ; $6a74: $cb $8d
	cp   a                                           ; $6a76: $bf
	nop                                              ; $6a77: $00
	ld   [hl], a                                     ; $6a78: $77
	adc  l                                           ; $6a79: $8d
	rst  $38                                         ; $6a7a: $ff
	adc  [hl]                                        ; $6a7b: $8e
	db   $fd                                         ; $6a7c: $fd
	adc  [hl]                                        ; $6a7d: $8e
	or   [hl]                                        ; $6a7e: $b6
	inc  bc                                          ; $6a7f: $03
	nop                                              ; $6a80: $00
	ld   b, c                                        ; $6a81: $41
	ld   c, [hl]                                     ; $6a82: $4e
	ld   c, a                                        ; $6a83: $4f
	add  b                                           ; $6a84: $80
	ld   d, h                                        ; $6a85: $54
	add  b                                           ; $6a86: $80
	ld   c, a                                        ; $6a87: $4f
	add  b                                           ; $6a88: $80
	ld   d, a                                        ; $6a89: $57
	add  b                                           ; $6a8a: $80
	ld   b, b                                        ; $6a8b: $40
	add  hl, bc                                      ; $6a8c: $09
	ld   c, d                                        ; $6a8d: $4a
	ld   a, a                                        ; $6a8e: $7f
	ld   [hl], l                                     ; $6a8f: $75
	ld   b, b                                        ; $6a90: $40
	and  d                                           ; $6a91: $a2
	inc  hl                                          ; $6a92: $23
	ld   d, h                                        ; $6a93: $54
	push de                                          ; $6a94: $d5
	ld   b, b                                        ; $6a95: $40
	nop                                              ; $6a96: $00
	add  b                                           ; $6a97: $80
	or   [hl]                                        ; $6a98: $b6
	add  d                                           ; $6a99: $82

jr_075_6a9a:
	nop                                              ; $6a9a: $00
	add  b                                           ; $6a9b: $80
	rst  $38                                         ; $6a9c: $ff
	add  b                                           ; $6a9d: $80
	nop                                              ; $6a9e: $00
	dec  b                                           ; $6a9f: $05
	and  b                                           ; $6aa0: $a0
	ldh  [$3c], a                                    ; $6aa1: $e0 $3c
	db   $fc                                         ; $6aa3: $fc
	cp   h                                           ; $6aa4: $bc
	inc  a                                           ; $6aa5: $3c
	add  b                                           ; $6aa6: $80
	db   $fc                                         ; $6aa7: $fc
	add  b                                           ; $6aa8: $80
	ld   a, h                                        ; $6aa9: $7c
	add  b                                           ; $6aaa: $80
	nop                                              ; $6aab: $00
	add  b                                           ; $6aac: $80
	rst  $38                                         ; $6aad: $ff
	add  c                                           ; $6aae: $81
	nop                                              ; $6aaf: $00
	ld   [bc], a                                     ; $6ab0: $02
	ret  c                                           ; $6ab1: $d8

	reti                                             ; $6ab2: $d9


jr_075_6ab3:
	ld   c, c                                        ; $6ab3: $49
	add  b                                           ; $6ab4: $80
	ld   c, b                                        ; $6ab5: $48
	add  b                                           ; $6ab6: $80
	ld   c, c                                        ; $6ab7: $49
	add  c                                           ; $6ab8: $81
	ld   c, b                                        ; $6ab9: $48
	nop                                              ; $6aba: $00
	nop                                              ; $6abb: $00
	add  b                                           ; $6abc: $80
	rst  $38                                         ; $6abd: $ff
	add  b                                           ; $6abe: $80
	nop                                              ; $6abf: $00
	ld   bc, $bf80                                   ; $6ac0: $01 $80 $bf
	add  b                                           ; $6ac3: $80
	ccf                                              ; $6ac4: $3f
	inc  bc                                          ; $6ac5: $03
	add  b                                           ; $6ac6: $80
	cp   a                                           ; $6ac7: $bf
	nop                                              ; $6ac8: $00
	ccf                                              ; $6ac9: $3f
	add  b                                           ; $6aca: $80

jr_075_6acb:
	cp   a                                           ; $6acb: $bf
	ld   bc, $003f                                   ; $6acc: $01 $3f $00

jr_075_6acf:
	add  b                                           ; $6acf: $80
	rst  $38                                         ; $6ad0: $ff
	add  b                                           ; $6ad1: $80
	nop                                              ; $6ad2: $00

jr_075_6ad3:
	ld   bc, $0efe                                   ; $6ad3: $01 $fe $0e
	add  b                                           ; $6ad6: $80

jr_075_6ad7:
	dec  b                                           ; $6ad7: $05
	add  b                                           ; $6ad8: $80
	ld   a, [bc]                                     ; $6ad9: $0a
	add  b                                           ; $6ada: $80
	rlca                                             ; $6adb: $07
	add  b                                           ; $6adc: $80
	dec  bc                                          ; $6add: $0b
	add  b                                           ; $6ade: $80
	ld   bc, $0980                                   ; $6adf: $01 $80 $09
	add  b                                           ; $6ae2: $80
	ld   bc, $5201                                   ; $6ae3: $01 $01 $52
	and  d                                           ; $6ae6: $a2
	add  b                                           ; $6ae7: $80
	ld   d, d                                        ; $6ae8: $52
	add  b                                           ; $6ae9: $80
	and  d                                           ; $6aea: $a2
	add  b                                           ; $6aeb: $80
	ld   d, d                                        ; $6aec: $52
	add  b                                           ; $6aed: $80
	jp   hl                                          ; $6aee: $e9


	add  b                                           ; $6aef: $80
	pop  bc                                          ; $6af0: $c1
	add  d                                           ; $6af1: $82
	ld   l, [hl]                                     ; $6af2: $6e
	add  b                                           ; $6af3: $80
	ld   h, l                                        ; $6af4: $65
	add  b                                           ; $6af5: $80
	dec  h                                           ; $6af6: $25
	add  b                                           ; $6af7: $80
	ld   [hl+], a                                    ; $6af8: $22
	add  b                                           ; $6af9: $80
	ld   [hl-], a                                    ; $6afa: $32
	add  d                                           ; $6afb: $82
	ld   [de], a                                     ; $6afc: $12
	add  b                                           ; $6afd: $80
	add  hl, de                                      ; $6afe: $19
	add  b                                           ; $6aff: $80
	add  hl, bc                                      ; $6b00: $09
	ld   [bc], a                                     ; $6b01: $02
	ret  c                                           ; $6b02: $d8

	rst  JumpTable                                         ; $6b03: $df
	db   $db                                         ; $6b04: $db
	add  c                                           ; $6b05: $81
	rst  JumpTable                                         ; $6b06: $df
	add  b                                           ; $6b07: $80
	xor  $01                                         ; $6b08: $ee $01
	db   $ed                                         ; $6b0a: $ed
	rst  $28                                         ; $6b0b: $ef
	add  b                                           ; $6b0c: $80
	xor  $80                                         ; $6b0d: $ee $80
	ld   [hl], a                                     ; $6b0f: $77
	inc  bc                                          ; $6b10: $03
	halt                                             ; $6b11: $76
	ld   [hl], a                                     ; $6b12: $77
	dec  de                                          ; $6b13: $1b
	db   $e4                                         ; $6b14: $e4
	add  b                                           ; $6b15: $80
	ret  c                                           ; $6b16: $d8

	add  b                                           ; $6b17: $80
	jr   nz, jr_075_6a9a                             ; $6b18: $20 $80

	ret  nz                                          ; $6b1a: $c0

	add  d                                           ; $6b1b: $82
	nop                                              ; $6b1c: $00
	ld   bc, $1020                                   ; $6b1d: $01 $20 $10
	add  b                                           ; $6b20: $80
	jr   jr_075_6b23                                 ; $6b21: $18 $00

jr_075_6b23:
	jr   nc, jr_075_6ab3                             ; $6b23: $30 $8e

	nop                                              ; $6b25: $00
	add  c                                           ; $6b26: $81
	inc  bc                                          ; $6b27: $03
	nop                                              ; $6b28: $00
	dec  bc                                          ; $6b29: $0b
	add  c                                           ; $6b2a: $81
	inc  sp                                          ; $6b2b: $33
	inc  bc                                          ; $6b2c: $03
	inc  hl                                          ; $6b2d: $23
	inc  sp                                          ; $6b2e: $33
	inc  hl                                          ; $6b2f: $23
	inc  sp                                          ; $6b30: $33
	add  b                                           ; $6b31: $80
	inc  bc                                          ; $6b32: $03
	inc  bc                                          ; $6b33: $03
	dec  sp                                          ; $6b34: $3b
	inc  bc                                          ; $6b35: $03
	ld   d, h                                        ; $6b36: $54
	xor  b                                           ; $6b37: $a8
	add  b                                           ; $6b38: $80
	ld   [hl-], a                                    ; $6b39: $32
	add  b                                           ; $6b3a: $80
	xor  c                                           ; $6b3b: $a9
	add  b                                           ; $6b3c: $80
	ld   [hl-], a                                    ; $6b3d: $32
	add  b                                           ; $6b3e: $80
	xor  c                                           ; $6b3f: $a9
	add  b                                           ; $6b40: $80
	or   d                                           ; $6b41: $b2
	add  b                                           ; $6b42: $80
	xor  c                                           ; $6b43: $a9
	add  b                                           ; $6b44: $80
	or   d                                           ; $6b45: $b2
	add  b                                           ; $6b46: $80
	nop                                              ; $6b47: $00
	add  b                                           ; $6b48: $80
	jr   z, jr_075_6acb                              ; $6b49: $28 $80

	ld   b, l                                        ; $6b4b: $45
	add  b                                           ; $6b4c: $80
	jr   z, jr_075_6acf                              ; $6b4d: $28 $80

	ld   b, l                                        ; $6b4f: $45
	add  b                                           ; $6b50: $80
	jr   z, jr_075_6ad3                              ; $6b51: $28 $80

	ld   b, l                                        ; $6b53: $45
	add  b                                           ; $6b54: $80
	jr   z, jr_075_6ad7                              ; $6b55: $28 $80

	nop                                              ; $6b57: $00
	add  b                                           ; $6b58: $80
	and  d                                           ; $6b59: $a2
	add  b                                           ; $6b5a: $80
	inc  d                                           ; $6b5b: $14
	add  b                                           ; $6b5c: $80
	and  d                                           ; $6b5d: $a2
	add  b                                           ; $6b5e: $80
	inc  d                                           ; $6b5f: $14
	add  b                                           ; $6b60: $80
	and  d                                           ; $6b61: $a2
	add  b                                           ; $6b62: $80
	inc  d                                           ; $6b63: $14
	add  b                                           ; $6b64: $80
	and  d                                           ; $6b65: $a2
	ld   bc, $808f                                   ; $6b66: $01 $8f $80
	add  b                                           ; $6b69: $80
	nop                                              ; $6b6a: $00
	add  b                                           ; $6b6b: $80
	add  b                                           ; $6b6c: $80
	add  b                                           ; $6b6d: $80
	nop                                              ; $6b6e: $00
	add  b                                           ; $6b6f: $80
	add  b                                           ; $6b70: $80
	add  b                                           ; $6b71: $80
	nop                                              ; $6b72: $00
	add  b                                           ; $6b73: $80
	add  b                                           ; $6b74: $80
	add  b                                           ; $6b75: $80
	nop                                              ; $6b76: $00
	ld   de, $404f                                   ; $6b77: $11 $4f $40
	rra                                              ; $6b7a: $1f
	ld   e, a                                        ; $6b7b: $5f
	dec  d                                           ; $6b7c: $15
	ld   e, a                                        ; $6b7d: $5f
	nop                                              ; $6b7e: $00
	ld   e, a                                        ; $6b7f: $5f
	dec  b                                           ; $6b80: $05
	ld   e, a                                        ; $6b81: $5f
	rlca                                             ; $6b82: $07
	ld   e, a                                        ; $6b83: $5f
	rlca                                             ; $6b84: $07
	ld   e, a                                        ; $6b85: $5f
	ld   b, a                                        ; $6b86: $47
	ld   e, a                                        ; $6b87: $5f
	rla                                              ; $6b88: $17
	nop                                              ; $6b89: $00
	add  b                                           ; $6b8a: $80
	rst  $38                                         ; $6b8b: $ff
	inc  b                                           ; $6b8c: $04
	ld   d, l                                        ; $6b8d: $55
	rst  $38                                         ; $6b8e: $ff
	nop                                              ; $6b8f: $00
	rst  $38                                         ; $6b90: $ff
	ld   d, l                                        ; $6b91: $55
	add  [hl]                                        ; $6b92: $86
	rst  $38                                         ; $6b93: $ff
	add  e                                           ; $6b94: $83
	nop                                              ; $6b95: $00
	inc  b                                           ; $6b96: $04
	inc  l                                           ; $6b97: $2c
	inc  [hl]                                        ; $6b98: $34
	inc  l                                           ; $6b99: $2c
	ld   a, $3f                                      ; $6b9a: $3e $3f
	add  c                                           ; $6b9c: $81
	dec  a                                           ; $6b9d: $3d
	add  b                                           ; $6b9e: $80
	ld   a, $01                                      ; $6b9f: $3e $01
	rrca                                             ; $6ba1: $0f
	rlca                                             ; $6ba2: $07
	add  b                                           ; $6ba3: $80
	inc  c                                           ; $6ba4: $0c

jr_075_6ba5:
	add  b                                           ; $6ba5: $80
	ld   a, [de]                                     ; $6ba6: $1a
	add  b                                           ; $6ba7: $80
	inc  a                                           ; $6ba8: $3c
	rlca                                             ; $6ba9: $07
	ld   a, [bc]                                     ; $6baa: $0a
	ld   c, d                                        ; $6bab: $4a
	ld   h, b                                        ; $6bac: $60
	ld   d, b                                        ; $6bad: $50
	ld   a, [hl+]                                    ; $6bae: $2a
	ld   l, [hl]                                     ; $6baf: $6e
	ld   [$803c], sp                                 ; $6bb0: $08 $3c $80
	nop                                              ; $6bb3: $00
	add  d                                           ; $6bb4: $82
	add  b                                           ; $6bb5: $80
	dec  bc                                          ; $6bb6: $0b
	add  l                                           ; $6bb7: $85
	add  a                                           ; $6bb8: $87
	jp   nz, $c2c0                                   ; $6bb9: $c2 $c0 $c2

	jp   $c0c1                                       ; $6bbc: $c3 $c1 $c0


	add  l                                           ; $6bbf: $85
	add  a                                           ; $6bc0: $87
	ei                                               ; $6bc1: $fb
	add  hl, bc                                      ; $6bc2: $09
	add  b                                           ; $6bc3: $80
	ld   bc, $0980                                   ; $6bc4: $01 $80 $09
	add  b                                           ; $6bc7: $80
	ld   bc, $0980                                   ; $6bc8: $01 $80 $09
	add  b                                           ; $6bcb: $80
	ld   bc, $0980                                   ; $6bcc: $01 $80 $09
	add  b                                           ; $6bcf: $80
	ld   bc, $9e00                                   ; $6bd0: $01 $00 $9e
	add  e                                           ; $6bd3: $83
	ld   l, [hl]                                     ; $6bd4: $6e
	add  [hl]                                        ; $6bd5: $86
	ld   l, $80                                      ; $6bd6: $2e $80
	ld   c, $80                                      ; $6bd8: $0e $80
	adc  c                                           ; $6bda: $89
	add  b                                           ; $6bdb: $80
	adc  h                                           ; $6bdc: $8c
	ld   bc, $9484                                   ; $6bdd: $01 $84 $94
	add  b                                           ; $6be0: $80
	ld   d, h                                        ; $6be1: $54
	add  b                                           ; $6be2: $80
	ld   d, [hl]                                     ; $6be3: $56
	add  d                                           ; $6be4: $82
	ld   d, d                                        ; $6be5: $52
	add  b                                           ; $6be6: $80
	db   $10                                         ; $6be7: $10
	ld   bc, $7767                                   ; $6be8: $01 $67 $77
	add  h                                           ; $6beb: $84
	cp   e                                           ; $6bec: $bb
	add  hl, bc                                      ; $6bed: $09
	dec  sp                                          ; $6bee: $3b

jr_075_6bef:
	ld   e, e                                        ; $6bef: $5b
	dec  e                                           ; $6bf0: $1d
	ld   e, l                                        ; $6bf1: $5d
	dec  e                                           ; $6bf2: $1d
	ld   e, l                                        ; $6bf3: $5d
	dec  e                                           ; $6bf4: $1d
	ld   e, l                                        ; $6bf5: $5d
	rst  $28                                         ; $6bf6: $ef
	jr   z, @-$7e                                    ; $6bf7: $28 $80

	xor  b                                           ; $6bf9: $a8
	inc  bc                                          ; $6bfa: $03
	jr   z, jr_075_6ba5                              ; $6bfb: $28 $a8

	or   b                                           ; $6bfd: $b0
	and  h                                           ; $6bfe: $a4
	add  b                                           ; $6bff: $80
	call nc, $9403                                   ; $6c00: $d4 $03 $94
	call nc, $d2d8                                   ; $6c03: $d4 $d8 $d2
	add  b                                           ; $6c06: $80
	ld   a, [$cf01]                                  ; $6c07: $fa $01 $cf
	rst  $30                                         ; $6c0a: $f7
	add  b                                           ; $6c0b: $80
	di                                               ; $6c0c: $f3
	ld   bc, $0100                                   ; $6c0d: $01 $00 $01
	add  b                                           ; $6c10: $80
	ld   sp, hl                                      ; $6c11: $f9
	add  b                                           ; $6c12: $80
	db   $fc                                         ; $6c13: $fc
	add  b                                           ; $6c14: $80
	cp   $80                                         ; $6c15: $fe $80
	nop                                              ; $6c17: $00
	add  c                                           ; $6c18: $81
	rst  $38                                         ; $6c19: $ff
	adc  l                                           ; $6c1a: $8d
	inc  bc                                          ; $6c1b: $03
	ld   bc, $bfcb                                   ; $6c1c: $01 $cb $bf
	add  b                                           ; $6c1f: $80
	xor  a                                           ; $6c20: $af
	dec  b                                           ; $6c21: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c22: $cf
	rst  $28                                         ; $6c23: $ef
	sbc  a                                           ; $6c24: $9f
	rst  $38                                         ; $6c25: $ff
	rst  $28                                         ; $6c26: $ef
	xor  a                                           ; $6c27: $af
	add  d                                           ; $6c28: $82
	adc  a                                           ; $6c29: $8f
	add  b                                           ; $6c2a: $80
	cp   a                                           ; $6c2b: $bf
	ld   de, $068f                                   ; $6c2c: $11 $8f $06
	ld   sp, wNumStructBytesForCurrAnimSpriteSpec                                   ; $6c2f: $31 $f1 $c1
	nop                                              ; $6c32: $00
	inc  sp                                          ; $6c33: $33
	ldh  a, [c]                                      ; $6c34: $f2
	rst  ToBoot                                         ; $6c35: $c7
	rlca                                             ; $6c36: $07
	or   c                                           ; $6c37: $b1
	ld   [hl], b                                     ; $6c38: $70
	db   $e3                                         ; $6c39: $e3
	ldh  [c], a                                      ; $6c3a: $e2
	pop  bc                                          ; $6c3b: $c1
	nop                                              ; $6c3c: $00
	ld   [hl], c                                     ; $6c3d: $71
	pop  af                                          ; $6c3e: $f1
	add  b                                           ; $6c3f: $80
	ld   sp, hl                                      ; $6c40: $f9
	inc  bc                                          ; $6c41: $03
	add  c                                           ; $6c42: $81
	ld   bc, $f171                                   ; $6c43: $01 $71 $f1
	add  b                                           ; $6c46: $80
	pop  hl                                          ; $6c47: $e1
	dec  b                                           ; $6c48: $05
	add  c                                           ; $6c49: $81
	ld   bc, $f171                                   ; $6c4a: $01 $71 $f1
	add  c                                           ; $6c4d: $81
	ld   bc, $b68a                                   ; $6c4e: $01 $8a $b6
	add  b                                           ; $6c51: $80
	or   h                                           ; $6c52: $b4
	add  b                                           ; $6c53: $80
	or   [hl]                                        ; $6c54: $b6
	ld   [bc], a                                     ; $6c55: $02
	ld   d, l                                        ; $6c56: $55
	ld   e, a                                        ; $6c57: $5f
	ld   c, d                                        ; $6c58: $4a
	add  c                                           ; $6c59: $81
	ld   b, b                                        ; $6c5a: $40
	add  b                                           ; $6c5b: $80
	ld   a, a                                        ; $6c5c: $7f
	add  [hl]                                        ; $6c5d: $86
	ld   b, b                                        ; $6c5e: $40
	nop                                              ; $6c5f: $00
	nop                                              ; $6c60: $00
	add  b                                           ; $6c61: $80
	rst  $38                                         ; $6c62: $ff
	add  c                                           ; $6c63: $81
	nop                                              ; $6c64: $00
	add  b                                           ; $6c65: $80
	rst  $38                                         ; $6c66: $ff
	add  [hl]                                        ; $6c67: $86
	nop                                              ; $6c68: $00
	inc  bc                                          ; $6c69: $03
	inc  [hl]                                        ; $6c6a: $34
	inc  a                                           ; $6c6b: $3c
	db   $10                                         ; $6c6c: $10
	jr   jr_075_6bef                                 ; $6c6d: $18 $80

	nop                                              ; $6c6f: $00
	add  b                                           ; $6c70: $80
	rst  $38                                         ; $6c71: $ff
	add  d                                           ; $6c72: $82
	nop                                              ; $6c73: $00
	add  d                                           ; $6c74: $82
	rrca                                             ; $6c75: $0f
	add  b                                           ; $6c76: $80
	ld   de, $2403                                   ; $6c77: $11 $03 $24
	inc  a                                           ; $6c7a: $3c
	jr   jr_075_6c7d                                 ; $6c7b: $18 $00

jr_075_6c7d:
	add  b                                           ; $6c7d: $80
	rst  $38                                         ; $6c7e: $ff
	add  d                                           ; $6c7f: $82
	nop                                              ; $6c80: $00
	add  d                                           ; $6c81: $82
	rst  $38                                         ; $6c82: $ff
	add  b                                           ; $6c83: $80
	nop                                              ; $6c84: $00
	inc  bc                                          ; $6c85: $03
	ld   a, [bc]                                     ; $6c86: $0a
	rrca                                             ; $6c87: $0f
	dec  b                                           ; $6c88: $05
	nop                                              ; $6c89: $00
	add  b                                           ; $6c8a: $80
	rst  $38                                         ; $6c8b: $ff
	add  b                                           ; $6c8c: $80
	nop                                              ; $6c8d: $00
	add  b                                           ; $6c8e: $80
	inc  bc                                          ; $6c8f: $03
	add  b                                           ; $6c90: $80
	ret  nz                                          ; $6c91: $c0

	add  b                                           ; $6c92: $80
	pop  bc                                          ; $6c93: $c1
	ld   bc, $09f9                                   ; $6c94: $01 $f9 $09
	add  b                                           ; $6c97: $80
	ld   bc, $0880                                   ; $6c98: $01 $80 $08
	add  c                                           ; $6c9b: $81
	nop                                              ; $6c9c: $00
	ld   [$050f], sp                                 ; $6c9d: $08 $0f $05
	rrca                                             ; $6ca0: $0f
	nop                                              ; $6ca1: $00
	rrca                                             ; $6ca2: $0f
	nop                                              ; $6ca3: $00
	rrca                                             ; $6ca4: $0f
	ei                                               ; $6ca5: $fb
	ld   c, $84                                      ; $6ca6: $0e $84
	nop                                              ; $6ca8: $00
	dec  c                                           ; $6ca9: $0d
	ld   bc, $7dff                                   ; $6caa: $01 $ff $7d
	rst  $38                                         ; $6cad: $ff
	inc  sp                                          ; $6cae: $33
	rst  $38                                         ; $6caf: $ff
	ld   c, a                                        ; $6cb0: $4f
	rst  $38                                         ; $6cb1: $ff
	rlca                                             ; $6cb2: $07
	nop                                              ; $6cb3: $00
	ld   [hl], a                                     ; $6cb4: $77
	inc  bc                                          ; $6cb5: $03
	rlca                                             ; $6cb6: $07
	ld   b, a                                        ; $6cb7: $47
	add  b                                           ; $6cb8: $80
	inc  bc                                          ; $6cb9: $03
	add  b                                           ; $6cba: $80
	ld   b, a                                        ; $6cbb: $47
	add  b                                           ; $6cbc: $80
	inc  bc                                          ; $6cbd: $03
	add  b                                           ; $6cbe: $80
	ld   b, a                                        ; $6cbf: $47
	add  b                                           ; $6cc0: $80
	inc  bc                                          ; $6cc1: $03
	dec  c                                           ; $6cc2: $0d
	ld   c, [hl]                                     ; $6cc3: $4e
	ld   e, l                                        ; $6cc4: $5d
	db   $10                                         ; $6cc5: $10
	ld   d, $56                                      ; $6cc6: $16 $56
	ld   d, d                                        ; $6cc8: $52
	ld   [de], a                                     ; $6cc9: $12
	ld   d, $56                                      ; $6cca: $16 $56
	ld   d, d                                        ; $6ccc: $52
	ld   [de], a                                     ; $6ccd: $12
	ld   d, $56                                      ; $6cce: $16 $56
	ld   d, b                                        ; $6cd0: $50
	add  b                                           ; $6cd1: $80
	ld   de, $d303                                   ; $6cd2: $11 $03 $d3
	ld   [$e9ec], a                                  ; $6cd5: $ea $ec $e9
	add  b                                           ; $6cd8: $80
	ld   sp, hl                                      ; $6cd9: $f9
	inc  bc                                          ; $6cda: $03
	jp   hl                                          ; $6cdb: $e9


	ld   sp, hl                                      ; $6cdc: $f9
	or   $f4                                         ; $6cdd: $f6 $f4
	add  b                                           ; $6cdf: $80
	ld   a, h                                        ; $6ce0: $7c
	inc  b                                           ; $6ce1: $04
	ld   [hl], h                                     ; $6ce2: $74
	ld   a, h                                        ; $6ce3: $7c
	ld   a, a                                        ; $6ce4: $7f
	ld   a, [hl]                                     ; $6ce5: $7e
	ld   hl, sp-$7a                                  ; $6ce6: $f8 $86
	nop                                              ; $6ce8: $00
	add  e                                           ; $6ce9: $83
	add  b                                           ; $6cea: $80
	rla                                              ; $6ceb: $17
	nop                                              ; $6cec: $00
	ld   b, b                                        ; $6ced: $40
	ret  nz                                          ; $6cee: $c0

	rst  $38                                         ; $6cef: $ff
	ld   b, b                                        ; $6cf0: $40
	rst  $38                                         ; $6cf1: $ff
	ccf                                              ; $6cf2: $3f
	add  b                                           ; $6cf3: $80
	ccf                                              ; $6cf4: $3f
	rst  $38                                         ; $6cf5: $ff
	rrca                                             ; $6cf6: $0f
	cp   a                                           ; $6cf7: $bf
	nop                                              ; $6cf8: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cf9: $cf
	sub  l                                           ; $6cfa: $95
	ld   l, d                                        ; $6cfb: $6a
	ld   d, l                                        ; $6cfc: $55
	dec  [hl]                                        ; $6cfd: $35
	rst  JumpTable                                         ; $6cfe: $df
	rst  $38                                         ; $6cff: $ff
	ld   d, l                                        ; $6d00: $55
	rst  $38                                         ; $6d01: $ff
	ld   a, [hl+]                                    ; $6d02: $2a
	add  b                                           ; $6d03: $80
	add  b                                           ; $6d04: $80
	rst  $38                                         ; $6d05: $ff
	add  b                                           ; $6d06: $80
	ld   d, b                                        ; $6d07: $50
	inc  bc                                          ; $6d08: $03
	dec  d                                           ; $6d09: $15
	rst  $38                                         ; $6d0a: $ff
	ld   b, b                                        ; $6d0b: $40
	xor  d                                           ; $6d0c: $aa
	add  d                                           ; $6d0d: $82
	ld   d, l                                        ; $6d0e: $55
	add  b                                           ; $6d0f: $80
	ld   [$f580], a                                  ; $6d10: $ea $80 $f5
	add  b                                           ; $6d13: $80
	ld   a, $80                                      ; $6d14: $3e $80
	rrca                                             ; $6d16: $0f
	inc  bc                                          ; $6d17: $03
	ld   a, a                                        ; $6d18: $7f
	rst  $38                                         ; $6d19: $ff
	ld   a, [hl+]                                    ; $6d1a: $2a
	xor  d                                           ; $6d1b: $aa
	add  b                                           ; $6d1c: $80
	ld   d, l                                        ; $6d1d: $55
	ld   bc, $505f                                   ; $6d1e: $01 $5f $50
	add  b                                           ; $6d21: $80
	and  b                                           ; $6d22: $a0
	add  b                                           ; $6d23: $80
	ld   d, b                                        ; $6d24: $50
	add  b                                           ; $6d25: $80
	and  b                                           ; $6d26: $a0
	add  b                                           ; $6d27: $80
	ld   d, b                                        ; $6d28: $50
	add  b                                           ; $6d29: $80
	and  b                                           ; $6d2a: $a0
	add  b                                           ; $6d2b: $80
	sub  b                                           ; $6d2c: $90
	add  b                                           ; $6d2d: $80
	nop                                              ; $6d2e: $00
	ld   bc, $b4bb                                   ; $6d2f: $01 $bb $b4
	add  b                                           ; $6d32: $80
	or   [hl]                                        ; $6d33: $b6
	add  b                                           ; $6d34: $80
	or   h                                           ; $6d35: $b4
	add  b                                           ; $6d36: $80
	or   [hl]                                        ; $6d37: $b6
	add  b                                           ; $6d38: $80
	inc  [hl]                                        ; $6d39: $34
	add  b                                           ; $6d3a: $80
	or   [hl]                                        ; $6d3b: $b6
	add  b                                           ; $6d3c: $80
	inc  [hl]                                        ; $6d3d: $34
	add  b                                           ; $6d3e: $80
	or   [hl]                                        ; $6d3f: $b6
	add  b                                           ; $6d40: $80
	ld   c, a                                        ; $6d41: $4f
	add  c                                           ; $6d42: $81
	ld   b, b                                        ; $6d43: $40
	add  b                                           ; $6d44: $80
	ld   c, e                                        ; $6d45: $4b
	add  b                                           ; $6d46: $80
	ld   b, l                                        ; $6d47: $45
	add  b                                           ; $6d48: $80
	ld   c, e                                        ; $6d49: $4b
	add  b                                           ; $6d4a: $80
	ld   b, l                                        ; $6d4b: $45
	add  c                                           ; $6d4c: $81
	ld   b, b                                        ; $6d4d: $40
	add  b                                           ; $6d4e: $80
	rst  $38                                         ; $6d4f: $ff
	add  b                                           ; $6d50: $80
	nop                                              ; $6d51: $00
	ld   bc, $d52a                                   ; $6d52: $01 $2a $d5
	add  b                                           ; $6d55: $80
	db   $eb                                         ; $6d56: $eb
	nop                                              ; $6d57: $00
	rst  $38                                         ; $6d58: $ff
	add  b                                           ; $6d59: $80
	cp   $80                                         ; $6d5a: $fe $80
	ld   d, l                                        ; $6d5c: $55
	add  e                                           ; $6d5d: $83
	nop                                              ; $6d5e: $00
	add  b                                           ; $6d5f: $80
	rrca                                             ; $6d60: $0f
	ld   a, [bc]                                     ; $6d61: $0a
	ld   a, [bc]                                     ; $6d62: $0a
	rrca                                             ; $6d63: $0f
	ld   bc, $010f                                   ; $6d64: $01 $0f $01
	rrca                                             ; $6d67: $0f
	nop                                              ; $6d68: $00
	rrca                                             ; $6d69: $0f
	nop                                              ; $6d6a: $00
	rrca                                             ; $6d6b: $0f
	dec  b                                           ; $6d6c: $05
	add  c                                           ; $6d6d: $81
	nop                                              ; $6d6e: $00
	add  b                                           ; $6d6f: $80
	rst  $38                                         ; $6d70: $ff
	ld   [bc], a                                     ; $6d71: $02
	xor  d                                           ; $6d72: $aa
	rst  $38                                         ; $6d73: $ff
	ld   d, l                                        ; $6d74: $55
	add  e                                           ; $6d75: $83
	rst  $38                                         ; $6d76: $ff
	ld   [bc], a                                     ; $6d77: $02
	ld   d, a                                        ; $6d78: $57
	rst  $38                                         ; $6d79: $ff
	ld   d, a                                        ; $6d7a: $57
	add  c                                           ; $6d7b: $81
	nop                                              ; $6d7c: $00
	add  b                                           ; $6d7d: $80
	jp   $8003                                       ; $6d7e: $c3 $03 $80


	ret  nz                                          ; $6d81: $c0

	ld   b, e                                        ; $6d82: $43
	jp   $c080                                       ; $6d83: $c3 $80 $c0


	add  b                                           ; $6d86: $80
	jp   $c780                                       ; $6d87: $c3 $80 $c7


	ld   [bc], a                                     ; $6d8a: $02
	ret  nz                                          ; $6d8b: $c0

	nop                                              ; $6d8c: $00
	ldh  a, [$8d]                                    ; $6d8d: $f0 $8d
	nop                                              ; $6d8f: $00
	ld   bc, $5faf                                   ; $6d90: $01 $af $5f
	add  b                                           ; $6d93: $80
	cp   a                                           ; $6d94: $bf
	add  b                                           ; $6d95: $80
	ld   e, a                                        ; $6d96: $5f
	add  b                                           ; $6d97: $80
	xor  a                                           ; $6d98: $af
	add  b                                           ; $6d99: $80
	ld   d, l                                        ; $6d9a: $55
	add  b                                           ; $6d9b: $80
	xor  d                                           ; $6d9c: $aa
	add  b                                           ; $6d9d: $80
	ld   d, h                                        ; $6d9e: $54
	add  b                                           ; $6d9f: $80
	xor  b                                           ; $6da0: $a8
	add  b                                           ; $6da1: $80
	nop                                              ; $6da2: $00
	add  b                                           ; $6da3: $80
	rra                                              ; $6da4: $1f
	add  b                                           ; $6da5: $80
	dec  d                                           ; $6da6: $15
	add  b                                           ; $6da7: $80
	ld   a, [bc]                                     ; $6da8: $0a
	add  h                                           ; $6da9: $84
	nop                                              ; $6daa: $00
	add  b                                           ; $6dab: $80
	add  b                                           ; $6dac: $80
	dec  bc                                          ; $6dad: $0b
	dec  b                                           ; $6dae: $05
	rlca                                             ; $6daf: $07
	ld   a, [$54fe]                                  ; $6db0: $fa $fe $54
	ld   d, a                                        ; $6db3: $57
	xor  b                                           ; $6db4: $a8
	xor  a                                           ; $6db5: $af
	inc  bc                                          ; $6db6: $03
	rlca                                             ; $6db7: $07
	and  l                                           ; $6db8: $a5
	and  a                                           ; $6db9: $a7
	add  b                                           ; $6dba: $80
	ld   d, a                                        ; $6dbb: $57
	add  b                                           ; $6dbc: $80
	daa                                              ; $6dbd: $27
	ld   [bc], a                                     ; $6dbe: $02
	dec  a                                           ; $6dbf: $3d
	ld   a, $3a                                      ; $6dc0: $3e $3a
	add  c                                           ; $6dc2: $81
	ld   a, $80                                      ; $6dc3: $3e $80
	ccf                                              ; $6dc5: $3f
	ld   bc, $3f3d                                   ; $6dc6: $01 $3d $3f
	add  b                                           ; $6dc9: $80
	rra                                              ; $6dca: $1f
	ld   bc, $1f1e                                   ; $6dcb: $01 $1e $1f
	add  b                                           ; $6dce: $80
	ld   e, $00                                      ; $6dcf: $1e $00
	ld   a, a                                        ; $6dd1: $7f
	add  b                                           ; $6dd2: $80
	ld   b, b                                        ; $6dd3: $40
	ld   [$a060], sp                                 ; $6dd4: $08 $60 $a0
	jr   nz, jr_075_6e18                             ; $6dd7: $20 $3f

	jr   nz, jr_075_6ddb                             ; $6dd9: $20 $00

jr_075_6ddb:
	add  b                                           ; $6ddb: $80
	ld   [hl], $b9                                   ; $6ddc: $36 $b9
	add  b                                           ; $6dde: $80
	reti                                             ; $6ddf: $d9


	ld   [bc], a                                     ; $6de0: $02
	add  hl, hl                                      ; $6de1: $29
	add  sp, -$4f                                    ; $6de2: $e8 $b1
	add  [hl]                                        ; $6de4: $86
	inc  bc                                          ; $6de5: $03
	nop                                              ; $6de6: $00
	add  e                                           ; $6de7: $83
	add  b                                           ; $6de8: $80
	inc  bc                                          ; $6de9: $03
	add  b                                           ; $6dea: $80
	ld   a, a                                        ; $6deb: $7f
	ld   [bc], a                                     ; $6dec: $02
	add  e                                           ; $6ded: $83
	rst  $38                                         ; $6dee: $ff
	scf                                              ; $6def: $37
	adc  c                                           ; $6df0: $89
	cp   a                                           ; $6df1: $bf
	inc  b                                           ; $6df2: $04
	cp   c                                           ; $6df3: $b9
	cp   [hl]                                        ; $6df4: $be
	or   b                                           ; $6df5: $b0
	cp   a                                           ; $6df6: $bf
	ld   a, a                                        ; $6df7: $7f
	adc  c                                           ; $6df8: $89
	rst  $38                                         ; $6df9: $ff
	inc  bc                                          ; $6dfa: $03
	add  b                                           ; $6dfb: $80
	ld   a, a                                        ; $6dfc: $7f
	nop                                              ; $6dfd: $00
	rst  $38                                         ; $6dfe: $ff
	adc  d                                           ; $6dff: $8a
	db   $fd                                         ; $6e00: $fd
	inc  bc                                          ; $6e01: $03
	ld   bc, $01ff                                   ; $6e02: $01 $ff $01
	rst  $38                                         ; $6e05: $ff
	add  b                                           ; $6e06: $80
	inc  [hl]                                        ; $6e07: $34
	add  b                                           ; $6e08: $80
	or   d                                           ; $6e09: $b2
	add  b                                           ; $6e0a: $80
	inc  [hl]                                        ; $6e0b: $34
	add  b                                           ; $6e0c: $80
	or   d                                           ; $6e0d: $b2
	add  b                                           ; $6e0e: $80
	inc  [hl]                                        ; $6e0f: $34
	add  b                                           ; $6e10: $80
	or   d                                           ; $6e11: $b2
	add  b                                           ; $6e12: $80
	inc  [hl]                                        ; $6e13: $34
	add  b                                           ; $6e14: $80
	or   b                                           ; $6e15: $b0
	add  b                                           ; $6e16: $80
	ld   a, a                                        ; $6e17: $7f

jr_075_6e18:
	add  b                                           ; $6e18: $80
	ld   b, b                                        ; $6e19: $40
	add  b                                           ; $6e1a: $80
	ld   b, h                                        ; $6e1b: $44
	add  d                                           ; $6e1c: $82
	ld   b, [hl]                                     ; $6e1d: $46
	add  b                                           ; $6e1e: $80
	ld   b, b                                        ; $6e1f: $40
	add  b                                           ; $6e20: $80
	ld   c, a                                        ; $6e21: $4f
	add  b                                           ; $6e22: $80
	ld   b, a                                        ; $6e23: $47
	add  b                                           ; $6e24: $80
	rst  $38                                         ; $6e25: $ff
	add  b                                           ; $6e26: $80
	nop                                              ; $6e27: $00
	add  b                                           ; $6e28: $80
	add  b                                           ; $6e29: $80
	add  d                                           ; $6e2a: $82
	push bc                                          ; $6e2b: $c5
	add  b                                           ; $6e2c: $80
	dec  b                                           ; $6e2d: $05
	add  b                                           ; $6e2e: $80
	ldh  [$80], a                                    ; $6e2f: $e0 $80
	rst  $28                                         ; $6e31: $ef
	add  b                                           ; $6e32: $80
	rst  $38                                         ; $6e33: $ff
	add  b                                           ; $6e34: $80
	nop                                              ; $6e35: $00
	add  b                                           ; $6e36: $80
	dec  b                                           ; $6e37: $05
	add  b                                           ; $6e38: $80
	ld   b, l                                        ; $6e39: $45
	add  d                                           ; $6e3a: $82
	ld   c, [hl]                                     ; $6e3b: $4e
	add  b                                           ; $6e3c: $80
	nop                                              ; $6e3d: $00
	add  b                                           ; $6e3e: $80
	rst  ToBoot                                         ; $6e3f: $c7
	add  b                                           ; $6e40: $80
	rst  $38                                         ; $6e41: $ff
	add  d                                           ; $6e42: $82
	nop                                              ; $6e43: $00
	add  b                                           ; $6e44: $80
	ld   [bc], a                                     ; $6e45: $02
	add  b                                           ; $6e46: $80
	add  c                                           ; $6e47: $81
	add  b                                           ; $6e48: $80
	add  d                                           ; $6e49: $82
	add  b                                           ; $6e4a: $80
	inc  bc                                          ; $6e4b: $03
	add  b                                           ; $6e4c: $80
	add  e                                           ; $6e4d: $83
	add  b                                           ; $6e4e: $80
	rst  $38                                         ; $6e4f: $ff
	ld   c, $05                                      ; $6e50: $0e $05
	rlca                                             ; $6e52: $07
	nop                                              ; $6e53: $00
	rlca                                             ; $6e54: $07
	add  b                                           ; $6e55: $80
	add  a                                           ; $6e56: $87
	ld   b, d                                        ; $6e57: $42
	ld   b, l                                        ; $6e58: $45
	and  c                                           ; $6e59: $a1
	and  h                                           ; $6e5a: $a4
	ld   d, b                                        ; $6e5b: $50
	ld   d, h                                        ; $6e5c: $54
	and  c                                           ; $6e5d: $a1
	and  l                                           ; $6e5e: $a5

Jump_075_6e5f:
	ldh  a, [$80]                                    ; $6e5f: $f0 $80
	nop                                              ; $6e61: $00
	ld   [bc], a                                     ; $6e62: $02
	ld   c, $02                                      ; $6e63: $0e $02
	inc  c                                           ; $6e65: $0c
	add  c                                           ; $6e66: $81
	nop                                              ; $6e67: $00
	add  b                                           ; $6e68: $80
	ld   bc, $0083                                   ; $6e69: $01 $83 $00
	jr   nz, @-$0c                                   ; $6e6c: $20 $f2

	inc  bc                                          ; $6e6e: $03
	inc  b                                           ; $6e6f: $04
	rrca                                             ; $6e70: $0f
	jr   nz, jr_075_6eb2                             ; $6e71: $20 $3f

	ret  nz                                          ; $6e73: $c0

	rst  $38                                         ; $6e74: $ff
	add  b                                           ; $6e75: $80
	rst  $38                                         ; $6e76: $ff
	add  b                                           ; $6e77: $80
	rst  $38                                         ; $6e78: $ff
	jr   nc, jr_075_6e9a                             ; $6e79: $30 $1f

	ld   b, $03                                      ; $6e7b: $06 $03
	or   b                                           ; $6e7d: $b0
	ldh  a, [rTMA]                                   ; $6e7e: $f0 $06
	cp   $18                                         ; $6e80: $fe $18
	rst  $38                                         ; $6e82: $ff
	rrca                                             ; $6e83: $0f

jr_075_6e84:
	rst  $38                                         ; $6e84: $ff
	rrca                                             ; $6e85: $0f
	rst  $38                                         ; $6e86: $ff
	ld   c, $ff                                      ; $6e87: $0e $ff
	dec  c                                           ; $6e89: $0d
	rst  $38                                         ; $6e8a: $ff
	add  hl, bc                                      ; $6e8b: $09
	db   $fd                                         ; $6e8c: $fd
	xor  e                                           ; $6e8d: $ab
	add  c                                           ; $6e8e: $81
	rlca                                             ; $6e8f: $07
	rlca                                             ; $6e90: $07
	add  e                                           ; $6e91: $83
	add  a                                           ; $6e92: $87
	inc  hl                                          ; $6e93: $23
	rst  $20                                         ; $6e94: $e7
	add  d                                           ; $6e95: $82
	and  $66                                         ; $6e96: $e6 $66
	and  $80                                         ; $6e98: $e6 $80

jr_075_6e9a:
	db   $e4                                         ; $6e9a: $e4
	ld   bc, $6040                                   ; $6e9b: $01 $40 $60
	add  b                                           ; $6e9e: $80
	ld   e, $80                                      ; $6e9f: $1e $80
	ld   [$0380], sp                                 ; $6ea1: $08 $80 $03
	add  b                                           ; $6ea4: $80
	ccf                                              ; $6ea5: $3f
	add  b                                           ; $6ea6: $80
	nop                                              ; $6ea7: $00
	add  b                                           ; $6ea8: $80
	ld   a, a                                        ; $6ea9: $7f
	add  b                                           ; $6eaa: $80
	rst  $38                                         ; $6eab: $ff
	add  b                                           ; $6eac: $80
	nop                                              ; $6ead: $00
	rlca                                             ; $6eae: $07
	ld   sp, $7e71                                   ; $6eaf: $31 $71 $7e

jr_075_6eb2:
	ld   a, a                                        ; $6eb2: $7f
	or   d                                           ; $6eb3: $b2
	db   $fd                                         ; $6eb4: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6eb5: $cf
	pop  bc                                          ; $6eb6: $c1
	add  b                                           ; $6eb7: $80
	nop                                              ; $6eb8: $00
	add  d                                           ; $6eb9: $82
	rst  $38                                         ; $6eba: $ff
	add  b                                           ; $6ebb: $80
	nop                                              ; $6ebc: $00
	add  b                                           ; $6ebd: $80
	rst  $38                                         ; $6ebe: $ff
	add  b                                           ; $6ebf: $80
	inc  bc                                          ; $6ec0: $03
	add  hl, bc                                      ; $6ec1: $09
	ld   hl, sp-$04                                  ; $6ec2: $f8 $fc
	ld   sp, hl                                      ; $6ec4: $f9
	rst  $38                                         ; $6ec5: $ff
	dec  b                                           ; $6ec6: $05
	rlca                                             ; $6ec7: $07
	db   $fd                                         ; $6ec8: $fd
	rst  $38                                         ; $6ec9: $ff
	db   $fd                                         ; $6eca: $fd
	rst  $38                                         ; $6ecb: $ff
	add  b                                           ; $6ecc: $80
	inc  bc                                          ; $6ecd: $03
	ld   bc, $bf3f                                   ; $6ece: $01 $3f $bf
	add  b                                           ; $6ed1: $80
	add  b                                           ; $6ed2: $80
	ld   a, [bc]                                     ; $6ed3: $0a
	xor  d                                           ; $6ed4: $aa
	ld   a, a                                        ; $6ed5: $7f
	nop                                              ; $6ed6: $00
	rst  $38                                         ; $6ed7: $ff
	ld   d, l                                        ; $6ed8: $55
	rst  $38                                         ; $6ed9: $ff
	ld   d, l                                        ; $6eda: $55
	rst  $38                                         ; $6edb: $ff
	nop                                              ; $6edc: $00
	rst  $38                                         ; $6edd: $ff
	xor  d                                           ; $6ede: $aa
	add  c                                           ; $6edf: $81
	rst  $38                                         ; $6ee0: $ff
	add  b                                           ; $6ee1: $80
	nop                                              ; $6ee2: $00
	dec  bc                                          ; $6ee3: $0b
	xor  d                                           ; $6ee4: $aa
	rst  $38                                         ; $6ee5: $ff
	nop                                              ; $6ee6: $00
	rst  $38                                         ; $6ee7: $ff
	ld   d, l                                        ; $6ee8: $55
	rst  $38                                         ; $6ee9: $ff
	ld   d, l                                        ; $6eea: $55
	rst  $38                                         ; $6eeb: $ff
	jr   z, @+$01                                    ; $6eec: $28 $ff

	add  d                                           ; $6eee: $82
	rst  $38                                         ; $6eef: $ff
	add  b                                           ; $6ef0: $80
	push de                                          ; $6ef1: $d5
	add  b                                           ; $6ef2: $80
	nop                                              ; $6ef3: $00
	dec  bc                                          ; $6ef4: $0b
	xor  d                                           ; $6ef5: $aa
	rst  $38                                         ; $6ef6: $ff
	nop                                              ; $6ef7: $00
	rst  $38                                         ; $6ef8: $ff
	ld   d, l                                        ; $6ef9: $55
	rst  $38                                         ; $6efa: $ff
	ld   d, l                                        ; $6efb: $55
	rst  $38                                         ; $6efc: $ff
	nop                                              ; $6efd: $00
	rst  $38                                         ; $6efe: $ff
	xor  d                                           ; $6eff: $aa
	rst  $38                                         ; $6f00: $ff
	add  d                                           ; $6f01: $82
	jr   nc, jr_075_6e84                             ; $6f02: $30 $80

	ret  nz                                          ; $6f04: $c0

	add  b                                           ; $6f05: $80
	ld   hl, sp-$80                                  ; $6f06: $f8 $80
	add  b                                           ; $6f08: $80
	dec  b                                           ; $6f09: $05
	ld   a, h                                        ; $6f0a: $7c
	db   $fc                                         ; $6f0b: $fc
	ld   a, $fe                                      ; $6f0c: $3e $fe
	and  b                                           ; $6f0e: $a0
	ldh  [$80], a                                    ; $6f0f: $e0 $80
	ld   c, a                                        ; $6f11: $4f
	add  b                                           ; $6f12: $80
	ld   b, a                                        ; $6f13: $47
	add  b                                           ; $6f14: $80
	ld   c, a                                        ; $6f15: $4f
	add  d                                           ; $6f16: $82
	ld   b, b                                        ; $6f17: $40
	add  d                                           ; $6f18: $82
	ld   a, a                                        ; $6f19: $7f
	add  b                                           ; $6f1a: $80
	nop                                              ; $6f1b: $00
	nop                                              ; $6f1c: $00
	ldh  [$83], a                                    ; $6f1d: $e0 $83
	rst  $28                                         ; $6f1f: $ef
	nop                                              ; $6f20: $00
	rrca                                             ; $6f21: $0f
	add  c                                           ; $6f22: $81
	nop                                              ; $6f23: $00
	add  d                                           ; $6f24: $82
	rst  $38                                         ; $6f25: $ff
	add  b                                           ; $6f26: $80
	nop                                              ; $6f27: $00
	ld   [bc], a                                     ; $6f28: $02
	pop  bc                                          ; $6f29: $c1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f2a: $cf
	ld   c, [hl]                                     ; $6f2b: $4e
	add  b                                           ; $6f2c: $80
	rst  ToBoot                                         ; $6f2d: $c7
	ld   bc, $8fcf                                   ; $6f2e: $01 $cf $8f
	add  b                                           ; $6f31: $80
	rlca                                             ; $6f32: $07
	nop                                              ; $6f33: $00
	nop                                              ; $6f34: $00
	add  d                                           ; $6f35: $82
	rst  $38                                         ; $6f36: $ff
	add  b                                           ; $6f37: $80
	nop                                              ; $6f38: $00
	add  hl, bc                                      ; $6f39: $09
	add  [hl]                                        ; $6f3a: $86
	adc  c                                           ; $6f3b: $89
	add  e                                           ; $6f3c: $83
	adc  h                                           ; $6f3d: $8c
	add  b                                           ; $6f3e: $80
	adc  a                                           ; $6f3f: $8f
	add  [hl]                                        ; $6f40: $86
	adc  a                                           ; $6f41: $8f
	ld   b, $00                                      ; $6f42: $06 $00
	add  d                                           ; $6f44: $82
	rst  $38                                         ; $6f45: $ff
	add  b                                           ; $6f46: $80
	nop                                              ; $6f47: $00
	add  b                                           ; $6f48: $80
	call nc, $e580                                   ; $6f49: $d4 $80 $e5
	add  b                                           ; $6f4c: $80
	push af                                          ; $6f4d: $f5
	add  d                                           ; $6f4e: $82
	dec  b                                           ; $6f4f: $05
	add  d                                           ; $6f50: $82
	push af                                          ; $6f51: $f5
	ld   bc, $0604                                   ; $6f52: $01 $04 $06
	and  [hl]                                        ; $6f55: $a6
	ld   bc, $0086                                   ; $6f56: $01 $86 $00
	nop                                              ; $6f59: $00
	rrca                                             ; $6f5a: $0f
	add  l                                           ; $6f5b: $85
	nop                                              ; $6f5c: $00
	nop                                              ; $6f5d: $00
	rrca                                             ; $6f5e: $0f
	add  l                                           ; $6f5f: $85
	nop                                              ; $6f60: $00
	nop                                              ; $6f61: $00
	rst  $38                                         ; $6f62: $ff
	add  l                                           ; $6f63: $85
	nop                                              ; $6f64: $00
	nop                                              ; $6f65: $00
	ldh  a, [$8d]                                    ; $6f66: $f0 $8d
	nop                                              ; $6f68: $00
	nop                                              ; $6f69: $00
	ldh  a, [$8e]                                    ; $6f6a: $f0 $8e
	nop                                              ; $6f6c: $00
	add  c                                           ; $6f6d: $81
	rrca                                             ; $6f6e: $0f
	add  b                                           ; $6f6f: $80
	ld   c, $80                                      ; $6f70: $0e $80
	dec  c                                           ; $6f72: $0d
	add  b                                           ; $6f73: $80
	ld   a, [bc]                                     ; $6f74: $0a
	add  b                                           ; $6f75: $80
	inc  c                                           ; $6f76: $0c
	add  b                                           ; $6f77: $80
	ld   a, [bc]                                     ; $6f78: $0a
	add  b                                           ; $6f79: $80
	inc  b                                           ; $6f7a: $04
	ld   bc, $e818                                   ; $6f7b: $01 $18 $e8
	add  b                                           ; $6f7e: $80

jr_075_6f7f:
	ld   d, b                                        ; $6f7f: $50
	add  b                                           ; $6f80: $80
	and  b                                           ; $6f81: $a0
	adc  h                                           ; $6f82: $8c
	nop                                              ; $6f83: $00
	ld   b, $01                                      ; $6f84: $06 $01
	nop                                              ; $6f86: $00
	stop                                             ; $6f87: $10 $00
	ld   c, $00                                      ; $6f89: $0e $00
	daa                                              ; $6f8b: $27
	add  b                                           ; $6f8c: $80
	nop                                              ; $6f8d: $00
	inc  bc                                          ; $6f8e: $03
	ld   [$0037], sp                                 ; $6f8f: $08 $37 $00
	rlca                                             ; $6f92: $07
	add  c                                           ; $6f93: $81
	nop                                              ; $6f94: $00

jr_075_6f95:
	inc  c                                           ; $6f95: $0c
	add  b                                           ; $6f96: $80
	nop                                              ; $6f97: $00
	ld   c, h                                        ; $6f98: $4c
	nop                                              ; $6f99: $00
	ld   [hl-], a                                    ; $6f9a: $32
	nop                                              ; $6f9b: $00
	ldh  a, [rP1]                                    ; $6f9c: $f0 $00
	ld   [bc], a                                     ; $6f9e: $02
	nop                                              ; $6f9f: $00
	db   $e4                                         ; $6fa0: $e4
	db   $10                                         ; $6fa1: $10
	ld   hl, sp-$7d                                  ; $6fa2: $f8 $83
	nop                                              ; $6fa4: $00
	ld   b, $1f                                      ; $6fa5: $06 $1f
	nop                                              ; $6fa7: $00
	rra                                              ; $6fa8: $1f
	nop                                              ; $6fa9: $00
	ld   b, $01                                      ; $6faa: $06 $01
	inc  b                                           ; $6fac: $04
	add  c                                           ; $6fad: $81
	nop                                              ; $6fae: $00
	nop                                              ; $6faf: $00
	inc  bc                                          ; $6fb0: $03
	add  c                                           ; $6fb1: $81
	nop                                              ; $6fb2: $00
	inc  c                                           ; $6fb3: $0c
	ld   b, b                                        ; $6fb4: $40
	nop                                              ; $6fb5: $00
	and  b                                           ; $6fb6: $a0
	nop                                              ; $6fb7: $00
	sub  b                                           ; $6fb8: $90
	nop                                              ; $6fb9: $00
	or   b                                           ; $6fba: $b0
	nop                                              ; $6fbb: $00
	ld   e, b                                        ; $6fbc: $58
	ld   [$000c], sp                                 ; $6fbd: $08 $0c $00
	sbc  h                                           ; $6fc0: $9c
	add  c                                           ; $6fc1: $81
	nop                                              ; $6fc2: $00
	inc  c                                           ; $6fc3: $0c
	jr   jr_075_6fc6                                 ; $6fc4: $18 $00

jr_075_6fc6:
	jr   z, jr_075_6fc8                              ; $6fc6: $28 $00

jr_075_6fc8:
	ld   d, a                                        ; $6fc8: $57
	nop                                              ; $6fc9: $00
	ld   e, c                                        ; $6fca: $59
	nop                                              ; $6fcb: $00
	dec  h                                           ; $6fcc: $25
	nop                                              ; $6fcd: $00
	ld   [$1300], sp                                 ; $6fce: $08 $00 $13
	add  c                                           ; $6fd1: $81
	nop                                              ; $6fd2: $00
	inc  c                                           ; $6fd3: $0c
	ld   h, b                                        ; $6fd4: $60
	nop                                              ; $6fd5: $00
	ld   [$9400], sp                                 ; $6fd6: $08 $00 $94
	nop                                              ; $6fd9: $00
	sbc  h                                           ; $6fda: $9c
	nop                                              ; $6fdb: $00
	sbc  h                                           ; $6fdc: $9c
	nop                                              ; $6fdd: $00
	sub  b                                           ; $6fde: $90
	nop                                              ; $6fdf: $00
	ld   l, h                                        ; $6fe0: $6c
	add  c                                           ; $6fe1: $81
	nop                                              ; $6fe2: $00
	inc  c                                           ; $6fe3: $0c
	add  hl, bc                                      ; $6fe4: $09
	nop                                              ; $6fe5: $00
	inc  [hl]                                        ; $6fe6: $34
	nop                                              ; $6fe7: $00
	inc  a                                           ; $6fe8: $3c
	nop                                              ; $6fe9: $00
	ld   a, h                                        ; $6fea: $7c
	nop                                              ; $6feb: $00
	ld   a, h                                        ; $6fec: $7c
	nop                                              ; $6fed: $00
	inc  a                                           ; $6fee: $3c
	nop                                              ; $6fef: $00
	dec  a                                           ; $6ff0: $3d
	add  c                                           ; $6ff1: $81
	nop                                              ; $6ff2: $00
	ld   b, $18                                      ; $6ff3: $06 $18
	nop                                              ; $6ff5: $00
	inc  b                                           ; $6ff6: $04
	add  b                                           ; $6ff7: $80
	add  h                                           ; $6ff8: $84
	ld   b, b                                        ; $6ff9: $40
	nop                                              ; $6ffa: $00
	add  b                                           ; $6ffb: $80
	jr   nz, jr_075_6f7f                             ; $6ffc: $20 $81

	nop                                              ; $6ffe: $00
	ld   bc, $570f                                   ; $6fff: $01 $0f $57
	add  b                                           ; $7002: $80
	ld   a, [bc]                                     ; $7003: $0a
	add  b                                           ; $7004: $80
	dec  b                                           ; $7005: $05
	adc  b                                           ; $7006: $88
	nop                                              ; $7007: $00
	nop                                              ; $7008: $00
	rst  $38                                         ; $7009: $ff
	add  c                                           ; $700a: $81
	ldh  a, [$80]                                    ; $700b: $f0 $80
	ld   [hl], b                                     ; $700d: $70
	add  b                                           ; $700e: $80
	or   b                                           ; $700f: $b0
	add  b                                           ; $7010: $80
	ld   d, b                                        ; $7011: $50
	add  b                                           ; $7012: $80
	jr   nz, jr_075_6f95                             ; $7013: $20 $80

	db   $10                                         ; $7015: $10
	add  b                                           ; $7016: $80
	jr   nz, jr_075_701a                             ; $7017: $20 $01

	rst  $30                                         ; $7019: $f7

jr_075_701a:
	ld   [$008c], sp                                 ; $701a: $08 $8c $00
	nop                                              ; $701d: $00
	ldh  a, [$8d]                                    ; $701e: $f0 $8d
	nop                                              ; $7020: $00
	nop                                              ; $7021: $00
	ld   bc, $0081                                   ; $7022: $01 $81 $00
	inc  c                                           ; $7025: $0c
	ld   [$0400], sp                                 ; $7026: $08 $00 $04
	nop                                              ; $7029: $00
	ld   [de], a                                     ; $702a: $12
	db   $10                                         ; $702b: $10
	inc  b                                           ; $702c: $04
	ld   [de], a                                     ; $702d: $12
	add  hl, bc                                      ; $702e: $09
	nop                                              ; $702f: $00
	stop                                             ; $7030: $10 $00
	add  b                                           ; $7032: $80
	add  c                                           ; $7033: $81
	nop                                              ; $7034: $00
	inc  bc                                          ; $7035: $03
	ld   [hl], b                                     ; $7036: $70
	nop                                              ; $7037: $00
	ld   [hl], b                                     ; $7038: $70
	nop                                              ; $7039: $00
	add  b                                           ; $703a: $80
	ld   b, b                                        ; $703b: $40
	ld   [EnqueueHDMATransfer], sp                                 ; $703c: $08 $7c $02
	add  [hl]                                        ; $703f: $86
	ld   b, h                                        ; $7040: $44
	inc  a                                           ; $7041: $3c
	nop                                              ; $7042: $00
	ccf                                              ; $7043: $3f
	ld   b, b                                        ; $7044: $40
	ld   a, h                                        ; $7045: $7c
	add  e                                           ; $7046: $83
	nop                                              ; $7047: $00
	ld   c, $08                                      ; $7048: $0e $08
	inc  b                                           ; $704a: $04
	ld   [$0500], sp                                 ; $704b: $08 $00 $05
	ld   bc, $0003                                   ; $704e: $01 $03 $00
	db   $fc                                         ; $7051: $fc
	nop                                              ; $7052: $00
	call nz, $5800                                   ; $7053: $c4 $00 $58
	nop                                              ; $7056: $00
	ld   h, b                                        ; $7057: $60
	add  a                                           ; $7058: $87
	nop                                              ; $7059: $00
	ld   bc, $403f                                   ; $705a: $01 $3f $40
	add  b                                           ; $705d: $80
	inc  b                                           ; $705e: $04
	inc  l                                           ; $705f: $2c
	ld   h, h                                        ; $7060: $64
	nop                                              ; $7061: $00
	ld   h, $00                                      ; $7062: $26 $00
	ld   b, b                                        ; $7064: $40
	nop                                              ; $7065: $00
	daa                                              ; $7066: $27
	nop                                              ; $7067: $00
	ld   b, d                                        ; $7068: $42
	nop                                              ; $7069: $00
	jr   jr_075_706c                                 ; $706a: $18 $00

jr_075_706c:
	db   $fc                                         ; $706c: $fc
	nop                                              ; $706d: $00
	sub  b                                           ; $706e: $90
	nop                                              ; $706f: $00
	sub  b                                           ; $7070: $90
	nop                                              ; $7071: $00
	inc  b                                           ; $7072: $04
	nop                                              ; $7073: $00
	ld   d, $80                                      ; $7074: $16 $80
	ld   [$0402], sp                                 ; $7076: $08 $02 $04
	nop                                              ; $7079: $00
	ld   h, b                                        ; $707a: $60
	nop                                              ; $707b: $00
	ld   bc, $3c00                                   ; $707c: $01 $00 $3c
	nop                                              ; $707f: $00
	inc  a                                           ; $7080: $3c
	nop                                              ; $7081: $00
	inc  a                                           ; $7082: $3c
	nop                                              ; $7083: $00
	stop                                             ; $7084: $10 $00
	inc  bc                                          ; $7086: $03
	nop                                              ; $7087: $00
	ld   [de], a                                     ; $7088: $12
	nop                                              ; $7089: $00
	inc  a                                           ; $708a: $3c
	nop                                              ; $708b: $00
	ld   e, b                                        ; $708c: $58
	add  l                                           ; $708d: $85
	nop                                              ; $708e: $00
	nop                                              ; $708f: $00
	ld   b, b                                        ; $7090: $40
	add  c                                           ; $7091: $81
	nop                                              ; $7092: $00
	ld   b, $08                                      ; $7093: $06 $08
	nop                                              ; $7095: $00
	stop                                             ; $7096: $10 $00
	ld   [bc], a                                     ; $7098: $02
	rra                                              ; $7099: $1f
	dec  e                                           ; $709a: $1d
	adc  e                                           ; $709b: $8b
	db   $10                                         ; $709c: $10
	inc  b                                           ; $709d: $04
	xor  a                                           ; $709e: $af
	rst  $38                                         ; $709f: $ff
	cp   h                                           ; $70a0: $bc
	nop                                              ; $70a1: $00
	ld   [hl], b                                     ; $70a2: $70
	add  c                                           ; $70a3: $81
	nop                                              ; $70a4: $00
	ld   [bc], a                                     ; $70a5: $02
	ld   [hl], b                                     ; $70a6: $70
	nop                                              ; $70a7: $00
	ld   [hl], b                                     ; $70a8: $70
	add  c                                           ; $70a9: $81
	nop                                              ; $70aa: $00
	inc  bc                                          ; $70ab: $03
	ld   [hl], b                                     ; $70ac: $70
	nop                                              ; $70ad: $00
	inc  bc                                          ; $70ae: $03
	rst  $38                                         ; $70af: $ff
	add  d                                           ; $70b0: $82

jr_075_70b1:
	jr   nz, @+$04                                   ; $70b1: $20 $02

	ld   hl, $2120                                   ; $70b3: $21 $20 $21
	add  e                                           ; $70b6: $83
	jr   nz, jr_075_70bd                             ; $70b7: $20 $04

	inc  hl                                          ; $70b9: $23
	jr   nz, @-$02                                   ; $70ba: $20 $fc

	rst  $38                                         ; $70bc: $ff

jr_075_70bd:
	ld   h, b                                        ; $70bd: $60
	add  c                                           ; $70be: $81
	nop                                              ; $70bf: $00
	ld   [bc], a                                     ; $70c0: $02
	sbc  b                                           ; $70c1: $98
	nop                                              ; $70c2: $00
	sbc  b                                           ; $70c3: $98
	add  e                                           ; $70c4: $83
	nop                                              ; $70c5: $00
	inc  bc                                          ; $70c6: $03
	sbc  h                                           ; $70c7: $9c
	nop                                              ; $70c8: $00
	inc  bc                                          ; $70c9: $03
	rst  $38                                         ; $70ca: $ff
	add  c                                           ; $70cb: $81
	ld   b, c                                        ; $70cc: $41
	dec  e                                           ; $70cd: $1d
	ld   b, b                                        ; $70ce: $40
	ld   b, d                                        ; $70cf: $42
	ld   b, b                                        ; $70d0: $40
	ld   b, a                                        ; $70d1: $47
	ld   b, b                                        ; $70d2: $40
	ld   b, a                                        ; $70d3: $47
	ld   b, b                                        ; $70d4: $40
	ld   b, c                                        ; $70d5: $41
	ld   b, b                                        ; $70d6: $40
	ld   b, l                                        ; $70d7: $45
	ld   b, b                                        ; $70d8: $40
	ld   hl, sp-$01                                  ; $70d9: $f8 $ff
	ldh  [rAUD4LEN], a                               ; $70db: $e0 $20
	ldh  [rP1], a                                    ; $70dd: $e0 $00
	ret  nc                                          ; $70df: $d0

	nop                                              ; $70e0: $00
	jr   c, jr_075_70e3                              ; $70e1: $38 $00

jr_075_70e3:
	jr   c, jr_075_70e5                              ; $70e3: $38 $00

jr_075_70e5:
	jr   nz, jr_075_70e7                             ; $70e5: $20 $00

jr_075_70e7:
	jr   z, jr_075_70e9                              ; $70e7: $28 $00

jr_075_70e9:
	rlca                                             ; $70e9: $07
	rst  $38                                         ; $70ea: $ff
	add  c                                           ; $70eb: $81
	add  c                                           ; $70ec: $81
	add  b                                           ; $70ed: $80
	inc  c                                           ; $70ee: $0c
	adc  [hl]                                        ; $70ef: $8e
	add  b                                           ; $70f0: $80
	adc  h                                           ; $70f1: $8c
	add  b                                           ; $70f2: $80
	add  h                                           ; $70f3: $84
	add  b                                           ; $70f4: $80
	adc  [hl]                                        ; $70f5: $8e
	add  b                                           ; $70f6: $80
	adc  b                                           ; $70f7: $88
	add  b                                           ; $70f8: $80
	cp   $ff                                         ; $70f9: $fe $ff
	add  c                                           ; $70fb: $81
	add  c                                           ; $70fc: $81
	ld   bc, $710c                                   ; $70fd: $01 $0c $71
	ld   bc, $0131                                   ; $7100: $01 $31 $01
	ld   hl, $7101                                   ; $7103: $21 $01 $71
	ld   bc, $0111                                   ; $7106: $01 $11 $01
	ld   a, a                                        ; $7109: $7f
	rst  $38                                         ; $710a: $ff
	inc  bc                                          ; $710b: $03
	add  c                                           ; $710c: $81
	nop                                              ; $710d: $00
	dec  bc                                          ; $710e: $0b
	inc  e                                           ; $710f: $1c
	nop                                              ; $7110: $00

jr_075_7111:
	stop                                             ; $7111: $10 $00
	inc  b                                           ; $7113: $04
	nop                                              ; $7114: $00
	jr   jr_075_7117                                 ; $7115: $18 $00

jr_075_7117:
	inc  d                                           ; $7117: $14
	nop                                              ; $7118: $00
	ld   hl, sp-$01                                  ; $7119: $f8 $ff
	add  b                                           ; $711b: $80
	ld   [bc], a                                     ; $711c: $02
	dec  bc                                          ; $711d: $0b
	ld   h, d                                        ; $711e: $62
	ld   b, d                                        ; $711f: $42
	jp   nz, $2202                                   ; $7120: $c2 $02 $22

	ld   [bc], a                                     ; $7123: $02
	add  d                                           ; $7124: $82
	ld   [bc], a                                     ; $7125: $02
	ld   [hl], d                                     ; $7126: $72
	ld   [de], a                                     ; $7127: $12
	ld   [hl+], a                                    ; $7128: $22
	ld   [bc], a                                     ; $7129: $02
	add  b                                           ; $712a: $80
	rst  $38                                         ; $712b: $ff

jr_075_712c:
	ld   [bc], a                                     ; $712c: $02
	ld   b, $00                                      ; $712d: $06 $00

jr_075_712f:
	jr   nc, jr_075_70b1                             ; $712f: $30 $80

	db   $10                                         ; $7131: $10
	ld   a, [bc]                                     ; $7132: $0a
	nop                                              ; $7133: $00
	add  hl, de                                      ; $7134: $19
	add  hl, bc                                      ; $7135: $09
	add  hl, hl                                      ; $7136: $29
	nop                                              ; $7137: $00
	ld   d, $10                                      ; $7138: $16 $10
	add  hl, sp                                      ; $713a: $39
	jr   nz, jr_075_712c                             ; $713b: $20 $ef

	rst  $38                                         ; $713d: $ff
	add  b                                           ; $713e: $80
	inc  b                                           ; $713f: $04
	nop                                              ; $7140: $00
	call nz, $8480                                   ; $7141: $c4 $80 $84
	ld   bc, $c404                                   ; $7144: $01 $04 $c4
	add  c                                           ; $7147: $81
	inc  b                                           ; $7148: $04
	add  b                                           ; $7149: $80
	add  h                                           ; $714a: $84
	ld   [de], a                                     ; $714b: $12
	call nz, $6a44                                   ; $714c: $c4 $44 $6a
	rst  $38                                         ; $714f: $ff
	dec  hl                                          ; $7150: $2b
	nop                                              ; $7151: $00
	jr   jr_075_7154                                 ; $7152: $18 $00

jr_075_7154:
	jr   jr_075_7156                                 ; $7154: $18 $00

jr_075_7156:
	jr   jr_075_7158                                 ; $7156: $18 $00

jr_075_7158:
	jr   jr_075_715a                                 ; $7158: $18 $00

jr_075_715a:
	ld   e, b                                        ; $715a: $58
	ld   b, b                                        ; $715b: $40
	ld   l, b                                        ; $715c: $68
	nop                                              ; $715d: $00
	ld   c, [hl]                                     ; $715e: $4e
	add  b                                           ; $715f: $80
	ld   hl, sp-$75                                  ; $7160: $f8 $8b
	ld   [$0d02], sp                                 ; $7162: $08 $02 $0d
	rra                                              ; $7165: $1f
	ld   a, [de]                                     ; $7166: $1a
	add  e                                           ; $7167: $83
	stop                                             ; $7168: $10 $00
	ld   de, $1081                                   ; $716a: $11 $81 $10
	dec  b                                           ; $716d: $05
	ld   [de], a                                     ; $716e: $12
	db   $10                                         ; $716f: $10
	ld   d, $10                                      ; $7170: $16 $10
	ld   [$80ff], a                                  ; $7172: $ea $ff $80
	nop                                              ; $7175: $00
	ld   [bc], a                                     ; $7176: $02
	adc  h                                           ; $7177: $8c
	nop                                              ; $7178: $00
	ld   b, b                                        ; $7179: $40
	add  c                                           ; $717a: $81
	nop                                              ; $717b: $00
	rlca                                             ; $717c: $07
	ld   b, c                                        ; $717d: $41
	nop                                              ; $717e: $00
	ld   [hl], d                                     ; $717f: $72
	nop                                              ; $7180: $00
	ld   h, e                                        ; $7181: $63
	nop                                              ; $7182: $00
	ld   h, e                                        ; $7183: $63
	rst  $38                                         ; $7184: $ff
	add  h                                           ; $7185: $84
	jr   nz, jr_075_718f                             ; $7186: $20 $07

	inc  h                                           ; $7188: $24
	ld   [hl+], a                                    ; $7189: $22
	dec  h                                           ; $718a: $25
	jr   nz, @-$5b                                   ; $718b: $20 $a3

	jr   nz, jr_075_712f                             ; $718d: $20 $a0

jr_075_718f:
	jr   nz, jr_075_7111                             ; $718f: $20 $80

	rst  $38                                         ; $7191: $ff
	add  c                                           ; $7192: $81
	nop                                              ; $7193: $00
	inc  c                                           ; $7194: $0c
	ld   b, b                                        ; $7195: $40
	jr   nz, jr_075_7198                             ; $7196: $20 $00

jr_075_7198:
	inc  b                                           ; $7198: $04
	nop                                              ; $7199: $00
	sbc  d                                           ; $719a: $9a
	nop                                              ; $719b: $00
	cp   b                                           ; $719c: $b8
	add  b                                           ; $719d: $80
	ld   [bc], a                                     ; $719e: $02
	nop                                              ; $719f: $00
	dec  sp                                          ; $71a0: $3b
	rst  $38                                         ; $71a1: $ff
	add  b                                           ; $71a2: $80
	ld   b, b                                        ; $71a3: $40
	dec  c                                           ; $71a4: $0d
	ld   b, e                                        ; $71a5: $43
	ld   b, b                                        ; $71a6: $40
	ld   b, l                                        ; $71a7: $45
	ld   b, b                                        ; $71a8: $40
	ld   e, e                                        ; $71a9: $5b
	ld   b, b                                        ; $71aa: $40
	ld   d, d                                        ; $71ab: $52
	ld   b, b                                        ; $71ac: $40
	ld   c, c                                        ; $71ad: $49
	ld   b, b                                        ; $71ae: $40
	ld   c, e                                        ; $71af: $4b
	ld   b, b                                        ; $71b0: $40
	ldh  a, [c]                                      ; $71b1: $f2
	rst  $38                                         ; $71b2: $ff
	add  d                                           ; $71b3: $82
	nop                                              ; $71b4: $00
	ld   b, $04                                      ; $71b5: $06 $04
	nop                                              ; $71b7: $00
	ld   a, [$e680]                                  ; $71b8: $fa $80 $e6
	nop                                              ; $71bb: $00
	add  b                                           ; $71bc: $80
	add  c                                           ; $71bd: $81

jr_075_71be:
	nop                                              ; $71be: $00
	ld   bc, $ffe7                                   ; $71bf: $01 $e7 $ff
	add  b                                           ; $71c2: $80
	add  b                                           ; $71c3: $80
	add  b                                           ; $71c4: $80
	sub  b                                           ; $71c5: $90
	dec  bc                                          ; $71c6: $0b
	sbc  a                                           ; $71c7: $9f
	add  b                                           ; $71c8: $80
	sub  b                                           ; $71c9: $90
	add  b                                           ; $71ca: $80
	adc  a                                           ; $71cb: $8f
	add  b                                           ; $71cc: $80
	add  d                                           ; $71cd: $82
	add  b                                           ; $71ce: $80
	add  e                                           ; $71cf: $83
	add  b                                           ; $71d0: $80
	cp   $ff                                         ; $71d1: $fe $ff
	add  d                                           ; $71d3: $82
	ld   bc, $f10b                                   ; $71d4: $01 $0b $f1
	ld   bc, $0109                                   ; $71d7: $01 $09 $01
	ret                                              ; $71da: $c9


	ld   bc, $2171                                   ; $71db: $01 $71 $21
	and  c                                           ; $71de: $a1
	ld   bc, $ff3f                                   ; $71df: $01 $3f $ff
	add  d                                           ; $71e2: $82
	nop                                              ; $71e3: $00
	add  b                                           ; $71e4: $80
	jr   nz, @+$09                                   ; $71e5: $20 $07

	ld   sp, $0f00                                   ; $71e7: $31 $00 $0f
	nop                                              ; $71ea: $00
	ld   h, $00                                      ; $71eb: $26 $00

jr_075_71ed:
	jr   jr_075_71ef                                 ; $71ed: $18 $00

jr_075_71ef:
	add  b                                           ; $71ef: $80
	rst  $38                                         ; $71f0: $ff
	add  d                                           ; $71f1: $82
	ld   [bc], a                                     ; $71f2: $02
	inc  b                                           ; $71f3: $04
	ld   b, d                                        ; $71f4: $42
	ld   [bc], a                                     ; $71f5: $02
	and  d                                           ; $71f6: $a2
	ld   [bc], a                                     ; $71f7: $02
	sub  d                                           ; $71f8: $92

jr_075_71f9:
	add  c                                           ; $71f9: $81
	ld   [bc], a                                     ; $71fa: $02
	inc  bc                                          ; $71fb: $03
	or   d                                           ; $71fc: $b2
	ld   [bc], a                                     ; $71fd: $02
	ccf                                              ; $71fe: $3f
	rst  $38                                         ; $71ff: $ff
	add  d                                           ; $7200: $82
	nop                                              ; $7201: $00
	dec  bc                                          ; $7202: $0b
	ld   b, $00                                      ; $7203: $06 $00
	ld   b, l                                        ; $7205: $45
	nop                                              ; $7206: $00
	inc  a                                           ; $7207: $3c
	ld   b, b                                        ; $7208: $40
	inc  a                                           ; $7209: $3c
	nop                                              ; $720a: $00
	inc  b                                           ; $720b: $04
	ld   [$fff0], sp                                 ; $720c: $08 $f0 $ff
	add  h                                           ; $720f: $84
	inc  b                                           ; $7210: $04
	inc  b                                           ; $7211: $04
	ld   b, h                                        ; $7212: $44
	inc  b                                           ; $7213: $04
	and  h                                           ; $7214: $a4
	inc  b                                           ; $7215: $04
	db   $e4                                         ; $7216: $e4
	add  c                                           ; $7217: $81
	inc  b                                           ; $7218: $04
	add  b                                           ; $7219: $80
	rst  $38                                         ; $721a: $ff
	add  d                                           ; $721b: $82
	nop                                              ; $721c: $00
	inc  c                                           ; $721d: $0c
	jr   c, jr_075_7240                              ; $721e: $38 $20

	inc  d                                           ; $7220: $14
	nop                                              ; $7221: $00
	db   $d3                                         ; $7222: $d3
	jr   c, jr_075_71be                              ; $7223: $38 $99

	ld   b, b                                        ; $7225: $40
	dec  a                                           ; $7226: $3d
	ld   bc, $f8a2                                   ; $7227: $01 $a2 $f8
	ld   e, b                                        ; $722a: $58
	add  e                                           ; $722b: $83
	ld   [$c801], sp                                 ; $722c: $08 $01 $c8
	ld   c, b                                        ; $722f: $48
	add  b                                           ; $7230: $80
	ld   [$8800], sp                                 ; $7231: $08 $00 $88
	add  c                                           ; $7234: $81
	ld   [$0900], sp                                 ; $7235: $08 $00 $09
	adc  c                                           ; $7238: $89
	stop                                             ; $7239: $10 $00
	ld   de, $1081                                   ; $723b: $11 $81 $10
	add  hl, bc                                      ; $723e: $09
	adc  [hl]                                        ; $723f: $8e

jr_075_7240:
	nop                                              ; $7240: $00
	ld   hl, $1200                                   ; $7241: $21 $00 $12
	nop                                              ; $7244: $00
	ld   h, c                                        ; $7245: $61
	ld   bc, $0041                                   ; $7246: $01 $41 $00
	add  b                                           ; $7249: $80
	ld   [$8c0c], sp                                 ; $724a: $08 $0c $8c
	nop                                              ; $724d: $00
	ld   b, $02                                      ; $724e: $06 $02
	inc  h                                           ; $7250: $24
	ld   hl, $2220                                   ; $7251: $21 $20 $22
	and  l                                           ; $7254: $a5
	jr   nz, jr_075_727d                             ; $7255: $20 $26

	jr   nz, jr_075_71f9                             ; $7257: $20 $a0

	add  e                                           ; $7259: $83
	jr   nz, jr_075_725e                             ; $725a: $20 $02

	inc  hl                                          ; $725c: $23
	dec  h                                           ; $725d: $25

jr_075_725e:
	adc  d                                           ; $725e: $8a
	add  c                                           ; $725f: $81
	nop                                              ; $7260: $00
	ld   b, $94                                      ; $7261: $06 $94
	nop                                              ; $7263: $00
	ld   h, b                                        ; $7264: $60
	nop                                              ; $7265: $00

jr_075_7266:
	ld   c, b                                        ; $7266: $48
	nop                                              ; $7267: $00
	jr   nc, jr_075_71ed                             ; $7268: $30 $83

	nop                                              ; $726a: $00
	db   $10                                         ; $726b: $10
	ld   e, a                                        ; $726c: $5f
	ld   b, b                                        ; $726d: $40
	ld   e, c                                        ; $726e: $59
	ld   b, b                                        ; $726f: $40
	ld   c, c                                        ; $7270: $49
	ld   b, b                                        ; $7271: $40
	ld   d, b                                        ; $7272: $50
	ld   d, c                                        ; $7273: $51
	ld   e, b                                        ; $7274: $58
	ld   b, b                                        ; $7275: $40
	ld   d, b                                        ; $7276: $50
	ld   b, b                                        ; $7277: $40
	ld   b, [hl]                                     ; $7278: $46
	ld   b, b                                        ; $7279: $40
	ld   b, e                                        ; $727a: $43
	ld   b, b                                        ; $727b: $40
	sbc  e                                           ; $727c: $9b

jr_075_727d:
	add  c                                           ; $727d: $81
	nop                                              ; $727e: $00
	ld   [bc], a                                     ; $727f: $02
	add  b                                           ; $7280: $80
	nop                                              ; $7281: $00
	add  b                                           ; $7282: $80
	add  b                                           ; $7283: $80
	nop                                              ; $7284: $00
	rlca                                             ; $7285: $07
	ld   b, b                                        ; $7286: $40
	ld   h, $00                                      ; $7287: $26 $00
	cp   $00                                         ; $7289: $fe $00
	jr   nc, jr_075_7291                             ; $728b: $30 $04

	or   l                                           ; $728d: $b5
	add  e                                           ; $728e: $83
	add  b                                           ; $728f: $80
	inc  b                                           ; $7290: $04

jr_075_7291:
	add  d                                           ; $7291: $82
	add  c                                           ; $7292: $81
	add  h                                           ; $7293: $84
	add  d                                           ; $7294: $82
	add  h                                           ; $7295: $84
	add  e                                           ; $7296: $83
	add  b                                           ; $7297: $80
	nop                                              ; $7298: $00
	add  c                                           ; $7299: $81
	add  d                                           ; $729a: $82
	ld   bc, $8100                                   ; $729b: $01 $00 $81
	add  h                                           ; $729e: $84
	ld   bc, $e108                                   ; $729f: $01 $08 $e1
	ld   hl, $1131                                   ; $72a2: $21 $31 $11
	db   $ec                                         ; $72a5: $ec
	nop                                              ; $72a6: $00
	dec  bc                                          ; $72a7: $0b
	nop                                              ; $72a8: $00
	inc  b                                           ; $72a9: $04
	add  c                                           ; $72aa: $81
	nop                                              ; $72ab: $00
	nop                                              ; $72ac: $00
	inc  bc                                          ; $72ad: $03
	add  b                                           ; $72ae: $80
	ld   bc, $0009                                   ; $72af: $01 $09 $00
	add  hl, bc                                      ; $72b2: $09
	nop                                              ; $72b3: $00
	dec  b                                           ; $72b4: $05
	nop                                              ; $72b5: $00
	adc  [hl]                                        ; $72b6: $8e
	ld   [bc], a                                     ; $72b7: $02
	add  d                                           ; $72b8: $82
	ld   [bc], a                                     ; $72b9: $02
	add  d                                           ; $72ba: $82
	add  c                                           ; $72bb: $81
	ld   [bc], a                                     ; $72bc: $02
	add  c                                           ; $72bd: $81
	add  d                                           ; $72be: $82
	add  hl, bc                                      ; $72bf: $09
	ld   [bc], a                                     ; $72c0: $02
	add  d                                           ; $72c1: $82
	ld   b, d                                        ; $72c2: $42
	ld   [hl+], a                                    ; $72c3: $22
	ld   [bc], a                                     ; $72c4: $02
	db   $eb                                         ; $72c5: $eb
	nop                                              ; $72c6: $00
	inc  b                                           ; $72c7: $04
	nop                                              ; $72c8: $00
	inc  c                                           ; $72c9: $0c
	add  b                                           ; $72ca: $80
	nop                                              ; $72cb: $00
	inc  b                                           ; $72cc: $04
	ld   bc, $0a04                                   ; $72cd: $01 $04 $0a
	inc  c                                           ; $72d0: $0c
	nop                                              ; $72d1: $00
	add  b                                           ; $72d2: $80
	db   $10                                         ; $72d3: $10
	ld   [bc], a                                     ; $72d4: $02
	inc  e                                           ; $72d5: $1c
	nop                                              ; $72d6: $00
	jr   jr_075_7266                                 ; $72d7: $18 $8d

	inc  b                                           ; $72d9: $04
	inc  c                                           ; $72da: $0c
	ccf                                              ; $72db: $3f
	jr   nz, jr_075_7356                             ; $72dc: $20 $78

	inc  b                                           ; $72de: $04
	inc  bc                                          ; $72df: $03
	nop                                              ; $72e0: $00
	ld   e, b                                        ; $72e1: $58
	inc  b                                           ; $72e2: $04
	jr   nz, jr_075_72e5                             ; $72e3: $20 $00

jr_075_72e5:
	inc  e                                           ; $72e5: $1c
	nop                                              ; $72e6: $00
	ld   b, $80                                      ; $72e7: $06 $80
	ld   a, [bc]                                     ; $72e9: $0a
	ld   bc, $0600                                   ; $72ea: $01 $00 $06
	adc  l                                           ; $72ed: $8d
	ld   [$0900], sp                                 ; $72ee: $08 $00 $09
	adc  l                                           ; $72f1: $8d
	db   $10                                         ; $72f2: $10
	ld   [bc], a                                     ; $72f3: $02
	rst  $28                                         ; $72f4: $ef
	ld   bc, $8379                                   ; $72f5: $01 $79 $83
	nop                                              ; $72f8: $00
	ld   [bc], a                                     ; $72f9: $02
	ld   a, b                                        ; $72fa: $78
	nop                                              ; $72fb: $00
	ld   a, b                                        ; $72fc: $78
	add  e                                           ; $72fd: $83
	nop                                              ; $72fe: $00
	nop                                              ; $72ff: $00
	and  a                                           ; $7300: $a7
	add  b                                           ; $7301: $80
	ld   [hl+], a                                    ; $7302: $22
	ld   bc, $2120                                   ; $7303: $01 $20 $21
	add  c                                           ; $7306: $81
	jr   nz, @-$7d                                   ; $7307: $20 $81

	ld   [hl+], a                                    ; $7309: $22
	dec  a                                           ; $730a: $3d
	ld   hl, $2022                                   ; $730b: $21 $22 $20
	ld   hl, $8220                                   ; $730e: $21 $20 $82
	nop                                              ; $7311: $00
	ld   b, $00                                      ; $7312: $06 $00
	adc  h                                           ; $7314: $8c
	inc  b                                           ; $7315: $04
	inc  e                                           ; $7316: $1c
	ld   [$0028], sp                                 ; $7317: $08 $28 $00
	ld   b, b                                        ; $731a: $40
	sub  b                                           ; $731b: $90
	jr   nz, jr_075_731e                             ; $731c: $20 $00

jr_075_731e:
	ld   b, b                                        ; $731e: $40
	nop                                              ; $731f: $00
	rst  JumpTable                                         ; $7320: $df
	ld   b, b                                        ; $7321: $40
	ld   e, l                                        ; $7322: $5d
	ld   b, b                                        ; $7323: $40
	ld   c, l                                        ; $7324: $4d
	ld   b, b                                        ; $7325: $40
	ld   b, [hl]                                     ; $7326: $46
	ld   b, b                                        ; $7327: $40
	ld   b, [hl]                                     ; $7328: $46
	ld   b, b                                        ; $7329: $40
	ld   b, a                                        ; $732a: $47
	ld   b, b                                        ; $732b: $40
	ld   b, a                                        ; $732c: $47
	ld   b, b                                        ; $732d: $40
	ld   b, l                                        ; $732e: $45
	ld   b, b                                        ; $732f: $40
	db   $f4                                         ; $7330: $f4
	nop                                              ; $7331: $00
	sbc  $08                                         ; $7332: $de $08
	ld   d, h                                        ; $7334: $54
	nop                                              ; $7335: $00
	jr   nc, jr_075_7338                             ; $7336: $30 $00

jr_075_7338:
	jr   nc, jr_075_733a                             ; $7338: $30 $00

jr_075_733a:
	ldh  a, [rP1]                                    ; $733a: $f0 $00
	ld   [hl], b                                     ; $733c: $70
	nop                                              ; $733d: $00
	ld   d, b                                        ; $733e: $50
	nop                                              ; $733f: $00
	dec  l                                           ; $7340: $2d
	add  b                                           ; $7341: $80
	add  d                                           ; $7342: $82

jr_075_7343:
	add  b                                           ; $7343: $80
	add  h                                           ; $7344: $84
	add  b                                           ; $7345: $80
	adc  [hl]                                        ; $7346: $8e
	sub  b                                           ; $7347: $90
	sbc  b                                           ; $7348: $98
	add  l                                           ; $7349: $85
	add  b                                           ; $734a: $80
	ld   [bc], a                                     ; $734b: $02
	ret  nz                                          ; $734c: $c0

	ld   bc, $8b41                                   ; $734d: $01 $41 $8b
	ld   bc, $8c00                                   ; $7350: $01 $00 $8c
	add  e                                           ; $7353: $83
	nop                                              ; $7354: $00
	add  b                                           ; $7355: $80

jr_075_7356:
	ld   [$0c01], sp                                 ; $7356: $08 $01 $0c
	nop                                              ; $7359: $00
	add  c                                           ; $735a: $81
	ld   bc, $0003                                   ; $735b: $01 $03 $00
	ld   [bc], a                                     ; $735e: $02
	ld   bc, $88c0                                   ; $735f: $01 $c0 $88
	ld   [bc], a                                     ; $7362: $02
	nop                                              ; $7363: $00
	ld   b, d                                        ; $7364: $42
	add  c                                           ; $7365: $81
	add  d                                           ; $7366: $82
	ld   bc, $0502                                   ; $7367: $01 $02 $05
	add  b                                           ; $736a: $80
	ld   [$090d], sp                                 ; $736b: $08 $0d $09
	ld   [de], a                                     ; $736e: $12
	ld   hl, $4616                                   ; $736f: $21 $16 $46
	ld   b, e                                        ; $7372: $43
	ld   b, h                                        ; $7373: $44
	ld   [hl], b                                     ; $7374: $70
	ld   hl, $0820                                   ; $7375: $21 $20 $08
	inc  de                                          ; $7378: $13
	nop                                              ; $7379: $00
	add  [hl]                                        ; $737a: $86
	add  e                                           ; $737b: $83
	inc  b                                           ; $737c: $04
	ld   b, $44                                      ; $737d: $06 $44
	inc  b                                           ; $737f: $04
	inc  h                                           ; $7380: $24
	inc  b                                           ; $7381: $04
	ld   b, h                                        ; $7382: $44
	add  h                                           ; $7383: $84
	inc  h                                           ; $7384: $24
	add  c                                           ; $7385: $81
	inc  b                                           ; $7386: $04
	inc  c                                           ; $7387: $0c
	ld   c, $00                                      ; $7388: $0e $00
	ld   [de], a                                     ; $738a: $12
	inc  b                                           ; $738b: $04
	jr   nc, jr_075_73a6                             ; $738c: $30 $18

	nop                                              ; $738e: $00
	db   $10                                         ; $738f: $10
	jr   c, jr_075_7392                              ; $7390: $38 $00

jr_075_7392:
	inc  b                                           ; $7392: $04
	db   $10                                         ; $7393: $10
	ld   [bc], a                                     ; $7394: $02
	add  b                                           ; $7395: $80
	nop                                              ; $7396: $00
	ld   bc, $f608                                   ; $7397: $01 $08 $f6
	add  l                                           ; $739a: $85
	nop                                              ; $739b: $00
	add  b                                           ; $739c: $80
	ld   [$0280], sp                                 ; $739d: $08 $80 $02
	add  b                                           ; $73a0: $80
	ld   [$0480], sp                                 ; $73a1: $08 $80 $04
	nop                                              ; $73a4: $00
	pop  af                                          ; $73a5: $f1

jr_075_73a6:
	add  e                                           ; $73a6: $83
	stop                                             ; $73a7: $10 $00
	ld   de, $1087                                   ; $73a9: $11 $87 $10
	ld   b, $96                                      ; $73ac: $06 $96
	nop                                              ; $73ae: $00
	ld   a, b                                        ; $73af: $78
	nop                                              ; $73b0: $00
	ld   a, b                                        ; $73b1: $78
	nop                                              ; $73b2: $00
	add  [hl]                                        ; $73b3: $86
	add  a                                           ; $73b4: $87
	nop                                              ; $73b5: $00
	add  l                                           ; $73b6: $85
	jr   nz, jr_075_73ba                             ; $73b7: $20 $01

	inc  h                                           ; $73b9: $24

jr_075_73ba:
	inc  hl                                          ; $73ba: $23
	add  b                                           ; $73bb: $80
	jr   nz, jr_075_73bf                             ; $73bc: $20 $01

	inc  h                                           ; $73be: $24

jr_075_73bf:
	inc  hl                                          ; $73bf: $23
	add  c                                           ; $73c0: $81
	jr   nz, jr_075_7343                             ; $73c1: $20 $80

	nop                                              ; $73c3: $00
	ld   b, $60                                      ; $73c4: $06 $60
	add  b                                           ; $73c6: $80
	sub  b                                           ; $73c7: $90
	nop                                              ; $73c8: $00
	stop                                             ; $73c9: $10 $00
	sbc  [hl]                                        ; $73cb: $9e
	add  b                                           ; $73cc: $80
	ld   [bc], a                                     ; $73cd: $02
	ld   bc, $9e00                                   ; $73ce: $01 $00 $9e
	add  c                                           ; $73d1: $81
	nop                                              ; $73d2: $00
	ld   b, $2b                                      ; $73d3: $06 $2b
	ld   b, b                                        ; $73d5: $40
	ld   b, d                                        ; $73d6: $42
	ld   b, b                                        ; $73d7: $40
	ld   b, e                                        ; $73d8: $43
	ld   b, b                                        ; $73d9: $40
	ld   c, d                                        ; $73da: $4a
	add  a                                           ; $73db: $87
	ld   b, b                                        ; $73dc: $40
	ld   b, $ec                                      ; $73dd: $06 $ec
	nop                                              ; $73df: $00
	jr   nc, jr_075_73e2                             ; $73e0: $30 $00

jr_075_73e2:
	ld   [hl], b                                     ; $73e2: $70
	nop                                              ; $73e3: $00
	xor  h                                           ; $73e4: $ac
	add  a                                           ; $73e5: $87
	nop                                              ; $73e6: $00
	add  b                                           ; $73e7: $80
	add  b                                           ; $73e8: $80
	ld   [bc], a                                     ; $73e9: $02
	add  h                                           ; $73ea: $84
	add  b                                           ; $73eb: $80
	add  d                                           ; $73ec: $82
	add  l                                           ; $73ed: $85
	add  b                                           ; $73ee: $80
	add  b                                           ; $73ef: $80
	add  h                                           ; $73f0: $84
	ld   bc, $8086                                   ; $73f1: $01 $86 $80
	add  b                                           ; $73f4: $80
	ld   bc, $c104                                   ; $73f5: $01 $04 $c1
	ld   hl, $0191                                   ; $73f8: $21 $91 $01
	ld   de, $0187                                   ; $73fb: $11 $87 $01
	ld   a, [bc]                                     ; $73fe: $0a
	ld   b, b                                        ; $73ff: $40
	jr   nz, jr_075_7441                             ; $7400: $20 $3f

	nop                                              ; $7402: $00
	jr   nz, jr_075_7405                             ; $7403: $20 $00

jr_075_7405:
	rra                                              ; $7405: $1f
	nop                                              ; $7406: $00
	inc  b                                           ; $7407: $04
	nop                                              ; $7408: $00
	rlca                                             ; $7409: $07
	add  e                                           ; $740a: $83
	nop                                              ; $740b: $00
	ld   [$0201], sp                                 ; $740c: $08 $01 $02
	ldh  [c], a                                      ; $740f: $e2
	ld   [bc], a                                     ; $7410: $02
	ld   [de], a                                     ; $7411: $12
	ld   [bc], a                                     ; $7412: $02
	sub  d                                           ; $7413: $92
	ld   [bc], a                                     ; $7414: $02
	ldh  [c], a                                      ; $7415: $e2
	add  b                                           ; $7416: $80
	ld   b, d                                        ; $7417: $42
	ld   bc, $8202                                   ; $7418: $01 $02 $82
	add  c                                           ; $741b: $81
	ld   [bc], a                                     ; $741c: $02
	add  b                                           ; $741d: $80
	nop                                              ; $741e: $00
	ld   c, $0c                                      ; $741f: $0e $0c
	inc  b                                           ; $7421: $04
	ld   b, b                                        ; $7422: $40
	ld   d, h                                        ; $7423: $54
	ld   h, l                                        ; $7424: $65
	ld   [bc], a                                     ; $7425: $02
	ld   [hl], a                                     ; $7426: $77
	inc  b                                           ; $7427: $04
	stop                                             ; $7428: $10 $00
	jr   nz, jr_075_742c                             ; $742a: $20 $00

jr_075_742c:
	ld   d, b                                        ; $742c: $50
	nop                                              ; $742d: $00
	ld   l, h                                        ; $742e: $6c
	add  c                                           ; $742f: $81
	inc  b                                           ; $7430: $04
	ld   [bc], a                                     ; $7431: $02
	add  h                                           ; $7432: $84
	inc  b                                           ; $7433: $04
	ld   b, h                                        ; $7434: $44
	add  d                                           ; $7435: $82
	inc  b                                           ; $7436: $04
	nop                                              ; $7437: $00
	ld   b, h                                        ; $7438: $44
	add  b                                           ; $7439: $80
	inc  b                                           ; $743a: $04
	add  hl, bc                                      ; $743b: $09
	inc  h                                           ; $743c: $24
	inc  b                                           ; $743d: $04
	and  b                                           ; $743e: $a0
	nop                                              ; $743f: $00
	inc  b                                           ; $7440: $04

jr_075_7441:
	nop                                              ; $7441: $00
	ld   [bc], a                                     ; $7442: $02
	ld   [$103e], sp                                 ; $7443: $08 $3e $10
	add  b                                           ; $7446: $80
	nop                                              ; $7447: $00
	ld   b, $1e                                      ; $7448: $06 $1e
	ld   d, c                                        ; $744a: $51
	ld   d, $0a                                      ; $744b: $16 $0a
	ld   d, d                                        ; $744d: $52
	nop                                              ; $744e: $00
	ld   hl, $0889                                   ; $744f: $21 $89 $08
	nop                                              ; $7452: $00
	adc  b                                           ; $7453: $88
	add  c                                           ; $7454: $81
	ld   [$8700], sp                                 ; $7455: $08 $00 $87
	add  a                                           ; $7458: $87
	nop                                              ; $7459: $00
	add  b                                           ; $745a: $80
	db   $10                                         ; $745b: $10
	add  b                                           ; $745c: $80
	nop                                              ; $745d: $00
	add  b                                           ; $745e: $80
	ld   d, b                                        ; $745f: $50
	ld   bc, $0af5                                   ; $7460: $01 $f5 $0a
	add  b                                           ; $7463: $80
	inc  c                                           ; $7464: $0c
	add  b                                           ; $7465: $80
	ld   a, [bc]                                     ; $7466: $0a
	add  b                                           ; $7467: $80
	dec  c                                           ; $7468: $0d
	add  b                                           ; $7469: $80
	ld   a, [bc]                                     ; $746a: $0a
	add  b                                           ; $746b: $80
	dec  c                                           ; $746c: $0d
	add  b                                           ; $746d: $80
	ld   c, $80                                      ; $746e: $0e $80
	dec  c                                           ; $7470: $0d
	nop                                              ; $7471: $00
	ldh  a, [$85]                                    ; $7472: $f0 $85
	db   $10                                         ; $7474: $10
	add  b                                           ; $7475: $80
	sub  b                                           ; $7476: $90
	add  b                                           ; $7477: $80
	ld   d, b                                        ; $7478: $50
	add  b                                           ; $7479: $80
	cp   b                                           ; $747a: $b8
	add  b                                           ; $747b: $80
	ld   d, h                                        ; $747c: $54
	nop                                              ; $747d: $00
	jr   nc, @-$7d                                   ; $747e: $30 $81

	jr   nz, @+$04                                   ; $7480: $20 $02

	ld   hl, $2120                                   ; $7482: $21 $20 $21
	add  a                                           ; $7485: $87
	jr   nz, jr_075_748c                             ; $7486: $20 $04

	ldh  [hScriptOpcodeParams], a                                    ; $7488: $e0 $a0
	add  b                                           ; $748a: $80
	nop                                              ; $748b: $00

jr_075_748c:
	ret  nz                                          ; $748c: $c0

	add  b                                           ; $748d: $80
	add  b                                           ; $748e: $80
	add  a                                           ; $748f: $87
	nop                                              ; $7490: $00
	adc  [hl]                                        ; $7491: $8e
	ld   b, b                                        ; $7492: $40
	add  d                                           ; $7493: $82
	add  b                                           ; $7494: $80
	ld   [bc], a                                     ; $7495: $02
	add  c                                           ; $7496: $81
	add  b                                           ; $7497: $80
	add  c                                           ; $7498: $81
	add  c                                           ; $7499: $81
	add  b                                           ; $749a: $80
	nop                                              ; $749b: $00
	add  a                                           ; $749c: $87
	add  b                                           ; $749d: $80
	adc  b                                           ; $749e: $88
	dec  b                                           ; $749f: $05
	add  b                                           ; $74a0: $80
	add  a                                           ; $74a1: $87
	add  b                                           ; $74a2: $80
	pop  hl                                          ; $74a3: $e1
	and  c                                           ; $74a4: $a1
	pop  bc                                          ; $74a5: $c1
	add  b                                           ; $74a6: $80
	ld   b, c                                        ; $74a7: $41
	nop                                              ; $74a8: $00
	add  c                                           ; $74a9: $81
	add  b                                           ; $74aa: $80
	ld   bc, $610e                                   ; $74ab: $01 $0e $61
	ld   bc, $0191                                   ; $74ae: $01 $91 $01
	ld   de, $2101                                   ; $74b1: $11 $01 $21
	ld   bc, $01c3                                   ; $74b4: $01 $c3 $01
	inc  b                                           ; $74b7: $04
	ld   [bc], a                                     ; $74b8: $02
	ld   [$0804], sp                                 ; $74b9: $08 $04 $08
	add  a                                           ; $74bc: $87
	nop                                              ; $74bd: $00
	adc  [hl]                                        ; $74be: $8e
	ld   [bc], a                                     ; $74bf: $02
	ld   b, $48                                      ; $74c0: $06 $48
	jr   nz, jr_075_7524                             ; $74c2: $20 $60

	db   $10                                         ; $74c4: $10

jr_075_74c5:
	ld   [$0818], sp                                 ; $74c5: $08 $18 $08
	add  a                                           ; $74c8: $87
	nop                                              ; $74c9: $00
	nop                                              ; $74ca: $00
	db   $e4                                         ; $74cb: $e4
	add  b                                           ; $74cc: $80
	inc  b                                           ; $74cd: $04
	ld   bc, $44a4                                   ; $74ce: $01 $a4 $44
	adc  c                                           ; $74d1: $89
	inc  b                                           ; $74d2: $04
	ld   b, $01                                      ; $74d3: $06 $01
	nop                                              ; $74d5: $00
	ld   [bc], a                                     ; $74d6: $02
	nop                                              ; $74d7: $00
	rrca                                             ; $74d8: $0f
	nop                                              ; $74d9: $00
	inc  c                                           ; $74da: $0c
	add  a                                           ; $74db: $87
	nop                                              ; $74dc: $00
	ld   [bc], a                                     ; $74dd: $02
	add  b                                           ; $74de: $80
	ld   [$8388], sp                                 ; $74df: $08 $88 $83
	ld   [$0a80], sp                                 ; $74e2: $08 $80 $0a
	add  b                                           ; $74e5: $80
	add  hl, bc                                      ; $74e6: $09
	add  b                                           ; $74e7: $80
	ld   a, [bc]                                     ; $74e8: $0a
	add  b                                           ; $74e9: $80
	dec  c                                           ; $74ea: $0d
	ld   bc, $0007                                   ; $74eb: $01 $07 $00
	add  b                                           ; $74ee: $80
	ld   d, b                                        ; $74ef: $50
	add  b                                           ; $74f0: $80
	jr   nc, @-$7e                                   ; $74f1: $30 $80

	ld   d, b                                        ; $74f3: $50
	add  b                                           ; $74f4: $80
	or   b                                           ; $74f5: $b0
	add  b                                           ; $74f6: $80
	ld   d, b                                        ; $74f7: $50
	add  b                                           ; $74f8: $80
	or   b                                           ; $74f9: $b0
	add  b                                           ; $74fa: $80
	ld   [hl], b                                     ; $74fb: $70
	ld   [bc], a                                     ; $74fc: $02
	pop  af                                          ; $74fd: $f1
	ld   c, $07                                      ; $74fe: $0e $07
	add  c                                           ; $7500: $81
	rrca                                             ; $7501: $0f
	inc  b                                           ; $7502: $04
	dec  bc                                          ; $7503: $0b
	rrca                                             ; $7504: $0f
	dec  c                                           ; $7505: $0d
	rrca                                             ; $7506: $0f
	ld   c, $83                                      ; $7507: $0e $83
	rrca                                             ; $7509: $0f
	ld   bc, $b857                                   ; $750a: $01 $57 $b8
	add  b                                           ; $750d: $80
	ld   d, h                                        ; $750e: $54
	add  b                                           ; $750f: $80
	cp   d                                           ; $7510: $ba
	add  b                                           ; $7511: $80
	push af                                          ; $7512: $f5
	ld   [$fa7a], sp                                 ; $7513: $08 $7a $fa
	dec  [hl]                                        ; $7516: $35
	push af                                          ; $7517: $f5
	rra                                              ; $7518: $1f
	rst  $38                                         ; $7519: $ff
	sub  a                                           ; $751a: $97
	rst  $38                                         ; $751b: $ff
	ret  c                                           ; $751c: $d8

	add  c                                           ; $751d: $81
	nop                                              ; $751e: $00
	add  b                                           ; $751f: $80
	and  b                                           ; $7520: $a0
	add  b                                           ; $7521: $80
	ld   b, b                                        ; $7522: $40
	add  b                                           ; $7523: $80

jr_075_7524:
	xor  b                                           ; $7524: $a8
	add  b                                           ; $7525: $80
	ld   d, l                                        ; $7526: $55
	add  b                                           ; $7527: $80
	ld   [$fd80], a                                  ; $7528: $ea $80 $fd
	add  d                                           ; $752b: $82
	jr   nz, jr_075_752e                             ; $752c: $20 $00

jr_075_752e:
	nop                                              ; $752e: $00
	add  e                                           ; $752f: $83
	jr   nz, @-$7e                                   ; $7530: $20 $80

	ld   h, b                                        ; $7532: $60
	add  b                                           ; $7533: $80
	or   h                                           ; $7534: $b4
	add  b                                           ; $7535: $80
	ld   l, d                                        ; $7536: $6a
	nop                                              ; $7537: $00
	jr   nz, jr_075_74c5                             ; $7538: $20 $8b

	nop                                              ; $753a: $00
	add  b                                           ; $753b: $80
	add  b                                           ; $753c: $80
	add  b                                           ; $753d: $80
	add  c                                           ; $753e: $81
	nop                                              ; $753f: $00
	add  e                                           ; $7540: $83
	add  b                                           ; $7541: $80
	add  d                                           ; $7542: $82
	rlca                                             ; $7543: $07
	add  b                                           ; $7544: $80
	add  l                                           ; $7545: $85
	add  b                                           ; $7546: $80
	adc  d                                           ; $7547: $8a
	add  b                                           ; $7548: $80
	sbc  h                                           ; $7549: $9c
	add  b                                           ; $754a: $80
	sub  b                                           ; $754b: $90
	add  c                                           ; $754c: $81
	add  b                                           ; $754d: $80
	nop                                              ; $754e: $00
	add  c                                           ; $754f: $81
	add  c                                           ; $7550: $81
	ld   bc, $4108                                   ; $7551: $01 $08 $41
	ld   bc, $51a1                                   ; $7554: $01 $a1 $51
	add  hl, bc                                      ; $7557: $09
	ld   bc, $0121                                   ; $7558: $01 $21 $01
	add  hl, de                                      ; $755b: $19
	add  c                                           ; $755c: $81
	ld   bc, $0482                                   ; $755d: $01 $82 $04
	nop                                              ; $7560: $00
	nop                                              ; $7561: $00
	add  e                                           ; $7562: $83

jr_075_7563:
	inc  b                                           ; $7563: $04
	add  b                                           ; $7564: $80
	dec  b                                           ; $7565: $05
	add  b                                           ; $7566: $80
	ld   c, $80                                      ; $7567: $0e $80
	ld   d, l                                        ; $7569: $55
	nop                                              ; $756a: $00
	inc  b                                           ; $756b: $04
	add  c                                           ; $756c: $81
	nop                                              ; $756d: $00
	add  b                                           ; $756e: $80
	ld   [bc], a                                     ; $756f: $02
	add  b                                           ; $7570: $80
	ld   bc, $2a80                                   ; $7571: $01 $80 $2a
	add  b                                           ; $7574: $80
	dec  d                                           ; $7575: $15
	add  b                                           ; $7576: $80
	xor  d                                           ; $7577: $aa
	add  b                                           ; $7578: $80
	ld   e, a                                        ; $7579: $5f
	ld   bc, $0a02                                   ; $757a: $01 $02 $0a
	add  b                                           ; $757d: $80
	ld   e, l                                        ; $757e: $5d
	add  b                                           ; $757f: $80
	xor  d                                           ; $7580: $aa
	add  b                                           ; $7581: $80
	ld   e, l                                        ; $7582: $5d
	add  b                                           ; $7583: $80
	xor  e                                           ; $7584: $ab
	add  b                                           ; $7585: $80
	ld   e, a                                        ; $7586: $5f
	rlca                                             ; $7587: $07
	cp   $ff                                         ; $7588: $fe $ff
	db   $fd                                         ; $758a: $fd
	rst  $38                                         ; $758b: $ff
	or   h                                           ; $758c: $b4
	or   b                                           ; $758d: $b0
	ld   h, b                                        ; $758e: $60
	ld   [hl], b                                     ; $758f: $70
	add  b                                           ; $7590: $80
	ldh  a, [rP1]                                    ; $7591: $f0 $00
	ret  nc                                          ; $7593: $d0

	add  c                                           ; $7594: $81
	ldh  a, [rSC]                                    ; $7595: $f0 $02
	or   b                                           ; $7597: $b0
	ldh  a, [rSVBK]                                  ; $7598: $f0 $70
	add  c                                           ; $759a: $81
	ldh  a, [$80]                                    ; $759b: $f0 $80
	nop                                              ; $759d: $00
	add  b                                           ; $759e: $80
	ld   bc, $0207                                   ; $759f: $01 $07 $02
	inc  bc                                          ; $75a2: $03
	inc  b                                           ; $75a3: $04
	ld   b, $01                                      ; $75a4: $06 $01
	inc  b                                           ; $75a6: $04
	ld   [$800a], sp                                 ; $75a7: $08 $0a $80
	ld   [$040a], sp                                 ; $75aa: $08 $0a $04
	inc  c                                           ; $75ad: $0c
	ld   c, l                                        ; $75ae: $4d
	ld   a, [hl]                                     ; $75af: $7e
	dec  h                                           ; $75b0: $25
	db   $fd                                         ; $75b1: $fd
	and  l                                           ; $75b2: $a5
	jp   $028f                                       ; $75b3: $c3 $8f $02


	inc  bc                                          ; $75b6: $03
	add  l                                           ; $75b7: $85
	nop                                              ; $75b8: $00
	ld   bc, $00f0                                   ; $75b9: $01 $f0 $00
	add  b                                           ; $75bc: $80
	add  b                                           ; $75bd: $80
	add  b                                           ; $75be: $80
	ld   b, b                                        ; $75bf: $40
	add  b                                           ; $75c0: $80
	and  b                                           ; $75c1: $a0
	inc  de                                          ; $75c2: $13
	ldh  [$60], a                                    ; $75c3: $e0 $60
	sub  b                                           ; $75c5: $90
	ld   d, b                                        ; $75c6: $50

jr_075_75c7:
	jr   nc, jr_075_7601                             ; $75c7: $30 $38

	db   $10                                         ; $75c9: $10
	jr   nc, jr_075_7563                             ; $75ca: $30 $97

	inc  c                                           ; $75cc: $0c
	dec  b                                           ; $75cd: $05
	dec  c                                           ; $75ce: $0d
	ld   c, $0f                                      ; $75cf: $0e $0f
	nop                                              ; $75d1: $00
	ld   b, $00                                      ; $75d2: $06 $00
	dec  b                                           ; $75d4: $05
	add  hl, bc                                      ; $75d5: $09
	dec  bc                                          ; $75d6: $0b
	add  b                                           ; $75d7: $80
	add  hl, bc                                      ; $75d8: $09
	dec  d                                           ; $75d9: $15
	inc  b                                           ; $75da: $04
	inc  c                                           ; $75db: $0c
	ld   c, l                                        ; $75dc: $4d
	ld   a, [hl]                                     ; $75dd: $7e
	dec  [hl]                                        ; $75de: $35
	db   $fd                                         ; $75df: $fd
	or   l                                           ; $75e0: $b5
	jp   $028f                                       ; $75e1: $c3 $8f $02


	inc  bc                                          ; $75e4: $03
	nop                                              ; $75e5: $00
	ld   b, b                                        ; $75e6: $40
	ret  nz                                          ; $75e7: $c0

	or   b                                           ; $75e8: $b0
	ldh  a, [$b0]                                    ; $75e9: $f0 $b0
	ld   [hl], b                                     ; $75eb: $70
	ret  nz                                          ; $75ec: $c0

	ld   c, b                                        ; $75ed: $48
	ret  z                                           ; $75ee: $c8

	or   b                                           ; $75ef: $b0
	add  b                                           ; $75f0: $80
	ld   b, b                                        ; $75f1: $40
	add  b                                           ; $75f2: $80
	and  b                                           ; $75f3: $a0
	rlca                                             ; $75f4: $07
	ldh  [$60], a                                    ; $75f5: $e0 $60
	sub  b                                           ; $75f7: $90
	ld   d, b                                        ; $75f8: $50
	jr   nc, @+$3a                                   ; $75f9: $30 $38

	db   $10                                         ; $75fb: $10
	jr   nc, jr_075_75c7                             ; $75fc: $30 $c9

	ld   bc, $0086                                   ; $75fe: $01 $86 $00

jr_075_7601:
	add  [hl]                                        ; $7601: $86
	ld   c, $86                                      ; $7602: $0e $86
	nop                                              ; $7604: $00
	add  [hl]                                        ; $7605: $86
	rst  $38                                         ; $7606: $ff
	add  [hl]                                        ; $7607: $86
	nop                                              ; $7608: $00
	nop                                              ; $7609: $00
	ld   a, a                                        ; $760a: $7f
	add  b                                           ; $760b: $80
	ld   a, [hl]                                     ; $760c: $7e
	add  e                                           ; $760d: $83
	ld   a, a                                        ; $760e: $7f
	add  [hl]                                        ; $760f: $86
	nop                                              ; $7610: $00
	rlca                                             ; $7611: $07
	pop  hl                                          ; $7612: $e1
	ld   e, $83                                      ; $7613: $1e $83
	ld   b, e                                        ; $7615: $43
	ld   b, b                                        ; $7616: $40
	ld   a, b                                        ; $7617: $78
	ld   a, c                                        ; $7618: $79
	ld   a, [hl]                                     ; $7619: $7e
	add  [hl]                                        ; $761a: $86
	nop                                              ; $761b: $00
	ld   bc, $3ec1                                   ; $761c: $01 $c1 $3e
	add  b                                           ; $761f: $80
	adc  a                                           ; $7620: $8f
	add  b                                           ; $7621: $80
	ld   [hl], c                                     ; $7622: $71
	add  b                                           ; $7623: $80
	inc  c                                           ; $7624: $0c
	nop                                              ; $7625: $00
	rst  $38                                         ; $7626: $ff
	add  l                                           ; $7627: $85
	nop                                              ; $7628: $00
	ld   bc, $00ff                                   ; $7629: $01 $ff $00
	add  b                                           ; $762c: $80
	ret  nz                                          ; $762d: $c0

	inc  b                                           ; $762e: $04
	ld   b, $17                                      ; $762f: $06 $17
	ld   de, $2fd0                                   ; $7631: $11 $d0 $2f
	add  l                                           ; $7634: $85
	nop                                              ; $7635: $00
	ld   bc, $00ff                                   ; $7636: $01 $ff $00
	add  b                                           ; $7639: $80
	sub  b                                           ; $763a: $90
	inc  b                                           ; $763b: $04
	inc  bc                                          ; $763c: $03

jr_075_763d:
	rst  $38                                         ; $763d: $ff
	ret  z                                           ; $763e: $c8

	dec  a                                           ; $763f: $3d
	or   $85                                         ; $7640: $f6 $85
	nop                                              ; $7642: $00
	ld   bc, $00ff                                   ; $7643: $01 $ff $00
	add  b                                           ; $7646: $80
	ld   a, [de]                                     ; $7647: $1a
	add  b                                           ; $7648: $80
	rst  ToBoot                                         ; $7649: $c7
	ld   [bc], a                                     ; $764a: $02
	jr   nz, jr_075_763d                             ; $764b: $20 $f0

	cpl                                              ; $764d: $2f
	add  l                                           ; $764e: $85
	nop                                              ; $764f: $00
	dec  b                                           ; $7650: $05
	rst  $38                                         ; $7651: $ff
	nop                                              ; $7652: $00
	db   $e3                                         ; $7653: $e3
	ei                                               ; $7654: $fb
	reti                                             ; $7655: $d9


	db   $fd                                         ; $7656: $fd
	add  b                                           ; $7657: $80
	inc  a                                           ; $7658: $3c
	nop                                              ; $7659: $00
	jp   $0085                                       ; $765a: $c3 $85 $00


	dec  b                                           ; $765d: $05
	ei                                               ; $765e: $fb
	inc  b                                           ; $765f: $04
	ldh  [$f8], a                                    ; $7660: $e0 $f8
	ret  c                                           ; $7662: $d8

	ld   sp, hl                                      ; $7663: $f9
	add  b                                           ; $7664: $80
	add  hl, sp                                      ; $7665: $39
	nop                                              ; $7666: $00
	add  $85                                         ; $7667: $c6 $85
	nop                                              ; $7669: $00
	ld   [bc], a                                     ; $766a: $02
	sbc  l                                           ; $766b: $9d
	ld   [bc], a                                     ; $766c: $02
	ld   h, b                                        ; $766d: $60
	add  b                                           ; $766e: $80
	sub  c                                           ; $766f: $91
	add  c                                           ; $7670: $81
	pop  af                                          ; $7671: $f1
	nop                                              ; $7672: $00
	ld   c, $85                                      ; $7673: $0e $85
	nop                                              ; $7675: $00
	dec  b                                           ; $7676: $05
	rst  $38                                         ; $7677: $ff
	nop                                              ; $7678: $00
	ld   a, $bf                                      ; $7679: $3e $bf
	sbc  l                                           ; $767b: $9d
	rst  JumpTable                                         ; $767c: $df
	add  b                                           ; $767d: $80
	jp   $3c00                                       ; $767e: $c3 $00 $3c


	add  l                                           ; $7681: $85
	nop                                              ; $7682: $00
	dec  b                                           ; $7683: $05
	rst  $38                                         ; $7684: $ff
	nop                                              ; $7685: $00
	ld   a, $be                                      ; $7686: $3e $be
	sbc  a                                           ; $7688: $9f
	rst  JumpTable                                         ; $7689: $df
	add  b                                           ; $768a: $80
	ret  nz                                          ; $768b: $c0

	nop                                              ; $768c: $00
	ccf                                              ; $768d: $3f
	add  l                                           ; $768e: $85
	nop                                              ; $768f: $00
	ld   bc, $00ff                                   ; $7690: $01 $ff $00
	add  b                                           ; $7693: $80
	xor  d                                           ; $7694: $aa
	add  b                                           ; $7695: $80
	db   $fd                                         ; $7696: $fd
	add  b                                           ; $7697: $80
	nop                                              ; $7698: $00
	nop                                              ; $7699: $00
	rst  $38                                         ; $769a: $ff
	add  l                                           ; $769b: $85
	nop                                              ; $769c: $00
	ld   bc, $00ff                                   ; $769d: $01 $ff $00
	add  b                                           ; $76a0: $80
	xor  c                                           ; $76a1: $a9
	add  b                                           ; $76a2: $80
	ld   d, h                                        ; $76a3: $54
	add  b                                           ; $76a4: $80
	nop                                              ; $76a5: $00
	nop                                              ; $76a6: $00
	rst  $38                                         ; $76a7: $ff
	add  l                                           ; $76a8: $85
	nop                                              ; $76a9: $00
	ld   bc, $f807                                   ; $76aa: $01 $07 $f8
	add  b                                           ; $76ad: $80
	rst  ToBoot                                         ; $76ae: $c7
	add  b                                           ; $76af: $80
	inc  a                                           ; $76b0: $3c
	ld   [bc], a                                     ; $76b1: $02
	pop  hl                                          ; $76b2: $e1
	ldh  [$f0], a                                    ; $76b3: $e0 $f0
	adc  l                                           ; $76b5: $8d
	ld   c, $8e                                      ; $76b6: $0e $8e
	rst  $38                                         ; $76b8: $ff
	adc  [hl]                                        ; $76b9: $8e
	ld   a, a                                        ; $76ba: $7f
	adc  [hl]                                        ; $76bb: $8e
	ld   a, [hl]                                     ; $76bc: $7e
	nop                                              ; $76bd: $00
	rst  $38                                         ; $76be: $ff
	add  b                                           ; $76bf: $80
	ldh  [$80], a                                    ; $76c0: $e0 $80
	ld   hl, sp-$77                                  ; $76c2: $f8 $89
	ei                                               ; $76c4: $fb
	dec  bc                                          ; $76c5: $0b
	sbc  e                                           ; $76c6: $9b
	ei                                               ; $76c7: $fb
	db   $eb                                         ; $76c8: $eb
	db   $fc                                         ; $76c9: $fc
	sub  h                                           ; $76ca: $94
	rst  $38                                         ; $76cb: $ff
	ldh  [$7f], a                                    ; $76cc: $e0 $7f
	ld   hl, sp-$72                                  ; $76ce: $f8 $8e
	adc  a                                           ; $76d0: $8f
	pop  bc                                          ; $76d1: $c1
	add  d                                           ; $76d2: $82
	ret  z                                           ; $76d3: $c8

	ld   hl, $f756                                   ; $76d4: $21 $56 $f7
	db   $ed                                         ; $76d7: $ed
	rrca                                             ; $76d8: $0f
	dec  bc                                          ; $76d9: $0b

jr_075_76da:
	rst  $38                                         ; $76da: $ff
	call z, $34ff                                    ; $76db: $cc $ff $34
	rst  $38                                         ; $76de: $ff
	rrca                                             ; $76df: $0f
	di                                               ; $76e0: $f3
	rst  $28                                         ; $76e1: $ef
	inc  e                                           ; $76e2: $1c
	ld   h, $ff                                      ; $76e3: $26 $ff
	cp   b                                           ; $76e5: $b8
	pop  af                                          ; $76e6: $f1
	ldh  a, [$f4]                                    ; $76e7: $f0 $f4
	ld   b, h                                        ; $76e9: $44
	db   $f4                                         ; $76ea: $f4
	jr   nz, jr_075_76da                             ; $76eb: $20 $ed

	pop  hl                                          ; $76ed: $e1
	jp   hl                                          ; $76ee: $e9


	pop  af                                          ; $76ef: $f1
	sub  c                                           ; $76f0: $91
	add  c                                           ; $76f1: $81
	add  hl, bc                                      ; $76f2: $09
	reti                                             ; $76f3: $d9


	ld   sp, hl                                      ; $76f4: $f9
	xor  c                                           ; $76f5: $a9
	jp   c, $9880                                    ; $76f6: $da $80 $98

	inc  b                                           ; $76f9: $04
	ld   b, d                                        ; $76fa: $42
	ld   bc, $a5bd                                   ; $76fb: $01 $bd $a5
	sbc  e                                           ; $76fe: $9b
	add  c                                           ; $76ff: $81
	rst  $38                                         ; $7700: $ff
	ld   a, [bc]                                     ; $7701: $0a
	push hl                                          ; $7702: $e5
	add  b                                           ; $7703: $80
	and  b                                           ; $7704: $a0
	rst  $38                                         ; $7705: $ff
	cp   a                                           ; $7706: $bf
	db   $fd                                         ; $7707: $fd
	dec  e                                           ; $7708: $1d
	ld   c, $06                                      ; $7709: $0e $06
	ei                                               ; $770b: $fb
	rst  $10                                         ; $770c: $d7
	add  b                                           ; $770d: $80
	cp   $00                                         ; $770e: $fe $00
	db   $fd                                         ; $7710: $fd
	add  b                                           ; $7711: $80
	db   $fc                                         ; $7712: $fc
	ld   b, $d9                                      ; $7713: $06 $d9
	nop                                              ; $7715: $00
	ld   d, d                                        ; $7716: $52
	rst  $38                                         ; $7717: $ff
	xor  l                                           ; $7718: $ad
	di                                               ; $7719: $f3
	ldh  a, [c]                                      ; $771a: $f2
	add  b                                           ; $771b: $80
	rst  $30                                         ; $771c: $f7
	inc  b                                           ; $771d: $04
	ld   l, l                                        ; $771e: $6d
	ld   l, e                                        ; $771f: $6b
	rlca                                             ; $7720: $07
	db   $d3                                         ; $7721: $d3
	ei                                               ; $7722: $fb
	add  b                                           ; $7723: $80
	di                                               ; $7724: $f3
	inc  c                                           ; $7725: $0c
	ld   c, b                                        ; $7726: $48
	nop                                              ; $7727: $00
	db   $e4                                         ; $7728: $e4
	sbc  a                                           ; $7729: $9f
	inc  hl                                          ; $772a: $23
	cp   l                                           ; $772b: $bd
	add  c                                           ; $772c: $81
	ld   bc, $f804                                   ; $772d: $01 $04 $f8
	db   $db                                         ; $7730: $db
	ld   a, [$81fe]                                  ; $7731: $fa $fe $81
	rst  $38                                         ; $7734: $ff
	dec  b                                           ; $7735: $05
	reti                                             ; $7736: $d9


	nop                                              ; $7737: $00
	add  b                                           ; $7738: $80
	rst  $38                                         ; $7739: $ff
	ld   [hl], b                                     ; $773a: $70
	xor  a                                           ; $773b: $af
	add  b                                           ; $773c: $80
	add  b                                           ; $773d: $80
	inc  b                                           ; $773e: $04
	jr   z, jr_075_7748                              ; $773f: $28 $07

	rst  ToBoot                                         ; $7741: $c7
	ld   d, a                                        ; $7742: $57
	scf                                              ; $7743: $37
	add  d                                           ; $7744: $82
	rst  $30                                         ; $7745: $f7
	inc  b                                           ; $7746: $04
	scf                                              ; $7747: $37

jr_075_7748:
	or   a                                           ; $7748: $b7
	rst  $30                                         ; $7749: $f7
	adc  d                                           ; $774a: $8a
	push de                                          ; $774b: $d5
	add  b                                           ; $774c: $80
	nop                                              ; $774d: $00
	nop                                              ; $774e: $00
	ld   b, d                                        ; $774f: $42
	adc  c                                           ; $7750: $89
	cp   l                                           ; $7751: $bd
	ld   bc, $50af                                   ; $7752: $01 $af $50
	add  b                                           ; $7755: $80
	nop                                              ; $7756: $00
	nop                                              ; $7757: $00
	db   $10                                         ; $7758: $10
	adc  c                                           ; $7759: $89
	rst  $28                                         ; $775a: $ef
	nop                                              ; $775b: $00
	cp   $80                                         ; $775c: $fe $80
	ld   c, $8b                                      ; $775e: $0e $8b
	ld   a, [hl]                                     ; $7760: $7e
	nop                                              ; $7761: $00
	adc  [hl]                                        ; $7762: $8e
	adc  l                                           ; $7763: $8d
	ld   c, $8e                                      ; $7764: $0e $8e
	rst  $38                                         ; $7766: $ff
	adc  [hl]                                        ; $7767: $8e
	ld   a, a                                        ; $7768: $7f
	adc  [hl]                                        ; $7769: $8e
	ld   a, [hl]                                     ; $776a: $7e
	nop                                              ; $776b: $00
	rst  $38                                         ; $776c: $ff
	adc  l                                           ; $776d: $8d
	ei                                               ; $776e: $fb
	nop                                              ; $776f: $00
	di                                               ; $7770: $f3
	add  c                                           ; $7771: $81
	ret  z                                           ; $7772: $c8

	add  b                                           ; $7773: $80
	jp   z, $da84                                    ; $7774: $ca $84 $da

	ld   bc, $bafa                                   ; $7777: $01 $fa $ba
	add  b                                           ; $777a: $80
	or   [hl]                                        ; $777b: $b6
	ld   bc, rAUDENA                                   ; $777c: $01 $26 $ff
	add  d                                           ; $777f: $82
	ld   a, a                                        ; $7780: $7f
	nop                                              ; $7781: $00
	ld   a, e                                        ; $7782: $7b
	add  c                                           ; $7783: $81
	ld   a, a                                        ; $7784: $7f
	nop                                              ; $7785: $00
	ld   c, a                                        ; $7786: $4f
	add  c                                           ; $7787: $81
	ccf                                              ; $7788: $3f
	ld   [bc], a                                     ; $7789: $02
	dec  a                                           ; $778a: $3d
	ccf                                              ; $778b: $3f
	rst  $38                                         ; $778c: $ff
	add  c                                           ; $778d: $81
	ld   sp, hl                                      ; $778e: $f9
	nop                                              ; $778f: $00
	ld   a, c                                        ; $7790: $79
	add  c                                           ; $7791: $81
	ld   sp, hl                                      ; $7792: $f9
	ld   [bc], a                                     ; $7793: $02
	cp   c                                           ; $7794: $b9
	db   $fd                                         ; $7795: $fd
	db   $dd                                         ; $7796: $dd
	add  e                                           ; $7797: $83
	db   $fd                                         ; $7798: $fd
	nop                                              ; $7799: $00
	ld   h, l                                        ; $779a: $65
	add  c                                           ; $779b: $81
	rst  $38                                         ; $779c: $ff
	ld   bc, $ffdd                                   ; $779d: $01 $dd $ff
	add  b                                           ; $77a0: $80
	cp   $83                                         ; $77a1: $fe $83
	ld   a, [$ff1c]                                  ; $77a3: $fa $1c $ff
	cp   $ff                                         ; $77a6: $fe $ff
	ld   h, e                                        ; $77a8: $63
	rst  $38                                         ; $77a9: $ff
	cp   e                                           ; $77aa: $bb
	ei                                               ; $77ab: $fb
	or   $f3                                         ; $77ac: $f6 $f3
	ret                                              ; $77ae: $c9


	jp   nz, $c7e3                                   ; $77af: $c2 $e3 $c7

	ld   h, e                                        ; $77b2: $63
	rst  $30                                         ; $77b3: $f7
	ld   d, h                                        ; $77b4: $54
	or   h                                           ; $77b5: $b4
	push hl                                          ; $77b6: $e5
	rst  $38                                         ; $77b7: $ff
	ld   c, l                                        ; $77b8: $4d
	rst  $38                                         ; $77b9: $ff
	and  l                                           ; $77ba: $a5
	push af                                          ; $77bb: $f5
	rst  $30                                         ; $77bc: $f7
	sbc  h                                           ; $77bd: $9c
	add  d                                           ; $77be: $82
	ld   e, $03                                      ; $77bf: $1e $03
	ld   bc, $e380                                   ; $77c1: $01 $80 $e3
	rlca                                             ; $77c4: $07
	inc  c                                           ; $77c5: $0c
	rrca                                             ; $77c6: $0f
	inc  bc                                          ; $77c7: $03
	ld   bc, $ff6f                                   ; $77c8: $01 $6f $ff
	cp   e                                           ; $77cb: $bb
	cp   a                                           ; $77cc: $bf
	add  b                                           ; $77cd: $80
	sbc  a                                           ; $77ce: $9f
	add  b                                           ; $77cf: $80
	rra                                              ; $77d0: $1f
	ld   [$3d5d], sp                                 ; $77d1: $08 $5d $3d
	dec  [hl]                                        ; $77d4: $35
	ld   a, l                                        ; $77d5: $7d
	ld   b, l                                        ; $77d6: $45
	ld   a, a                                        ; $77d7: $7f
	ld   b, $87                                      ; $77d8: $06 $87
	ld   d, b                                        ; $77da: $50
	add  e                                           ; $77db: $83
	rst  $30                                         ; $77dc: $f7
	nop                                              ; $77dd: $00
	ld   [hl], a                                     ; $77de: $77
	add  e                                           ; $77df: $83
	rst  $30                                         ; $77e0: $f7
	add  c                                           ; $77e1: $81
	or   a                                           ; $77e2: $b7
	dec  bc                                          ; $77e3: $0b
	scf                                              ; $77e4: $37
	rra                                              ; $77e5: $1f
	cp   h                                           ; $77e6: $bc
	cp   d                                           ; $77e7: $ba
	cp   a                                           ; $77e8: $bf
	or   h                                           ; $77e9: $b4
	cp   l                                           ; $77ea: $bd
	cp   b                                           ; $77eb: $b8
	adc  e                                           ; $77ec: $8b
	sub  e                                           ; $77ed: $93
	sub  a                                           ; $77ee: $97
	add  a                                           ; $77ef: $87
	add  b                                           ; $77f0: $80
	adc  h                                           ; $77f1: $8c
	dec  c                                           ; $77f2: $0d
	sbc  e                                           ; $77f3: $9b
	sbc  b                                           ; $77f4: $98
	add  a                                           ; $77f5: $87
	cp   e                                           ; $77f6: $bb
	ld   a, a                                        ; $77f7: $7f
	ccf                                              ; $77f8: $3f
	cp   a                                           ; $77f9: $bf
	nop                                              ; $77fa: $00
	ret  nz                                          ; $77fb: $c0

	add  b                                           ; $77fc: $80
	rst  $30                                         ; $77fd: $f7
	ld   [$ccff], sp                                 ; $77fe: $08 $ff $cc
	add  b                                           ; $7801: $80
	rst  $38                                         ; $7802: $ff
	add  b                                           ; $7803: $80
	ld   a, a                                        ; $7804: $7f
	ld   bc, $6c9f                                   ; $7805: $01 $9f $6c
	add  c                                           ; $7808: $81
	rst  $38                                         ; $7809: $ff
	add  c                                           ; $780a: $81
	nop                                              ; $780b: $00
	inc  bc                                          ; $780c: $03
	rst  $38                                         ; $780d: $ff
	nop                                              ; $780e: $00
	rst  $38                                         ; $780f: $ff
	nop                                              ; $7810: $00
	add  b                                           ; $7811: $80
	rst  $38                                         ; $7812: $ff
	inc  bc                                          ; $7813: $03
	ld   hl, sp-$06                                  ; $7814: $f8 $fa
	rst  $30                                         ; $7816: $f7
	inc  b                                           ; $7817: $04
	adc  l                                           ; $7818: $8d
	ld   c, $8e                                      ; $7819: $0e $8e
	rst  $38                                         ; $781b: $ff
	add  l                                           ; $781c: $85
	ld   a, a                                        ; $781d: $7f
	add  b                                           ; $781e: $80
	ld   a, b                                        ; $781f: $78
	add  b                                           ; $7820: $80
	ld   d, $00                                      ; $7821: $16 $00
	inc  c                                           ; $7823: $0c
	add  b                                           ; $7824: $80
	inc  e                                           ; $7825: $1c
	nop                                              ; $7826: $00
	dec  c                                           ; $7827: $0d
	add  b                                           ; $7828: $80
	dec  e                                           ; $7829: $1d
	add  l                                           ; $782a: $85
	ld   a, [hl]                                     ; $782b: $7e
	ld   [$3efe], sp                                 ; $782c: $08 $fe $3e
	cp   $9e                                         ; $782f: $fe $9e
	cp   [hl]                                        ; $7831: $be
	sbc  [hl]                                        ; $7832: $9e
	adc  [hl]                                        ; $7833: $8e
	sbc  $2f                                         ; $7834: $de $2f
	add  h                                           ; $7836: $84
	ei                                               ; $7837: $fb
	nop                                              ; $7838: $00
	ld   a, [$fb81]                                  ; $7839: $fa $81 $fb
	nop                                              ; $783c: $00
	ld   sp, hl                                      ; $783d: $f9
	add  d                                           ; $783e: $82
	ei                                               ; $783f: $fb
	inc  bc                                          ; $7840: $03
	adc  $b6                                         ; $7841: $ce $b6
	or   $76                                         ; $7843: $f6 $76
	add  b                                           ; $7845: $80
	ld   h, [hl]                                     ; $7846: $66
	add  d                                           ; $7847: $82
	and  $82                                         ; $7848: $e6 $82
	sub  $80                                         ; $784a: $d6 $80
	sub  [hl]                                        ; $784c: $96
	ld   b, $89                                      ; $784d: $06 $89
	cp   a                                           ; $784f: $bf
	rst  $38                                         ; $7850: $ff
	rst  JumpTable                                         ; $7851: $df
	rst  $10                                         ; $7852: $d7
	rst  JumpTable                                         ; $7853: $df
	jp   c, $cf81                                    ; $7854: $da $81 $cf

	ld   b, $c9                                      ; $7857: $06 $c9
	rst  ToBoot                                         ; $7859: $c7
	push bc                                          ; $785a: $c5
	jp   $d3d2                                       ; $785b: $c3 $d2 $d3


	ld   [de], a                                     ; $785e: $12
	add  c                                           ; $785f: $81
	db   $fd                                         ; $7860: $fd
	dec  h                                           ; $7861: $25
	ld   l, l                                        ; $7862: $6d
	db   $fd                                         ; $7863: $fd
	db   $ed                                         ; $7864: $ed
	db   $fd                                         ; $7865: $fd
	rst  $38                                         ; $7866: $ff
	cp   $2e                                         ; $7867: $fe $2e
	cp   $f6                                         ; $7869: $fe $f6
	cp   $be                                         ; $786b: $fe $be
	cp   $1b                                         ; $786d: $fe $1b
	adc  b                                           ; $786f: $88
	xor  $86                                         ; $7870: $ee $86
	pop  bc                                          ; $7872: $c1
	pop  de                                          ; $7873: $d1
	ret  z                                           ; $7874: $c8

	cp   b                                           ; $7875: $b8
	ret  nz                                          ; $7876: $c0

	cp   [hl]                                        ; $7877: $be
	sbc  a                                           ; $7878: $9f
	pop  af                                          ; $7879: $f1
	ret  c                                           ; $787a: $d8

	cp   b                                           ; $787b: $b8
	rst  $28                                         ; $787c: $ef
	cp   a                                           ; $787d: $bf
	xor  b                                           ; $787e: $a8
	db   $10                                         ; $787f: $10
	inc  c                                           ; $7880: $0c
	inc  e                                           ; $7881: $1c
	add  e                                           ; $7882: $83
	rst  $30                                         ; $7883: $f7
	add  h                                           ; $7884: $84
	rst  $28                                         ; $7885: $ef
	rra                                              ; $7886: $1f
	db   $10                                         ; $7887: $10
	add  b                                           ; $7888: $80
	xor  $09                                         ; $7889: $ee $09
	inc  bc                                          ; $788b: $03
	rla                                              ; $788c: $17
	add  h                                           ; $788d: $84
	db   $f4                                         ; $788e: $f4
	sbc  h                                           ; $788f: $9c
	pop  af                                          ; $7890: $f1
	ld   bc, $0f03                                   ; $7891: $01 $03 $0f
	inc  c                                           ; $7894: $0c
	add  b                                           ; $7895: $80
	pop  hl                                          ; $7896: $e1
	inc  bc                                          ; $7897: $03
	cp   $ff                                         ; $7898: $fe $ff
	rrca                                             ; $789a: $0f
	ld   c, $80                                      ; $789b: $0e $80
	ld   [$7015], sp                                 ; $789d: $08 $15 $70
	ld   [hl], c                                     ; $78a0: $71
	adc  [hl]                                        ; $78a1: $8e
	ld   c, [hl]                                     ; $78a2: $4e
	pop  de                                          ; $78a3: $d1
	ldh  a, [rAUD3LEVEL]                             ; $78a4: $f0 $1c
	ld   a, l                                        ; $78a6: $7d
	adc  l                                           ; $78a7: $8d
	adc  a                                           ; $78a8: $8f
	cp   e                                           ; $78a9: $bb
	ld   hl, sp+$50                                  ; $78aa: $f8 $50
	pop  af                                          ; $78ac: $f1
	ld   l, l                                        ; $78ad: $6d
	adc  a                                           ; $78ae: $8f
	ret  nz                                          ; $78af: $c0

	jp   $3717                                       ; $78b0: $c3 $17 $37


	ld   [hl], a                                     ; $78b3: $77
	scf                                              ; $78b4: $37
	add  b                                           ; $78b5: $80
	ld   [hl], a                                     ; $78b6: $77
	ld   bc, $7737                                   ; $78b7: $01 $37 $77
	add  b                                           ; $78ba: $80
	or   a                                           ; $78bb: $b7
	inc  e                                           ; $78bc: $1c
	scf                                              ; $78bd: $37
	ld   [hl], c                                     ; $78be: $71
	ld   a, a                                        ; $78bf: $7f
	ld   [hl], $70                                   ; $78c0: $36 $70
	ld   h, [hl]                                     ; $78c2: $66
	nop                                              ; $78c3: $00
	sbc  [hl]                                        ; $78c4: $9e
	add  [hl]                                        ; $78c5: $86
	sbc  [hl]                                        ; $78c6: $9e
	sbc  h                                           ; $78c7: $9c
	sbc  [hl]                                        ; $78c8: $9e
	sub  [hl]                                        ; $78c9: $96
	sbc  [hl]                                        ; $78ca: $9e
	sub  d                                           ; $78cb: $92
	sbc  [hl]                                        ; $78cc: $9e
	sub  d                                           ; $78cd: $92
	sbc  [hl]                                        ; $78ce: $9e
	sub  [hl]                                        ; $78cf: $96
	sbc  [hl]                                        ; $78d0: $9e
	sub  [hl]                                        ; $78d1: $96
	ld   e, $c6                                      ; $78d2: $1e $c6
	rst  JumpTable                                         ; $78d4: $df
	sbc  a                                           ; $78d5: $9f
	rst  $38                                         ; $78d6: $ff
	ld   e, a                                        ; $78d7: $5f
	rst  $38                                         ; $78d8: $ff
	cp   a                                           ; $78d9: $bf
	add  c                                           ; $78da: $81
	rst  $38                                         ; $78db: $ff
	ld   [bc], a                                     ; $78dc: $02
	ccf                                              ; $78dd: $3f
	rst  $38                                         ; $78de: $ff
	ld   a, a                                        ; $78df: $7f
	add  c                                           ; $78e0: $81
	rst  $38                                         ; $78e1: $ff
	db   $10                                         ; $78e2: $10
	sub  h                                           ; $78e3: $94
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78e4: $cf
	ret  nc                                          ; $78e5: $d0

	ld   a, [hl-]                                    ; $78e6: $3a
	db   $10                                         ; $78e7: $10
	ld   a, a                                        ; $78e8: $7f
	jr   z, jr_075_7968                              ; $78e9: $28 $7d

	ld   e, d                                        ; $78eb: $5a
	ld   a, a                                        ; $78ec: $7f
	ccf                                              ; $78ed: $3f
	ld   a, a                                        ; $78ee: $7f
	ccf                                              ; $78ef: $3f
	ld   a, a                                        ; $78f0: $7f
	ccf                                              ; $78f1: $3f
	ld   a, a                                        ; $78f2: $7f
	adc  h                                           ; $78f3: $8c
	adc  l                                           ; $78f4: $8d
	ld   c, $82                                      ; $78f5: $0e $82
	rst  $38                                         ; $78f7: $ff
	nop                                              ; $78f8: $00
	cp   $81                                         ; $78f9: $fe $81
	rst  $38                                         ; $78fb: $ff
	ld   [bc], a                                     ; $78fc: $02
	db   $fc                                         ; $78fd: $fc
	rst  $38                                         ; $78fe: $ff
	db   $fd                                         ; $78ff: $fd
	add  e                                           ; $7900: $83
	rst  $38                                         ; $7901: $ff
	ld   [bc], a                                     ; $7902: $02
	ld   e, [hl]                                     ; $7903: $5e
	cp   l                                           ; $7904: $bd
	sbc  l                                           ; $7905: $9d
	add  c                                           ; $7906: $81
	cp   l                                           ; $7907: $bd
	nop                                              ; $7908: $00
	cp   h                                           ; $7909: $bc
	add  b                                           ; $790a: $80
	rst  $38                                         ; $790b: $ff
	add  l                                           ; $790c: $85
	ld   a, a                                        ; $790d: $7f
	nop                                              ; $790e: $00
	adc  [hl]                                        ; $790f: $8e
	add  b                                           ; $7910: $80
	ld   e, [hl]                                     ; $7911: $5e
	nop                                              ; $7912: $00
	ld   c, [hl]                                     ; $7913: $4e
	add  b                                           ; $7914: $80
	ld   a, $00                                      ; $7915: $3e $00
	cp   [hl]                                        ; $7917: $be
	add  b                                           ; $7918: $80
	ld   a, [hl]                                     ; $7919: $7e
	ld   [bc], a                                     ; $791a: $02
	ld   a, a                                        ; $791b: $7f
	ld   a, c                                        ; $791c: $79
	ld   a, a                                        ; $791d: $7f
	add  b                                           ; $791e: $80
	ld   a, b                                        ; $791f: $78
	ld   bc, $7870                                   ; $7920: $01 $70 $78
	add  b                                           ; $7923: $80
	rst  $38                                         ; $7924: $ff
	rlca                                             ; $7925: $07
	xor  $fe                                         ; $7926: $ee $fe
	call c, $b2fc                                    ; $7928: $dc $fc $b2
	ldh  a, [c]                                      ; $792b: $f2
	ld   b, d                                        ; $792c: $42
	jp   nz, $1382                                   ; $792d: $c2 $82 $13

	ld   [bc], a                                     ; $7930: $02
	ld   e, e                                        ; $7931: $5b
	ld   e, d                                        ; $7932: $5a
	ld   [hl], $81                                   ; $7933: $36 $81
	scf                                              ; $7935: $37
	add  b                                           ; $7936: $80
	ld   [hl], l                                     ; $7937: $75
	add  d                                           ; $7938: $82
	ld   a, l                                        ; $7939: $7d
	add  hl, bc                                      ; $793a: $09
	ld   [hl], l                                     ; $793b: $75
	ld   [hl], b                                     ; $793c: $70
	ld   d, d                                        ; $793d: $52
	ld   [bc], a                                     ; $793e: $02
	ld   [$820f], sp                                 ; $793f: $08 $0f $82
	pop  de                                          ; $7942: $d1
	jp   nc, $82d3                                   ; $7943: $d2 $d3 $82

	db   $db                                         ; $7946: $db
	add  b                                           ; $7947: $80
	ld   e, e                                        ; $7948: $5b
	add  hl, de                                      ; $7949: $19
	ld   d, a                                        ; $794a: $57
	inc  bc                                          ; $794b: $03
	and  d                                           ; $794c: $a2
	and  b                                           ; $794d: $a0
	cp   b                                           ; $794e: $b8
	cp   $36                                         ; $794f: $fe $36
	cp   $ce                                         ; $7951: $fe $ce
	cp   $7a                                         ; $7953: $fe $7a
	cp   $a4                                         ; $7955: $fe $a4
	cp   $f0                                         ; $7957: $fe $f0
	rst  JumpTable                                         ; $7959: $df
	ld   hl, sp-$1b                                  ; $795a: $f8 $e5
	db   $fc                                         ; $795c: $fc
	ld   a, b                                        ; $795d: $78
	ld   e, h                                        ; $795e: $5c
	inc  c                                           ; $795f: $0c
	ld   c, a                                        ; $7960: $4f
	sbc  h                                           ; $7961: $9c
	db   $eb                                         ; $7962: $eb
	or   a                                           ; $7963: $b7
	add  b                                           ; $7964: $80
	ld   hl, sp+$07                                  ; $7965: $f8 $07
	db   $fc                                         ; $7967: $fc

jr_075_7968:
	cp   h                                           ; $7968: $bc
	rrca                                             ; $7969: $0f
	rra                                              ; $796a: $1f
	and  e                                           ; $796b: $a3
	xor  a                                           ; $796c: $af
	ld   de, $801d                                   ; $796d: $11 $1d $80
	jr   jr_075_7975                                 ; $7970: $18 $03

	adc  h                                           ; $7972: $8c
	ld   a, a                                        ; $7973: $7f
	add  h                                           ; $7974: $84

jr_075_7975:
	adc  a                                           ; $7975: $8f
	add  b                                           ; $7976: $80
	ld   bc, $e005                                   ; $7977: $01 $05 $e0
	db   $f4                                         ; $797a: $f4
	sub  b                                           ; $797b: $90
	rst  $38                                         ; $797c: $ff
	ld   c, a                                        ; $797d: $4f
	inc  [hl]                                        ; $797e: $34
	add  b                                           ; $797f: $80
	ldh  [rTIMA], a                                  ; $7980: $e0 $05
	dec  hl                                          ; $7982: $2b
	ccf                                              ; $7983: $3f
	dec  e                                           ; $7984: $1d
	rlca                                             ; $7985: $07
	reti                                             ; $7986: $d9


	rst  JumpTable                                         ; $7987: $df
	add  b                                           ; $7988: $80
	add  b                                           ; $7989: $80
	add  b                                           ; $798a: $80
	ld   bc, $1f80                                   ; $798b: $01 $80 $1f
	rlca                                             ; $798e: $07
	db   $fc                                         ; $798f: $fc
	rst  $38                                         ; $7990: $ff
	ld   bc, $1d03                                   ; $7991: $01 $03 $1d
	inc  e                                           ; $7994: $1c
	ld   h, a                                        ; $7995: $67
	rst  $20                                         ; $7996: $e7
	add  b                                           ; $7997: $80
	sbc  b                                           ; $7998: $98
	dec  b                                           ; $7999: $05
	ld   [bc], a                                     ; $799a: $02
	jp   $fc5d                                       ; $799b: $c3 $5d $fc


	add  c                                           ; $799e: $81
	pop  hl                                          ; $799f: $e1
	add  b                                           ; $79a0: $80
	sbc  a                                           ; $79a1: $9f
	dec  b                                           ; $79a2: $05
	ld   d, e                                        ; $79a3: $53
	inc  sp                                          ; $79a4: $33
	ldh  [c], a                                      ; $79a5: $e2
	add  e                                           ; $79a6: $83
	ld   d, a                                        ; $79a7: $57
	ld   l, a                                        ; $79a8: $6f
	add  c                                           ; $79a9: $81
	xor  a                                           ; $79aa: $af
	dec  bc                                          ; $79ab: $0b
	rst  $28                                         ; $79ac: $ef
	ldh  [$b6], a                                    ; $79ad: $e0 $b6
	or   b                                           ; $79af: $b0
	ld   sp, hl                                      ; $79b0: $f9
	ld   e, c                                        ; $79b1: $59
	ld   e, a                                        ; $79b2: $5f
	rst  JumpTable                                         ; $79b3: $df
	add  c                                           ; $79b4: $81
	pop  bc                                          ; $79b5: $c1
	add  b                                           ; $79b6: $80
	ld   d, b                                        ; $79b7: $50
	add  c                                           ; $79b8: $81
	ld   e, $06                                      ; $79b9: $1e $06
	ld   a, [de]                                     ; $79bb: $1a
	ld   e, $12                                      ; $79bc: $1e $12
	sbc  [hl]                                        ; $79be: $9e
	sbc  d                                           ; $79bf: $9a
	sbc  [hl]                                        ; $79c0: $9e
	sub  d                                           ; $79c1: $92
	add  b                                           ; $79c2: $80
	sub  [hl]                                        ; $79c3: $96
	add  b                                           ; $79c4: $80
	sbc  l                                           ; $79c5: $9d
	ld   bc, $a995                                   ; $79c6: $01 $95 $a9
	add  c                                           ; $79c9: $81
	rst  $38                                         ; $79ca: $ff
	inc  b                                           ; $79cb: $04
	ld   a, a                                        ; $79cc: $7f
	rst  $38                                         ; $79cd: $ff
	ld   a, a                                        ; $79ce: $7f
	rst  $38                                         ; $79cf: $ff
	ld   a, a                                        ; $79d0: $7f
	add  c                                           ; $79d1: $81
	rst  $38                                         ; $79d2: $ff
	ld   b, $3f                                      ; $79d3: $06 $3f
	cp   a                                           ; $79d5: $bf
	ccf                                              ; $79d6: $3f
	rst  $38                                         ; $79d7: $ff
	inc  de                                          ; $79d8: $13
	ld   a, a                                        ; $79d9: $7f
	dec  a                                           ; $79da: $3d
	add  e                                           ; $79db: $83
	ld   a, a                                        ; $79dc: $7f
	ld   [$7f77], sp                                 ; $79dd: $08 $77 $7f
	ld   [hl], b                                     ; $79e0: $70
	ld   a, l                                        ; $79e1: $7d
	ld   a, d                                        ; $79e2: $7a
	ld   a, a                                        ; $79e3: $7f
	ld   a, b                                        ; $79e4: $78
	ld   a, l                                        ; $79e5: $7d
	adc  c                                           ; $79e6: $89
	adc  l                                           ; $79e7: $8d
	ld   c, $8e                                      ; $79e8: $0e $8e
	rst  $38                                         ; $79ea: $ff
	adc  [hl]                                        ; $79eb: $8e
	ld   a, a                                        ; $79ec: $7f
	ld   bc, $7976                                   ; $79ed: $01 $76 $79
	add  h                                           ; $79f0: $84
	ld   a, e                                        ; $79f1: $7b
	add  b                                           ; $79f2: $80
	ld   a, l                                        ; $79f3: $7d
	add  b                                           ; $79f4: $80
	ld   a, a                                        ; $79f5: $7f
	add  b                                           ; $79f6: $80
	ld   [hl], h                                     ; $79f7: $74
	ld   a, [bc]                                     ; $79f8: $0a
	ld   a, e                                        ; $79f9: $7b
	ld   l, e                                        ; $79fa: $6b
	sbc  l                                           ; $79fb: $9d
	ld   a, b                                        ; $79fc: $78
	ld   l, d                                        ; $79fd: $6a
	ld   h, e                                        ; $79fe: $63
	ld   d, b                                        ; $79ff: $50
	ld   c, [hl]                                     ; $7a00: $4e
	ld   [hl+], a                                    ; $7a01: $22
	rla                                              ; $7a02: $17
	daa                                              ; $7a03: $27
	add  b                                           ; $7a04: $80
	ld   d, $07                                      ; $7a05: $16 $07
	add  e                                           ; $7a07: $83
	sub  e                                           ; $7a08: $93
	ld   [de], a                                     ; $7a09: $12
	add  b                                           ; $7a0a: $80
	add  d                                           ; $7a0b: $82
	ldh  a, [rIE]                                    ; $7a0c: $f0 $ff
	rrca                                             ; $7a0e: $0f
	add  b                                           ; $7a0f: $80
	rst  $10                                         ; $7a10: $d7
	add  b                                           ; $7a11: $80
	xor  e                                           ; $7a12: $ab
	add  hl, bc                                      ; $7a13: $09

jr_075_7a14:
	ld   d, h                                        ; $7a14: $54
	ld   d, a                                        ; $7a15: $57
	xor  e                                           ; $7a16: $ab
	xor  c                                           ; $7a17: $a9
	ld   b, c                                        ; $7a18: $41
	ld   c, h                                        ; $7a19: $4c
	dec  l                                           ; $7a1a: $2d
	ld   a, [hl-]                                    ; $7a1b: $3a
	dec  de                                          ; $7a1c: $1b
	nop                                              ; $7a1d: $00
	add  d                                           ; $7a1e: $82
	rst  $38                                         ; $7a1f: $ff
	ld   [bc], a                                     ; $7a20: $02
	inc  h                                           ; $7a21: $24
	cp   [hl]                                        ; $7a22: $be
	sbc  d                                           ; $7a23: $9a
	add  b                                           ; $7a24: $80
	sub  e                                           ; $7a25: $93
	ld   [hl+], a                                    ; $7a26: $22
	ld   bc, $7879                                   ; $7a27: $01 $79 $78
	rst  $38                                         ; $7a2a: $ff
	dec  c                                           ; $7a2b: $0d
	rst  $38                                         ; $7a2c: $ff
	jp   c, $0ac3                                    ; $7a2d: $da $c3 $0a

	ld   hl, sp-$20                                  ; $7a30: $f8 $e0
	rst  $38                                         ; $7a32: $ff
	ei                                               ; $7a33: $fb
	ccf                                              ; $7a34: $3f
	cp   l                                           ; $7a35: $bd
	push de                                          ; $7a36: $d5
	or   l                                           ; $7a37: $b5
	ld   a, [$253e]                                  ; $7a38: $fa $3e $25
	ld   bc, $040a                                   ; $7a3b: $01 $0a $04
	dec  c                                           ; $7a3e: $0d
	inc  l                                           ; $7a3f: $2c
	ld   l, $a1                                      ; $7a40: $2e $a1
	daa                                              ; $7a42: $27
	db   $f4                                         ; $7a43: $f4
	or   a                                           ; $7a44: $b7
	sub  h                                           ; $7a45: $94
	inc  de                                          ; $7a46: $13
	ld   d, c                                        ; $7a47: $51
	sbc  e                                           ; $7a48: $9b
	sub  c                                           ; $7a49: $91
	add  b                                           ; $7a4a: $80
	ld   e, b                                        ; $7a4b: $58
	inc  b                                           ; $7a4c: $04
	sbc  b                                           ; $7a4d: $98
	cp   $ff                                         ; $7a4e: $fe $ff
	rst  $30                                         ; $7a50: $f7
	add  c                                           ; $7a51: $81
	add  b                                           ; $7a52: $80
	adc  [hl]                                        ; $7a53: $8e
	rlca                                             ; $7a54: $07
	ld   c, d                                        ; $7a55: $4a
	db   $fd                                         ; $7a56: $fd
	and  l                                           ; $7a57: $a5
	ld   [hl], $d0                                   ; $7a58: $36 $d0
	jp   nz, $00c1                                   ; $7a5a: $c2 $c1 $00

	add  b                                           ; $7a5d: $80
	rst  $38                                         ; $7a5e: $ff
	add  hl, bc                                      ; $7a5f: $09
	jr   c, @-$37                                    ; $7a60: $38 $c7

	jr   @+$21                                       ; $7a62: $18 $1f

	ld   a, e                                        ; $7a64: $7b
	ld   a, l                                        ; $7a65: $7d
	add  d                                           ; $7a66: $82
	adc  a                                           ; $7a67: $8f
	ld   a, c                                        ; $7a68: $79
	halt                                             ; $7a69: $76
	add  b                                           ; $7a6a: $80
	inc  e                                           ; $7a6b: $1c
	ld   bc, $00fc                                   ; $7a6c: $01 $fc $00
	add  b                                           ; $7a6f: $80
	rst  $38                                         ; $7a70: $ff
	ld   a, [bc]                                     ; $7a71: $0a
	and  d                                           ; $7a72: $a2
	rst  JumpTable                                         ; $7a73: $df
	rst  $28                                         ; $7a74: $ef
	db   $ec                                         ; $7a75: $ec
	ld   a, h                                        ; $7a76: $7c
	ld   a, [hl]                                     ; $7a77: $7e
	or   b                                           ; $7a78: $b0
	cp   h                                           ; $7a79: $bc
	ld   h, d                                        ; $7a7a: $62
	ld   c, $1c                                      ; $7a7b: $0e $1c
	add  c                                           ; $7a7d: $81
	nop                                              ; $7a7e: $00
	add  b                                           ; $7a7f: $80
	ldh  a, [$80]                                    ; $7a80: $f0 $80
	ld   e, $80                                      ; $7a82: $1e $80
	inc  sp                                          ; $7a84: $33
	add  b                                           ; $7a85: $80
	ld   b, b                                        ; $7a86: $40
	add  b                                           ; $7a87: $80
	ld   c, h                                        ; $7a88: $4c
	add  b                                           ; $7a89: $80
	db   $dd                                         ; $7a8a: $dd
	add  b                                           ; $7a8b: $80
	adc  l                                           ; $7a8c: $8d
	add  b                                           ; $7a8d: $80
	adc  c                                           ; $7a8e: $89
	add  b                                           ; $7a8f: $80
	add  b                                           ; $7a90: $80
	nop                                              ; $7a91: $00
	jr   jr_075_7a14                                 ; $7a92: $18 $80

	ld   e, d                                        ; $7a94: $5a
	rlca                                             ; $7a95: $07
	ld   a, [de]                                     ; $7a96: $1a
	sub  [hl]                                        ; $7a97: $96
	sbc  [hl]                                        ; $7a98: $9e
	ld   [de], a                                     ; $7a99: $12
	ld   e, $12                                      ; $7a9a: $1e $12
	ld   e, $92                                      ; $7a9c: $1e $92
	add  c                                           ; $7a9e: $81
	sbc  [hl]                                        ; $7a9f: $9e
	ld   [bc], a                                     ; $7aa0: $02
	ld   d, $1e                                      ; $7aa1: $16 $1e
	and  d                                           ; $7aa3: $a2
	add  c                                           ; $7aa4: $81
	cp   a                                           ; $7aa5: $bf
	add  b                                           ; $7aa6: $80
	rst  $38                                         ; $7aa7: $ff
	ld   b, $7f                                      ; $7aa8: $06 $7f
	rst  $38                                         ; $7aaa: $ff
	rra                                              ; $7aab: $1f
	rst  $38                                         ; $7aac: $ff
	ccf                                              ; $7aad: $3f
	rst  $38                                         ; $7aae: $ff
	cp   a                                           ; $7aaf: $bf
	add  c                                           ; $7ab0: $81
	rst  $38                                         ; $7ab1: $ff
	inc  b                                           ; $7ab2: $04
	jp   hl                                          ; $7ab3: $e9


	ld   a, a                                        ; $7ab4: $7f
	ld   h, b                                        ; $7ab5: $60
	ld   a, l                                        ; $7ab6: $7d
	ld   a, d                                        ; $7ab7: $7a
	add  c                                           ; $7ab8: $81
	ld   a, a                                        ; $7ab9: $7f
	ld   [$0f7d], sp                                 ; $7aba: $08 $7d $0f
	dec  bc                                          ; $7abd: $0b
	inc  b                                           ; $7abe: $04
	inc  bc                                          ; $7abf: $03
	dec  sp                                          ; $7ac0: $3b
	dec  a                                           ; $7ac1: $3d
	ld   a, l                                        ; $7ac2: $7d
	adc  c                                           ; $7ac3: $89
	adc  c                                           ; $7ac4: $89
	ld   c, $00                                      ; $7ac5: $0e $00
	rrca                                             ; $7ac7: $0f
	add  b                                           ; $7ac8: $80
	inc  c                                           ; $7ac9: $0c
	ld   bc, $f000                                   ; $7aca: $01 $00 $f0
	add  h                                           ; $7acd: $84
	rst  $38                                         ; $7ace: $ff
	add  b                                           ; $7acf: $80
	cp   $80                                         ; $7ad0: $fe $80
	ldh  a, [$80]                                    ; $7ad2: $f0 $80
	add  b                                           ; $7ad4: $80
	nop                                              ; $7ad5: $00
	nop                                              ; $7ad6: $00
	add  b                                           ; $7ad7: $80
	ld   bc, $8000                                   ; $7ad8: $01 $00 $80
	add  b                                           ; $7adb: $80
	ld   a, a                                        ; $7adc: $7f
	add  b                                           ; $7add: $80
	ld   a, b                                        ; $7ade: $78
	ld   bc, $c040                                   ; $7adf: $01 $40 $c0
	add  c                                           ; $7ae2: $81
	nop                                              ; $7ae3: $00
	add  b                                           ; $7ae4: $80
	inc  e                                           ; $7ae5: $1c
	add  b                                           ; $7ae6: $80
	ld   a, [hl]                                     ; $7ae7: $7e
	add  b                                           ; $7ae8: $80

jr_075_7ae9:
	rst  $38                                         ; $7ae9: $ff
	add  b                                           ; $7aea: $80
	inc  d                                           ; $7aeb: $14
	add  b                                           ; $7aec: $80
	dec  hl                                          ; $7aed: $2b
	add  b                                           ; $7aee: $80
	rlca                                             ; $7aef: $07
	add  b                                           ; $7af0: $80
	ld   [hl], a                                     ; $7af1: $77
	add  b                                           ; $7af2: $80
	db   $db                                         ; $7af3: $db
	add  b                                           ; $7af4: $80
	inc  [hl]                                        ; $7af5: $34
	add  b                                           ; $7af6: $80
	ld   l, h                                        ; $7af7: $6c
	add  b                                           ; $7af8: $80
	ld   bc, $f880                                   ; $7af9: $01 $80 $f8
	inc  bc                                          ; $7afc: $03
	ldh  a, [$f7]                                    ; $7afd: $f0 $f7
	rst  $38                                         ; $7aff: $ff
	ld   hl, sp-$80                                  ; $7b00: $f8 $80
	cp   $82                                         ; $7b02: $fe $82
	rst  $38                                         ; $7b04: $ff
	add  b                                           ; $7b05: $80
	ld   b, d                                        ; $7b06: $42
	inc  bc                                          ; $7b07: $03
	call nz, $12c5                                   ; $7b08: $c4 $c5 $12
	ld   d, e                                        ; $7b0b: $53
	add  c                                           ; $7b0c: $81
	ld   b, a                                        ; $7b0d: $47
	nop                                              ; $7b0e: $00
	rst  $30                                         ; $7b0f: $f7
	add  b                                           ; $7b10: $80
	di                                               ; $7b11: $f3
	nop                                              ; $7b12: $00
	ldh  a, [$80]                                    ; $7b13: $f0 $80
	ld   [hl], b                                     ; $7b15: $70
	add  b                                           ; $7b16: $80
	inc  e                                           ; $7b17: $1c
	add  b                                           ; $7b18: $80
	rst  JumpTable                                         ; $7b19: $df
	ld   bc, $639c                                   ; $7b1a: $01 $9c $63
	add  e                                           ; $7b1d: $83
	rst  $38                                         ; $7b1e: $ff
	add  b                                           ; $7b1f: $80
	db   $fc                                         ; $7b20: $fc
	add  b                                           ; $7b21: $80
	inc  sp                                          ; $7b22: $33
	add  b                                           ; $7b23: $80
	ld   l, l                                        ; $7b24: $6d
	jr   jr_075_7b53                                 ; $7b25: $18 $2c

	xor  h                                           ; $7b27: $ac
	add  b                                           ; $7b28: $80
	add  e                                           ; $7b29: $83
	daa                                              ; $7b2a: $27
	and  l                                           ; $7b2b: $a5
	ld   h, c                                        ; $7b2c: $61
	ld   l, d                                        ; $7b2d: $6a
	ld   a, [hl+]                                    ; $7b2e: $2a
	ld   l, $0f                                      ; $7b2f: $2e $0f
	rra                                              ; $7b31: $1f
	sbc  l                                           ; $7b32: $9d
	cp   a                                           ; $7b33: $bf
	inc  bc                                          ; $7b34: $03
	ld   a, a                                        ; $7b35: $7f
	ld   c, [hl]                                     ; $7b36: $4e
	cp   $fc                                         ; $7b37: $fe $fc
	rst  $38                                         ; $7b39: $ff
	db   $eb                                         ; $7b3a: $eb
	jr   jr_075_7b3d                                 ; $7b3b: $18 $00

jr_075_7b3d:
	ret  nz                                          ; $7b3d: $c0

	jp   $df80                                       ; $7b3e: $c3 $80 $df


	ld   b, $3f                                      ; $7b41: $06 $3f
	inc  sp                                          ; $7b43: $33
	ccf                                              ; $7b44: $3f
	ld   b, $36                                      ; $7b45: $06 $36
	add  hl, sp                                      ; $7b47: $39
	ccf                                              ; $7b48: $3f
	add  b                                           ; $7b49: $80
	ld   d, $01                                      ; $7b4a: $16 $01
	ld   b, $00                                      ; $7b4c: $06 $00
	add  b                                           ; $7b4e: $80
	ld   a, a                                        ; $7b4f: $7f
	add  d                                           ; $7b50: $82
	dec  b                                           ; $7b51: $05
	add  [hl]                                        ; $7b52: $86

jr_075_7b53:
	ld   h, l                                        ; $7b53: $65
	add  b                                           ; $7b54: $80
	ld   de, $5a05                                   ; $7b55: $11 $05 $5a
	ld   e, e                                        ; $7b58: $5b
	ld   [hl+], a                                    ; $7b59: $22
	inc  sp                                          ; $7b5a: $33
	ld   b, b                                        ; $7b5b: $40
	ld   d, b                                        ; $7b5c: $50
	add  b                                           ; $7b5d: $80
	inc  h                                           ; $7b5e: $24
	rlca                                             ; $7b5f: $07
	add  hl, bc                                      ; $7b60: $09
	dec  l                                           ; $7b61: $2d
	ld   h, h                                        ; $7b62: $64
	ld   b, b                                        ; $7b63: $40
	ld   a, [hl+]                                    ; $7b64: $2a
	ld   l, d                                        ; $7b65: $6a
	ld   a, b                                        ; $7b66: $78
	jr   c, jr_075_7ae9                              ; $7b67: $38 $80

	db   $10                                         ; $7b69: $10
	add  b                                           ; $7b6a: $80
	ld   b, b                                        ; $7b6b: $40
	add  b                                           ; $7b6c: $80
	ldh  [$80], a                                    ; $7b6d: $e0 $80
	ld   l, b                                        ; $7b6f: $68
	add  b                                           ; $7b70: $80
	ld   [$b880], sp                                 ; $7b71: $08 $80 $b8
	add  b                                           ; $7b74: $80
	nop                                              ; $7b75: $00
	add  b                                           ; $7b76: $80
	add  b                                           ; $7b77: $80
	add  b                                           ; $7b78: $80
	nop                                              ; $7b79: $00
	add  b                                           ; $7b7a: $80
	dec  l                                           ; $7b7b: $2d
	add  b                                           ; $7b7c: $80
	ld   l, h                                        ; $7b7d: $6c
	add  b                                           ; $7b7e: $80
	ld   [$5b80], a                                  ; $7b7f: $ea $80 $5b
	add  d                                           ; $7b82: $82
	nop                                              ; $7b83: $00
	nop                                              ; $7b84: $00
	db   $10                                         ; $7b85: $10
	add  c                                           ; $7b86: $81
	ld   e, $80                                      ; $7b87: $1e $80
	sbc  [hl]                                        ; $7b89: $9e
	inc  bc                                          ; $7b8a: $03
	sbc  d                                           ; $7b8b: $9a
	sbc  [hl]                                        ; $7b8c: $9e
	ld   d, [hl]                                     ; $7b8d: $56
	ld   e, [hl]                                     ; $7b8e: $5e
	add  b                                           ; $7b8f: $80
	ld   c, [hl]                                     ; $7b90: $4e
	add  c                                           ; $7b91: $81
	ld   [bc], a                                     ; $7b92: $02
	ld   bc, $2408                                   ; $7b93: $01 $08 $24
	add  b                                           ; $7b96: $80
	rst  $38                                         ; $7b97: $ff
	add  hl, bc                                      ; $7b98: $09
	cp   $ff                                         ; $7b99: $fe $ff
	db   $fc                                         ; $7b9b: $fc
	ld   a, h                                        ; $7b9c: $7c
	db   $fc                                         ; $7b9d: $fc
	or   b                                           ; $7b9e: $b0
	ldh  a, [$df]                                    ; $7b9f: $f0 $df
	ret  nz                                          ; $7ba1: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ba2: $cf
	add  c                                           ; $7ba3: $81
	ret  nz                                          ; $7ba4: $c0

	inc  bc                                          ; $7ba5: $03
	dec  c                                           ; $7ba6: $0d
	inc  a                                           ; $7ba7: $3c
	ld   a, l                                        ; $7ba8: $7d
	dec  e                                           ; $7ba9: $1d
	add  b                                           ; $7baa: $80
	dec  de                                          ; $7bab: $1b
	ld   bc, $5b0b                                   ; $7bac: $01 $0b $5b
	add  b                                           ; $7baf: $80
	inc  bc                                          ; $7bb0: $03
	ld   [bc], a                                     ; $7bb1: $02
	ret                                              ; $7bb2: $c9


	add  hl, bc                                      ; $7bb3: $09
	ld   l, $81                                      ; $7bb4: $2e $81
	ld   c, $00                                      ; $7bb6: $0e $00
	db   $10                                         ; $7bb8: $10
	add  l                                           ; $7bb9: $85
	nop                                              ; $7bba: $00
	nop                                              ; $7bbb: $00
	ld   [bc], a                                     ; $7bbc: $02
	add  c                                           ; $7bbd: $81
	inc  bc                                          ; $7bbe: $03
	nop                                              ; $7bbf: $00
	ld   [bc], a                                     ; $7bc0: $02
	add  b                                           ; $7bc1: $80
	inc  bc                                          ; $7bc2: $03
	ld   [bc], a                                     ; $7bc3: $02
	rlca                                             ; $7bc4: $07
	di                                               ; $7bc5: $f3
	rlca                                             ; $7bc6: $07
	add  b                                           ; $7bc7: $80
	ccf                                              ; $7bc8: $3f
	add  [hl]                                        ; $7bc9: $86
	rst  $38                                         ; $7bca: $ff
	inc  b                                           ; $7bcb: $04
	ld   h, $ff                                      ; $7bcc: $26 $ff
	cp   l                                           ; $7bce: $bd
	rst  $38                                         ; $7bcf: $ff

jr_075_7bd0:
	ld   h, h                                        ; $7bd0: $64
	adc  c                                           ; $7bd1: $89
	rst  $38                                         ; $7bd2: $ff
	nop                                              ; $7bd3: $00
	ld   l, d                                        ; $7bd4: $6a
	add  c                                           ; $7bd5: $81
	rst  $38                                         ; $7bd6: $ff
	ld   bc, $f065                                   ; $7bd7: $01 $65 $f0
	adc  b                                           ; $7bda: $88
	rst  $38                                         ; $7bdb: $ff
	inc  b                                           ; $7bdc: $04
	dec  [hl]                                        ; $7bdd: $35
	rst  $38                                         ; $7bde: $ff
	rst  ToBoot                                         ; $7bdf: $c7
	rst  $38                                         ; $7be0: $ff
	ldh  a, [c]                                      ; $7be1: $f2
	add  b                                           ; $7be2: $80
	ld   bc, $2005                                   ; $7be3: $01 $05 $20
	and  b                                           ; $7be6: $a0
	rst  $38                                         ; $7be7: $ff
	adc  a                                           ; $7be8: $8f
	rst  $38                                         ; $7be9: $ff
	ldh  a, [$81]                                    ; $7bea: $f0 $81

jr_075_7bec:
	rst  $38                                         ; $7bec: $ff
	inc  b                                           ; $7bed: $04
	ld   b, h                                        ; $7bee: $44
	rst  $38                                         ; $7bef: $ff
	ld   sp, hl                                      ; $7bf0: $f9
	rst  $38                                         ; $7bf1: $ff
	cp   l                                           ; $7bf2: $bd
	add  b                                           ; $7bf3: $80
	adc  a                                           ; $7bf4: $8f
	add  b                                           ; $7bf5: $80
	ld   bc, $f880                                   ; $7bf6: $01 $80 $f8
	add  c                                           ; $7bf9: $81
	rst  $38                                         ; $7bfa: $ff
	ld   b, $18                                      ; $7bfb: $06 $18
	rst  $38                                         ; $7bfd: $ff
	ld   d, b                                        ; $7bfe: $50
	rst  $38                                         ; $7bff: $ff
	rst  JumpTable                                         ; $7c00: $df
	rst  $38                                         ; $7c01: $ff
	sub  a                                           ; $7c02: $97
	add  b                                           ; $7c03: $80
	rrca                                             ; $7c04: $0f
	add  b                                           ; $7c05: $80
	ccf                                              ; $7c06: $3f
	add  b                                           ; $7c07: $80
	ld   a, a                                        ; $7c08: $7f
	dec  de                                          ; $7c09: $1b
	rst  $38                                         ; $7c0a: $ff
	ld   hl, sp-$01                                  ; $7c0b: $f8 $ff
	rlca                                             ; $7c0d: $07
	rst  $38                                         ; $7c0e: $ff
	or   e                                           ; $7c0f: $b3
	rst  $38                                         ; $7c10: $ff
	ld   b, h                                        ; $7c11: $44
	rst  $38                                         ; $7c12: $ff
	di                                               ; $7c13: $f3
	rst  $38                                         ; $7c14: $ff
	rst  $28                                         ; $7c15: $ef
	rst  $38                                         ; $7c16: $ff
	rst  JumpTable                                         ; $7c17: $df
	rst  $38                                         ; $7c18: $ff
	add  hl, de                                      ; $7c19: $19
	rst  $38                                         ; $7c1a: $ff
	rst  JumpTable                                         ; $7c1b: $df
	rst  $38                                         ; $7c1c: $ff
	jr   c, @+$01                                    ; $7c1d: $38 $ff

	push hl                                          ; $7c1f: $e5
	rst  $38                                         ; $7c20: $ff
	and  [hl]                                        ; $7c21: $a6
	rst  $38                                         ; $7c22: $ff
	adc  c                                           ; $7c23: $89
	ld   b, $3e                                      ; $7c24: $06 $3e
	add  b                                           ; $7c26: $80
	add  hl, sp                                      ; $7c27: $39
	nop                                              ; $7c28: $00
	ccf                                              ; $7c29: $3f
	add  b                                           ; $7c2a: $80
	ld   a, a                                        ; $7c2b: $7f
	nop                                              ; $7c2c: $00
	ld   c, b                                        ; $7c2d: $48
	add  c                                           ; $7c2e: $81
	ld   l, a                                        ; $7c2f: $6f
	inc  b                                           ; $7c30: $04
	jr   nz, jr_075_7c33                             ; $7c31: $20 $00

jr_075_7c33:
	ld   [$131e], sp                                 ; $7c33: $08 $1e $13
	add  b                                           ; $7c36: $80
	dec  b                                           ; $7c37: $05
	ld   [$c1c5], sp                                 ; $7c38: $08 $c5 $c1
	or   c                                           ; $7c3b: $b1
	and  b                                           ; $7c3c: $a0
	ret  nc                                          ; $7c3d: $d0

	ret  nz                                          ; $7c3e: $c0

	ldh  [rP1], a                                    ; $7c3f: $e0 $00
	and  $80                                         ; $7c41: $e6 $80
	ld   c, $03                                      ; $7c43: $0e $03
	ld   a, [bc]                                     ; $7c45: $0a
	ld   c, h                                        ; $7c46: $4c
	ld   e, h                                        ; $7c47: $5c
	inc  e                                           ; $7c48: $1c
	add  b                                           ; $7c49: $80
	add  hl, bc                                      ; $7c4a: $09
	add  b                                           ; $7c4b: $80
	pop  de                                          ; $7c4c: $d1
	add  b                                           ; $7c4d: $80
	jr   jr_075_7bd0                                 ; $7c4e: $18 $80

	rra                                              ; $7c50: $1f
	add  b                                           ; $7c51: $80
	rst  $28                                         ; $7c52: $ef
	add  d                                           ; $7c53: $82
	ldh  a, [$80]                                    ; $7c54: $f0 $80
	ld   h, b                                        ; $7c56: $60
	add  b                                           ; $7c57: $80
	inc  b                                           ; $7c58: $04
	add  b                                           ; $7c59: $80
	ld   h, h                                        ; $7c5a: $64
	add  b                                           ; $7c5b: $80
	db   $e4                                         ; $7c5c: $e4
	add  b                                           ; $7c5d: $80
	ret  nz                                          ; $7c5e: $c0

	add  b                                           ; $7c5f: $80
	call nz, $0680                                   ; $7c60: $c4 $80 $06
	add  b                                           ; $7c63: $80
	ld   c, $80                                      ; $7c64: $0e $80
	jr   c, jr_075_7bec                              ; $7c66: $38 $84

	nop                                              ; $7c68: $00
	add  b                                           ; $7c69: $80
	rra                                              ; $7c6a: $1f
	add  h                                           ; $7c6b: $84
	ld   a, a                                        ; $7c6c: $7f
	ld   [bc], a                                     ; $7c6d: $02
	ld   [bc], a                                     ; $7c6e: $02
	ld   e, $1a                                      ; $7c6f: $1e $1a
	add  b                                           ; $7c71: $80
	ld   e, $04                                      ; $7c72: $1e $04
	ld   l, [hl]                                     ; $7c74: $6e
	ld   h, h                                        ; $7c75: $64
	ld   l, l                                        ; $7c76: $6d
	ld   c, c                                        ; $7c77: $49
	dec  hl                                          ; $7c78: $2b
	add  b                                           ; $7c79: $80
	inc  bc                                          ; $7c7a: $03
	rlca                                             ; $7c7b: $07
	ld   a, [de]                                     ; $7c7c: $1a
	ld   a, c                                        ; $7c7d: $79
	ld   c, h                                        ; $7c7e: $4c
	ld   l, h                                        ; $7c7f: $6c
	ld   c, h                                        ; $7c80: $4c
	inc  c                                           ; $7c81: $0c
	ld   [bc], a                                     ; $7c82: $02
	ldh  a, [c]                                      ; $7c83: $f2
	add  c                                           ; $7c84: $81
	ld   a, [$7a18]                                  ; $7c85: $fa $18 $7a
	ld   hl, sp-$48                                  ; $7c88: $f8 $b8
	xor  b                                           ; $7c8a: $a8
	cp   b                                           ; $7c8b: $b8
	sbc  b                                           ; $7c8c: $98
	cp   b                                           ; $7c8d: $b8
	ld   h, e                                        ; $7c8e: $63
	ld   h, b                                        ; $7c8f: $60
	call $e60e                                       ; $7c90: $cd $0e $e6
	ld   b, $91                                      ; $7c93: $06 $91
	ld   bc, $0109                                   ; $7c95: $01 $09 $01
	add  $00                                         ; $7c98: $c6 $00
	ld   c, [hl]                                     ; $7c9a: $4e
	nop                                              ; $7c9b: $00
	inc  a                                           ; $7c9c: $3c
	nop                                              ; $7c9d: $00
	db   $ed                                         ; $7c9e: $ed
	nop                                              ; $7c9f: $00
	ld   b, a                                        ; $7ca0: $47
	ld   bc, $0a01                                   ; $7ca1: $01 $01 $0a
	dec  b                                           ; $7ca4: $05
	add  c                                           ; $7ca5: $81
	nop                                              ; $7ca6: $00
	add  b                                           ; $7ca7: $80
	rrca                                             ; $7ca8: $0f
	add  b                                           ; $7ca9: $80
	inc  c                                           ; $7caa: $0c
	add  b                                           ; $7cab: $80
	dec  c                                           ; $7cac: $0d
	add  b                                           ; $7cad: $80
	dec  bc                                          ; $7cae: $0b
	add  c                                           ; $7caf: $81
	rrca                                             ; $7cb0: $0f
	inc  b                                           ; $7cb1: $04
	xor  a                                           ; $7cb2: $af
	ld   e, h                                        ; $7cb3: $5c
	xor  h                                           ; $7cb4: $ac
	xor  d                                           ; $7cb5: $aa
	ld   a, [bc]                                     ; $7cb6: $0a
	add  b                                           ; $7cb7: $80
	rlca                                             ; $7cb8: $07
	add  b                                           ; $7cb9: $80
	cp   d                                           ; $7cba: $ba
	add  b                                           ; $7cbb: $80
	cp   h                                           ; $7cbc: $bc
	add  b                                           ; $7cbd: $80
	cp   [hl]                                        ; $7cbe: $be
	add  b                                           ; $7cbf: $80
	db   $fd                                         ; $7cc0: $fd
	inc  bc                                          ; $7cc1: $03
	cp   $e6                                         ; $7cc2: $fe $e6
	rst  JumpTable                                         ; $7cc4: $df
	db   $db                                         ; $7cc5: $db
	add  b                                           ; $7cc6: $80
	sbc  a                                           ; $7cc7: $9f
	add  b                                           ; $7cc8: $80
	ld   e, a                                        ; $7cc9: $5f
	inc  b                                           ; $7cca: $04
	sbc  a                                           ; $7ccb: $9f
	cp   a                                           ; $7ccc: $bf
	dec  a                                           ; $7ccd: $3d
	ld   sp, hl                                      ; $7cce: $f9
	ld   hl, sp-$80                                  ; $7ccf: $f8 $80
	ld   a, h                                        ; $7cd1: $7c
	add  b                                           ; $7cd2: $80
	ld   [hl], h                                     ; $7cd3: $74
	nop                                              ; $7cd4: $00
	ld   [bc], a                                     ; $7cd5: $02
	add  b                                           ; $7cd6: $80
	cp   $01                                         ; $7cd7: $fe $01
	ld   a, [$83f6]                                  ; $7cd9: $fa $f6 $83
	cp   $00                                         ; $7cdc: $fe $00
	ldh  a, [$80]                                    ; $7cde: $f0 $80
	ld   a, a                                        ; $7ce0: $7f
	add  b                                           ; $7ce1: $80
	rra                                              ; $7ce2: $1f
	ld   bc, $e903                                   ; $7ce3: $01 $03 $e9
	add  a                                           ; $7ce6: $87
	ld   [rROMB1], a                                  ; $7ce7: $ea $00 $30
	add  e                                           ; $7cea: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ceb: $cf
	nop                                              ; $7cec: $00
	ld   [hl-], a                                    ; $7ced: $32
	add  c                                           ; $7cee: $81
	ret  nz                                          ; $7cef: $c0

	inc  bc                                          ; $7cf0: $03
	ld   [bc], a                                     ; $7cf1: $02
	nop                                              ; $7cf2: $00
	ldh  a, [$f8]                                    ; $7cf3: $f0 $f8
	add  c                                           ; $7cf5: $81
	nop                                              ; $7cf6: $00
	ld   b, $f8                                      ; $7cf7: $06 $f8
	ld   sp, hl                                      ; $7cf9: $f9
	ld   hl, sp-$07                                  ; $7cfa: $f8 $f9
	ld   hl, sp-$41                                  ; $7cfc: $f8 $bf
	nop                                              ; $7cfe: $00
	add  b                                           ; $7cff: $80
	inc  c                                           ; $7d00: $0c
	add  b                                           ; $7d01: $80
	nop                                              ; $7d02: $00
	add  b                                           ; $7d03: $80
	ccf                                              ; $7d04: $3f
	add  c                                           ; $7d05: $81
	nop                                              ; $7d06: $00
	add  e                                           ; $7d07: $83
	ccf                                              ; $7d08: $3f
	ld   bc, $007f                                   ; $7d09: $01 $7f $00
	add  b                                           ; $7d0c: $80
	call z, $0080                                    ; $7d0d: $cc $80 $00
	add  b                                           ; $7d10: $80
	rst  $38                                         ; $7d11: $ff
	add  c                                           ; $7d12: $81
	nop                                              ; $7d13: $00
	add  h                                           ; $7d14: $84
	rst  $38                                         ; $7d15: $ff
	nop                                              ; $7d16: $00
	nop                                              ; $7d17: $00
	add  b                                           ; $7d18: $80
	call z, $0080                                    ; $7d19: $cc $80 $00
	add  b                                           ; $7d1c: $80
	rst  $38                                         ; $7d1d: $ff
	add  c                                           ; $7d1e: $81
	nop                                              ; $7d1f: $00
	add  h                                           ; $7d20: $84
	rst  $38                                         ; $7d21: $ff
	nop                                              ; $7d22: $00
	nop                                              ; $7d23: $00
	add  b                                           ; $7d24: $80
	call z, $0080                                    ; $7d25: $cc $80 $00
	add  b                                           ; $7d28: $80
	rst  $38                                         ; $7d29: $ff
	add  c                                           ; $7d2a: $81
	nop                                              ; $7d2b: $00
	add  h                                           ; $7d2c: $84
	rst  $38                                         ; $7d2d: $ff
	nop                                              ; $7d2e: $00
	nop                                              ; $7d2f: $00
	add  b                                           ; $7d30: $80

jr_075_7d31:
	call z, $0080                                    ; $7d31: $cc $80 $00
	add  b                                           ; $7d34: $80
	rst  $38                                         ; $7d35: $ff
	add  c                                           ; $7d36: $81
	nop                                              ; $7d37: $00
	add  h                                           ; $7d38: $84
	rst  $38                                         ; $7d39: $ff
	nop                                              ; $7d3a: $00
	nop                                              ; $7d3b: $00
	add  b                                           ; $7d3c: $80
	call z, $0080                                    ; $7d3d: $cc $80 $00
	add  b                                           ; $7d40: $80
	rst  $38                                         ; $7d41: $ff
	add  c                                           ; $7d42: $81
	nop                                              ; $7d43: $00
	add  h                                           ; $7d44: $84
	rst  $38                                         ; $7d45: $ff
	nop                                              ; $7d46: $00
	nop                                              ; $7d47: $00
	add  b                                           ; $7d48: $80
	call z, $0080                                    ; $7d49: $cc $80 $00
	add  b                                           ; $7d4c: $80
	rst  $38                                         ; $7d4d: $ff
	add  c                                           ; $7d4e: $81
	nop                                              ; $7d4f: $00
	add  h                                           ; $7d50: $84
	rst  $38                                         ; $7d51: $ff
	nop                                              ; $7d52: $00
	nop                                              ; $7d53: $00
	add  b                                           ; $7d54: $80
	ret  nz                                          ; $7d55: $c0

	add  b                                           ; $7d56: $80
	nop                                              ; $7d57: $00
	add  b                                           ; $7d58: $80
	ldh  a, [$80]                                    ; $7d59: $f0 $80
	nop                                              ; $7d5b: $00
	nop                                              ; $7d5c: $00
	ld   [bc], a                                     ; $7d5d: $02
	add  c                                           ; $7d5e: $81
	db   $fd                                         ; $7d5f: $fd
	inc  bc                                          ; $7d60: $03
	rst  $38                                         ; $7d61: $ff
	ld   hl, sp-$07                                  ; $7d62: $f8 $f9
	ld   bc, $0880                                   ; $7d64: $01 $80 $08
	add  b                                           ; $7d67: $80
	nop                                              ; $7d68: $00
	add  b                                           ; $7d69: $80
	ld   a, $80                                      ; $7d6a: $3e $80
	nop                                              ; $7d6c: $00
	nop                                              ; $7d6d: $00
	add  b                                           ; $7d6e: $80
	add  c                                           ; $7d6f: $81
	ld   a, a                                        ; $7d70: $7f
	inc  bc                                          ; $7d71: $03
	rst  $38                                         ; $7d72: $ff
	ld   a, a                                        ; $7d73: $7f
	ld   b, $79                                      ; $7d74: $06 $79
	add  b                                           ; $7d76: $80
	ld   bc, $7d84                                   ; $7d77: $01 $84 $7d
	nop                                              ; $7d7a: $00
	ld   bc, $fd82                                   ; $7d7b: $01 $82 $fd
	nop                                              ; $7d7e: $00
	cp   $81                                         ; $7d7f: $fe $81
	rrca                                             ; $7d81: $0f
	add  b                                           ; $7d82: $80
	ld   c, $80                                      ; $7d83: $0e $80
	dec  c                                           ; $7d85: $0d
	add  b                                           ; $7d86: $80
	inc  c                                           ; $7d87: $0c
	add  d                                           ; $7d88: $82
	nop                                              ; $7d89: $00
	add  c                                           ; $7d8a: $81
	rrca                                             ; $7d8b: $0f
	nop                                              ; $7d8c: $00
	rst  $38                                         ; $7d8d: $ff
	add  b                                           ; $7d8e: $80
	db   $fd                                         ; $7d8f: $fd
	add  b                                           ; $7d90: $80
	cp   [hl]                                        ; $7d91: $be
	add  b                                           ; $7d92: $80
	ld   e, h                                        ; $7d93: $5c
	add  b                                           ; $7d94: $80
	ld   a, [hl+]                                    ; $7d95: $2a
	add  b                                           ; $7d96: $80
	inc  d                                           ; $7d97: $14
	add  b                                           ; $7d98: $80
	nop                                              ; $7d99: $00
	add  b                                           ; $7d9a: $80
	add  e                                           ; $7d9b: $83
	ld   [bc], a                                     ; $7d9c: $02
	rst  $38                                         ; $7d9d: $ff
	adc  e                                           ; $7d9e: $8b
	ld   [hl], h                                     ; $7d9f: $74
	add  b                                           ; $7da0: $80
	ld   h, h                                        ; $7da1: $64
	add  b                                           ; $7da2: $80
	ld   d, h                                        ; $7da3: $54
	add  b                                           ; $7da4: $80
	ld   h, h                                        ; $7da5: $64
	add  b                                           ; $7da6: $80
	ld   d, h                                        ; $7da7: $54
	add  b                                           ; $7da8: $80
	inc  c                                           ; $7da9: $0c
	add  d                                           ; $7daa: $82
	ld   l, h                                        ; $7dab: $6c
	adc  [hl]                                        ; $7dac: $8e
	nop                                              ; $7dad: $00
	nop                                              ; $7dae: $00
	jr   nc, jr_075_7d31                             ; $7daf: $30 $80

	ld   c, a                                        ; $7db1: $4f
	dec  b                                           ; $7db2: $05
	rrca                                             ; $7db3: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7db4: $cf
	ld   bc, $20c9                                   ; $7db5: $01 $c9 $20
	jr   @-$79                                       ; $7db8: $18 $85

	nop                                              ; $7dba: $00
	nop                                              ; $7dbb: $00
	inc  bc                                          ; $7dbc: $03
	add  h                                           ; $7dbd: $84
	db   $fc                                         ; $7dbe: $fc
	add  b                                           ; $7dbf: $80
	ld   a, h                                        ; $7dc0: $7c
	inc  bc                                          ; $7dc1: $03
	inc  c                                           ; $7dc2: $0c
	ld   [$0700], sp                                 ; $7dc3: $08 $00 $07
	add  c                                           ; $7dc6: $81
	nop                                              ; $7dc7: $00
	nop                                              ; $7dc8: $00
	ld   b, b                                        ; $7dc9: $40
	add  l                                           ; $7dca: $85
	ccf                                              ; $7dcb: $3f
	nop                                              ; $7dcc: $00
	rst  $38                                         ; $7dcd: $ff
	add  c                                           ; $7dce: $81
	ccf                                              ; $7dcf: $3f
	nop                                              ; $7dd0: $00
	cp   a                                           ; $7dd1: $bf
	add  b                                           ; $7dd2: $80
	nop                                              ; $7dd3: $00
	add  b                                           ; $7dd4: $80
	rlca                                             ; $7dd5: $07
	adc  d                                           ; $7dd6: $8a
	rst  $38                                         ; $7dd7: $ff
	add  b                                           ; $7dd8: $80
	ld   a, a                                        ; $7dd9: $7f
	ldh  [rIE], a                                    ; $7dda: $e0 $ff
	add  b                                           ; $7ddc: $80
	rrca                                             ; $7ddd: $0f
	adc  e                                           ; $7dde: $8b
	rst  $38                                         ; $7ddf: $ff
	add  b                                           ; $7de0: $80
	cp   $8c                                         ; $7de1: $fe $8c
	rst  $38                                         ; $7de3: $ff
	add  [hl]                                        ; $7de4: $86

jr_075_7de5:
	nop                                              ; $7de5: $00
	ld   b, $e0                                      ; $7de6: $06 $e0
	db   $fc                                         ; $7de8: $fc
	call c, $90f0                                    ; $7de9: $dc $f0 $90
	ldh  [rLCDC], a                                  ; $7dec: $e0 $40
	add  b                                           ; $7dee: $80
	add  b                                           ; $7def: $80
	add  l                                           ; $7df0: $85
	nop                                              ; $7df1: $00
	inc  b                                           ; $7df2: $04
	ccf                                              ; $7df3: $3f
	cp   a                                           ; $7df4: $bf
	adc  [hl]                                        ; $7df5: $8e
	adc  a                                           ; $7df6: $8f
	add  c                                           ; $7df7: $81
	add  b                                           ; $7df8: $80
	add  a                                           ; $7df9: $87
	add  b                                           ; $7dfa: $80
	sbc  c                                           ; $7dfb: $99
	add  l                                           ; $7dfc: $85
	nop                                              ; $7dfd: $00
	ld   [$ff9f], sp                                 ; $7dfe: $08 $9f $ff
	rra                                              ; $7e01: $1f
	rst  $38                                         ; $7e02: $ff
	ld   h, e                                        ; $7e03: $63
	db   $fd                                         ; $7e04: $fd
	adc  a                                           ; $7e05: $8f
	xor  $7f                                         ; $7e06: $ee $7f
	add  l                                           ; $7e08: $85
	nop                                              ; $7e09: $00
	nop                                              ; $7e0a: $00
	ldh  [$84], a                                    ; $7e0b: $e0 $84
	ldh  a, [rSB]                                    ; $7e0d: $f0 $01
	ld   [hl], b                                     ; $7e0f: $70
	sub  b                                           ; $7e10: $90
	add  b                                           ; $7e11: $80
	dec  bc                                          ; $7e12: $0b
	add  b                                           ; $7e13: $80
	inc  e                                           ; $7e14: $1c
	add  b                                           ; $7e15: $80
	ld   h, b                                        ; $7e16: $60
	add  b                                           ; $7e17: $80
	add  b                                           ; $7e18: $80
	add  d                                           ; $7e19: $82
	nop                                              ; $7e1a: $00
	add  b                                           ; $7e1b: $80
	ld   bc, $0e01                                   ; $7e1c: $01 $01 $0e
	rrca                                             ; $7e1f: $0f
	add  b                                           ; $7e20: $80
	ld   c, l                                        ; $7e21: $4d
	add  c                                           ; $7e22: $81
	ld   c, b                                        ; $7e23: $48
	add  b                                           ; $7e24: $80

jr_075_7e25:
	ld   c, c                                        ; $7e25: $49
	add  c                                           ; $7e26: $81
	ld   c, e                                        ; $7e27: $4b
	add  b                                           ; $7e28: $80
	ld   a, b                                        ; $7e29: $78
	add  b                                           ; $7e2a: $80
	pop  de                                          ; $7e2b: $d1
	inc  bc                                          ; $7e2c: $03
	db   $10                                         ; $7e2d: $10
	sub  d                                           ; $7e2e: $92
	dec  sp                                          ; $7e2f: $3b
	cp   e                                           ; $7e30: $bb
	add  b                                           ; $7e31: $80
	xor  $80                                         ; $7e32: $ee $80
	cp   e                                           ; $7e34: $bb
	add  b                                           ; $7e35: $80
	xor  $07                                         ; $7e36: $ee $07
	cp   d                                           ; $7e38: $ba
	cp   l                                           ; $7e39: $bd
	rst  $28                                         ; $7e3a: $ef
	db   $f4                                         ; $7e3b: $f4
	cp   h                                           ; $7e3c: $bc
	pop  bc                                          ; $7e3d: $c1

jr_075_7e3e:
	ldh  [$81], a                                    ; $7e3e: $e0 $81
	add  b                                           ; $7e40: $80
	and  b                                           ; $7e41: $a0
	add  b                                           ; $7e42: $80
	ldh  [rDIV], a                                   ; $7e43: $e0 $04
	and  b                                           ; $7e45: $a0

jr_075_7e46:
	add  b                                           ; $7e46: $80
	or   b                                           ; $7e47: $b0
	ld   [hl], b                                     ; $7e48: $70
	ldh  [$80], a                                    ; $7e49: $e0 $80
	nop                                              ; $7e4b: $00
	dec  c                                           ; $7e4c: $0d
	jr   nc, jr_075_7e4f                             ; $7e4d: $30 $00

jr_075_7e4f:
	ret  nz                                          ; $7e4f: $c0

	nop                                              ; $7e50: $00
	ldh  a, [rP1]                                    ; $7e51: $f0 $00
	ld   b, b                                        ; $7e53: $40
	nop                                              ; $7e54: $00
	jr   nz, @+$42                                   ; $7e55: $20 $40

	ret  nc                                          ; $7e57: $d0

	ld   b, $36                                      ; $7e58: $06 $36
	call nz, Call_075_6481                           ; $7e5a: $c4 $81 $64
	add  b                                           ; $7e5d: $80
	inc  b                                           ; $7e5e: $04
	ld   bc, $2344                                   ; $7e5f: $01 $44 $23
	add  d                                           ; $7e62: $82
	jr   nz, jr_075_7de5                             ; $7e63: $20 $80

	ldh  [$87], a                                    ; $7e65: $e0 $87
	jr   nz, jr_075_7e69                             ; $7e67: $20 $00

jr_075_7e69:
	inc  bc                                          ; $7e69: $03
	add  e                                           ; $7e6a: $83
	db   $db                                         ; $7e6b: $db
	add  d                                           ; $7e6c: $82
	reti                                             ; $7e6d: $d9


	add  b                                           ; $7e6e: $80
	sbc  a                                           ; $7e6f: $9f
	add  b                                           ; $7e70: $80
	cp   $80                                         ; $7e71: $fe $80
	ld   sp, hl                                      ; $7e73: $f9
	nop                                              ; $7e74: $00
	rst  $38                                         ; $7e75: $ff
	adc  c                                           ; $7e76: $89
	ret  nz                                          ; $7e77: $c0

	add  b                                           ; $7e78: $80
	ld   b, b                                        ; $7e79: $40
	add  b                                           ; $7e7a: $80
	ret  nz                                          ; $7e7b: $c0

	ld   hl, $00c4                                   ; $7e7c: $21 $c4 $00
	ld   bc, $f900                                   ; $7e7f: $01 $00 $f9
	nop                                              ; $7e82: $00
	cp   $04                                         ; $7e83: $fe $04
	dec  [hl]                                        ; $7e85: $35
	inc  c                                           ; $7e86: $0c
	rst  $28                                         ; $7e87: $ef

jr_075_7e88:
	dec  l                                           ; $7e88: $2d
	rst  $30                                         ; $7e89: $f7
	push af                                          ; $7e8a: $f5
	pop  af                                          ; $7e8b: $f1

jr_075_7e8c:
	ldh  a, [$d9]                                    ; $7e8c: $f0 $d9
	nop                                              ; $7e8e: $00
	add  b                                           ; $7e8f: $80
	nop                                              ; $7e90: $00
	add  b                                           ; $7e91: $80
	nop                                              ; $7e92: $00
	ld   h, b                                        ; $7e93: $60
	jr   nz, jr_075_7e3e                             ; $7e94: $20 $a8

	jr   nc, jr_075_7e8c                             ; $7e96: $30 $f4

	inc  [hl]                                        ; $7e98: $34
	ld   l, a                                        ; $7e99: $6f
	xor  a                                           ; $7e9a: $af
	adc  a                                           ; $7e9b: $8f
	rrca                                             ; $7e9c: $0f
	jr   nz, jr_075_7e25                             ; $7e9d: $20 $86

	add  b                                           ; $7e9f: $80
	add  $04                                         ; $7ea0: $c6 $04
	add  b                                           ; $7ea2: $80
	add  [hl]                                        ; $7ea3: $86
	cp   a                                           ; $7ea4: $bf
	add  c                                           ; $7ea5: $81
	and  c                                           ; $7ea6: $a1
	add  b                                           ; $7ea7: $80
	sub  b                                           ; $7ea8: $90
	nop                                              ; $7ea9: $00
	sub  c                                           ; $7eaa: $91
	add  b                                           ; $7eab: $80
	ld   de, $5102                                   ; $7eac: $11 $02 $51
	ld   d, e                                        ; $7eaf: $53
	db   $d3                                         ; $7eb0: $d3
	add  e                                           ; $7eb1: $83
	ret  nz                                          ; $7eb2: $c0

	add  d                                           ; $7eb3: $82
	ld   b, b                                        ; $7eb4: $40
	nop                                              ; $7eb5: $00
	add  b                                           ; $7eb6: $80
	add  c                                           ; $7eb7: $81
	nop                                              ; $7eb8: $00
	ld   [bc], a                                     ; $7eb9: $02
	ld   h, b                                        ; $7eba: $60
	nop                                              ; $7ebb: $00
	jr   nz, jr_075_7e3e                             ; $7ebc: $20 $80

	nop                                              ; $7ebe: $00
	add  b                                           ; $7ebf: $80
	ld   bc, $0680                                   ; $7ec0: $01 $80 $06
	add  b                                           ; $7ec3: $80
	jr   c, jr_075_7e46                              ; $7ec4: $38 $80

	ret  z                                           ; $7ec6: $c8

	add  h                                           ; $7ec7: $84
	ld   [$e180], sp                                 ; $7ec8: $08 $80 $e1
	add  b                                           ; $7ecb: $80
	add  c                                           ; $7ecc: $81
	ld   [bc], a                                     ; $7ecd: $02
	ld   bc, $0300                                   ; $7ece: $01 $00 $03
	add  c                                           ; $7ed1: $81
	ld   [bc], a                                     ; $7ed2: $02
	add  b                                           ; $7ed3: $80
	ld   c, $80                                      ; $7ed4: $0e $80
	inc  [hl]                                        ; $7ed6: $34
	ld   bc, $d6c4                                   ; $7ed7: $01 $c4 $d6
	add  b                                           ; $7eda: $80
	db   $ed                                         ; $7edb: $ed
	add  hl, bc                                      ; $7edc: $09
	add  c                                           ; $7edd: $81
	nop                                              ; $7ede: $00
	add  c                                           ; $7edf: $81
	add  hl, hl                                      ; $7ee0: $29
	dec  h                                           ; $7ee1: $25
	inc  a                                           ; $7ee2: $3c
	add  hl, de                                      ; $7ee3: $19
	ei                                               ; $7ee4: $fb
	xor  [hl]                                        ; $7ee5: $ae
	xor  $80                                         ; $7ee6: $ee $80
	ld   a, e                                        ; $7ee8: $7b
	inc  bc                                          ; $7ee9: $03
	ld   l, [hl]                                     ; $7eea: $6e
	xor  [hl]                                        ; $7eeb: $ae
	or   b                                           ; $7eec: $b0
	ret  nz                                          ; $7eed: $c0

	add  b                                           ; $7eee: $80
	ret  nc                                          ; $7eef: $d0

	rlca                                             ; $7ef0: $07
	ret  nz                                          ; $7ef1: $c0

	ldh  [$60], a                                    ; $7ef2: $e0 $60
	ldh  a, [$b0]                                    ; $7ef4: $f0 $b0
	jr   nz, jr_075_7e88                             ; $7ef6: $20 $90

	add  b                                           ; $7ef8: $80
	add  d                                           ; $7ef9: $82
	ret  nz                                          ; $7efa: $c0

	add  b                                           ; $7efb: $80
	ld   a, b                                        ; $7efc: $78
	add  b                                           ; $7efd: $80
	adc  b                                           ; $7efe: $88
	add  d                                           ; $7eff: $82
	ld   [$0980], sp                                 ; $7f00: $08 $80 $09
	add  b                                           ; $7f03: $80
	ld   c, $80                                      ; $7f04: $0e $80
	ld   [hl], b                                     ; $7f06: $70
	dec  c                                           ; $7f07: $0d
	add  b                                           ; $7f08: $80
	add  e                                           ; $7f09: $83
	ld   de, $1214                                   ; $7f0a: $11 $14 $12
	ld   [$253e], sp                                 ; $7f0d: $08 $3e $25
	jr   nz, jr_075_7f3a                             ; $7f10: $20 $28

	ld   hl, sp-$18                                  ; $7f12: $f8 $e8
	jr   z, @+$32                                    ; $7f14: $28 $30

	add  d                                           ; $7f16: $82
	jr   nz, @+$06                                   ; $7f17: $20 $04

	nop                                              ; $7f19: $00
	jr   c, jr_075_7f1c                              ; $7f1a: $38 $00

jr_075_7f1c:
	jp   $8003                                       ; $7f1c: $c3 $03 $80


	ld   e, $80                                      ; $7f1f: $1e $80
	ld   sp, hl                                      ; $7f21: $f9
	add  b                                           ; $7f22: $80
	db   $db                                         ; $7f23: $db
	add  b                                           ; $7f24: $80
	dec  de                                          ; $7f25: $1b
	add  b                                           ; $7f26: $80
	db   $db                                         ; $7f27: $db
	ld   bc, $003f                                   ; $7f28: $01 $3f $00
	add  d                                           ; $7f2b: $82
	ret  nz                                          ; $7f2c: $c0

	add  b                                           ; $7f2d: $80
	ld   b, b                                        ; $7f2e: $40
	add  [hl]                                        ; $7f2f: $86
	ret  nz                                          ; $7f30: $c0

	ld   [bc], a                                     ; $7f31: $02
	ldh  [$2f], a                                    ; $7f32: $e0 $2f
	rrca                                             ; $7f34: $0f
	add  c                                           ; $7f35: $81
	add  b                                           ; $7f36: $80
	inc  b                                           ; $7f37: $04
	add  e                                           ; $7f38: $83
	add  b                                           ; $7f39: $80

jr_075_7f3a:
	add  h                                           ; $7f3a: $84
	add  b                                           ; $7f3b: $80
	add  e                                           ; $7f3c: $83
	add  b                                           ; $7f3d: $80
	add  d                                           ; $7f3e: $82
	add  b                                           ; $7f3f: $80
	ld   hl, sp+$01                                  ; $7f40: $f8 $01
	nop                                              ; $7f42: $00
	inc  bc                                          ; $7f43: $03
	add  b                                           ; $7f44: $80
	ldh  [$81], a                                    ; $7f45: $e0 $81
	jr   nz, @+$03                                   ; $7f47: $20 $01

	ldh  [rAUD4LEN], a                               ; $7f49: $e0 $20
	add  b                                           ; $7f4b: $80
	nop                                              ; $7f4c: $00
	nop                                              ; $7f4d: $00
	ret  nz                                          ; $7f4e: $c0

	add  b                                           ; $7f4f: $80
	ld   b, b                                        ; $7f50: $40
	add  c                                           ; $7f51: $81
	nop                                              ; $7f52: $00
	ld   bc, $db03                                   ; $7f53: $01 $03 $db
	add  b                                           ; $7f56: $80
	dec  de                                          ; $7f57: $1b
	adc  b                                           ; $7f58: $88
	db   $db                                         ; $7f59: $db
	add  b                                           ; $7f5a: $80
	ret  c                                           ; $7f5b: $d8

	nop                                              ; $7f5c: $00
	rst  $38                                         ; $7f5d: $ff
	adc  l                                           ; $7f5e: $8d
	ret  nz                                          ; $7f5f: $c0

	ld   bc, $ecd3                                   ; $7f60: $01 $d3 $ec
	add  b                                           ; $7f63: $80
	xor  h                                           ; $7f64: $ac
	add  h                                           ; $7f65: $84
	or   h                                           ; $7f66: $b4
	add  h                                           ; $7f67: $84
	cp   h                                           ; $7f68: $bc
	add  b                                           ; $7f69: $80
	scf                                              ; $7f6a: $37
	add  b                                           ; $7f6b: $80
	dec  [hl]                                        ; $7f6c: $35
	add  h                                           ; $7f6d: $84
	dec  l                                           ; $7f6e: $2d
	add  d                                           ; $7f6f: $82
	inc  a                                           ; $7f70: $3c
	add  b                                           ; $7f71: $80
	dec  a                                           ; $7f72: $3d
	ld   [bc], a                                     ; $7f73: $02
	ld   a, a                                        ; $7f74: $7f
	ld   d, e                                        ; $7f75: $53
	sub  e                                           ; $7f76: $93
	add  b                                           ; $7f77: $80
	sub  c                                           ; $7f78: $91
	nop                                              ; $7f79: $00
	or   c                                           ; $7f7a: $b1
	add  c                                           ; $7f7b: $81
	pop  de                                          ; $7f7c: $d1
	inc  b                                           ; $7f7d: $04
	reti                                             ; $7f7e: $d9


	ld   e, c                                        ; $7f7f: $59
	ld   e, b                                        ; $7f80: $58
	ret  c                                           ; $7f81: $d8

	rst  JumpTable                                         ; $7f82: $df
	add  b                                           ; $7f83: $80
	ld   b, b                                        ; $7f84: $40
	nop                                              ; $7f85: $00
	rst  JumpTable                                         ; $7f86: $df
	add  d                                           ; $7f87: $82
	nop                                              ; $7f88: $00
	add  c                                           ; $7f89: $81
	add  b                                           ; $7f8a: $80
	add  hl, bc                                      ; $7f8b: $09
	ret  nz                                          ; $7f8c: $c0

	add  b                                           ; $7f8d: $80
	and  b                                           ; $7f8e: $a0
	add  b                                           ; $7f8f: $80
	ret  nz                                          ; $7f90: $c0

	add  b                                           ; $7f91: $80
	ld   [hl], b                                     ; $7f92: $70
	ld   b, b                                        ; $7f93: $40
	di                                               ; $7f94: $f3
	cp   h                                           ; $7f95: $bc
	add  b                                           ; $7f96: $80
	cp   b                                           ; $7f97: $b8
	add  b                                           ; $7f98: $80
	cp   h                                           ; $7f99: $bc
	add  b                                           ; $7f9a: $80
	cp   c                                           ; $7f9b: $b9
	add  b                                           ; $7f9c: $80
	or   l                                           ; $7f9d: $b5
	add  b                                           ; $7f9e: $80
	cp   c                                           ; $7f9f: $b9
	add  b                                           ; $7fa0: $80
	sub  l                                           ; $7fa1: $95
	inc  bc                                          ; $7fa2: $03
	add  c                                           ; $7fa3: $81
	ld   bc, $3dbd                                   ; $7fa4: $01 $bd $3d
	add  b                                           ; $7fa7: $80
	ld   a, $80                                      ; $7fa8: $3e $80
	ld   a, [hl-]                                    ; $7faa: $3a
	add  b                                           ; $7fab: $80
	ld   e, h                                        ; $7fac: $5c
	ld   bc, $5c5d                                   ; $7fad: $01 $5d $5c
	add  b                                           ; $7fb0: $80
	ld   l, h                                        ; $7fb1: $6c
	add  b                                           ; $7fb2: $80
	ld   [hl], c                                     ; $7fb3: $71
	add  b                                           ; $7fb4: $80
	push af                                          ; $7fb5: $f5
	ld   bc, $c0c1                                   ; $7fb6: $01 $c1 $c0
	add  e                                           ; $7fb9: $83
	add  b                                           ; $7fba: $80
	inc  bc                                          ; $7fbb: $03
	and  b                                           ; $7fbc: $a0
	dec  hl                                          ; $7fbd: $2b
	ld   h, b                                        ; $7fbe: $60
	ld   l, e                                        ; $7fbf: $6b
	add  b                                           ; $7fc0: $80
	nop                                              ; $7fc1: $00
	add  b                                           ; $7fc2: $80
	ldh  [rSB], a                                    ; $7fc3: $e0 $01
	rst  $38                                         ; $7fc5: $ff
	ldh  a, [$80]                                    ; $7fc6: $f0 $80
	nop                                              ; $7fc8: $00
	add  b                                           ; $7fc9: $80
	db   $10                                         ; $7fca: $10
	add  d                                           ; $7fcb: $82
	ld   [hl], b                                     ; $7fcc: $70
	add  b                                           ; $7fcd: $80
	ldh  a, [$80]                                    ; $7fce: $f0 $80
	nop                                              ; $7fd0: $00
	add  b                                           ; $7fd1: $80
	jr   nc, jr_075_7fd6                             ; $7fd2: $30 $02

	ldh  a, [rHDMA3]                                 ; $7fd4: $f0 $53

jr_075_7fd6:
	inc  l                                           ; $7fd6: $2c
	add  b                                           ; $7fd7: $80
	xor  h                                           ; $7fd8: $ac
	add  b                                           ; $7fd9: $80
	xor  [hl]                                        ; $7fda: $ae
	add  b                                           ; $7fdb: $80
	xor  l                                           ; $7fdc: $ad
	add  b                                           ; $7fdd: $80
	xor  [hl]                                        ; $7fde: $ae
	add  b                                           ; $7fdf: $80
	xor  l                                           ; $7fe0: $ad
	add  b                                           ; $7fe1: $80
	xor  [hl]                                        ; $7fe2: $ae
	add  b                                           ; $7fe3: $80
	xor  l                                           ; $7fe4: $ad
	ld   bc, $f574                                   ; $7fe5: $01 $74 $f5
	adc  h                                           ; $7fe8: $8c
	ld   [hl], l                                     ; $7fe9: $75
	nop                                              ; $7fea: $00
	ld   bc, $ff8d                                   ; $7feb: $01 $8d $ff
	adc  [hl]                                        ; $7fee: $8e
	ldh  a, [rIE]                                    ; $7fef: $f0 $ff
	nop                                              ; $7ff1: $00
	rst  $38                                         ; $7ff2: $ff
	nop                                              ; $7ff3: $00
	rst  $38                                         ; $7ff4: $ff
	nop                                              ; $7ff5: $00
	rst  $38                                         ; $7ff6: $ff
	nop                                              ; $7ff7: $00
	rst  $38                                         ; $7ff8: $ff
	nop                                              ; $7ff9: $00
	rst  $38                                         ; $7ffa: $ff
	nop                                              ; $7ffb: $00
	ld   hl, sp+$00                                  ; $7ffc: $f8 $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
